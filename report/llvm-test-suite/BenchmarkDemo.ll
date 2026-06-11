inline.NumInlined: 797
inline.NumDeleted: 176
begin_hunk_0_@_ZN13BenchmarkDemo11createTest4Ev:bb.a
  %.sroa.6.16..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %i.bp, i64 28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx.3, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %.sroa.6.16..sroa_idx.3, align 4
  %.sroa.7.16..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %.sroa.9.32..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.16..sroa_idx.3, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %.sroa.9.32..sroa_idx.3, align 8
  %.sroa.10.32..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %i.bp, i64 52
  store i32 0, ptr %.sroa.10.32..sroa_idx.3, align 4, !tbaa !60
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  store float %i.s, ptr %i.br, align 8
  %.sroa.10.sroa.6.4..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %i.bp, i64 60
  store float %.sroa.654.059, ptr %.sroa.10.sroa.6.4..sroa_idx.3, align 4
  %.sroa.10.sroa.7.4..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %i.bp, i64 64
  store float %i.ae, ptr %.sroa.10.sroa.7.4..sroa_idx.3, align 8
  %.sroa.10.sroa.8.4..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %i.bp, i64 68
  store float 0.000000e+00, ptr %.sroa.10.sroa.8.4..sroa_idx.3, align 4, !tbaa !60
  %i.bs = load ptr, ptr %i.i, align 8, !tbaa !8   ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !12
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 136
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(228) %i.bs, ptr noundef nonnull %i.bp), !inline_history !75
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.bw = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 64
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(24) %i.a, float noundef 1.000000e+00, ptr noundef nonnull align 4 dereferenceable(16) %1), !inline_history !75
  %i.bz = call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 568, i32 noundef 16) ; 13 uses
  invoke void @_ZN11btRigidBodyC1EfP13btMotionStateP16btCollisionShapeRK9btVector3(ptr noundef nonnull align 8 dereferenceable(564) %i.bz, float noundef 1.000000e+00, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull align 4 dereferenceable(16) %1)
          to label %_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit.4 unwind label %bb.i

_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit.4: ; preds = %_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit.3
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store float 1.000000e+00, ptr %i.ca, align 8
  %.sroa.4.0..sroa_idx.4 = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  %.sroa.6.16..sroa_idx.4 = getelementptr inbounds nuw i8, ptr %i.bz, i64 28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx.4, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %.sroa.6.16..sroa_idx.4, align 4
  %.sroa.7.16..sroa_idx.4 = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %.sroa.9.32..sroa_idx.4 = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.16..sroa_idx.4, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %.sroa.9.32..sroa_idx.4, align 8
  %.sroa.10.32..sroa_idx.4 = getelementptr inbounds nuw i8, ptr %i.bz, i64 52
  store i32 0, ptr %.sroa.10.32..sroa_idx.4, align 4, !tbaa !60
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 56
  store float %i.t, ptr %i.cb, align 8
  %.sroa.10.sroa.6.4..sroa_idx.4 = getelementptr inbounds nuw i8, ptr %i.bz, i64 60
  store float %.sroa.654.059, ptr %.sroa.10.sroa.6.4..sroa_idx.4, align 4
  %.sroa.10.sroa.7.4..sroa_idx.4 = getelementptr inbounds nuw i8, ptr %i.bz, i64 64
  store float %i.ae, ptr %.sroa.10.sroa.7.4..sroa_idx.4, align 8
  %.sroa.10.sroa.8.4..sroa_idx.4 = getelementptr inbounds nuw i8, ptr %i.bz, i64 68
  store float 0.000000e+00, ptr %.sroa.10.sroa.8.4..sroa_idx.4, align 4, !tbaa !60
  %i.cc = load ptr, ptr %i.i, align 8, !tbaa !8   ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !12
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 136
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(228) %i.cc, ptr noundef nonnull %i.bz), !inline_history !75
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.cg = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 64
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(24) %i.a, float noundef 1.000000e+00, ptr noundef nonnull align 4 dereferenceable(16) %1), !inline_history !75
  %i.cj = call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 568, i32 noundef 16) ; 13 uses
  invoke void @_ZN11btRigidBodyC1EfP13btMotionStateP16btCollisionShapeRK9btVector3(ptr noundef nonnull align 8 dereferenceable(564) %i.cj, float noundef 1.000000e+00, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull align 4 dereferenceable(16) %1)
          to label %_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit.5 unwind label %bb.i

_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit.5: ; preds = %_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit.4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store float 1.000000e+00, ptr %i.ck, align 8
  %.sroa.4.0..sroa_idx.5 = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  %.sroa.6.16..sroa_idx.5 = getelementptr inbounds nuw i8, ptr %i.cj, i64 28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx.5, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %.sroa.6.16..sroa_idx.5, align 4
  %.sroa.7.16..sroa_idx.5 = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %.sroa.9.32..sroa_idx.5 = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.16..sroa_idx.5, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %.sroa.9.32..sroa_idx.5, align 8
  %.sroa.10.32..sroa_idx.5 = getelementptr inbounds nuw i8, ptr %i.cj, i64 52
  store i32 0, ptr %.sroa.10.32..sroa_idx.5, align 4, !tbaa !60
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 56
  store float %i.u, ptr %i.cl, align 8
  %.sroa.10.sroa.6.4..sroa_idx.5 = getelementptr inbounds nuw i8, ptr %i.cj, i64 60
  store float %.sroa.654.059, ptr %.sroa.10.sroa.6.4..sroa_idx.5, align 4
  %.sroa.10.sroa.7.4..sroa_idx.5 = getelementptr inbounds nuw i8, ptr %i.cj, i64 64
  store float %i.ae, ptr %.sroa.10.sroa.7.4..sroa_idx.5, align 8
  %.sroa.10.sroa.8.4..sroa_idx.5 = getelementptr inbounds nuw i8, ptr %i.cj, i64 68
  store float 0.000000e+00, ptr %.sroa.10.sroa.8.4..sroa_idx.5, align 4, !tbaa !60
  %i.cm = load ptr, ptr %i.i, align 8, !tbaa !8   ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !12
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 136
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(228) %i.cm, ptr noundef nonnull %i.cj), !inline_history !75
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.cq = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 64
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(24) %i.a, float noundef 1.000000e+00, ptr noundef nonnull align 4 dereferenceable(16) %1), !inline_history !75
  %i.ct = call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 568, i32 noundef 16) ; 13 uses
  invoke void @_ZN11btRigidBodyC1EfP13btMotionStateP16btCollisionShapeRK9btVector3(ptr noundef nonnull align 8 dereferenceable(564) %i.ct, float noundef 1.000000e+00, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull align 4 dereferenceable(16) %1)
          to label %_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit.6 unwind label %bb.i

