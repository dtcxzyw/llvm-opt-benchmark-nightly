Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btReducedDeformableBody?download=true
inline.NumInlined: 956
inline.NumDeleted: 155
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 57
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZN23btReducedDeformableBodyD2Ev:bb.a
bb.am:                                            ; preds = %bb.al
  %i.eb = landingpad { ptr, i32 }
          catch ptr null
  %i.ec = extractvalue { ptr, i32 } %i.eb, 0
  tail call void @__clang_call_terminate(ptr %i.ec) #23
  unreachable

_ZN20btAlignedObjectArrayIfED2Ev.exit44:          ; preds = %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit41, %bb.al
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 2160
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !123 ; 2 uses
  %.not.i.i.i45 = icmp ne ptr %i.ee, null
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 2168
  %i.eg = load i8, ptr %i.ef, align 8, !range !140
  %i.eh = trunc nuw i8 %i.eg to i1
  %or.cond.i.i46 = select i1 %.not.i.i.i45, i1 %i.eh, i1 false
  br i1 %or.cond.i.i46, label %bb.an, label %_ZN20btAlignedObjectArrayIfED2Ev.exit47

bb.an:                                            ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit44
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ee)
          to label %_ZN20btAlignedObjectArrayIfED2Ev.exit47 unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ei = landingpad { ptr, i32 }
          catch ptr null
  %i.ej = extractvalue { ptr, i32 } %i.ei, 0
  tail call void @__clang_call_terminate(ptr %i.ej) #23
  unreachable

_ZN20btAlignedObjectArrayIfED2Ev.exit47:          ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit44, %bb.an
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 2116
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !120 ; 2 uses
  %i.em = icmp sgt i32 %i.el, 0
  br i1 %i.em, label %.lr.ph.i.i.i50, label %_ZN20btAlignedObjectArrayIS_IfEE7destroyEii.exit.i.i48

.lr.ph.i.i.i50:                                   ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit47
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 2128
  %zext.i.i51 = zext nneg i32 %i.el to i64
  br label %bb.ap

bb.ap:                                            ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit.i.i.i55, %.lr.ph.i.i.i50
  %indvars.iv.i.i.i52 = phi i64 [ 0, %.lr.ph.i.i.i50 ], [ %indvars.iv.next.i.i.i56, %_ZN20btAlignedObjectArrayIfED2Ev.exit.i.i.i55 ] ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !119
  %i.ep = getelementptr inbounds nuw [32 x i8], ptr %i.eo, i64 %indvars.iv.i.i.i52 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !123 ; 2 uses
  %.not.i.i.i.i.i.i53 = icmp ne ptr %i.er, null
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  %i.et = load i8, ptr %i.es, align 8, !range !140
  %i.eu = trunc nuw i8 %i.et to i1
  %or.cond.i.i.i.i.i54 = select i1 %.not.i.i.i.i.i.i53, i1 %i.eu, i1 false
  br i1 %or.cond.i.i.i.i.i54, label %bb.aq, label %_ZN20btAlignedObjectArrayIfED2Ev.exit.i.i.i55

bb.aq:                                            ; preds = %bb.ap
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.er)
          to label %_ZN20btAlignedObjectArrayIfED2Ev.exit.i.i.i55 unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ev = landingpad { ptr, i32 }
          catch ptr null
  %i.ew = extractvalue { ptr, i32 } %i.ev, 0
  tail call void @__clang_call_terminate(ptr %i.ew) #23
  unreachable

_ZN20btAlignedObjectArrayIfED2Ev.exit.i.i.i55:    ; preds = %bb.aq, %bb.ap
  %indvars.iv.next.i.i.i56 = add nuw nsw i64 %indvars.iv.i.i.i52, 1 ; 2 uses
  %i.ex = icmp eq i64 %indvars.iv.next.i.i.i56, %zext.i.i51
  br i1 %i.ex, label %_ZN20btAlignedObjectArrayIS_IfEE7destroyEii.exit.i.i48, label %bb.ap, !llvm.loop !366

_ZN20btAlignedObjectArrayIS_IfEE7destroyEii.exit.i.i48: ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit.i.i.i55, %_ZN20btAlignedObjectArrayIfED2Ev.exit47
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 2128
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !119 ; 2 uses
  %.not.i.i.i49 = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i49, label %_ZN20btAlignedObjectArrayIS_IfEED2Ev.exit57, label %bb.as

