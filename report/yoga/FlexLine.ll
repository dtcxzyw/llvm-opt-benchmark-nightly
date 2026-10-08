Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yoga/original/FlexLine?download=true
inline.NumInlined: 434
inline.NumDeleted: 188
begin_hunk_0_@_ZN8facebook4yoga24boundAxisWithinMinAndMaxEPKNS0_4NodeENS0_9DirectionENS0_13FlexDirectionENS0_13FloatOptionalEff:bb.a
_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit132: ; preds = %bb.ai, %bb.aj
  %.sroa.0.0.i126 = phi i16 [ %.sroa.0.0.pre.i.i130, %bb.aj ], [ %i.jc, %bb.ai ]
  %i.ji = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.cz, i16 %.sroa.0.0.i126, float noundef 0.000000e+00) ; 2 uses
  %.sink.i.inv.i6.i.i50 = fcmp oge float %i.ji, 0.000000e+00
  %i.jj = select i1 %.sink.i.inv.i6.i.i50, float %i.ji, float 0.000000e+00
  %i.jk = fadd float %i.jb, %i.jj                 ; 3 uses
  switch i8 %1, label %bb.am [
    i8 1, label %bb.ak
    i8 2, label %bb.al
  ]

bb.ak:                                            ; preds = %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit132.thread, %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit132
  %i.jl = phi float [ %i.ir, %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit132.thread ], [ %i.jk, %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit132 ] ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 115
  %i.jn = load i16, ptr %i.jm, align 1, !tbaa !18 ; 2 uses
  %i.jo = and i16 %i.jn, 7
  %.not14.i11.i123 = icmp eq i16 %i.jo, 0
  br i1 %.not14.i11.i123, label %bb.am, label %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit124.thread

_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit124.thread: ; preds = %bb.ak
  %i.jp = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.cz, i16 %i.jn, float noundef %5) ; 2 uses
  %.sink.i.inv.i8.i8.i51170 = fcmp oge float %i.jp, 0.000000e+00
  %i.jq = select i1 %.sink.i.inv.i8.i8.i51170, float %i.jp, float 0.000000e+00
  br label %bb.ao

bb.al:                                            ; preds = %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit132.thread166, %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit132
  %i.jr = phi float [ %i.iz, %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit132.thread166 ], [ %i.jk, %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit132 ] ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 113
  %i.jt = load i16, ptr %i.js, align 1, !tbaa !18 ; 2 uses
  %i.ju = and i16 %i.jt, 7
  %.not.i5.i117 = icmp eq i16 %i.ju, 0
  br i1 %.not.i5.i117, label %bb.am, label %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit124.thread171

_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit124.thread171: ; preds = %bb.al
  %i.jv = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.cz, i16 %i.jt, float noundef %5) ; 2 uses
  %.sink.i.inv.i8.i8.i51173 = fcmp oge float %i.jv, 0.000000e+00
  %i.jw = select i1 %.sink.i.inv.i8.i8.i51173, float %i.jv, float 0.000000e+00
  br label %bb.ap

bb.am:                                            ; preds = %bb.al, %bb.ak, %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit132
  %i.jx = phi float [ %i.jr, %bb.al ], [ %i.jl, %bb.ak ], [ %i.jk, %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit132 ] ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 109
  %i.jz = load i16, ptr %i.jy, align 1, !tbaa !18 ; 2 uses
  %i.ka = and i16 %i.jz, 7
  %.not15.i7.i119 = icmp eq i16 %i.ka, 0
  br i1 %.not15.i7.i119, label %bb.an, label %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit124

bb.an:                                            ; preds = %bb.am
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 117
  %i.kc = load i16, ptr %i.kb, align 1, !tbaa !18 ; 2 uses
  %i.kd = and i16 %i.kc, 7
  %.not16.i8.i120 = icmp eq i16 %i.kd, 0
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 121
  %.val.i9.i121 = load i16, ptr %i.ke, align 1
  %.sroa.0.0.pre.i10.i122 = select i1 %.not16.i8.i120, i16 %.val.i9.i121, i16 %i.kc
  br label %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit124

_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit124: ; preds = %bb.am, %bb.an
  %.sroa.0.0.i118 = phi i16 [ %.sroa.0.0.pre.i10.i122, %bb.an ], [ %i.jz, %bb.am ]
  %i.kf = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.cz, i16 %.sroa.0.0.i118, float noundef %5) ; 2 uses
  %.sink.i.inv.i8.i8.i51 = fcmp oge float %i.kf, 0.000000e+00
  %i.kg = select i1 %.sink.i.inv.i8.i8.i51, float %i.kf, float 0.000000e+00 ; 3 uses
  switch i8 %1, label %bb.aq [
    i8 1, label %bb.ao
    i8 2, label %bb.ap
  ]

