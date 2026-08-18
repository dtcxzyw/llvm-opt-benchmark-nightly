inline.NumInlined: 1116
inline.NumDeleted: 295
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK11btTransform7inverseEv:bb.a
  store float %i.h, ptr %.sroa.23.32..sroa_idx, align 4
  %.sroa.25.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float 0.000000e+00, ptr %.sroa.25.32..sroa_idx, align 4, !tbaa !62
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x float> %i.ac, ptr %i.ao, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i3, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !62
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, <2 x float> } @_ZNK11btTransformmlERK9btVector3(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load float, ptr %1, align 4, !tbaa !74   ; 2 uses
  %i.d = load float, ptr %0, align 4, !tbaa !74
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load float, ptr %i.e, align 4, !tbaa !74 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load float, ptr %i.g, align 4, !tbaa !74
  %i.i = fmul float %i.f, %i.h
  %i.j = tail call float @llvm.fmuladd.f32(float %i.c, float %i.d, float %i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load float, ptr %i.k, align 4, !tbaa !74 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load float, ptr %i.m, align 4, !tbaa !74
  %i.o = tail call noundef float @llvm.fmuladd.f32(float %i.l, float %i.n, float %i.j)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load <4 x float>, ptr %i.p, align 4
  %i.r = shufflevector <4 x float> %i.q, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load float, ptr %i.s, align 4, !tbaa !74
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load float, ptr %i.u, align 4, !tbaa !74
  %i.w = fadd float %i.o, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.y = load <2 x float>, ptr %i.a, align 4, !tbaa !74 ; 2 uses
  %i.z = load <2 x float>, ptr %i.b, align 4, !tbaa !74 ; 2 uses
  %i.aa = insertelement <2 x float> poison, float %i.f, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ac = shufflevector <2 x float> %i.y, <2 x float> %i.z, <2 x i32> <i32 1, i32 3>
  %i.ad = fmul <2 x float> %i.ab, %i.ac
  %i.ae = insertelement <2 x float> poison, float %i.c, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ag = shufflevector <2 x float> %i.y, <2 x float> %i.z, <2 x i32> <i32 0, i32 2>
  %i.ah = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.af, <2 x float> %i.ag, <2 x float> %i.ad)
  %i.ai = insertelement <2 x float> poison, float %i.l, i64 0
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ak = insertelement <2 x float> %i.r, float %i.t, i64 1
  %i.al = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aj, <2 x float> %i.ak, <2 x float> %i.ah)
  %i.am = load <2 x float>, ptr %i.x, align 4, !tbaa !74
  %i.an = fadd <2 x float> %i.al, %i.am           ; 2 uses
  %.sroa.0.0.vec.insert.i2.i = insertelement <2 x float> poison, float %i.w, i64 0
  %i.ao = shufflevector <2 x float> %.sroa.0.0.vec.insert.i2.i, <2 x float> %i.an, <2 x i32> <i32 0, i32 2>
  %i.ap = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.an, <2 x i32> <i32 3, i32 1>
  %.fca.0.insert.i5.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.ao, 0
  %.fca.1.insert.i6.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i5.i, <2 x float> %i.ap, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i6.i
}

