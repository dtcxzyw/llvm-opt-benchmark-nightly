inline.NumInlined: 3123
inline.NumDeleted: 1535
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN10GenericCAO11updateLightEj:bb.a
  %i.ac = call noundef zeroext i16 @_Z16getInteriorLight7MapNodeiPK14NodeDefManager(i32 %i.r, i32 noundef %i.v, ptr noundef %i.ab) ; 3 uses
  %i.ad = and i16 %i.ac, 255
  %i.ae = lshr i16 %i.ac, 8
  %i.af = call i16 @llvm.umax.i16(i16 %i.ad, i16 %i.ae) ; 2 uses
  %i.ag = zext i8 %.01833 to i16                  ; 2 uses
  %i.ah = icmp samesign ugt i16 %i.af, %i.ag
  %spec.select2530 = call i16 @llvm.umax.i16(i16 %i.af, i16 %i.ag)
  %spec.select25 = trunc nuw i16 %spec.select2530 to i8
  %spec.select26 = select i1 %i.ah, i16 %i.ac, i16 %.034
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.122 = phi i1 [ true, %bb.e ], [ %.02132, %bb.d ] ; 2 uses
  %.220 = phi i8 [ %spec.select25, %bb.e ], [ %.01833, %bb.d ]
  %.2 = phi i16 [ %spec.select26, %bb.e ], [ %.034, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.c, label %bb.d, !llvm.loop !736

bb.g:                                             ; preds = %bb.c
  store i32 %i.i, ptr %i.j, align 4, !tbaa !504
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !487
  %.off.i = add i8 %i.aj, -5
  %switch.i = icmp ult i8 %.off.i, 2
  br i1 %switch.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !293 ; 2 uses
  %.not8.i = icmp eq ptr %i.al, null
  br i1 %.not8.i, label %_ZN10GenericCAO12setNodeLightERKN5video6SColorE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = load ptr, ptr %i.g, align 8, !tbaa !122
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 712
  %i.ao = load float, ptr %i.an, align 8, !tbaa !661
  call void @_ZN18WieldMeshSceneNode25setLightColorAndAnimationEN5video6SColorEf(ptr noundef nonnull align 8 dereferenceable(352) %i.al, i32 %i.i, float noundef %i.ao)
  br label %_ZN10GenericCAO12setNodeLightERKN5video6SColorE.exit

bb.j:                                             ; preds = %bb.g
  %i.ap = load ptr, ptr %0, align 8, !tbaa !41
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 136
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = call noundef ptr %i.ar(ptr noundef nonnull align 8 dereferenceable(1076) %0), !inline_history !662 ; 7 uses
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %_ZN10GenericCAO12setNodeLightERKN5video6SColorE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !41
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 176
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = call noundef i32 %i.av(ptr noundef nonnull align 8 dereferenceable(218) %i.as), !inline_history !663
  %.not.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i, label %_ZN10GenericCAO12setNodeLightERKN5video6SColorE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k, %.lr.ph.i.i
  %.04.i.i = phi i32 [ %i.bc, %.lr.ph.i.i ], [ 0, %bb.k ] ; 2 uses
  %i.ax = load ptr, ptr %i.as, align 8, !tbaa !41
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 168
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = call noundef nonnull align 8 dereferenceable(127) ptr %i.az(ptr noundef nonnull align 8 dereferenceable(218) %i.as, i32 noundef %.04.i.i), !inline_history !663
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 100
  store i32 %i.i, ptr %i.bb, align 4, !tbaa !504
  %i.bc = add nuw i32 %.04.i.i, 1                 ; 2 uses
  %i.bd = load ptr, ptr %i.as, align 8, !tbaa !41
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 176
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = call noundef i32 %i.bf(ptr noundef nonnull align 8 dereferenceable(218) %i.as), !inline_history !663
  %i.bh = icmp ult i32 %i.bc, %i.bg
  br i1 %i.bh, label %.lr.ph.i.i, label %_ZN10GenericCAO12setNodeLightERKN5video6SColorE.exit, !llvm.loop !664

_ZN10GenericCAO12setNodeLightERKN5video6SColorE.exit: ; preds = %.lr.ph.i.i, %bb.k, %bb.j, %bb.i, %bb.h, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %_ZN10GenericCAO12setNodeLightERKN5video6SColorE.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext range(i16 2, 4) i16 @_ZN10GenericCAO16getLightPositionEPN4core8vector3dIsEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1076) %0, ptr nofree noundef writeonly captures(none) initializes((0, 12)) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 564 ; 3 uses
  %i.c = load float, ptr %i.a, align 8, !tbaa !263
  %i.d = fmul nsz float %i.c, 1.000000e+01
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !264
  %i.g = fmul nsz float %i.f, 1.000000e+01
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.i = load float, ptr %i.h, align 8, !tbaa !146
  %i.j = fmul nsz float %i.i, 1.000000e+01
  %i.k = load float, ptr %i.b, align 4, !tbaa !263
  %i.l = fadd nsz float %i.d, %i.k                ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 3 uses
  %i.n = load float, ptr %i.m, align 8, !tbaa !264
  %i.o = fadd nsz float %i.g, %i.n                ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 572 ; 2 uses
  %i.q = load float, ptr %i.p, align 4, !tbaa !146
  %i.r = fadd nsz float %i.j, %i.q                ; 2 uses
  %i.s = fcmp nsz ogt float %i.l, 0.000000e+00
  %i.t = select nsz i1 %i.s, float 5.000000e+00, float -5.000000e+00
  %i.u = fcmp nsz ogt float %i.o, 0.000000e+00
  %i.v = select nsz i1 %i.u, float 5.000000e+00, float -5.000000e+00
  %i.w = fcmp nsz ogt float %i.r, 0.000000e+00
  %i.x = select nsz i1 %i.w, float 5.000000e+00, float -5.000000e+00
  %i.y = fadd nsz float %i.o, %i.v
  %i.z = fdiv nsz float %i.y, 1.000000e+01
  %i.aa = fptosi float %i.z to i16
  %i.ab = fadd nsz float %i.l, %i.t
  %i.ac = fdiv nsz float %i.ab, 1.000000e+01
  %i.ad = fptosi float %i.ac to i16
  %i.ae = fadd nsz float %i.r, %i.x
  %i.af = fdiv nsz float %i.ae, 1.000000e+01
  %i.ag = fptosi float %i.af to i16
  %.sroa.3.0.insert.ext.i = zext i16 %i.ag to i48
  %.sroa.3.0.insert.shift.i = shl nuw i48 %.sroa.3.0.insert.ext.i, 32
  %.sroa.2.0.insert.ext.i = zext i16 %i.aa to i48
  %.sroa.2.0.insert.shift.i = shl nuw nsw i48 %.sroa.2.0.insert.ext.i, 16
  %.sroa.2.0.insert.insert.i = or disjoint i48 %.sroa.3.0.insert.shift.i, %.sroa.2.0.insert.shift.i
  %.sroa.0.0.insert.ext.i = zext i16 %i.ad to i48
  %.sroa.0.0.insert.insert.i = or disjoint i48 %.sroa.2.0.insert.insert.i, %.sroa.0.0.insert.ext.i
  store i48 %.sroa.0.0.insert.insert.i, ptr %1, align 2
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.ai = load <4 x float>, ptr %i.ah, align 4
  %i.aj = shufflevector <4 x float> %i.ai, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.al = load float, ptr %i.ak, align 8, !tbaa !264
  %i.am = fmul nsz float %i.al, 1.000000e+01
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.ao = load float, ptr %i.an, align 4, !tbaa !146
  %i.ap = load <4 x float>, ptr %i.b, align 4
  %i.aq = shufflevector <4 x float> %i.ap, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ar = load float, ptr %i.m, align 8, !tbaa !264
  %i.as = fadd nsz float %i.am, %i.ar             ; 2 uses
  %i.at = load float, ptr %i.p, align 4, !tbaa !146
  %i.au = fcmp nsz ogt float %i.as, 0.000000e+00
  %i.av = select nsz i1 %i.au, float 5.000000e+00, float -5.000000e+00
  %i.aw = fadd nsz float %i.as, %i.av
  %i.ax = fdiv nsz float %i.aw, 1.000000e+01
  %i.ay = fptosi float %i.ax to i16
  %i.az = insertelement <2 x float> %i.aj, float %i.ao, i64 1
  %i.ba = fmul nsz <2 x float> %i.az, splat (float 1.000000e+01)
  %i.bb = insertelement <2 x float> %i.aq, float %i.at, i64 1
  %i.bc = fadd nsz <2 x float> %i.ba, %i.bb       ; 2 uses
  %i.bd = fcmp nsz ogt <2 x float> %i.bc, zeroinitializer
  %i.be = select <2 x i1> %i.bd, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.bf = fadd nsz <2 x float> %i.bc, %i.be
  %i.bg = fdiv nsz <2 x float> %i.bf, splat (float 1.000000e+01)
  %.sroa.2.0.insert.ext.i68 = zext i16 %i.ay to i48
  %.sroa.2.0.insert.shift.i69 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i68, 16
  %i.bh = fptosi <2 x float> %i.bg to <2 x i16>   ; 2 uses
  %i.bi = extractelement <2 x i16> %i.bh, i64 1
  %i.bj = zext i16 %i.bi to i48
  %.sroa.3.0.insert.shift.i67 = shl nuw i48 %i.bj, 32
  %.sroa.2.0.insert.insert.i70 = or disjoint i48 %.sroa.3.0.insert.shift.i67, %.sroa.2.0.insert.shift.i69
  %i.bk = extractelement <2 x i16> %i.bh, i64 0
  %i.bl = zext i16 %i.bk to i48
  %.sroa.0.0.insert.insert.i72 = or disjoint i48 %.sroa.2.0.insert.insert.i70, %i.bl
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i48 %.sroa.0.0.insert.insert.i72, ptr %i.bm, align 2
  %i.bn = load float, ptr %i.ah, align 4, !tbaa !263 ; 2 uses
  %i.bo = load float, ptr %i.a, align 8, !tbaa !263 ; 2 uses
  %i.bp = fsub nsz float %i.bn, %i.bo             ; 2 uses
  %i.bq = load <2 x float>, ptr %i.ak, align 8, !tbaa !33 ; 3 uses
  %i.br = load <2 x float>, ptr %i.e, align 4, !tbaa !33 ; 3 uses
  %foldExtExtBinop = fsub nsz <2 x float> %i.bq, %i.br ; 2 uses
  %foldExtExtBinop103 = fsub nsz <2 x float> %i.bq, %i.br
  %i.bs = extractelement <2 x float> %foldExtExtBinop103, i64 1 ; 2 uses
  %foldExtExtBinop105 = fmul nsz <2 x float> %foldExtExtBinop, %foldExtExtBinop
  %i.bt = extractelement <2 x float> %foldExtExtBinop105, i64 0
  %i.bu = tail call nsz float @llvm.fmuladd.f32(float %i.bp, float %i.bp, float %i.bt)
  %i.bv = tail call nsz noundef float @llvm.fmuladd.f32(float %i.bs, float %i.bs, float %i.bu)
  %i.bw = fcmp nsz olt float %i.bv, 3.000000e+00
  br i1 %i.bw, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bx = fadd nsz float %i.bo, %i.bn
  %i.by = fadd nsz <2 x float> %i.br, %i.bq
  %i.bz = fmul nsz float %i.bx, 5.000000e-01
  %i.ca = fmul nsz float %i.bz, 1.000000e+01
  %i.cb = load float, ptr %i.b, align 4, !tbaa !263
  %i.cc = fadd nsz float %i.cb, %i.ca             ; 2 uses
  %i.cd = fcmp nsz ogt float %i.cc, 0.000000e+00
  %i.ce = select nsz i1 %i.cd, float 5.000000e+00, float -5.000000e+00
  %i.cf = fadd nsz float %i.cc, %i.ce
  %i.cg = fdiv nsz float %i.cf, 1.000000e+01
  %i.ch = fptosi float %i.cg to i16
  %i.ci = fmul nsz <2 x float> %i.by, splat (float 5.000000e-01)
  %i.cj = fmul nsz <2 x float> %i.ci, splat (float 1.000000e+01)
  %i.ck = load <2 x float>, ptr %i.m, align 8, !tbaa !33
  %i.cl = fadd nsz <2 x float> %i.ck, %i.cj       ; 2 uses
  %i.cm = fcmp nsz ogt <2 x float> %i.cl, zeroinitializer
  %i.cn = select <2 x i1> %i.cm, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.co = fadd nsz <2 x float> %i.cl, %i.cn
  %i.cp = fdiv nsz <2 x float> %i.co, splat (float 1.000000e+01)
  %i.cq = fptosi <2 x float> %i.cp to <2 x i16>
  %i.cr = zext <2 x i16> %i.cq to <2 x i48>
  %i.cs = shl nuw <2 x i48> %i.cr, <i48 16, i48 32> ; 2 uses
  %shift = shufflevector <2 x i48> %i.cs, <2 x i48> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop107 = or disjoint <2 x i48> %shift, %i.cs
  %.sroa.2.0.insert.insert.i91 = extractelement <2 x i48> %foldExtExtBinop107, i64 0
  %.sroa.0.0.insert.ext.i92 = zext i16 %i.ch to i48
  %.sroa.0.0.insert.insert.i93 = or disjoint i48 %.sroa.2.0.insert.insert.i91, %.sroa.0.0.insert.ext.i92
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i48 %.sroa.0.0.insert.insert.i93, ptr %i.ct, align 2
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i16 [ 3, %bb.b ], [ 2, %bb.a ]
  ret i16 %.0
}

