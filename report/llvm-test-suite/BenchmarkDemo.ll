inline.NumInlined: 797
inline.NumDeleted: 176
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
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
          to label %.noexc unwind label %bb.j

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
  %i.ak = load float, ptr %3, align 4, !tbaa !36
  %i.al = load float, ptr %i.e, align 4, !tbaa !36
  %i.am = insertelement <2 x float> poison, float %i.al, i64 0
  %i.an = insertelement <2 x float> %i.am, float %i.ak, i64 1 ; 2 uses
  %i.ao = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.an, <2 x float> splat (float 2.000000e+00), <2 x float> zeroinitializer) ; 3 uses
  %.not69 = icmp eq i32 %2, 0
  br i1 %.not69, label %._crit_edge74, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.i
  %i.ap = sub nsw i32 0, %2
  %i.aq = sitofp i32 %i.ap to float
  %i.ar = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer
  %i.at = fmul <2 x float> %i.ao, %i.as
  %i.au = fmul <2 x float> %i.at, splat (float 5.000000e-01)
  %i.av = load float, ptr %i.a, align 4, !tbaa !36
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = call float @llvm.fmuladd.f32(float %i.av, float 2.000000e+00, float 0.000000e+00)
  %i.az = extractelement <2 x float> %i.ao, i64 0
  %i.ba = extractelement <2 x float> %i.ao, i64 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge68
  %.04671 = phi i32 [ %2, %.preheader.lr.ph ], [ %i.bh, %._crit_edge68 ] ; 4 uses
  %.sroa.661.070 = phi float [ %i.b, %.preheader.lr.ph ], [ %i.bg, %._crit_edge68 ] ; 2 uses
  %i.bb = phi <2 x float> [ %i.au, %.preheader.lr.ph ], [ %i.bf, %._crit_edge68 ] ; 3 uses
  %i.bc = icmp sgt i32 %.04671, 0
  br i1 %i.bc, label %.lr.ph.preheader, label %._crit_edge68

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.bd = extractelement <2 x float> %i.bb, i64 0
  %i.be = extractelement <2 x float> %i.bb, i64 1
  br label %.lr.ph

._crit_edge68:                                    ; preds = %._crit_edge, %.preheader
  %i.bf = fadd <2 x float> %i.an, %i.bb
  %i.bg = fadd float %i.ay, %.sroa.661.070
  %i.bh = add nsw i32 %.04671, -1                 ; 2 uses
  %.not = icmp eq i32 %i.bh, 0
  br i1 %.not, label %._crit_edge74, label %.preheader

bb.j:                                             ; preds = %bb.a
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.bi, %bb.j ], [ %.pn8.i, %bb.g ]
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.c)
          to label %common.resume unwind label %bb.n

common.resume:                                    ; preds = %.body, %_ZN17btCollisionObjectdlEPv.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.bs, %_ZN17btCollisionObjectdlEPv.exit.i ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.04366 = phi i32 [ %i.bl, %._crit_edge ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.bj = uitofp nneg i32 %.04366 to float
  %i.bk = call float @llvm.fmuladd.f32(float %i.bj, float %i.az, float %i.bd)
  br label %bb.k

._crit_edge:                                      ; preds = %_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit
  %i.bl = add nuw nsw i32 %.04366, 1              ; 2 uses
  %exitcond76.not = icmp eq i32 %i.bl, %.04671
  br i1 %exitcond76.not, label %._crit_edge68, label %.lr.ph

bb.k:                                             ; preds = %.lr.ph, %_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit
  %.065 = phi i32 [ 0, %.lr.ph ], [ %i.cg, %_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit ] ; 2 uses
  %i.bm = load <2 x float>, ptr %1, align 4, !tbaa !36
  %i.bn = load float, ptr %i.aw, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.bo = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 64
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(24) %i.c, float noundef 1.000000e+00, ptr noundef nonnull align 4 dereferenceable(16) %4), !inline_history !75
  %i.br = call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 568, i32 noundef 16) ; 10 uses
  invoke void @_ZN11btRigidBodyC1EfP13btMotionStateP16btCollisionShapeRK9btVector3(ptr noundef nonnull align 8 dereferenceable(564) %i.br, float noundef 1.000000e+00, ptr noundef null, ptr noundef nonnull %i.c, ptr noundef nonnull align 4 dereferenceable(16) %4)
          to label %_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.br)
          to label %_ZN17btCollisionObjectdlEPv.exit.i unwind label %bb.m

_ZN17btCollisionObjectdlEPv.exit.i:               ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %common.resume

bb.m:                                             ; preds = %bb.l
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @__clang_call_terminate(ptr %i.bu) #23
  unreachable

_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit: ; preds = %bb.k
  %i.bv = fadd float %i.bk, %i.bn
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bv, i64 0
  %i.bw = uitofp nneg i32 %.065 to float
  %i.bx = call float @llvm.fmuladd.f32(float %i.bw, float %i.ba, float %i.be)
  %6 = insertelement <2 x float> poison, float %i.bx, i64 0
  %i.by = insertelement <2 x float> %6, float %.sroa.661.070, i64 1
  %i.bz = fadd <2 x float> %i.by, %i.bm
  %i.ca = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store float 1.000000e+00, ptr %i.ca, align 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  %.sroa.6.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.451.0..sroa_idx, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %.sroa.6.16..sroa_idx, align 4
  %.sroa.7.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %.sroa.9.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.16..sroa_idx, i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %.sroa.9.32..sroa_idx, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.br, i64 56
  store <2 x float> %i.bz, ptr %i.cb, align 8
  %.sroa.13.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 64
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.13.48..sroa_idx, align 8, !tbaa !60
  %i.cc = load ptr, ptr %i.ax, align 8, !tbaa !8  ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !12
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 136
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(228) %i.cc, ptr noundef nonnull %i.br), !inline_history !75
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.cg = add nuw nsw i32 %.065, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.cg, %.04671
  br i1 %exitcond.not, label %._crit_edge, label %bb.k