bb.ao:                                            ; preds = %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit124.thread, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit124
  %i.kh = phi float [ %i.jq, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit124.thread ], [ %i.kg, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit124 ] ; 2 uses
  %i.ki = phi float [ %i.jl, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit124.thread ], [ %i.jx, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit124 ] ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 133
  %i.kk = load i16, ptr %i.kj, align 1, !tbaa !18 ; 2 uses
  %i.kl = and i16 %i.kk, 7
  %.not14.i11.i115 = icmp eq i16 %i.kl, 0
  br i1 %.not14.i11.i115, label %bb.aq, label %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit116

bb.ap:                                            ; preds = %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit124.thread171, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit124
  %i.km = phi float [ %i.jw, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit124.thread171 ], [ %i.kg, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit124 ] ; 2 uses
  %i.kn = phi float [ %i.jr, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit124.thread171 ], [ %i.jx, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit124 ] ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 131
  %i.kp = load i16, ptr %i.ko, align 1, !tbaa !18 ; 2 uses
  %i.kq = and i16 %i.kp, 7
  %.not.i5.i109 = icmp eq i16 %i.kq, 0
  br i1 %.not.i5.i109, label %bb.aq, label %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit116

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit124
  %i.kr = phi float [ %i.km, %bb.ap ], [ %i.kh, %bb.ao ], [ %i.kg, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit124 ] ; 2 uses
  %i.ks = phi float [ %i.kn, %bb.ap ], [ %i.ki, %bb.ao ], [ %i.jx, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit124 ] ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 127
  %i.ku = load i16, ptr %i.kt, align 1, !tbaa !18 ; 2 uses
  %i.kv = and i16 %i.ku, 7
  %.not15.i7.i111 = icmp eq i16 %i.kv, 0
  br i1 %.not15.i7.i111, label %bb.ar, label %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit116

bb.ar:                                            ; preds = %bb.aq
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 135
  %i.kx = load i16, ptr %i.kw, align 1, !tbaa !18 ; 2 uses
  %i.ky = and i16 %i.kx, 7
  %.not16.i8.i112 = icmp eq i16 %i.ky, 0
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 139
  %.val.i9.i113 = load i16, ptr %i.kz, align 1
  %.sroa.0.0.pre.i10.i114 = select i1 %.not16.i8.i112, i16 %.val.i9.i113, i16 %i.kx
  br label %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit116

_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit116: ; preds = %bb.ao, %bb.ap, %bb.aq, %bb.ar
  %i.la = phi float [ %i.km, %bb.ap ], [ %i.kr, %bb.aq ], [ %i.kr, %bb.ar ], [ %i.kh, %bb.ao ]
  %i.lb = phi float [ %i.kn, %bb.ap ], [ %i.ks, %bb.aq ], [ %i.ks, %bb.ar ], [ %i.ki, %bb.ao ]
  %.sroa.0.0.i110 = phi i16 [ %i.kp, %bb.ap ], [ %i.ku, %bb.aq ], [ %.sroa.0.0.pre.i10.i114, %bb.ar ], [ %i.kk, %bb.ao ]
  %i.lc = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.cz, i16 %.sroa.0.0.i110, float noundef 0.000000e+00) ; 2 uses
  %.sink.i.inv.i6.i9.i52 = fcmp oge float %i.lc, 0.000000e+00
  %i.ld = select i1 %.sink.i.inv.i6.i9.i52, float %i.lc, float 0.000000e+00
  %i.le = fadd float %i.la, %i.ld
  %i.lf = fadd float %i.lb, %i.le                 ; 2 uses
  %i.lg = fcmp ord float %i.lf, 0.000000e+00
  %.sroa.0.0.i38 = select i1 %i.lg, float %i.lf, float 0.000000e+00
  %i.lh = fadd float %i.hi, %.sroa.0.0.i38
  br label %_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit

_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit: ; preds = %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit116, %bb.aa, %bb.f, %bb.e
  %.sroa.0142.0 = phi float [ %i.hi, %bb.aa ], [ %i.be, %bb.e ], [ %i.lh, %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit116 ], [ %i.cx, %bb.f ] ; 3 uses
  %.sroa.0143.0 = phi float [ %.sroa.010.1.i33, %bb.aa ], [ %.sroa.010.1.i, %bb.e ], [ %.sroa.010.1.i33, %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit116 ], [ %.sroa.010.1.i, %bb.f ]
  %or.cond = fcmp oge float %.sroa.0142.0, 0.000000e+00
  %i.li = fcmp ogt float %3, %.sroa.0142.0
  %or.cond193 = select i1 %or.cond, i1 %i.li, i1 false
  br i1 %or.cond193, label %_ZN8facebook4yogageENS0_13FloatOptionalES1_.exit40.thread191, label %_ZN8facebook4yogageENS0_13FloatOptionalES1_.exit.thread185

