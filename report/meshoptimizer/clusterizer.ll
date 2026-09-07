Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/clusterizer?download=true
inline.NumInlined: 72
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 35
begin_hunk_0_@meshopt_buildMeshletsFlex:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.alb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !31
  %i.alc = getelementptr inbounds nuw i8, ptr %13, i64 56
  %i.ald = load ptr, ptr %i.alc, align 8, !tbaa !20
  invoke void %i.alb(ptr noundef %i.ald)
          to label %.lr.ph.i322.1 unwind label %bb.bx

.lr.ph.i322.1:                                    ; preds = %.lr.ph.i322.preheader
  %i.ale = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !31
  %i.alf = getelementptr inbounds nuw i8, ptr %13, i64 48
  %i.alg = load ptr, ptr %i.alf, align 8, !tbaa !20
  invoke void %i.ale(ptr noundef %i.alg)
          to label %.lr.ph.i322.2 unwind label %bb.bx

.lr.ph.i322.2:                                    ; preds = %.lr.ph.i322.1
  %i.alh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !31
  %i.ali = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.alj = load ptr, ptr %i.ali, align 8, !tbaa !20
  invoke void %i.alh(ptr noundef %i.alj)
          to label %.lr.ph.i322.3 unwind label %bb.bx

.lr.ph.i322.3:                                    ; preds = %.lr.ph.i322.2
  %i.alk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !31
  %i.all = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.alm = load ptr, ptr %i.all, align 8, !tbaa !20
  invoke void %i.alk(ptr noundef %i.alm)
          to label %.lr.ph.i322.4 unwind label %bb.bx

.lr.ph.i322.4:                                    ; preds = %.lr.ph.i322.3
  %i.aln = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !31
  %i.alo = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.alp = load ptr, ptr %i.alo, align 8, !tbaa !20
  invoke void %i.aln(ptr noundef %i.alp)
          to label %.lr.ph.i322.5 unwind label %bb.bx

.lr.ph.i322.5:                                    ; preds = %.lr.ph.i322.4
  %i.alq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !31
  %i.alr = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.als = load ptr, ptr %i.alr, align 8, !tbaa !20
  invoke void %i.alq(ptr noundef %i.als)
          to label %.lr.ph.i322.6 unwind label %bb.bx

.lr.ph.i322.6:                                    ; preds = %.lr.ph.i322.5
  %i.alt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !31
  %i.alu = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.alv = load ptr, ptr %i.alu, align 8, !tbaa !20
  invoke void %i.alt(ptr noundef %i.alv)
          to label %.lr.ph.i322.7 unwind label %bb.bx

.lr.ph.i322.7:                                    ; preds = %.lr.ph.i322.6
  %i.alw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !31
  %i.alx = load ptr, ptr %13, align 8, !tbaa !20
  invoke void %i.alw(ptr noundef %i.alx)
          to label %_ZN17meshopt_AllocatorD2Ev.exit unwind label %bb.bx

_ZN17meshopt_AllocatorD2Ev.exit:                  ; preds = %.lr.ph.i322.7
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  br label %bb.bz

bb.bx:                                            ; preds = %.lr.ph.i322.7, %.lr.ph.i322.6, %.lr.ph.i322.5, %.lr.ph.i322.4, %.lr.ph.i322.3, %.lr.ph.i322.2, %.lr.ph.i322.1, %.lr.ph.i322.preheader
  %i.aly = landingpad { ptr, i32 }
          catch ptr null
  %i.alz = extractvalue { ptr, i32 } %i.aly, 0
  tail call void @__clang_call_terminate(ptr %i.alz) #16
  unreachable

bb.by:                                            ; preds = %bb.t, %bb.v, %bb.aa, %bb.x, %bb.u, %bb.m
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fh, %bb.m ], [ %i.pl, %bb.t ], [ %i.pm, %bb.u ], [ %i.pn, %bb.v ], [ %i.qg, %bb.x ], [ %i.sm, %bb.aa ]
  call void @_ZN17meshopt_AllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %13) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn

bb.bz:                                            ; preds = %bb.a, %_ZN17meshopt_AllocatorD2Ev.exit
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
  store <2 x float> %i.cp, ptr %i.a, align 8, !tbaa !27
  store float %i.cw, ptr %i.am, align 8, !tbaa !27
  %i.an = insertelement <2 x float> poison, float %i.cs, i64 0
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ap = fcmp ult <2 x float> %i.ao, %i.db       ; 2 uses
  %i.aq = extractelement <2 x i1> %i.ap, i64 0
  %i.ar = extractelement <2 x i1> %i.ap, i64 1
  %or.cond90 = select i1 %i.ar, i1 true, i1 %i.aq
  %i.as = extractelement <2 x float> %i.db, i64 0
  %i.at = extractelement <2 x float> %i.db, i64 1
  %i.au = fcmp oge float %i.at, %i.as
  %i.av = select i1 %i.au, i32 1, i32 2
  %i.aw = select i1 %or.cond90, i32 %i.av, i32 0  ; 2 uses
  %i.ax = zext nneg i32 %i.aw to i64              ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ax
  %i.az = load float, ptr %i.ay, align 4, !tbaa !27 ; 4 uses
  %invariant.gep.i = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ax ; 3 uses
  %xtraiter = and i64 %4, 1
  %unroll_iter = and i64 %4, -2
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i91
  %.022.i = phi i64 [ 0, %.lr.ph.i91 ], [ %i.bs, %bb.d ] ; 2 uses
  %.02021.i = phi i64 [ 0, %.lr.ph.i91 ], [ %i.bt, %bb.d ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i91 ], [ %niter.next.1, %bb.d ]
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.02021.i ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !21 ; 2 uses
  %i.bc = zext i32 %i.bb to i64
  %.idx.i = mul nuw nsw i64 %i.bc, 24
  %gep.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %.idx.i
  %i.bd = load float, ptr %gep.i, align 4, !tbaa !27
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.022.i ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !21
  store i32 %i.bb, ptr %i.be, align 4, !tbaa !21
  store i32 %i.bf, ptr %i.ba, align 4, !tbaa !21
  %i.bg = fcmp olt float %i.bd, %i.az
  %i.bh = zext i1 %i.bg to i64
  %i.bi = add i64 %.022.i, %i.bh                  ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.02021.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !21 ; 2 uses
  %i.bm = zext i32 %i.bl to i64
  %.idx.i.1 = mul nuw nsw i64 %i.bm, 24
  %gep.i.1 = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %.idx.i.1
  %i.bn = load float, ptr %gep.i.1, align 4, !tbaa !27
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bi ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !21
  store i32 %i.bl, ptr %i.bo, align 4, !tbaa !21
  store i32 %i.bp, ptr %i.bk, align 4, !tbaa !21
  %i.bq = fcmp olt float %i.bn, %i.az
  %i.br = zext i1 %i.bq to i64
  %i.bs = add i64 %i.bi, %i.br                    ; 4 uses
  %i.bt = add nuw i64 %.02021.i, 2                ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN7meshoptL15kdtreePartitionEPjmPKfmif.exit.unr-lcssa, label %bb.d, !llvm.loop !77

_ZN7meshoptL15kdtreePartitionEPjmPKfmif.exit.unr-lcssa: ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN7meshoptL15kdtreePartitionEPjmPKfmif.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN7meshoptL15kdtreePartitionEPjmPKfmif.exit.unr-lcssa
  %lcmp.mod19 = trunc i64 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod19)
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bt ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !21 ; 2 uses
  %i.bw = zext i32 %i.bv to i64
  %.idx.i.epil = mul nuw nsw i64 %i.bw, 24
  %gep.i.epil = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %.idx.i.epil
  %i.bx = load float, ptr %gep.i.epil, align 4, !tbaa !27
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bs ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !21
  store i32 %i.bv, ptr %i.by, align 4, !tbaa !21
  store i32 %i.bz, ptr %i.bu, align 4, !tbaa !21
  %i.ca = fcmp olt float %i.bx, %i.az
  %i.cb = zext i1 %i.ca to i64
  %i.cc = add i64 %i.bs, %i.cb
  br label %_ZN7meshoptL15kdtreePartitionEPjmPKfmif.exit

_ZN7meshoptL15kdtreePartitionEPjmPKfmif.exit:     ; preds = %_ZN7meshoptL15kdtreePartitionEPjmPKfmif.exit.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.bs, %_ZN7meshoptL15kdtreePartitionEPjmPKfmif.exit.unr-lcssa ], [ %i.cc, %.epil.preheader ] ; 5 uses
  %i.cd = icmp ult i64 %.lcssa, 5
  br i1 %i.cd, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.e
  %i.ce = phi float [ 0.000000e+00, %bb.c ], [ %i.cw, %bb.e ] ; 2 uses
  %.sroa.0.0 = phi float [ 0.000000e+00, %bb.c ], [ %i.cs, %bb.e ]
  %.077100 = phi float [ 1.000000e+00, %bb.c ], [ %i.dd, %bb.e ]
  %.07899 = phi float [ 1.000000e+00, %bb.c ], [ %i.de, %bb.e ] ; 2 uses
  %.08098 = phi i64 [ 0, %bb.c ], [ %i.dc, %bb.e ] ; 2 uses
  %i.cf = phi <2 x float> [ zeroinitializer, %bb.c ], [ %i.cp, %bb.e ] ; 2 uses
  %i.cg = phi <2 x float> [ zeroinitializer, %bb.c ], [ %i.db, %bb.e ]
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.08098
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !21
  %i.cj = zext i32 %i.ci to i64
  %.idx = mul nuw nsw i64 %i.cj, 24
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %i.cl = load <2 x float>, ptr %i.ck, align 4, !tbaa !27 ; 3 uses
  %i.cm = fsub <2 x float> %i.cl, %i.cf           ; 3 uses
  %i.cn = insertelement <2 x float> poison, float %.07899, i64 0
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cm, <2 x float> %i.co, <2 x float> %i.cf) ; 4 uses
  %foldExtExtBinop = fsub <2 x float> %i.cl, %i.cp
  %i.cq = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.cr = extractelement <2 x float> %i.cm, i64 0
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.cr, float %i.cq, float %.sroa.0.0) ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !27 ; 2 uses
  %i.cv = fsub float %i.cu, %i.ce                 ; 2 uses
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.cv, float %.07899, float %i.ce) ; 3 uses
  %i.cx = insertelement <2 x float> %i.cl, float %i.cu, i64 0
  %i.cy = insertelement <2 x float> %i.cp, float %i.cw, i64 0
  %i.cz = fsub <2 x float> %i.cx, %i.cy
  %i.da = insertelement <2 x float> %i.cm, float %i.cv, i64 0
  %i.db = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.da, <2 x float> %i.cz, <2 x float> %i.cg) ; 4 uses
  %i.dc = add nuw i64 %.08098, 1                  ; 2 uses
  %i.dd = fadd float %.077100, 1.000000e+00       ; 2 uses
  %i.de = fdiv float 1.000000e+00, %i.dd
  %exitcond.not = icmp eq i64 %i.dc, %4
  br i1 %exitcond.not, label %.lr.ph.i91, label %bb.e, !llvm.loop !78