._crit_edge74:                                    ; preds = %._crit_edge68, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void

bb.n:                                             ; preds = %.body
  %i.ch = landingpad { ptr, i32 }
          catch ptr null
  %i.ci = extractvalue { ptr, i32 } %i.ch, 0
  tail call void @__clang_call_terminate(ptr %i.ci) #23
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { <2 x float>, <2 x float> } @_Z6rotateRK12btQuaternionRK9btVector3(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load float, ptr %i.a, align 4, !tbaa !36 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load <2 x float>, ptr %i.c, align 4, !tbaa !36 ; 7 uses
  %i.f = load <2 x float>, ptr %i.d, align 4, !tbaa !36 ; 5 uses
  %i.g = load <2 x float>, ptr %1, align 4, !tbaa !36 ; 3 uses
  %i.h = load float, ptr %0, align 4, !tbaa !36   ; 5 uses
  %i.i = shufflevector <2 x float> %i.f, <2 x float> %i.g, <2 x i32> <i32 1, i32 2>
  %i.j = fmul <2 x float> %i.i, %i.e
  %i.k = extractelement <2 x float> %i.f, i64 0
  %i.l = fmul float %i.k, %i.h
  %i.m = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.n = insertelement <2 x float> %i.m, float %i.h, i64 1 ; 2 uses
  %i.o = fneg <2 x float> %i.n
  %i.p = insertelement <2 x float> poison, float %i.b, i64 0
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.r = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> %i.g, <2 x float> %i.j)
  %i.s = extractelement <2 x float> %i.f, i64 1   ; 2 uses
  %i.t = tail call float @llvm.fmuladd.f32(float %i.b, float %i.s, float %i.l)
  %i.u = extractelement <2 x float> %i.e, i64 0   ; 2 uses
  %i.v = fneg float %i.u
  %i.w = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.o, <2 x float> %i.f, <2 x float> %i.r) ; 5 uses
  %i.x = extractelement <2 x float> %i.g, i64 0   ; 2 uses
  %i.y = tail call float @llvm.fmuladd.f32(float %i.v, float %i.x, float %i.t) ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.e, %i.f
  %i.z = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.h, float %i.x, float %i.z)
  %i.ab = extractelement <2 x float> %i.e, i64 1  ; 2 uses
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.s, float %i.aa) ; 2 uses
  %i.ad = extractelement <2 x float> %i.w, i64 0
  %i.ae = fmul float %i.b, %i.ad
  %i.af = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.h, float %i.ae)
  %i.ag = extractelement <2 x float> %i.w, i64 1
  %i.ah = fneg float %i.ag
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.ab, float %i.af)
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.y, float %i.u, float %i.ai)
  %i.ak = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.al = insertelement <2 x float> %i.ak, float %i.y, i64 1
  %i.am = fmul <2 x float> %i.q, %i.al
  %i.an = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ap = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> %i.e, <2 x float> %i.am)
  %i.aq = insertelement <2 x float> poison, float %i.y, i64 0
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> %i.w, <2 x i32> <i32 0, i32 2>
  %i.as = fneg <2 x float> %i.ar
  %i.at = insertelement <2 x float> poison, float %i.h, i64 0
  %i.au = shufflevector <2 x float> %i.at, <2 x float> %i.e, <2 x i32> <i32 0, i32 2>
  %i.av = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.as, <2 x float> %i.au, <2 x float> %i.ap)
  %i.aw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.w, <2 x float> %i.n, <2 x float> %i.av) ; 2 uses
  %.sroa.0.0.vec.insert = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.ax = shufflevector <2 x float> %.sroa.0.0.vec.insert, <2 x float> %i.aw, <2 x i32> <i32 0, i32 2>
  %i.ay = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.aw, <2 x i32> <i32 3, i32 1>
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.ax, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %i.ay, 1
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
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(64) %i.a, float noundef 1.000000e+00, ptr noundef nonnull align 4 dereferenceable(16) %6)
  %i.aj = sitofp i32 %3 to float                  ; 2 uses
  %i.ak = fmul nnan float %i.aj, 1.300000e+00
  %i.al = load float, ptr %4, align 4, !tbaa !36
  %i.am = fmul float %i.ak, %i.al
  %i.an = fdiv float %i.am, f0x40490FDB           ; 4 uses
  %i.ao = icmp sgt i32 %2, 0
  br i1 %i.ao, label %.preheader.lr.ph, label %._crit_edge113

.preheader.lr.ph:                                 ; preds = %bb.i
  %i.ap = icmp sgt i32 %3, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = fmul nnan <2 x float> %i.at, <float 5.000000e-01, float 1.000000e+00>
  %i.av = fdiv nnan <2 x float> splat (float f0x40490FDB), %i.au ; 2 uses
  %i.aw = extractelement <2 x float> %i.av, i64 0
  %i.ax = fmul nnan float %i.aw, 5.000000e-01     ; 2 uses
  %i.ay = extractelement <2 x float> %i.av, i64 1
  %i.az = fmul nnan float %i.ay, 5.000000e-01     ; 20 uses
  br i1 %i.ap, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %xtraiter = and i32 %2, 7                       ; 3 uses
  %i.ba = icmp ult i32 %2, 8
  br i1 %i.ba, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i32 %2, 2147483640
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.bb = load float, ptr %i.b, align 4, !tbaa !36
  %i.bc = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.an, i64 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %.023112.us = phi i32 [ %i.hf, %._crit_edge.us ], [ 0, %.preheader.us.preheader ]
  %.sroa.23.0111.us = phi float [ %i.he, %._crit_edge.us ], [ 0.000000e+00, %.preheader.us.preheader ]
  %.094107.us = phi float [ %i.fw, %._crit_edge.us ], [ %i.bb, %.preheader.us.preheader ] ; 5 uses
  %i.bd = phi <2 x float> [ %i.gy, %._crit_edge.us ], [ <float 1.000000e+00, float 0.000000e+00>, %.preheader.us.preheader ]
  %i.be = phi <2 x float> [ %i.gt, %._crit_edge.us ], [ <float 0.000000e+00, float 1.000000e+00>, %.preheader.us.preheader ]
  %7 = insertelement <2 x float> poison, float %.094107.us, i64 0
  %i.bf = insertelement <2 x float> %7, float %i.an, i64 1
  %i.bg = insertelement <2 x float> <float 0.000000e+00, float poison>, float %.094107.us, i64 1
  br label %bb.j

