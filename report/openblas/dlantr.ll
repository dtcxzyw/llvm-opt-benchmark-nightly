loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@dlantr_:bb.a
  %i.mr = tail call i32 @llvm.smin.i32(i32 %i.lk, i32 %i.mq)
  %.not409516 = icmp slt i32 %i.mr, 1
  br i1 %.not409516, label %._crit_edge520, label %iter.check928

iter.check928:                                    ; preds = %.lr.ph524
  %smin = tail call i32 @llvm.smin.i32(i32 %i.lk, i32 %indvars.iv689)
  %i.ms = add nsw i32 %smin, 1
  %i.mt = mul nsw i64 %indvars.iv693, %i.lz
  %wide.trip.count691 = zext i32 %i.ms to i64
  %invariant.gep857 = getelementptr [8 x i8], ptr %i.g, i64 %i.mt ; 7 uses
  %min.iters.check910 = icmp ult i64 %i.mk, 4
  br i1 %min.iters.check910, label %vec.epilog.scalar.ph929.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check928
  %bound0 = icmp ult ptr %7, %scevgep908
  %bound1 = icmp ult ptr %scevgep906, %scevgep905
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph929.preheader, label %vector.main.loop.iter.check911

vector.main.loop.iter.check911:                   ; preds = %vector.memcheck
  %min.iters.check912 = icmp ult i64 %i.mk, 16
  br i1 %min.iters.check912, label %vec.epilog.ph932, label %vector.ph913

vector.ph913:                                     ; preds = %vector.main.loop.iter.check911
  %i.mu = and i64 %i.mk, 12
  %n.vec914 = and i64 %i.mk, -16                  ; 4 uses
  %i.mv = or disjoint i64 %n.vec914, 1
  br label %vector.body915

vector.body915:                                   ; preds = %vector.body915, %vector.ph913
  %index916 = phi i64 [ 0, %vector.ph913 ], [ %index.next924, %vector.body915 ] ; 3 uses
  %i.mw = getelementptr [8 x i8], ptr %invariant.gep857, i64 %index916 ; 4 uses
  %i.mx = getelementptr i8, ptr %i.mw, i64 8
  %i.my = getelementptr i8, ptr %i.mw, i64 40
  %i.mz = getelementptr i8, ptr %i.mw, i64 72
  %i.na = getelementptr i8, ptr %i.mw, i64 104
  %wide.load = load <4 x double>, ptr %i.mx, align 8, !tbaa !9, !alias.scope !38 ; 3 uses
  %wide.load917 = load <4 x double>, ptr %i.my, align 8, !tbaa !9, !alias.scope !38 ; 3 uses
  %wide.load918 = load <4 x double>, ptr %i.mz, align 8, !tbaa !9, !alias.scope !38 ; 3 uses
  %wide.load919 = load <4 x double>, ptr %i.na, align 8, !tbaa !9, !alias.scope !38 ; 3 uses
  %i.nb = fcmp oge <4 x double> %wide.load, zeroinitializer
  %i.nc = fcmp oge <4 x double> %wide.load917, zeroinitializer
  %i.nd = fcmp oge <4 x double> %wide.load918, zeroinitializer
  %i.ne = fcmp oge <4 x double> %wide.load919, zeroinitializer
  %i.nf = fneg <4 x double> %wide.load
  %i.ng = fneg <4 x double> %wide.load917
  %i.nh = fneg <4 x double> %wide.load918
  %i.ni = fneg <4 x double> %wide.load919
  %i.nj = select <4 x i1> %i.nb, <4 x double> %wide.load, <4 x double> %i.nf
  %i.nk = select <4 x i1> %i.nc, <4 x double> %wide.load917, <4 x double> %i.ng
  %i.nl = select <4 x i1> %i.nd, <4 x double> %wide.load918, <4 x double> %i.nh
  %i.nm = select <4 x i1> %i.ne, <4 x double> %wide.load919, <4 x double> %i.ni
  %i.nn = getelementptr [8 x i8], ptr %7, i64 %index916 ; 5 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 32 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.nn, i64 64 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nn, i64 96 ; 2 uses
  %wide.load920 = load <4 x double>, ptr %i.nn, align 8, !tbaa !9, !alias.scope !41, !noalias !38
  %wide.load921 = load <4 x double>, ptr %i.no, align 8, !tbaa !9, !alias.scope !41, !noalias !38
  %wide.load922 = load <4 x double>, ptr %i.np, align 8, !tbaa !9, !alias.scope !41, !noalias !38
  %wide.load923 = load <4 x double>, ptr %i.nq, align 8, !tbaa !9, !alias.scope !41, !noalias !38
  %i.nr = fadd <4 x double> %wide.load920, %i.nj
  %i.ns = fadd <4 x double> %wide.load921, %i.nk
  %i.nt = fadd <4 x double> %wide.load922, %i.nl
  %i.nu = fadd <4 x double> %wide.load923, %i.nm
  store <4 x double> %i.nr, ptr %i.nn, align 8, !tbaa !9, !alias.scope !41, !noalias !38
  store <4 x double> %i.ns, ptr %i.no, align 8, !tbaa !9, !alias.scope !41, !noalias !38
  store <4 x double> %i.nt, ptr %i.np, align 8, !tbaa !9, !alias.scope !41, !noalias !38
  store <4 x double> %i.nu, ptr %i.nq, align 8, !tbaa !9, !alias.scope !41, !noalias !38
  %index.next924 = add nuw i64 %index916, 16      ; 2 uses
  %i.nv = icmp eq i64 %index.next924, %n.vec914
  br i1 %i.nv, label %middle.block925, label %vector.body915, !llvm.loop !43

middle.block925:                                  ; preds = %vector.body915
  %cmp.n926 = icmp eq i64 %i.mk, %n.vec914
  br i1 %cmp.n926, label %._crit_edge520, label %vec.epilog.iter.check930

vec.epilog.iter.check930:                         ; preds = %middle.block925
  %min.epilog.iters.check931 = icmp eq i64 %i.mu, 0
  br i1 %min.epilog.iters.check931, label %vec.epilog.scalar.ph929.preheader, label %vec.epilog.ph932, !prof !35

vec.epilog.ph932:                                 ; preds = %vector.main.loop.iter.check911, %vec.epilog.iter.check930
  %vec.epilog.resume.val927 = phi i64 [ %n.vec914, %vec.epilog.iter.check930 ], [ 0, %vector.main.loop.iter.check911 ]
  %n.vec933 = and i64 %i.mk, -4                   ; 3 uses
  %i.nw = or disjoint i64 %n.vec933, 1
  br label %vec.epilog.vector.body934

vec.epilog.vector.body934:                        ; preds = %vec.epilog.vector.body934, %vec.epilog.ph932
  %index935 = phi i64 [ %vec.epilog.resume.val927, %vec.epilog.ph932 ], [ %index.next938, %vec.epilog.vector.body934 ] ; 3 uses
  %i.nx = getelementptr [8 x i8], ptr %invariant.gep857, i64 %index935
  %i.ny = getelementptr i8, ptr %i.nx, i64 8
  %wide.load936 = load <4 x double>, ptr %i.ny, align 8, !tbaa !9, !alias.scope !38 ; 3 uses
  %i.nz = fcmp oge <4 x double> %wide.load936, zeroinitializer
  %i.oa = fneg <4 x double> %wide.load936
  %i.ob = select <4 x i1> %i.nz, <4 x double> %wide.load936, <4 x double> %i.oa
  %i.oc = getelementptr [8 x i8], ptr %7, i64 %index935 ; 2 uses
  %wide.load937 = load <4 x double>, ptr %i.oc, align 8, !tbaa !9, !alias.scope !41, !noalias !38
  %i.od = fadd <4 x double> %wide.load937, %i.ob
  store <4 x double> %i.od, ptr %i.oc, align 8, !tbaa !9, !alias.scope !41, !noalias !38
  %index.next938 = add nuw i64 %index935, 4       ; 2 uses
  %i.oe = icmp eq i64 %index.next938, %n.vec933
  br i1 %i.oe, label %vec.epilog.middle.block939, label %vec.epilog.vector.body934, !llvm.loop !44

vec.epilog.middle.block939:                       ; preds = %vec.epilog.vector.body934
  %cmp.n940 = icmp eq i64 %i.mk, %n.vec933
  br i1 %cmp.n940, label %._crit_edge520, label %vec.epilog.scalar.ph929.preheader

vec.epilog.scalar.ph929.preheader:                ; preds = %vector.memcheck, %iter.check928, %vec.epilog.iter.check930, %vec.epilog.middle.block939
  %indvars.iv686.ph = phi i64 [ 1, %iter.check928 ], [ 1, %vector.memcheck ], [ %i.mv, %vec.epilog.iter.check930 ], [ %i.nw, %vec.epilog.middle.block939 ] ; 4 uses
  %i.of = sub nsw i64 %i.mh, %indvars.iv686.ph
  %xtraiter = and i64 %i.of, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph929.prol.loopexit, label %vec.epilog.scalar.ph929.prol

vec.epilog.scalar.ph929.prol:                     ; preds = %vec.epilog.scalar.ph929.preheader, %vec.epilog.scalar.ph929.prol
  %indvars.iv686.prol = phi i64 [ %indvars.iv.next687.prol, %vec.epilog.scalar.ph929.prol ], [ %indvars.iv686.ph, %vec.epilog.scalar.ph929.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph929.prol ], [ 0, %vec.epilog.scalar.ph929.preheader ]
  %gep858.prol = getelementptr [8 x i8], ptr %invariant.gep857, i64 %indvars.iv686.prol
  %i.og = load double, ptr %gep858.prol, align 8, !tbaa !9 ; 3 uses
  %i.oh = fcmp oge double %i.og, 0.000000e+00
  %i.oi = fneg double %i.og
  %i.oj = select i1 %i.oh, double %i.og, double %i.oi
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv686.prol ; 2 uses
  %i.ol = load double, ptr %i.ok, align 8, !tbaa !9
  %i.om = fadd double %i.ol, %i.oj
  store double %i.om, ptr %i.ok, align 8, !tbaa !9
  %indvars.iv.next687.prol = add nuw nsw i64 %indvars.iv686.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph929.prol.loopexit, label %vec.epilog.scalar.ph929.prol, !llvm.loop !45