bb.f:                                             ; preds = %_ZN7meshoptL15kdtreePartitionEPjmPKfmif.exit
  %i.df = add i64 %4, -4
  %i.dg = icmp uge i64 %.lcssa, %i.df
  %i.dh = icmp sgt i32 %5, 49
  %or.cond = or i1 %i.dh, %i.dg
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %_ZN7meshoptL15kdtreePartitionEPjmPKfmif.exit
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %0 ; 9 uses
  %i.dj = load i32, ptr %3, align 4, !tbaa !21
  store i32 %i.dj, ptr %i.di, align 4, !tbaa !30
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  %i.dl = trunc i64 %4 to i32
  %i.dm = shl i32 %i.dl, 2
  %i.dn = or disjoint i32 %i.dm, 3
  store i32 %i.dn, ptr %i.dk, align 4
  %i.do = add i64 %4, -1                          ; 2 uses
  %min.iters.check = icmp ult i64 %4, 43
  br i1 %min.iters.check, label %.lr.ph.i93.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %bb.g
  %i.dp = add i64 %4, -2                          ; 2 uses
  %i.dq = shl i64 %0, 3
  %i.dr = getelementptr i8, ptr %1, i64 %i.dq
  %scevgep = getelementptr i8, ptr %i.dr, i64 8   ; 2 uses
  %mul.result = shl i64 %i.dp, 3
  %mul.overflow = icmp ugt i64 %i.dp, 2305843009213693951
  %i.ds = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.dt = icmp ult ptr %i.ds, %scevgep
  %i.du = or i1 %i.dt, %mul.overflow
  br i1 %i.du, label %.lr.ph.i93.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.dv = shl i64 %0, 3
  %i.dw = getelementptr i8, ptr %1, i64 %i.dv
  %scevgep7 = getelementptr i8, ptr %i.dw, i64 8
  %i.dx = add i64 %4, %0
  %i.dy = shl i64 %i.dx, 3
  %scevgep8 = getelementptr i8, ptr %1, i64 %i.dy
  %scevgep9 = getelementptr i8, ptr %3, i64 4
  %i.dz = shl nuw i64 %4, 2
  %scevgep10 = getelementptr i8, ptr %3, i64 %i.dz
  %bound0 = icmp ult ptr %scevgep7, %scevgep10
  %bound1 = icmp ult ptr %scevgep9, %scevgep8
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i93.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.do, -4                      ; 3 uses
  %i.ea = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.eb = or disjoint i64 %index, 1               ; 2 uses
  %i.ec = getelementptr [8 x i8], ptr %i.di, i64 %i.eb
  %i.ed = getelementptr [8 x i8], ptr %i.di, i64 %index
  %i.ee = getelementptr i8, ptr %i.ed, i64 24
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.eb ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %wide.load = load <2 x i32>, ptr %i.ef, align 4, !tbaa !21, !alias.scope !85
  %wide.load11 = load <2 x i32>, ptr %i.eg, align 4, !tbaa !21, !alias.scope !85
  %interleaved.vec = shufflevector <2 x i32> %wide.load, <2 x i32> splat (i32 -1), <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.ec, align 4, !alias.scope !86, !noalias !85
  %interleaved.vec12 = shufflevector <2 x i32> %wide.load11, <2 x i32> splat (i32 -1), <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec12, ptr %i.ee, align 4, !alias.scope !86, !noalias !85
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eh = icmp eq i64 %index.next, %n.vec
  br i1 %i.eh, label %middle.block, label %vector.body, !llvm.loop !82

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.do, %n.vec
  br i1 %cmp.n, label %_ZN7meshoptL15kdtreeBuildLeafEmPNS_6KDNodeEmPjm.exit96, label %.lr.ph.i93.preheader

.lr.ph.i93.preheader:                             ; preds = %vector.memcheck, %vector.scevcheck, %bb.g, %middle.block
  %.020.i94.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %vector.scevcheck ], [ 1, %bb.g ], [ %i.ea, %middle.block ] ; 4 uses
  %i.ei = sub i64 %4, %.020.i94.ph
  %xtraiter20 = and i64 %i.ei, 3                  ; 2 uses
  %lcmp.mod21.not = icmp eq i64 %xtraiter20, 0
  br i1 %lcmp.mod21.not, label %.lr.ph.i93.prol.loopexit, label %.lr.ph.i93.prol

.lr.ph.i93.prol:                                  ; preds = %.lr.ph.i93.preheader, %.lr.ph.i93.prol
  %.020.i94.prol = phi i64 [ %i.en, %.lr.ph.i93.prol ], [ %.020.i94.ph, %.lr.ph.i93.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i93.prol ], [ 0, %.lr.ph.i93.preheader ]
  %i.ej = getelementptr [8 x i8], ptr %i.di, i64 %.020.i94.prol ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.020.i94.prol
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !21
  store i32 %i.el, ptr %i.ej, align 4, !tbaa !30
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  store i32 -1, ptr %i.em, align 4
  %i.en = add nuw i64 %.020.i94.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter20
  br i1 %prol.iter.cmp.not, label %.lr.ph.i93.prol.loopexit, label %.lr.ph.i93.prol, !llvm.loop !83

.lr.ph.i93.prol.loopexit:                         ; preds = %.lr.ph.i93.prol, %.lr.ph.i93.preheader
  %.020.i94.unr = phi i64 [ %.020.i94.ph, %.lr.ph.i93.preheader ], [ %i.en, %.lr.ph.i93.prol ]
  %6 = sub i64 %.020.i94.ph, %4
  %7 = icmp ugt i64 %6, -4
  br i1 %7, label %_ZN7meshoptL15kdtreeBuildLeafEmPNS_6KDNodeEmPjm.exit96, label %.lr.ph.i93

.lr.ph.i93:                                       ; preds = %.lr.ph.i93.prol.loopexit, %.lr.ph.i93
  %.020.i94 = phi i64 [ %i.fh, %.lr.ph.i93 ], [ %.020.i94.unr, %.lr.ph.i93.prol.loopexit ] ; 6 uses
  %i.eo = getelementptr [8 x i8], ptr %i.di, i64 %.020.i94 ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.020.i94
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !21
  store i32 %i.eq, ptr %i.eo, align 4, !tbaa !30
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  store i32 -1, ptr %i.er, align 4
  %i.es = add nuw i64 %.020.i94, 1                ; 2 uses
  %i.et = getelementptr [8 x i8], ptr %i.di, i64 %i.es ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.es
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !21
  store i32 %i.ev, ptr %i.et, align 4, !tbaa !30
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  store i32 -1, ptr %i.ew, align 4
  %i.ex = add nuw i64 %.020.i94, 2                ; 2 uses
  %i.ey = getelementptr [8 x i8], ptr %i.di, i64 %i.ex ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ex
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !21
  store i32 %i.fa, ptr %i.ey, align 4, !tbaa !30
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  store i32 -1, ptr %i.fb, align 4
  %i.fc = add nuw i64 %.020.i94, 3                ; 2 uses
  %i.fd = getelementptr [8 x i8], ptr %i.di, i64 %i.fc ; 2 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.fc
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !21
  store i32 %i.ff, ptr %i.fd, align 4, !tbaa !30
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  store i32 -1, ptr %i.fg, align 4
  %i.fh = add nuw i64 %.020.i94, 4                ; 2 uses
  %exitcond.not.i95.3 = icmp eq i64 %i.fh, %4
  br i1 %exitcond.not.i95.3, label %_ZN7meshoptL15kdtreeBuildLeafEmPNS_6KDNodeEmPjm.exit96, label %.lr.ph.i93, !llvm.loop !84