_ZN8facebook4yogageENS0_13FloatOptionalES1_.exit.thread185: ; preds = %_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit, %_ZNK8facebook4yoga5Style20resolvedMinDimensionENS0_9DirectionENS0_9DimensionEff.exit, %_ZNK8facebook4yoga5Style20resolvedMinDimensionENS0_9DirectionENS0_9DimensionEff.exit35
  %.sroa.0143.0179182 = phi float [ %.sroa.010.1.i, %_ZNK8facebook4yoga5Style20resolvedMinDimensionENS0_9DirectionENS0_9DimensionEff.exit ], [ %.sroa.0143.0, %_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit ], [ %.sroa.010.1.i33, %_ZNK8facebook4yoga5Style20resolvedMinDimensionENS0_9DirectionENS0_9DimensionEff.exit35 ] ; 3 uses
  %or.cond194 = fcmp oge float %.sroa.0143.0179182, 0.000000e+00
  %i.lj = fcmp olt float %3, %.sroa.0143.0179182
  %or.cond195 = select i1 %or.cond194, i1 %i.lj, i1 false
  br i1 %or.cond195, label %bb.as, label %_ZN8facebook4yogageENS0_13FloatOptionalES1_.exit40.thread191

bb.as:                                            ; preds = %_ZN8facebook4yogageENS0_13FloatOptionalES1_.exit.thread185
  br label %_ZN8facebook4yogageENS0_13FloatOptionalES1_.exit40.thread191

_ZN8facebook4yogageENS0_13FloatOptionalES1_.exit40.thread191: ; preds = %_ZN8facebook4yogageENS0_13FloatOptionalES1_.exit.thread185, %_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit, %bb.g, %bb.as
  %.sroa.027.0 = phi float [ %3, %_ZN8facebook4yogageENS0_13FloatOptionalES1_.exit.thread185 ], [ %.sroa.0143.0179182, %bb.as ], [ %3, %bb.g ], [ %.sroa.0142.0, %_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit ]
  ret float %.sroa.027.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare noundef zeroext i1 @_ZN8facebook4yoga4Node14isNodeFlexibleEv(ptr noundef nonnull align 8 dereferenceable(744)) local_unnamed_addr #1

declare noundef float @_ZNK8facebook4yoga4Node15resolveFlexGrowEv(ptr noundef nonnull align 8 dereferenceable(744)) local_unnamed_addr #1

declare noundef float @_ZNK8facebook4yoga4Node17resolveFlexShrinkEv(ptr noundef nonnull align 8 dereferenceable(744)) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEi(ptr dead_on_unwind noalias writable sret(%"struct.facebook::yoga::LayoutableChildren<facebook::yoga::Node>::Iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !30
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorC2ERKS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.noexc.i.i
  %.07.i.i.i = phi ptr [ %i.e, %.noexc.i.i ], [ %i.a, %bb.a ]
  %.sroa.03.06.i.i.i = phi ptr [ %i.h, %.noexc.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.e = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #11
          to label %.noexc.i.i unwind label %bb.b ; 4 uses

.noexc.i.i:                                       ; preds = %.lr.ph.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.i, i64 8
  store ptr null, ptr %i.e, align 8, !tbaa !30
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  store ptr %i.e, ptr %.07.i.i.i, align 8, !tbaa !30
  %i.h = load ptr, ptr %.sroa.03.06.i.i.i, align 8, !tbaa !30 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorC2ERKS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !99

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not12.i.i.i.i, label %common.resume, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i.i ], [ %i.k, %bb.b ] ; 2 uses
  %i.l = load ptr, ptr %.013.i.i.i.i, align 8, !tbaa !30 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i.i, i64 noundef 24) #12
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %common.resume, label %.lr.ph.i.i.i.i, !llvm.loop !0

common.resume:                                    ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i3, %bb.d, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.b ], [ %i.aw, %.lr.ph.i.i.i3 ], [ %i.aw, %bb.d ], [ %i.j, %.lr.ph.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorC2ERKS4_.exit: ; preds = %.noexc.i.i, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !34
  %i.o = add i64 %i.n, 1                          ; 2 uses
  %i.p = load ptr, ptr %1, align 8, !tbaa !27     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 696
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 704
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !14
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !15   ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 3
  %.not11.i.i = icmp ult i64 %i.o, %i.x
  br i1 %.not11.i.i, label %_ZNK8facebook4yoga4Node8getChildEm.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorC2ERKS4_.exit, %tailrecurse.i.i
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !33   ; 5 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit.i.i, label %tailrecurse.i.i, !prof !35

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit.i.i: ; preds = %.lr.ph.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit

tailrecurse.i.i:                                  ; preds = %.lr.ph.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !37
  store ptr %i.ab, ptr %1, align 8, !tbaa !27
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !38
  store i64 %i.ad, ptr %i.m, align 8, !tbaa !34
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !30
  store ptr %i.ae, ptr %i.b, align 8, !tbaa !30
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef 24) #12, !inline_history !100
  %i.af = load i64, ptr %i.m, align 8, !tbaa !34
  %i.ag = add i64 %i.af, 1                        ; 2 uses
  %i.ah = load ptr, ptr %1, align 8, !tbaa !27    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 696
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 704
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !14
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !15 ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = ashr exact i64 %i.ao, 3
  %.not.i.i = icmp ult i64 %i.ag, %i.ap
  br i1 %.not.i.i, label %_ZNK8facebook4yoga4Node8getChildEm.exit.i.i, label %.lr.ph.i.i