bb.j:                                             ; preds = %.preheader.us, %_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit.us
  %.0103.us = phi i32 [ 0, %.preheader.us ], [ %i.fu, %_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit.us ]
  %.sroa.23.1102.us = phi float [ %.sroa.23.0111.us, %.preheader.us ], [ %i.ft, %_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit.us ] ; 9 uses
  %i.bh = phi <2 x float> [ %i.bd, %.preheader.us ], [ %i.fo, %_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit.us ] ; 10 uses
  %i.bi = phi <2 x float> [ %i.be, %.preheader.us ], [ %i.fn, %_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit.us ] ; 5 uses
  %i.bj = load <2 x float>, ptr %1, align 4, !tbaa !36
  %i.bk = load float, ptr %i.aq, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.bl = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 64
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(24) %i.a, float noundef 1.000000e+00, ptr noundef nonnull align 4 dereferenceable(16) %5), !inline_history !75
  %i.bo = call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 568, i32 noundef 16) ; 16 uses
  invoke void @_ZN11btRigidBodyC1EfP13btMotionStateP16btCollisionShapeRK9btVector3(ptr noundef nonnull align 8 dereferenceable(564) %i.bo, float noundef 1.000000e+00, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull align 4 dereferenceable(16) %5)
          to label %_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit.us unwind label %.split.us

