Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/clusterizer?download=true
inline.NumInlined: 72
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 35
begin_hunk_0_@meshopt_buildMeshletsFlex:bb.a
  br label %bb.w

bb.bq:                                            ; preds = %_ZN7meshoptL19getNeighborTriangleERK15meshopt_MeshletRKNS_4ConeEPKjS7_RKNS_18TriangleAdjacency2EPS4_S7_PKsff.exit.thread
  br i1 %i.tc, label %.lr.ph.i322.preheader, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.akw = add i64 %.0207, 1
  %i.akx = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0207 ; 4 uses
  store i32 %.sroa.0336.0, ptr %i.akx, align 4, !tbaa !21
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.akx, i64 4
  store i32 %.sroa.13.0, ptr %.sroa.13.0..sroa_idx, align 4, !tbaa !21
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.akx, i64 8
  store i32 %.sroa.18.0, ptr %.sroa.18.0..sroa_idx, align 4, !tbaa !21
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.akx, i64 12
  store i32 %.sroa.29.0, ptr %.sroa.29.0..sroa_idx, align 4, !tbaa !21
  br label %.lr.ph.i322.preheader

.lr.ph.i322.preheader:                            ; preds = %bb.bq, %bb.br
  %.3 = phi i64 [ %i.akw, %bb.br ], [ %.0207, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.aky = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !31
  %i.akz = getelementptr inbounds nuw i8, ptr %13, i64 56
  %i.ala = load ptr, ptr %i.akz, align 8, !tbaa !20
  invoke void %i.aky(ptr noundef %i.ala)
          to label %.lr.ph.i322.1 unwind label %bb.bs

.lr.ph.i322.1:                                    ; preds = %.lr.ph.i322.preheader
  %i.alb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !31
  %i.alc = getelementptr inbounds nuw i8, ptr %13, i64 48
  %i.ald = load ptr, ptr %i.alc, align 8, !tbaa !20
  invoke void %i.alb(ptr noundef %i.ald)
          to label %.lr.ph.i322.2 unwind label %bb.bs

.lr.ph.i322.2:                                    ; preds = %.lr.ph.i322.1
  %i.ale = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !31
  %i.alf = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.alg = load ptr, ptr %i.alf, align 8, !tbaa !20
  invoke void %i.ale(ptr noundef %i.alg)
          to label %.lr.ph.i322.3 unwind label %bb.bs

.lr.ph.i322.3:                                    ; preds = %.lr.ph.i322.2
  %i.alh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !31
  %i.ali = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.alj = load ptr, ptr %i.ali, align 8, !tbaa !20
  invoke void %i.alh(ptr noundef %i.alj)
          to label %.lr.ph.i322.4 unwind label %bb.bs

.lr.ph.i322.4:                                    ; preds = %.lr.ph.i322.3
  %i.alk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !31
  %i.all = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.alm = load ptr, ptr %i.all, align 8, !tbaa !20
  invoke void %i.alk(ptr noundef %i.alm)
          to label %.lr.ph.i322.5 unwind label %bb.bs

.lr.ph.i322.5:                                    ; preds = %.lr.ph.i322.4
  %i.aln = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !31
  %i.alo = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.alp = load ptr, ptr %i.alo, align 8, !tbaa !20
  invoke void %i.aln(ptr noundef %i.alp)
          to label %.lr.ph.i322.6 unwind label %bb.bs

.lr.ph.i322.6:                                    ; preds = %.lr.ph.i322.5
  %i.alq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !31
  %i.alr = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.als = load ptr, ptr %i.alr, align 8, !tbaa !20
  invoke void %i.alq(ptr noundef %i.als)
          to label %.lr.ph.i322.7 unwind label %bb.bs

.lr.ph.i322.7:                                    ; preds = %.lr.ph.i322.6
  %i.alt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !31
  %i.alu = load ptr, ptr %13, align 8, !tbaa !20
  invoke void %i.alt(ptr noundef %i.alu)
          to label %_ZN17meshopt_AllocatorD2Ev.exit unwind label %bb.bs

_ZN17meshopt_AllocatorD2Ev.exit:                  ; preds = %.lr.ph.i322.7
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  br label %bb.bt

bb.bs:                                            ; preds = %.lr.ph.i322.7, %.lr.ph.i322.6, %.lr.ph.i322.5, %.lr.ph.i322.4, %.lr.ph.i322.3, %.lr.ph.i322.2, %.lr.ph.i322.1, %.lr.ph.i322.preheader
  %i.alv = landingpad { ptr, i32 }
          catch ptr null
  %i.alw = extractvalue { ptr, i32 } %i.alv, 0
  tail call void @__clang_call_terminate(ptr %i.alw) #16
  unreachable

bb.bt:                                            ; preds = %bb.a, %_ZN17meshopt_AllocatorD2Ev.exit
  %.0202 = phi i64 [ %.3, %_ZN17meshopt_AllocatorD2Ev.exit ], [ 0, %bb.a ]
  ret i64 %.0202
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef i64 @_ZN7meshoptL11kdtreeBuildEmPNS_6KDNodeEmPKfmPjmmi(i64 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) unnamed_addr #5 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 5 uses
  %i.b = icmp ult i64 %4, 9
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %0 ; 16 uses
  %i.d = load i32, ptr %3, align 4, !tbaa !21
  store i32 %i.d, ptr %i.c, align 4, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.f = trunc nuw nsw i64 %4 to i32
  %i.g = shl nuw nsw i32 %i.f, 2
  %i.h = or disjoint i32 %i.g, 3
  store i32 %i.h, ptr %i.e, align 4
  %i.i = icmp samesign ugt i64 %4, 1
  br i1 %i.i, label %.lr.ph.i, label %_ZN7meshoptL15kdtreeBuildLeafEmPNS_6KDNodeEmPjm.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.c, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !21
  store i32 %i.l, ptr %i.j, align 4, !tbaa !30
  %i.m = getelementptr i8, ptr %i.c, i64 12
  store i32 -1, ptr %i.m, align 4
  %exitcond.not.i = icmp eq i64 %4, 2
  br i1 %exitcond.not.i, label %_ZN7meshoptL15kdtreeBuildLeafEmPNS_6KDNodeEmPjm.exit, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.n = getelementptr i8, ptr %i.c, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = load i32, ptr %i.o, align 4, !tbaa !21
  store i32 %i.p, ptr %i.n, align 4, !tbaa !30
  %i.q = getelementptr i8, ptr %i.c, i64 20
  store i32 -1, ptr %i.q, align 4
  %exitcond.not.i.1 = icmp eq i64 %4, 3
  br i1 %exitcond.not.i.1, label %_ZN7meshoptL15kdtreeBuildLeafEmPNS_6KDNodeEmPjm.exit, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.r = getelementptr i8, ptr %i.c, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !21
  store i32 %i.t, ptr %i.r, align 4, !tbaa !30
  %i.u = getelementptr i8, ptr %i.c, i64 28
  store i32 -1, ptr %i.u, align 4
  %exitcond.not.i.2 = icmp eq i64 %4, 4
  br i1 %exitcond.not.i.2, label %_ZN7meshoptL15kdtreeBuildLeafEmPNS_6KDNodeEmPjm.exit, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.v = getelementptr i8, ptr %i.c, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.x = load i32, ptr %i.w, align 4, !tbaa !21
  store i32 %i.x, ptr %i.v, align 4, !tbaa !30
  %i.y = getelementptr i8, ptr %i.c, i64 36
  store i32 -1, ptr %i.y, align 4
  %exitcond.not.i.3 = icmp eq i64 %4, 5
  br i1 %exitcond.not.i.3, label %_ZN7meshoptL15kdtreeBuildLeafEmPNS_6KDNodeEmPjm.exit, label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %.lr.ph.i.3
  %i.z = getelementptr i8, ptr %i.c, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !21
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !30
  %i.ac = getelementptr i8, ptr %i.c, i64 44
  store i32 -1, ptr %i.ac, align 4
  %exitcond.not.i.4 = icmp eq i64 %4, 6
  br i1 %exitcond.not.i.4, label %_ZN7meshoptL15kdtreeBuildLeafEmPNS_6KDNodeEmPjm.exit, label %.lr.ph.i.5

.lr.ph.i.5:                                       ; preds = %.lr.ph.i.4
  %i.ad = getelementptr i8, ptr %i.c, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !21
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !30
  %i.ag = getelementptr i8, ptr %i.c, i64 52
  store i32 -1, ptr %i.ag, align 4
  %exitcond.not.i.5 = icmp eq i64 %4, 7
  br i1 %exitcond.not.i.5, label %_ZN7meshoptL15kdtreeBuildLeafEmPNS_6KDNodeEmPjm.exit, label %.lr.ph.i.6

.lr.ph.i.6:                                       ; preds = %.lr.ph.i.5
  %i.ah = getelementptr i8, ptr %i.c, i64 56
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !21
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !30
  %i.ak = getelementptr i8, ptr %i.c, i64 60
  store i32 -1, ptr %i.ak, align 4
  br label %_ZN7meshoptL15kdtreeBuildLeafEmPNS_6KDNodeEmPjm.exit

_ZN7meshoptL15kdtreeBuildLeafEmPNS_6KDNodeEmPjm.exit: ; preds = %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %.lr.ph.i.4, %.lr.ph.i.5, %.lr.ph.i.6, %bb.b
  %i.al = add i64 %4, %0
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.e

.lr.ph.i91:                                       ; preds = %bb.e
  store <2 x float> %i.cn, ptr %i.a, align 8, !tbaa !27
  store float %i.cu, ptr %i.am, align 8, !tbaa !27
  %i.an = insertelement <2 x float> poison, float %i.cq, i64 0
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ap = fcmp ult <2 x float> %i.ao, %i.cz
  %6 = freeze <2 x i1> %i.ap
  %7 = bitcast <2 x i1> %6 to i2
  %or.cond90.not = icmp eq i2 %7, 0
  %i.aq = extractelement <2 x float> %i.cz, i64 0
  %i.ar = extractelement <2 x float> %i.cz, i64 1
  %i.as = fcmp oge float %i.ar, %i.aq
  %i.at = select i1 %i.as, i32 1, i32 2
  %i.au = select i1 %or.cond90.not, i32 0, i32 %i.at ; 2 uses
  %i.av = zext nneg i32 %i.au to i64              ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.av
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !27 ; 4 uses
  %invariant.gep.i = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.av ; 3 uses
  %xtraiter = and i64 %4, 1
  %unroll_iter = and i64 %4, -2
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i91
  %.022.i = phi i64 [ 0, %.lr.ph.i91 ], [ %i.bq, %bb.d ] ; 2 uses
  %.02021.i = phi i64 [ 0, %.lr.ph.i91 ], [ %i.br, %bb.d ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i91 ], [ %niter.next.1, %bb.d ]
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.02021.i ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !21 ; 2 uses
  %i.ba = zext i32 %i.az to i64
  %.idx.i = mul nuw nsw i64 %i.ba, 24
  %gep.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %.idx.i
  %i.bb = load float, ptr %gep.i, align 4, !tbaa !27
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.022.i ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !21
  store i32 %i.az, ptr %i.bc, align 4, !tbaa !21
  store i32 %i.bd, ptr %i.ay, align 4, !tbaa !21
  %i.be = fcmp olt float %i.bb, %i.ax
  %i.bf = zext i1 %i.be to i64
  %i.bg = add i64 %.022.i, %i.bf                  ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.02021.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !21 ; 2 uses
  %i.bk = zext i32 %i.bj to i64
  %.idx.i.1 = mul nuw nsw i64 %i.bk, 24
  %gep.i.1 = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %.idx.i.1
  %i.bl = load float, ptr %gep.i.1, align 4, !tbaa !27
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bg ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !21
  store i32 %i.bj, ptr %i.bm, align 4, !tbaa !21
  store i32 %i.bn, ptr %i.bi, align 4, !tbaa !21
  %i.bo = fcmp olt float %i.bl, %i.ax
  %i.bp = zext i1 %i.bo to i64
  %i.bq = add i64 %i.bg, %i.bp                    ; 4 uses
  %i.br = add nuw i64 %.02021.i, 2                ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN7meshoptL15kdtreePartitionEPjmPKfmif.exit.unr-lcssa, label %bb.d, !llvm.loop !77

_ZN7meshoptL15kdtreePartitionEPjmPKfmif.exit.unr-lcssa: ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN7meshoptL15kdtreePartitionEPjmPKfmif.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN7meshoptL15kdtreePartitionEPjmPKfmif.exit.unr-lcssa
  %lcmp.mod19 = trunc i64 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod19)
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.br ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !21 ; 2 uses
  %i.bu = zext i32 %i.bt to i64
  %.idx.i.epil = mul nuw nsw i64 %i.bu, 24
  %gep.i.epil = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %.idx.i.epil
  %i.bv = load float, ptr %gep.i.epil, align 4, !tbaa !27
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bq ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !21
  store i32 %i.bt, ptr %i.bw, align 4, !tbaa !21
  store i32 %i.bx, ptr %i.bs, align 4, !tbaa !21
  %i.by = fcmp olt float %i.bv, %i.ax
  %i.bz = zext i1 %i.by to i64
  %i.ca = add i64 %i.bq, %i.bz
  br label %_ZN7meshoptL15kdtreePartitionEPjmPKfmif.exit