vec.epilog.scalar.ph929.prol.loopexit:            ; preds = %vec.epilog.scalar.ph929.prol, %vec.epilog.scalar.ph929.preheader
  %indvars.iv686.unr = phi i64 [ %indvars.iv686.ph, %vec.epilog.scalar.ph929.preheader ], [ %indvars.iv.next687.prol, %vec.epilog.scalar.ph929.prol ]
  %i.on = sub nsw i64 %indvars.iv686.ph, %i.mh
  %i.oo = icmp ugt i64 %i.on, -4
  br i1 %i.oo, label %._crit_edge520, label %vec.epilog.scalar.ph929

vec.epilog.scalar.ph929:                          ; preds = %vec.epilog.scalar.ph929.prol.loopexit, %vec.epilog.scalar.ph929
  %indvars.iv686 = phi i64 [ %indvars.iv.next687.3, %vec.epilog.scalar.ph929 ], [ %indvars.iv686.unr, %vec.epilog.scalar.ph929.prol.loopexit ] ; 7 uses
  %gep858 = getelementptr [8 x i8], ptr %invariant.gep857, i64 %indvars.iv686
  %i.op = load double, ptr %gep858, align 8, !tbaa !9 ; 3 uses
  %i.oq = fcmp oge double %i.op, 0.000000e+00
  %i.or = fneg double %i.op
  %i.os = select i1 %i.oq, double %i.op, double %i.or
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv686 ; 2 uses
  %i.ou = load double, ptr %i.ot, align 8, !tbaa !9
  %i.ov = fadd double %i.ou, %i.os
  store double %i.ov, ptr %i.ot, align 8, !tbaa !9
  %i.ow = getelementptr [8 x i8], ptr %invariant.gep857, i64 %indvars.iv686
  %gep858.1 = getelementptr i8, ptr %i.ow, i64 8
  %i.ox = load double, ptr %gep858.1, align 8, !tbaa !9 ; 3 uses
  %i.oy = fcmp oge double %i.ox, 0.000000e+00
  %i.oz = fneg double %i.ox
  %i.pa = select i1 %i.oy, double %i.ox, double %i.oz
  %i.pb = getelementptr [8 x i8], ptr %7, i64 %indvars.iv686 ; 2 uses
  %i.pc = load double, ptr %i.pb, align 8, !tbaa !9
  %i.pd = fadd double %i.pc, %i.pa
  store double %i.pd, ptr %i.pb, align 8, !tbaa !9
  %indvars.iv.next687.1 = add nuw nsw i64 %indvars.iv686, 2 ; 2 uses
  %gep858.2 = getelementptr [8 x i8], ptr %invariant.gep857, i64 %indvars.iv.next687.1
  %i.pe = load double, ptr %gep858.2, align 8, !tbaa !9 ; 3 uses
  %i.pf = fcmp oge double %i.pe, 0.000000e+00
  %i.pg = fneg double %i.pe
  %i.ph = select i1 %i.pf, double %i.pe, double %i.pg
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next687.1 ; 2 uses
  %i.pj = load double, ptr %i.pi, align 8, !tbaa !9
  %i.pk = fadd double %i.pj, %i.ph
  store double %i.pk, ptr %i.pi, align 8, !tbaa !9
  %indvars.iv.next687.2 = add nuw nsw i64 %indvars.iv686, 3 ; 2 uses
  %gep858.3 = getelementptr [8 x i8], ptr %invariant.gep857, i64 %indvars.iv.next687.2
  %i.pl = load double, ptr %gep858.3, align 8, !tbaa !9 ; 3 uses
  %i.pm = fcmp oge double %i.pl, 0.000000e+00
  %i.pn = fneg double %i.pl
  %i.po = select i1 %i.pm, double %i.pl, double %i.pn
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next687.2 ; 2 uses
  %i.pq = load double, ptr %i.pp, align 8, !tbaa !9
  %i.pr = fadd double %i.pq, %i.po
  store double %i.pr, ptr %i.pp, align 8, !tbaa !9
  %indvars.iv.next687.3 = add nuw nsw i64 %indvars.iv686, 4 ; 2 uses
  %exitcond692.not.3 = icmp eq i64 %indvars.iv.next687.3, %wide.trip.count691
  br i1 %exitcond692.not.3, label %._crit_edge520, label %vec.epilog.scalar.ph929, !llvm.loop !46

._crit_edge520:                                   ; preds = %vec.epilog.scalar.ph929.prol.loopexit, %vec.epilog.scalar.ph929, %middle.block925, %vec.epilog.middle.block939, %.lr.ph524
  %indvars.iv.next694 = add nuw nsw i64 %indvars.iv693, 1
  %indvars.iv.next690 = add nuw nsw i32 %indvars.iv689, 1 ; 2 uses
  %exitcond697.not = icmp eq i32 %indvars.iv.next690, %i.ly
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond697.not, label %.loopexit453, label %.lr.ph524, !llvm.loop !47

bb.am:                                            ; preds = %bb.ak
  br i1 %.not400526, label %._crit_edge530, label %.lr.ph529.preheader

.lr.ph529.preheader:                              ; preds = %bb.am
  %i.ps = zext nneg i32 %i.lk to i64
  %i.pt = shl nuw nsw i64 %i.ps, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 %i.pt, i1 false), !tbaa !9
  br label %._crit_edge530

._crit_edge530:                                   ; preds = %.lr.ph529.preheader, %bb.am
  %i.pu = load i32, ptr %4, align 4, !tbaa !8     ; 2 uses
  %.not401538 = icmp slt i32 %i.pu, 1
  br i1 %.not401538, label %.loopexit453, label %.lr.ph541.preheader

.lr.ph541.preheader:                              ; preds = %._crit_edge530
  %8 = sext i32 %i.e to i64                       ; 3 uses
  %9 = add nuw i32 %i.pu, 1
  %wide.trip.count711 = zext i32 %9 to i64
  br i1 %.not400526, label %.loopexit453, label %.lr.ph541.preheader.a

.lr.ph541.preheader.a:                            ; preds = %.lr.ph541.preheader
  %scevgep943 = getelementptr i8, ptr %7, i64 -8
  %i.pv = or i64 %8, %i.f
  %i.pw = shl nsw i64 %i.pv, 3                    ; 2 uses
  %i.px = shl nsw i64 %8, 3
  %i.py = getelementptr i8, ptr %5, i64 %i.pw
  %i.pz = getelementptr i8, ptr %5, i64 %i.pw
  %i.qa = getelementptr i8, ptr %i.pz, i64 8
  br label %.lr.ph541

.lr.ph541:                                        ; preds = %.lr.ph541.preheader.a, %._crit_edge535
  %indvar948 = phi i64 [ 0, %.lr.ph541.preheader.a ], [ %indvar.next949, %._crit_edge535 ] ; 2 uses
  %indvar944 = phi i32 [ 0, %.lr.ph541.preheader.a ], [ %indvar.next945, %._crit_edge535 ] ; 2 uses
  %indvars.iv707 = phi i64 [ 1, %.lr.ph541.preheader.a ], [ %indvars.iv.next708, %._crit_edge535 ] ; 5 uses
  %i.qb = trunc i64 %indvars.iv707 to i32
  %smin1122 = tail call i32 @llvm.smin.i32(i32 %i.lk, i32 %i.qb)
  %i.qc = add i32 %smin1122, 1
  %i.qd = zext i32 %i.qc to i64                   ; 2 uses
  %i.qe = trunc i64 %indvars.iv707 to i32
  %smin956 = tail call i32 @llvm.smin.i32(i32 %i.lk, i32 %i.qe)
  %i.qf = add i32 %smin956, 1
  %i.qg = zext i32 %i.qf to i64
  %i.qh = add nsw i64 %i.qg, -1                   ; 7 uses
  %10 = trunc nuw nsw i64 %indvars.iv707 to i32
  %smin946 = tail call i32 @llvm.smin.i32(i32 %i.lk, i32 %10)
  %i.qi = add i32 %smin946, 1
  %i.qj = mul nsw i64 %indvars.iv707, %8
  %wide.trip.count705 = zext i32 %i.qi to i64
  %invariant.gep859 = getelementptr [8 x i8], ptr %i.g, i64 %i.qj ; 7 uses
  %min.iters.check958 = icmp ult i64 %i.qh, 4
  br i1 %min.iters.check958, label %vec.epilog.scalar.ph977.preheader, label %iter.check976

iter.check976:                                    ; preds = %.lr.ph541
  %11 = mul i64 %i.px, %indvar948                 ; 2 uses
  %scevgep952 = getelementptr i8, ptr %i.py, i64 %11
  %12 = add i32 %indvar944, 1
  %smin704 = tail call i32 @llvm.smin.i32(i32 %i.lk, i32 %12)
  %i.qk = add i32 %smin704, 1
  %13 = zext i32 %i.qk to i64
  %14 = shl nuw nsw i64 %13, 3                    ; 2 uses
  %scevgep953 = getelementptr i8, ptr %scevgep952, i64 %14
  %scevgep951 = getelementptr i8, ptr %i.qa, i64 %11
  %scevgep948 = getelementptr i8, ptr %scevgep943, i64 %14
  %bound0954 = icmp ult ptr %7, %scevgep953
  %min.iters.check957 = icmp ult ptr %scevgep951, %scevgep948
  %found.conflict956 = and i1 %bound0954, %min.iters.check957
  br i1 %found.conflict956, label %vec.epilog.scalar.ph977.preheader, label %vector.main.loop.iter.check958