_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit.us: ; preds = %bb.j
  %i.bp = extractelement <2 x float> %i.bh, i64 0 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.bh, %i.bh
  %i.bq = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.br = extractelement <2 x float> %i.bi, i64 0 ; 9 uses
  %i.bs = call float @llvm.fmuladd.f32(float %i.br, float %i.br, float %i.bq)
  %i.bt = extractelement <2 x float> %i.bh, i64 1 ; 7 uses
  %i.bu = call float @llvm.fmuladd.f32(float %i.bt, float %i.bt, float %i.bs)
  %i.bv = call noundef float @llvm.fmuladd.f32(float %.sroa.23.1102.us, float %.sroa.23.1102.us, float %i.bu)
  %i.bw = fneg <2 x float> %i.bi                  ; 4 uses
  %i.bx = extractelement <2 x float> %i.bw, i64 0
  %i.by = fneg float %i.bt                        ; 3 uses
  %i.bz = fmul float %.094107.us, %i.bp
  %i.ca = call float @llvm.fmuladd.f32(float %i.br, float 0.000000e+00, float %i.bz)
  %i.cb = call float @llvm.fmuladd.f32(float %i.bt, float %i.an, float %i.ca) ; 2 uses
  %i.cc = extractelement <2 x float> %i.bw, i64 1
  %i.cd = shufflevector <2 x float> %i.bi, <2 x float> %i.bh, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ce = fmul <2 x float> %i.bf, %i.cd
  %i.cf = fmul float %i.bt, 0.000000e+00
  %i.cg = insertelement <2 x float> poison, float %.sroa.23.1102.us, i64 0
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ci = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ch, <2 x float> %i.bc, <2 x float> %i.ce)
  %i.cj = call float @llvm.fmuladd.f32(float %.sroa.23.1102.us, float %.094107.us, float %i.cf)
  %i.ck = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cl = insertelement <2 x float> %i.ck, float %i.by, i64 1
  %i.cm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cl, <2 x float> %i.bg, <2 x float> %i.ci) ; 4 uses
  %i.cn = extractelement <2 x float> %i.cm, i64 1
  %i.co = fneg float %i.cn
  %i.cp = call float @llvm.fmuladd.f32(float %i.bx, float %i.an, float %i.cj) ; 3 uses
  %i.cq = extractelement <2 x float> %i.cm, i64 0
  %i.cr = fmul float %.sroa.23.1102.us, %i.cq
  %i.cs = call float @llvm.fmuladd.f32(float %i.cb, float %i.bt, float %i.cr)
  %i.ct = call float @llvm.fmuladd.f32(float %i.co, float %i.bp, float %i.cs)
  %i.cu = call float @llvm.fmuladd.f32(float %i.cp, float %i.br, float %i.ct)
  %i.cv = fadd float %i.cu, %i.bk
  %.sroa.3.12.vec.insert.i27.us = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cv, i64 0
  %i.cw = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cx = insertelement <2 x float> %i.cw, float %i.cp, i64 0
  %i.cy = fneg <2 x float> %i.cx
  %i.cz = insertelement <2 x float> %i.cw, float %i.cp, i64 1
  %i.da = fmul <2 x float> %i.ch, %i.cz
  %i.db = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dc, <2 x float> %i.cd, <2 x float> %i.da)
  %i.de = shufflevector <2 x float> %i.bh, <2 x float> %i.bi, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.df = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cy, <2 x float> %i.de, <2 x float> %i.dd)
  %i.dg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cm, <2 x float> %i.bh, <2 x float> %i.df)
  %i.dh = fadd <2 x float> %i.dg, %i.bj
  %i.di = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.sroa.7.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %.sroa.883.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.bo, i64 20
  store float 0.000000e+00, ptr %.sroa.883.0..sroa_idx.us, align 4, !tbaa !60
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %.sroa.11.16..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.bo, i64 28
  %.sroa.13.16..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %.sroa.15.16..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.bo, i64 36
  store float 0.000000e+00, ptr %.sroa.15.16..sroa_idx.us, align 4, !tbaa !60
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %.sroa.18.32..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.bo, i64 44
  %.sroa.19.32..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %.sroa.21.32..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.bo, i64 52
  store float 0.000000e+00, ptr %.sroa.21.32..sroa_idx.us, align 4, !tbaa !60
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  store <2 x float> %i.dh, ptr %i.dl, align 8
  %.sroa.25.48..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.bo, i64 64
  store <2 x float> %.sroa.3.12.vec.insert.i27.us, ptr %.sroa.25.48..sroa_idx.us, align 8, !tbaa !60
  %i.dm = fdiv float 2.000000e+00, %i.bv          ; 3 uses
  %i.dn = fmul float %i.br, %i.dm                 ; 2 uses
  %i.do = fmul float %i.br, %i.dn                 ; 2 uses
  %i.dp = fmul float %i.bp, %i.dm                 ; 3 uses
  %i.dq = insertelement <2 x float> poison, float %i.dp, i64 0
  %i.dr = insertelement <2 x float> %i.dq, float %i.dm, i64 1
  %i.ds = fmul <2 x float> %i.bh, %i.dr           ; 4 uses
  %i.dt = extractelement <2 x float> %i.ds, i64 0
  %i.du = fadd float %i.do, %i.dt
  %i.dv = fsub float 1.000000e+00, %i.du
  %i.dw = extractelement <2 x float> %i.ds, i64 1 ; 3 uses
  %i.dx = fmul float %i.bp, %i.dw                 ; 2 uses
  %i.dy = fmul float %.sroa.23.1102.us, %i.dn     ; 2 uses
  %i.dz = fadd float %i.dx, %i.dy
  %i.ea = fmul float %i.br, %i.dw                 ; 2 uses
  %i.eb = fmul float %.sroa.23.1102.us, %i.dp     ; 2 uses
  %i.ec = fsub float %i.ea, %i.eb
  %i.ed = fsub float %i.dx, %i.dy
  %i.ee = fmul float %i.bt, %i.dw                 ; 2 uses
  %i.ef = fadd float %i.do, %i.ee
  %i.eg = fsub float 1.000000e+00, %i.ef
  %i.eh = fmul float %i.br, %i.dp                 ; 2 uses
  %i.ei = insertelement <2 x float> poison, float %i.ee, i64 0
  %i.ej = insertelement <2 x float> %i.ei, float %.sroa.23.1102.us, i64 1 ; 3 uses
  %i.ek = fadd <2 x float> %i.ej, %i.ds
  %i.el = fmul <2 x float> %i.ej, %i.ds           ; 2 uses
  %i.em = shufflevector <2 x float> %i.ek, <2 x float> %i.el, <2 x i32> <i32 0, i32 3>
  %i.en = extractelement <2 x float> %i.el, i64 1
  %i.eo = fadd float %i.eh, %i.en
  %i.ep = fadd float %i.ea, %i.eb
  %i.eq = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.eh, i64 1
  %i.er = fsub <2 x float> %i.eq, %i.em
  store <2 x float> %i.er, ptr %i.di, align 8
  store float %i.ep, ptr %.sroa.7.0..sroa_idx.us, align 8
  store float %i.eo, ptr %i.dj, align 8
  store float %i.eg, ptr %.sroa.11.16..sroa_idx.us, align 4
  store float %i.ed, ptr %.sroa.13.16..sroa_idx.us, align 8
  store float %i.ec, ptr %i.dk, align 8
  store float %i.dz, ptr %.sroa.18.32..sroa_idx.us, align 4
  store float %i.dv, ptr %.sroa.19.32..sroa_idx.us, align 8
  %i.es = load ptr, ptr %i.ar, align 8, !tbaa !8  ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !12
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 136
  %i.ev = load ptr, ptr %i.eu, align 8
  call void %i.ev(ptr noundef nonnull align 8 dereferenceable(228) %i.es, ptr noundef nonnull %i.bo), !inline_history !75
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.ew = call noundef float @sinf(float noundef %i.ax) #21, !tbaa !4 ; 3 uses
  %i.ex = fmul float %i.ew, 0.000000e+00          ; 3 uses
  %i.ey = call noundef float @cosf(float noundef %i.ax) #21, !tbaa !4 ; 2 uses
  %i.ez = insertelement <2 x float> poison, float %i.ey, i64 0
  %i.fa = shufflevector <2 x float> %i.ez, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fb = fmul <2 x float> %i.bi, %i.fa
  %i.fc = fmul <2 x float> %i.bh, %i.fa
  %i.fd = shufflevector <2 x float> %i.ej, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.fe = insertelement <2 x float> poison, float %i.ex, i64 0 ; 2 uses
  %i.ff = insertelement <2 x float> %i.fe, float %i.ew, i64 1 ; 3 uses
  %i.fg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fd, <2 x float> %i.ff, <2 x float> %i.fb)
  %i.fh = shufflevector <2 x float> %i.ff, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fd, <2 x float> %i.fh, <2 x float> %i.fc)
  %i.fj = shufflevector <2 x float> %i.fe, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bh, <2 x float> %i.fj, <2 x float> %i.fg)
  %i.fl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.de, <2 x float> %i.ff, <2 x float> %i.fi)
  %i.fm = insertelement <2 x float> %i.ck, float %i.by, i64 0
  %i.fn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fm, <2 x float> %i.fh, <2 x float> %i.fk) ; 3 uses
  %i.fo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bw, <2 x float> %i.fj, <2 x float> %i.fl) ; 5 uses
  %i.fp = fneg float %i.ex
  %i.fq = fmul float %i.br, %i.fp
  %i.fr = call float @llvm.fmuladd.f32(float %.sroa.23.1102.us, float %i.ey, float %i.fq)
  %i.fs = call float @llvm.fmuladd.f32(float %i.cc, float %i.ew, float %i.fr)
  %i.ft = call float @llvm.fmuladd.f32(float %i.by, float %i.ex, float %i.fs) ; 3 uses
  %i.fu = add nuw nsw i32 %.0103.us, 1            ; 2 uses
  %exitcond121.not = icmp eq i32 %i.fu, %3
  br i1 %exitcond121.not, label %._crit_edge.us, label %bb.j