_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit.6: ; preds = %_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit.5
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store float 1.000000e+00, ptr %i.cu, align 8
  %.sroa.4.0..sroa_idx.6 = getelementptr inbounds nuw i8, ptr %i.ct, i64 12
  %.sroa.6.16..sroa_idx.6 = getelementptr inbounds nuw i8, ptr %i.ct, i64 28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx.6, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %.sroa.6.16..sroa_idx.6, align 4
  %.sroa.7.16..sroa_idx.6 = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %.sroa.9.32..sroa_idx.6 = getelementptr inbounds nuw i8, ptr %i.ct, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.16..sroa_idx.6, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %.sroa.9.32..sroa_idx.6, align 8
  %.sroa.10.32..sroa_idx.6 = getelementptr inbounds nuw i8, ptr %i.ct, i64 52
  store i32 0, ptr %.sroa.10.32..sroa_idx.6, align 4, !tbaa !60
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 56
  store float %i.v, ptr %i.cv, align 8
  %.sroa.10.sroa.6.4..sroa_idx.6 = getelementptr inbounds nuw i8, ptr %i.ct, i64 60
  store float %.sroa.654.059, ptr %.sroa.10.sroa.6.4..sroa_idx.6, align 4
  %.sroa.10.sroa.7.4..sroa_idx.6 = getelementptr inbounds nuw i8, ptr %i.ct, i64 64
  store float %i.ae, ptr %.sroa.10.sroa.7.4..sroa_idx.6, align 8
  %.sroa.10.sroa.8.4..sroa_idx.6 = getelementptr inbounds nuw i8, ptr %i.ct, i64 68
  store float 0.000000e+00, ptr %.sroa.10.sroa.8.4..sroa_idx.6, align 4, !tbaa !60
  %i.cw = load ptr, ptr %i.i, align 8, !tbaa !8   ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !12
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 136
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(228) %i.cw, ptr noundef nonnull %i.ct), !inline_history !75
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.da = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 64
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(24) %i.a, float noundef 1.000000e+00, ptr noundef nonnull align 4 dereferenceable(16) %1), !inline_history !75
  %i.dd = call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 568, i32 noundef 16) ; 13 uses
  invoke void @_ZN11btRigidBodyC1EfP13btMotionStateP16btCollisionShapeRK9btVector3(ptr noundef nonnull align 8 dereferenceable(564) %i.dd, float noundef 1.000000e+00, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull align 4 dereferenceable(16) %1)
          to label %_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit.7 unwind label %bb.i

_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit.7: ; preds = %_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit.6
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store float 1.000000e+00, ptr %i.de, align 8
  %.sroa.4.0..sroa_idx.7 = getelementptr inbounds nuw i8, ptr %i.dd, i64 12
  %.sroa.6.16..sroa_idx.7 = getelementptr inbounds nuw i8, ptr %i.dd, i64 28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx.7, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %.sroa.6.16..sroa_idx.7, align 4
  %.sroa.7.16..sroa_idx.7 = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  %.sroa.9.32..sroa_idx.7 = getelementptr inbounds nuw i8, ptr %i.dd, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.16..sroa_idx.7, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %.sroa.9.32..sroa_idx.7, align 8
  %.sroa.10.32..sroa_idx.7 = getelementptr inbounds nuw i8, ptr %i.dd, i64 52
  store i32 0, ptr %.sroa.10.32..sroa_idx.7, align 4, !tbaa !60
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 56
  store float %i.w, ptr %i.df, align 8
  %.sroa.10.sroa.6.4..sroa_idx.7 = getelementptr inbounds nuw i8, ptr %i.dd, i64 60
  store float %.sroa.654.059, ptr %.sroa.10.sroa.6.4..sroa_idx.7, align 4
  %.sroa.10.sroa.7.4..sroa_idx.7 = getelementptr inbounds nuw i8, ptr %i.dd, i64 64
  store float %i.ae, ptr %.sroa.10.sroa.7.4..sroa_idx.7, align 8
  %.sroa.10.sroa.8.4..sroa_idx.7 = getelementptr inbounds nuw i8, ptr %i.dd, i64 68
  store float 0.000000e+00, ptr %.sroa.10.sroa.8.4..sroa_idx.7, align 4, !tbaa !60
  %i.dg = load ptr, ptr %i.i, align 8, !tbaa !8   ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !12
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 136
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(228) %i.dg, ptr noundef nonnull %i.dd), !inline_history !75
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %i.dk = add nuw nsw i32 %.03458, 1              ; 2 uses
  %exitcond66.not = icmp eq i32 %i.dk, 8
  br i1 %exitcond66.not, label %bb.g, label %bb.h

bb.k:                                             ; preds = %bb.d
  %i.dl = landingpad { ptr, i32 }
          catch ptr null
  %i.dm = extractvalue { ptr, i32 } %i.dl, 0
  tail call void @__clang_call_terminate(ptr %i.dm) #23
  unreachable
}

; Function Attrs: uwtable
define dso_local void @_ZN13BenchmarkDemo11createTest5Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.btVector3, align 4           ; 6 uses
  %2 = alloca %class.btVector3, align 4           ; 6 uses
  %3 = alloca %class.btVector3, align 4           ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr getelementptr inbounds nuw inrange(-104, 120) (i8, ptr @_ZTV10btBoxShape, i64 104), align 8
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.c
  %.0176 = phi float [ 2.000000e+00, %bb.a ], [ %i.g, %bb.c ] ; 3 uses
  %.048175 = phi float [ -2.500000e+01, %bb.a ], [ %i.f, %bb.c ] ; 3 uses
  %.050173 = phi i32 [ 0, %bb.a ], [ %i.j, %bb.c ]
  %.sroa.6129.0172 = phi float [ 2.000000e+01, %bb.a ], [ %i.i, %bb.c ] ; 2 uses
  %i.c = fadd float %.0176, 3.000000e+00          ; 2 uses
  %i.d = fadd float %.sroa.6129.0172, 2.500000e+01
  br label %bb.d

bb.b:                                             ; preds = %bb.c
  call void @_ZN13BenchmarkDemo19createLargeMeshBodyEv(ptr noundef nonnull align 8 dereferenceable(136) %0)
  ret void

bb.c:                                             ; preds = %bb.e
  %i.e = fmul float %.0176, -5.000000e-02
  %i.f = call float @llvm.fmuladd.f32(float %i.e, float 9.000000e+00, float %.048175)
  %i.g = fmul float %.0176, 1.100000e+00          ; 2 uses
  %i.h = fadd float %i.g, 3.000000e+00
  %i.i = fadd float %.sroa.6129.0172, %i.h
  %i.j = add nuw nsw i32 %.050173, 1              ; 2 uses
  %exitcond190.not = icmp eq i32 %i.j, 10
  br i1 %exitcond190.not, label %bb.b, label %.preheader