_ZNK8facebook4yoga4Node8getChildEm.exit.i.i:      ; preds = %tailrecurse.i.i, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorC2ERKS4_.exit
  %.lcssa6.i.i = phi i64 [ %i.o, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorC2ERKS4_.exit ], [ %i.ag, %tailrecurse.i.i ] ; 2 uses
  %.lcssa.i.i = phi ptr [ %i.t, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorC2ERKS4_.exit ], [ %i.al, %tailrecurse.i.i ]
  store i64 %.lcssa6.i.i, ptr %i.m, align 8, !tbaa !34
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.lcssa.i.i, i64 %.lcssa6.i.i
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !28
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 60
  %i.at = load i8, ptr %i.as, align 4
  %i.au = and i8 %i.at, 12
  %i.av = icmp eq i8 %i.au, 8
  br i1 %i.av, label %bb.c, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit, !prof !39

bb.c:                                             ; preds = %_ZNK8facebook4yoga4Node8getChildEm.exit.i.i
  invoke void @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator17skipContentsNodesEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #13
          to label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !30  ; 2 uses
  %.not12.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not12.i.i.i, label %common.resume, label %.lr.ph.i.i.i3

.lr.ph.i.i.i3:                                    ; preds = %bb.d, %.lr.ph.i.i.i3
  %.013.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i3 ], [ %i.ax, %bb.d ] ; 2 uses
  %i.ay = load ptr, ptr %.013.i.i.i, align 8, !tbaa !30 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i, i64 noundef 24) #12
  %.not.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i, label %common.resume, label %.lr.ph.i.i.i3, !llvm.loop !0

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit: ; preds = %_ZNK8facebook4yoga4Node8getChildEm.exit.i.i, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit.i.i, %bb.c
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %0, i16 %1, float noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = and i16 %1, 7
  switch i16 %i.a, label %_ZNK8facebook4yoga14StyleValuePool14getStoredValueENS0_16StyleValueHandleE.exit [
    i16 1, label %bb.b
    i16 2, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = and i16 %1, 8
  %.not.i = icmp eq i16 %i.b, 0
  %i.c = lshr i16 %1, 4                           ; 2 uses
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = zext nneg i16 %i.c to i64                ; 2 uses
  %i.e = icmp ult i16 %1, 64
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.d
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !101  ; 2 uses
  %i.j = add nsw i64 %i.d, -4                     ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !104
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !105  ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %.not.i.i.i.i = icmp ult i64 %i.j, %i.q
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef %i.j, i64 noundef %i.q) #10
  unreachable

_ZNSt6vectorIjSaIjEE2atEm.exit.i.i:               ; preds = %bb.e
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.j
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i

_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i: ; preds = %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i, %bb.d
  %.0.in.i.i = phi ptr [ %i.g, %bb.d ], [ %i.r, %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i ]
  %.0.i4.i = load float, ptr %.0.in.i.i, align 4, !tbaa !106
  br label %_ZNK8facebook4yoga14StyleValuePool14getStoredValueENS0_16StyleValueHandleE.exit