_ZN7meshoptL15kdtreeBuildLeafEmPNS_6KDNodeEmPjm.exit96: ; preds = %.lr.ph.i93.prol.loopexit, %.lr.ph.i93, %middle.block
  %i.fi = add i64 %4, %0
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %0 ; 2 uses
  store float %i.az, ptr %i.fj, align 4, !tbaa !30
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 4 ; 4 uses
  %i.fl = load i32, ptr %i.fk, align 4
  %i.fm = and i32 %i.fl, -4
  %i.fn = or disjoint i32 %i.fm, %i.aw
  store i32 %i.fn, ptr %i.fk, align 4
  %i.fo = add i64 %0, 1
  %i.fp = add nsw i32 %5, 1                       ; 2 uses
  %i.fq = tail call fastcc noundef i64 @_ZN7meshoptL11kdtreeBuildEmPNS_6KDNodeEmPKfmPjmmi(i64 noundef %i.fo, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3, i64 noundef %.lcssa, i32 noundef %i.fp) ; 2 uses
  %i.fr = xor i64 %0, -1
  %i.fs = add i64 %i.fq, %i.fr
  %i.ft = trunc i64 %i.fs to i32
  %i.fu = load i32, ptr %i.fk, align 4
  %i.fv = shl i32 %i.ft, 2
  %i.fw = and i32 %i.fu, 3
  %i.fx = or disjoint i32 %i.fv, %i.fw
  store i32 %i.fx, ptr %i.fk, align 4
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.lcssa
  %i.fz = sub nuw i64 %4, %.lcssa
  %i.ga = tail call fastcc noundef i64 @_ZN7meshoptL11kdtreeBuildEmPNS_6KDNodeEmPKfmPjmmi(i64 noundef %i.fq, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %i.fy, i64 noundef %i.fz, i32 noundef %i.fp)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN7meshoptL15kdtreeBuildLeafEmPNS_6KDNodeEmPjm.exit96
  %.0 = phi i64 [ %i.fi, %_ZN7meshoptL15kdtreeBuildLeafEmPNS_6KDNodeEmPjm.exit96 ], [ %i.ga, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN7meshoptL15kdtreeBuildLeafEmPNS_6KDNodeEmPjm.exit
  %.1 = phi i64 [ %i.al, %_ZN7meshoptL15kdtreeBuildLeafEmPNS_6KDNodeEmPjm.exit ], [ %.0, %bb.i ]
  ret i64 %.1
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN7meshoptL13kdtreeNearestEPNS_6KDNodeEjPKfmPKhS3_RjRf(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull readonly captures(none) %4, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %6) unnamed_addr #5 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.i, %bb.a
  %.tr74 = phi i32 [ %1, %bb.a ], [ %i.bc, %bb.i ] ; 3 uses
  %i.a = zext i32 %.tr74 to i64
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.a ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4              ; 4 uses
  %i.e = lshr i32 %i.d, 2                         ; 3 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  %i.g = and i32 %i.d, 3                          ; 3 uses
  %i.h = icmp eq i32 %i.g, 3
  br i1 %i.h, label %.preheader, label %bb.g

.preheader:                                       ; preds = %bb.b
  %.not87 = icmp ult i32 %i.d, 4
  br i1 %.not87, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.c

._crit_edge:                                      ; preds = %bb.f
  br i1 %.1, label %._crit_edge.thread, label %.loopexit

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %i.k = phi i32 [ %i.d, %.lr.ph ], [ %i.ak, %bb.f ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.07084 = phi i1 [ true, %.lr.ph ], [ %.1, %bb.f ]
  %i.l = trunc nuw nsw i64 %indvars.iv to i32
  %i.m = add i32 %.tr74, %i.l
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !30   ; 2 uses
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !30
  %.not = icmp eq i8 %i.s, 0
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %.idx = mul nuw nsw i64 %i.q, 24
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 3 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !27
  %i.v = load float, ptr %4, align 4, !tbaa !27
  %i.w = fsub float %i.u, %i.v                    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.y = load float, ptr %i.x, align 4, !tbaa !27
  %i.z = load float, ptr %i.i, align 4, !tbaa !27
  %i.aa = fsub float %i.y, %i.z                   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !27
  %i.ad = load float, ptr %i.j, align 4, !tbaa !27
  %i.ae = fsub float %i.ac, %i.ad                 ; 2 uses
  %i.af = fmul float %i.aa, %i.aa
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.w, float %i.w, float %i.af)
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.ae, float %i.ag)
  %sqrt = tail call float @llvm.sqrt.f32(float %i.ah) ; 2 uses
  %i.ai = load float, ptr %6, align 4, !tbaa !27
  %i.aj = fcmp olt float %sqrt, %i.ai
  br i1 %i.aj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.p, ptr %5, align 4, !tbaa !21
  store float %sqrt, ptr %6, align 4, !tbaa !27
  %.pre = load i32, ptr %i.c, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.ak = phi i32 [ %i.k, %bb.c ], [ %.pre, %bb.e ], [ %i.k, %bb.d ] ; 3 uses
  %.1 = phi i1 [ %.07084, %bb.c ], [ false, %bb.e ], [ false, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.al = lshr i32 %i.ak, 2
  %i.am = zext nneg i32 %i.al to i64
  %i.an = icmp samesign ult i64 %indvars.iv.next, %i.am
  br i1 %i.an, label %bb.c, label %._crit_edge, !llvm.loop !87

._crit_edge.thread:                               ; preds = %.preheader, %._crit_edge
  %.lcssa97 = phi i32 [ %i.ak, %._crit_edge ], [ 3, %.preheader ]
  %i.ao = and i32 %.lcssa97, 3
  store i32 %i.ao, ptr %i.c, align 4
  br label %.loopexit

bb.g:                                             ; preds = %bb.b
  %i.ap = zext nneg i32 %i.g to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ap
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !27
  %i.as = load float, ptr %i.b, align 4, !tbaa !30
  %i.at = fsub float %i.ar, %i.as                 ; 2 uses
  %i.au = fcmp ugt float %i.at, 0.000000e+00
  %spec.select = select i1 %i.au, i32 %i.e, i32 0 ; 2 uses
  %i.av = xor i32 %spec.select, %i.e
  %i.aw = add i32 %.tr74, 1                       ; 2 uses
  %i.ax = add i32 %spec.select, %i.aw             ; 2 uses
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = add i32 %i.av, %i.aw                    ; 2 uses
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = or i32 %i.bg, %i.bb
  %i.bi = icmp ult i32 %i.bh, 4
  br i1 %i.bi, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %i.g, ptr %i.c, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call fastcc void @_ZN7meshoptL13kdtreeNearestEPNS_6KDNodeEjPKfmPKhS3_RjRf(ptr noundef nonnull %0, i32 noundef %i.ax, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6)
  %i.bj = tail call float @llvm.fabs.f32(float %i.at)
  %i.bk = load float, ptr %6, align 4, !tbaa !27
  %i.bl = fcmp ugt float %i.bj, %i.bk
  br i1 %i.bl, label %.loopexit, label %tailrecurse

end_hunk_0
begin_hunk_1_@meshopt_buildMeshletsSpatial:bb.a
  %i.nx = add i32 %.sroa.10.1, 2
  %i.ny = add i32 %i.nx, %i.nl
  %i.nz = zext i32 %i.ny to i64
  %i.oa = getelementptr inbounds nuw i8, ptr %2, i64 %i.nz
  store i8 %i.nw, ptr %i.oa, align 1, !tbaa !30
  %i.ob = add i32 %.sroa.23.1, 1                  ; 3 uses
  %i.oc = zext i1 %or.cond212 to i64
  %i.od = add i64 %.0119224, %i.oc                ; 4 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.hv, i64 %.0117226
  %i.of = load i8, ptr %i.oe, align 1, !tbaa !30
  %i.og = zext i8 %i.of to i64
  %i.oh = sub i64 %.0118225, %i.og
  %i.oi = add nuw nsw i64 %.0117226, 1            ; 2 uses
  %exitcond244.not = icmp eq i64 %i.oi, %i.c
  br i1 %exitcond244.not, label %._crit_edge229, label %bb.p, !llvm.loop !105

bb.ab:                                            ; preds = %._crit_edge229
  %i.oj = add i64 %i.od, 1
  %i.ok = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.od ; 4 uses
  store i32 %.sroa.0.1, ptr %i.ok, align 4, !tbaa !21
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ok, i64 4
  store i32 %.sroa.10.1, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !21
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ok, i64 8
  store i32 %.sroa.15.4, ptr %.sroa.15.0..sroa_idx, align 4, !tbaa !21
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ok, i64 12
  store i32 %i.ob, ptr %.sroa.23.0..sroa_idx, align 4, !tbaa !21
  br label %.lr.ph.i172

.lr.ph.i172:                                      ; preds = %bb.ab, %._crit_edge229, %bb.m
  %.1 = phi i64 [ %i.oj, %bb.ab ], [ %i.od, %._crit_edge229 ], [ 0, %bb.m ]
  %i.ol = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !31
  %i.om = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !20
  invoke void %i.ol(ptr noundef %i.on)
          to label %.lr.ph.i172.1 unwind label %bb.ac

.lr.ph.i172.1:                                    ; preds = %.lr.ph.i172
  %i.oo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !31
  %i.op = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !20
  invoke void %i.oo(ptr noundef %i.oq)
          to label %.lr.ph.i172.2 unwind label %bb.ac

.lr.ph.i172.2:                                    ; preds = %.lr.ph.i172.1
  %i.or = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !31
  %i.os = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !20
  invoke void %i.or(ptr noundef %i.ot)
          to label %.lr.ph.i172.3 unwind label %bb.ac

.lr.ph.i172.3:                                    ; preds = %.lr.ph.i172.2
  %i.ou = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !31
  %i.ov = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !20
  invoke void %i.ou(ptr noundef %i.ow)
          to label %.lr.ph.i172.4 unwind label %bb.ac

.lr.ph.i172.4:                                    ; preds = %.lr.ph.i172.3
  %i.ox = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !31
  %i.oy = load ptr, ptr %12, align 8, !tbaa !20
  invoke void %i.ox(ptr noundef %i.oy)
          to label %_ZN17meshopt_AllocatorD2Ev.exit unwind label %bb.ac

_ZN17meshopt_AllocatorD2Ev.exit:                  ; preds = %.lr.ph.i172.4
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  br label %bb.ae

bb.ac:                                            ; preds = %.lr.ph.i172.4, %.lr.ph.i172.3, %.lr.ph.i172.2, %.lr.ph.i172.1, %.lr.ph.i172
  %i.oz = landingpad { ptr, i32 }
          catch ptr null
  %i.pa = extractvalue { ptr, i32 } %i.oz, 0
  tail call void @__clang_call_terminate(ptr %i.pa) #16
  unreachable

bb.ad:                                            ; preds = %bb.h, %bb.o, %bb.n, %bb.i, %bb.g
  %.pn138.pn.pn.pn = phi { ptr, i32 } [ %i.db, %bb.g ], [ %i.dc, %bb.h ], [ %i.dd, %bb.i ], [ %i.ip, %bb.n ], [ %i.iq, %bb.o ]
  call void @_ZN17meshopt_AllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %12) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  resume { ptr, i32 } %.pn138.pn.pn.pn