bb.d:                                             ; preds = %.preheader, %bb.e
  %.053170 = phi i32 [ 0, %.preheader ], [ %i.o, %bb.e ] ; 2 uses
  %i.k = uitofp nneg i32 %.053170 to float
  %i.l = call float @llvm.fmuladd.f32(float %i.k, float %i.c, float %.048175)
  %i.m = fmul float %i.l, 5.000000e+00
  %i.n = fadd float %i.m, 0.000000e+00
  %.sroa.3.12.vec.insert.i58 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.n, i64 0 ; 3 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.ai
  %i.o = add nuw nsw i32 %.053170, 1              ; 2 uses
  %exitcond189.not = icmp eq i32 %i.o, 10
  br i1 %exitcond189.not, label %bb.c, label %bb.d

bb.f:                                             ; preds = %bb.d, %bb.ai
  %.054168 = phi i32 [ 0, %bb.d ], [ %i.di, %bb.ai ] ; 2 uses
  %i.p = uitofp nneg i32 %.054168 to float
  %i.q = call float @llvm.fmuladd.f32(float %i.p, float %i.c, float %.048175)
  %i.r = fmul float %i.q, 5.000000e+00
  %i.s = fadd float %i.r, 0.000000e+00
  %.sroa.0.0.vec.insert.i56 = insertelement <2 x float> poison, float %i.s, i64 0
  %.sroa.0.4.vec.insert.i57 = insertelement <2 x float> %.sroa.0.0.vec.insert.i56, float %i.d, i64 1 ; 3 uses
  %i.t = call i32 @rand() #21
  %i.u = srem i32 %i.t, 9                         ; 4 uses
  switch i32 %i.u, label %bb.ai [
    i32 0, label %bb.g
    i32 1, label %bb.g
    i32 2, label %bb.g
    i32 3, label %bb.u
    i32 4, label %bb.u
    i32 5, label %bb.u
    i32 6, label %bb.ab
    i32 7, label %bb.ab
    i32 8, label %bb.ab
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f
  %i.v = add nuw nsw i32 %i.u, 1
  %i.w = uitofp nneg i32 %i.v to float
  %i.x = fmul nnan float %i.w, 5.000000e-01       ; 4 uses
  %i.y = call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 64, i32 noundef 16) ; 17 uses
  %i.z = fmul nnan float %i.x, 1.500000e+00       ; 2 uses
  invoke void @_ZN23btPolyhedralConvexShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.y)
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.g
  store ptr getelementptr inbounds nuw inrange(-16, 208) (i8, ptr @_ZTV10btBoxShape, i64 16), ptr %i.y, align 8, !tbaa !12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i32 0, ptr %i.aa, align 8, !tbaa !73
  %i.ab = invoke noundef float %i.b(ptr noundef nonnull align 8 dereferenceable(64) %i.y)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %.noexc
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !12
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = invoke noundef float %i.ae(ptr noundef nonnull align 8 dereferenceable(64) %i.y)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ag = load ptr, ptr %i.y, align 8, !tbaa !12
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 88
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = invoke noundef float %i.ai(ptr noundef nonnull align 8 dereferenceable(64) %i.y)
          to label %bb.o unwind label %bb.l

bb.j:                                             ; preds = %.noexc
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.k:                                             ; preds = %bb.h
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.pn8.i = phi { ptr, i32 } [ %i.al, %bb.k ], [ %i.ak, %bb.j ], [ %i.am, %bb.l ]
  invoke void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.y)
          to label %.body unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #23
  unreachable

bb.o:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ar = load float, ptr %i.aq, align 8, !tbaa !36
  %i.as = fmul float %i.z, %i.ar
  %i.at = load <2 x float>, ptr %i.ap, align 8, !tbaa !36
  %i.au = insertelement <2 x float> poison, float %i.z, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aw = fmul <2 x float> %i.av, %i.at
  %i.ax = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.ay = insertelement <2 x float> %i.ax, float %i.af, i64 1
  %i.az = fsub <2 x float> %i.aw, %i.ay
  %i.ba = fsub float %i.as, %i.aj
  %.sroa.3.12.vec.insert.i12.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ba, i64 0
  %i.bb = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  store <2 x float> %i.az, ptr %i.bb, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  store <2 x float> %.sroa.3.12.vec.insert.i12.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !60
  %i.bc = fcmp une float %i.x, 0.000000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  br i1 %i.bc, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bd = load ptr, ptr %i.y, align 8, !tbaa !12
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 64
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(24) %i.y, float noundef %i.x, ptr noundef nonnull align 4 dereferenceable(16) %3), !inline_history !75
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bg = call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 568, i32 noundef 16) ; 11 uses
  invoke void @_ZN11btRigidBodyC1EfP13btMotionStateP16btCollisionShapeRK9btVector3(ptr noundef nonnull align 8 dereferenceable(564) %i.bg, float noundef %i.x, ptr noundef null, ptr noundef nonnull %i.y, ptr noundef nonnull align 4 dereferenceable(16) %3)
          to label %_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bg)
          to label %_ZN17btCollisionObjectdlEPv.exit.i unwind label %bb.s

common.resume:                                    ; preds = %.body, %bb.aa, %bb.ah, %_ZN17btCollisionObjectdlEPv.exit.i71, %_ZN17btCollisionObjectdlEPv.exit.i68, %_ZN17btCollisionObjectdlEPv.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.bh, %_ZN17btCollisionObjectdlEPv.exit.i ], [ %i.ce, %_ZN17btCollisionObjectdlEPv.exit.i68 ], [ %i.cy, %_ZN17btCollisionObjectdlEPv.exit.i71 ], [ %i.cn, %bb.aa ], [ %eh.lpad-body, %.body ], [ %i.dh, %bb.ah ]
  resume { ptr, i32 } %common.resume.op

_ZN17btCollisionObjectdlEPv.exit.i:               ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %common.resume

bb.s:                                             ; preds = %bb.r
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #23
  unreachable

_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit: ; preds = %bb.q
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store float 1.000000e+00, ptr %i.bk, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  %.sroa.11.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7.0..sroa_idx, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %.sroa.11.16..sroa_idx, align 4
  %.sroa.12.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %.sroa.16.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.16..sroa_idx, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %.sroa.16.32..sroa_idx, align 8
  %.sroa.17.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 52
  store i32 0, ptr %.sroa.17.32..sroa_idx, align 4, !tbaa !60
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  store <2 x float> %.sroa.0.4.vec.insert.i57, ptr %i.bl, align 8
  %.sroa.17.sroa.11.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  store <2 x float> %.sroa.3.12.vec.insert.i58, ptr %.sroa.17.sroa.11.4..sroa_idx, align 8, !tbaa !60
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !8   ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !12
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 136
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(228) %i.bm, ptr noundef nonnull %i.bg), !inline_history !75
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.ai