vector.main.loop.iter.check958:                   ; preds = %iter.check976
  %min.iters.check959 = icmp ult i64 %i.qh, 16
  br i1 %min.iters.check959, label %vec.epilog.ph980, label %vector.ph960

vector.ph960:                                     ; preds = %vector.main.loop.iter.check958
  %i.ql = and i64 %i.qh, 12
  %n.vec961 = and i64 %i.qh, -16                  ; 4 uses
  %i.qm = or disjoint i64 %n.vec961, 1
  br label %vector.body962

vector.body962:                                   ; preds = %vector.body962, %vector.ph960
  %index963 = phi i64 [ 0, %vector.ph960 ], [ %index.next972, %vector.body962 ] ; 3 uses
  %i.qn = getelementptr [8 x i8], ptr %invariant.gep859, i64 %index963 ; 4 uses
  %i.qo = getelementptr i8, ptr %i.qn, i64 8
  %i.qp = getelementptr i8, ptr %i.qn, i64 40
  %i.qq = getelementptr i8, ptr %i.qn, i64 72
  %i.qr = getelementptr i8, ptr %i.qn, i64 104
  %wide.load964 = load <4 x double>, ptr %i.qo, align 8, !tbaa !9, !alias.scope !48 ; 3 uses
  %wide.load965 = load <4 x double>, ptr %i.qp, align 8, !tbaa !9, !alias.scope !48 ; 3 uses
  %wide.load966 = load <4 x double>, ptr %i.qq, align 8, !tbaa !9, !alias.scope !48 ; 3 uses
  %wide.load967 = load <4 x double>, ptr %i.qr, align 8, !tbaa !9, !alias.scope !48 ; 3 uses
  %i.qs = fcmp oge <4 x double> %wide.load964, zeroinitializer
  %i.qt = fcmp oge <4 x double> %wide.load965, zeroinitializer
  %i.qu = fcmp oge <4 x double> %wide.load966, zeroinitializer
  %i.qv = fcmp oge <4 x double> %wide.load967, zeroinitializer
  %i.qw = fneg <4 x double> %wide.load964
  %i.qx = fneg <4 x double> %wide.load965
  %i.qy = fneg <4 x double> %wide.load966
  %i.qz = fneg <4 x double> %wide.load967
  %i.ra = select <4 x i1> %i.qs, <4 x double> %wide.load964, <4 x double> %i.qw
  %i.rb = select <4 x i1> %i.qt, <4 x double> %wide.load965, <4 x double> %i.qx
  %i.rc = select <4 x i1> %i.qu, <4 x double> %wide.load966, <4 x double> %i.qy
  %i.rd = select <4 x i1> %i.qv, <4 x double> %wide.load967, <4 x double> %i.qz
  %i.re = getelementptr [8 x i8], ptr %7, i64 %index963 ; 5 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 32 ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.re, i64 64 ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.re, i64 96 ; 2 uses
  %wide.load968 = load <4 x double>, ptr %i.re, align 8, !tbaa !9, !alias.scope !51, !noalias !48
  %wide.load969 = load <4 x double>, ptr %i.rf, align 8, !tbaa !9, !alias.scope !51, !noalias !48
  %wide.load970 = load <4 x double>, ptr %i.rg, align 8, !tbaa !9, !alias.scope !51, !noalias !48
  %wide.load971 = load <4 x double>, ptr %i.rh, align 8, !tbaa !9, !alias.scope !51, !noalias !48
  %i.ri = fadd <4 x double> %wide.load968, %i.ra
  %i.rj = fadd <4 x double> %wide.load969, %i.rb
  %i.rk = fadd <4 x double> %wide.load970, %i.rc
  %i.rl = fadd <4 x double> %wide.load971, %i.rd
  store <4 x double> %i.ri, ptr %i.re, align 8, !tbaa !9, !alias.scope !51, !noalias !48
  store <4 x double> %i.rj, ptr %i.rf, align 8, !tbaa !9, !alias.scope !51, !noalias !48
  store <4 x double> %i.rk, ptr %i.rg, align 8, !tbaa !9, !alias.scope !51, !noalias !48
  store <4 x double> %i.rl, ptr %i.rh, align 8, !tbaa !9, !alias.scope !51, !noalias !48
  %index.next972 = add nuw i64 %index963, 16      ; 2 uses
  %i.rm = icmp eq i64 %index.next972, %n.vec961
  br i1 %i.rm, label %middle.block973, label %vector.body962, !llvm.loop !53

middle.block973:                                  ; preds = %vector.body962
  %cmp.n974 = icmp eq i64 %i.qh, %n.vec961
  br i1 %cmp.n974, label %._crit_edge535, label %vec.epilog.iter.check978

vec.epilog.iter.check978:                         ; preds = %middle.block973
  %min.epilog.iters.check979 = icmp eq i64 %i.ql, 0
  br i1 %min.epilog.iters.check979, label %vec.epilog.scalar.ph977.preheader, label %vec.epilog.ph980, !prof !35

vec.epilog.ph980:                                 ; preds = %vector.main.loop.iter.check958, %vec.epilog.iter.check978
  %vec.epilog.resume.val975 = phi i64 [ %n.vec961, %vec.epilog.iter.check978 ], [ 0, %vector.main.loop.iter.check958 ]
  %n.vec981 = and i64 %i.qh, -4                   ; 3 uses
  %i.rn = or disjoint i64 %n.vec981, 1
  br label %vec.epilog.vector.body982

vec.epilog.vector.body982:                        ; preds = %vec.epilog.vector.body982, %vec.epilog.ph980
  %index983 = phi i64 [ %vec.epilog.resume.val975, %vec.epilog.ph980 ], [ %index.next986, %vec.epilog.vector.body982 ] ; 3 uses
  %i.ro = getelementptr [8 x i8], ptr %invariant.gep859, i64 %index983
  %i.rp = getelementptr i8, ptr %i.ro, i64 8
  %wide.load984 = load <4 x double>, ptr %i.rp, align 8, !tbaa !9, !alias.scope !48 ; 3 uses
  %i.rq = fcmp oge <4 x double> %wide.load984, zeroinitializer
  %i.rr = fneg <4 x double> %wide.load984
  %i.rs = select <4 x i1> %i.rq, <4 x double> %wide.load984, <4 x double> %i.rr
  %i.rt = getelementptr [8 x i8], ptr %7, i64 %index983 ; 2 uses
  %wide.load985 = load <4 x double>, ptr %i.rt, align 8, !tbaa !9, !alias.scope !51, !noalias !48
  %i.ru = fadd <4 x double> %wide.load985, %i.rs
  store <4 x double> %i.ru, ptr %i.rt, align 8, !tbaa !9, !alias.scope !51, !noalias !48
  %index.next986 = add nuw i64 %index983, 4       ; 2 uses
  %i.rv = icmp eq i64 %index.next986, %n.vec981
  br i1 %i.rv, label %vec.epilog.middle.block987, label %vec.epilog.vector.body982, !llvm.loop !54

vec.epilog.middle.block987:                       ; preds = %vec.epilog.vector.body982
  %cmp.n988 = icmp eq i64 %i.qh, %n.vec981
  br i1 %cmp.n988, label %._crit_edge535, label %vec.epilog.scalar.ph977.preheader

vec.epilog.scalar.ph977.preheader:                ; preds = %iter.check976, %.lr.ph541, %vec.epilog.iter.check978, %vec.epilog.middle.block987
  %indvars.iv701.ph = phi i64 [ 1, %.lr.ph541 ], [ 1, %iter.check976 ], [ %i.qm, %vec.epilog.iter.check978 ], [ %i.rn, %vec.epilog.middle.block987 ] ; 4 uses
  %i.rw = sub nsw i64 %i.qd, %indvars.iv701.ph
  %xtraiter1123 = and i64 %i.rw, 3                ; 2 uses
  %lcmp.mod1124.not = icmp eq i64 %xtraiter1123, 0
  br i1 %lcmp.mod1124.not, label %vec.epilog.scalar.ph977.prol.loopexit, label %vec.epilog.scalar.ph977.prol

vec.epilog.scalar.ph977.prol:                     ; preds = %vec.epilog.scalar.ph977.preheader, %vec.epilog.scalar.ph977.prol
  %indvars.iv701.prol = phi i64 [ %indvars.iv.next702.prol, %vec.epilog.scalar.ph977.prol ], [ %indvars.iv701.ph, %vec.epilog.scalar.ph977.preheader ] ; 3 uses
  %prol.iter1125 = phi i64 [ %prol.iter1125.next, %vec.epilog.scalar.ph977.prol ], [ 0, %vec.epilog.scalar.ph977.preheader ]
  %gep860.prol = getelementptr [8 x i8], ptr %invariant.gep859, i64 %indvars.iv701.prol
  %i.rx = load double, ptr %gep860.prol, align 8, !tbaa !9 ; 3 uses
  %i.ry = fcmp oge double %i.rx, 0.000000e+00
  %i.rz = fneg double %i.rx
  %i.sa = select i1 %i.ry, double %i.rx, double %i.rz
  %i.sb = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv701.prol ; 2 uses
  %i.sc = load double, ptr %i.sb, align 8, !tbaa !9
  %i.sd = fadd double %i.sc, %i.sa
  store double %i.sd, ptr %i.sb, align 8, !tbaa !9
  %indvars.iv.next702.prol = add nuw nsw i64 %indvars.iv701.prol, 1 ; 2 uses
  %prol.iter1125.next = add i64 %prol.iter1125, 1 ; 2 uses
  %prol.iter1125.cmp.not = icmp eq i64 %prol.iter1125.next, %xtraiter1123
  br i1 %prol.iter1125.cmp.not, label %vec.epilog.scalar.ph977.prol.loopexit, label %vec.epilog.scalar.ph977.prol, !llvm.loop !55