bb.ae:                                            ; preds = %bb.a, %_ZN17meshopt_AllocatorD2Ev.exit
  %.0 = phi i64 [ %.1, %_ZN17meshopt_AllocatorD2Ev.exit ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN7meshoptL8bvhSplitEPKNS_6BVHBoxEPjS3_S3_PhmiPvPsPKjmmmf(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, float noundef %13) unnamed_addr #8 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 8 uses
  %.not.not = icmp ugt i64 %5, %12                ; 3 uses
  br i1 %.not.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not56.i = icmp eq i64 %5, 0
  br i1 %.not56.i, label %_ZN7meshoptL16bvhCountVerticesEPKjmPsS1_Pj.exit.thread, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %bb.b, %.lr.ph.split.us.i
  %.053.us.i = phi i64 [ %i.z, %.lr.ph.split.us.i ], [ 0, %bb.b ]
  %.04552.us.i = phi i64 [ %i.aa, %.lr.ph.split.us.i ], [ 0, %bb.b ] ; 2 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.04552.us.i
  %i.c = load i32, ptr %i.b, align 4, !tbaa !21
  %i.d = mul i32 %i.c, 3                          ; 3 uses
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !21
  %i.h = add i32 %i.d, 1
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !21
  %i.l = add i32 %i.d, 2
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !21
  %i.p = zext i32 %i.g to i64
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.p ; 2 uses
  %i.r = load i16, ptr %i.q, align 2, !tbaa !29
  %.lobit.us.i = lshr i16 %i.r, 15
  %i.s = zext i32 %i.k to i64
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.s ; 2 uses
  %i.u = load i16, ptr %i.t, align 2, !tbaa !29
  %.lobit49.us.i = lshr i16 %i.u, 15
  %narrow.us.i = add nuw nsw i16 %.lobit49.us.i, %.lobit.us.i
  %i.v = zext i32 %i.o to i64
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.v ; 2 uses
  %i.x = load i16, ptr %i.w, align 2, !tbaa !29
  %.lobit50.us.i = lshr i16 %i.x, 15
  %narrow51.us.i = add nuw nsw i16 %narrow.us.i, %.lobit50.us.i
  %i.y = zext nneg i16 %narrow51.us.i to i64
  %i.z = add i64 %.053.us.i, %i.y                 ; 2 uses
  store i16 1, ptr %i.w, align 2, !tbaa !29
  store i16 1, ptr %i.t, align 2, !tbaa !29
  store i16 1, ptr %i.q, align 2, !tbaa !29
  %i.aa = add nuw i64 %.04552.us.i, 1             ; 2 uses
  %exitcond60.not.i = icmp eq i64 %i.aa, %5
  br i1 %exitcond60.not.i, label %.lr.ph55.i, label %.lr.ph.split.us.i, !llvm.loop !106

.lr.ph55.i:                                       ; preds = %.lr.ph.split.us.i, %.lr.ph55.i
  %.04654.i = phi i64 [ %i.av, %.lr.ph55.i ], [ 0, %.lr.ph.split.us.i ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.04654.i
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !21
  %i.ad = mul i32 %i.ac, 3                        ; 3 uses
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !21
  %i.ah = add i32 %i.ad, 1
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !21
  %i.al = add i32 %i.ad, 2
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !21
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.ap
  store i16 -1, ptr %i.aq, align 2, !tbaa !29
  %i.ar = zext i32 %i.ak to i64
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.ar
  store i16 -1, ptr %i.as, align 2, !tbaa !29
  %i.at = zext i32 %i.ag to i64
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.at
  store i16 -1, ptr %i.au, align 2, !tbaa !29
  %i.av = add nuw i64 %.04654.i, 1                ; 2 uses
  %exitcond61.not.i = icmp eq i64 %i.av, %5
  br i1 %exitcond61.not.i, label %_ZN7meshoptL16bvhCountVerticesEPKjmPsS1_Pj.exit, label %.lr.ph55.i, !llvm.loop !107

_ZN7meshoptL16bvhCountVerticesEPKjmPsS1_Pj.exit:  ; preds = %.lr.ph55.i
  %.not142 = icmp ugt i64 %i.z, %10
  br i1 %.not142, label %bb.c, label %_ZN7meshoptL16bvhCountVerticesEPKjmPsS1_Pj.exit.thread

_ZN7meshoptL16bvhCountVerticesEPKjmPsS1_Pj.exit.thread: ; preds = %bb.b, %_ZN7meshoptL16bvhCountVerticesEPKjmPsS1_Pj.exit
  store i8 1, ptr %4, align 1, !tbaa !30
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.ax = add i64 %5, -1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aw, i8 0, i64 %i.ax, i1 false)
  br label %bb.w

bb.c:                                             ; preds = %_ZN7meshoptL16bvhCountVerticesEPKjmPsS1_Pj.exit, %bb.a
  %i.ay = phi i64 [ %10, %_ZN7meshoptL16bvhCountVerticesEPKjmPsS1_Pj.exit ], [ %12, %bb.a ] ; 5 uses
  %spec.select = phi i64 [ 1, %_ZN7meshoptL16bvhCountVerticesEPKjmPsS1_Pj.exit ], [ %12, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr %1, ptr %i.a, align 16, !tbaa !118
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.az, align 8, !tbaa !118
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %3, ptr %i.ba, align 16, !tbaa !118
  %i.bb = icmp eq i64 %11, %12
  %i.bc = select i1 %i.bb, i64 %spec.select, i64 1 ; 3 uses
  %i.bd = udiv i64 %10, 3                         ; 3 uses
  %i.be = tail call i64 @llvm.umin.i64(i64 %i.bd, i64 %11)
  %i.bf = select i1 %.not.not, i64 %11, i64 %i.be ; 15 uses
  %i.bg = shl i64 %i.bf, 1                        ; 2 uses
  %.not.i166 = icmp ult i64 %5, %i.bg
  %i.bh = trunc i64 %i.ay to i32                  ; 7 uses
  %i.bi = sitofp i32 %i.bh to float
  %i.bj = fdiv float 1.000000e+00, %i.bi          ; 5 uses
  %i.bk = add i64 %i.bf, -1                       ; 8 uses
  %.idx177 = shl i64 %5, 3
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 %.idx177 ; 2 uses
  %.not.i.i = icmp ugt i64 %i.bg, %12             ; 2 uses
  %.not87.i = icmp ult i64 %5, %i.bf
  %i.bm = add i64 %5, -1                          ; 12 uses
  %i.bn = sub i64 %12, %i.bf                      ; 3 uses
  %i.bo = sub i64 %5, %i.bf                       ; 5 uses
  %invariant.op.i = add i32 %i.bh, -1
  %i.bp = icmp ult i64 %i.bk, %i.bo
  %i.bq = icmp ult i64 %i.bk, %i.bm
  %i.br = icmp ult i64 %i.bk, %i.bo
  %i.bs = icmp ult i64 %i.bk, %i.bm
  %i.bt = icmp ult i64 %i.bk, %i.bm
  br label %.lr.ph.i146

bb.d:                                             ; preds = %_ZN7meshoptL8bvhPivotEPKfPKjmmmmfmPf.exit.thread
  %i.bu = icmp slt i32 %.1134, 0
  %i.bv = icmp sgt i32 %6, 49
  %or.cond = or i1 %i.bv, %i.bu
  br i1 %or.cond, label %.lr.ph.i169, label %bb.t

.lr.ph.i146:                                      ; preds = %bb.c, %_ZN7meshoptL8bvhPivotEPKfPKjmmmmfmPf.exit.thread
  %indvars.iv = phi i64 [ 0, %bb.c ], [ %indvars.iv.next, %_ZN7meshoptL8bvhPivotEPKfPKjmmmmfmPf.exit.thread ] ; 3 uses
  %.0130189 = phi float [ f0x7F7FFFFF, %bb.c ], [ %.1, %_ZN7meshoptL8bvhPivotEPKfPKjmmmmfmPf.exit.thread ] ; 7 uses
  %.0131188 = phi i64 [ 0, %bb.c ], [ %.1132, %_ZN7meshoptL8bvhPivotEPKfPKjmmmmfmPf.exit.thread ] ; 6 uses
  %.0133187 = phi i32 [ -1, %bb.c ], [ %.1134, %_ZN7meshoptL8bvhPivotEPKfPKjmmmmfmPf.exit.thread ] ; 6 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !118 ; 4 uses
  %i.by = getelementptr [4 x i8], ptr %i.bx, i64 %5
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i146
  %.024.i = phi i64 [ 0, %.lr.ph.i146 ], [ %i.dh, %bb.e ] ; 4 uses
  %.sroa.0.023.i = phi <4 x float> [ <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF, float 0.000000e+00>, %.lr.ph.i146 ], [ %i.cr, %bb.e ]
  %.sroa.5.022.i = phi <4 x float> [ <float f0xFF7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF, float 0.000000e+00>, %.lr.ph.i146 ], [ %i.cu, %bb.e ]
  %.sroa.017.021.i = phi <4 x float> [ <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF, float 0.000000e+00>, %.lr.ph.i146 ], [ %i.ce, %bb.e ]
  %.sroa.6.020.i = phi <4 x float> [ <float f0xFF7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF, float 0.000000e+00>, %.lr.ph.i146 ], [ %i.ch, %bb.e ]
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %.024.i
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !21
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.cb ; 2 uses
  %i.cd = load <4 x float>, ptr %i.cc, align 1, !tbaa !30
  %i.ce = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.017.021.i, <4 x float> %i.cd) ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  %i.cg = load <4 x float>, ptr %i.cf, align 1, !tbaa !30
  %i.ch = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.6.020.i, <4 x float> %i.cg) ; 2 uses
  %i.ci = fsub <4 x float> %i.ch, %i.ce           ; 2 uses
  %i.cj = shufflevector <4 x float> %i.ci, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 poison>
  %i.ck = fmul <4 x float> %i.ci, %i.cj           ; 3 uses
  %i.cl = xor i64 %.024.i, -1
  %i.cm = getelementptr [4 x i8], ptr %i.by, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !21
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.co ; 2 uses
  %i.cq = load <4 x float>, ptr %i.cp, align 1, !tbaa !30
  %i.cr = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0.023.i, <4 x float> %i.cq) ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  %i.ct = load <4 x float>, ptr %i.cs, align 1, !tbaa !30
  %i.cu = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.5.022.i, <4 x float> %i.ct) ; 2 uses
  %i.cv = fsub <4 x float> %i.cu, %i.cr           ; 2 uses
  %i.cw = shufflevector <4 x float> %i.cv, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 poison>
  %i.cx = fmul <4 x float> %i.cv, %i.cw           ; 3 uses
  %i.cy = shufflevector <4 x float> %i.ck, <4 x float> %i.cx, <2 x i32> <i32 0, i32 4>
  %i.cz = shufflevector <4 x float> %i.ck, <4 x float> %i.cx, <2 x i32> <i32 1, i32 5>
  %i.da = fadd <2 x float> %i.cy, %i.cz
  %i.db = shufflevector <4 x float> %i.ck, <4 x float> %i.cx, <2 x i32> <i32 2, i32 6>
  %i.dc = fadd <2 x float> %i.db, %i.da           ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %.024.i ; 2 uses
  %i.de = extractelement <2 x float> %i.dc, i64 0
  store float %i.de, ptr %i.dd, align 4, !tbaa !27
  %i.df = getelementptr [4 x i8], ptr %i.dd, i64 %5
  %i.dg = extractelement <2 x float> %i.dc, i64 1
  store float %i.dg, ptr %i.df, align 4, !tbaa !27
  %i.dh = add nuw i64 %.024.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dh, %5
  br i1 %exitcond.not.i, label %_ZN7meshoptL14bvhComputeAreaEPfPKNS_6BVHBoxEPKjm.exit.thread, label %bb.e, !llvm.loop !108