bb.t:                                             ; preds = %bb.g
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.m, %bb.t
  %eh.lpad-body = phi { ptr, i32 } [ %i.bq, %bb.t ], [ %.pn8.i, %bb.m ]
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.y)
          to label %common.resume unwind label %bb.aj

bb.u:                                             ; preds = %bb.f, %bb.f, %bb.f
  %i.br = add nsw i32 %i.u, -2
  %i.bs = uitofp nneg i32 %i.br to float
  %i.bt = fmul nnan float %i.bs, 5.000000e-01     ; 4 uses
  %i.bu = call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 64, i32 noundef 16) ; 9 uses
  invoke void @_ZN21btConvexInternalShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.bu)
          to label %bb.v unwind label %bb.aa

bb.v:                                             ; preds = %bb.u
  %i.bv = fmul nnan float %i.bt, 1.500000e+00     ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTV13btSphereShape, i64 16), ptr %i.bu, align 8, !tbaa !12
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i32 8, ptr %i.bw, align 8, !tbaa !73
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  store float %i.bv, ptr %i.bx, align 8, !tbaa !36
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 56
  store float %i.bv, ptr %i.by, align 8, !tbaa !85
  %i.bz = fcmp une float %i.bt, 0.000000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br i1 %i.bz, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ca = load ptr, ptr %i.bu, align 8, !tbaa !12
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 64
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, float noundef %i.bt, ptr noundef nonnull align 4 dereferenceable(16) %2), !inline_history !75
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cd = call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 568, i32 noundef 16) ; 11 uses
  invoke void @_ZN11btRigidBodyC1EfP13btMotionStateP16btCollisionShapeRK9btVector3(ptr noundef nonnull align 8 dereferenceable(564) %i.cd, float noundef %i.bt, ptr noundef null, ptr noundef nonnull %i.bu, ptr noundef nonnull align 4 dereferenceable(16) %2)
          to label %_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit69 unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.cd)
          to label %_ZN17btCollisionObjectdlEPv.exit.i68 unwind label %bb.z

_ZN17btCollisionObjectdlEPv.exit.i68:             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %common.resume

bb.z:                                             ; preds = %bb.y
  %i.cf = landingpad { ptr, i32 }
          catch ptr null
  %i.cg = extractvalue { ptr, i32 } %i.cf, 0
  call void @__clang_call_terminate(ptr %i.cg) #23
  unreachable

_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit69: ; preds = %bb.x
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store float 1.000000e+00, ptr %i.ch, align 8
  %.sroa.7.0..sroa_idx79 = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  %.sroa.11.16..sroa_idx83 = getelementptr inbounds nuw i8, ptr %i.cd, i64 28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7.0..sroa_idx79, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %.sroa.11.16..sroa_idx83, align 4
  %.sroa.12.16..sroa_idx87 = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %.sroa.16.32..sroa_idx91 = getelementptr inbounds nuw i8, ptr %i.cd, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.16..sroa_idx87, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %.sroa.16.32..sroa_idx91, align 8
  %.sroa.17.32..sroa_idx95 = getelementptr inbounds nuw i8, ptr %i.cd, i64 52
  store i32 0, ptr %.sroa.17.32..sroa_idx95, align 4, !tbaa !60
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 56
  store <2 x float> %.sroa.0.4.vec.insert.i57, ptr %i.ci, align 8
  %.sroa.17.sroa.11.4..sroa_idx119 = getelementptr inbounds nuw i8, ptr %i.cd, i64 64
  store <2 x float> %.sroa.3.12.vec.insert.i58, ptr %.sroa.17.sroa.11.4..sroa_idx119, align 8, !tbaa !60
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !8   ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !12
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 136
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(228) %i.cj, ptr noundef nonnull %i.cd), !inline_history !75
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.ai

bb.aa:                                            ; preds = %bb.u
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bu)
          to label %common.resume unwind label %bb.aj

bb.ab:                                            ; preds = %bb.f, %bb.f, %bb.f
  %i.co = add nsw i32 %i.u, -5
  %i.cp = uitofp nneg i32 %i.co to float
  %i.cq = fmul nnan float %i.cp, 5.000000e-01     ; 5 uses
  %i.cr = call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 72, i32 noundef 16) ; 5 uses
  %i.cs = fmul nnan float %i.cq, 2.000000e+00
  invoke void @_ZN14btCapsuleShapeC1Eff(ptr noundef nonnull align 8 dereferenceable(68) %i.cr, float noundef %i.cq, float noundef %i.cs)
          to label %bb.ac unwind label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  %i.ct = fcmp une float %i.cq, 0.000000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br i1 %i.ct, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cu = load ptr, ptr %i.cr, align 8, !tbaa !12
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 64
  %i.cw = load ptr, ptr %i.cv, align 8
  call void %i.cw(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, float noundef %i.cq, ptr noundef nonnull align 4 dereferenceable(16) %1), !inline_history !75
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.cx = call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 568, i32 noundef 16) ; 11 uses
  invoke void @_ZN11btRigidBodyC1EfP13btMotionStateP16btCollisionShapeRK9btVector3(ptr noundef nonnull align 8 dereferenceable(564) %i.cx, float noundef %i.cq, ptr noundef null, ptr noundef nonnull %i.cr, ptr noundef nonnull align 4 dereferenceable(16) %1)
          to label %_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit72 unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.cx)
          to label %_ZN17btCollisionObjectdlEPv.exit.i71 unwind label %bb.ag

_ZN17btCollisionObjectdlEPv.exit.i71:             ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %common.resume

bb.ag:                                            ; preds = %bb.af
  %i.cz = landingpad { ptr, i32 }
          catch ptr null
  %i.da = extractvalue { ptr, i32 } %i.cz, 0
  call void @__clang_call_terminate(ptr %i.da) #23
  unreachable

_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit72: ; preds = %bb.ae
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store float 1.000000e+00, ptr %i.db, align 8
  %.sroa.7.0..sroa_idx80 = getelementptr inbounds nuw i8, ptr %i.cx, i64 12
  %.sroa.11.16..sroa_idx85 = getelementptr inbounds nuw i8, ptr %i.cx, i64 28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7.0..sroa_idx80, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %.sroa.11.16..sroa_idx85, align 4
  %.sroa.12.16..sroa_idx88 = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %.sroa.16.32..sroa_idx93 = getelementptr inbounds nuw i8, ptr %i.cx, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.16..sroa_idx88, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %.sroa.16.32..sroa_idx93, align 8
  %.sroa.17.32..sroa_idx96 = getelementptr inbounds nuw i8, ptr %i.cx, i64 52
  store i32 0, ptr %.sroa.17.32..sroa_idx96, align 4, !tbaa !60
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 56
  store <2 x float> %.sroa.0.4.vec.insert.i57, ptr %i.dc, align 8
  %.sroa.17.sroa.11.4..sroa_idx121 = getelementptr inbounds nuw i8, ptr %i.cx, i64 64
  store <2 x float> %.sroa.3.12.vec.insert.i58, ptr %.sroa.17.sroa.11.4..sroa_idx121, align 8, !tbaa !60
  %i.dd = load ptr, ptr %i.a, align 8, !tbaa !8   ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !12
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 136
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(228) %i.dd, ptr noundef nonnull %i.cx), !inline_history !75
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ab
  %i.dh = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.cr)
          to label %common.resume unwind label %bb.aj