_ZN7meshoptL15kdtreePartitionEPjmPKfmif.exit:     ; preds = %_ZN7meshoptL15kdtreePartitionEPjmPKfmif.exit.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.bq, %_ZN7meshoptL15kdtreePartitionEPjmPKfmif.exit.unr-lcssa ], [ %i.ca, %.epil.preheader ] ; 5 uses
  %i.cb = icmp ult i64 %.lcssa, 5
  br i1 %i.cb, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.e
  %i.cc = phi float [ 0.000000e+00, %bb.c ], [ %i.cu, %bb.e ] ; 2 uses
  %.sroa.0.0 = phi float [ 0.000000e+00, %bb.c ], [ %i.cq, %bb.e ]
  %.077100 = phi float [ 1.000000e+00, %bb.c ], [ %i.db, %bb.e ]
  %.07899 = phi float [ 1.000000e+00, %bb.c ], [ %i.dc, %bb.e ] ; 2 uses
  %.08098 = phi i64 [ 0, %bb.c ], [ %i.da, %bb.e ] ; 2 uses
  %i.cd = phi <2 x float> [ zeroinitializer, %bb.c ], [ %i.cn, %bb.e ] ; 2 uses
  %i.ce = phi <2 x float> [ zeroinitializer, %bb.c ], [ %i.cz, %bb.e ]
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.08098
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !21
  %i.ch = zext i32 %i.cg to i64
  %.idx = mul nuw nsw i64 %i.ch, 24
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %i.cj = load <2 x float>, ptr %i.ci, align 4, !tbaa !27 ; 3 uses
  %i.ck = fsub <2 x float> %i.cj, %i.cd           ; 3 uses
  %i.cl = insertelement <2 x float> poison, float %.07899, i64 0
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ck, <2 x float> %i.cm, <2 x float> %i.cd) ; 4 uses
  %foldExtExtBinop = fsub <2 x float> %i.cj, %i.cn
  %i.co = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.cp = extractelement <2 x float> %i.ck, i64 0
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.co, float %.sroa.0.0) ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !27 ; 2 uses
  %i.ct = fsub float %i.cs, %i.cc                 ; 2 uses
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.ct, float %.07899, float %i.cc) ; 3 uses
  %i.cv = insertelement <2 x float> %i.cj, float %i.cs, i64 0
  %i.cw = insertelement <2 x float> %i.cn, float %i.cu, i64 0
  %i.cx = fsub <2 x float> %i.cv, %i.cw
  %i.cy = insertelement <2 x float> %i.ck, float %i.ct, i64 0
  %i.cz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cy, <2 x float> %i.cx, <2 x float> %i.ce) ; 4 uses
  %i.da = add nuw i64 %.08098, 1                  ; 2 uses
  %i.db = fadd float %.077100, 1.000000e+00       ; 2 uses
  %i.dc = fdiv float 1.000000e+00, %i.db
  %exitcond.not = icmp eq i64 %i.da, %4
  br i1 %exitcond.not, label %.lr.ph.i91, label %bb.e, !llvm.loop !78