._crit_edge.us:                                   ; preds = %_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit.us
  %i.fv = load float, ptr %i.b, align 4, !tbaa !36
  %i.fw = call float @llvm.fmuladd.f32(float %i.fv, float 2.000000e+00, float %.094107.us)
  %i.fx = shufflevector <2 x float> %i.fo, <2 x float> %i.fn, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.fy = fneg <2 x float> %i.fx                  ; 3 uses
  %i.fz = call noundef float @sinf(float noundef %i.az) #21, !tbaa !4 ; 3 uses
  %i.ga = fmul float %i.fz, 0.000000e+00          ; 3 uses
  %i.gb = call noundef float @cosf(float noundef %i.az) #21, !tbaa !4 ; 3 uses
  %i.gc = extractelement <2 x float> %i.fn, i64 0 ; 2 uses
  %i.gd = fmul float %i.gc, %i.gb
  %i.ge = insertelement <2 x float> poison, float %i.gb, i64 0
  %i.gf = shufflevector <2 x float> %i.ge, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gg = fmul <2 x float> %i.fo, %i.gf           ; 2 uses
  %i.gh = insertelement <2 x float> poison, float %i.ft, i64 0
  %i.gi = shufflevector <2 x float> %i.gh, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gj = insertelement <2 x float> poison, float %i.ga, i64 0 ; 2 uses
  %i.gk = insertelement <2 x float> %i.gj, float %i.fz, i64 1 ; 3 uses
  %i.gl = shufflevector <2 x float> %i.gg, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gm = insertelement <2 x float> %i.gl, float %i.gd, i64 0
  %i.gn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gi, <2 x float> %i.gk, <2 x float> %i.gm)
  %i.go = shufflevector <2 x float> %i.gk, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.gp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gi, <2 x float> %i.go, <2 x float> %i.gg)
  %i.gq = shufflevector <2 x float> %i.gj, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fo, <2 x float> %i.gq, <2 x float> %i.gn)
  %i.gs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fx, <2 x float> %i.gk, <2 x float> %i.gp)
  %i.gt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fy, <2 x float> %i.go, <2 x float> %i.gr)
  %i.gu = extractelement <2 x float> %i.fo, i64 0
  %i.gv = fneg float %i.gu                        ; 2 uses
  %i.gw = shufflevector <2 x float> %i.fy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gx = insertelement <2 x float> %i.gw, float %i.gv, i64 1
  %i.gy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gx, <2 x float> %i.gq, <2 x float> %i.gs)
  %i.gz = fneg float %i.ga
  %i.ha = fmul float %i.gc, %i.gz
  %i.hb = call float @llvm.fmuladd.f32(float %i.ft, float %i.gb, float %i.ha)
  %i.hc = call float @llvm.fmuladd.f32(float %i.gv, float %i.fz, float %i.hb)
  %i.hd = extractelement <2 x float> %i.fy, i64 0
  %i.he = call float @llvm.fmuladd.f32(float %i.hd, float %i.ga, float %i.hc)
  %i.hf = add nuw nsw i32 %.023112.us, 1          ; 2 uses
  %exitcond122.not = icmp eq i32 %i.hf, %2
  br i1 %exitcond122.not, label %._crit_edge113, label %.preheader.us
end_hunk_1
begin_hunk_2_@_ZN13BenchmarkDemo19createLargeMeshBodyEv:bb.a
  br i1 %i.s, label %.lr.ph.i.i.i.i, label %_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN20btAlignedObjectArrayI13btIndexedMeshE8allocateEi.exit.i.i.i
  %wide.trip.count.i.i.i.i = zext nneg i32 %.pre.i.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i.i, 1
  %i.t = icmp eq i32 %.pre.i.i, 1
  br i1 %i.t, label %.epil.preheader, label %.lr.ph.i.i.i.i.new

.lr.ph.i.i.i.i.new:                               ; preds = %.lr.ph.i.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i.i, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i.new
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.new ], [ %indvars.iv.next.i.i.i.i.1, %bb.c ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.new ], [ %niter.next.1, %bb.c ]
  %i.u = getelementptr inbounds nuw [48 x i8], ptr %i.r, i64 %indvars.iv.i.i.i.i
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !144
  %i.w = getelementptr inbounds nuw [48 x i8], ptr %i.v, i64 %indvars.iv.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.u, ptr noundef nonnull align 8 dereferenceable(48) %i.w, i64 48, i1 false), !tbaa.struct !154
  %indvars.iv.next.i.i.i.i = or disjoint i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.x = getelementptr inbounds nuw [48 x i8], ptr %i.r, i64 %indvars.iv.next.i.i.i.i
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !144
  %i.z = getelementptr inbounds nuw [48 x i8], ptr %i.y, i64 %indvars.iv.next.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull align 8 dereferenceable(48) %i.z, i64 48, i1 false), !tbaa.struct !154
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa, label %bb.c