declare i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144), i48, ptr noundef) local_unnamed_addr #5

declare noundef zeroext i16 @_Z16getInteriorLight7MapNodeiPK14NodeDefManager(i32, i32 noundef, ptr noundef) local_unnamed_addr #5

declare i32 @_Z12encode_lightth(i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #5

declare void @_ZN18WieldMeshSceneNode25setLightColorAndAnimationEN5video6SColorEf(ptr noundef nonnull align 8 dereferenceable(352), i32, float noundef) local_unnamed_addr #5

declare noundef ptr @_ZN7Minimap9addMarkerEPN5scene10ISceneNodeE(ptr noundef nonnull align 8 dereferenceable(192), ptr noundef) local_unnamed_addr #5

declare noundef ptr @_ZN6Camera10addNametagERK7Nametag(ptr noundef nonnull align 8 dereferenceable(536), ptr noundef nonnull align 8 dereferenceable(73)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10GenericCAO4stepEfP17ClientEnvironment(ptr noundef nonnull align 8 dereferenceable(1076) %0, float noundef %1, ptr noundef %2) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::allocator.4", align 1  ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::allocator.4", align 1  ; 4 uses
  %9 = alloca %"class.core::aabbox3d", align 16   ; 7 uses
  %10 = alloca %"class.core::vector3d", align 4   ; 5 uses
  %11 = alloca %"class.core::vector3d", align 4   ; 5 uses
  %12 = alloca %struct.collisionMoveResult, align 8 ; 6 uses
  %13 = alloca %"class.core::vector3d", align 8   ; 6 uses
  %14 = alloca %struct.SoundSpec, align 8         ; 13 uses
  %15 = alloca %"class.core::vector3d", align 8   ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.core::vector3d", align 8   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 65 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !104, !range !31, !noundef !32
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.ah

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !186
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !187  ; 16 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 604
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.j, align 4
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 612
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 4, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 564 ; 2 uses
  store <2 x float> %.sroa.01.0.copyload.i, ptr %i.k, align 4
  %.sroa.4132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 572
  store float %.sroa.22.0.copyload.i, ptr %.sroa.4132.0..sroa_idx, align 4, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 628
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.l, ptr noundef nonnull align 4 dereferenceable(12) %i.k, i64 12, i1 false), !tbaa.struct !466
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 712
  %i.n = load float, ptr %i.m, align 8, !tbaa !737
  %i.o = frem nsz float %i.n, 3.600000e+02        ; 3 uses
  %i.p = fcmp nsz olt float %i.o, 0.000000e+00
  %i.q = fadd nsz float %i.o, 3.600000e+02
  %i.r = select nsz i1 %i.p, float %i.q, float %i.o
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 604
  store float %i.r, ptr %i.t, align 4, !tbaa !738
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 676
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.u, ptr noundef nonnull align 8 dereferenceable(12) %i.s, i64 12, i1 false), !tbaa.struct !466
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.w = load i8, ptr %i.v, align 8, !tbaa !106, !range !31, !noundef !32
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %._crit_edge.i.i, label %bb.ah

