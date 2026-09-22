Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/clipper?download=true
inline.NumInlined: 2345
inline.NumDeleted: 743
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN10ClipperLib15SimplifyPolygonERKSt6vectorINS_8IntPointESaIS1_EERS0_IS3_SaIS3_EENS_12PolyFillTypeE:bb.a
_ZNSt6vectorIPN10ClipperLib13IntersectNodeESaIS2_EED2Ev.exit.i.i: ; preds = %bb.d, %_ZNSt7__cxx1110_List_baseIxSaIxEED2Ev.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8            ; 3 uses
  %.not.i.i.i2.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i2.i.i, label %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EED2Ev.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIPN10ClipperLib13IntersectNodeESaIS2_EED2Ev.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #33, !inline_history !54
  br label %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EED2Ev.exit.i.i

_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EED2Ev.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIPN10ClipperLib13IntersectNodeESaIS2_EED2Ev.exit.i.i
  %i.ah = load ptr, ptr %i.f, align 8             ; 3 uses
  %.not.i.i.i3.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i3.i.i, label %_ZN10ClipperLib7ClipperD1Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EED2Ev.exit.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.am) #33, !inline_history !54
  br label %_ZN10ClipperLib7ClipperD1Ev.exit

_ZN10ClipperLib7ClipperD1Ev.exit:                 ; preds = %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EED2Ev.exit.i.i, %bb.f
  call void @_ZN10ClipperLib11ClipperBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.a) #30, !inline_history !54
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

bb.g:                                             ; preds = %bb.b, %bb.a
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10ClipperLib7ClipperD1Ev(ptr noundef nonnull align 8 dereferenceable(135) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %i.an
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10ClipperLib16SimplifyPolygonsERKSt6vectorIS0_INS_8IntPointESaIS1_EESaIS3_EERS5_NS_12PolyFillTypeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.ClipperLib::Clipper", align 8 ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 136 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.e, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.b, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-24, 24) (i8, ptr @_ZTVN10ClipperLib7ClipperE, i64 24), ptr %3, align 8
  store ptr getelementptr inbounds nuw inrange(-48, 40) (i8, ptr @_ZTVN10ClipperLib7ClipperE, i64 96), ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.f, i8 0, i64 72, i1 false)
  store ptr %i.g, ptr %i.h, align 8
  store ptr %i.g, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 104
  store i64 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 120
  store i8 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 176
  store i8 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 132
  store i8 0, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 134
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 208
  store i8 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 209
  store i8 0, ptr %i.o, align 1
  store i8 1, ptr %i.m, align 2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.q, %i.r
  br i1 %.not.i, label %_ZN10ClipperLib11ClipperBase8AddPathsERKSt6vectorIS1_INS_8IntPointESaIS2_EESaIS4_EENS_8PolyTypeEb.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.noexc
  %i.s = phi ptr [ %i.aa, %.noexc ], [ %i.r, %bb.a ]
  %.010.i = phi i64 [ %i.y, %.noexc ], [ 0, %bb.a ] ; 2 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %.010.i
  %i.u = load ptr, ptr %i.a, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = invoke noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(144) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i32 noundef 0, i1 noundef zeroext true)
          to label %.noexc unwind label %.loopexit, !inline_history !53 ; 0 uses

.noexc:                                           ; preds = %.lr.ph.i
  %i.y = add nuw i64 %.010.i, 1                   ; 2 uses
  %i.z = load ptr, ptr %i.p, align 8
  %i.aa = load ptr, ptr %0, align 8               ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = sdiv exact i64 %i.ad, 24
  %i.af = icmp ult i64 %i.y, %i.ae
  br i1 %i.af, label %.lr.ph.i, label %_ZN10ClipperLib11ClipperBase8AddPathsERKSt6vectorIS1_INS_8IntPointESaIS2_EESaIS4_EENS_8PolyTypeEb.exit, !llvm.loop !14