declare void @_ZN22btBvhTriangleMeshShape14performRaycastEP18btTriangleCallbackRK9btVector3S4_(ptr noundef nonnull align 8 dereferenceable(109), ptr noundef, ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @_ZNK25btHeightfieldTerrainShape14performRaycastEP18btTriangleCallbackRK9btVector3S4_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef, ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN6btDbvt7rayTestEPK10btDbvtNodeRK9btVector3S5_RNS_8ICollideE(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.btAlignedObjectArray.27, align 8 ; 8 uses
  %i.a = alloca [1024 x i8], align 16             ; 7 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.q, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load float, ptr %i.b, align 4, !tbaa !74
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load float, ptr %i.d, align 4, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i8 0, ptr %i.f, align 8, !tbaa !166
  store ptr %i.a, ptr %i.g, align 8, !tbaa !170
  store i32 128, ptr %i.h, align 4, !tbaa !171
  store i32 128, ptr %i.i, align 8, !tbaa !172
  store ptr %0, ptr %i.a, align 16, !tbaa !173
  %i.j = fsub float %i.c, %i.e                    ; 4 uses
  %i.k = load <2 x float>, ptr %2, align 4, !tbaa !74
  %i.l = load <2 x float>, ptr %1, align 4, !tbaa !74
  %i.m = fsub <2 x float> %i.k, %i.l              ; 5 uses
  %foldExtExtBinop129 = fmul <2 x float> %i.m, %i.m
  %i.n = extractelement <2 x float> %foldExtExtBinop129, i64 1
  %i.o = extractelement <2 x float> %i.m, i64 0   ; 3 uses
  %i.p = tail call float @llvm.fmuladd.f32(float %i.o, float %i.o, float %i.n)
  %i.q = tail call noundef float @llvm.fmuladd.f32(float %i.j, float %i.j, float %i.p)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.q)
  %i.r = fdiv float 1.000000e+00, %sqrt.i.i       ; 2 uses
  %i.s = insertelement <2 x float> poison, float %i.r, i64 0
  %i.t = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> zeroinitializer
  %i.u = fmul <2 x float> %i.m, %i.t              ; 4 uses
  %i.v = fmul float %i.j, %i.r                    ; 3 uses
  %i.w = fcmp oeq <2 x float> %i.u, zeroinitializer
  %i.x = fdiv <2 x float> splat (float 1.000000e+00), %i.u
  %i.y = select <2 x i1> %i.w, <2 x float> splat (float f0x5D5E0B6B), <2 x float> %i.x ; 3 uses
  %i.z = fcmp oeq float %i.v, 0.000000e+00
  %i.aa = fdiv float 1.000000e+00, %i.v
  %i.ab = select i1 %i.z, float f0x5D5E0B6B, float %i.aa ; 3 uses
  %i.ac = fcmp uge <2 x float> %i.y, zeroinitializer ; 2 uses
  %i.ad = fcmp uge float %i.ab, 0.000000e+00      ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %i.m, %i.u
  %i.ae = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.af = extractelement <2 x float> %i.u, i64 0
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.af, float %i.o, float %i.ae)
  %i.ah = tail call noundef float @llvm.fmuladd.f32(float %i.v, float %i.j, float %i.ag)
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread
  %i.ai = phi ptr [ %i.eg, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread ], [ %i.a, %.preheader ] ; 7 uses
  %.old = phi i8 [ %i.eh, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread ], [ 0, %.preheader ] ; 9 uses
  %i.aj = phi i32 [ %i.ei, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread ], [ 128, %.preheader ] ; 8 uses
  %.pre.i = phi i32 [ %i.ej, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread ], [ 128, %.preheader ] ; 11 uses
  %i.ak = phi ptr [ %i.ek, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread ], [ %i.a, %.preheader ] ; 14 uses
  %.028 = phi i32 [ %.129, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread ], [ 1, %.preheader ] ; 3 uses
  %.026 = phi i32 [ %.2, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread ], [ 126, %.preheader ] ; 6 uses
  %i.al = ptrtoaddr ptr %i.ak to i64
  %i.am = add nsw i32 %.028, -1                   ; 6 uses
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !173 ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load <2 x float>, ptr %i.ap, align 4    ; 2 uses
  %i.as = load <2 x float>, ptr %i.aq, align 4    ; 2 uses
  %i.at = shufflevector <2 x float> %i.as, <2 x float> %i.ar, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.au = shufflevector <2 x float> %i.ar, <2 x float> %i.as, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.av = select <2 x i1> %i.ac, <2 x float> %i.at, <2 x float> %i.au
  %i.aw = load <2 x float>, ptr %1, align 4, !tbaa !74 ; 2 uses
  %i.ax = fsub <2 x float> %i.av, %i.aw
  %i.ay = fmul <2 x float> %i.y, %i.ax            ; 3 uses
  %i.az = select <2 x i1> %i.ac, <2 x float> %i.au, <2 x float> %i.at
  %i.ba = fsub <2 x float> %i.az, %i.aw
  %i.bb = fmul <2 x float> %i.y, %i.ba            ; 3 uses
  %i.bc = extractelement <2 x float> %i.bb, i64 0 ; 2 uses
  %i.bd = extractelement <2 x float> %i.bb, i64 1 ; 2 uses
  %i.be = fcmp ogt float %i.bc, %i.bd
  %i.bf = extractelement <2 x float> %i.ay, i64 0 ; 2 uses
  %i.bg = extractelement <2 x float> %i.ay, i64 1 ; 2 uses
  %i.bh = fcmp ogt float %i.bg, %i.bf
  %or.cond.i = select i1 %i.be, i1 true, i1 %i.bh
  br i1 %or.cond.i, label %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bi = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.15.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %.sroa.15.16.copyload = load float, ptr %.sroa.15.16..sroa_idx, align 4 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 4 ; 2 uses
  %i.bj = fcmp olt <2 x float> %i.bb, %i.bi       ; 2 uses
  %i.bk = extractelement <2 x i1> %i.bj, i64 0
  %i.bl = select i1 %i.bk, float %i.bg, float %i.bc ; 3 uses
  %i.bm = extractelement <2 x i1> %i.bj, i64 1
  %.0.i = select i1 %i.bm, float %i.bd, float %i.bf ; 3 uses
  %.sroa.speculated100 = select i1 %i.ad, float %.sroa.8.0.copyload, float %.sroa.15.16.copyload
  %i.bn = load float, ptr %i.d, align 4, !tbaa !74 ; 2 uses
  %i.bo = fsub float %.sroa.speculated100, %i.bn
  %i.bp = fmul float %i.ab, %i.bo                 ; 3 uses
  %.sroa.speculated = select i1 %i.ad, float %.sroa.15.16.copyload, float %.sroa.8.0.copyload
  %i.bq = fsub float %.sroa.speculated, %i.bn
  %i.br = fmul float %i.ab, %i.bq                 ; 3 uses
  %i.bs = fcmp ogt float %i.bl, %i.br
  %i.bt = fcmp ogt float %i.bp, %.0.i
  %or.cond60.i = select i1 %i.bs, i1 true, i1 %i.bt
  br i1 %or.cond60.i, label %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread, label %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit

_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit:    ; preds = %bb.c
  %i.bu = fcmp ogt float %i.bp, %i.bl
  %i.bv = select i1 %i.bu, float %i.bp, float %i.bl
  %i.bw = fcmp olt float %i.br, %.0.i
  %.1.i = select i1 %i.bw, float %i.br, float %.0.i
  %i.bx = fcmp olt float %i.bv, %i.ah
  %i.by = fcmp ogt float %.1.i, 0.000000e+00
  %i.bz = select i1 %i.bx, i1 %i.by, i1 false
  br i1 %i.bz, label %bb.d, label %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread

bb.d:                                             ; preds = %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ap, i64 48 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !62
  %.not80 = icmp eq ptr %i.cb, null
  br i1 %.not80, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cc = icmp sgt i32 %i.am, %.026
  br i1 %i.cc, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.cd = shl nsw i32 %.pre.i, 1                  ; 9 uses
  %i.ce = icmp sgt i32 %i.cd, %.pre.i
  br i1 %i.ce, label %5, label %.loopexit

5:                                                ; preds = %bb.f
  %6 = icmp slt i32 %i.aj, %i.cd
  br i1 %6, label %bb.g, label %..lr.ph.i_crit_edge

..lr.ph.i_crit_edge:                              ; preds = %5
  %.pre = sext i32 %i.cd to i64
  %.pre113 = shl nsw i64 %.pre, 3
  br label %.lr.ph.i

bb.g:                                             ; preds = %5
  %7 = zext nneg i32 %i.cd to i64
  %8 = shl nuw nsw i64 %7, 3                      ; 2 uses
  %i.cf = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %8, i32 noundef 16)
          to label %.noexc41 unwind label %bb.j   ; 10 uses

.noexc41:                                         ; preds = %bb.g
  %i.cg = icmp sgt i32 %.pre.i, 0
  br i1 %i.cg, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc41
  %i.ch = ptrtoaddr ptr %i.cf to i64
  %wide.trip.count.i.i.i = zext nneg i32 %.pre.i to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %.pre.i, 4
  %i.ci = sub i64 %i.al, %i.ch
  %diff.check = icmp ugt i64 %i.ci, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %index ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %index ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %wide.load = load <2 x ptr>, ptr %i.ck, align 8, !tbaa !173
  %wide.load126 = load <2 x ptr>, ptr %i.cl, align 8, !tbaa !173
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store <2 x ptr> %wide.load, ptr %i.cj, align 8, !tbaa !173
  store <2 x ptr> %wide.load126, ptr %i.cm, align 8, !tbaa !173
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !174

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.i.i.i.prol
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.i.i.i.prol
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !173
  store ptr %i.cq, ptr %i.co, align 8, !tbaa !173
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !175

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.cr = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.cs = icmp ugt i64 %i.cr, -4
  br i1 %i.cs, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.i.i.i
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.i.i.i
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !173
  store ptr %i.cv, ptr %i.ct, align 8, !tbaa !173
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next.i.i.i
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.next.i.i.i
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !173
  store ptr %i.cy, ptr %i.cw, align 8, !tbaa !173
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next.i.i.i.1
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.next.i.i.i.1
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !173
  store ptr %i.db, ptr %i.cz, align 8, !tbaa !173
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next.i.i.i.2
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.next.i.i.i.2
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !173
  store ptr %i.de, ptr %i.dc, align 8, !tbaa !173
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i, label %scalar.ph, !llvm.loop !176

_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i.i: ; preds = %.noexc41
  %i.df = trunc nuw i8 %.old to i1
  br i1 %i.df, label %bb.h, label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i

_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.old77 = trunc nuw i8 %.old to i1
  br i1 %.old77, label %bb.h, label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i

bb.h:                                             ; preds = %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i.i, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ak)
          to label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i unwind label %bb.j

_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i: ; preds = %bb.h, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i.i
  store i8 1, ptr %i.f, align 8, !tbaa !166
  store ptr %i.cf, ptr %i.g, align 8, !tbaa !170
  store i32 %i.cd, ptr %i.i, align 8, !tbaa !172
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %..lr.ph.i_crit_edge, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i
  %.pre-phi = phi i64 [ %.pre113, %..lr.ph.i_crit_edge ], [ %8, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i ]
  %i.dg = phi ptr [ %i.ai, %..lr.ph.i_crit_edge ], [ %i.cf, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i ]
  %i.dh = phi ptr [ %i.ak, %..lr.ph.i_crit_edge ], [ %i.cf, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i ]
  %i.di = phi i8 [ %.old, %..lr.ph.i_crit_edge ], [ 1, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i ]
  %i.dj = phi i32 [ %i.aj, %..lr.ph.i_crit_edge ], [ %i.cd, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i ]
  %9 = sext i32 %.pre.i to i64
  %i.dk = shl nsw i64 %9, 3                       ; 2 uses
  %scevgep = getelementptr i8, ptr %i.dh, i64 %i.dk
  %i.dl = sub nsw i64 %.pre-phi, %i.dk
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.dl, i1 false), !tbaa !173
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i, %bb.f
  %i.dm = phi ptr [ %i.dg, %.lr.ph.i ], [ %i.ai, %bb.f ]
  %i.dn = phi i8 [ %i.di, %.lr.ph.i ], [ %.old, %bb.f ]
  %i.do = phi i32 [ %i.dj, %.lr.ph.i ], [ %i.aj, %bb.f ]
  store i32 %i.cd, ptr %i.h, align 4, !tbaa !171
  %i.dp = add nsw i32 %i.cd, -2
  br label %bb.k