bb.g:                                             ; preds = %bb.b
  %i.s = and i16 %i.c, 2047
  %i.t = zext nneg i16 %i.s to i32                ; 2 uses
  %i.u = sub nsw i32 0, %i.t
  %.not.i3.i = icmp slt i16 %1, 0
  %i.v = select i1 %.not.i3.i, i32 %i.u, i32 %i.t
  %i.w = sitofp i32 %i.v to float
  br label %_ZNK8facebook4yoga14StyleValuePool14getStoredValueENS0_16StyleValueHandleE.exit

bb.h:                                             ; preds = %bb.a
  %i.x = and i16 %1, 8
  %.not.i3 = icmp eq i16 %i.x, 0
  %i.y = lshr i16 %1, 4                           ; 2 uses
  br i1 %.not.i3, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = zext nneg i16 %i.y to i64                ; 2 uses
  %i.aa = icmp ult i16 %1, 64
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.z
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i6

bb.k:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !101 ; 2 uses
  %i.af = add nsw i64 %i.z, -4                    ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !104
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !105 ; 2 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 2                 ; 2 uses
  %.not.i.i.i.i4 = icmp ult i64 %i.af, %i.am
  br i1 %.not.i.i.i.i4, label %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i5, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef %i.af, i64 noundef %i.am) #10
  unreachable

_ZNSt6vectorIjSaIjEE2atEm.exit.i.i5:              ; preds = %bb.k
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.af
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i6

_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i6: ; preds = %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i5, %bb.j
  %.0.in.i.i7 = phi ptr [ %i.ac, %bb.j ], [ %i.an, %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i5 ]
  %.0.i4.i8 = load float, ptr %.0.in.i.i7, align 4, !tbaa !106
  br label %_ZNK8facebook4yoga14StyleValuePool14getStoredValueENS0_16StyleValueHandleE.exit10

bb.m:                                             ; preds = %bb.h
  %i.ao = and i16 %i.y, 2047
  %i.ap = zext nneg i16 %i.ao to i32              ; 2 uses
  %i.aq = sub nsw i32 0, %i.ap
  %.not.i3.i9 = icmp slt i16 %1, 0
  %i.ar = select i1 %.not.i3.i9, i32 %i.aq, i32 %i.ap
  %i.as = sitofp i32 %i.ar to float
  br label %_ZNK8facebook4yoga14StyleValuePool14getStoredValueENS0_16StyleValueHandleE.exit10

_ZNK8facebook4yoga14StyleValuePool14getStoredValueENS0_16StyleValueHandleE.exit10: ; preds = %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i6, %bb.m
  %i.at = phi float [ %.0.i4.i8, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i6 ], [ %i.as, %bb.m ]
  %i.au = fmul float %2, %i.at
  %i.av = fmul float %i.au, f0x3C23D70A
  br label %_ZNK8facebook4yoga14StyleValuePool14getStoredValueENS0_16StyleValueHandleE.exit