_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.1, %_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod54 = trunc i32 %.pre.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod54)
  %i.aa = getelementptr inbounds nuw [48 x i8], ptr %i.r, i64 %indvars.iv.i.i.i.i.epil.init
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !144
  %i.ac = getelementptr inbounds nuw [48 x i8], ptr %i.ab, i64 %indvars.iv.i.i.i.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, ptr noundef nonnull align 8 dereferenceable(48) %i.ac, i64 48, i1 false), !tbaa.struct !154
  br label %_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i

_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI13btIndexedMeshE8allocateEi.exit.i.i.i
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !144 ; 2 uses
  %.not.i5.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i5.i.i.i, label %_ZN26btTriangleIndexVertexArray14addIndexedMeshERK13btIndexedMesh14PHY_ScalarType.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i
  %i.ae = load i8, ptr %i.d, align 8, !tbaa !140, !range !56, !noundef !57
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.e, label %_ZN26btTriangleIndexVertexArray14addIndexedMeshERK13btIndexedMesh14PHY_ScalarType.exit

bb.e:                                             ; preds = %bb.d
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ad)
  br label %_ZN26btTriangleIndexVertexArray14addIndexedMeshERK13btIndexedMesh14PHY_ScalarType.exit

_ZN26btTriangleIndexVertexArray14addIndexedMeshERK13btIndexedMesh14PHY_ScalarType.exit: ; preds = %_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i, %bb.d, %bb.e
  store i8 1, ptr %i.d, align 8, !tbaa !140
  store ptr %i.r, ptr %i.e, align 8, !tbaa !144
  store i32 1, ptr %i.g, align 8, !tbaa !146
  %.pre2.i.i = load i32, ptr %i.f, align 4, !tbaa !145
  %i.ag = sext i32 %.pre2.i.i to i64
  %i.ah = getelementptr inbounds [48 x i8], ptr %i.r, i64 %i.ag ; 8 uses
  store i32 %i.q, ptr %i.ah, align 8, !tbaa !4
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.n, ptr %.sroa.526.0..sroa_idx, align 8, !tbaa !155
  %.sroa.627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i32 6, ptr %.sroa.627.0..sroa_idx, align 8, !tbaa !4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  store i32 %i.l, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store ptr %i.j, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !155
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store i32 12, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 36
  store i32 3, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !157
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  store i32 0, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !157
  %i.ai = load i32, ptr %i.f, align 4, !tbaa !145 ; 2 uses
  %i.aj = add nsw i32 %i.ai, 1
  store i32 %i.aj, ptr %i.f, align 4, !tbaa !145
  %i.ak = sext i32 %i.ai to i64
  %i.al = getelementptr inbounds [48 x i8], ptr %i.r, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 36
  store i32 3, ptr %i.am, align 4, !tbaa !159
  %i.an = call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 96, i32 noundef 16) ; 3 uses
  invoke void @_ZN22btBvhTriangleMeshShapeC1EP23btStridingMeshInterfacebb(ptr noundef nonnull align 8 dereferenceable(93) %i.an, ptr noundef nonnull %i.b, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %_ZN26btTriangleIndexVertexArray14addIndexedMeshERK13btIndexedMesh14PHY_ScalarType.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.ao = call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 568, i32 noundef 16) ; 10 uses
  invoke void @_ZN11btRigidBodyC1EfP13btMotionStateP16btCollisionShapeRK9btVector3(ptr noundef nonnull align 8 dereferenceable(564) %i.ao, float noundef 0.000000e+00, ptr noundef null, ptr noundef nonnull %i.an, ptr noundef nonnull align 4 dereferenceable(16) %1)
          to label %_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ao)
          to label %_ZN17btCollisionObjectdlEPv.exit.i unwind label %bb.h

common.resume:                                    ; preds = %bb.i, %_ZN17btCollisionObjectdlEPv.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.ap, %_ZN17btCollisionObjectdlEPv.exit.i ], [ %i.ay, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_ZN17btCollisionObjectdlEPv.exit.i:               ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %common.resume

bb.h:                                             ; preds = %bb.g
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #23
  unreachable

_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit: ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store float 1.000000e+00, ptr %i.as, align 8
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %.sroa.730.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.529.0..sroa_idx, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %.sroa.730.16..sroa_idx, align 4
  %.sroa.831.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %.sroa.1032.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.831.16..sroa_idx, i8 0, i64 16, i1 false)
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float -2.500000e+01>, ptr %.sroa.1032.32..sroa_idx, align 8
  %.sroa.15.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  store <2 x float> zeroinitializer, ptr %.sroa.15.48..sroa_idx, align 8
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !8   ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !12
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 136
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(228) %i.at, ptr noundef nonnull %i.ao), !inline_history !75
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 236
  store float f0x3F666666, ptr %i.ax, align 4, !tbaa !161
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %bb.b, label %_ZN20btAlignedObjectArrayI13btIndexedMeshE8allocateEi.exit.i.i.i

bb.i:                                             ; preds = %_ZN26btTriangleIndexVertexArray14addIndexedMeshERK13btIndexedMesh14PHY_ScalarType.exit
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.an)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #23
  unreachable
}