_ZN10ClipperLib11ClipperBase8AddPathsERKSt6vectorIS1_INS_8IntPointESaIS2_EESaIS4_EENS_8PolyTypeEb.exit: ; preds = %.noexc, %bb.a
  %i.ag = invoke noundef zeroext i1 @_ZN10ClipperLib7Clipper7ExecuteENS_8ClipTypeERSt6vectorIS2_INS_8IntPointESaIS3_EESaIS5_EENS_12PolyFillTypeES9_(ptr noundef nonnull align 8 dereferenceable(135) %3, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, i32 noundef %2)
          to label %bb.b unwind label %.loopexit.split-lp ; 0 uses

bb.b:                                             ; preds = %_ZN10ClipperLib11ClipperBase8AddPathsERKSt6vectorIS1_INS_8IntPointESaIS2_EESaIS4_EENS_8PolyTypeEb.exit
  store ptr getelementptr inbounds nuw inrange(-24, 24) (i8, ptr @_ZTVN10ClipperLib7ClipperE, i64 24), ptr %3, align 8
  store ptr getelementptr inbounds nuw inrange(-48, 40) (i8, ptr @_ZTVN10ClipperLib7ClipperE, i64 96), ptr %i.a, align 8
  %i.ah = load ptr, ptr %i.g, align 8             ; 2 uses
  %.not8.i.i.i.i = icmp eq ptr %i.ah, %i.g
  br i1 %.not8.i.i.i.i, label %_ZNSt7__cxx1110_List_baseIxSaIxEED2Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i ], [ %i.ah, %bb.b ] ; 2 uses
  %i.ai = load ptr, ptr %.09.i.i.i.i, align 8     ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i, i64 noundef 24) #33, !inline_history !54
  %.not.i.i.i.i = icmp eq ptr %i.ai, %i.g
  br i1 %.not.i.i.i.i, label %_ZNSt7__cxx1110_List_baseIxSaIxEED2Ev.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !25

_ZNSt7__cxx1110_List_baseIxSaIxEED2Ev.exit.i.i:   ; preds = %.lr.ph.i.i.i.i, %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8            ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIPN10ClipperLib13IntersectNodeESaIS2_EED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1110_List_baseIxSaIxEED2Ev.exit.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ap) #33, !inline_history !54
  br label %_ZNSt6vectorIPN10ClipperLib13IntersectNodeESaIS2_EED2Ev.exit.i.i

_ZNSt6vectorIPN10ClipperLib13IntersectNodeESaIS2_EED2Ev.exit.i.i: ; preds = %bb.c, %_ZNSt7__cxx1110_List_baseIxSaIxEED2Ev.exit.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8            ; 3 uses
  %.not.i.i.i2.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i2.i.i, label %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EED2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIPN10ClipperLib13IntersectNodeESaIS2_EED2Ev.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.aw) #33, !inline_history !54
  br label %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EED2Ev.exit.i.i

_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EED2Ev.exit.i.i: ; preds = %bb.d, %_ZNSt6vectorIPN10ClipperLib13IntersectNodeESaIS2_EED2Ev.exit.i.i
  %i.ax = load ptr, ptr %i.f, align 8             ; 3 uses
  %.not.i.i.i3.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i3.i.i, label %_ZN10ClipperLib7ClipperD1Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EED2Ev.exit.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bc) #33, !inline_history !54
  br label %_ZN10ClipperLib7ClipperD1Ev.exit

_ZN10ClipperLib7ClipperD1Ev.exit:                 ; preds = %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EED2Ev.exit.i.i, %bb.e
  call void @_ZN10ClipperLib11ClipperBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.a) #30, !inline_history !54
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