_ZNK8facebook4yoga14StyleValuePool14getStoredValueENS0_16StyleValueHandleE.exit: ; preds = %bb.a, %bb.g, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i, %_ZNK8facebook4yoga14StyleValuePool14getStoredValueENS0_16StyleValueHandleE.exit10
  %.sroa.014.0 = phi float [ %i.w, %bb.g ], [ %i.av, %_ZNK8facebook4yoga14StyleValuePool14getStoredValueENS0_16StyleValueHandleE.exit10 ], [ %.0.i4.i, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i ], [ +qnan, %bb.a ]
  ret float %.sroa.014.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr i16 @_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  switch i32 %1, label %bb.n [
    i32 0, label %bb.b
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 3, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 13
  switch i8 %2, label %bb.e [
    i8 1, label %bb.c
    i8 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 21
  %i.c = load i16, ptr %i.b, align 1, !tbaa !18   ; 2 uses
  %i.d = and i16 %i.c, 7
  %.not14.i = icmp eq i16 %i.d, 0
  br i1 %.not14.i, label %bb.e, label %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.f = load i16, ptr %i.e, align 1, !tbaa !18   ; 2 uses
  %i.g = and i16 %i.f, 7
  %.not.i = icmp eq i16 %i.g, 0
  br i1 %.not.i, label %bb.e, label %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.h = load i16, ptr %i.a, align 1, !tbaa !18   ; 2 uses
  %i.i = and i16 %i.h, 7
  %.not15.i = icmp eq i16 %i.i, 0
  br i1 %.not15.i, label %bb.f, label %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.k = load i16, ptr %i.j, align 1, !tbaa !18   ; 2 uses
  %i.l = and i16 %i.k, 7
  %.not16.i = icmp eq i16 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 29
  %.val.i = load i16, ptr %i.m, align 1
  %.sroa.0.0.pre.i = select i1 %.not16.i, i16 %.val.i, i16 %i.k
  br label %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit

bb.g:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 15 ; 2 uses
  %i.o = load i16, ptr %i.n, align 1, !tbaa !18
  %i.p = and i16 %i.o, 7
  %.not.i3 = icmp eq i16 %i.p, 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 27 ; 2 uses
  %i.r = load i16, ptr %i.q, align 1
  %i.s = and i16 %i.r, 7
  %.not7.i = icmp eq i16 %i.s, 0
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 29
  %spec.select.i = select i1 %.not7.i, ptr %i.t, ptr %i.q
  %.sroa.0.0.in.i = select i1 %.not.i3, ptr %spec.select.i, ptr %i.n
  %.sroa.0.0.i4 = load i16, ptr %.sroa.0.0.in.i, align 1, !tbaa !32
  br label %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit

bb.h:                                             ; preds = %bb.a
  switch i8 %2, label %bb.k [
    i8 1, label %bb.i
    i8 2, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.v = load i16, ptr %i.u, align 1, !tbaa !18   ; 2 uses
  %i.w = and i16 %i.v, 7
  %.not14.i11 = icmp eq i16 %i.w, 0
  br i1 %.not14.i11, label %bb.k, label %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit

bb.j:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 21
  %i.y = load i16, ptr %i.x, align 1, !tbaa !18   ; 2 uses
  %i.z = and i16 %i.y, 7
  %.not.i5 = icmp eq i16 %i.z, 0
  br i1 %.not.i5, label %bb.k, label %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.ab = load i16, ptr %i.aa, align 1, !tbaa !18 ; 2 uses
  %i.ac = and i16 %i.ab, 7
  %.not15.i7 = icmp eq i16 %i.ac, 0
  br i1 %.not15.i7, label %bb.l, label %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.ae = load i16, ptr %i.ad, align 1, !tbaa !18 ; 2 uses
  %i.af = and i16 %i.ae, 7
  %.not16.i8 = icmp eq i16 %i.af, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 29
  %.val.i9 = load i16, ptr %i.ag, align 1
  %.sroa.0.0.pre.i10 = select i1 %.not16.i8, i16 %.val.i9, i16 %i.ae
  br label %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit

bb.m:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 19 ; 2 uses
  %i.ai = load i16, ptr %i.ah, align 1, !tbaa !18
  %i.aj = and i16 %i.ai, 7
  %.not.i12 = icmp eq i16 %i.aj, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 27 ; 2 uses
  %i.al = load i16, ptr %i.ak, align 1
  %i.am = and i16 %i.al, 7
  %.not7.i13 = icmp eq i16 %i.am, 0
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 29
  %spec.select.i14 = select i1 %.not7.i13, ptr %i.an, ptr %i.ak
  %.sroa.0.0.in.i15 = select i1 %.not.i12, ptr %spec.select.i14, ptr %i.ah
  %.sroa.0.0.i16 = load i16, ptr %.sroa.0.0.in.i15, align 1, !tbaa !32
  br label %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit

bb.n:                                             ; preds = %bb.a
  tail call void @_ZN8facebook4yoga16fatalWithMessageEPKc(ptr noundef nonnull @.str.2) #10
  unreachable

_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit: ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.f, %bb.e, %bb.d, %bb.c, %bb.m, %bb.g
  %.sroa.0.0 = phi i16 [ %.sroa.0.0.i16, %bb.m ], [ %.sroa.0.0.i4, %bb.g ], [ %i.h, %bb.e ], [ %.sroa.0.0.pre.i, %bb.f ], [ %i.c, %bb.c ], [ %i.f, %bb.d ], [ %.sroa.0.0.pre.i10, %bb.l ], [ %i.v, %bb.i ], [ %i.y, %bb.j ], [ %i.ab, %bb.k ]
  ret i16 %.sroa.0.0
}

; Function Attrs: noreturn
declare void @_ZN8facebook4yoga16fatalWithMessageEPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator4nextEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !34
  %i.c = add i64 %i.b, 1                          ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 696
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 704
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !15   ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3
  %.not11 = icmp ult i64 %i.c, %i.l
  br i1 %.not11, label %_ZNK8facebook4yoga4Node8getChildEm.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !33   ; 5 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit, label %tailrecurse, !prof !35

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit: ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.d

tailrecurse:                                      ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !37
  store ptr %i.q, ptr %0, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !38
  store i64 %i.s, ptr %i.a, align 8, !tbaa !34
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !30
  store ptr %i.t, ptr %i.m, align 8, !tbaa !30
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 24) #12
  %i.u = load i64, ptr %i.a, align 8, !tbaa !34
  %i.v = add i64 %i.u, 1                          ; 2 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 696
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 704
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !14
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !15  ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 3
  %.not = icmp ult i64 %i.v, %i.ae
  br i1 %.not, label %_ZNK8facebook4yoga4Node8getChildEm.exit, label %bb.b

_ZNK8facebook4yoga4Node8getChildEm.exit:          ; preds = %tailrecurse, %bb.a
  %.lcssa6 = phi i64 [ %i.c, %bb.a ], [ %i.v, %tailrecurse ] ; 2 uses
  %.lcssa = phi ptr [ %i.h, %bb.a ], [ %i.aa, %tailrecurse ]
  store i64 %.lcssa6, ptr %i.a, align 8, !tbaa !34
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.lcssa, i64 %.lcssa6
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !28
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 60
  %i.ai = load i8, ptr %i.ah, align 4
  %i.aj = and i8 %i.ai, 12
  %i.ak = icmp eq i8 %i.aj, 8
  br i1 %i.ak, label %bb.c, label %bb.d, !prof !39

bb.c:                                             ; preds = %_ZNK8facebook4yoga4Node8getChildEm.exit
  tail call void @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator17skipContentsNodesEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.d

bb.d:                                             ; preds = %_ZNK8facebook4yoga4Node8getChildEm.exit, %bb.c, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator17skipContentsNodesEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !27     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !34   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 696
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 704
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !15   ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3                   ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.c, %i.k
  br i1 %.not.i.i.i, label %_ZNK8facebook4yoga4Node8getChildEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef %i.c, i64 noundef %i.k) #10
  unreachable