._crit_edge.i.i:                                  ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 488 ; 4 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !739  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 492 ; 2 uses
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !740
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 0, i64 24, i1 false)
  %i.ae = load float, ptr %i.ad, align 8, !tbaa !741 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 256
  %i.ag = load float, ptr %i.af, align 8, !tbaa !742 ; 2 uses
  %i.ah = fcmp nsz ogt float %i.ag, 1.000000e-03  ; 3 uses
  %i.ai = fmul nsz float %i.ae, %i.ag
  %.0 = select nsz i1 %i.ah, float %i.ai, float %i.ae ; 2 uses
  %i.aj = load ptr, ptr @g_settings, align 8, !tbaa !743
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.ak, ptr %3, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ak, ptr noundef nonnull align 1 dereferenceable(9) @.str.17, i64 9, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 9, ptr %i.al, align 8, !tbaa !46
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 25
  store i8 0, ptr %i.am, align 1, !tbaa !48
  %i.an = invoke noundef zeroext i1 @_ZNK8Settings7getBoolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.l

bb.c:                                             ; preds = %._crit_edge.i.i
  br i1 %i.an, label %._crit_edge.i.i239, label %.critedge236

._crit_edge.i.i239:                               ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !122
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.aq, ptr %4, align 8, !tbaa !43
  store i32 1953718630, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 4, ptr %i.ar, align 8, !tbaa !46
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i8 0, ptr %i.as, align 4, !tbaa !48
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 1384
  %i.au = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS5_(ptr noundef nonnull align 8 dereferenceable(56) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.d unwind label %bb.m

bb.d:                                             ; preds = %._crit_edge.i.i239
  %.not.i.i.i.i.not = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.not, label %.critedge234, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 242
  %i.aw = load i8, ptr %i.av, align 2, !tbaa !745, !range !31, !noundef !32
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %.critedge234, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 418
  %i.az = load i8, ptr %i.ay, align 2, !tbaa !746, !range !31, !noundef !32
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %.critedge234, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = load ptr, ptr @g_settings, align 8, !tbaa !743
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.bc = invoke noundef zeroext i1 @_ZNK8Settings7getBoolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  br i1 %i.bc, label %bb.j, label %.critedge230

bb.j:                                             ; preds = %bb.i
  %i.bd = load ptr, ptr %i.ao, align 8, !tbaa !122
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1384
  %i.bf = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS5_(ptr noundef nonnull align 8 dereferenceable(56) %i.be, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.critedge unwind label %bb.q

.critedge:                                        ; preds = %bb.k
  %.not.i.i.i.i244 = icmp ne ptr %i.bf, null
  %i.bg = load ptr, ptr %7, align 8, !tbaa !121   ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %.critedge228.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !48
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #35
  br label %.critedge228.thread

.critedge228.thread:                              ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %.critedge230

.critedge230:                                     ; preds = %bb.i, %.critedge228.thread
  %i.bl = phi i1 [ %.not.i.i.i.i244, %.critedge228.thread ], [ false, %bb.i ]
  %i.bm = load ptr, ptr %5, align 8, !tbaa !121   ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %.critedge232.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i247

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i247: ; preds = %.critedge230
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !48
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #35
  br label %.critedge232.thread

.critedge232.thread:                              ; preds = %.critedge230, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i247
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %.critedge234
end_hunk_0
begin_hunk_1_@_ZN10GenericCAO4stepEfP17ClientEnvironment:bb.a
  %i.md = fmul nsz <4 x float> %i.ma, %i.mc
  %i.me = load <4 x float>, ptr %i.lu, align 4, !tbaa !33
  %i.mf = insertelement <4 x float> poison, float %1, i64 0
  %i.mg = shufflevector <4 x float> %i.mf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mh = fmul nsz <4 x float> %i.mg, %i.lv
  %i.mi = fadd nsz <4 x float> %i.mh, %i.md
  %i.mj = fadd nsz <4 x float> %i.me, %i.mi       ; 2 uses
  store <4 x float> %i.mj, ptr %i.lu, align 4, !tbaa !33
  %i.mk = insertelement <2 x float> poison, float %1, i64 0
  %i.ml = shufflevector <2 x float> %i.mk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mm = insertelement <2 x float> %i.lw, float %i.lx, i64 1
  %i.mn = fmul nsz <2 x float> %i.ml, %i.mm
  %i.mo = shufflevector <4 x float> %i.lv, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.mp = fadd nsz <2 x float> %i.mo, %i.mn
  store <2 x float> %i.mp, ptr %i.ln, align 4, !tbaa !33
  %.sroa.033.0.copyload = load <2 x float>, ptr %i.lu, align 4 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 660
  %i.mr = load i8, ptr %i.mq, align 4, !tbaa !758, !range !31, !noundef !32
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 652 ; 2 uses
  %i.mt = load float, ptr %i.ms, align 4, !tbaa !759 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(45) %i.jn, ptr noundef nonnull align 4 dereferenceable(12) %i.jo, i64 12, i1 false), !tbaa.struct !466
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 640
  store <2 x float> %.sroa.033.0.copyload, ptr %i.mu, align 8
  %.sroa.24.0..sroa_idx.i313 = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.mv = extractelement <4 x float> %i.mj, i64 2 ; 2 uses
  store float %i.mv, ptr %.sroa.24.0..sroa_idx.i313, align 8, !tbaa !33
  %i.mw = fcmp nsz ogt float %i.mt, 0.000000e+00
  br i1 %i.mw, label %_ZN16SmoothTranslatorIN4core8vector3dIfEEE6updateES2_bf.exit316, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.mx = fpext nsz float %i.mt to double         ; 2 uses
  %i.my = fcmp nsz olt double %i.mx, 1.000000e-03
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.na = load float, ptr %i.mz, align 8, !tbaa !34 ; 2 uses
  br i1 %i.my, label %_ZN16SmoothTranslatorIN4core8vector3dIfEEE6updateES2_bf.exit316, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.nb = fpext nsz float %i.na to double
  %i.nc = fmul nsz double %i.nb, 1.000000e-01
  %i.nd = call nsz double @llvm.fmuladd.f64(double %i.mx, double 9.000000e-01, double %i.nc)
  %i.ne = fptrunc nsz double %i.nd to float
  br label %_ZN16SmoothTranslatorIN4core8vector3dIfEEE6updateES2_bf.exit316

_ZN16SmoothTranslatorIN4core8vector3dIfEEE6updateES2_bf.exit316: ; preds = %bb.bg, %bb.bh, %bb.bi
  %.sink.i315 = phi float [ %i.mt, %bb.bg ], [ %i.ne, %bb.bi ], [ %i.na, %bb.bh ] ; 2 uses
  store float %.sink.i315, ptr %i.ms, align 4, !tbaa !39
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 656
  store float 0.000000e+00, ptr %i.nf, align 8, !tbaa !34
  br label %bb.bj

bb.bj:                                            ; preds = %_ZN16SmoothTranslatorIN4core8vector3dIfEEE6updateES2_bf.exit316, %_ZN19collisionMoveResultD2Ev.exit298
  %i.ng = phi i8 [ %i.mr, %_ZN16SmoothTranslatorIN4core8vector3dIfEEE6updateES2_bf.exit316 ], [ %.pre454, %_ZN19collisionMoveResultD2Ev.exit298 ]
  %i.nh = phi float [ %.sink.i315, %_ZN16SmoothTranslatorIN4core8vector3dIfEEE6updateES2_bf.exit316 ], [ %.pre452, %_ZN19collisionMoveResultD2Ev.exit298 ] ; 2 uses
  %i.ni = phi float [ %i.mv, %_ZN16SmoothTranslatorIN4core8vector3dIfEEE6updateES2_bf.exit316 ], [ %.pre450, %_ZN19collisionMoveResultD2Ev.exit298 ]
  %i.nj = phi float [ %1, %_ZN16SmoothTranslatorIN4core8vector3dIfEEE6updateES2_bf.exit316 ], [ %.pre, %_ZN19collisionMoveResultD2Ev.exit298 ] ; 2 uses
  %i.nk = phi <2 x float> [ %.sroa.033.0.copyload, %_ZN16SmoothTranslatorIN4core8vector3dIfEEE6updateES2_bf.exit316 ], [ %i.ll, %_ZN19collisionMoveResultD2Ev.exit298 ]
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 656
  store float %i.nj, ptr %i.nl, align 8, !tbaa !34
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.nn = load float, ptr %i.nm, align 8, !tbaa !146 ; 2 uses
  %i.no = fsub nsz float %i.ni, %i.nn
  %i.np = fpext nsz float %i.nh to double
  %i.nq = fcmp nsz ogt double %i.np, 1.000000e-03
  %i.nr = fdiv nsz float %i.nj, %i.nh
  %i.ns = fmul nsz float %i.nr, 8.000000e-01
  %.0.i = select i1 %i.nq, float %i.ns, float 8.000000e-01 ; 2 uses
  %i.nt = trunc nuw i8 %i.ng to i1
  %i.nu = select i1 %i.nt, float 1.000000e+00, float 1.500000e+00 ; 2 uses
  %i.nv = fcmp nsz olt float %i.nu, %.0.i
  %.sroa.speculated.i = select i1 %i.nv, float %i.nu, float %.0.i ; 2 uses
  %i.nw = fmul nsz float %i.no, %.sroa.speculated.i
  %i.nx = load <2 x float>, ptr %i.jn, align 8, !tbaa !33 ; 2 uses
  %i.ny = fsub nsz <2 x float> %i.nk, %i.nx
  %i.nz = insertelement <2 x float> poison, float %.sroa.speculated.i, i64 0
  %i.oa = shufflevector <2 x float> %i.nz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ob = fmul nsz <2 x float> %i.ny, %i.oa
  %i.oc = fadd nsz <2 x float> %i.nx, %i.ob
  %i.od = fadd nsz float %i.nn, %i.nw
  store <2 x float> %i.oc, ptr %i.jo, align 4
  store float %i.od, ptr %.sroa.6394.0..sroa_idx, align 4, !tbaa !33
  call void @_ZN10GenericCAO13updateNodePosEv(ptr noundef nonnull align 8 dereferenceable(1076) %0)
  %i.oe = load float, ptr %i.jo, align 4, !tbaa !263
  %i.of = fsub nsz float %.sroa.0392.0.copyload, %i.oe ; 2 uses
  %i.og = load float, ptr %.sroa.5393.0..sroa_idx, align 8, !tbaa !264
  %i.oh = fsub nsz float %.sroa.5393.0.copyload, %i.og ; 2 uses
  %i.oi = load float, ptr %.sroa.6394.0..sroa_idx, align 4, !tbaa !146
  %i.oj = fsub nsz float %.sroa.6394.0.copyload, %i.oi ; 2 uses
  %i.ok = fmul nsz float %i.oh, %i.oh
  %i.ol = call nsz float @llvm.fmuladd.f32(float %i.of, float %i.of, float %i.ok)
  %i.om = call nsz float @llvm.fmuladd.f32(float %i.oj, float %i.oj, float %i.ol)
  %i.on = call nsz noundef float @llvm.sqrt.f32(float %i.om)
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 3 uses
  %i.op = load float, ptr %i.oo, align 8, !tbaa !120
  %i.oq = fadd nsz float %i.op, %i.on             ; 2 uses
  store float %i.oq, ptr %i.oo, align 8, !tbaa !120
  %i.or = fcmp nsz ogt float %i.oq, 1.500000e+01
  br i1 %i.or, label %bb.bk, label %bb.bz

bb.bk:                                            ; preds = %bb.bj
  store float 0.000000e+00, ptr %i.oo, align 8, !tbaa !120
  %i.os = load i8, ptr %i.c, align 1, !tbaa !104, !range !31, !noundef !32
  %i.ot = trunc nuw i8 %i.os to i1
  br i1 %i.ot, label %bb.bz, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 414
  %i.ov = load i8, ptr %i.ou, align 2, !tbaa !760, !range !31, !noundef !32
  %i.ow = trunc nuw i8 %i.ov to i1
  br i1 %i.ow, label %bb.bm, label %bb.bz

bb.bm:                                            ; preds = %bb.bl
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !122
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 16 ; 2 uses
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !41
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 8
  %i.pc = load ptr, ptr %i.pb, align 8
  %i.pd = call noundef ptr %i.pc(ptr noundef nonnull align 8 dereferenceable(8) %i.oz), !inline_history !735 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %i.pe = load ptr, ptr %0, align 8, !tbaa !41
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 160
  %i.pg = load ptr, ptr %i.pf, align 8
  %i.ph = call noundef ptr %i.pg(ptr noundef nonnull align 8 dereferenceable(1076) %0), !inline_history !750
  %.not.i318 = icmp eq ptr %i.ph, null
  br i1 %.not.i318, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %.sroa.013.0.copyload.i339 = load <2 x float>, ptr %i.jo, align 4
  %.sroa.4.0.copyload.i341 = load float, ptr %.sroa.6394.0..sroa_idx, align 4, !tbaa !33
  br label %_ZNK10GenericCAO11getPositionEv.exit342

bb.bo:                                            ; preds = %bb.bm
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !260
  %.not17.i319 = icmp eq ptr %i.pj, null
  br i1 %.not17.i319, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @_ZNK10GenericCAO17updateParentChainEv(ptr noundef nonnull align 8 dereferenceable(1076) %0)
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !186
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 408
  %.sroa.0.0.copyload.i.i320 = load i48, ptr %i.pm, align 8 ; 3 uses
  %i.pn = load ptr, ptr %i.pi, align 8, !tbaa !260 ; 2 uses
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !41
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 232
  %i.pq = load ptr, ptr %i.pp, align 8
  %i.pr = call { <2 x float>, float } %i.pq(ptr noundef nonnull align 8 dereferenceable(218) %i.pn), !inline_history !750 ; 2 uses
  %.fca.0.extract8.i321 = extractvalue { <2 x float>, float } %i.pr, 0
  %.fca.1.extract9.i322 = extractvalue { <2 x float>, float } %i.pr, 1
  %.sroa.2.0.extract.shift.i.i324 = lshr i48 %.sroa.0.0.copyload.i.i320, 16
  %.sroa.3.0.extract.shift.i.i326 = lshr i48 %.sroa.0.0.copyload.i.i320, 32
  %.sroa.3.0.extract.trunc.i.i327 = trunc nuw i48 %.sroa.3.0.extract.shift.i.i326 to i16
  %i.ps = sitofp nsz i16 %.sroa.3.0.extract.trunc.i.i327 to float
  %i.pt = fmul nnan nsz float %i.ps, 1.000000e+01
  %i.pu = trunc i48 %.sroa.0.0.copyload.i.i320 to i16
  %i.pv = insertelement <2 x i16> poison, i16 %i.pu, i64 0
  %i.pw = trunc i48 %.sroa.2.0.extract.shift.i.i324 to i16
  %i.px = insertelement <2 x i16> %i.pv, i16 %i.pw, i64 1
  %i.py = sitofp <2 x i16> %i.px to <2 x float>
  %i.pz = fmul nnan nsz <2 x float> %i.py, splat (float 1.000000e+01)
  %i.qa = fadd nsz <2 x float> %i.pz, %.fca.0.extract8.i321
  %i.qb = fadd nsz float %i.pt, %.fca.1.extract9.i322
  br label %_ZNK10GenericCAO11getPositionEv.exit342

bb.bq:                                            ; preds = %bb.bo
  %i.qc = getelementptr inbounds nuw i8, ptr %0, i64 564
  %.sroa.013.0.copyload14.i336 = load <2 x float>, ptr %i.qc, align 4
  %.sroa.4.0..sroa_idx15.i337 = getelementptr inbounds nuw i8, ptr %0, i64 572
  %.sroa.4.0.copyload16.i338 = load float, ptr %.sroa.4.0..sroa_idx15.i337, align 4, !tbaa !33
  br label %_ZNK10GenericCAO11getPositionEv.exit342

_ZNK10GenericCAO11getPositionEv.exit342:          ; preds = %bb.bn, %bb.bp, %bb.bq
  %.sroa.0.4.vec.insert.i.pn.i332 = phi <2 x float> [ %i.qa, %bb.bp ], [ %.sroa.013.0.copyload14.i336, %bb.bq ], [ %.sroa.013.0.copyload.i339, %bb.bn ] ; 2 uses
  %.pn.i333 = phi float [ %i.qb, %bb.bp ], [ %.sroa.4.0.copyload16.i338, %bb.bq ], [ %.sroa.4.0.copyload.i341, %bb.bn ]
  %.sroa.0374.0.vec.extract = extractelement <2 x float> %.sroa.0.4.vec.insert.i.pn.i332, i64 0
  %i.qd = fmul nsz float %.sroa.0374.0.vec.extract, 1.000000e-01 ; 3 uses
  %.sroa.0374.4.vec.extract = extractelement <2 x float> %.sroa.0.4.vec.insert.i.pn.i332, i64 1
  %i.qe = fmul nsz float %.sroa.0374.4.vec.extract, 1.000000e-01
  %.sroa.0.0.vec.insert.i343 = insertelement <2 x float> poison, float %i.qd, i64 0
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.qg = load float, ptr %i.qf, align 4, !tbaa !761
  %i.qh = fadd nsz float %i.qe, %i.qg             ; 2 uses
  %.sroa.0.4.vec.insert.i348 = insertelement <2 x float> %.sroa.0.0.vec.insert.i343, float %i.qh, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i348, ptr %13, align 8
  %.sroa.220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.qi = fcmp nsz ogt float %i.qd, 0.000000e+00
  %i.qj = select nsz i1 %i.qi, float 5.000000e-01, float -5.000000e-01
  %i.qk = fadd nsz float %i.qd, %i.qj
  %i.ql = fptosi float %i.qk to i16
  %i.qm = fmul nsz float %.pn.i333, 1.000000e-01  ; 2 uses
  %i.qn = fadd nsz float %i.qh, -5.000000e-01
  store float %i.qm, ptr %.sroa.220.0..sroa_idx, align 8
  %i.qo = insertelement <2 x float> poison, float %i.qn, i64 0
  %i.qp = insertelement <2 x float> %i.qo, float %i.qm, i64 1 ; 2 uses
  %i.qq = fcmp nsz ogt <2 x float> %i.qp, zeroinitializer
  %i.qr = select <2 x i1> %i.qq, <2 x float> splat (float 5.000000e-01), <2 x float> splat (float -5.000000e-01)
  %i.qs = fadd nsz <2 x float> %i.qp, %i.qr
  %i.qt = fptosi <2 x float> %i.qs to <2 x i16>
  %i.qu = zext <2 x i16> %i.qt to <2 x i48>
  %i.qv = shl nuw <2 x i48> %i.qu, <i48 16, i48 32> ; 2 uses
  %shift = shufflevector <2 x i48> %i.qv, <2 x i48> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = or disjoint <2 x i48> %i.qv, %shift
  %.sroa.2.0.insert.insert.i = extractelement <2 x i48> %foldExtExtBinop, i64 0
  %.sroa.0.0.insert.ext.i = zext i16 %i.ql to i48
  %.sroa.0.0.insert.insert.i = or disjoint i48 %.sroa.2.0.insert.insert.i, %.sroa.0.0.insert.ext.i
  %i.qw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !186 ; 2 uses
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !41
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 24
  %i.ra = load ptr, ptr %i.qz, align 8
  %i.rb = call noundef nonnull align 8 dereferenceable(144) ptr %i.ra(ptr noundef nonnull align 8 dereferenceable(440) %i.qx)
  %i.rc = call i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.rb, i48 %.sroa.0.0.insert.insert.i, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  %i.rd = and i32 %i.rc, 65535
  %i.re = zext nneg i32 %i.rd to i64              ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.pd, i64 24
  %i.rg = getelementptr inbounds nuw i8, ptr %i.pd, i64 32
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !576
  %i.ri = load ptr, ptr %i.rf, align 8, !tbaa !579 ; 3 uses
  %i.rj = ptrtoint ptr %i.rh to i64
  %i.rk = ptrtoint ptr %i.ri to i64
  %i.rl = sub i64 %i.rj, %i.rk
  %i.rm = sdiv exact i64 %i.rl, 2080
  %i.rn = icmp ugt i64 %i.rm, %i.re
  br i1 %i.rn, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %_ZNK10GenericCAO11getPositionEv.exit342
  %i.ro = getelementptr inbounds nuw [2080 x i8], ptr %i.ri, i64 %i.re ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 16
  %i.rq = load i64, ptr %i.rp, align 8, !tbaa !46
  %i.rr = icmp eq i64 %i.rq, 0
  br i1 %i.rr, label %bb.bs, label %_ZNK14NodeDefManager3getERK7MapNode.exit

bb.bs:                                            ; preds = %bb.br, %_ZNK10GenericCAO11getPositionEv.exit342
  %i.rs = getelementptr inbounds nuw i8, ptr %i.ri, i64 260000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit

_ZNK14NodeDefManager3getERK7MapNode.exit:         ; preds = %bb.br, %bb.bs
  %i.rt = phi ptr [ %i.rs, %bb.bs ], [ %i.ro, %bb.br ] ; 3 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 1904
  %i.rv = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 7 uses
  store ptr %i.rv, ptr %14, align 8, !tbaa !43
  %i.rw = load ptr, ptr %i.ru, align 8, !tbaa !121 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rt, i64 1912
  %i.ry = load i64, ptr %i.rx, align 8, !tbaa !46 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 %i.ry, ptr %i.b, align 8, !tbaa !125
  %i.rz = icmp ugt i64 %i.ry, 15
  br i1 %i.rz, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit
  %i.sa = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(50) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.sa, ptr %14, align 8, !tbaa !121
  %i.sb = load i64, ptr %i.b, align 8, !tbaa !125
  store i64 %i.sb, ptr %i.rv, align 8, !tbaa !48
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %_ZNK14NodeDefManager3getERK7MapNode.exit
  %i.sc = phi ptr [ %i.sa, %.noexc.i.i ], [ %i.rv, %_ZNK14NodeDefManager3getERK7MapNode.exit ] ; 2 uses
  switch i64 %i.ry, label %bb.bu [
    i64 1, label %bb.bt
    i64 0, label %_ZN9SoundSpecC2ERKS_.exit
  ]

bb.bt:                                            ; preds = %._crit_edge.i.i.i
  %i.sd = load i8, ptr %i.rw, align 1, !tbaa !48
  store i8 %i.sd, ptr %i.sc, align 1, !tbaa !48
  br label %_ZN9SoundSpecC2ERKS_.exit

bb.bu:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.sc, ptr align 1 %i.rw, i64 %i.ry, i1 false)
  br label %_ZN9SoundSpecC2ERKS_.exit