bb.i:                                             ; preds = %bb.l
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.k:                                             ; preds = %.loopexit, %bb.e
  %i.ds = phi ptr [ %i.dm, %.loopexit ], [ %i.ai, %bb.e ] ; 4 uses
  %i.dt = phi i8 [ %i.dn, %.loopexit ], [ %.old, %bb.e ]
  %i.du = phi i32 [ %i.do, %.loopexit ], [ %i.aj, %bb.e ]
  %i.dv = phi i32 [ %i.cd, %.loopexit ], [ %.pre.i, %bb.e ]
  %.127 = phi i32 [ %i.dp, %.loopexit ], [ %.026, %bb.e ]
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !62
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.an
  store ptr %i.dx, ptr %i.dy, align 8, !tbaa !173
  %i.dz = load ptr, ptr %i.ca, align 8, !tbaa !62
  %i.ea = add nsw i32 %.028, 1
  %i.eb = sext i32 %.028 to i64
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.eb
  store ptr %i.dz, ptr %i.ec, align 8, !tbaa !173
  br label %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread

bb.l:                                             ; preds = %bb.d
  %i.ed = load ptr, ptr %3, align 8, !tbaa !9
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8
  invoke void %i.ef(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.ap)
          to label %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread unwind label %bb.i

_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread: ; preds = %bb.c, %bb.b, %bb.k, %bb.l, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit
  %i.eg = phi ptr [ %i.ds, %bb.k ], [ %i.ai, %bb.l ], [ %i.ai, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit ], [ %i.ai, %bb.b ], [ %i.ai, %bb.c ] ; 3 uses
  %i.eh = phi i8 [ %i.dt, %bb.k ], [ %.old, %bb.l ], [ %.old, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit ], [ %.old, %bb.b ], [ %.old, %bb.c ] ; 2 uses
  %i.ei = phi i32 [ %i.du, %bb.k ], [ %i.aj, %bb.l ], [ %i.aj, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit ], [ %i.aj, %bb.b ], [ %i.aj, %bb.c ]
  %i.ej = phi i32 [ %i.dv, %bb.k ], [ %.pre.i, %bb.l ], [ %.pre.i, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit ], [ %.pre.i, %bb.b ], [ %.pre.i, %bb.c ]
  %i.ek = phi ptr [ %i.ds, %bb.k ], [ %i.ak, %bb.l ], [ %i.ak, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit ], [ %i.ak, %bb.b ], [ %i.ak, %bb.c ]
  %.129 = phi i32 [ %i.ea, %bb.k ], [ %i.am, %bb.l ], [ %i.am, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit ], [ %i.am, %bb.b ], [ %i.am, %bb.c ] ; 2 uses
  %.2 = phi i32 [ %.127, %bb.k ], [ %.026, %bb.l ], [ %.026, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit ], [ %.026, %bb.b ], [ %.026, %bb.c ]
  %.not34 = icmp eq i32 %.129, 0
  br i1 %.not34, label %bb.m, label %bb.b, !llvm.loop !177

bb.m:                                             ; preds = %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %.not.i.i.i43 = icmp ne ptr %i.eg, null
  %i.el = trunc nuw i8 %i.eh to i1
  %or.cond.i.i44 = select i1 %.not.i.i.i43, i1 %i.el, i1 false
  br i1 %or.cond.i.i44, label %bb.n, label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit

bb.n:                                             ; preds = %bb.m
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.eg)
          to label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.em = landingpad { ptr, i32 }
          catch ptr null
  %i.en = extractvalue { ptr, i32 } %i.em, 0
  call void @__clang_call_terminate(ptr %i.en) #20
  unreachable

_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.q