_ZN7meshoptL14bvhComputeAreaEPfPKNS_6BVHBoxEPKjm.exit.thread: ; preds = %bb.e
  br i1 %.not.not, label %_ZN7meshoptL16bvhCountVerticesEPKjmPsS1_Pj.exit165, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %_ZN7meshoptL14bvhComputeAreaEPfPKNS_6BVHBoxEPKjm.exit.thread, %.lr.ph.split.i
  %.053.i = phi i32 [ %i.eg, %.lr.ph.split.i ], [ 0, %_ZN7meshoptL14bvhComputeAreaEPfPKNS_6BVHBoxEPKjm.exit.thread ]
  %.04552.i = phi i64 [ %i.ei, %.lr.ph.split.i ], [ 0, %_ZN7meshoptL14bvhComputeAreaEPfPKNS_6BVHBoxEPKjm.exit.thread ] ; 3 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %.04552.i
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !21
  %i.dk = mul i32 %i.dj, 3                        ; 3 uses
  %i.dl = zext i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !21
  %i.do = add i32 %i.dk, 1
  %i.dp = zext i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !21
  %i.ds = add i32 %i.dk, 2
  %i.dt = zext i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !21
  %i.dw = zext i32 %i.dn to i64
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.dw ; 2 uses
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !29
  %.lobit.i = lshr i16 %i.dy, 15
  %i.dz = zext i32 %i.dr to i64
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.dz ; 2 uses
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !29
  %.lobit49.i = lshr i16 %i.eb, 15
  %narrow.i = add nuw nsw i16 %.lobit49.i, %.lobit.i
  %i.ec = zext i32 %i.dv to i64
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.ec ; 2 uses
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !29
  %.lobit50.i = lshr i16 %i.ee, 15
  %narrow51.i = add nuw nsw i16 %narrow.i, %.lobit50.i
  %i.ef = zext nneg i16 %narrow51.i to i32
  %i.eg = add i32 %.053.i, %i.ef                  ; 2 uses
  store i16 1, ptr %i.ed, align 2, !tbaa !29
  store i16 1, ptr %i.ea, align 2, !tbaa !29
  store i16 1, ptr %i.dx, align 2, !tbaa !29
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.04552.i
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !21
  %i.ei = add nuw i64 %.04552.i, 1                ; 2 uses
  %exitcond.not.i150 = icmp eq i64 %i.ei, %5
  br i1 %exitcond.not.i150, label %.lr.ph55.i152, label %.lr.ph.split.i, !llvm.loop !106

.lr.ph55.i152:                                    ; preds = %.lr.ph.split.i, %.lr.ph55.i152
  %.04654.i153 = phi i64 [ %i.fd, %.lr.ph55.i152 ], [ 0, %.lr.ph.split.i ] ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %.04654.i153
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !21
  %i.el = mul i32 %i.ek, 3                        ; 3 uses
  %i.em = zext i32 %i.el to i64
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !21
  %i.ep = add i32 %i.el, 1
  %i.eq = zext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %i.eq
  %i.es = load i32, ptr %i.er, align 4, !tbaa !21
  %i.et = add i32 %i.el, 2
  %i.eu = zext i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !21
  %i.ex = zext i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.ex
  store i16 -1, ptr %i.ey, align 2, !tbaa !29
  %i.ez = zext i32 %i.es to i64
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.ez
  store i16 -1, ptr %i.fa, align 2, !tbaa !29
  %i.fb = zext i32 %i.eo to i64
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.fb
  store i16 -1, ptr %i.fc, align 2, !tbaa !29
  %i.fd = add nuw i64 %.04654.i153, 1             ; 2 uses
  %exitcond61.not.i154 = icmp eq i64 %i.fd, %5
  br i1 %exitcond61.not.i154, label %_ZN7meshoptL16bvhCountVerticesEPKjmPsS1_Pj.exit165, label %.lr.ph55.i152, !llvm.loop !107

_ZN7meshoptL16bvhCountVerticesEPKjmPsS1_Pj.exit165: ; preds = %.lr.ph55.i152, %_ZN7meshoptL14bvhComputeAreaEPfPKNS_6BVHBoxEPKjm.exit.thread
  %.0128 = phi ptr [ null, %_ZN7meshoptL14bvhComputeAreaEPfPKNS_6BVHBoxEPKjm.exit.thread ], [ %i.bl, %.lr.ph55.i152 ] ; 7 uses
  br i1 %.not.i166, label %_ZN7meshoptL12bvhDivisibleEmmm.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %_ZN7meshoptL16bvhCountVerticesEPKjmPsS1_Pj.exit165
  br i1 %.not.i.i, label %.split.i, label %_ZN7meshoptL12bvhDivisibleEmmm.exit.i

.split.i:                                         ; preds = %bb.f
  %i.fe = urem i64 %5, %i.bf
  %i.ff = udiv i64 %5, %i.bf
  %i.fg = mul i64 %i.ff, %i.bn
  %.not88.i = icmp ugt i64 %i.fe, %i.fg
  br i1 %.not88.i, label %_ZN7meshoptL12bvhDivisibleEmmm.exit.thread.i.thread229, label %_ZN7meshoptL12bvhDivisibleEmmm.exit.thread.i.thread238

_ZN7meshoptL12bvhDivisibleEmmm.exit.i:            ; preds = %bb.f
  br i1 %.not87.i, label %_ZN7meshoptL12bvhDivisibleEmmm.exit.thread.i.thread, label %_ZN7meshoptL12bvhDivisibleEmmm.exit.thread.i.thread235

_ZN7meshoptL12bvhDivisibleEmmm.exit.thread.i:     ; preds = %_ZN7meshoptL16bvhCountVerticesEPKjmPsS1_Pj.exit165
  br i1 %i.bt, label %.lr.ph.i167, label %_ZN7meshoptL8bvhPivotEPKfPKjmmmmfmPf.exit.thread

_ZN7meshoptL12bvhDivisibleEmmm.exit.thread.i.thread238: ; preds = %.split.i
  br i1 %i.br, label %.lr.ph.i167.thread239, label %_ZN7meshoptL8bvhPivotEPKfPKjmmmmfmPf.exit.thread

.lr.ph.i167.thread239:                            ; preds = %_ZN7meshoptL12bvhDivisibleEmmm.exit.thread.i.thread238
  %.not77.i240 = icmp eq ptr %.0128, null
  br label %_ZN7meshoptL12bvhDivisibleEmmm.exit79.us.i.preheader

_ZN7meshoptL12bvhDivisibleEmmm.exit.thread.i.thread235: ; preds = %_ZN7meshoptL12bvhDivisibleEmmm.exit.i
  br i1 %i.bp, label %.lr.ph.i167.thread236, label %_ZN7meshoptL8bvhPivotEPKfPKjmmmmfmPf.exit.thread

.lr.ph.i167.thread236:                            ; preds = %_ZN7meshoptL12bvhDivisibleEmmm.exit.thread.i.thread235
  %.not77.i237 = icmp eq ptr %.0128, null
  br i1 %.not77.i237, label %.split82.us.i.preheader, label %.split82.i.preheader

_ZN7meshoptL12bvhDivisibleEmmm.exit.thread.i.thread229: ; preds = %.split.i
  br i1 %i.bs, label %.lr.ph.i167.thread230, label %_ZN7meshoptL8bvhPivotEPKfPKjmmmmfmPf.exit.thread

.lr.ph.i167.thread230:                            ; preds = %_ZN7meshoptL12bvhDivisibleEmmm.exit.thread.i.thread229
  %.not77.i231 = icmp eq ptr %.0128, null
  br label %_ZN7meshoptL12bvhDivisibleEmmm.exit79.us.i.preheader

_ZN7meshoptL12bvhDivisibleEmmm.exit.thread.i.thread: ; preds = %_ZN7meshoptL12bvhDivisibleEmmm.exit.i
  br i1 %i.bq, label %.lr.ph.i167.thread, label %_ZN7meshoptL8bvhPivotEPKfPKjmmmmfmPf.exit.thread

.lr.ph.i167.thread:                               ; preds = %_ZN7meshoptL12bvhDivisibleEmmm.exit.thread.i.thread
  %.not77.i227 = icmp eq ptr %.0128, null
  br i1 %.not77.i227, label %.split82.us.i.preheader, label %.split82.i.preheader

.lr.ph.i167:                                      ; preds = %_ZN7meshoptL12bvhDivisibleEmmm.exit.thread.i
  %.not77.i = icmp eq ptr %.0128, null            ; 2 uses
  br i1 %.not.i.i, label %_ZN7meshoptL12bvhDivisibleEmmm.exit79.us.i.preheader, label %.lr.ph.split.i168