_ZN9SoundSpecC2ERKS_.exit:                        ; preds = %._crit_edge.i.i.i, %bb.bt, %bb.bu
  %i.se = load i64, ptr %i.b, align 8, !tbaa !125 ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.se, ptr %i.sf, align 8, !tbaa !46
  %i.sg = load ptr, ptr %14, align 8, !tbaa !121
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 %i.se
  store i8 0, ptr %i.sh, align 1, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.si = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 3 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.rt, i64 1936
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.si, ptr noundef nonnull align 8 dereferenceable(18) %i.sj, i64 18, i1 false)
  %i.sk = load float, ptr %i.si, align 8, !tbaa !762
  %i.sl = fmul nsz float %i.sk, 6.000000e-01
  store float %i.sl, ptr %i.si, align 8, !tbaa !762
  %i.sm = load ptr, ptr %i.ox, align 8, !tbaa !122 ; 2 uses
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !41
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 112
  %i.sp = load ptr, ptr %i.so, align 8
  %i.sq = invoke noundef ptr %i.sp(ptr noundef nonnull align 8 dereferenceable(1674) %i.sm)
          to label %_ZN6Client5soundEv.exit unwind label %bb.bw, !inline_history !763 ; 2 uses

_ZN6Client5soundEv.exit:                          ; preds = %_ZN9SoundSpecC2ERKS_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  store <2 x float> zeroinitializer, ptr %15, align 8, !tbaa !33
  %i.sr = getelementptr inbounds nuw i8, ptr %15, i64 8
  store float 0.000000e+00, ptr %i.sr, align 8, !tbaa !146
  %i.ss = load ptr, ptr %i.sq, align 8, !tbaa !41
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 88
  %i.su = load ptr, ptr %i.st, align 8
  invoke void %i.su(ptr noundef nonnull align 8 dereferenceable(96) %i.sq, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(50) %14, ptr noundef nonnull align 4 dereferenceable(12) %13, ptr noundef nonnull align 4 dereferenceable(12) %15)
          to label %bb.bv unwind label %bb.bx