bb.p:                                             ; preds = %bb.i, %bb.j
  %.pn = phi { ptr, i32 } [ %i.dr, %bb.j ], [ %i.dq, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %.pn

bb.q:                                             ; preds = %_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZZN16btCollisionWorld21rayTestSingleInternalERK11btTransformS2_PK24btCollisionObjectWrapperRNS_17RayResultCallbackEEN9RayTester11ProcessLeafEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i32 noundef %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.btTransform, align 16        ; 8 uses
  %3 = alloca %struct.btCollisionObjectWrapper, align 8 ; 10 uses
  %4 = alloca %struct.LocalInfoAdder2, align 8    ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !144
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !178
  %i.e = sext i32 %1 to i64
  %i.f = getelementptr inbounds [88 x i8], ptr %i.d, i64 %i.e ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !179
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !181, !nonnull !73, !align !91 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182)
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.y = load float, ptr %i.x, align 4, !tbaa !74, !noalias !185 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.aa = load float, ptr %i.z, align 8, !tbaa !74, !noalias !182 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !74, !noalias !182 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.ae = load float, ptr %i.ad, align 8, !tbaa !74, !noalias !182 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !74, !noalias !182
  %i.ai = load <2 x float>, ptr %i.j, align 4, !tbaa !74, !noalias !185 ; 4 uses
  %i.aj = load <2 x float>, ptr %i.f, align 8, !tbaa !74, !noalias !185 ; 2 uses
  %i.ak = load <2 x float>, ptr %i.k, align 8, !tbaa !74, !noalias !185 ; 3 uses
  %i.al = load <2 x float>, ptr %i.m, align 8, !tbaa !74, !noalias !185 ; 2 uses
  %i.am = shufflevector <2 x float> %i.ak, <2 x float> %i.ai, <4 x i32> <i32 0, i32 3, i32 3, i32 poison>
  %i.an = insertelement <4 x float> %i.am, float 0.000000e+00, i64 3
  %i.ao = shufflevector <2 x float> %i.ai, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ap = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.ao, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.aq = shufflevector <2 x float> %i.ak, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ar = shufflevector <4 x float> %i.ap, <4 x float> %i.aq, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.as = shufflevector <2 x float> %i.aj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.at = insertelement <4 x float> %i.as, float 0.000000e+00, i64 3
  %i.au = shufflevector <2 x float> %i.ai, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.av = shufflevector <2 x float> %i.al, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aw = insertelement <4 x float> %i.av, float 0.000000e+00, i64 3
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ay = load <2 x float>, ptr %i.t, align 4, !tbaa !74, !noalias !185 ; 3 uses
  %i.az = load <2 x float>, ptr %i.o, align 4, !tbaa !74, !noalias !185 ; 2 uses
  %i.ba = load float, ptr %i.r, align 8, !tbaa !74, !noalias !185
  %i.bb = load <2 x float>, ptr %i.n, align 4, !tbaa !74, !noalias !185 ; 2 uses
  %i.bc = load float, ptr %i.q, align 8, !tbaa !74, !noalias !185
  %i.bd = load <2 x float>, ptr %i.p, align 4, !tbaa !74, !noalias !185 ; 2 uses
  %i.be = load float, ptr %i.s, align 8, !tbaa !74, !noalias !185
  %i.bf = load <2 x float>, ptr %i.af, align 4, !tbaa !74, !noalias !182
  %i.bg = load <2 x float>, ptr %i.l, align 4, !tbaa !74, !noalias !185 ; 3 uses
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bi = shufflevector <4 x float> %i.bh, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.bj = load <2 x float>, ptr %i.u, align 4, !tbaa !74, !noalias !185 ; 3 uses
  %i.bk = shufflevector <2 x float> %i.bg, <2 x float> %i.bj, <2 x i32> <i32 0, i32 2>
  %i.bl = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bn = fmul <2 x float> %i.bk, %i.bm
  %i.bo = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bq = shufflevector <2 x float> %i.ai, <2 x float> %i.ay, <2 x i32> <i32 0, i32 2>
  %i.br = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bp, <2 x float> %i.bq, <2 x float> %i.bn)
  %i.bs = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bu = shufflevector <2 x float> %i.bg, <2 x float> %i.bj, <2 x i32> <i32 1, i32 3>
  %i.bv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bt, <2 x float> %i.bu, <2 x float> %i.br)
  %i.bw = fadd <2 x float> %i.bf, %i.bv
  %i.bx = shufflevector <2 x float> %i.az, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.by = shufflevector <4 x float> %i.ar, <4 x float> %i.bx, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.bz = fmul <4 x float> %i.an, %i.by
  %i.ca = shufflevector <2 x float> %i.bb, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cb = shufflevector <4 x float> %i.at, <4 x float> %i.ca, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.cc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cb, <4 x float> %i.au, <4 x float> %i.bz)
  %i.cd = shufflevector <2 x float> %i.bd, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ce = shufflevector <4 x float> %i.aw, <4 x float> %i.cd, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.cf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ce, <4 x float> %i.bi, <4 x float> %i.cc)
  %i.cg = shufflevector <2 x float> %i.ay, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.ch = shufflevector <2 x float> %i.ak, <2 x float> %i.az, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.ci = insertelement <4 x float> %i.ch, float 1.000000e+00, i64 3 ; 2 uses
  %i.cj = fmul <4 x float> %i.cg, %i.ci
  %i.ck = shufflevector <2 x float> %i.aj, <2 x float> %i.bb, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.cl = insertelement <4 x float> %i.ck, float 0.000000e+00, i64 3 ; 2 uses
  %i.cm = shufflevector <2 x float> %i.ay, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.cn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cl, <4 x float> %i.cm, <4 x float> %i.cj)
  %i.co = shufflevector <2 x float> %i.al, <2 x float> %i.bd, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.cp = insertelement <4 x float> %i.co, float 0.000000e+00, i64 3 ; 2 uses
  %i.cq = shufflevector <2 x float> %i.bj, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cr = shufflevector <4 x float> %i.cq, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.cs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cp, <4 x float> %i.cr, <4 x float> %i.cn)
  store <4 x float> %i.cf, ptr %2, align 16, !alias.scope !182
  store <4 x float> %i.cs, ptr %i.ax, align 16, !alias.scope !182
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cu = load <2 x float>, ptr %i.v, align 4, !tbaa !74, !noalias !185 ; 4 uses
  %i.cv = load float, ptr %i.w, align 4, !tbaa !74, !noalias !185
  %i.cw = fmul float %i.cv, %i.ac