_ZN7meshoptL12bvhDivisibleEmmm.exit79.us.i.preheader: ; preds = %.lr.ph.i167.thread239, %.lr.ph.i167.thread230, %.lr.ph.i167
  %.not77.i232 = phi i1 [ %.not77.i231, %.lr.ph.i167.thread230 ], [ %.not77.i, %.lr.ph.i167 ], [ %.not77.i240, %.lr.ph.i167.thread239 ]
end_hunk_1
begin_hunk_2_@_ZN7meshoptL8bvhSplitEPKNS_6BVHBoxEPjS3_S3_PhmiPvPsPKjmmmf:bb.a
  %.reass.i = add i32 %invariant.op.i, %i.jq
  %i.jr = sitofp i32 %.reass.i to float
  %i.js = fmul float %i.bj, %i.jr
  %i.jt = fptosi float %i.js to i32
  %i.ju = mul nsw i32 %i.jt, %i.bh
  %i.jv = sub nsw i32 %i.ju, %i.jq
  %i.jw = sitofp i32 %i.jv to float               ; 2 uses
  %i.jx = fmul float %i.jh, %i.jw
  %i.jy = tail call float @llvm.fmuladd.f32(float %i.jw, float %i.jd, float %i.jx)
  %i.jz = tail call float @llvm.fmuladd.f32(float %13, float %i.jy, float %i.jn) ; 2 uses
  %i.ka = fcmp olt float %i.jz, %.06794.i         ; 2 uses
  %.169.i = select i1 %i.ka, i64 %i.iz, i64 %.06893.i
  %.1.i = select i1 %i.ka, float %i.jz, float %.06794.i
  br label %bb.o

bb.o:                                             ; preds = %.thread85.i, %bb.n, %.split82.i
  %.371.i = phi i64 [ %.06893.i, %.split82.i ], [ %.06893.i, %bb.n ], [ %.169.i, %.thread85.i ] ; 2 uses
  %.3.i = phi float [ %.06794.i, %.split82.i ], [ %.06794.i, %bb.n ], [ %.1.i, %.thread85.i ] ; 2 uses
  %i.kb = add i64 %.095.i, %i.bc                  ; 2 uses
  %i.kc = icmp ult i64 %i.kb, %i.hh
  br i1 %i.kc, label %.split82.i, label %_ZN7meshoptL8bvhPivotEPKfPKjmmmmfmPf.exit, !llvm.loop !109

_ZN7meshoptL8bvhPivotEPKfPKjmmmmfmPf.exit:        ; preds = %bb.o, %bb.m, %bb.k
  %.068.lcssa.i = phi i64 [ %.371.us.i, %bb.k ], [ %.371.us106.i, %bb.m ], [ %.371.i, %bb.o ] ; 2 uses
  %.067.lcssa.i = phi float [ %.3.us.i, %bb.k ], [ %.3.us107.i, %bb.m ], [ %.3.i, %bb.o ] ; 2 uses
  %.not143 = icmp ne i64 %.068.lcssa.i, 0
  %i.kd = fcmp olt float %.067.lcssa.i, %.0130189
  %or.cond181 = select i1 %.not143, i1 %i.kd, i1 false
  br i1 %or.cond181, label %bb.p, label %_ZN7meshoptL8bvhPivotEPKfPKjmmmmfmPf.exit.thread

bb.p:                                             ; preds = %_ZN7meshoptL8bvhPivotEPKfPKjmmmmfmPf.exit
  %i.ke = trunc nuw nsw i64 %indvars.iv to i32
  br label %_ZN7meshoptL8bvhPivotEPKfPKjmmmmfmPf.exit.thread

_ZN7meshoptL8bvhPivotEPKfPKjmmmmfmPf.exit.thread: ; preds = %_ZN7meshoptL12bvhDivisibleEmmm.exit.thread.i.thread238, %_ZN7meshoptL12bvhDivisibleEmmm.exit.thread.i.thread235, %_ZN7meshoptL12bvhDivisibleEmmm.exit.thread.i.thread229, %_ZN7meshoptL12bvhDivisibleEmmm.exit.thread.i.thread, %_ZN7meshoptL12bvhDivisibleEmmm.exit.thread.i, %bb.p, %_ZN7meshoptL8bvhPivotEPKfPKjmmmmfmPf.exit
  %.1134 = phi i32 [ %i.ke, %bb.p ], [ %.0133187, %_ZN7meshoptL12bvhDivisibleEmmm.exit.thread.i ], [ %.0133187, %_ZN7meshoptL8bvhPivotEPKfPKjmmmmfmPf.exit ], [ %.0133187, %_ZN7meshoptL12bvhDivisibleEmmm.exit.thread.i.thread ], [ %.0133187, %_ZN7meshoptL12bvhDivisibleEmmm.exit.thread.i.thread229 ], [ %.0133187, %_ZN7meshoptL12bvhDivisibleEmmm.exit.thread.i.thread235 ], [ %.0133187, %_ZN7meshoptL12bvhDivisibleEmmm.exit.thread.i.thread238 ] ; 7 uses
  %.1132 = phi i64 [ %.068.lcssa.i, %bb.p ], [ %.0131188, %_ZN7meshoptL12bvhDivisibleEmmm.exit.thread.i ], [ %.0131188, %_ZN7meshoptL8bvhPivotEPKfPKjmmmmfmPf.exit ], [ %.0131188, %_ZN7meshoptL12bvhDivisibleEmmm.exit.thread.i.thread ], [ %.0131188, %_ZN7meshoptL12bvhDivisibleEmmm.exit.thread.i.thread229 ], [ %.0131188, %_ZN7meshoptL12bvhDivisibleEmmm.exit.thread.i.thread235 ], [ %.0131188, %_ZN7meshoptL12bvhDivisibleEmmm.exit.thread.i.thread238 ] ; 22 uses
  %.1 = phi float [ %.067.lcssa.i, %bb.p ], [ %.0130189, %_ZN7meshoptL12bvhDivisibleEmmm.exit.thread.i ], [ %.0130189, %_ZN7meshoptL8bvhPivotEPKfPKjmmmmfmPf.exit ], [ %.0130189, %_ZN7meshoptL12bvhDivisibleEmmm.exit.thread.i.thread ], [ %.0130189, %_ZN7meshoptL12bvhDivisibleEmmm.exit.thread.i.thread229 ], [ %.0130189, %_ZN7meshoptL12bvhDivisibleEmmm.exit.thread.i.thread235 ], [ %.0130189, %_ZN7meshoptL12bvhDivisibleEmmm.exit.thread.i.thread238 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %bb.d, label %.lr.ph.i146, !llvm.loop !110

.lr.ph.i169:                                      ; preds = %bb.d
  %i.kf = add nsw i64 %i.bd, -1
  br label %bb.q

bb.q:                                             ; preds = %bb.s, %.lr.ph.i169
  %.028.i = phi i64 [ 0, %.lr.ph.i169 ], [ %.1.i171, %bb.s ] ; 6 uses
  %i.kg = add i64 %.028.i, %12
  %.not.i170 = icmp ugt i64 %i.kg, %5
  %i.kh = sub nuw i64 %5, %.028.i
  %i.ki = select i1 %.not.i170, i64 %i.kh, i64 %12 ; 5 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.028.i ; 2 uses
  %.not56.i.i = icmp eq i64 %i.ki, 0
  br i1 %.not56.i.i, label %_ZN7meshoptL16bvhCountVerticesEPKjmPsS1_Pj.exit.thread.i, label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %bb.q, %.lr.ph.split.us.i.i
  %.053.us.i.i = phi i64 [ %i.li, %.lr.ph.split.us.i.i ], [ 0, %bb.q ]
  %.04552.us.i.i = phi i64 [ %i.lj, %.lr.ph.split.us.i.i ], [ 0, %bb.q ] ; 2 uses
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.kj, i64 %.04552.us.i.i
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !21
  %i.km = mul i32 %i.kl, 3                        ; 3 uses
  %i.kn = zext i32 %i.km to i64
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %i.kn
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !21
  %i.kq = add i32 %i.km, 1
  %i.kr = zext i32 %i.kq to i64
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %i.kr
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !21
  %i.ku = add i32 %i.km, 2
  %i.kv = zext i32 %i.ku to i64
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %i.kv
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !21
  %i.ky = zext i32 %i.kp to i64
  %i.kz = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.ky ; 2 uses
  %i.la = load i16, ptr %i.kz, align 2, !tbaa !29
  %.lobit.us.i.i = lshr i16 %i.la, 15
  %i.lb = zext i32 %i.kt to i64
  %i.lc = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.lb ; 2 uses
  %i.ld = load i16, ptr %i.lc, align 2, !tbaa !29
  %.lobit49.us.i.i = lshr i16 %i.ld, 15
  %narrow.us.i.i = add nuw nsw i16 %.lobit49.us.i.i, %.lobit.us.i.i
  %i.le = zext i32 %i.kx to i64
  %i.lf = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.le ; 2 uses
  %i.lg = load i16, ptr %i.lf, align 2, !tbaa !29
  %.lobit50.us.i.i = lshr i16 %i.lg, 15
  %narrow51.us.i.i = add nuw nsw i16 %narrow.us.i.i, %.lobit50.us.i.i
  %i.lh = zext nneg i16 %narrow51.us.i.i to i64
  %i.li = add i64 %.053.us.i.i, %i.lh             ; 2 uses
  store i16 1, ptr %i.lf, align 2, !tbaa !29
  store i16 1, ptr %i.lc, align 2, !tbaa !29
  store i16 1, ptr %i.kz, align 2, !tbaa !29
  %i.lj = add nuw i64 %.04552.us.i.i, 1           ; 2 uses
  %exitcond60.not.i.i = icmp eq i64 %i.lj, %i.ki
  br i1 %exitcond60.not.i.i, label %.lr.ph55.i.i, label %.lr.ph.split.us.i.i, !llvm.loop !106

.lr.ph55.i.i:                                     ; preds = %.lr.ph.split.us.i.i, %.lr.ph55.i.i
  %.04654.i.i = phi i64 [ %i.me, %.lr.ph55.i.i ], [ 0, %.lr.ph.split.us.i.i ] ; 2 uses
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.kj, i64 %.04654.i.i
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !21
  %i.lm = mul i32 %i.ll, 3                        ; 3 uses
  %i.ln = zext i32 %i.lm to i64
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %i.ln
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !21
  %i.lq = add i32 %i.lm, 1
  %i.lr = zext i32 %i.lq to i64
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %i.lr
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !21
  %i.lu = add i32 %i.lm, 2
  %i.lv = zext i32 %i.lu to i64
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %i.lv
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !21
  %i.ly = zext i32 %i.lx to i64
  %i.lz = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.ly
  store i16 -1, ptr %i.lz, align 2, !tbaa !29
  %i.ma = zext i32 %i.lt to i64
  %i.mb = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.ma
  store i16 -1, ptr %i.mb, align 2, !tbaa !29
  %i.mc = zext i32 %i.lp to i64
  %i.md = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.mc
  store i16 -1, ptr %i.md, align 2, !tbaa !29
  %i.me = add nuw i64 %.04654.i.i, 1              ; 2 uses
  %exitcond61.not.i.i = icmp eq i64 %i.me, %i.ki
  br i1 %exitcond61.not.i.i, label %_ZN7meshoptL16bvhCountVerticesEPKjmPsS1_Pj.exit.i, label %.lr.ph55.i.i, !llvm.loop !107

_ZN7meshoptL16bvhCountVerticesEPKjmPsS1_Pj.exit.i: ; preds = %.lr.ph55.i.i
  %.not25.i = icmp ugt i64 %i.li, %10
  br i1 %.not25.i, label %bb.r, label %_ZN7meshoptL16bvhCountVerticesEPKjmPsS1_Pj.exit.thread.i

_ZN7meshoptL16bvhCountVerticesEPKjmPsS1_Pj.exit.thread.i: ; preds = %_ZN7meshoptL16bvhCountVerticesEPKjmPsS1_Pj.exit.i, %bb.q
  %i.mf = getelementptr inbounds nuw i8, ptr %4, i64 %.028.i ; 2 uses
  store i8 1, ptr %i.mf, align 1, !tbaa !30
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 1
  %i.mh = add i64 %i.ki, -1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.mg, i8 0, i64 %i.mh, i1 false)
  br label %bb.s, !llvm.loop !111