bb.ai:                                            ; preds = %_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit72, %_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit69, %_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit, %bb.f
  %i.di = add nuw nsw i32 %.054168, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.di, 10
  br i1 %exitcond.not, label %bb.e, label %bb.f

bb.aj:                                            ; preds = %bb.ah, %bb.aa, %.body
  %i.dj = landingpad { ptr, i32 }
          catch ptr null
  %i.dk = extractvalue { ptr, i32 } %i.dj, 0
  call void @__clang_call_terminate(ptr %i.dk) #23
  unreachable
}

; Function Attrs: uwtable
define dso_local void @_ZN13BenchmarkDemo11createTest6Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.btVector3, align 4           ; 6 uses
  %2 = alloca %class.btVector3, align 8           ; 6 uses
  %3 = alloca %class.btVector3, align 4           ; 4 uses
  %i.a = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 136, i32 noundef 16) ; 8 uses
  invoke void @_ZN17btConvexHullShapeC1EPKfii(ptr noundef nonnull align 8 dereferenceable(136) %i.a, ptr noundef null, i32 noundef 0, i32 noundef 16)
          to label %.preheader80 unwind label %bb.c

.preheader80:                                     ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  br label %bb.d

bb.b:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.f = load ptr, ptr %i.e, align 8
  call void %i.f(ptr noundef nonnull align 8 dereferenceable(64) %i.a, float noundef 1.000000e+00, ptr noundef nonnull align 4 dereferenceable(16) %3)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %.preheader

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.a)
          to label %common.resume unwind label %bb.l

common.resume:                                    ; preds = %bb.c, %_ZN17btCollisionObjectdlEPv.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.ad, %_ZN17btCollisionObjectdlEPv.exit.i ], [ %i.h, %bb.c ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %.preheader80, %bb.d
  %indvars.iv = phi i64 [ 0, %.preheader80 ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %.idx = mul nuw nsw i64 %indvars.iv, 12
  %i.i = getelementptr inbounds nuw i8, ptr @_ZL7TaruVtx, i64 %.idx ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load <2 x float>, ptr %i.i, align 4, !tbaa !36
  store <2 x float> %i.k, ptr %2, align 8, !tbaa !36
  %i.l = load float, ptr %i.j, align 4, !tbaa !36
  store float %i.l, ptr %i.b, align 8, !tbaa !36
  store float 0.000000e+00, ptr %i.c, align 4, !tbaa !36
  call void @_ZN17btConvexHullShape8addPointERK9btVector3(ptr noundef nonnull align 8 dereferenceable(136) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 43
  br i1 %exitcond.not, label %bb.b, label %bb.d

.preheader:                                       ; preds = %bb.b, %bb.f
  %.03987 = phi i32 [ 0, %bb.b ], [ %i.t, %bb.f ]
  %.04086 = phi float [ -2.500000e+01, %bb.b ], [ %i.p, %bb.f ] ; 3 uses
  %.04185 = phi float [ 2.000000e+00, %bb.b ], [ %i.q, %bb.f ] ; 3 uses
  %.sroa.564.084 = phi float [ 2.000000e+01, %bb.b ], [ %i.s, %bb.f ] ; 2 uses
  %i.m = fadd float %.04185, 3.000000e+00         ; 2 uses
  %i.n = fadd float %.sroa.564.084, 2.500000e+01
  br label %bb.g

bb.e:                                             ; preds = %bb.f
  call void @_ZN13BenchmarkDemo19createLargeMeshBodyEv(ptr noundef nonnull align 8 dereferenceable(136) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void

bb.f:                                             ; preds = %bb.h
  %i.o = fmul float %.04185, -5.000000e-02
  %i.p = call float @llvm.fmuladd.f32(float %i.o, float 9.000000e+00, float %.04086)
  %i.q = fmul float %.04185, 1.100000e+00         ; 2 uses
  %i.r = fadd float %i.q, 3.000000e+00
  %i.s = fadd float %.sroa.564.084, %i.r
  %i.t = add nuw nsw i32 %.03987, 1               ; 2 uses
  %exitcond92.not = icmp eq i32 %i.t, 10
  br i1 %exitcond92.not, label %bb.e, label %.preheader

bb.g:                                             ; preds = %.preheader, %bb.h
  %.03883 = phi i32 [ 0, %.preheader ], [ %i.y, %bb.h ] ; 2 uses
  %i.u = uitofp nneg i32 %.03883 to float
  %i.v = call float @llvm.fmuladd.f32(float %i.u, float %i.m, float %.04086)
  %i.w = fmul float %i.v, 5.000000e+00
  %i.x = fadd float %i.w, 0.000000e+00
  %.sroa.3.12.vec.insert.i45 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.x, i64 0
  br label %bb.i

bb.h:                                             ; preds = %_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit
  %i.y = add nuw nsw i32 %.03883, 1               ; 2 uses
  %exitcond91.not = icmp eq i32 %i.y, 10
  br i1 %exitcond91.not, label %bb.f, label %bb.g

bb.i:                                             ; preds = %bb.g, %_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit
  %.082 = phi i32 [ 0, %bb.g ], [ %i.aq, %_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(24) %i.a, float noundef 1.000000e+00, ptr noundef nonnull align 4 dereferenceable(16) %1), !inline_history !75
  %i.ac = call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 568, i32 noundef 16) ; 10 uses
  invoke void @_ZN11btRigidBodyC1EfP13btMotionStateP16btCollisionShapeRK9btVector3(ptr noundef nonnull align 8 dereferenceable(564) %i.ac, float noundef 1.000000e+00, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull align 4 dereferenceable(16) %1)
          to label %_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ac)
          to label %_ZN17btCollisionObjectdlEPv.exit.i unwind label %bb.k

_ZN17btCollisionObjectdlEPv.exit.i:               ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %common.resume

bb.k:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #23
  unreachable

_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit: ; preds = %bb.i
  %i.ag = uitofp nneg i32 %.082 to float
  %i.ah = call float @llvm.fmuladd.f32(float %i.ag, float %i.m, float %.04086)
  %i.ai = fmul float %i.ah, 5.000000e+00
  %i.aj = fadd float %i.ai, 0.000000e+00
  %.sroa.0.0.vec.insert.i43 = insertelement <2 x float> poison, float %i.aj, i64 0
  %.sroa.0.4.vec.insert.i44 = insertelement <2 x float> %.sroa.0.0.vec.insert.i43, float %i.n, i64 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store float 1.000000e+00, ptr %i.ak, align 8
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %.sroa.671.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.470.0..sroa_idx, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %.sroa.671.16..sroa_idx, align 4
  %.sroa.7.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %.sroa.972.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.16..sroa_idx, i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %.sroa.972.32..sroa_idx, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  store <2 x float> %.sroa.0.4.vec.insert.i44, ptr %i.al, align 8
  %.sroa.13.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  store <2 x float> %.sroa.3.12.vec.insert.i45, ptr %.sroa.13.48..sroa_idx, align 8, !tbaa !60
  %i.am = load ptr, ptr %i.g, align 8, !tbaa !8   ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !12
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 136
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(228) %i.am, ptr noundef nonnull %i.ac), !inline_history !75
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %i.aq = add nuw nsw i32 %.082, 1                ; 2 uses
  %exitcond90.not = icmp eq i32 %i.aq, 10
  br i1 %exitcond90.not, label %bb.h, label %bb.i

bb.l:                                             ; preds = %bb.c
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  tail call void @__clang_call_terminate(ptr %i.as) #23
  unreachable
}