bb.as:                                            ; preds = %_ZN20btAlignedObjectArrayIS_IfEE7destroyEii.exit.i.i48
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 2136
  %i.fb = load i8, ptr %i.fa, align 8, !tbaa !118, !range !140, !noundef !148
  %i.fc = trunc nuw i8 %i.fb to i1
  br i1 %i.fc, label %bb.at, label %_ZN20btAlignedObjectArrayIS_IfEED2Ev.exit57

bb.at:                                            ; preds = %bb.as
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ez)
          to label %_ZN20btAlignedObjectArrayIS_IfEED2Ev.exit57 unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fd = landingpad { ptr, i32 }
          catch ptr null
  %i.fe = extractvalue { ptr, i32 } %i.fd, 0
  tail call void @__clang_call_terminate(ptr %i.fe) #23
  unreachable

_ZN20btAlignedObjectArrayIS_IfEED2Ev.exit57:      ; preds = %_ZN20btAlignedObjectArrayIS_IfEE7destroyEii.exit.i.i48, %bb.as, %bb.at
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 2084
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !120 ; 2 uses
  %i.fh = icmp sgt i32 %i.fg, 0
  br i1 %i.fh, label %.lr.ph.i.i.i60, label %_ZN20btAlignedObjectArrayIS_IfEE7destroyEii.exit.i.i58

.lr.ph.i.i.i60:                                   ; preds = %_ZN20btAlignedObjectArrayIS_IfEED2Ev.exit57
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 2096
  %zext.i.i61 = zext nneg i32 %i.fg to i64
  br label %bb.av

bb.av:                                            ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit.i.i.i65, %.lr.ph.i.i.i60
  %indvars.iv.i.i.i62 = phi i64 [ 0, %.lr.ph.i.i.i60 ], [ %indvars.iv.next.i.i.i66, %_ZN20btAlignedObjectArrayIfED2Ev.exit.i.i.i65 ] ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !119
  %i.fk = getelementptr inbounds nuw [32 x i8], ptr %i.fj, i64 %indvars.iv.i.i.i62 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !123 ; 2 uses
  %.not.i.i.i.i.i.i63 = icmp ne ptr %i.fm, null
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fo = load i8, ptr %i.fn, align 8, !range !140
  %i.fp = trunc nuw i8 %i.fo to i1
  %or.cond.i.i.i.i.i64 = select i1 %.not.i.i.i.i.i.i63, i1 %i.fp, i1 false
  br i1 %or.cond.i.i.i.i.i64, label %bb.aw, label %_ZN20btAlignedObjectArrayIfED2Ev.exit.i.i.i65

bb.aw:                                            ; preds = %bb.av
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.fm)
          to label %_ZN20btAlignedObjectArrayIfED2Ev.exit.i.i.i65 unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fq = landingpad { ptr, i32 }
          catch ptr null
  %i.fr = extractvalue { ptr, i32 } %i.fq, 0
  tail call void @__clang_call_terminate(ptr %i.fr) #23
  unreachable

_ZN20btAlignedObjectArrayIfED2Ev.exit.i.i.i65:    ; preds = %bb.aw, %bb.av
  %indvars.iv.next.i.i.i66 = add nuw nsw i64 %indvars.iv.i.i.i62, 1 ; 2 uses
  %i.fs = icmp eq i64 %indvars.iv.next.i.i.i66, %zext.i.i61
  br i1 %i.fs, label %_ZN20btAlignedObjectArrayIS_IfEE7destroyEii.exit.i.i58, label %bb.av, !llvm.loop !366

_ZN20btAlignedObjectArrayIS_IfEE7destroyEii.exit.i.i58: ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit.i.i.i65, %_ZN20btAlignedObjectArrayIS_IfEED2Ev.exit57
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 2096
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !119 ; 2 uses
  %.not.i.i.i59 = icmp eq ptr %i.fu, null
  br i1 %.not.i.i.i59, label %_ZN20btAlignedObjectArrayIS_IfEED2Ev.exit67, label %bb.ay

bb.ay:                                            ; preds = %_ZN20btAlignedObjectArrayIS_IfEE7destroyEii.exit.i.i58
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 2104
  %i.fw = load i8, ptr %i.fv, align 8, !tbaa !118, !range !140, !noundef !148
  %i.fx = trunc nuw i8 %i.fw to i1
  br i1 %i.fx, label %bb.az, label %_ZN20btAlignedObjectArrayIS_IfEED2Ev.exit67