bb.r:                                             ; preds = %_ZN7meshoptL16bvhCountVerticesEPKjmPsS1_Pj.exit.i
  %i.mi = getelementptr inbounds nuw i8, ptr %4, i64 %.028.i ; 2 uses
  store i8 1, ptr %i.mi, align 1, !tbaa !30
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.mj, i8 0, i64 %i.kf, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZN7meshoptL16bvhCountVerticesEPKjmPsS1_Pj.exit.thread.i
  %.pn.i = phi i64 [ %i.ki, %_ZN7meshoptL16bvhCountVerticesEPKjmPsS1_Pj.exit.thread.i ], [ %i.bd, %bb.r ]
  %.1.i171 = add i64 %.pn.i, %.028.i              ; 2 uses
  %i.mk = icmp ult i64 %.1.i171, %5
  br i1 %i.mk, label %bb.q, label %_ZN7meshoptL11bvhPackTailEPhPKjmPsS2_mm.exit

bb.t:                                             ; preds = %bb.d
  %i.ml = shl i64 %5, 2                           ; 4 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %7, i64 %i.ml ; 19 uses
  %.not = icmp eq i64 %.1132, 0
  br i1 %.not, label %.preheader182, label %.lr.ph

.lr.ph:                                           ; preds = %bb.t
  %i.mn = zext nneg i32 %.1134 to i64
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.mn
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !118 ; 5 uses
  %xtraiter = and i64 %.1132, 3                   ; 3 uses
  %i.mq = icmp ult i64 %.1132, 4
  br i1 %i.mq, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %.1132, -4
  br label %bb.v

.preheader182.loopexit.unr-lcssa:                 ; preds = %bb.v
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader182, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader182.loopexit.unr-lcssa, %.lr.ph
  %.0127191.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.nz, %.preheader182.loopexit.unr-lcssa ]
  %lcmp.mod252 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod252)
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.epil.preheader
  %.0127191.epil = phi i64 [ %.0127191.epil.init, %.epil.preheader ], [ %i.mv, %bb.u ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.u ]
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %.0127191.epil
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !21
  %i.mt = zext i32 %i.ms to i64
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mm, i64 %i.mt
  store i8 0, ptr %i.mu, align 1, !tbaa !30
  %i.mv = add nuw i64 %.0127191.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader182, label %bb.u, !llvm.loop !112

.preheader182:                                    ; preds = %.preheader182.loopexit.unr-lcssa, %bb.u, %bb.t
  %i.mw = icmp ult i64 %.1132, %5
  br i1 %i.mw, label %.lr.ph193, label %.preheader.split.preheader

.lr.ph193:                                        ; preds = %.preheader182
  %i.mx = zext nneg i32 %.1134 to i64
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.mx
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !118 ; 5 uses
  %i.na = sub nuw i64 %5, %.1132
  %xtraiter254 = and i64 %i.na, 3                 ; 2 uses
  %lcmp.mod255.not = icmp eq i64 %xtraiter254, 0
  br i1 %lcmp.mod255.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph193, %.prol.preheader
  %.0126192.prol = phi i64 [ %i.nf, %.prol.preheader ], [ %.1132, %.lr.ph193 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph193 ]
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.mz, i64 %.0126192.prol
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !21
  %i.nd = zext i32 %i.nc to i64
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mm, i64 %i.nd
  store i8 1, ptr %i.ne, align 1, !tbaa !30
  %i.nf = add nuw i64 %.0126192.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter254
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !113

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph193
  %.0126192.unr = phi i64 [ %.1132, %.lr.ph193 ], [ %i.nf, %.prol.preheader ]
  %14 = sub i64 %.1132, %5
  %15 = icmp ugt i64 %14, -4
  br i1 %15, label %.preheader.split.preheader, label %.lr.ph193.new

bb.v:                                             ; preds = %bb.v, %.lr.ph.new
  %.0127191 = phi i64 [ 0, %.lr.ph.new ], [ %i.nz, %bb.v ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.v ]
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %.0127191
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !21
  %i.ni = zext i32 %i.nh to i64
  %i.nj = getelementptr inbounds nuw i8, ptr %i.mm, i64 %i.ni
  store i8 0, ptr %i.nj, align 1, !tbaa !30
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %.0127191
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 4
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !21
  %i.nn = zext i32 %i.nm to i64
  %i.no = getelementptr inbounds nuw i8, ptr %i.mm, i64 %i.nn
  store i8 0, ptr %i.no, align 1, !tbaa !30
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %.0127191
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 8
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !21
  %i.ns = zext i32 %i.nr to i64
  %i.nt = getelementptr inbounds nuw i8, ptr %i.mm, i64 %i.ns
  store i8 0, ptr %i.nt, align 1, !tbaa !30
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %.0127191
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 12
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !21
  %i.nx = zext i32 %i.nw to i64
  %i.ny = getelementptr inbounds nuw i8, ptr %i.mm, i64 %i.nx
  store i8 0, ptr %i.ny, align 1, !tbaa !30
  %i.nz = add nuw i64 %.0127191, 4                ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader182.loopexit.unr-lcssa, label %bb.v, !llvm.loop !114

.preheader.split.preheader:                       ; preds = %.prol.loopexit, %.lr.ph193.new, %.preheader182
  %i.oa = icmp eq i32 %.1134, 0
  br i1 %i.oa, label %.lr.ph.i172.preheader.1, label %.lr.ph.i172.preheader

.lr.ph193.new:                                    ; preds = %.prol.loopexit, %.lr.ph193.new
  %.0126192 = phi i64 [ %i.ou, %.lr.ph193.new ], [ %.0126192.unr, %.prol.loopexit ] ; 5 uses
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.mz, i64 %.0126192
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !21
  %i.od = zext i32 %i.oc to i64
  %i.oe = getelementptr inbounds nuw i8, ptr %i.mm, i64 %i.od
  store i8 1, ptr %i.oe, align 1, !tbaa !30
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.mz, i64 %.0126192
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 4
  %i.oh = load i32, ptr %i.og, align 4, !tbaa !21
  %i.oi = zext i32 %i.oh to i64
  %i.oj = getelementptr inbounds nuw i8, ptr %i.mm, i64 %i.oi
  store i8 1, ptr %i.oj, align 1, !tbaa !30
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %i.mz, i64 %.0126192
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 8
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !21
  %i.on = zext i32 %i.om to i64
  %i.oo = getelementptr inbounds nuw i8, ptr %i.mm, i64 %i.on
  store i8 1, ptr %i.oo, align 1, !tbaa !30
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.mz, i64 %.0126192
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 12
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !21
  %i.os = zext i32 %i.or to i64
  %i.ot = getelementptr inbounds nuw i8, ptr %i.mm, i64 %i.os
  store i8 1, ptr %i.ot, align 1, !tbaa !30
  %i.ou = add nuw i64 %.0126192, 4                ; 2 uses
  %exitcond203.not.3 = icmp eq i64 %i.ou, %5
  br i1 %exitcond203.not.3, label %.preheader.split.preheader, label %.lr.ph193.new, !llvm.loop !115

.split.us.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i172.2
  %lcmp.mod276.not = icmp eq i64 %xtraiter274, 0
  br i1 %lcmp.mod276.not, label %.split.us, label %.lr.ph.i172.2.epil.preheader

.lr.ph.i172.2.epil.preheader:                     ; preds = %.split.us.loopexit.unr-lcssa, %.lr.ph.i172.preheader.2
  %.021.i.2.epil.init = phi i64 [ 0, %.lr.ph.i172.preheader.2 ], [ %i.ss, %.split.us.loopexit.unr-lcssa ]
  %.01720.i.2.epil.init = phi i64 [ 0, %.lr.ph.i172.preheader.2 ], [ %i.su, %.split.us.loopexit.unr-lcssa ]
  %.01819.i.2.epil.init = phi i64 [ %.1132, %.lr.ph.i172.preheader.2 ], [ %i.st, %.split.us.loopexit.unr-lcssa ]
  %lcmp.mod277 = trunc i64 %5 to i1
  tail call void @llvm.assume(i1 %lcmp.mod277)
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %.01720.i.2.epil.init
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !21 ; 2 uses
  %i.ox = zext i32 %i.ow to i64
  %i.oy = getelementptr inbounds nuw i8, ptr %i.mm, i64 %i.ox
  %i.oz = load i8, ptr %i.oy, align 1, !tbaa !30
  %.not.i173.2.epil = icmp eq i8 %i.oz, 0
  %i.pa = select i1 %.not.i173.2.epil, i64 %.021.i.2.epil.init, i64 %.01819.i.2.epil.init
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.pa
  store i32 %i.ow, ptr %i.pb, align 4, !tbaa !21
  br label %.split.us