bb.bv:                                            ; preds = %_ZN6Client5soundEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  %i.sv = load ptr, ptr %14, align 8, !tbaa !121  ; 2 uses
  %i.sw = icmp eq ptr %i.sv, %i.rv
  br i1 %i.sw, label %_ZN9SoundSpecD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.bv
  %i.sx = load i64, ptr %i.rv, align 8, !tbaa !48
  %i.sy = add i64 %i.sx, 1
  call void @_ZdlPvm(ptr noundef %i.sv, i64 noundef %i.sy) #35
  br label %_ZN9SoundSpecD2Ev.exit

_ZN9SoundSpecD2Ev.exit:                           ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.bz

bb.bw:                                            ; preds = %_ZN9SoundSpecC2ERKS_.exit
  %i.sz = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bx:                                            ; preds = %_ZN6Client5soundEv.exit
  %i.ta = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.pn216 = phi { ptr, i32 } [ %i.ta, %bb.bx ], [ %i.sz, %bb.bw ]
  %i.tb = load ptr, ptr %14, align 8, !tbaa !121  ; 2 uses
  %i.tc = icmp eq ptr %i.tb, %i.rv
  br i1 %i.tc, label %_ZN9SoundSpecD2Ev.exit358, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i356

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i356: ; preds = %bb.by
  %i.td = load i64, ptr %i.rv, align 8, !tbaa !48
  %i.te = add i64 %i.td, 1
  call void @_ZdlPvm(ptr noundef %i.tb, i64 noundef %i.te) #35
  br label %_ZN9SoundSpecD2Ev.exit358