vec.epilog.scalar.ph977.prol.loopexit:            ; preds = %vec.epilog.scalar.ph977.prol, %vec.epilog.scalar.ph977.preheader
  %indvars.iv701.unr = phi i64 [ %indvars.iv701.ph, %vec.epilog.scalar.ph977.preheader ], [ %indvars.iv.next702.prol, %vec.epilog.scalar.ph977.prol ]
  %i.se = sub nsw i64 %indvars.iv701.ph, %i.qd
  %i.sf = icmp ugt i64 %i.se, -4
  br i1 %i.sf, label %._crit_edge535, label %vec.epilog.scalar.ph977

vec.epilog.scalar.ph977:                          ; preds = %vec.epilog.scalar.ph977.prol.loopexit, %vec.epilog.scalar.ph977
  %indvars.iv701 = phi i64 [ %indvars.iv.next702.3, %vec.epilog.scalar.ph977 ], [ %indvars.iv701.unr, %vec.epilog.scalar.ph977.prol.loopexit ] ; 7 uses
  %gep860 = getelementptr [8 x i8], ptr %invariant.gep859, i64 %indvars.iv701
  %i.sg = load double, ptr %gep860, align 8, !tbaa !9 ; 3 uses
  %i.sh = fcmp oge double %i.sg, 0.000000e+00
  %i.si = fneg double %i.sg
  %i.sj = select i1 %i.sh, double %i.sg, double %i.si
  %i.sk = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv701 ; 2 uses
  %i.sl = load double, ptr %i.sk, align 8, !tbaa !9
  %i.sm = fadd double %i.sl, %i.sj
  store double %i.sm, ptr %i.sk, align 8, !tbaa !9
  %i.sn = getelementptr [8 x i8], ptr %invariant.gep859, i64 %indvars.iv701
  %gep860.1 = getelementptr i8, ptr %i.sn, i64 8
  %i.so = load double, ptr %gep860.1, align 8, !tbaa !9 ; 3 uses
  %i.sp = fcmp oge double %i.so, 0.000000e+00
  %i.sq = fneg double %i.so
  %i.sr = select i1 %i.sp, double %i.so, double %i.sq
  %i.ss = getelementptr [8 x i8], ptr %7, i64 %indvars.iv701 ; 2 uses
  %i.st = load double, ptr %i.ss, align 8, !tbaa !9
  %i.su = fadd double %i.st, %i.sr
  store double %i.su, ptr %i.ss, align 8, !tbaa !9
  %indvars.iv.next702.1 = add nuw nsw i64 %indvars.iv701, 2 ; 2 uses
  %gep860.2 = getelementptr [8 x i8], ptr %invariant.gep859, i64 %indvars.iv.next702.1
  %i.sv = load double, ptr %gep860.2, align 8, !tbaa !9 ; 3 uses
  %i.sw = fcmp oge double %i.sv, 0.000000e+00
  %i.sx = fneg double %i.sv
  %i.sy = select i1 %i.sw, double %i.sv, double %i.sx
  %i.sz = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next702.1 ; 2 uses
  %i.ta = load double, ptr %i.sz, align 8, !tbaa !9
  %i.tb = fadd double %i.ta, %i.sy
  store double %i.tb, ptr %i.sz, align 8, !tbaa !9
  %indvars.iv.next702.2 = add nuw nsw i64 %indvars.iv701, 3 ; 2 uses
  %gep860.3 = getelementptr [8 x i8], ptr %invariant.gep859, i64 %indvars.iv.next702.2
  %i.tc = load double, ptr %gep860.3, align 8, !tbaa !9 ; 3 uses
  %i.td = fcmp oge double %i.tc, 0.000000e+00
  %i.te = fneg double %i.tc
  %i.tf = select i1 %i.td, double %i.tc, double %i.te
  %i.tg = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next702.2 ; 2 uses
  %i.th = load double, ptr %i.tg, align 8, !tbaa !9
  %i.ti = fadd double %i.th, %i.tf
  store double %i.ti, ptr %i.tg, align 8, !tbaa !9
  %indvars.iv.next702.3 = add nuw nsw i64 %indvars.iv701, 4 ; 2 uses
  %exitcond706.not.3 = icmp eq i64 %indvars.iv.next702.3, %wide.trip.count705
  br i1 %exitcond706.not.3, label %._crit_edge535, label %vec.epilog.scalar.ph977, !llvm.loop !56

._crit_edge535:                                   ; preds = %vec.epilog.scalar.ph977.prol.loopexit, %vec.epilog.scalar.ph977, %vec.epilog.middle.block987, %middle.block973
  %indvars.iv.next708 = add nuw nsw i64 %indvars.iv707, 1 ; 2 uses
  %exitcond712.not = icmp eq i64 %indvars.iv.next708, %wide.trip.count711
  %indvar.next945 = add i32 %indvar944, 1
  %indvar.next949 = add i64 %indvar948, 1
  br i1 %exitcond712.not, label %.loopexit453, label %.lr.ph541, !llvm.loop !57

bb.an:                                            ; preds = %bb.aj
  br i1 %.not390, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.tj = load i32, ptr %4, align 4, !tbaa !8     ; 6 uses
  %.440 = tail call i32 @llvm.smin.i32(i32 %i.lk, i32 %i.tj) ; 5 uses
  %.not395543 = icmp slt i32 %.440, 1
  br i1 %.not395543, label %.preheader456, label %iter.check1001

iter.check1001:                                   ; preds = %bb.ao
  %i.tk = add nuw i32 %.440, 1
  %wide.trip.count716 = zext i32 %i.tk to i64
  %i.tl = zext nneg i32 %.440 to i64              ; 5 uses
  %min.iters.check990 = icmp ult i32 %.440, 4
  br i1 %min.iters.check990, label %.lr.ph546.preheader, label %vector.main.loop.iter.check991

vector.main.loop.iter.check991:                   ; preds = %iter.check1001
  %min.iters.check992 = icmp ult i32 %.440, 16
  br i1 %min.iters.check992, label %vec.epilog.ph1005, label %vector.ph993

vector.ph993:                                     ; preds = %vector.main.loop.iter.check991
  %i.tm = and i64 %i.tl, 12
  %n.vec994 = and i64 %i.tl, 2147483632           ; 4 uses
  %i.tn = or disjoint i64 %n.vec994, 1
  br label %vector.body995

vector.body995:                                   ; preds = %vector.body995, %vector.ph993
  %index996 = phi i64 [ 0, %vector.ph993 ], [ %index.next997, %vector.body995 ] ; 2 uses
  %i.to = getelementptr [8 x i8], ptr %7, i64 %index996 ; 4 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 32
  %i.tq = getelementptr inbounds nuw i8, ptr %i.to, i64 64
  %i.tr = getelementptr inbounds nuw i8, ptr %i.to, i64 96
  store <4 x double> splat (double 1.000000e+00), ptr %i.to, align 8, !tbaa !9
  store <4 x double> splat (double 1.000000e+00), ptr %i.tp, align 8, !tbaa !9
  store <4 x double> splat (double 1.000000e+00), ptr %i.tq, align 8, !tbaa !9
  store <4 x double> splat (double 1.000000e+00), ptr %i.tr, align 8, !tbaa !9
  %index.next997 = add nuw i64 %index996, 16      ; 2 uses
  %i.ts = icmp eq i64 %index.next997, %n.vec994
  br i1 %i.ts, label %middle.block998, label %vector.body995, !llvm.loop !58

middle.block998:                                  ; preds = %vector.body995
  %cmp.n999 = icmp eq i64 %n.vec994, %i.tl
  br i1 %cmp.n999, label %.preheader456, label %vec.epilog.iter.check1003

vec.epilog.iter.check1003:                        ; preds = %middle.block998
  %min.epilog.iters.check1004 = icmp eq i64 %i.tm, 0
  br i1 %min.epilog.iters.check1004, label %.lr.ph546.preheader, label %vec.epilog.ph1005, !prof !35

vec.epilog.ph1005:                                ; preds = %vector.main.loop.iter.check991, %vec.epilog.iter.check1003
  %vec.epilog.resume.val1000 = phi i64 [ %n.vec994, %vec.epilog.iter.check1003 ], [ 0, %vector.main.loop.iter.check991 ]
  %n.vec1006 = and i64 %i.tl, 2147483644          ; 3 uses
  %i.tt = or disjoint i64 %n.vec1006, 1
  br label %vec.epilog.vector.body1007

vec.epilog.vector.body1007:                       ; preds = %vec.epilog.vector.body1007, %vec.epilog.ph1005
  %index1008 = phi i64 [ %vec.epilog.resume.val1000, %vec.epilog.ph1005 ], [ %index.next1009, %vec.epilog.vector.body1007 ] ; 2 uses
  %i.tu = getelementptr [8 x i8], ptr %7, i64 %index1008
  store <4 x double> splat (double 1.000000e+00), ptr %i.tu, align 8, !tbaa !9
  %index.next1009 = add nuw i64 %index1008, 4     ; 2 uses
  %i.tv = icmp eq i64 %index.next1009, %n.vec1006
  br i1 %i.tv, label %vec.epilog.middle.block1010, label %vec.epilog.vector.body1007, !llvm.loop !59

vec.epilog.middle.block1010:                      ; preds = %vec.epilog.vector.body1007
  %cmp.n1011 = icmp eq i64 %n.vec1006, %i.tl
  br i1 %cmp.n1011, label %.preheader456, label %.lr.ph546.preheader

.lr.ph546.preheader:                              ; preds = %iter.check1001, %vec.epilog.iter.check1003, %vec.epilog.middle.block1010
  %indvars.iv713.ph = phi i64 [ 1, %iter.check1001 ], [ %i.tn, %vec.epilog.iter.check1003 ], [ %i.tt, %vec.epilog.middle.block1010 ]
  br label %.lr.ph546