declare void @_ZN22btBvhTriangleMeshShapeC1EP23btStridingMeshInterfacebb(ptr noundef nonnull align 8 dereferenceable(93), ptr noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #4

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #11

declare void @_ZN14btCapsuleShapeC1Eff(ptr noundef nonnull align 8 dereferenceable(68), float noundef, float noundef) unnamed_addr #4

; Function Attrs: uwtable
define dso_local void @_ZN13BenchmarkDemo8initRaysEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(136) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %class.btRaycastBar2, align 8       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @_ZN13btRaycastBar2C2Efff(ptr noundef nonnull align 8 dereferenceable(40060) %1, float noundef 2.500000e+03, float noundef 0.000000e+00, float noundef 5.000000e+01)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40060) @_ZL10raycastBar, ptr noundef nonnull align 8 dereferenceable(40060) %1, i64 40060, i1 false), !tbaa.struct !70
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN13btRaycastBar2C2Efff(ptr noundef nonnull align 8 dereferenceable(40060) %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
.preheader82.preheader:
  %.ptr29 = getelementptr inbounds nuw i8, ptr %0, i64 8000
  %.ptr34 = getelementptr inbounds nuw i8, ptr %0, i64 16000
  %.ptr44 = getelementptr inbounds nuw i8, ptr %0, i64 32000
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40024
  %i.b = tail call i32 @gettimeofday(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef null) #21 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40000
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40020
  store i32 0, ptr %i.d, align 4, !tbaa !162
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40016
  store i32 9999, ptr %i.e, align 8, !tbaa !166
  store <4 x i32> zeroinitializer, ptr %i.c, align 8, !tbaa !4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40040
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40044
  store <2 x float> <float 1.000000e+01, float 0.000000e+00>, ptr %i.f, align 8, !tbaa !36
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40048
  store float 0.000000e+00, ptr %i.h, align 8, !tbaa !167
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40052
  store float %3, ptr %i.i, align 4, !tbaa !168
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40056
  store float 1.000000e+00, ptr %i.j, align 8, !tbaa !169
  %i.k = insertelement <2 x float> poison, float %1, i64 0
  %i.l = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.b

bb.a:                                             ; preds = %bb.b
  ret void

bb.b:                                             ; preds = %.preheader82.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader82.preheader ], [ %indvars.iv.next, %bb.b ] ; 6 uses
  %i.m = trunc nuw nsw i64 %indvars.iv to i32
  %i.n = uitofp nneg i32 %i.m to float
  %i.o = fmul nnan float %i.n, f0x3CCDE32E
  %i.p = fmul nnan float %i.o, 5.000000e-01       ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %.ptr34, i64 %indvars.iv ; 2 uses
  %.sroa.566.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.r = tail call noundef float @sinf(float noundef %i.p) #21, !tbaa !4 ; 3 uses
  %i.s = insertelement <2 x float> poison, float %i.r, i64 0 ; 2 uses
  %i.t = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> zeroinitializer
  %i.u = fmul <2 x float> %i.t, <float 0.000000e+00, float 1.000000e+00> ; 3 uses
  %i.v = tail call noundef float @cosf(float noundef %i.p) #21, !tbaa !4 ; 5 uses
  %i.w = extractelement <2 x float> %i.u, i64 0   ; 5 uses
  %i.x = fadd float %i.v, %i.w
  %i.y = tail call float @llvm.fmuladd.f32(float %i.v, float 0.000000e+00, float %i.w)
  %i.z = fneg <2 x float> %i.u                    ; 4 uses
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ab = insertelement <2 x float> poison, float %i.x, i64 0
  %i.ac = insertelement <2 x float> %i.ab, float %i.y, i64 1
  %i.ad = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aa, <2 x float> zeroinitializer, <2 x float> %i.ac) ; 5 uses
  %i.ae = fmul ninf float %i.w, 0.000000e+00
  %i.af = tail call float @llvm.fmuladd.f32(float %i.v, float 0.000000e+00, float %i.ae)
  %i.ag = fsub float %i.af, %i.r                  ; 3 uses
  %i.ah = fmul float %i.r, -0.000000e+00
  %i.ai = fsub float %i.ah, %i.w
  %i.aj = extractelement <2 x float> %i.z, i64 0  ; 2 uses
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.aj, float 0.000000e+00, float %i.ai) ; 2 uses
  %i.al = insertelement <2 x float> poison, float %i.v, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = fmul <2 x float> %i.am, %i.ad
  %i.ao = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ap, <2 x float> %i.z, <2 x float> %i.an)
  %i.ar = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.as = insertelement <2 x float> %i.ar, float %i.ag, i64 1
  %i.at = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.as, <2 x float> %i.aa, <2 x float> %i.aq)
  %i.au = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> %i.u, <2 x i32> <i32 0, i32 2>
  %i.aw = shufflevector <2 x float> %i.s, <2 x float> %i.ad, <2 x i32> <i32 0, i32 2>
  %i.ax = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.av, <2 x float> %i.aw, <2 x float> %i.at)
  %i.ay = fmul float %i.v, %i.ag
  %i.az = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.aj, float %i.ay)
  %i.ba = extractelement <2 x float> %i.z, i64 1
  %i.bb = extractelement <2 x float> %i.ad, i64 0
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.ba, float %i.az)
  %i.bd = extractelement <2 x float> %i.ad, i64 1
  %i.be = tail call float @llvm.fmuladd.f32(float %i.bd, float %i.w, float %i.bc)
  %i.bf = fmul <2 x float> %i.l, %i.ax            ; 2 uses
  %i.bg = fmul float %1, %i.be                    ; 2 uses
  %.sroa.3.12.vec.insert.i46 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bg, i64 0
  store <2 x float> %i.bf, ptr %i.q, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i46, ptr %.sroa.566.0..sroa_idx, align 8, !tbaa !60
  %i.bh = load float, ptr %i.g, align 4, !tbaa !36 ; 2 uses
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv ; 4 uses
  store float %i.bh, ptr %i.bi, align 8
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  store float %3, ptr %.sroa.458.0..sroa_idx, align 4
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store float %2, ptr %.sroa.559.0..sroa_idx, align 8
  %.sroa.660.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  store float 0.000000e+00, ptr %.sroa.660.0..sroa_idx, align 4, !tbaa !60
  %4 = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.bj = insertelement <2 x float> %4, float %3, i64 1
  %i.bk = fadd <2 x float> %i.bj, %i.bf
  %i.bl = fadd float %2, %i.bg
  %.sroa.3.12.vec.insert.i51 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bl, i64 0
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %.ptr29, i64 %indvars.iv ; 3 uses
  store <2 x float> %i.bk, ptr %i.bm, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i51, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !60
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  store float -1.000000e+03, ptr %i.bn, align 4, !tbaa !36
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %.ptr44, i64 %indvars.iv
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.bo, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 500
  br i1 %exitcond.not, label %bb.a, label %bb.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN13btRaycastBar24castEP16btCollisionWorld(ptr noundef nonnull align 8 dereferenceable(40060) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.timeval, align 8            ; 5 uses
  %3 = alloca %"struct.btCollisionWorld::ClosestRayResultCallback", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40024 ; 2 uses
  %i.b = tail call i32 @gettimeofday(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef null) #21 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8000
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 26
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24000
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32000
  br label %bb.c

bb.b:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.o = call i32 @gettimeofday(ptr noundef nonnull %2, ptr noundef null) #21 ; 0 uses
  %i.p = load i64, ptr %2, align 8, !tbaa !170
  %i.q = load i64, ptr %i.a, align 8, !tbaa !171
  %i.r = sub nsw i64 %i.p, %i.q
  %i.s = mul nsw i64 %i.r, 1000
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !172
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40032
  %i.w = load i64, ptr %i.v, align 8, !tbaa !173
  %i.x = sub nsw i64 %i.u, %i.w
  %i.y = sdiv i64 %i.x, 1000
  %i.z = add nsw i64 %i.y, %i.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40004 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !174
  %i.ac = trunc i64 %i.z to i32
  %i.ad = add i32 %i.ab, %i.ac                    ; 4 uses
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !174
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40000 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !175 ; 2 uses
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ae, align 8, !tbaa !175
  %i.ah = icmp sgt i32 %i.af, 49
  br i1 %i.ah, label %bb.g, label %bb.h

bb.c:                                             ; preds = %bb.a, %bb.f
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.f ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %indvars.iv ; 3 uses
  store float 1.000000e+00, ptr %i.d, align 8, !tbaa !176
  store ptr null, ptr %i.e, align 8, !tbaa !180
  store i16 1, ptr %i.f, align 8, !tbaa !181
  store i16 -1, ptr %i.g, align 2, !tbaa !182
  store i32 0, ptr %i.h, align 4, !tbaa !183
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN16btCollisionWorld24ClosestRayResultCallbackE, i64 16), ptr %3, align 8, !tbaa !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false), !tbaa.struct !59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false), !tbaa.struct !59
  call void @_ZNK16btCollisionWorld7rayTestERK9btVector3S2_RNS_17RayResultCallbackE(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.ai, ptr noundef nonnull align 4 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.ak = load ptr, ptr %i.e, align 8, !tbaa !180
  %.not = icmp eq ptr %i.ak, null
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %indvars.iv ; 2 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %indvars.iv ; 5 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !59
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.ao = load float, ptr %i.an, align 8, !tbaa !36 ; 3 uses
  %i.ap = load <2 x float>, ptr %i.am, align 8, !tbaa !36 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.ap, %i.ap
  %i.aq = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ar = extractelement <2 x float> %i.ap, i64 0 ; 2 uses
  %i.as = call float @llvm.fmuladd.f32(float %i.ar, float %i.ar, float %i.aq)
  %i.at = call noundef float @llvm.fmuladd.f32(float %i.ao, float %i.ao, float %i.as)
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.at)
  %i.au = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.av = insertelement <2 x float> poison, float %i.au, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = fmul <2 x float> %i.ap, %i.aw
  store <2 x float> %i.ax, ptr %i.am, align 8, !tbaa !36
  %i.ay = fmul float %i.ao, %i.au
  store float %i.ay, ptr %i.an, align 8, !tbaa !36
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false), !tbaa.struct !59
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.am, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 500
  br i1 %exitcond.not, label %bb.b, label %bb.c