_ZN9SoundSpecD2Ev.exit358:                        ; preds = %bb.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i356
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366

bb.bz:                                            ; preds = %bb.bj, %_ZN9SoundSpecD2Ev.exit, %bb.bl, %bb.bk, %_ZNK10GenericCAO11getPositionEv.exit
  %i.tf = getelementptr inbounds nuw i8, ptr %0, i64 756 ; 3 uses
  %i.tg = load float, ptr %i.tf, align 4, !tbaa !764
  %i.th = fadd nsz float %1, %i.tg                ; 3 uses
  store float %i.th, ptr %i.tf, align 4, !tbaa !764
  %i.ti = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.tj = load float, ptr %i.ti, align 8, !tbaa !765 ; 2 uses
  %i.tk = fcmp nsz ult float %i.th, %i.tj
  br i1 %i.tk, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.tl = fsub nsz float %i.th, %i.tj
  store float %i.tl, ptr %i.tf, align 4, !tbaa !764
  %i.tm = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 2 uses
  %i.tn = load i32, ptr %i.tm, align 8, !tbaa !110
  %i.to = add nsw i32 %i.tn, 1                    ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %0, i64 748
  %i.tq = load i32, ptr %i.tp, align 4, !tbaa !111
  %.not219 = icmp slt i32 %i.to, %i.tq
  %spec.store.select = select i1 %.not219, i32 %i.to, i32 0
  store i32 %spec.store.select, ptr %i.tm, align 8
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  call void @_ZN10GenericCAO17updateTextureAnimEv(ptr noundef nonnull align 8 dereferenceable(1076) %0)
  %i.tr = getelementptr inbounds nuw i8, ptr %0, i64 1000 ; 3 uses
  %i.ts = load float, ptr %i.tr, align 8, !tbaa !119 ; 2 uses
  %i.tt = fcmp nsz ult float %i.ts, 0.000000e+00
  br i1 %i.tt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.tu = fsub nsz float %i.ts, %1                ; 2 uses
  store float %i.tu, ptr %i.tr, align 8, !tbaa !119
  %i.tv = fcmp nsz ugt float %i.tu, 0.000000e+00
  br i1 %i.tv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  store float -1.000000e+00, ptr %i.tr, align 8, !tbaa !119
  %i.tw = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.tx = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 7 uses
  store ptr %i.tx, ptr %16, align 8, !tbaa !43
  %i.ty = load ptr, ptr %i.tw, align 8, !tbaa !121 ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.ua = load i64, ptr %i.tz, align 8, !tbaa !46 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.ua, ptr %i.a, align 8, !tbaa !125
  %i.ub = icmp ugt i64 %i.ua, 15
  br i1 %i.ub, label %.noexc.i360, label %._crit_edge.i.i359