.preheader456:                                    ; preds = %.lr.ph546, %middle.block998, %vec.epilog.middle.block1010, %bb.ao
  %.not396.not547 = icmp slt i32 %i.tj, %i.lk
  br i1 %.not396.not547, label %.lr.ph549.preheader, label %.preheader

.lr.ph549.preheader:                              ; preds = %.preheader456
  %i.tw = sext i32 %i.tj to i64
  %i.tx = shl nsw i64 %i.tw, 3
  %scevgep = getelementptr i8, ptr %7, i64 %i.tx
  %i.ty = xor i32 %i.tj, -1
  %i.tz = add i32 %i.lk, %i.ty
  %i.ua = zext i32 %i.tz to i64
  %i.ub = shl nuw nsw i64 %i.ua, 3
  %i.uc = add nuw nsw i64 %i.ub, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.uc, i1 false), !tbaa !9
  br label %.preheader

.lr.ph546:                                        ; preds = %.lr.ph546.preheader, %.lr.ph546
  %indvars.iv713 = phi i64 [ %indvars.iv.next714, %.lr.ph546 ], [ %indvars.iv713.ph, %.lr.ph546.preheader ] ; 2 uses
  %i.ud = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv713
  store double 1.000000e+00, ptr %i.ud, align 8, !tbaa !9
  %indvars.iv.next714 = add nuw nsw i64 %indvars.iv713, 1 ; 2 uses
  %exitcond717.not = icmp eq i64 %indvars.iv.next714, %wide.trip.count716
  br i1 %exitcond717.not, label %.preheader456, label %.lr.ph546, !llvm.loop !60

.preheader:                                       ; preds = %.lr.ph549.preheader, %.preheader456
  %.not397556 = icmp slt i32 %i.tj, 1
  br i1 %.not397556, label %.loopexit453, label %.lr.ph558.preheader

.lr.ph558.preheader:                              ; preds = %.preheader
  %i.ue = add i32 %i.lk, 1
  %i.uf = sext i32 %i.e to i64                    ; 3 uses
  %i.ug = sext i32 %i.lk to i64
  %i.uh = add nuw i32 %i.tj, 1
  %wide.trip.count730 = zext i32 %i.uh to i64
  %scevgep1014 = getelementptr i8, ptr %7, i64 -8
  %i.ui = add i32 %i.lk, -2                       ; 2 uses
  %i.uj = or i64 %i.uf, %i.f
  %i.uk = shl nsw i64 %i.uj, 3                    ; 2 uses
  %i.ul = shl nsw i64 %i.uf, 3
  %i.um = add i32 %i.lk, 1
  %i.un = getelementptr i8, ptr %5, i64 %i.uk
  %i.uo = getelementptr i8, ptr %5, i64 %i.uk
  %i.up = getelementptr i8, ptr %i.uo, i64 8
  br label %.lr.ph558

.loopexit454:                                     ; preds = %vec.epilog.scalar.ph1048.prol.loopexit, %vec.epilog.scalar.ph1048, %middle.block1044, %vec.epilog.middle.block1058, %.lr.ph558
  %indvars.iv.next722 = add nuw i32 %indvars.iv721, 1
  %exitcond731.not = icmp eq i64 %indvars.iv.next728, %wide.trip.count730
  %indvar.next1017 = add i32 %indvar1016, 1
  %indvar.next1020 = add i64 %indvar1019, 1
  br i1 %exitcond731.not, label %.loopexit453, label %.lr.ph558, !llvm.loop !61

.lr.ph558:                                        ; preds = %.lr.ph558.preheader, %.loopexit454
  %indvar1019 = phi i64 [ 0, %.lr.ph558.preheader ], [ %indvar.next1020, %.loopexit454 ] ; 3 uses
  %indvar1016 = phi i32 [ 0, %.lr.ph558.preheader ], [ %indvar.next1017, %.loopexit454 ] ; 2 uses
  %indvars.iv727 = phi i64 [ 1, %.lr.ph558.preheader ], [ %indvars.iv.next728, %.loopexit454 ] ; 3 uses
  %indvars.iv721 = phi i32 [ 2, %.lr.ph558.preheader ], [ %indvars.iv.next722, %.loopexit454 ] ; 3 uses
  %i.uq = trunc i64 %indvar1019 to i32
  %i.ur = sub i32 %i.ui, %i.uq                    ; 3 uses
  %i.us = zext i32 %i.ur to i64
  %i.ut = add nuw nsw i64 %i.us, 1                ; 5 uses
  %i.uu = sext i32 %indvars.iv721 to i64          ; 2 uses
  %i.uv = shl nsw i64 %i.uu, 3                    ; 2 uses
  %scevgep1015 = getelementptr i8, ptr %scevgep1014, i64 %i.uv
  %i.uw = sub i32 %i.ui, %indvar1016
  %i.ux = zext i32 %i.uw to i64
  %i.uy = add nsw i64 %i.uu, %i.ux
  %i.uz = shl nsw i64 %i.uy, 3                    ; 2 uses
  %scevgep1018 = getelementptr i8, ptr %7, i64 %i.uz
  %i.va = mul i64 %i.ul, %indvar1019              ; 2 uses
  %scevgep1021 = getelementptr i8, ptr %i.un, i64 %i.va
  %scevgep1022 = getelementptr i8, ptr %scevgep1021, i64 %i.uv
  %scevgep1023 = getelementptr i8, ptr %i.up, i64 %i.va
  %scevgep1024 = getelementptr i8, ptr %scevgep1023, i64 %i.uz
  %indvars.iv.next728 = add nuw nsw i64 %indvars.iv727, 1 ; 2 uses
  %.not398550.not = icmp slt i64 %indvars.iv727, %i.ug
  br i1 %.not398550.not, label %iter.check1047, label %.loopexit454

iter.check1047:                                   ; preds = %.lr.ph558
  %i.vb = sext i32 %indvars.iv721 to i64          ; 6 uses
  %i.vc = mul nsw i64 %indvars.iv727, %i.uf
  %invariant.gep861 = getelementptr [8 x i8], ptr %i.g, i64 %i.vc ; 7 uses
  %min.iters.check1028 = icmp ult i32 %i.ur, 3
  br i1 %min.iters.check1028, label %vec.epilog.scalar.ph1048.preheader, label %vector.memcheck1013

vector.memcheck1013:                              ; preds = %iter.check1047
  %bound01025 = icmp ult ptr %scevgep1015, %scevgep1024
  %bound11026 = icmp ult ptr %scevgep1022, %scevgep1018
  %found.conflict1027 = and i1 %bound01025, %bound11026
  br i1 %found.conflict1027, label %vec.epilog.scalar.ph1048.preheader, label %vector.main.loop.iter.check1029

vector.main.loop.iter.check1029:                  ; preds = %vector.memcheck1013
  %min.iters.check1030 = icmp ult i32 %i.ur, 15
  br i1 %min.iters.check1030, label %vec.epilog.ph1051, label %vector.ph1031

vector.ph1031:                                    ; preds = %vector.main.loop.iter.check1029
  %i.vd = and i64 %i.ut, 12
  %n.vec1032 = and i64 %i.ut, 8589934576          ; 4 uses
  %i.ve = add nsw i64 %n.vec1032, %i.vb
  br label %vector.body1033

vector.body1033:                                  ; preds = %vector.body1033, %vector.ph1031
  %index1034 = phi i64 [ 0, %vector.ph1031 ], [ %index.next1043, %vector.body1033 ] ; 2 uses
  %i.vf = add i64 %index1034, %i.vb               ; 2 uses
  %i.vg = getelementptr [8 x i8], ptr %invariant.gep861, i64 %i.vf ; 4 uses
  %i.vh = getelementptr i8, ptr %i.vg, i64 32
  %i.vi = getelementptr i8, ptr %i.vg, i64 64
  %i.vj = getelementptr i8, ptr %i.vg, i64 96
  %wide.load1035 = load <4 x double>, ptr %i.vg, align 8, !tbaa !9, !alias.scope !62 ; 3 uses
  %wide.load1036 = load <4 x double>, ptr %i.vh, align 8, !tbaa !9, !alias.scope !62 ; 3 uses
  %wide.load1037 = load <4 x double>, ptr %i.vi, align 8, !tbaa !9, !alias.scope !62 ; 3 uses
  %wide.load1038 = load <4 x double>, ptr %i.vj, align 8, !tbaa !9, !alias.scope !62 ; 3 uses
  %i.vk = fcmp oge <4 x double> %wide.load1035, zeroinitializer
  %i.vl = fcmp oge <4 x double> %wide.load1036, zeroinitializer
  %i.vm = fcmp oge <4 x double> %wide.load1037, zeroinitializer
  %i.vn = fcmp oge <4 x double> %wide.load1038, zeroinitializer
  %i.vo = fneg <4 x double> %wide.load1035
  %i.vp = fneg <4 x double> %wide.load1036
  %i.vq = fneg <4 x double> %wide.load1037
  %i.vr = fneg <4 x double> %wide.load1038
  %i.vs = select <4 x i1> %i.vk, <4 x double> %wide.load1035, <4 x double> %i.vo
  %i.vt = select <4 x i1> %i.vl, <4 x double> %wide.load1036, <4 x double> %i.vp
  %i.vu = select <4 x i1> %i.vm, <4 x double> %wide.load1037, <4 x double> %i.vq
  %i.vv = select <4 x i1> %i.vn, <4 x double> %wide.load1038, <4 x double> %i.vr
end_hunk_0
begin_hunk_1_@dlantr_:bb.a
  %i.yq = getelementptr i8, ptr %5, i64 %i.yn
  %i.yr = getelementptr i8, ptr %i.yq, i64 8
  %i.ys = getelementptr i8, ptr %5, i64 %i.yn
  %i.yt = getelementptr i8, ptr %i.ys, i64 %i.yj
  br label %.lr.ph575