_ZNK8facebook4yoga4Node8getChildEm.exit:          ; preds = %bb.a
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.0.peel = load ptr, ptr %i.l, align 8, !tbaa !28 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0.peel, i64 60
  %i.o = load i8, ptr %i.n, align 4
  %i.p = and i8 %i.o, 12
  %i.q = icmp eq i8 %i.p, 8
  br i1 %i.q, label %bb.c, label %.critedge

bb.c:                                             ; preds = %_ZNK8facebook4yoga4Node8getChildEm.exit
  %i.r = getelementptr inbounds nuw i8, ptr %.0.peel, i64 696 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.peel, i64 704 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !15
  %.not.peel = icmp eq ptr %i.t, %i.u
  br i1 %.not.peel, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #11 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.a, ptr %i.w, align 8
  %.sroa.4.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 %i.c, ptr %.sroa.4.0..sroa_idx.peel, align 8
  %i.x = load ptr, ptr %i.m, align 8, !tbaa !30
  store ptr %i.x, ptr %i.v, align 8, !tbaa !30
  store ptr %i.v, ptr %i.m, align 8, !tbaa !30
  store ptr %.0.peel, ptr %0, align 8, !tbaa !27
  store i64 0, ptr %i.b, align 8, !tbaa !34
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.z = load ptr, ptr %i.r, align 8, !tbaa !15   ; 2 uses
  %.not.i.i.i6.not.peel = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i.i6.not.peel, label %.loopexit12, label %_ZNK8facebook4yoga4Node8getChildEm.exit7

_ZNK8facebook4yoga4Node8getChildEm.exit7:         ; preds = %bb.d, %bb.f
  %i.aa = phi ptr [ %.0, %bb.f ], [ %.0.peel, %bb.d ]
  %.0.in = phi ptr [ %i.an, %bb.f ], [ %i.z, %bb.d ]
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !28  ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0, i64 60
  %i.ac = load i8, ptr %i.ab, align 4
  %i.ad = and i8 %i.ac, 12
  %i.ae = icmp eq i8 %i.ad, 8
  br i1 %i.ae, label %bb.e, label %.critedge

bb.e:                                             ; preds = %_ZNK8facebook4yoga4Node8getChildEm.exit7
  %i.af = getelementptr inbounds nuw i8, ptr %.0, i64 696 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0, i64 704 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !14
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !15
  %.not = icmp eq ptr %i.ah, %i.ai
  br i1 %.not, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #11 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.aa, ptr %i.ak, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.al = load ptr, ptr %i.m, align 8, !tbaa !30
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !30
  store ptr %i.aj, ptr %i.m, align 8, !tbaa !30
  store ptr %.0, ptr %0, align 8, !tbaa !27
  store i64 0, ptr %i.b, align 8, !tbaa !34
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !14
  %i.an = load ptr, ptr %i.af, align 8, !tbaa !15 ; 2 uses
  %.not.i.i.i6.not = icmp eq ptr %i.am, %i.an
  br i1 %.not.i.i.i6.not, label %.loopexit12, label %_ZNK8facebook4yoga4Node8getChildEm.exit7, !llvm.loop !107