bb.f:                                             ; preds = %_ZN7meshoptL15kdtreePartitionEPjmPKfmif.exit
  %i.dd = add i64 %4, -4
  %i.de = icmp uge i64 %.lcssa, %i.dd
  %i.df = icmp sgt i32 %5, 49
  %or.cond = or i1 %i.df, %i.de
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %_ZN7meshoptL15kdtreePartitionEPjmPKfmif.exit
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %0 ; 9 uses
  %i.dh = load i32, ptr %3, align 4, !tbaa !21
  store i32 %i.dh, ptr %i.dg, align 4, !tbaa !30
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %i.dj = trunc i64 %4 to i32
  %i.dk = shl i32 %i.dj, 2
  %i.dl = or disjoint i32 %i.dk, 3
  store i32 %i.dl, ptr %i.di, align 4
  %i.dm = add i64 %4, -1                          ; 2 uses
  %min.iters.check = icmp ult i64 %4, 43
  br i1 %min.iters.check, label %.lr.ph.i93.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %bb.g
  %i.dn = add i64 %4, -2                          ; 2 uses
  %i.do = shl i64 %0, 3
  %i.dp = getelementptr i8, ptr %1, i64 %i.do
  %scevgep = getelementptr i8, ptr %i.dp, i64 8   ; 2 uses
  %mul.result = shl i64 %i.dn, 3
  %mul.overflow = icmp ugt i64 %i.dn, 2305843009213693951
  %i.dq = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.dr = icmp ult ptr %i.dq, %scevgep
  %i.ds = or i1 %i.dr, %mul.overflow
  br i1 %i.ds, label %.lr.ph.i93.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.dt = shl i64 %0, 3
  %i.du = getelementptr i8, ptr %1, i64 %i.dt
  %i.dv = getelementptr i8, ptr %i.du, i64 8
  %i.dw = add i64 %4, %0
  %i.dx = shl i64 %i.dw, 3
  %i.dy = getelementptr i8, ptr %1, i64 %i.dx
  %i.dz = getelementptr i8, ptr %3, i64 4
  %i.ea = shl nuw i64 %4, 2
  %i.eb = getelementptr i8, ptr %3, i64 %i.ea
  %bound0 = icmp ult ptr %i.dv, %i.eb
  %bound1 = icmp ult ptr %i.dz, %i.dy
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i93.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dm, -4                      ; 3 uses
  %i.ec = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ed = or disjoint i64 %index, 1               ; 2 uses
  %i.ee = getelementptr [8 x i8], ptr %i.dg, i64 %i.ed
  %i.ef = getelementptr [8 x i8], ptr %i.dg, i64 %index
  %i.eg = getelementptr i8, ptr %i.ef, i64 24
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ed ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %wide.load = load <2 x i32>, ptr %i.eh, align 4, !tbaa !21, !alias.scope !85
  %wide.load11 = load <2 x i32>, ptr %i.ei, align 4, !tbaa !21, !alias.scope !85
  %interleaved.vec = shufflevector <2 x i32> %wide.load, <2 x i32> splat (i32 -1), <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.ee, align 4, !alias.scope !86, !noalias !85
  %interleaved.vec12 = shufflevector <2 x i32> %wide.load11, <2 x i32> splat (i32 -1), <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec12, ptr %i.eg, align 4, !alias.scope !86, !noalias !85
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ej = icmp eq i64 %index.next, %n.vec
  br i1 %i.ej, label %middle.block, label %vector.body, !llvm.loop !82

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dm, %n.vec
  br i1 %cmp.n, label %_ZN7meshoptL15kdtreeBuildLeafEmPNS_6KDNodeEmPjm.exit96, label %.lr.ph.i93.preheader