; Function Attrs: uwtable
define dso_local void @_ZN13BenchmarkDemo11createTest7Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %class.btRaycastBar2, align 8       ; 4 uses
  tail call void @_ZN13BenchmarkDemo11createTest6Ev(ptr noundef nonnull align 8 dereferenceable(136) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @_ZN13btRaycastBar2C2Efff(ptr noundef nonnull align 8 dereferenceable(40060) %1, float noundef 2.500000e+03, float noundef 0.000000e+00, float noundef 5.000000e+01)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40060) @_ZL10raycastBar, ptr noundef nonnull align 8 dereferenceable(40060) %1, i64 40060, i1 false), !tbaa.struct !70
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: uwtable
define dso_local noundef ptr @_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, float noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.btVector3, align 4           ; 6 uses
  %i.a = fcmp une float %1, 0.000000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %3, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr noundef nonnull align 8 dereferenceable(24) %3, float noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 568, i32 noundef 16) ; 8 uses
  invoke void @_ZN11btRigidBodyC1EfP13btMotionStateP16btCollisionShapeRK9btVector3(ptr noundef nonnull align 8 dereferenceable(564) %i.e, float noundef %1, ptr noundef null, ptr noundef %3, ptr noundef nonnull align 4 dereferenceable(16) %4)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull align 4 dereferenceable(64) %2, i64 16, i1 false), !tbaa.struct !59
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !59
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !59
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 4 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !59
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !8    ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 136
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(228) %i.n, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret ptr %i.e

bb.e:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.e)
          to label %_ZN17btCollisionObjectdlEPv.exit unwind label %bb.f

_ZN17btCollisionObjectdlEPv.exit:                 ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %i.r

bb.f:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #23
  unreachable
}

; Function Attrs: uwtable
define dso_local void @_ZN13BenchmarkDemo10createWallERK9btVector3iS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.btVector3, align 4           ; 6 uses
  %5 = alloca %class.btVector3, align 4           ; 4 uses
  %i.a = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 64, i32 noundef 16) ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.c = load <2 x float>, ptr %3, align 4, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.e = load float, ptr %i.d, align 4, !tbaa !36
  invoke void @_ZN23btPolyhedralConvexShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 208) (i8, ptr @_ZTV10btBoxShape, i64 16), ptr %i.a, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 0, ptr %i.f, align 8, !tbaa !73
  %i.g = load ptr, ptr getelementptr inbounds nuw inrange(-104, 120) (i8, ptr @_ZTV10btBoxShape, i64 104), align 8
  %i.h = invoke noundef float %i.g(ptr noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %.noexc
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = invoke noundef float %i.k(ptr noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = invoke noundef float %i.o(ptr noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %bb.i unwind label %bb.f

bb.d:                                             ; preds = %.noexc
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.pn8.i = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.q, %bb.d ], [ %i.s, %bb.f ]
  invoke void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #23
  unreachable

bb.i:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.x = load float, ptr %i.w, align 8, !tbaa !36
  %i.y = fmul float %i.e, %i.x
  %i.z = load <2 x float>, ptr %i.v, align 8, !tbaa !36
  %i.aa = fmul <2 x float> %i.c, %i.z
  %i.ab = insertelement <2 x float> poison, float %i.h, i64 0
  %i.ac = insertelement <2 x float> %i.ab, float %i.l, i64 1
  %i.ad = fsub <2 x float> %i.aa, %i.ac
  %i.ae = fsub float %i.y, %i.p
  %.sroa.3.12.vec.insert.i12.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ae, i64 0
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store <2 x float> %i.ad, ptr %i.af, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store <2 x float> %.sroa.3.12.vec.insert.i12.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(64) %i.a, float noundef 1.000000e+00, ptr noundef nonnull align 4 dereferenceable(16) %5)
  %i.aj = load float, ptr %i.b, align 4, !tbaa !36 ; 2 uses
  %i.ak = load float, ptr %i.d, align 4, !tbaa !36 ; 2 uses
  %i.al = fmul float %i.ak, 2.000000e+00          ; 2 uses
  %.not48 = icmp eq i32 %2, 0
  br i1 %.not48, label %._crit_edge52, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.i
  %i.am = sub nsw i32 0, %2
  %i.an = sitofp i32 %i.am to float
end_hunk_0
begin_hunk_1_@_ZN13BenchmarkDemo10createWallERK9btVector3iS2_:bb.a
  br i1 %.not, label %._crit_edge52, label %.preheader

bb.j:                                             ; preds = %bb.a
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.ax, %bb.j ], [ %.pn8.i, %bb.g ]
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.a)
          to label %common.resume unwind label %bb.m

common.resume:                                    ; preds = %.body, %_ZN17btCollisionObjectdlEPv.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.be, %_ZN17btCollisionObjectdlEPv.exit.i ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit
  %.047 = phi i32 [ %i.br, %_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.ay = load <2 x float>, ptr %1, align 4, !tbaa !36
  %i.az = load float, ptr %i.aq, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(24) %i.a, float noundef 1.000000e+00, ptr noundef nonnull align 4 dereferenceable(16) %4), !inline_history !75
  %i.bd = call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 568, i32 noundef 16) ; 10 uses
  invoke void @_ZN11btRigidBodyC1EfP13btMotionStateP16btCollisionShapeRK9btVector3(ptr noundef nonnull align 8 dereferenceable(564) %i.bd, float noundef 1.000000e+00, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull align 4 dereferenceable(16) %4)
          to label %_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit unwind label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bd)
          to label %_ZN17btCollisionObjectdlEPv.exit.i unwind label %bb.l

_ZN17btCollisionObjectdlEPv.exit.i:               ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %common.resume