end_hunk_0
begin_hunk_1_@_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf:bb.a
  %i.ah = shufflevector <2 x float> %i.ad, <2 x float> %i.aa, <2 x i32> <i32 1, i32 2>
  %i.ai = fneg <2 x float> %i.ah                  ; 2 uses
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ak = fmul <2 x float> %i.af, %i.ai
  %i.al = extractelement <2 x float> %i.af, i64 1
  %i.am = shufflevector <2 x float> %i.af, <2 x float> %i.q, <4 x i32> <i32 poison, i32 poison, i32 1, i32 2>
  %i.an = insertelement <4 x float> %i.am, float %i.ab, i64 0
  %i.ao = insertelement <4 x float> %i.an, float %i.ac, i64 1
  %i.ap = shufflevector <2 x float> %i.r, <2 x float> %i.s, <4 x i32> <i32 1, i32 2, i32 0, i32 poison>
  %i.aq = shufflevector <4 x float> %i.ap, <4 x float> %i.aj, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ar = fmul <4 x float> %i.ao, %i.aq           ; 2 uses
  %i.as = shufflevector <2 x float> %i.aa, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.at = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.as, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.au = shufflevector <4 x float> %i.at, <4 x float> %i.v, <4 x i32> <i32 0, i32 4, i32 poison, i32 3>
  %i.av = shufflevector <2 x float> %i.af, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.aw = shufflevector <4 x float> %i.au, <4 x float> %i.av, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.ax = shufflevector <2 x float> %i.ad, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ay = shufflevector <4 x float> %i.z, <4 x float> %i.ax, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %i.az = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.ar, <4 x i32> <i32 7, i32 6, i32 5, i32 3>
  %i.ba = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aw, <4 x float> %i.ay, <4 x float> %i.az) ; 2 uses
  %i.bb = extractelement <4 x float> %i.ba, i64 0
  %i.bc = extractelement <2 x float> %i.af, i64 0
  %i.bd = fmul float %i.bc, %i.bb
  %i.be = shufflevector <2 x float> %i.ad, <2 x float> %i.aa, <2 x i32> <i32 0, i32 3>
  %i.bf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.be, <2 x float> %i.ak)
  %i.bg = extractelement <2 x float> %i.aa, i64 0
  %i.bh = extractelement <4 x float> %i.ar, i64 0
  %i.bi = tail call noundef float @llvm.fmuladd.f32(float %i.bg, float %i.ae, float %i.bh) ; 2 uses
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.t, float %i.bi, float %i.bd)
  %i.bk = fneg float %i.u
  %i.bl = shufflevector <2 x float> %i.q, <2 x float> %i.s, <4 x i32> <i32 1, i32 2, i32 3, i32 poison> ; 2 uses
  %i.bm = insertelement <4 x float> %i.bl, float 0.000000e+00, i64 3
  %i.bn = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.bk, i64 2
  %i.bo = shufflevector <2 x float> %i.r, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bp = shufflevector <4 x float> %i.bo, <4 x float> %i.bn, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bq = fmul <4 x float> %i.bm, %i.bp
  %i.br = shufflevector <4 x float> %i.ay, <4 x float> %i.bl, <4 x i32> <i32 2, i32 6, i32 5, i32 poison>
  %i.bs = insertelement <4 x float> %i.br, float 0.000000e+00, i64 3
  %i.bt = shufflevector <2 x float> %i.p, <2 x float> %i.q, <4 x i32> <i32 1, i32 0, i32 3, i32 poison>
  %i.bu = insertelement <4 x float> %i.bt, float -0.000000e+00, i64 3
  %i.bv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bs, <4 x float> %i.bu, <4 x float> %i.bq) ; 2 uses
  %i.bw = extractelement <4 x float> %i.bv, i64 0
  %i.bx = tail call noundef float @llvm.fmuladd.f32(float %i.al, float %i.bw, float %i.bj)
  %i.by = fdiv float 1.000000e+00, %i.bx
  %i.bz = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.bi, i64 0
  %i.ca = shufflevector <2 x float> %i.bf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cb = shufflevector <4 x float> %i.bz, <4 x float> %i.ca, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.cc = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.by, i64 0
  %i.cd = shufflevector <4 x float> %i.cc, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 3 uses
  %i.ce = fmul <4 x float> %i.cb, %i.cd           ; 2 uses
  %i.cf = fmul <4 x float> %i.ba, %i.cd           ; 2 uses
  %i.cg = fmul <4 x float> %i.bv, %i.cd           ; 2 uses
  %i.ch = load <2 x float>, ptr %1, align 4, !tbaa !74, !noalias !413 ; 2 uses
  %i.ci = shufflevector <2 x float> %i.ch, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.cj = fmul <4 x float> %i.ci, %i.cf
  %i.ck = shufflevector <2 x float> %i.ch, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.cl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ce, <4 x float> %i.ck, <4 x float> %i.cj)
  %i.cm = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.i, i64 0
  %i.cn = shufflevector <4 x float> %i.cm, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.co = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cg, <4 x float> %i.cn, <4 x float> %i.cl)
  store <4 x float> %i.co, ptr %4, align 16, !tbaa !74, !alias.scope !413
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cq = load <2 x float>, ptr %i.j, align 4, !tbaa !74, !noalias !413 ; 2 uses
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.cs = insertelement <4 x float> %i.cf, float 1.000000e+00, i64 3 ; 2 uses
  %i.ct = fmul <4 x float> %i.cr, %i.cs
  %i.cu = insertelement <4 x float> %i.ce, float 0.000000e+00, i64 3 ; 2 uses
  %i.cv = shufflevector <2 x float> %i.cq, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.cw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cu, <4 x float> %i.cv, <4 x float> %i.ct)
  %i.cx = insertelement <4 x float> %i.cg, float 0.000000e+00, i64 3 ; 2 uses
  %i.cy = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.l, i64 0
  %i.cz = shufflevector <4 x float> %i.cy, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.da = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cx, <4 x float> %i.cz, <4 x float> %i.cw)
  store <4 x float> %i.da, ptr %i.cp, align 16, !tbaa !74, !alias.scope !413
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.dc = load <2 x float>, ptr %i.m, align 4, !tbaa !74, !noalias !413 ; 2 uses
  %i.dd = shufflevector <2 x float> %i.dc, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.de = fmul <4 x float> %i.dd, %i.cs
  %i.df = shufflevector <2 x float> %i.dc, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.dg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cu, <4 x float> %i.df, <4 x float> %i.de)
  %i.dh = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.o, i64 0
  %i.di = shufflevector <4 x float> %i.dh, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cx, <4 x float> %i.di, <4 x float> %i.dg)
  store <4 x float> %i.dj, ptr %i.db, align 16, !tbaa !74, !alias.scope !413
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(48) %4, ptr noundef nonnull align 4 dereferenceable(16) %5)
  %i.dk = load float, ptr %5, align 4, !tbaa !74  ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !74 ; 3 uses
  %i.dn = fmul float %i.dm, %i.dm
  %i.do = call float @llvm.fmuladd.f32(float %i.dk, float %i.dk, float %i.dn)
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !74 ; 3 uses
  %i.dr = call float @llvm.fmuladd.f32(float %i.dq, float %i.dq, float %i.do)
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !74 ; 3 uses
  %i.du = call noundef float @llvm.fmuladd.f32(float %i.dt, float %i.dt, float %i.dr)
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.du)
  %i.dv = fdiv float 1.000000e+00, %sqrt.i.i      ; 4 uses
  %i.dw = fmul float %i.dk, %i.dv                 ; 3 uses
  %i.dx = fmul float %i.dm, %i.dv                 ; 3 uses
  %i.dy = fmul float %i.dq, %i.dv                 ; 3 uses
  %i.dz = fmul float %i.dt, %i.dv                 ; 2 uses
  %i.ea = fcmp olt float %i.dz, -1.000000e+00
  %.0.i.i = select i1 %i.ea, float -1.000000e+00, float %i.dz ; 2 uses
  %i.eb = fcmp ogt float %.0.i.i, 1.000000e+00
  %.1.i.i = select i1 %i.eb, float 1.000000e+00, float %.0.i.i
  %i.ec = call noundef float @acosf(float noundef %.1.i.i) #21
  %i.ed = fmul float %i.ec, 2.000000e+00
  store float %i.ed, ptr %3, align 4, !tbaa !74
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  store float 0.000000e+00, ptr %.sroa.616.0..sroa_idx, align 4, !tbaa !74
  %i.ee = fmul float %i.dx, %i.dx
  %i.ef = call float @llvm.fmuladd.f32(float %i.dw, float %i.dw, float %i.ee)
  %i.eg = call noundef float @llvm.fmuladd.f32(float %i.dy, float %i.dy, float %i.ef) ; 2 uses
  %i.eh = fcmp olt float %i.eg, f0x28800000
  br i1 %i.eh, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %sqrt = call float @llvm.sqrt.f32(float %i.eg)
  %i.ei = fdiv float 1.000000e+00, %sqrt          ; 3 uses
  %i.ej = fmul float %i.dw, %i.ei
  %i.ek = fmul float %i.dx, %i.ei
  %i.el = fmul float %i.dy, %i.ei
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink21 = phi float [ %i.ej, %bb.b ], [ 1.000000e+00, %bb.a ]
  %.sink20 = phi float [ %i.ek, %bb.b ], [ 0.000000e+00, %bb.a ]
  %.sink = phi float [ %i.el, %bb.b ], [ 0.000000e+00, %bb.a ]
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %.sink21, ptr %2, align 4
  store float %.sink20, ptr %.sroa.414.0..sroa_idx, align 4
  store float %.sink, ptr %.sroa.515.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 7 uses
  %i.b = load float, ptr %0, align 4, !tbaa !74   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load float, ptr %i.c, align 4, !tbaa !74 ; 3 uses
  %i.e = fadd float %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load float, ptr %i.f, align 4, !tbaa !74 ; 3 uses
  %i.h = fadd float %i.e, %i.g                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
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
  %i.q = tail call noundef float @sqrtf(float noundef %i.l) #21 ; 2 uses
  %i.r = fdiv float 5.000000e-01, %i.q
  %i.s = load float, ptr %i.n, align 4, !tbaa !74
  %i.t = load float, ptr %i.m, align 4, !tbaa !74
  %i.u = load float, ptr %i.j, align 4, !tbaa !74
  %i.v = load float, ptr %i.k, align 4, !tbaa !74
  %i.w = load float, ptr %i.o, align 4, !tbaa !74
  %i.x = load float, ptr %i.p, align 4, !tbaa !74
  %i.y = fsub float %i.v, %i.x
  %i.z = fsub float %i.w, %i.u
  %i.aa = fsub float %i.t, %i.s
  %i.ab = insertelement <4 x float> poison, float %i.r, i64 0
  %i.ac = insertelement <4 x float> %i.ab, float %i.q, i64 1
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
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
  %i.aw = load float, ptr %i.av, align 4, !tbaa !74
  %2 = sext i32 %i.aq to i64                      ; 5 uses
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %2 ; 3 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %2
  %i.az = load float, ptr %i.ay, align 4, !tbaa !74
  %i.ba = fsub float %i.aw, %i.az
  %i.bb = zext nneg i32 %i.as to i64              ; 5 uses
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bb ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.bb
  %i.be = load float, ptr %i.bd, align 4, !tbaa !74
  %i.bf = fsub float %i.ba, %i.be
  %i.bg = fadd float %i.bf, 1.000000e+00
  %i.bh = tail call noundef float @sqrtf(float noundef %i.bg) #21 ; 2 uses
  %i.bi = fmul float %i.bh, 5.000000e-01
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.at
  store float %i.bi, ptr %i.bj, align 4, !tbaa !74
  %i.bk = fdiv float 5.000000e-01, %i.bh          ; 3 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %2
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !74
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.bb
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !74
  %i.bp = fsub float %i.bm, %i.bo
  %i.bq = fmul float %i.bk, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float %i.bq, ptr %i.br, align 4, !tbaa !74
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.at
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !74
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %2
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !74
  %i.bw = fadd float %i.bt, %i.bv
  %i.bx = fmul float %i.bk, %i.bw
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %2
  store float %i.bx, ptr %i.by, align 4, !tbaa !74
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.at
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !74
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.bb
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !74
  %i.cd = fadd float %i.ca, %i.cc
  %i.ce = fmul float %i.bk, %i.cd
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bb
  store float %i.ce, ptr %i.cf, align 4, !tbaa !74
  %i.cg = load <4 x float>, ptr %i.a, align 16, !tbaa !74
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ch = phi <4 x float> [ %i.cg, %bb.c ], [ %i.ah, %bb.b ]
  store <4 x float> %i.ch, ptr %1, align 4, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @acosf(float noundef) local_unnamed_addr #14

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN21btSingleSweepCallbackD0Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 216) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN21btSingleSweepCallback7processEPK17btBroadphaseProxy(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 {
bb.a:
  %2 = alloca %struct.btCollisionObjectWrapper, align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !419, !nonnull !73, !align !189 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load float, ptr %i.c, align 8, !tbaa !198
  %i.e = fcmp une float %i.d, 0.000000e+00        ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !412    ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 192
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !46
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(20) %i.b, ptr noundef %i.h)
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !301
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 200
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !63
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !419, !nonnull !73, !align !189
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.v = load float, ptr %i.u, align 8, !tbaa !300
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr null, ptr %2, align 8, !tbaa !80
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.r, ptr %i.w, align 8, !tbaa !84
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.f, ptr %i.x, align 8, !tbaa !85
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.s, ptr %i.y, align 8, !tbaa !86
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr null, ptr %i.z, align 8, !tbaa !87
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 -1, ptr %i.aa, align 8, !tbaa !88
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 -1, ptr %i.ab, align 4, !tbaa !89
  call void @_ZN16btCollisionWorld25objectQuerySingleInternalEPK13btConvexShapeRK11btTransformS5_PK24btCollisionObjectWrapperRNS_20ConvexResultCallbackEf(ptr noundef %i.n, ptr noundef nonnull align 4 dereferenceable(64) %i.o, ptr noundef nonnull align 4 dereferenceable(64) %i.p, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(20) %i.t, float noundef %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret i1 %i.e
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN23btSingleContactCallbackD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN23btSingleContactCallback7processEPK17btBroadphaseProxy(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.btCollisionObjectWrapper, align 8 ; 12 uses
  %3 = alloca %struct.btCollisionObjectWrapper, align 8 ; 12 uses
  %4 = alloca %struct.btBridgedManifoldResult, align 8 ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !412    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !302
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !420, !nonnull !73, !align !189 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !46
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(20) %i.f, ptr noundef %i.h)
  br i1 %i.l, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !302  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 200
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !63
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr null, ptr %2, align 8, !tbaa !80
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.o, ptr %i.q, align 8, !tbaa !84
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.m, ptr %i.r, align 8, !tbaa !85
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.p, ptr %i.s, align 8, !tbaa !86
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr null, ptr %i.t, align 8, !tbaa !87
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 -1, ptr %i.u, align 8, !tbaa !88
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 -1, ptr %i.v, align 4, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !63
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %3, align 8, !tbaa !80
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.x, ptr %i.z, align 8, !tbaa !84
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.a, ptr %i.aa, align 8, !tbaa !85
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.y, ptr %i.ab, align 8, !tbaa !86
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr null, ptr %i.ac, align 8, !tbaa !87
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 -1, ptr %i.ad, align 8, !tbaa !88
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 -1, ptr %i.ae, align 4, !tbaa !89
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !305
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !21 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !9
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = call noundef ptr %i.al(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef null, i32 noundef 2) ; 6 uses
  %.not = icmp eq ptr %i.am, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.an = load ptr, ptr %i.e, align 8, !tbaa !420, !nonnull !73, !align !189
  call void @_ZN16btManifoldResultC2EPK24btCollisionObjectWrapperS2_(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull %2, ptr noundef nonnull %3)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV23btBridgedManifoldResult, i64 16), ptr %4, align 8, !tbaa !9
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !306
  %i.ap = load ptr, ptr %i.af, align 8, !tbaa !305
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.ar = load ptr, ptr %i.am, align 8, !tbaa !9
end_hunk_1