.noexc.i360:                                      ; preds = %bb.cd
  %i.uc = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.uc, ptr %16, align 8, !tbaa !121
  %i.ud = load i64, ptr %i.a, align 8, !tbaa !125
end_hunk_1
begin_hunk_2_@_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE16_M_allocate_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS9_EESI_IJEEEEEPSB_DpOT_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.o = load i64, ptr %i.a, align 8, !tbaa !125  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.o, ptr %i.p, align 8, !tbaa !46
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !121
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 0, ptr %i.s, align 8, !tbaa !289
  ret ptr %i.b

bb.e:                                             ; preds = %.noexc.i.i.i
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  %i.v = call ptr @__cxa_begin_catch(ptr %i.u) #28 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 56) #35
  invoke void @__cxa_rethrow() #36
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.w

bb.h:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #38
  unreachable

bb.i:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !812

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !1018
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !812

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #36
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #36
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #37 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !133  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !133
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %i.i = load ptr, ptr %.031, align 8, !tbaa !19  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 48
  %i.k = load i64, ptr %i.j, align 8, !tbaa !837
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !836  ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !133
  store ptr %i.o, ptr %.031, align 8, !tbaa !19
  store ptr %.031, ptr %i.g, align 8, !tbaa !133
  store ptr %i.g, ptr %i.m, align 8, !tbaa !836
  %i.p = load ptr, ptr %.031, align 8, !tbaa !19
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.q, align 8, !tbaa !836
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !19
  store ptr %i.r, ptr %.031, align 8, !tbaa !19
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !836
  store ptr %.031, ptr %i.s, align 8, !tbaa !19
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.02530, %bb.g ], [ %i.l, %bb.f ], [ %i.l, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1019

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !117    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !118
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #35
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8, !tbaa !118
  store ptr %.0.i, ptr %0, align 8, !tbaa !117
  ret void
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_content_cao.cpp() #31 section ".text.startup" {
bb.a:
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN18ClientActiveObject7m_typesE, i64 48), ptr @_ZN18ClientActiveObject7m_typesE, align 8, !tbaa !22
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN18ClientActiveObject7m_typesE, i64 8), align 8, !tbaa !23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN18ClientActiveObject7m_typesE, i64 16), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN18ClientActiveObject7m_typesE, i64 32), align 8, !tbaa !114
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN18ClientActiveObject7m_typesE, i64 40), i8 0, i64 16, i1 false)
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt13unordered_mapItPFSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEP6ClientP17ClientEnvironmentESt4hashItESt8equal_toItESaISt4pairIKtSA_EEED2Ev, ptr nonnull @_ZN18ClientActiveObject7m_typesE, ptr nonnull @__dso_handle) #28 ; 0 uses
  tail call void @_ZN10GenericCAOC2EP6ClientP17ClientEnvironment(ptr noundef nonnull align 8 dereferenceable(1076) @_ZL16proto_GenericCAO, ptr noundef null, ptr noundef null)
  %i.b = tail call i32 @__cxa_atexit(ptr nonnull @_ZN10GenericCAOD2Ev, ptr nonnull @_ZL16proto_GenericCAO, ptr nonnull @__dso_handle) #28 ; 0 uses
  ret void
}

declare extern_weak void @_ZTH11errorstream() #5

declare extern_weak void @_ZTH13warningstream() #5