bb.l:                                             ; preds = %bb.k
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #23
  unreachable

_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit: ; preds = %.lr.ph
  %i.bh = uitofp nneg i32 %.047 to float
  %i.bi = call float @llvm.fmuladd.f32(float %i.bh, float %i.al, float %.02651)
  %i.bj = fadd float %i.bi, %i.az
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bj, i64 0
  %i.bk = fadd <2 x float> %i.at, %i.ay
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store float 1.000000e+00, ptr %i.bl, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  %.sroa.6.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.430.0..sroa_idx, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %.sroa.6.16..sroa_idx, align 4
  %.sroa.7.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %.sroa.9.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.16..sroa_idx, i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %.sroa.9.32..sroa_idx, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  store <2 x float> %i.bk, ptr %i.bm, align 8
  %.sroa.13.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 64
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.13.48..sroa_idx, align 8, !tbaa !60
  %i.bn = load ptr, ptr %i.ar, align 8, !tbaa !8  ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !12
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 136
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(228) %i.bn, ptr noundef nonnull %i.bd), !inline_history !75
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.br = add nuw nsw i32 %.047, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.br, %.02750
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge52:                                    ; preds = %._crit_edge, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void

bb.m:                                             ; preds = %.body
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  %i.bt = extractvalue { ptr, i32 } %i.bs, 0
  tail call void @__clang_call_terminate(ptr %i.bt) #23
  unreachable
}

; Function Attrs: uwtable
define dso_local void @_ZN13BenchmarkDemo13createPyramidERK9btVector3iS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.btVector3, align 4           ; 6 uses
  %5 = alloca %class.btVector3, align 4           ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !36
  %i.c = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 64, i32 noundef 16) ; 19 uses
  %i.d = load <2 x float>, ptr %3, align 4, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !36
  invoke void @_ZN23btPolyhedralConvexShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 208) (i8, ptr @_ZTV10btBoxShape, i64 16), ptr %i.c, align 8, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 0, ptr %i.g, align 8, !tbaa !73
  %i.h = load ptr, ptr getelementptr inbounds nuw inrange(-104, 120) (i8, ptr @_ZTV10btBoxShape, i64 104), align 8
  %i.i = invoke noundef float %i.h(ptr noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %.noexc
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = invoke noundef float %i.l(ptr noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = invoke noundef float %i.p(ptr noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %bb.i unwind label %bb.f

bb.d:                                             ; preds = %.noexc
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.pn8.i = phi { ptr, i32 } [ %i.s, %bb.e ], [ %i.r, %bb.d ], [ %i.t, %bb.f ]
  invoke void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #23
  unreachable

bb.i:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.y = load float, ptr %i.x, align 8, !tbaa !36
  %i.z = fmul float %i.f, %i.y
  %i.aa = load <2 x float>, ptr %i.w, align 8, !tbaa !36
  %i.ab = fmul <2 x float> %i.d, %i.aa
  %i.ac = insertelement <2 x float> poison, float %i.i, i64 0
  %i.ad = insertelement <2 x float> %i.ac, float %i.m, i64 1
  %i.ae = fsub <2 x float> %i.ab, %i.ad
  %i.af = fsub float %i.z, %i.q
  %.sroa.3.12.vec.insert.i12.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.af, i64 0
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store <2 x float> %i.ae, ptr %i.ag, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store <2 x float> %.sroa.3.12.vec.insert.i12.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(64) %i.c, float noundef 1.000000e+00, ptr noundef nonnull align 4 dereferenceable(16) %5)
  %i.ak = load float, ptr %3, align 4, !tbaa !36  ; 2 uses
  %i.al = load float, ptr %i.e, align 4, !tbaa !36 ; 2 uses
  %i.am = call float @llvm.fmuladd.f32(float %i.ak, float 2.000000e+00, float 0.000000e+00) ; 2 uses
  %i.an = call float @llvm.fmuladd.f32(float %i.al, float 2.000000e+00, float 0.000000e+00) ; 2 uses
  %.not70 = icmp eq i32 %2, 0
  br i1 %.not70, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.i
  %i.ao = sub nsw i32 0, %2
  %i.ap = sitofp i32 %i.ao to float               ; 2 uses
  %i.aq = fmul float %i.an, %i.ap
  %i.ar = fmul float %i.aq, 5.000000e-01
  %i.as = fmul float %i.am, %i.ap
  %i.at = fmul float %i.as, 5.000000e-01
  %i.au = load float, ptr %i.a, align 4, !tbaa !36
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = call float @llvm.fmuladd.f32(float %i.au, float 2.000000e+00, float 0.000000e+00)
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge68.split.us
  %.04474 = phi float [ %i.ar, %.preheader.lr.ph ], [ %i.bw, %._crit_edge68.split.us ] ; 2 uses
  %.04573 = phi float [ %i.at, %.preheader.lr.ph ], [ %i.bv, %._crit_edge68.split.us ] ; 2 uses
  %.04672 = phi i32 [ %2, %.preheader.lr.ph ], [ %i.by, %._crit_edge68.split.us ] ; 4 uses
  %.sroa.661.071 = phi float [ %i.b, %.preheader.lr.ph ], [ %i.bx, %._crit_edge68.split.us ] ; 2 uses
  %i.ay = icmp sgt i32 %.04672, 0
  br i1 %i.ay, label %.lr.ph.us, label %._crit_edge68.split.us

.lr.ph.us:                                        ; preds = %.preheader, %._crit_edge.us
  %.04366.us = phi i32 [ %i.bt, %._crit_edge.us ], [ 0, %.preheader ] ; 2 uses
  %i.az = uitofp nneg i32 %.04366.us to float
  %i.ba = call float @llvm.fmuladd.f32(float %i.az, float %i.an, float %.04474)
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph.us, %_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit.us
  %.065.us = phi i32 [ 0, %.lr.ph.us ], [ %i.bs, %_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit.us ] ; 2 uses
  %i.bb = load <2 x float>, ptr %1, align 4, !tbaa !36
  %i.bc = load float, ptr %i.av, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 64
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(24) %i.c, float noundef 1.000000e+00, ptr noundef nonnull align 4 dereferenceable(16) %4), !inline_history !75
  %i.bg = call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 568, i32 noundef 16) ; 10 uses
  invoke void @_ZN11btRigidBodyC1EfP13btMotionStateP16btCollisionShapeRK9btVector3(ptr noundef nonnull align 8 dereferenceable(564) %i.bg, float noundef 1.000000e+00, ptr noundef null, ptr noundef nonnull %i.c, ptr noundef nonnull align 4 dereferenceable(16) %4)
          to label %_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit.us unwind label %.split.us