.loopexit:                                        ; preds = %.lr.ph.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp:                               ; preds = %_ZN10ClipperLib11ClipperBase8AddPathsERKSt6vectorIS1_INS_8IntPointESaIS2_EESaIS4_EENS_8PolyTypeEb.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN10ClipperLib7ClipperD1Ev(ptr noundef nonnull align 8 dereferenceable(135) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10ClipperLib16SimplifyPolygonsERSt6vectorIS0_INS_8IntPointESaIS1_EESaIS3_EENS_12PolyFillTypeE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  tail call void @_ZN10ClipperLib16SimplifyPolygonsERKSt6vectorIS0_INS_8IntPointESaIS1_EESaIS3_EERS5_NS_12PolyFillTypeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef double @_ZN10ClipperLib20DistanceFromLineSqrdERKNS_8IntPointES2_S2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %3, align 8
  %i.d = sub nsw i64 %i.b, %i.c
  %i.e = sitofp i64 %i.d to double                ; 4 uses
  %i.f = load i64, ptr %2, align 8
  %i.g = load i64, ptr %1, align 8                ; 2 uses
  %4 = sub nsw i64 %i.f, %i.g
  %i.h = sitofp i64 %4 to double                  ; 4 uses
  %i.i = sitofp i64 %i.g to double
  %i.j = sitofp i64 %i.b to double
  %5 = fmul nnan double %i.j, %i.h
  %6 = tail call double @llvm.fmuladd.f64(double %i.e, double %i.i, double %5)
  %7 = load i64, ptr %0, align 8
  %8 = sitofp i64 %7 to double
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %10 = load i64, ptr %9, align 8
  %11 = sitofp i64 %10 to double
  %12 = fmul nnan double %i.h, %11
  %13 = tail call double @llvm.fmuladd.f64(double %i.e, double %8, double %12)
  %14 = fsub double %13, %6                       ; 2 uses
  %15 = fmul double %14, %14
  %i.k = fmul nnan double %i.h, %i.h
  %i.l = tail call double @llvm.fmuladd.f64(double %i.e, double %i.e, double %i.k)
  %i.m = fdiv double %15, %i.l
  ret double %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN10ClipperLib19SlopesNearCollinearERKNS_8IntPointES2_S2_d(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, double noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.a, align 8              ; 12 uses
  %i.d = load i64, ptr %0, align 8                ; 14 uses
  %i.e = load i64, ptr %i.b, align 8              ; 10 uses
  %i.f = load i64, ptr %1, align 8                ; 12 uses
  %i.g = sub nsw i64 %i.d, %i.f
  %i.h = tail call noundef i64 @llvm.abs.i64(i64 %i.g, i1 true)
  %i.i = sub nsw i64 %i.c, %i.e                   ; 3 uses
  %i.j = tail call noundef i64 @llvm.abs.i64(i64 %i.i, i1 true)
  %i.k = icmp samesign ugt i64 %i.h, %i.j
  br i1 %i.k, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.l = icmp sgt i64 %i.d, %i.f
  %i.m = load i64, ptr %2, align 8                ; 5 uses
  %i.n = icmp sge i64 %i.d, %i.m
  %i.o = xor i1 %i.l, %i.n
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load i64, ptr %i.p, align 8
  %i.r = sitofp i64 %i.f to double
  %i.s = sitofp i64 %i.e to double
  %i.t = sitofp i64 %i.d to double
  %i.u = sitofp i64 %i.c to double
  %i.v = sub nsw i64 %i.m, %i.f
  %i.w = sub nsw i64 %i.e, %i.q
  %i.x = sitofp i64 %i.v to double                ; 3 uses
  %i.y = sitofp i64 %i.w to double                ; 3 uses
  %i.z = insertelement <2 x double> poison, double %i.u, i64 0
  %i.aa = insertelement <2 x double> %i.z, double %i.s, i64 1
  %i.ab = insertelement <2 x double> poison, double %i.x, i64 0
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ad = fmul nnan <2 x double> %i.aa, %i.ac
  %i.ae = insertelement <2 x double> poison, double %i.y, i64 0
  %i.af = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ag = insertelement <2 x double> poison, double %i.t, i64 0
  %i.ah = insertelement <2 x double> %i.ag, double %i.r, i64 1
  %i.ai = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.af, <2 x double> %i.ah, <2 x double> %i.ad) ; 2 uses
  %shift = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %i.ai, %shift ; 2 uses
  %foldExtExtBinop46 = fmul <2 x double> %foldExtExtBinop, %foldExtExtBinop
  %i.aj = extractelement <2 x double> %foldExtExtBinop46, i64 0
  %i.ak = fmul nnan double %i.x, %i.x
  %i.al = tail call double @llvm.fmuladd.f64(double %i.y, double %i.y, double %i.ak)
  %i.am = fdiv double %i.aj, %i.al
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.an = icmp sgt i64 %i.f, %i.d
  %i.ao = icmp sge i64 %i.f, %i.m
  %i.ap = xor i1 %i.an, %i.ao
  br i1 %i.ap, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = sitofp i64 %i.d to double
  %i.at = sitofp i64 %i.c to double
  %i.au = sitofp i64 %i.f to double
  %i.av = sitofp i64 %i.e to double
  %i.aw = sub nsw i64 %i.m, %i.d
  %i.ax = sub nsw i64 %i.c, %i.ar
  %i.ay = sitofp i64 %i.aw to double              ; 3 uses
  %i.az = sitofp i64 %i.ax to double              ; 3 uses
  %i.ba = insertelement <2 x double> poison, double %i.av, i64 0
  %i.bb = insertelement <2 x double> %i.ba, double %i.at, i64 1
  %i.bc = insertelement <2 x double> poison, double %i.ay, i64 0
  %i.bd = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.be = fmul nnan <2 x double> %i.bb, %i.bd
  %i.bf = insertelement <2 x double> poison, double %i.az, i64 0
  %i.bg = shufflevector <2 x double> %i.bf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bh = insertelement <2 x double> poison, double %i.au, i64 0
  %i.bi = insertelement <2 x double> %i.bh, double %i.as, i64 1
  %i.bj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bg, <2 x double> %i.bi, <2 x double> %i.be) ; 2 uses
  %shift48 = shufflevector <2 x double> %i.bj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop49 = fsub <2 x double> %i.bj, %shift48 ; 2 uses
  %foldExtExtBinop51 = fmul <2 x double> %foldExtExtBinop49, %foldExtExtBinop49
  %i.bk = extractelement <2 x double> %foldExtExtBinop51, i64 0
  %i.bl = fmul nnan double %i.ay, %i.ay
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.az, double %i.az, double %i.bl)
  %i.bn = fdiv double %i.bk, %i.bm
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.bo = sitofp i64 %i.i to double               ; 3 uses
  %i.bp = sub nsw i64 %i.f, %i.d
  %i.bq = sitofp i64 %i.bp to double              ; 3 uses
  %i.br = sitofp i64 %i.d to double
  %i.bs = sitofp i64 %i.m to double
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = sitofp i64 %i.c to double
  %i.bw = sitofp i64 %i.bu to double
  %i.bx = insertelement <2 x double> poison, double %i.bw, i64 0
  %i.by = insertelement <2 x double> %i.bx, double %i.bv, i64 1
  %i.bz = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.ca = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cb = fmul nnan <2 x double> %i.by, %i.ca
  %i.cc = insertelement <2 x double> poison, double %i.bo, i64 0
  %i.cd = shufflevector <2 x double> %i.cc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ce = insertelement <2 x double> poison, double %i.bs, i64 0
  %i.cf = insertelement <2 x double> %i.ce, double %i.br, i64 1
  %i.cg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cd, <2 x double> %i.cf, <2 x double> %i.cb) ; 2 uses
  %shift53 = shufflevector <2 x double> %i.cg, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop54 = fsub <2 x double> %i.cg, %shift53 ; 2 uses
  %foldExtExtBinop56 = fmul <2 x double> %foldExtExtBinop54, %foldExtExtBinop54
  %i.ch = extractelement <2 x double> %foldExtExtBinop56, i64 0
  %i.ci = fmul nnan double %i.bq, %i.bq
  %i.cj = tail call double @llvm.fmuladd.f64(double %i.bo, double %i.bo, double %i.ci)
  %i.ck = fdiv double %i.ch, %i.cj
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.cl = icmp sgt i64 %i.c, %i.e
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cn = load i64, ptr %i.cm, align 8            ; 5 uses
  %i.co = icmp sge i64 %i.c, %i.cn
  %i.cp = xor i1 %i.cl, %i.co
  br i1 %i.cp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cq = load i64, ptr %2, align 8
  %i.cr = sitofp i64 %i.f to double
  %i.cs = sitofp i64 %i.e to double
  %i.ct = sitofp i64 %i.d to double
  %i.cu = sitofp i64 %i.c to double
  %i.cv = sub nsw i64 %i.cq, %i.f
  %i.cw = sub nsw i64 %i.e, %i.cn
  %i.cx = sitofp i64 %i.cv to double              ; 3 uses
  %i.cy = sitofp i64 %i.cw to double              ; 3 uses
  %i.cz = insertelement <2 x double> poison, double %i.cu, i64 0
  %i.da = insertelement <2 x double> %i.cz, double %i.cs, i64 1
  %i.db = insertelement <2 x double> poison, double %i.cx, i64 0
  %i.dc = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dd = fmul nnan <2 x double> %i.da, %i.dc
  %i.de = insertelement <2 x double> poison, double %i.cy, i64 0
  %i.df = shufflevector <2 x double> %i.de, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dg = insertelement <2 x double> poison, double %i.ct, i64 0
  %i.dh = insertelement <2 x double> %i.dg, double %i.cr, i64 1
  %i.di = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.df, <2 x double> %i.dh, <2 x double> %i.dd) ; 2 uses
  %shift58 = shufflevector <2 x double> %i.di, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop59 = fsub <2 x double> %i.di, %shift58 ; 2 uses
  %foldExtExtBinop61 = fmul <2 x double> %foldExtExtBinop59, %foldExtExtBinop59
  %i.dj = extractelement <2 x double> %foldExtExtBinop61, i64 0
  %i.dk = fmul nnan double %i.cx, %i.cx
  %i.dl = tail call double @llvm.fmuladd.f64(double %i.cy, double %i.cy, double %i.dk)
  %i.dm = fdiv double %i.dj, %i.dl
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.dn = icmp sgt i64 %i.e, %i.c
  %i.do = icmp sge i64 %i.e, %i.cn
  %i.dp = xor i1 %i.dn, %i.do
  br i1 %i.dp, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.dq = load i64, ptr %2, align 8
  %i.dr = sitofp i64 %i.d to double
  %i.ds = sitofp i64 %i.c to double
  %i.dt = sitofp i64 %i.f to double
  %i.du = sitofp i64 %i.e to double
  %i.dv = sub nsw i64 %i.dq, %i.d
  %i.dw = sub nsw i64 %i.c, %i.cn
  %i.dx = sitofp i64 %i.dv to double              ; 3 uses
  %i.dy = sitofp i64 %i.dw to double              ; 3 uses
  %i.dz = insertelement <2 x double> poison, double %i.du, i64 0
  %i.ea = insertelement <2 x double> %i.dz, double %i.ds, i64 1
  %i.eb = insertelement <2 x double> poison, double %i.dx, i64 0
  %i.ec = shufflevector <2 x double> %i.eb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ed = fmul nnan <2 x double> %i.ea, %i.ec
  %i.ee = insertelement <2 x double> poison, double %i.dy, i64 0
  %i.ef = shufflevector <2 x double> %i.ee, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eg = insertelement <2 x double> poison, double %i.dt, i64 0
  %i.eh = insertelement <2 x double> %i.eg, double %i.dr, i64 1
  %i.ei = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ef, <2 x double> %i.eh, <2 x double> %i.ed) ; 2 uses
  %shift63 = shufflevector <2 x double> %i.ei, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop64 = fsub <2 x double> %i.ei, %shift63 ; 2 uses
  %foldExtExtBinop66 = fmul <2 x double> %foldExtExtBinop64, %foldExtExtBinop64
  %i.ej = extractelement <2 x double> %foldExtExtBinop66, i64 0
  %i.ek = fmul nnan double %i.dx, %i.dx
  %i.el = tail call double @llvm.fmuladd.f64(double %i.dy, double %i.dy, double %i.ek)
  %i.em = fdiv double %i.ej, %i.el
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.en = sitofp i64 %i.i to double               ; 3 uses
  %i.eo = sub nsw i64 %i.f, %i.d
  %i.ep = sitofp i64 %i.eo to double              ; 3 uses
  %i.eq = sitofp i64 %i.c to double
  %i.er = load i64, ptr %2, align 8
  %i.es = sitofp i64 %i.cn to double
end_hunk_0