.lr.ph.i93.preheader:                             ; preds = %vector.memcheck, %vector.scevcheck, %bb.g, %middle.block
  %.020.i94.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %vector.scevcheck ], [ 1, %bb.g ], [ %i.ec, %middle.block ] ; 4 uses
  %i.ek = sub i64 %4, %.020.i94.ph
  %xtraiter20 = and i64 %i.ek, 3                  ; 2 uses
  %lcmp.mod21.not = icmp eq i64 %xtraiter20, 0
  br i1 %lcmp.mod21.not, label %.lr.ph.i93.prol.loopexit, label %.lr.ph.i93.prol

.lr.ph.i93.prol:                                  ; preds = %.lr.ph.i93.preheader, %.lr.ph.i93.prol
  %.020.i94.prol = phi i64 [ %i.ep, %.lr.ph.i93.prol ], [ %.020.i94.ph, %.lr.ph.i93.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i93.prol ], [ 0, %.lr.ph.i93.preheader ]
  %i.el = getelementptr [8 x i8], ptr %i.dg, i64 %.020.i94.prol ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.020.i94.prol
  %i.en = load i32, ptr %i.em, align 4, !tbaa !21
  store i32 %i.en, ptr %i.el, align 4, !tbaa !30
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  store i32 -1, ptr %i.eo, align 4
  %i.ep = add nuw i64 %.020.i94.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
end_hunk_0