.lr.ph575:                                        ; preds = %.lr.ph575.preheader, %._crit_edge569
  %indvar1062 = phi i64 [ 0, %.lr.ph575.preheader ], [ %indvar.next1063, %._crit_edge569 ] ; 5 uses
  %indvars.iv735 = phi i64 [ 1, %.lr.ph575.preheader ], [ %indvars.iv.next736, %._crit_edge569 ] ; 9 uses
  %i.yu = xor i64 %indvar1062, -1
  %i.yv = add i64 %i.yu, %wide.trip.count740      ; 7 uses
  %i.yw = shl nuw nsw i64 %indvar1062, 3
  %scevgep1064 = getelementptr i8, ptr %7, i64 %i.yw
  %i.yx = mul i64 %i.yo, %indvar1062
  %scevgep1066 = getelementptr i8, ptr %i.yr, i64 %i.yx
  %i.yy = mul i64 %i.yp, %indvar1062
  %scevgep1067 = getelementptr i8, ptr %i.yt, i64 %i.yy
  %.not393565 = icmp sgt i64 %indvars.iv735, %i.yg
  br i1 %.not393565, label %._crit_edge569, label %iter.check1090

iter.check1090:                                   ; preds = %.lr.ph575
  %i.yz = mul nsw i64 %indvars.iv735, %i.yh
  %invariant.gep863 = getelementptr [8 x i8], ptr %i.g, i64 %i.yz ; 7 uses
  %min.iters.check1071 = icmp ult i64 %i.yv, 4
  br i1 %min.iters.check1071, label %vec.epilog.scalar.ph1091.preheader, label %vector.memcheck1061

vector.memcheck1061:                              ; preds = %iter.check1090
  %bound01068 = icmp ult ptr %scevgep1064, %scevgep1067
  %bound11069 = icmp ult ptr %scevgep1066, %scevgep1065.a
  %found.conflict1070 = and i1 %bound01068, %bound11069
  br i1 %found.conflict1070, label %vec.epilog.scalar.ph1091.preheader, label %vector.main.loop.iter.check1072

vector.main.loop.iter.check1072:                  ; preds = %vector.memcheck1061
  %min.iters.check1073 = icmp ult i64 %i.yv, 16
  br i1 %min.iters.check1073, label %vec.epilog.ph1094, label %vector.ph1074

vector.ph1074:                                    ; preds = %vector.main.loop.iter.check1072
  %i.za = and i64 %i.yv, 12
  %n.vec1075 = and i64 %i.yv, -16                 ; 4 uses
  %i.zb = add i64 %indvars.iv735, %n.vec1075
  br label %vector.body1076

vector.body1076:                                  ; preds = %vector.body1076, %vector.ph1074
  %index1077 = phi i64 [ 0, %vector.ph1074 ], [ %index.next1086, %vector.body1076 ] ; 2 uses
  %i.zc = add nuw i64 %indvars.iv735, %index1077  ; 2 uses
  %i.zd = getelementptr [8 x i8], ptr %invariant.gep863, i64 %i.zc ; 4 uses
  %i.ze = getelementptr i8, ptr %i.zd, i64 32
  %i.zf = getelementptr i8, ptr %i.zd, i64 64
  %i.zg = getelementptr i8, ptr %i.zd, i64 96
  %wide.load1078 = load <4 x double>, ptr %i.zd, align 8, !tbaa !9, !alias.scope !71 ; 3 uses
  %wide.load1079 = load <4 x double>, ptr %i.ze, align 8, !tbaa !9, !alias.scope !71 ; 3 uses
  %wide.load1080 = load <4 x double>, ptr %i.zf, align 8, !tbaa !9, !alias.scope !71 ; 3 uses
  %wide.load1081 = load <4 x double>, ptr %i.zg, align 8, !tbaa !9, !alias.scope !71 ; 3 uses
  %i.zh = fcmp oge <4 x double> %wide.load1078, zeroinitializer
  %i.zi = fcmp oge <4 x double> %wide.load1079, zeroinitializer
  %i.zj = fcmp oge <4 x double> %wide.load1080, zeroinitializer
  %i.zk = fcmp oge <4 x double> %wide.load1081, zeroinitializer
  %i.zl = fneg <4 x double> %wide.load1078
  %i.zm = fneg <4 x double> %wide.load1079
  %i.zn = fneg <4 x double> %wide.load1080
  %i.zo = fneg <4 x double> %wide.load1081
  %i.zp = select <4 x i1> %i.zh, <4 x double> %wide.load1078, <4 x double> %i.zl
  %i.zq = select <4 x i1> %i.zi, <4 x double> %wide.load1079, <4 x double> %i.zm
  %i.zr = select <4 x i1> %i.zj, <4 x double> %wide.load1080, <4 x double> %i.zn
  %i.zs = select <4 x i1> %i.zk, <4 x double> %wide.load1081, <4 x double> %i.zo
  %i.zt = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.zc ; 5 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 32 ; 2 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zt, i64 64 ; 2 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zt, i64 96 ; 2 uses
  %wide.load1082 = load <4 x double>, ptr %i.zt, align 8, !tbaa !9, !alias.scope !74, !noalias !71
  %wide.load1083 = load <4 x double>, ptr %i.zu, align 8, !tbaa !9, !alias.scope !74, !noalias !71
  %wide.load1084 = load <4 x double>, ptr %i.zv, align 8, !tbaa !9, !alias.scope !74, !noalias !71
  %wide.load1085 = load <4 x double>, ptr %i.zw, align 8, !tbaa !9, !alias.scope !74, !noalias !71
  %i.zx = fadd <4 x double> %wide.load1082, %i.zp
  %i.zy = fadd <4 x double> %wide.load1083, %i.zq
  %i.zz = fadd <4 x double> %wide.load1084, %i.zr
  %i.aaa = fadd <4 x double> %wide.load1085, %i.zs
  store <4 x double> %i.zx, ptr %i.zt, align 8, !tbaa !9, !alias.scope !74, !noalias !71
  store <4 x double> %i.zy, ptr %i.zu, align 8, !tbaa !9, !alias.scope !74, !noalias !71
  store <4 x double> %i.zz, ptr %i.zv, align 8, !tbaa !9, !alias.scope !74, !noalias !71
  store <4 x double> %i.aaa, ptr %i.zw, align 8, !tbaa !9, !alias.scope !74, !noalias !71
  %index.next1086 = add nuw i64 %index1077, 16    ; 2 uses
  %i.aab = icmp eq i64 %index.next1086, %n.vec1075
  br i1 %i.aab, label %middle.block1087, label %vector.body1076, !llvm.loop !76

middle.block1087:                                 ; preds = %vector.body1076
  %cmp.n1088 = icmp eq i64 %i.yv, %n.vec1075
  br i1 %cmp.n1088, label %._crit_edge569, label %vec.epilog.iter.check1092

vec.epilog.iter.check1092:                        ; preds = %middle.block1087
  %min.epilog.iters.check1093 = icmp eq i64 %i.za, 0
  br i1 %min.epilog.iters.check1093, label %vec.epilog.scalar.ph1091.preheader, label %vec.epilog.ph1094, !prof !35

vec.epilog.ph1094:                                ; preds = %vector.main.loop.iter.check1072, %vec.epilog.iter.check1092
  %vec.epilog.resume.val1089 = phi i64 [ %n.vec1075, %vec.epilog.iter.check1092 ], [ 0, %vector.main.loop.iter.check1072 ]
  %n.vec1095 = and i64 %i.yv, -4                  ; 3 uses
  %i.aac = add i64 %indvars.iv735, %n.vec1095
  br label %vec.epilog.vector.body1096

vec.epilog.vector.body1096:                       ; preds = %vec.epilog.vector.body1096, %vec.epilog.ph1094
  %index1097 = phi i64 [ %vec.epilog.resume.val1089, %vec.epilog.ph1094 ], [ %index.next1100, %vec.epilog.vector.body1096 ] ; 2 uses
  %i.aad = add nuw i64 %indvars.iv735, %index1097 ; 2 uses
  %i.aae = getelementptr [8 x i8], ptr %invariant.gep863, i64 %i.aad
  %wide.load1098 = load <4 x double>, ptr %i.aae, align 8, !tbaa !9, !alias.scope !71 ; 3 uses
  %i.aaf = fcmp oge <4 x double> %wide.load1098, zeroinitializer
  %i.aag = fneg <4 x double> %wide.load1098
  %i.aah = select <4 x i1> %i.aaf, <4 x double> %wide.load1098, <4 x double> %i.aag
  %i.aai = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.aad ; 2 uses
  %wide.load1099 = load <4 x double>, ptr %i.aai, align 8, !tbaa !9, !alias.scope !74, !noalias !71
  %i.aaj = fadd <4 x double> %wide.load1099, %i.aah
  store <4 x double> %i.aaj, ptr %i.aai, align 8, !tbaa !9, !alias.scope !74, !noalias !71
  %index.next1100 = add nuw i64 %index1097, 4     ; 2 uses
  %i.aak = icmp eq i64 %index.next1100, %n.vec1095
  br i1 %i.aak, label %vec.epilog.middle.block1101, label %vec.epilog.vector.body1096, !llvm.loop !77

vec.epilog.middle.block1101:                      ; preds = %vec.epilog.vector.body1096
  %cmp.n1102 = icmp eq i64 %i.yv, %n.vec1095
  br i1 %cmp.n1102, label %._crit_edge569, label %vec.epilog.scalar.ph1091.preheader

vec.epilog.scalar.ph1091.preheader:               ; preds = %vector.memcheck1061, %iter.check1090, %vec.epilog.iter.check1092, %vec.epilog.middle.block1101
  %indvars.iv737.ph = phi i64 [ %indvars.iv735, %iter.check1090 ], [ %indvars.iv735, %vector.memcheck1061 ], [ %i.zb, %vec.epilog.iter.check1092 ], [ %i.aac, %vec.epilog.middle.block1101 ] ; 4 uses
  %i.aal = sub i64 %wide.trip.count740, %indvars.iv737.ph
  %xtraiter1129 = and i64 %i.aal, 3               ; 2 uses
  %lcmp.mod1130.not = icmp eq i64 %xtraiter1129, 0
  br i1 %lcmp.mod1130.not, label %vec.epilog.scalar.ph1091.prol.loopexit, label %vec.epilog.scalar.ph1091.prol