.loopexit12:                                      ; preds = %bb.f, %bb.d
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef 0, i64 noundef 0) #10
  unreachable

.loopexit:                                        ; preds = %bb.e, %bb.c
  tail call void @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator4nextEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  br label %.critedge

.critedge:                                        ; preds = %_ZNK8facebook4yoga4Node8getChildEm.exit, %_ZNK8facebook4yoga4Node8getChildEm.exit7, %.loopexit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { mustprogress uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { noreturn }
attributes #11 = { builtin allocsize(0) }
attributes #12 = { builtin nounwind }
attributes #13 = { "function-inline-cost-multiplier"="2" }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !31}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"any p2 pointer", !10, i64 0}
!12 = !{!"p2 _ZTSN8facebook4yoga4NodeE", !11, i64 0}
!13 = !{!"_ZTSNSt12_Vector_baseIPN8facebook4yoga4NodeESaIS3_EE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!14 = !{!13, !12, i64 8}
!15 = !{!13, !12, i64 0}
!16 = !{!"short", !6, i64 0}
!17 = !{!"_ZTSN8facebook4yoga16StyleValueHandleE", !16, i64 0}
!18 = !{!17, !16, i64 0}
!19 = !{!"p1 _ZTSN8facebook4yoga4NodeE", !10, i64 0}
!20 = !{!"long", !6, i64 0}
!21 = !{!"p1 _ZTSSt19_Fwd_list_node_base", !10, i64 0}
!22 = !{!"_ZTSSt19_Fwd_list_node_base", !21, i64 0}
!23 = !{!"_ZTSNSt14_Fwd_list_baseISt4pairIPKN8facebook4yoga4NodeEmESaIS6_EE14_Fwd_list_implE", !22, i64 0}
!24 = !{!"_ZTSSt14_Fwd_list_baseISt4pairIPKN8facebook4yoga4NodeEmESaIS6_EE", !23, i64 0}
!25 = !{!"_ZTSSt12forward_listISt4pairIPKN8facebook4yoga4NodeEmESaIS6_EE", !24, i64 0}
!26 = !{!"_ZTSN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorE", !19, i64 0, !20, i64 8, !25, i64 16}
!27 = !{!26, !19, i64 0}
!28 = !{!19, !19, i64 0}
!29 = !{!"p1 _ZTSN8facebook4yoga16SmallValueBufferILm4EE8OverflowE", !10, i64 0}
!30 = !{!22, !21, i64 0}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!16, !16, i64 0}
!33 = !{!24, !21, i64 0}
!34 = !{!26, !20, i64 8}
!35 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!36 = !{!"_ZTSSt4pairIPKN8facebook4yoga4NodeEmE", !19, i64 0, !20, i64 8}
!37 = !{!36, !19, i64 0}
!38 = !{!36, !20, i64 8}
!39 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!40 = distinct !{!40, !31}
!41 = !{!"bool", !6, i64 0}
!42 = !{!"_ZTSN8facebook4yoga8NodeTypeE", !6, i64 0}
!43 = !{!"float", !6, i64 0}
!44 = !{!"_ZTSN8facebook4yoga13FloatOptionalE", !43, i64 0}
!45 = !{!"_ZTSN8facebook4yoga9DirectionE", !6, i64 0}
!46 = !{!"_ZTSN8facebook4yoga13FlexDirectionE", !6, i64 0}
!47 = !{!"_ZTSN8facebook4yoga7JustifyE", !6, i64 0}
!48 = !{!"_ZTSN8facebook4yoga5AlignE", !6, i64 0}
!49 = !{!"_ZTSN8facebook4yoga12PositionTypeE", !6, i64 0}
!50 = !{!"_ZTSN8facebook4yoga4WrapE", !6, i64 0}
!51 = !{!"_ZTSN8facebook4yoga8OverflowE", !6, i64 0}
!52 = !{!"_ZTSN8facebook4yoga7DisplayE", !6, i64 0}
!53 = !{!"_ZTSN8facebook4yoga9BoxSizingE", !6, i64 0}
!54 = !{!"_ZTSSt5arrayIN8facebook4yoga16StyleValueHandleELm9EE", !6, i64 0}
!55 = !{!"_ZTSSt5arrayIN8facebook4yoga16StyleValueHandleELm3EE", !6, i64 0}
!56 = !{!"_ZTSSt5arrayIN8facebook4yoga16StyleValueHandleELm2EE", !6, i64 0}
end_hunk_0