bb.g:                                             ; preds = %bb.b
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40016 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !166
  %. = call i32 @llvm.smin.i32(i32 %i.ad, i32 %i.ba)
  store i32 %., ptr %i.az, align 8, !tbaa !166
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 40020 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !162
  %i.bd = call i32 @llvm.smax.i32(i32 %i.ad, i32 %i.bc)
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !162
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 40008 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !184
  %i.bg = add nsw i32 %i.bf, %i.ad
  store i32 %i.bg, ptr %i.be, align 8, !tbaa !184
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40012 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !185
  %i.bj = add nsw i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !185
  store i32 0, ptr %i.aa, align 4, !tbaa !174
  store i32 0, ptr %i.ae, align 8, !tbaa !175
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN13BenchmarkDemo11exitPhysicsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !76   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.e = phi i32 [ %i.b, %.lr.ph ], [ %i.m, %bb.d ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !78
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !79   ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %i.h)
  %.pre = load i32, ptr %i.a, align 4, !tbaa !76
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = phi i32 [ %.pre, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.n = sext i32 %i.m to i64
  %i.o = icmp slt i64 %indvars.iv.next, %i.n
  br i1 %i.o, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !186  ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph34.preheader, label %.preheader

.lr.ph34.preheader:                               ; preds = %._crit_edge
  %i.u = zext nneg i32 %i.s to i64
  br label %.lr.ph34

.preheader:                                       ; preds = %bb.g, %._crit_edge
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !44   ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph36, label %._crit_edge37

.lr.ph36:                                         ; preds = %.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
end_hunk_2