declare extern_weak void @_ZTH10infostream() #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.sincos.f64(double) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #19

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree noreturn }
attributes #15 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #23 = { cold mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { cold noreturn }
attributes #25 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #27 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nounwind }
attributes #29 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #35 = { builtin nounwind }
attributes #36 = { noreturn }
attributes #37 = { builtin allocsize(0) }
attributes #38 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !16, i64 16}
!10 = !{!"_ZTSSt10_HashtableItSt4pairIKtPFSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEP6ClientP17ClientEnvironmentEESaISD_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb0ELb0ELb1EEEE", !11, i64 0, !14, i64 8, !15, i64 16, !14, i64 24, !17, i64 32, !16, i64 48}
!11 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !12, i64 0}
!12 = !{!"any p2 pointer", !13, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"long", !7, i64 0}
!15 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !16, i64 0}
!16 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !13, i64 0}
!17 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !18, i64 0, !14, i64 8}
!18 = !{!"float", !7, i64 0}
!19 = !{!15, !16, i64 0}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!10, !11, i64 0}
!23 = !{!10, !14, i64 8}
!24 = !{!25, !18, i64 16}
!25 = !{!"_ZTS16SmoothTranslatorIfE", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !18, i64 16, !26, i64 20}
!26 = !{!"bool", !7, i64 0}
!27 = !{!25, !18, i64 8}
!28 = !{!25, !18, i64 0}
!29 = !{!25, !18, i64 12}
!30 = !{!25, !26, i64 20}
!31 = !{i8 0, i8 2}
!32 = !{}
!33 = !{!18, !18, i64 0}
!34 = !{!35, !18, i64 40}
!35 = !{!"_ZTS16SmoothTranslatorIN4core8vector3dIfEEE", !36, i64 0, !36, i64 12, !36, i64 24, !18, i64 36, !18, i64 40, !26, i64 44}
!36 = !{!"_ZTSN4core8vector3dIfEE", !18, i64 0, !18, i64 4, !18, i64 8}
!37 = !{!35, !18, i64 24}
!38 = !{!35, !18, i64 0}
!39 = !{!35, !18, i64 36}
!40 = !{!35, !26, i64 44}
!41 = !{!42, !42, i64 0}
!42 = !{!"vtable pointer", !8, i64 0}
!43 = !{!44, !45, i64 0}
!44 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !45, i64 0}
!45 = !{!"p1 omnipotent char", !13, i64 0}
!46 = !{!47, !14, i64 8}
!47 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !44, i64 0, !14, i64 8, !7, i64 16}
!48 = !{!7, !7, i64 0}
!49 = !{!50, !26, i64 64}
!50 = !{!"_ZTS10GenericCAO", !51, i64 0, !47, i64 32, !26, i64 64, !26, i64 65, !56, i64 72, !82, i64 424, !54, i64 432, !67, i64 440, !83, i64 464, !84, i64 472, !85, i64 480, !86, i64 488, !87, i64 496, !88, i64 504, !89, i64 512, !26, i64 520, !69, i64 524, !26, i64 528, !90, i64 536, !95, i64 560, !36, i64 564, !36, i64 576, !36, i64 588, !36, i64 600, !53, i64 612, !35, i64 616, !96, i64 664, !97, i64 712, !74, i64 720, !26, i64 724, !26, i64 725, !26, i64 726, !97, i64 728, !18, i64 736, !18, i64 740, !6, i64 744, !6, i64 748, !18, i64 752, !18, i64 756, !98, i64 760, !53, i64 816, !100, i64 824, !47, i64 880, !36, i64 912, !36, i64 924, !26, i64 936, !26, i64 937, !102, i64 944, !18, i64 1000, !47, i64 1008, !47, i64 1040, !18, i64 1072}
!51 = !{!"_ZTS18ClientActiveObject", !52, i64 0, !54, i64 16, !55, i64 24}
!52 = !{!"_ZTS12ActiveObject", !53, i64 8}
!53 = !{!"short", !7, i64 0}
!54 = !{!"p1 _ZTS6Client", !13, i64 0}
!55 = !{!"p1 _ZTS17ClientEnvironment", !13, i64 0}
!56 = !{!"_ZTS16ObjectProperties", !57, i64 0, !62, i64 24, !67, i64 48, !67, i64 72, !68, i64 96, !47, i64 104, !47, i64 136, !47, i64 168, !47, i64 200, !47, i64 232, !36, i64 264, !69, i64 276, !70, i64 280, !74, i64 288, !74, i64 292, !18, i64 296, !18, i64 300, !18, i64 304, !18, i64 308, !18, i64 312, !18, i64 316, !75, i64 320, !79, i64 328, !53, i64 332, !53, i64 334, !7, i64 336, !80, i64 337, !26, i64 338, !26, i64 339, !26, i64 340, !26, i64 341, !26, i64 342, !26, i64 343, !26, i64 344, !26, i64 345, !26, i64 346, !26, i64 347, !26, i64 348, !26, i64 349, !81, i64 350}
!57 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !58, i64 0}
!58 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !59, i64 0}
!59 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !60, i64 0}
!60 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !61, i64 0, !61, i64 8, !61, i64 16}
!61 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0}
!62 = !{!"_ZTSSt6vectorIN5video6SColorESaIS1_EE", !63, i64 0}
!63 = !{!"_ZTSSt12_Vector_baseIN5video6SColorESaIS1_EE", !64, i64 0}
!64 = !{!"_ZTSNSt12_Vector_baseIN5video6SColorESaIS1_EE12_Vector_implE", !65, i64 0}
!65 = !{!"_ZTSNSt12_Vector_baseIN5video6SColorESaIS1_EE17_Vector_impl_dataE", !66, i64 0, !66, i64 8, !66, i64 16}
!66 = !{!"p1 _ZTSN5video6SColorE", !13, i64 0}
!67 = !{!"_ZTSN4core8aabbox3dIfEE", !36, i64 0, !36, i64 12}
!68 = !{!"_ZTS12ObjectVisual", !7, i64 0}
!69 = !{!"_ZTSN5video6SColorE", !6, i64 0}
!70 = !{!"_ZTSSt8optionalIN5video6SColorEE", !71, i64 0}
!71 = !{!"_ZTSSt14_Optional_baseIN5video6SColorELb1ELb1EE", !72, i64 0}
!72 = !{!"_ZTSSt17_Optional_payloadIN5video6SColorELb1ELb1ELb1EE", !73, i64 0}
!73 = !{!"_ZTSSt22_Optional_payload_baseIN5video6SColorEE", !7, i64 0, !26, i64 4}
!74 = !{!"_ZTSN4core8vector2dIsEE", !53, i64 0, !53, i64 2}
!75 = !{!"_ZTSSt8optionalIjE", !76, i64 0}
!76 = !{!"_ZTSSt14_Optional_baseIjLb1ELb1EE", !77, i64 0}
!77 = !{!"_ZTSSt17_Optional_payloadIjLb1ELb1ELb1EE", !78, i64 0}
!78 = !{!"_ZTSSt22_Optional_payload_baseIjE", !7, i64 0, !26, i64 4}
!79 = !{!"_ZTS7MapNode", !53, i64 0, !7, i64 2, !7, i64 3}
!80 = !{!"_ZTS16PointabilityType", !7, i64 0}
!81 = !{!"_ZTS10StepUpMode", !7, i64 0}
!82 = !{!"p1 _ZTSN5scene13ISceneManagerE", !13, i64 0}
!83 = !{!"p1 _ZTSN5scene14IMeshSceneNodeE", !13, i64 0}
!84 = !{!"p1 _ZTSN5scene21AnimatedMeshSceneNodeE", !13, i64 0}
!85 = !{!"p1 _ZTS18WieldMeshSceneNode", !13, i64 0}
!86 = !{!"p1 _ZTSN5scene19IBillboardSceneNodeE", !13, i64 0}
!87 = !{!"p1 _ZTSN5scene29IDummyTransformationSceneNodeE", !13, i64 0}
!88 = !{!"p1 _ZTS7Nametag", !13, i64 0}
!89 = !{!"p1 _ZTS13MinimapMarker", !13, i64 0}
!90 = !{!"_ZTSSt6vectorI17MeshAnimationInfoSaIS0_EE", !91, i64 0}
!91 = !{!"_ZTSSt12_Vector_baseI17MeshAnimationInfoSaIS0_EE", !92, i64 0}
!92 = !{!"_ZTSNSt12_Vector_baseI17MeshAnimationInfoSaIS0_EE12_Vector_implE", !93, i64 0}
!93 = !{!"_ZTSNSt12_Vector_baseI17MeshAnimationInfoSaIS0_EE17_Vector_impl_dataE", !94, i64 0, !94, i64 8, !94, i64 16}
!94 = !{!"p1 _ZTS17MeshAnimationInfo", !13, i64 0}
!95 = !{!"_ZTSN5video15E_MATERIAL_TYPEE", !7, i64 0}
!96 = !{!"_ZTS26SmoothTranslatorWrappedv3f", !35, i64 0}
!97 = !{!"_ZTSN4core8vector2dIfEE", !18, i64 0, !18, i64 4}
!98 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12BoneOverrideSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEE", !99, i64 0}
!99 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12BoneOverrideESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE", !11, i64 0, !14, i64 8, !15, i64 16, !14, i64 24, !17, i64 32, !16, i64 48}
!100 = !{!"_ZTSSt13unordered_setItSt4hashItESt8equal_toItESaItEE", !101, i64 0}
!101 = !{!"_ZTSSt10_HashtableIttSaItENSt8__detail9_IdentityESt8equal_toItESt4hashItENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE", !11, i64 0, !14, i64 8, !15, i64 16, !14, i64 24, !17, i64 32, !16, i64 48}
!102 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE", !103, i64 0}
!103 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !11, i64 0, !14, i64 8, !15, i64 16, !14, i64 24, !17, i64 32, !16, i64 48}
!104 = !{!50, !26, i64 65}
!105 = !{!69, !6, i64 0}
!106 = !{!50, !26, i64 528}
!107 = !{!50, !95, i64 560}
!108 = !{!50, !53, i64 612}
!109 = !{!50, !26, i64 726}
!110 = !{!50, !6, i64 744}
!111 = !{!50, !6, i64 748}
!112 = !{!99, !11, i64 0}
!113 = !{!99, !14, i64 8}
!114 = !{!17, !18, i64 0}
!115 = !{!101, !11, i64 0}
!116 = !{!101, !14, i64 8}
!117 = !{!103, !11, i64 0}
!118 = !{!103, !14, i64 8}
!119 = !{!50, !18, i64 1000}
!120 = !{!50, !18, i64 1072}
!121 = !{!47, !45, i64 0}
!122 = !{!50, !54, i64 432}
!123 = !{!93, !94, i64 0}
!124 = !{!93, !94, i64 16}
!125 = !{!14, !14, i64 0}
!126 = !{!127}
!127 = distinct !{!127, !128, !"_ZSt11make_uniqueI10GenericCAOJRP6ClientRP17ClientEnvironmentEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!128 = distinct !{!128, !"_ZSt11make_uniqueI10GenericCAOJRP6ClientRP17ClientEnvironmentEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!129 = distinct !{null}
!130 = !{!131, !132, i64 0}
!131 = !{!"_ZTSSt10_Head_baseILm0EP18ClientActiveObjectLb0EE", !132, i64 0}
!132 = !{!"p1 _ZTS18ClientActiveObject", !13, i64 0}
!133 = !{!103, !16, i64 16}
!134 = distinct !{!134, !21}
!135 = !{!101, !16, i64 16}
!136 = distinct !{!136, !21}
!137 = !{!99, !16, i64 16}
!138 = distinct !{!138, !21}
!139 = !{!65, !66, i64 0}
!140 = !{!65, !66, i64 16}
!141 = !{!60, !61, i64 0}
!142 = !{!60, !61, i64 8}
!143 = distinct !{!143, !21}
!144 = !{!60, !61, i64 16}
end_hunk_2