vec.epilog.scalar.ph1091.prol:                    ; preds = %vec.epilog.scalar.ph1091.preheader, %vec.epilog.scalar.ph1091.prol
  %indvars.iv737.prol = phi i64 [ %indvars.iv.next738.prol, %vec.epilog.scalar.ph1091.prol ], [ %indvars.iv737.ph, %vec.epilog.scalar.ph1091.preheader ] ; 3 uses
  %prol.iter1131 = phi i64 [ %prol.iter1131.next, %vec.epilog.scalar.ph1091.prol ], [ 0, %vec.epilog.scalar.ph1091.preheader ]
  %gep864.prol = getelementptr [8 x i8], ptr %invariant.gep863, i64 %indvars.iv737.prol
  %i.aam = load double, ptr %gep864.prol, align 8, !tbaa !9 ; 3 uses
  %i.aan = fcmp oge double %i.aam, 0.000000e+00
  %i.aao = fneg double %i.aam
  %i.aap = select i1 %i.aan, double %i.aam, double %i.aao
  %i.aaq = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv737.prol ; 2 uses
  %i.aar = load double, ptr %i.aaq, align 8, !tbaa !9
  %i.aas = fadd double %i.aar, %i.aap
  store double %i.aas, ptr %i.aaq, align 8, !tbaa !9
  %indvars.iv.next738.prol = add nuw nsw i64 %indvars.iv737.prol, 1 ; 2 uses
  %prol.iter1131.next = add i64 %prol.iter1131, 1 ; 2 uses
  %prol.iter1131.cmp.not = icmp eq i64 %prol.iter1131.next, %xtraiter1129
  br i1 %prol.iter1131.cmp.not, label %vec.epilog.scalar.ph1091.prol.loopexit, label %vec.epilog.scalar.ph1091.prol, !llvm.loop !78

vec.epilog.scalar.ph1091.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1091.prol, %vec.epilog.scalar.ph1091.preheader
  %indvars.iv737.unr = phi i64 [ %indvars.iv737.ph, %vec.epilog.scalar.ph1091.preheader ], [ %indvars.iv.next738.prol, %vec.epilog.scalar.ph1091.prol ]
  %i.aat = sub i64 %indvars.iv737.ph, %wide.trip.count740
  %i.aau = icmp ugt i64 %i.aat, -4
  br i1 %i.aau, label %._crit_edge569, label %vec.epilog.scalar.ph1091

vec.epilog.scalar.ph1091:                         ; preds = %vec.epilog.scalar.ph1091.prol.loopexit, %vec.epilog.scalar.ph1091
  %indvars.iv737 = phi i64 [ %indvars.iv.next738.3, %vec.epilog.scalar.ph1091 ], [ %indvars.iv737.unr, %vec.epilog.scalar.ph1091.prol.loopexit ] ; 7 uses
  %gep864 = getelementptr [8 x i8], ptr %invariant.gep863, i64 %indvars.iv737
  %i.aav = load double, ptr %gep864, align 8, !tbaa !9 ; 3 uses
  %i.aaw = fcmp oge double %i.aav, 0.000000e+00
  %i.aax = fneg double %i.aav
  %i.aay = select i1 %i.aaw, double %i.aav, double %i.aax
  %i.aaz = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv737 ; 2 uses
  %i.aba = load double, ptr %i.aaz, align 8, !tbaa !9
  %i.abb = fadd double %i.aba, %i.aay
  store double %i.abb, ptr %i.aaz, align 8, !tbaa !9
  %i.abc = getelementptr [8 x i8], ptr %invariant.gep863, i64 %indvars.iv737
  %gep864.1 = getelementptr i8, ptr %i.abc, i64 8
  %i.abd = load double, ptr %gep864.1, align 8, !tbaa !9 ; 3 uses
  %i.abe = fcmp oge double %i.abd, 0.000000e+00
  %i.abf = fneg double %i.abd
  %i.abg = select i1 %i.abe, double %i.abd, double %i.abf
  %i.abh = getelementptr [8 x i8], ptr %7, i64 %indvars.iv737 ; 2 uses
  %i.abi = load double, ptr %i.abh, align 8, !tbaa !9
  %i.abj = fadd double %i.abi, %i.abg
  store double %i.abj, ptr %i.abh, align 8, !tbaa !9
  %indvars.iv.next738.1 = add nuw nsw i64 %indvars.iv737, 2 ; 2 uses
  %gep864.2 = getelementptr [8 x i8], ptr %invariant.gep863, i64 %indvars.iv.next738.1
  %i.abk = load double, ptr %gep864.2, align 8, !tbaa !9 ; 3 uses
  %i.abl = fcmp oge double %i.abk, 0.000000e+00
  %i.abm = fneg double %i.abk
  %i.abn = select i1 %i.abl, double %i.abk, double %i.abm
  %i.abo = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next738.1 ; 2 uses
  %i.abp = load double, ptr %i.abo, align 8, !tbaa !9
  %i.abq = fadd double %i.abp, %i.abn
  store double %i.abq, ptr %i.abo, align 8, !tbaa !9
  %indvars.iv.next738.2 = add nuw nsw i64 %indvars.iv737, 3 ; 2 uses
  %gep864.3 = getelementptr [8 x i8], ptr %invariant.gep863, i64 %indvars.iv.next738.2
  %i.abr = load double, ptr %gep864.3, align 8, !tbaa !9 ; 3 uses
  %i.abs = fcmp oge double %i.abr, 0.000000e+00
  %i.abt = fneg double %i.abr
  %i.abu = select i1 %i.abs, double %i.abr, double %i.abt
  %i.abv = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next738.2 ; 2 uses
  %i.abw = load double, ptr %i.abv, align 8, !tbaa !9
  %i.abx = fadd double %i.abw, %i.abu
  store double %i.abx, ptr %i.abv, align 8, !tbaa !9
  %indvars.iv.next738.3 = add nuw nsw i64 %indvars.iv737, 4 ; 2 uses
  %exitcond741.not.3 = icmp eq i64 %indvars.iv.next738.3, %wide.trip.count740
  br i1 %exitcond741.not.3, label %._crit_edge569, label %vec.epilog.scalar.ph1091, !llvm.loop !79

._crit_edge569:                                   ; preds = %vec.epilog.scalar.ph1091.prol.loopexit, %vec.epilog.scalar.ph1091, %middle.block1087, %vec.epilog.middle.block1101, %.lr.ph575
  %indvars.iv.next736 = add nuw nsw i64 %indvars.iv735, 1 ; 2 uses
  %exitcond744.not = icmp eq i64 %indvars.iv.next736, %wide.trip.count743
  %indvar.next1063 = add i64 %indvar1062, 1
  br i1 %exitcond744.not, label %.loopexit453, label %.lr.ph575, !llvm.loop !80

.loopexit453:                                     ; preds = %._crit_edge520, %._crit_edge535, %.loopexit454, %._crit_edge569, %._crit_edge515, %._crit_edge530, %.lr.ph541.preheader, %.preheader, %._crit_edge564
  %.not406577 = icmp slt i32 %i.lk, 1
  br i1 %.not406577, label %.loopexit444, label %.lr.ph581.preheader

.lr.ph581.preheader:                              ; preds = %.loopexit453
  %i.aby = add nuw i32 %i.lk, 1
  %wide.trip.count748 = zext i32 %i.aby to i64
  br label %.lr.ph581

.lr.ph581:                                        ; preds = %.lr.ph581.preheader, %._crit_edge804
  %indvars.iv745 = phi i64 [ 1, %.lr.ph581.preheader ], [ %indvars.iv.next746, %._crit_edge804 ] ; 2 uses
  %.16579 = phi double [ 0.000000e+00, %.lr.ph581.preheader ], [ %.17, %._crit_edge804 ] ; 2 uses
  %i.abz = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv745
  %i.aca = load double, ptr %i.abz, align 8, !tbaa !9 ; 3 uses
  store double %i.aca, ptr %i.c, align 8, !tbaa !9
  %i.acb = fcmp olt double %.16579, %i.aca
  br i1 %i.acb, label %._crit_edge804, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph581
  %i.acc = call i32 @disnan_(ptr noundef nonnull %i.c) #7
  %.not407 = icmp eq i32 %i.acc, 0
  %.pre805 = load double, ptr %i.c, align 8
  %spec.select879 = select i1 %.not407, double %.16579, double %.pre805
  br label %._crit_edge804

._crit_edge804:                                   ; preds = %bb.aq, %.lr.ph581
  %.17 = phi double [ %spec.select879, %bb.aq ], [ %i.aca, %.lr.ph581 ] ; 2 uses
  %indvars.iv.next746 = add nuw nsw i64 %indvars.iv745, 1 ; 2 uses
  %exitcond749.not = icmp eq i64 %indvars.iv.next746, %wide.trip.count748
  br i1 %exitcond749.not, label %.loopexit444, label %.lr.ph581, !llvm.loop !81

bb.ar:                                            ; preds = %bb.ai
  %i.acd = tail call i32 @lsame_(ptr noundef nonnull %0, ptr noundef nonnull @.str.4) #7
  %.not375 = icmp eq i32 %i.acd, 0
  br i1 %.not375, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ace = tail call i32 @lsame_(ptr noundef nonnull %0, ptr noundef nonnull @.str.5) #7
  %.not376 = icmp eq i32 %i.ace, 0
  br i1 %.not376, label %.loopexit444, label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.acf = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.1) #7
  %.not377 = icmp eq i32 %i.acf, 0
  %i.acg = tail call i32 @lsame_(ptr noundef %2, ptr noundef nonnull @.str.1) #7
  %.not378 = icmp eq i32 %i.acg, 0                ; 2 uses
  br i1 %.not377, label %bb.az, label %bb.au