bb.az:                                            ; preds = %bb.ay
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.fu)
          to label %_ZN20btAlignedObjectArrayIS_IfEED2Ev.exit67 unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fy = landingpad { ptr, i32 }
          catch ptr null
  %i.fz = extractvalue { ptr, i32 } %i.fy, 0
  tail call void @__clang_call_terminate(ptr %i.fz) #23
  unreachable

_ZN20btAlignedObjectArrayIS_IfEED2Ev.exit67:      ; preds = %_ZN20btAlignedObjectArrayIS_IfEE7destroyEii.exit.i.i58, %bb.ay, %bb.az
  tail call void @_ZN10btSoftBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(2064) dereferenceable(2064) %0) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN23btReducedDeformableBodyD0Ev(ptr noundef nonnull align 8 dereferenceable(3176) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN23btReducedDeformableBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(3176) dereferenceable(3176) %0) #24
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
          to label %_ZN17btCollisionObjectdlEPv.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #23
  unreachable

_ZN17btCollisionObjectdlEPv.exit:                 ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10btSoftBody17setCollisionShapeEP16btCollisionShape(ptr noundef nonnull align 8 dereferenceable(2064) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK17btCollisionObject24checkCollideWithOverrideEPKS_(ptr noundef nonnull align 8 dereferenceable(372) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.b = load i32, ptr %i.a, align 4, !tbaa !367  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.i, label %_ZNK20btAlignedObjectArrayIPK17btCollisionObjectE16findLinearSearchERKS2_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !368
  %wide.trip.count.i = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !369
  %2 = icmp ne ptr %i.g, %1                       ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp ne i64 %indvars.iv.next.i, %wide.trip.count.i
  %or.cond.not = select i1 %2, i1 %exitcond.not.i, i1 false
  br i1 %or.cond.not, label %bb.b, label %_ZNK20btAlignedObjectArrayIPK17btCollisionObjectE16findLinearSearchERKS2_.exit, !llvm.loop !371

_ZNK20btAlignedObjectArrayIPK17btCollisionObjectE16findLinearSearchERKS2_.exit: ; preds = %bb.b, %bb.a
  %.06.i = phi i1 [ true, %bb.a ], [ %2, %bb.b ]
  ret i1 %.06.i
}

declare noundef i32 @_ZNK10btSoftBody28calculateSerializeBufferSizeEv(ptr noundef nonnull align 8 dereferenceable(2064)) unnamed_addr #2

declare noundef ptr @_ZNK10btSoftBody9serializeEPvP12btSerializer(ptr noundef nonnull align 8 dereferenceable(2064), ptr noundef, ptr noundef) unnamed_addr #2

declare void @_ZN10btSoftBody9translateERK9btVector3(ptr noundef nonnull align 8 dereferenceable(2064), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #2

declare void @_ZN10btSoftBody6rotateERK12btQuaternion(ptr noundef nonnull align 8 dereferenceable(2064), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNK10btSoftBody7getAabbER9btVector3S1_(ptr noundef nonnull align 8 dereferenceable(2064) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1508
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !173
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1524
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !173
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 7 uses
  %i.b = load float, ptr %0, align 4, !tbaa !139  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load float, ptr %i.c, align 4, !tbaa !139 ; 3 uses
  %i.e = fadd float %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load float, ptr %i.f, align 4, !tbaa !139 ; 3 uses
  %i.h = fadd float %i.e, %i.g                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.i = fcmp ogt float %i.h, 0.000000e+00
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = fadd float %i.h, 1.000000e+00
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = tail call noundef float @sqrtf(float noundef %i.l) #24 ; 2 uses
  %i.r = fdiv float 5.000000e-01, %i.q
  %i.s = load float, ptr %i.n, align 4, !tbaa !139
  %i.t = load float, ptr %i.m, align 4, !tbaa !139
  %i.u = load float, ptr %i.j, align 4, !tbaa !139
  %i.v = load float, ptr %i.k, align 4, !tbaa !139
  %i.w = load float, ptr %i.o, align 4, !tbaa !139
  %i.x = load float, ptr %i.p, align 4, !tbaa !139
  %i.y = fsub float %i.v, %i.x
  %i.z = fsub float %i.w, %i.u
  %i.aa = fsub float %i.t, %i.s
  %i.ab = insertelement <4 x float> poison, float %i.r, i64 0
  %i.ac = insertelement <4 x float> %i.ab, float %i.q, i64 3
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.ae = insertelement <4 x float> <float poison, float poison, float poison, float 5.000000e-01>, float %i.aa, i64 0
  %i.af = insertelement <4 x float> %i.ae, float %i.z, i64 1
  %i.ag = insertelement <4 x float> %i.af, float %i.y, i64 2
  %i.ah = fmul <4 x float> %i.ad, %i.ag
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ai = fcmp olt float %i.b, %i.d
  %i.aj = fcmp olt float %i.d, %i.g
  %i.ak = select i1 %i.aj, i32 2, i32 1
  %i.al = fcmp olt float %i.b, %i.g
  %i.am = select i1 %i.al, i32 2, i32 0
  %i.an = select i1 %i.ai, i32 %i.ak, i32 %i.am
  %.fr = freeze i32 %i.an                         ; 3 uses
  %i.ao = add nuw nsw i32 %.fr, 1                 ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 3
  %i.aq = select i1 %i.ap, i32 0, i32 %i.ao
  %i.ar = add nuw nsw i32 %.fr, 2
  %i.as = urem i32 %i.ar, 3
  %i.at = zext nneg i32 %.fr to i64               ; 5 uses
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.at ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.at
  %i.aw = load float, ptr %i.av, align 4, !tbaa !139
  %i.ax = sext i32 %i.aq to i64                   ; 5 uses
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ax ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ax
  %i.ba = load float, ptr %i.az, align 4, !tbaa !139
  %i.bb = fsub float %i.aw, %i.ba
  %i.bc = zext nneg i32 %i.as to i64              ; 5 uses
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bc ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bc
  %i.bf = load float, ptr %i.be, align 4, !tbaa !139
  %i.bg = fsub float %i.bb, %i.bf
  %i.bh = fadd float %i.bg, 1.000000e+00
  %i.bi = tail call noundef float @sqrtf(float noundef %i.bh) #24 ; 2 uses
  %i.bj = fmul float %i.bi, 5.000000e-01
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.at
  store float %i.bj, ptr %i.bk, align 4, !tbaa !139
  %i.bl = fdiv float 5.000000e-01, %i.bi          ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.ax
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !139
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bc
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !139
  %i.bq = fsub float %i.bn, %i.bp
  %i.br = fmul float %i.bl, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float %i.br, ptr %i.bs, align 4, !tbaa !139
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.at
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !139
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.ax
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !139
  %i.bx = fadd float %i.bu, %i.bw
  %i.by = fmul float %i.bl, %i.bx
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ax
  store float %i.by, ptr %i.bz, align 4, !tbaa !139
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.at
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !139
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.bc
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !139
  %i.ce = fadd float %i.cb, %i.cd
  %i.cf = fmul float %i.bl, %i.ce
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bc
  store float %i.cf, ptr %i.cg, align 4, !tbaa !139
  %i.ch = load <4 x float>, ptr %i.a, align 16, !tbaa !139
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ci = phi <4 x float> [ %i.ch, %bb.c ], [ %i.ah, %bb.b ]
  store <4 x float> %i.ci, ptr %1, align 4, !tbaa !139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #19 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #24 ; 0 uses
  tail call void @_ZSt9terminatev() #23
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #20

declare noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN20btAlignedObjectArrayIS_IfEE7reserveEi(ptr noundef nonnull align 8 dereferenceable(25) %0, i32 noundef %1) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !121
  %i.c = icmp slt i32 %i.b, %1
  br i1 %i.c, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %_ZN20btAlignedObjectArrayIS_IfEE8allocateEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = sext i32 %1 to i64
  %i.e = shl nsw i64 %i.d, 5
  %i.f = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.e, i32 noundef 16)
  br label %_ZN20btAlignedObjectArrayIS_IfEE8allocateEi.exit

_ZN20btAlignedObjectArrayIS_IfEE8allocateEi.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.f, %bb.c ], [ null, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !120  ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph.i, label %_ZN20btAlignedObjectArrayIS_IfEE7destroyEii.exit

.lr.ph.i:                                         ; preds = %_ZN20btAlignedObjectArrayIS_IfEE8allocateEi.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %zext = zext nneg i32 %i.h to i64
  br label %bb.d

bb.d:                                             ; preds = %_ZN20btAlignedObjectArrayIfEC2ERKS0_.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN20btAlignedObjectArrayIfEC2ERKS0_.exit.i ] ; 3 uses
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %.0.i, i64 %indvars.iv.i ; 4 uses
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !119
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %indvars.iv.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 3 uses
  store i8 1, ptr %i.n, align 8, !tbaa !122
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  store ptr null, ptr %i.o, align 8, !tbaa !123
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 4 uses
  store i32 0, ptr %i.p, align 4, !tbaa !124
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store i32 0, ptr %i.q, align 8, !tbaa !125
end_hunk_0