_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit.us: ; preds = %bb.j
  %i.bh = fadd float %i.ba, %i.bc
  %.sroa.3.12.vec.insert.i.us = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bh, i64 0
  %i.bi = uitofp nneg i32 %.065.us to float
  %i.bj = call float @llvm.fmuladd.f32(float %i.bi, float %i.am, float %.04573)
  %6 = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.bk = insertelement <2 x float> %6, float %.sroa.661.071, i64 1
  %i.bl = fadd <2 x float> %i.bk, %i.bb
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store float 1.000000e+00, ptr %i.bm, align 8
  %.sroa.451.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  %.sroa.6.16..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.bg, i64 28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.451.0..sroa_idx.us, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %.sroa.6.16..sroa_idx.us, align 4
  %.sroa.7.16..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %.sroa.9.32..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.16..sroa_idx.us, i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %.sroa.9.32..sroa_idx.us, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  store <2 x float> %i.bl, ptr %i.bn, align 8
  %.sroa.13.48..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  store <2 x float> %.sroa.3.12.vec.insert.i.us, ptr %.sroa.13.48..sroa_idx.us, align 8, !tbaa !60
  %i.bo = load ptr, ptr %i.aw, align 8, !tbaa !8  ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !12
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 136
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(228) %i.bo, ptr noundef nonnull %i.bg), !inline_history !75
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.bs = add nuw nsw i32 %.065.us, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.bs, %.04672
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.j

._crit_edge.us:                                   ; preds = %_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit.us
  %i.bt = add nuw nsw i32 %.04366.us, 1           ; 2 uses
  %exitcond76.not = icmp eq i32 %i.bt, %.04672
  br i1 %exitcond76.not, label %._crit_edge68.split.us, label %.lr.ph.us

.split.us:                                        ; preds = %bb.j
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bg)
          to label %_ZN17btCollisionObjectdlEPv.exit.i unwind label %bb.l

._crit_edge68.split.us:                           ; preds = %._crit_edge.us, %.preheader
  %i.bv = fadd float %i.ak, %.04573
  %i.bw = fadd float %i.al, %.04474
  %i.bx = fadd float %i.ax, %.sroa.661.071
  %i.by = add nsw i32 %.04672, -1                 ; 2 uses
  %.not = icmp eq i32 %i.by, 0
  br i1 %.not, label %._crit_edge, label %.preheader

bb.k:                                             ; preds = %bb.a
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.k
  %eh.lpad-body = phi { ptr, i32 } [ %i.bz, %bb.k ], [ %.pn8.i, %bb.g ]
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.c)
          to label %common.resume unwind label %bb.m

common.resume:                                    ; preds = %.body, %_ZN17btCollisionObjectdlEPv.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.bu, %_ZN17btCollisionObjectdlEPv.exit.i ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_ZN17btCollisionObjectdlEPv.exit.i:               ; preds = %.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %common.resume

bb.l:                                             ; preds = %.split.us
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #23
  unreachable

._crit_edge:                                      ; preds = %._crit_edge68.split.us, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void

bb.m:                                             ; preds = %.body
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  tail call void @__clang_call_terminate(ptr %i.cd) #23
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { <2 x float>, <2 x float> } @_Z6rotateRK12btQuaternionRK9btVector3(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load float, ptr %i.a, align 4, !tbaa !36 ; 6 uses
  %i.c = load float, ptr %1, align 4, !tbaa !36   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !36 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !36 ; 4 uses
  %i.h = fmul float %i.e, %i.g
  %i.i = tail call float @llvm.fmuladd.f32(float %i.b, float %i.c, float %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load float, ptr %i.j, align 4, !tbaa !36 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load float, ptr %i.l, align 4, !tbaa !36 ; 4 uses
  %i.n = fneg float %i.k
  %i.o = tail call float @llvm.fmuladd.f32(float %i.n, float %i.m, float %i.i) ; 3 uses
  %i.p = fmul float %i.c, %i.k
  %i.q = tail call float @llvm.fmuladd.f32(float %i.b, float %i.m, float %i.p)
  %i.r = load float, ptr %0, align 4, !tbaa !36   ; 6 uses
  %i.s = fneg float %i.r
  %i.t = tail call float @llvm.fmuladd.f32(float %i.s, float %i.g, float %i.q) ; 3 uses
  %i.u = fmul float %i.m, %i.r
  %i.v = tail call float @llvm.fmuladd.f32(float %i.b, float %i.g, float %i.u)
  %i.w = fneg float %i.e
  %i.x = tail call float @llvm.fmuladd.f32(float %i.w, float %i.c, float %i.v) ; 3 uses
  %i.y = fmul float %i.e, %i.m
  %i.z = tail call float @llvm.fmuladd.f32(float %i.r, float %i.c, float %i.y)
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.k, float %i.g, float %i.z) ; 3 uses
  %i.ab = fmul float %i.b, %i.o
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.r, float %i.ab)
  %i.ad = fneg float %i.t
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.k, float %i.ac)
  %i.af = tail call float @llvm.fmuladd.f32(float %i.x, float %i.e, float %i.ae)
  %i.ag = fmul float %i.b, %i.t
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.e, float %i.ag)
  %i.ai = fneg float %i.x
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.r, float %i.ah)
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.o, float %i.k, float %i.aj)
  %i.al = fmul float %i.b, %i.x
  %i.am = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.k, float %i.al)
  %i.an = fneg float %i.o
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.an, float %i.e, float %i.am)
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.t, float %i.r, float %i.ao)
  %.sroa.0.0.vec.insert = insertelement <2 x float> poison, float %i.af, i64 0
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0.vec.insert, float %i.ak, i64 1
  %.sroa.3.12.vec.insert = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ap, i64 0
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.4.vec.insert, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.3.12.vec.insert, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: uwtable
define dso_local void @_ZN13BenchmarkDemo17createTowerCircleERK9btVector3iiS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.btVector3, align 4           ; 6 uses
  %6 = alloca %class.btVector3, align 4           ; 4 uses
  %i.a = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 64, i32 noundef 16) ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.c = load <2 x float>, ptr %4, align 4, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load float, ptr %i.d, align 4, !tbaa !36
  invoke void @_ZN23btPolyhedralConvexShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 208) (i8, ptr @_ZTV10btBoxShape, i64 16), ptr %i.a, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 0, ptr %i.f, align 8, !tbaa !73
  %i.g = load ptr, ptr getelementptr inbounds nuw inrange(-104, 120) (i8, ptr @_ZTV10btBoxShape, i64 104), align 8
  %i.h = invoke noundef float %i.g(ptr noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %.noexc
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = invoke noundef float %i.k(ptr noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = invoke noundef float %i.o(ptr noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %bb.i unwind label %bb.f

bb.d:                                             ; preds = %.noexc
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.pn8.i = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.q, %bb.d ], [ %i.s, %bb.f ]
  invoke void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #23
  unreachable

bb.i:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.x = load float, ptr %i.w, align 8, !tbaa !36
end_hunk_1