bb.au:                                            ; preds = %bb.at
  br i1 %.not378, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  store double 1.000000e+00, ptr %i.d, align 16, !tbaa !9
  %i.ach = load i32, ptr %3, align 4, !tbaa !8
  %i.aci = load i32, ptr %4, align 4, !tbaa !8    ; 3 uses
  %.441 = tail call i32 @llvm.smin.i32(i32 %i.ach, i32 %i.aci)
  %i.acj = sitofp i32 %.441 to double
  %i.ack = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store double %i.acj, ptr %i.ack, align 8, !tbaa !9
  %.not387583 = icmp slt i32 %i.aci, 2
  br i1 %.not387583, label %.loopexit448, label %.lr.ph586

.lr.ph586:                                        ; preds = %bb.av
  %i.acl = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.acm = sext i32 %i.e to i64
  %i.acn = add nuw i32 %i.aci, 1
  %wide.trip.count753 = zext i32 %i.acn to i64
  br label %bb.aw

bb.aw:                                            ; preds = %.lr.ph586, %bb.aw
  %indvars.iv750 = phi i64 [ 2, %.lr.ph586 ], [ %indvars.iv.next751, %bb.aw ] ; 3 uses
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.b, align 16, !tbaa !9
  %i.aco = load i32, ptr %3, align 4, !tbaa !8
  %i.acp = trunc i64 %indvars.iv750 to i32
  %i.acq = add i32 %i.acp, -1
  %i.acr = call i32 @llvm.smin.i32(i32 %i.aco, i32 %i.acq)
  store i32 %i.acr, ptr %i.a, align 4, !tbaa !8
  %i.acs = mul nsw i64 %indvars.iv750, %i.acm
  %i.act = getelementptr [8 x i8], ptr %i.g, i64 %i.acs
  %i.acu = getelementptr i8, ptr %i.act, i64 8
  call void @dlassq_(ptr noundef nonnull %i.a, ptr noundef %i.acu, ptr noundef nonnull @c__1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.acl) #7
  call void @dcombssq_(ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #7
  %indvars.iv.next751 = add nuw nsw i64 %indvars.iv750, 1 ; 2 uses
  %exitcond754.not = icmp eq i64 %indvars.iv.next751, %wide.trip.count753
  br i1 %exitcond754.not, label %.loopexit448, label %bb.aw, !llvm.loop !82

bb.ax:                                            ; preds = %bb.au
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.d, align 16, !tbaa !9
  %i.acv = load i32, ptr %4, align 4, !tbaa !8    ; 2 uses
  %.not384587 = icmp slt i32 %i.acv, 1
  br i1 %.not384587, label %.loopexit448, label %.lr.ph590

.lr.ph590:                                        ; preds = %bb.ax
  %i.acw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.acx = sext i32 %i.e to i64
  %i.acy = add nuw i32 %i.acv, 1
  %wide.trip.count758 = zext i32 %i.acy to i64
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph590, %bb.ay
  %indvars.iv755 = phi i64 [ 1, %.lr.ph590 ], [ %indvars.iv.next756, %bb.ay ] ; 3 uses
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.b, align 16, !tbaa !9
  %i.acz = load i32, ptr %3, align 4, !tbaa !8
  %i.ada = trunc nuw nsw i64 %indvars.iv755 to i32
  %.11339. = call i32 @llvm.smin.i32(i32 %i.acz, i32 %i.ada)
  store i32 %.11339., ptr %i.a, align 4, !tbaa !8
  %i.adb = mul nsw i64 %indvars.iv755, %i.acx
  %i.adc = getelementptr [8 x i8], ptr %i.g, i64 %i.adb
  %i.add = getelementptr i8, ptr %i.adc, i64 8
  call void @dlassq_(ptr noundef nonnull %i.a, ptr noundef %i.add, ptr noundef nonnull @c__1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.acw) #7
  call void @dcombssq_(ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #7
  %indvars.iv.next756 = add nuw nsw i64 %indvars.iv755, 1 ; 2 uses
  %exitcond759.not = icmp eq i64 %indvars.iv.next756, %wide.trip.count758
  br i1 %exitcond759.not, label %.loopexit448, label %bb.ay, !llvm.loop !83

bb.az:                                            ; preds = %bb.at
  br i1 %.not378, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store double 1.000000e+00, ptr %i.d, align 16, !tbaa !9
  %i.ade = load i32, ptr %3, align 4, !tbaa !8
  %i.adf = load i32, ptr %4, align 4, !tbaa !8    ; 3 uses
  %.442 = tail call i32 @llvm.smin.i32(i32 %i.ade, i32 %i.adf)
  %i.adg = sitofp i32 %.442 to double
  %i.adh = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store double %i.adg, ptr %i.adh, align 8, !tbaa !9
  %.not381591 = icmp slt i32 %i.adf, 1
  br i1 %.not381591, label %.loopexit448, label %.lr.ph594

.lr.ph594:                                        ; preds = %bb.ba
  %i.adi = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.bb

bb.bb:                                            ; preds = %.lr.ph594, %bb.bb
  %.12340592 = phi i32 [ 1, %.lr.ph594 ], [ %i.adl, %bb.bb ] ; 4 uses
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.b, align 16, !tbaa !9
  %i.adj = load i32, ptr %3, align 4, !tbaa !8    ; 2 uses
  %i.adk = sub nsw i32 %i.adj, %.12340592
  store i32 %i.adk, ptr %i.a, align 4, !tbaa !8
  %i.adl = add nuw nsw i32 %.12340592, 1          ; 2 uses
  %i.adm = call i32 @llvm.smin.i32(i32 %i.adj, i32 %i.adl)
  %i.adn = mul nsw i32 %.12340592, %i.e
  %i.ado = add nsw i32 %i.adm, %i.adn
  %i.adp = sext i32 %i.ado to i64
  %i.adq = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.adp
  call void @dlassq_(ptr noundef nonnull %i.a, ptr noundef %i.adq, ptr noundef nonnull @c__1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.adi) #7
  call void @dcombssq_(ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #7
  %exitcond760.not = icmp eq i32 %.12340592, %i.adf
  br i1 %exitcond760.not, label %.loopexit448, label %bb.bb, !llvm.loop !84

bb.bc:                                            ; preds = %bb.az
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.d, align 16, !tbaa !9
  %i.adr = load i32, ptr %4, align 4, !tbaa !8    ; 2 uses
  %.not379595 = icmp slt i32 %i.adr, 1
  br i1 %.not379595, label %.loopexit448, label %.lr.ph598

.lr.ph598:                                        ; preds = %bb.bc
  %i.ads = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.adt = add i32 %i.e, 1
  %i.adu = add nuw i32 %i.adr, 1
  %wide.trip.count764 = zext i32 %i.adu to i64
  br label %bb.bd

bb.bd:                                            ; preds = %.lr.ph598, %bb.bd
  %indvars.iv761 = phi i64 [ 1, %.lr.ph598 ], [ %indvars.iv.next762, %bb.bd ] ; 2 uses
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.b, align 16, !tbaa !9
  %i.adv = load i32, ptr %3, align 4, !tbaa !8
  %i.adw = trunc nuw nsw i64 %indvars.iv761 to i32 ; 2 uses
  %reass.sub = sub i32 %i.adv, %i.adw
  %i.adx = add i32 %reass.sub, 1
  store i32 %i.adx, ptr %i.a, align 4, !tbaa !8
  %i.ady = mul i32 %i.adt, %i.adw
  %i.adz = sext i32 %i.ady to i64
  %i.aea = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.adz
  call void @dlassq_(ptr noundef nonnull %i.a, ptr noundef %i.aea, ptr noundef nonnull @c__1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.ads) #7
  call void @dcombssq_(ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #7
  %indvars.iv.next762 = add nuw nsw i64 %indvars.iv761, 1 ; 2 uses
  %exitcond765.not = icmp eq i64 %indvars.iv.next762, %wide.trip.count764
  br i1 %exitcond765.not, label %.loopexit448, label %bb.bd, !llvm.loop !85

.loopexit448:                                     ; preds = %bb.aw, %bb.ay, %bb.bb, %bb.bd, %bb.av, %bb.ax, %bb.ba, %bb.bc
  %i.aeb = load double, ptr %i.d, align 16, !tbaa !9
  %i.aec = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.aed = load double, ptr %i.aec, align 8, !tbaa !9
  %i.aee = call double @sqrt(double noundef %i.aed) #7
  %i.aef = fmul double %i.aeb, %i.aee
  br label %.loopexit444

.loopexit444:                                     ; preds = %._crit_edge, %.loopexit461, %._crit_edge490, %._crit_edge503, %._crit_edge804, %._crit_edge807, %._crit_edge809, %bb.e, %bb.h, %bb.l, %bb.o, %.loopexit453, %bb.u, %bb.ad, %bb.a, %.loopexit448, %bb.as
  %.18 = phi double [ undef, %bb.as ], [ %.17, %._crit_edge804 ], [ %.13, %._crit_edge807 ], [ %.15, %._crit_edge809 ], [ %.4.lcssa, %.loopexit461 ], [ %.10.lcssa, %._crit_edge503 ], [ 0.000000e+00, %bb.a ], [ %.7.lcssa, %._crit_edge490 ], [ %i.aef, %.loopexit448 ], [ 0.000000e+00, %bb.ad ], [ 0.000000e+00, %bb.u ], [ 0.000000e+00, %.loopexit453 ], [ 0.000000e+00, %bb.o ], [ 0.000000e+00, %bb.l ], [ 1.000000e+00, %bb.h ], [ 1.000000e+00, %bb.e ], [ %.1.lcssa, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret double %.18
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @lsame_(ptr noundef, ptr noundef) local_unnamed_addr #2
end_hunk_1