.split.us:                                        ; preds = %.lr.ph.i172.2.epil.preheader, %.split.us.loopexit.unr-lcssa, %_ZN7meshoptL12bvhPartitionEPjPKjPKhmm.exit.1
  %i.pc = add nsw i32 %6, 1                       ; 2 uses
  tail call fastcc void @_ZN7meshoptL8bvhSplitEPKNS_6BVHBoxEPjS3_S3_PhmiPvPsPKjmmmf(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %.1132, i32 noundef %i.pc, ptr noundef %7, ptr noundef %8, ptr noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, float noundef %13)
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.1132
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.1132
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.1132
  %i.pg = getelementptr inbounds nuw i8, ptr %4, i64 %.1132
  %i.ph = sub i64 %5, %.1132
  tail call fastcc void @_ZN7meshoptL8bvhSplitEPKNS_6BVHBoxEPjS3_S3_PhmiPvPsPKjmmmf(ptr noundef %0, ptr noundef %i.pd, ptr noundef %i.pe, ptr noundef %i.pf, ptr noundef %i.pg, i64 noundef %i.ph, i32 noundef %i.pc, ptr noundef %7, ptr noundef %8, ptr noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, float noundef %13)
  br label %_ZN7meshoptL11bvhPackTailEPhPKjmPsS2_mm.exit

.lr.ph.i172.preheader:                            ; preds = %.preheader.split.preheader
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %7, ptr align 4 %1, i64 %i.ml, i1 false)
  %xtraiter256 = and i64 %5, 1
  %i.pi = icmp eq i64 %i.bm, 0
  br i1 %i.pi, label %.lr.ph.i172.epil.preheader, label %.lr.ph.i172.preheader.new

.lr.ph.i172.preheader.new:                        ; preds = %.lr.ph.i172.preheader
  %unroll_iter260 = and i64 %5, -2
  br label %.lr.ph.i172

.lr.ph.i172:                                      ; preds = %.lr.ph.i172, %.lr.ph.i172.preheader.new
  %.021.i = phi i64 [ 0, %.lr.ph.i172.preheader.new ], [ %i.qe, %.lr.ph.i172 ] ; 2 uses
  %.01720.i = phi i64 [ 0, %.lr.ph.i172.preheader.new ], [ %i.qg, %.lr.ph.i172 ] ; 3 uses
  %.01819.i = phi i64 [ %.1132, %.lr.ph.i172.preheader.new ], [ %i.qf, %.lr.ph.i172 ] ; 2 uses
  %niter261 = phi i64 [ 0, %.lr.ph.i172.preheader.new ], [ %niter261.next.1, %.lr.ph.i172 ]
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %.01720.i
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !21 ; 2 uses
  %i.pl = zext i32 %i.pk to i64
  %i.pm = getelementptr inbounds nuw i8, ptr %i.mm, i64 %i.pl
  %i.pn = load i8, ptr %i.pm, align 1, !tbaa !30  ; 2 uses
  %.not.i173 = icmp eq i8 %i.pn, 0
  %i.po = select i1 %.not.i173, i64 %.021.i, i64 %.01819.i
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.po
  store i32 %i.pk, ptr %i.pp, align 4, !tbaa !21
  %i.pq = add i64 %.021.i, 1
  %i.pr = zext i8 %i.pn to i64                    ; 2 uses
  %i.ps = sub i64 %i.pq, %i.pr                    ; 2 uses
  %i.pt = add i64 %.01819.i, %i.pr                ; 2 uses
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %.01720.i
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 4
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !21 ; 2 uses
  %i.px = zext i32 %i.pw to i64
  %i.py = getelementptr inbounds nuw i8, ptr %i.mm, i64 %i.px
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !30  ; 2 uses
  %.not.i173.1265 = icmp eq i8 %i.pz, 0
  %i.qa = select i1 %.not.i173.1265, i64 %i.ps, i64 %i.pt
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.qa
  store i32 %i.pw, ptr %i.qb, align 4, !tbaa !21
  %i.qc = add i64 %i.ps, 1
  %i.qd = zext i8 %i.pz to i64                    ; 2 uses
  %i.qe = sub i64 %i.qc, %i.qd                    ; 2 uses
  %i.qf = add i64 %i.pt, %i.qd                    ; 2 uses
  %i.qg = add nuw i64 %.01720.i, 2                ; 2 uses
  %niter261.next.1 = add i64 %niter261, 2         ; 2 uses
  %niter261.ncmp.1 = icmp eq i64 %niter261.next.1, %unroll_iter260
  br i1 %niter261.ncmp.1, label %_ZN7meshoptL12bvhPartitionEPjPKjPKhmm.exit.unr-lcssa, label %.lr.ph.i172, !llvm.loop !116

_ZN7meshoptL12bvhPartitionEPjPKjPKhmm.exit.unr-lcssa: ; preds = %.lr.ph.i172
  %lcmp.mod258.not = icmp eq i64 %xtraiter256, 0
  br i1 %lcmp.mod258.not, label %_ZN7meshoptL12bvhPartitionEPjPKjPKhmm.exit, label %.lr.ph.i172.epil.preheader

.lr.ph.i172.epil.preheader:                       ; preds = %_ZN7meshoptL12bvhPartitionEPjPKjPKhmm.exit.unr-lcssa, %.lr.ph.i172.preheader
  %.021.i.epil.init = phi i64 [ 0, %.lr.ph.i172.preheader ], [ %i.qe, %_ZN7meshoptL12bvhPartitionEPjPKjPKhmm.exit.unr-lcssa ]
  %.01720.i.epil.init = phi i64 [ 0, %.lr.ph.i172.preheader ], [ %i.qg, %_ZN7meshoptL12bvhPartitionEPjPKjPKhmm.exit.unr-lcssa ]
  %.01819.i.epil.init = phi i64 [ %.1132, %.lr.ph.i172.preheader ], [ %i.qf, %_ZN7meshoptL12bvhPartitionEPjPKjPKhmm.exit.unr-lcssa ]
  %lcmp.mod259 = trunc i64 %5 to i1
  tail call void @llvm.assume(i1 %lcmp.mod259)
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %.01720.i.epil.init
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !21 ; 2 uses
  %i.qj = zext i32 %i.qi to i64
  %i.qk = getelementptr inbounds nuw i8, ptr %i.mm, i64 %i.qj
  %i.ql = load i8, ptr %i.qk, align 1, !tbaa !30
  %.not.i173.epil = icmp eq i8 %i.ql, 0
  %i.qm = select i1 %.not.i173.epil, i64 %.021.i.epil.init, i64 %.01819.i.epil.init
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.qm
  store i32 %i.qi, ptr %i.qn, align 4, !tbaa !21
  br label %_ZN7meshoptL12bvhPartitionEPjPKjPKhmm.exit

_ZN7meshoptL12bvhPartitionEPjPKjPKhmm.exit:       ; preds = %_ZN7meshoptL12bvhPartitionEPjPKjPKhmm.exit.unr-lcssa, %.lr.ph.i172.epil.preheader
  %i.qo = icmp eq i32 %.1134, 1
  br i1 %i.qo, label %.lr.ph.i172.preheader.2, label %.lr.ph.i172.preheader.1

.lr.ph.i172.preheader.1:                          ; preds = %.preheader.split.preheader, %_ZN7meshoptL12bvhPartitionEPjPKjPKhmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %7, ptr align 4 %2, i64 %i.ml, i1 false)
  %xtraiter268 = and i64 %5, 1
  %i.qp = icmp eq i64 %i.bm, 0
  br i1 %i.qp, label %.lr.ph.i172.1.epil.preheader, label %.lr.ph.i172.preheader.1.new

.lr.ph.i172.preheader.1.new:                      ; preds = %.lr.ph.i172.preheader.1
  %unroll_iter272 = and i64 %5, -2
  br label %.lr.ph.i172.1

.lr.ph.i172.1:                                    ; preds = %.lr.ph.i172.1, %.lr.ph.i172.preheader.1.new
  %.021.i.1 = phi i64 [ 0, %.lr.ph.i172.preheader.1.new ], [ %i.rl, %.lr.ph.i172.1 ] ; 2 uses
  %.01720.i.1 = phi i64 [ 0, %.lr.ph.i172.preheader.1.new ], [ %i.rn, %.lr.ph.i172.1 ] ; 3 uses
  %.01819.i.1 = phi i64 [ %.1132, %.lr.ph.i172.preheader.1.new ], [ %i.rm, %.lr.ph.i172.1 ] ; 2 uses
  %niter273 = phi i64 [ 0, %.lr.ph.i172.preheader.1.new ], [ %niter273.next.1, %.lr.ph.i172.1 ]
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %.01720.i.1
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !21 ; 2 uses
  %i.qs = zext i32 %i.qr to i64
  %i.qt = getelementptr inbounds nuw i8, ptr %i.mm, i64 %i.qs
  %i.qu = load i8, ptr %i.qt, align 1, !tbaa !30  ; 2 uses
  %.not.i173.1 = icmp eq i8 %i.qu, 0
  %i.qv = select i1 %.not.i173.1, i64 %.021.i.1, i64 %.01819.i.1
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.qv
  store i32 %i.qr, ptr %i.qw, align 4, !tbaa !21
  %i.qx = add i64 %.021.i.1, 1
  %i.qy = zext i8 %i.qu to i64                    ; 2 uses
  %i.qz = sub i64 %i.qx, %i.qy                    ; 2 uses
  %i.ra = add i64 %.01819.i.1, %i.qy              ; 2 uses
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %.01720.i.1
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 4
end_hunk_2
