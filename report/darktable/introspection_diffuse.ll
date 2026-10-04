Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_diffuse?download=true
inline.NumInlined: 77
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@process:bb.a
  %i.lw = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 3 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 3 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.d, i64 96 ; 3 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.d, i64 112 ; 3 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.d, i64 128 ; 3 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.d, i64 20 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.d, i64 52 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 3 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 3 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 3 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.d, i64 88 ; 3 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.d, i64 104 ; 3 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.d, i64 120 ; 3 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.d, i64 136 ; 3 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.mp = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.mq = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.mr = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.ms = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  %i.mt = getelementptr inbounds nuw i8, ptr %i.d, i64 92
  %i.mu = getelementptr inbounds nuw i8, ptr %i.d, i64 108
  %i.mv = getelementptr inbounds nuw i8, ptr %i.d, i64 124
  %i.mw = getelementptr inbounds nuw i8, ptr %i.d, i64 140
  %i.mx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 3 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 3 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.e, i64 80 ; 3 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 3 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.e, i64 112 ; 3 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.e, i64 128 ; 3 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.e, i64 20 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.e, i64 52 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 3 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 3 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 3 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.e, i64 88 ; 3 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 3 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.e, i64 120 ; 3 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.e, i64 136 ; 3 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.nr = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.ns = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.nt = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  %i.nu = getelementptr inbounds nuw i8, ptr %i.e, i64 76
  %i.nv = getelementptr inbounds nuw i8, ptr %i.e, i64 92
  %i.nw = getelementptr inbounds nuw i8, ptr %i.e, i64 108
  %i.nx = getelementptr inbounds nuw i8, ptr %i.e, i64 124
  %i.ny = getelementptr inbounds nuw i8, ptr %i.e, i64 140
  %i.nz = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 3 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 3 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 3 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.f, i64 96 ; 3 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.f, i64 112 ; 3 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 3 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.f, i64 20 ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.f, i64 52 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 3 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 3 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 3 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 3 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.f, i64 88 ; 3 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.f, i64 104 ; 3 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.f, i64 120 ; 3 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.f, i64 136 ; 3 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.ot = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.ou = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.ov = getelementptr inbounds nuw i8, ptr %i.f, i64 60
  %i.ow = getelementptr inbounds nuw i8, ptr %i.f, i64 76
  %i.ox = getelementptr inbounds nuw i8, ptr %i.f, i64 92
  %i.oy = getelementptr inbounds nuw i8, ptr %i.f, i64 108
  %i.oz = getelementptr inbounds nuw i8, ptr %i.f, i64 124
  %i.pa = getelementptr inbounds nuw i8, ptr %i.f, i64 140
  %i.pb = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.pc = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.pd = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.pe = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.pf = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.pg = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.ph = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.pi = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %wide.gep255 = getelementptr inbounds nuw [16 x i8], ptr %i.c, <4 x i64> <i64 0, i64 1, i64 2, i64 3> ; 4 uses
  %wide.gep256 = getelementptr inbounds nuw [16 x i8], ptr %i.b, <4 x i64> <i64 0, i64 1, i64 2, i64 3> ; 4 uses
  %wide.gep257 = getelementptr inbounds nuw [16 x i8], ptr %i.d, <4 x i64> <i64 0, i64 1, i64 2, i64 3> ; 4 uses
  %wide.gep258 = getelementptr inbounds nuw [16 x i8], ptr %i.e, <4 x i64> <i64 0, i64 1, i64 2, i64 3> ; 4 uses
  %wide.gep259 = getelementptr inbounds nuw [16 x i8], ptr %i.a, <4 x i64> <i64 0, i64 1, i64 2, i64 3> ; 4 uses
  %wide.gep260 = getelementptr inbounds nuw [16 x i8], ptr %i.f, <4 x i64> <i64 0, i64 1, i64 2, i64 3> ; 4 uses
  %wide.gep267 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep255, i64 4
  %wide.gep269 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep256, i64 4
  %wide.gep271 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep257, i64 4
  %wide.gep273 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep258, i64 4
  %wide.gep275 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep259, i64 4
  %wide.gep277 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep260, i64 4
  %wide.gep279 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep255, i64 8
  %wide.gep281 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep256, i64 8
  %wide.gep283 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep257, i64 8
  %wide.gep285 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep258, i64 8
  %wide.gep287 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep259, i64 8
  %wide.gep289 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep260, i64 8
  %wide.gep291 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep255, i64 12
  %wide.gep293 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep256, i64 12
  %wide.gep295 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep257, i64 12
  %wide.gep297 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep258, i64 12
  %wide.gep299 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep259, i64 12
  %wide.gep301 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep260, i64 12
  %wide.gep255.1 = getelementptr inbounds nuw [16 x i8], ptr %i.c, <4 x i64> <i64 4, i64 5, i64 6, i64 7> ; 4 uses
  %wide.gep256.1 = getelementptr inbounds nuw [16 x i8], ptr %i.b, <4 x i64> <i64 4, i64 5, i64 6, i64 7> ; 4 uses
  %wide.gep257.1 = getelementptr inbounds nuw [16 x i8], ptr %i.d, <4 x i64> <i64 4, i64 5, i64 6, i64 7> ; 4 uses
  %wide.gep258.1 = getelementptr inbounds nuw [16 x i8], ptr %i.e, <4 x i64> <i64 4, i64 5, i64 6, i64 7> ; 4 uses
  %wide.gep259.1 = getelementptr inbounds nuw [16 x i8], ptr %i.a, <4 x i64> <i64 4, i64 5, i64 6, i64 7> ; 4 uses
  %wide.gep260.1 = getelementptr inbounds nuw [16 x i8], ptr %i.f, <4 x i64> <i64 4, i64 5, i64 6, i64 7> ; 4 uses
  %wide.gep267.1 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep255.1, i64 4
  %wide.gep269.1 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep256.1, i64 4
  %wide.gep271.1 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep257.1, i64 4
  %wide.gep273.1 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep258.1, i64 4
  %wide.gep275.1 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep259.1, i64 4
  %wide.gep277.1 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep260.1, i64 4
  %wide.gep279.1 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep255.1, i64 8
  %wide.gep281.1 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep256.1, i64 8
  %wide.gep283.1 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep257.1, i64 8
  %wide.gep285.1 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep258.1, i64 8
  %wide.gep287.1 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep259.1, i64 8
  %wide.gep289.1 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep260.1, i64 8
  %wide.gep291.1 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep255.1, i64 12
  %wide.gep293.1 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep256.1, i64 12
  %wide.gep295.1 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep257.1, i64 12
  %wide.gep297.1 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep258.1, i64 12
  %wide.gep299.1 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep259.1, i64 12
  %wide.gep301.1 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep260.1, i64 12
  %wide.gep255.2 = getelementptr inbounds nuw [16 x i8], ptr %i.c, <4 x i64> <i64 8, i64 9, i64 10, i64 11> ; 4 uses
  %wide.gep256.2 = getelementptr inbounds nuw [16 x i8], ptr %i.b, <4 x i64> <i64 8, i64 9, i64 10, i64 11> ; 4 uses
  %wide.gep257.2 = getelementptr inbounds nuw [16 x i8], ptr %i.d, <4 x i64> <i64 8, i64 9, i64 10, i64 11> ; 4 uses
  %wide.gep258.2 = getelementptr inbounds nuw [16 x i8], ptr %i.e, <4 x i64> <i64 8, i64 9, i64 10, i64 11> ; 4 uses
  %wide.gep259.2 = getelementptr inbounds nuw [16 x i8], ptr %i.a, <4 x i64> <i64 8, i64 9, i64 10, i64 11> ; 4 uses
  %wide.gep260.2 = getelementptr inbounds nuw [16 x i8], ptr %i.f, <4 x i64> <i64 8, i64 9, i64 10, i64 11> ; 4 uses
  %wide.gep267.2 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep255.2, i64 4
  %wide.gep269.2 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep256.2, i64 4
  %wide.gep271.2 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep257.2, i64 4
  %wide.gep273.2 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep258.2, i64 4
  %wide.gep275.2 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep259.2, i64 4
  %wide.gep277.2 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep260.2, i64 4
  %wide.gep279.2 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep255.2, i64 8
  %wide.gep281.2 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep256.2, i64 8
  %wide.gep283.2 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep257.2, i64 8
  %wide.gep285.2 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep258.2, i64 8
  %wide.gep287.2 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep259.2, i64 8
  %wide.gep289.2 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep260.2, i64 8
  %wide.gep291.2 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep255.2, i64 12
  %wide.gep293.2 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep256.2, i64 12
  %wide.gep295.2 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep257.2, i64 12
  %wide.gep297.2 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep258.2, i64 12
  %wide.gep299.2 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep259.2, i64 12
  %wide.gep301.2 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep260.2, i64 12
  br label %bb.p

bb.p:                                             ; preds = %inpaint_mask.exit, %wavelets_process.exit
  %.079128 = phi i32 [ 0, %inpaint_mask.exit ], [ %i.azb, %wavelets_process.exit ] ; 4 uses
  %i.pj = icmp eq i32 %.079128, 0
  br i1 %i.pj, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.pk = and i32 %.079128, 1
  %i.pl = icmp eq i32 %i.pk, 0
  br i1 %i.pl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.pm = load ptr, ptr %i.i, align 8, !tbaa !110
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.pn = load ptr, ptr %i.j, align 8, !tbaa !110
  br label %bb.t

bb.t:                                             ; preds = %bb.p, %bb.r, %bb.s
  %.084 = phi ptr [ %i.pn, %bb.s ], [ %i.pm, %bb.r ], [ %.085, %bb.p ] ; 2 uses
  %.082.in = phi ptr [ %i.i, %bb.s ], [ %i.j, %bb.r ], [ %i.j, %bb.p ]
  %.082 = load ptr, ptr %.082.in, align 8, !tbaa !110
  %i.po = icmp eq i32 %.079128, %i.jq
  %spec.select98 = select i1 %i.po, ptr %3, ptr %.082
  %i.pp = load i32, ptr %i.t, align 4, !tbaa !109 ; 11 uses
  %i.pq = sext i32 %i.pp to i64                   ; 12 uses
  %i.pr = load i32, ptr %i.u, align 4, !tbaa !108 ; 10 uses
  %i.ps = sext i32 %i.pr to i64                   ; 3 uses
  %i.pt = load ptr, ptr %i.k, align 8, !tbaa !110 ; 8 uses
  %i.pu = load ptr, ptr %i.l, align 8, !tbaa !110 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !122)
  call void @llvm.experimental.noalias.scope.decl(metadata !123)
  call void @llvm.experimental.noalias.scope.decl(metadata !124)
  call void @llvm.experimental.noalias.scope.decl(metadata !125)
  call void @llvm.experimental.noalias.scope.decl(metadata !126)
  %i.pv = load <4 x float>, ptr %i.jr, align 4, !tbaa !20, !noalias !127 ; 7 uses
  %6 = extractelement <4 x float> %i.pv, i64 0
  %7 = fcmp reassoc nsz arcp contract afn oeq float %6, 0.000000e+00
  %8 = extractelement <4 x float> %i.pv, i64 1
  %9 = fcmp reassoc nsz arcp contract afn oeq float %8, 0.000000e+00
  %10 = extractelement <4 x float> %i.pv, i64 2
  %11 = fcmp reassoc nsz arcp contract afn oeq float %10, 0.000000e+00
  %12 = extractelement <4 x float> %i.pv, i64 3
  %13 = fcmp reassoc nsz arcp contract afn oeq float %12, 0.000000e+00
  %i.pw = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.pv, zeroinitializer
  %i.px = select <4 x i1> %i.pw, <4 x i32> splat (i32 1), <4 x i32> splat (i32 2) ; 4 uses
  %14 = extractelement <4 x i32> %i.px, i64 0
  %.0.i.i = select i1 %7, i32 0, i32 %14
  %15 = extractelement <4 x i32> %i.px, i64 1
  %.0.i106.i = select i1 %9, i32 0, i32 %15
  %16 = extractelement <4 x i32> %i.px, i64 2
  %.0.i108.i = select i1 %11, i32 0, i32 %16
  %17 = extractelement <4 x i32> %i.px, i64 3
  %.0.i110.i = select i1 %13, i32 0, i32 %17
  %i.py = load float, ptr %i.js, align 4, !tbaa !128, !noalias !127
  %i.pz = call reassoc nsz arcp contract afn float @llvm.pow.f32(float 1.000000e+01, float %i.py)
  %i.qa = load float, ptr %i.jt, align 4, !tbaa !129, !noalias !127
  %i.qb = call reassoc nsz arcp contract afn float @llvm.pow.f32(float 1.000000e+01, float %i.qa)
  %i.qc = shl nsw i64 %i.pq, 2                    ; 5 uses
  %i.qd = shl nsw i64 %i.pq, 4
  %i.qe = add nsw i64 %i.qd, 48
  %i.qf = and i64 %i.qe, -64
  %i.qg = call ptr @dt_alloc_aligned(i64 noundef %i.qf) #20, !noalias !127 ; 9 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.qg, i64 64) ]
  %.not.i.i103 = icmp eq i32 %i.pr, 0             ; 2 uses
  %invariant.op.i.i = add i32 %i.pr, -1           ; 3 uses
  %i.qh = add nsw i64 %i.ps, -1                   ; 2 uses
  %.not.i40.i.i = icmp eq i32 %i.pp, 0            ; 2 uses
  %i.qi = add nsw i64 %i.pq, -1                   ; 2 uses
  br i1 %.not.i.i103, label %.lr.ph.split.us.i, label %.lr.ph66.i.i.preheader

.lr.ph66.i.i.preheader:                           ; preds = %bb.t
  %min.iters.check307 = icmp ult i32 %i.pp, 4
  %n.vec309 = and i64 %i.pq, -4                   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec309, %i.pq
  br label %.lr.ph66.i.i

.lr.ph.split.us.i:                                ; preds = %bb.t
  %i.qj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3096), align 8, !tbaa !167, !noalias !127
  %i.qk = icmp eq ptr %i.qj, null
  br i1 %i.qk, label %decompose_2D_Bspline.exit.us.us.preheader.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.split.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20, !noalias !127
  %i.ql = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(1) @.str.66, i32 noundef 0) #20, !noalias !124 ; 0 uses
  call void @dt_dump_pfm(ptr noundef nonnull %i.g, ptr noundef %.084, i32 noundef %i.pp, i32 noundef 0, i32 noundef 16, ptr noundef nonnull @.str.67) #20, !noalias !124
  %i.qm = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(1) @.str.68, i32 noundef 0) #20, !noalias !124 ; 0 uses
  call void @dt_dump_pfm(ptr noundef nonnull %i.g, ptr noundef %i.pt, i32 noundef %i.pp, i32 noundef 0, i32 noundef 16, ptr noundef nonnull @.str.67) #20, !noalias !124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20, !noalias !127
  br i1 %exitcond176.peel.not.i, label %.lr.ph153.i, label %decompose_2D_Bspline.exit.us.peel.next.i

decompose_2D_Bspline.exit.us.peel.next.i:         ; preds = %bb.u
  %.pre183.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3096), align 8, !tbaa !167, !noalias !127
  br label %decompose_2D_Bspline.exit.us.i

decompose_2D_Bspline.exit.us.us.preheader.i:      ; preds = %.lr.ph.split.us.i
  %.096.us.us.le.i = select i1 %.not102.us.us.le.not.i, ptr %i.pu, ptr %i.pt
  br label %.lr.ph153.i

decompose_2D_Bspline.exit.us.i:                   ; preds = %bb.w, %decompose_2D_Bspline.exit.us.peel.next.i
  %i.qn = phi ptr [ %i.qr, %bb.w ], [ %.pre183.i, %decompose_2D_Bspline.exit.us.peel.next.i ]
  %.098146.us.i = phi i32 [ %i.qs, %bb.w ], [ 1, %decompose_2D_Bspline.exit.us.peel.next.i ] ; 4 uses
  %i.qo = and i32 %.098146.us.i, 1
  %.not102.us.i = icmp eq i32 %i.qo, 0            ; 2 uses
  %.096.us.i = select i1 %.not102.us.i, ptr %i.pt, ptr %i.pu ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !168)
  %.not103.us.i = icmp eq ptr %i.qn, null
  br i1 %.not103.us.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %decompose_2D_Bspline.exit.us.i
  %..us.i = select i1 %.not102.us.i, ptr %i.pu, ptr %i.pt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20, !noalias !127
  %i.qp = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(1) @.str.66, i32 noundef %.098146.us.i) #20, !noalias !124 ; 0 uses
  call void @dt_dump_pfm(ptr noundef nonnull %i.g, ptr noundef %..us.i, i32 noundef %i.pp, i32 noundef 0, i32 noundef 16, ptr noundef nonnull @.str.67) #20, !noalias !124
  %i.qq = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(1) @.str.68, i32 noundef %.098146.us.i) #20, !noalias !124 ; 0 uses
  call void @dt_dump_pfm(ptr noundef nonnull %i.g, ptr noundef %.096.us.i, i32 noundef %i.pp, i32 noundef 0, i32 noundef 16, ptr noundef nonnull @.str.67) #20, !noalias !124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20, !noalias !127
  %.pre.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3096), align 8, !tbaa !167, !noalias !127
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %decompose_2D_Bspline.exit.us.i
  %i.qr = phi ptr [ %.pre.i, %bb.v ], [ null, %decompose_2D_Bspline.exit.us.i ]
  %i.qs = add nuw nsw i32 %.098146.us.i, 1        ; 2 uses
  %exitcond176.not.i = icmp eq i32 %i.qs, %.07.lcssa.i
  br i1 %exitcond176.not.i, label %.lr.ph153.i, label %decompose_2D_Bspline.exit.us.i, !llvm.loop !77

.lr.ph153.i:                                      ; preds = %bb.ae, %bb.w, %bb.u, %decompose_2D_Bspline.exit.us.us.preheader.i
  %.099.lcssa.i.sink = phi ptr [ %.096.us.us.le.i, %decompose_2D_Bspline.exit.us.us.preheader.i ], [ %i.pt, %bb.u ], [ %.096.us.i, %bb.w ], [ %.096.i, %bb.ae ] ; 3 uses
  call void @free(ptr noundef %i.qg) #20, !noalias !124
  %i.qt = icmp eq ptr %.099.lcssa.i.sink, %i.pu
  %i.qu = select i1 %i.qt, ptr %i.pt, ptr %i.pu   ; 2 uses
  %i.qv = fmul reassoc nsz arcp contract afn float %i.pz, f0x3DE38E39
  %factor.op.fmul262.i.i = fadd reassoc nsz arcp contract afn float %i.qv, f0xBDE38E39
  %i.qw = add nsw i32 %i.pp, -1
  %i.qx = fmul reassoc nsz arcp contract afn <4 x float> %i.pv, %i.pv
  %i.qy = fmul reassoc nsz arcp contract afn <4 x float> %i.qx, splat (float 1.140130e+07) ; 5 uses
  %i.qz = shufflevector <4 x float> %i.qy, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.ra = shufflevector <4 x float> %i.qy, <4 x float> poison, <2 x i32> zeroinitializer
  %i.rb = shufflevector <4 x float> %i.qy, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.rc = shufflevector <4 x float> %i.qy, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.rd = shufflevector <4 x float> %i.qy, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.re = insertelement <4 x float> poison, float %i.qb, i64 0
  %i.rf = shufflevector <4 x float> %i.re, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.af

.lr.ph66.i.i:                                     ; preds = %.lr.ph66.i.i.preheader, %bb.ae
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ae ], [ 0, %.lr.ph66.i.i.preheader ] ; 4 uses
  %i.rg = trunc nuw nsw i64 %indvars.iv.i to i32  ; 7 uses
  %i.rh = shl nuw i32 1, %i.rg                    ; 7 uses
  %i.ri = icmp eq i64 %indvars.iv.i, 0
  %i.rj = and i32 %i.rg, 1
  %.not102.i = icmp eq i32 %i.rj, 0               ; 2 uses
  %..i = select i1 %.not102.i, ptr %i.pu, ptr %i.pt
  %.097.i = select i1 %i.ri, ptr %.084, ptr %..i  ; 7 uses
  %.096.i = select i1 %.not102.i, ptr %i.pt, ptr %i.pu ; 3 uses
  %i.rk = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !110, !noalias !127 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !168)
  %.not.i.i.i = icmp slt i32 %i.rh, %i.pr
  %.reass.i.i = add i32 %i.rh, %invariant.op.i.i
  %i.rm = shl i32 2, %i.rg                        ; 3 uses
  %i.rn = sext i32 %i.rh to i64                   ; 2 uses
  %i.ro = sext i32 %i.rm to i64                   ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge.i.i, %.lr.ph66.i.i
  %.03764.i.i = phi i64 [ 0, %.lr.ph66.i.i ], [ %i.vm, %._crit_edge.i.i ] ; 2 uses
  %i.rp = trunc i64 %.03764.i.i to i32            ; 5 uses
  br i1 %.not.i.i.i, label %bb.y, label %dwt_interleave_rows.exit.i.i

bb.y:                                             ; preds = %bb.x
  %i.rq = sdiv i32 %.reass.i.i, %i.rh             ; 4 uses
  %i.rr = srem i32 %i.pr, %i.rh                   ; 3 uses
  %i.rs = icmp eq i32 %i.rr, 0
  br i1 %i.rs, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.rt = mul nsw i32 %i.rr, %i.rq                ; 2 uses
  %i.ru = icmp sgt i32 %i.rt, %i.rp
  br i1 %i.ru, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.rv = sdiv i32 %i.rp, %i.rq
  %i.rw = srem i32 %i.rp, %i.rq
  %i.rx = shl i32 %i.rw, %i.rg
  %i.ry = add nsw i32 %i.rx, %i.rv
  br label %dwt_interleave_rows.exit.i.i

bb.ab:                                            ; preds = %bb.z
  %i.rz = sub nsw i32 %i.rp, %i.rt                ; 2 uses
  %i.sa = add nsw i32 %i.rq, -1                   ; 2 uses
  %i.sb = sdiv i32 %i.rz, %i.sa
  %i.sc = add nsw i32 %i.sb, %i.rr
  %i.sd = srem i32 %i.rz, %i.sa
  %i.se = shl i32 %i.sd, %i.rg
  %i.sf = add nsw i32 %i.sc, %i.se
  br label %dwt_interleave_rows.exit.i.i

dwt_interleave_rows.exit.i.i:                     ; preds = %bb.ab, %bb.aa, %bb.x
  %.1.i.i.i = phi i32 [ %i.rp, %bb.x ], [ %i.ry, %bb.aa ], [ %i.sf, %bb.ab ] ; 3 uses
  %i.sg = sext i32 %.1.i.i.i to i64               ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !171)
  call void @llvm.experimental.noalias.scope.decl(metadata !172)
  %i.sh = sub nsw i32 %.1.i.i.i, %i.rm
  %i.si = call i32 @llvm.smax.i32(i32 %i.sh, i32 0)
  %i.sj = zext nneg i32 %i.si to i64
  %i.sk = mul i64 %i.qc, %i.sj                    ; 2 uses
  %i.sl = sub nsw i32 %.1.i.i.i, %i.rh
  %i.sm = call i32 @llvm.smax.i32(i32 %i.sl, i32 0)
  %i.sn = zext nneg i32 %i.sm to i64
  %i.so = mul i64 %i.qc, %i.sn                    ; 2 uses
  %i.sp = mul i64 %i.qc, %i.sg                    ; 2 uses
  %i.sq = add nsw i64 %i.sg, %i.rn
  %..i.i.i = call i64 @llvm.umin.i64(i64 %i.sq, i64 %i.qh)
  %i.sr = mul i64 %..i.i.i, %i.qc                 ; 2 uses
  %i.ss = add nsw i64 %i.sg, %i.ro
  %i.st = call i64 @llvm.umin.i64(i64 %i.ss, i64 %i.qh)
  %i.su = mul i64 %i.st, %i.qc                    ; 2 uses
  br i1 %.not.i40.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %dwt_interleave_rows.exit.i.i
  br i1 %min.iters.check307, label %.lr.ph.i.i.i.preheader352, label %vector.body310

vector.body310:                                   ; preds = %.lr.ph.i.i.i.preheader, %vector.body310
  %index311 = phi i64 [ %index.next337, %vector.body310 ], [ 0, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.sv = shl i64 %index311, 2                    ; 2 uses
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %.097.i, i64 %i.sv ; 5 uses
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %i.qg, i64 %i.sv
  %i.sy = getelementptr [4 x i8], ptr %i.sw, i64 %i.sk
  %i.sz = getelementptr [4 x i8], ptr %i.sw, i64 %i.so
  %i.ta = getelementptr [4 x i8], ptr %i.sw, i64 %i.sp
  %i.tb = getelementptr [4 x i8], ptr %i.sw, i64 %i.sr
  %i.tc = getelementptr [4 x i8], ptr %i.sw, i64 %i.su
  %wide.vec312 = load <16 x float>, ptr %i.sy, align 4, !tbaa !20, !alias.scope !173, !noalias !174 ; 4 uses
  %strided.vec313 = shufflevector <16 x float> %wide.vec312, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec314 = shufflevector <16 x float> %wide.vec312, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec315 = shufflevector <16 x float> %wide.vec312, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec316 = shufflevector <16 x float> %wide.vec312, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %wide.vec317 = load <16 x float>, ptr %i.sz, align 4, !tbaa !20, !alias.scope !173, !noalias !174 ; 4 uses
  %strided.vec318 = shufflevector <16 x float> %wide.vec317, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec319 = shufflevector <16 x float> %wide.vec317, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec320 = shufflevector <16 x float> %wide.vec317, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec321 = shufflevector <16 x float> %wide.vec317, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %wide.vec322 = load <16 x float>, ptr %i.ta, align 4, !tbaa !20, !alias.scope !173, !noalias !174 ; 4 uses
  %strided.vec323 = shufflevector <16 x float> %wide.vec322, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec324 = shufflevector <16 x float> %wide.vec322, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec325 = shufflevector <16 x float> %wide.vec322, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec326 = shufflevector <16 x float> %wide.vec322, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.td = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec323, splat (float 3.750000e-01)
  %wide.vec327 = load <16 x float>, ptr %i.tb, align 4, !tbaa !20, !alias.scope !173, !noalias !174 ; 4 uses
  %strided.vec328 = shufflevector <16 x float> %wide.vec327, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec329 = shufflevector <16 x float> %wide.vec327, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec330 = shufflevector <16 x float> %wide.vec327, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec331 = shufflevector <16 x float> %wide.vec327, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %wide.vec332 = load <16 x float>, ptr %i.tc, align 4, !tbaa !20, !alias.scope !173, !noalias !174 ; 4 uses
  %strided.vec333 = shufflevector <16 x float> %wide.vec332, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec334 = shufflevector <16 x float> %wide.vec332, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec335 = shufflevector <16 x float> %wide.vec332, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec336 = shufflevector <16 x float> %wide.vec332, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.te = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec328, %strided.vec318
  %i.tf = fmul reassoc nsz arcp contract afn <4 x float> %i.te, splat (float 2.500000e-01)
  %i.tg = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec333, %strided.vec313
  %i.th = fmul reassoc nsz arcp contract afn <4 x float> %i.tg, splat (float 6.250000e-02)
  %i.ti = fadd reassoc nsz arcp contract afn <4 x float> %i.tf, %i.td
  %i.tj = fadd reassoc nsz arcp contract afn <4 x float> %i.ti, %i.th ; 2 uses
  %i.tk = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec324, splat (float 3.750000e-01)
  %i.tl = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec329, %strided.vec319
  %i.tm = fmul reassoc nsz arcp contract afn <4 x float> %i.tl, splat (float 2.500000e-01)
  %i.tn = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec334, %strided.vec314
  %i.to = fmul reassoc nsz arcp contract afn <4 x float> %i.tn, splat (float 6.250000e-02)
  %i.tp = fadd reassoc nsz arcp contract afn <4 x float> %i.tm, %i.tk
  %i.tq = fadd reassoc nsz arcp contract afn <4 x float> %i.tp, %i.to ; 2 uses
  %i.tr = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec325, splat (float 3.750000e-01)
  %i.ts = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec330, %strided.vec320
  %i.tt = fmul reassoc nsz arcp contract afn <4 x float> %i.ts, splat (float 2.500000e-01)
  %i.tu = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec335, %strided.vec315
  %i.tv = fmul reassoc nsz arcp contract afn <4 x float> %i.tu, splat (float 6.250000e-02)
  %i.tw = fadd reassoc nsz arcp contract afn <4 x float> %i.tt, %i.tr
  %i.tx = fadd reassoc nsz arcp contract afn <4 x float> %i.tw, %i.tv ; 2 uses
  %i.ty = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec326, splat (float 3.750000e-01)
  %i.tz = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec331, %strided.vec321
  %i.ua = fmul reassoc nsz arcp contract afn <4 x float> %i.tz, splat (float 2.500000e-01)
  %i.ub = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec336, %strided.vec316
  %i.uc = fmul reassoc nsz arcp contract afn <4 x float> %i.ub, splat (float 6.250000e-02)
  %i.ud = fadd reassoc nsz arcp contract afn <4 x float> %i.ua, %i.ty
  %i.ue = fadd reassoc nsz arcp contract afn <4 x float> %i.ud, %i.uc ; 2 uses
  %i.uf = shufflevector <4 x float> %i.tj, <4 x float> %i.tq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ug = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.uf, zeroinitializer
  %i.uh = shufflevector <4 x float> %i.tj, <4 x float> %i.tq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ui = select reassoc nsz arcp contract afn <8 x i1> %i.ug, <8 x float> zeroinitializer, <8 x float> %i.uh
  %i.uj = shufflevector <4 x float> %i.tx, <4 x float> %i.ue, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.uk = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.uj, zeroinitializer
  %i.ul = shufflevector <4 x float> %i.tx, <4 x float> %i.ue, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.um = select reassoc nsz arcp contract afn <8 x i1> %i.uk, <8 x float> zeroinitializer, <8 x float> %i.ul
  %interleaved.vec = shufflevector <8 x float> %i.ui, <8 x float> %i.um, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.sx, align 64, !tbaa !20, !alias.scope !172, !noalias !175
  %index.next337 = add nuw i64 %index311, 4       ; 2 uses
  %i.un = icmp eq i64 %index.next337, %n.vec309
  br i1 %i.un, label %middle.block338, label %vector.body310, !llvm.loop !81

middle.block338:                                  ; preds = %vector.body310
  br i1 %cmp.n, label %.lr.ph.i.i, label %.lr.ph.i.i.i.preheader352

.lr.ph.i.i.i.preheader352:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block338
  %.036.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %n.vec309, %middle.block338 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader352, %.lr.ph.i.i.i
  %.036.i.i.i = phi i64 [ %i.vk, %.lr.ph.i.i.i ], [ %.036.i.i.i.ph, %.lr.ph.i.i.i.preheader352 ] ; 2 uses
  %i.uo = shl i64 %.036.i.i.i, 2                  ; 2 uses
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %.097.i, i64 %i.uo ; 5 uses
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr %i.qg, i64 %i.uo
  %i.ur = getelementptr [4 x i8], ptr %i.up, i64 %i.sk
  %i.us = getelementptr [4 x i8], ptr %i.up, i64 %i.so
  %i.ut = getelementptr [4 x i8], ptr %i.up, i64 %i.sp
  %i.uu = getelementptr [4 x i8], ptr %i.up, i64 %i.sr
  %i.uv = getelementptr [4 x i8], ptr %i.up, i64 %i.su
  %i.uw = load <4 x float>, ptr %i.ur, align 4, !tbaa !20, !alias.scope !173, !noalias !174
  %i.ux = load <4 x float>, ptr %i.us, align 4, !tbaa !20, !alias.scope !173, !noalias !174
  %i.uy = load <4 x float>, ptr %i.ut, align 4, !tbaa !20, !alias.scope !173, !noalias !174
  %i.uz = fmul reassoc nsz arcp contract afn <4 x float> %i.uy, splat (float 3.750000e-01)
  %i.va = load <4 x float>, ptr %i.uu, align 4, !tbaa !20, !alias.scope !173, !noalias !174
  %i.vb = load <4 x float>, ptr %i.uv, align 4, !tbaa !20, !alias.scope !173, !noalias !174
  %i.vc = fadd reassoc nsz arcp contract afn <4 x float> %i.va, %i.ux
  %i.vd = fmul reassoc nsz arcp contract afn <4 x float> %i.vc, splat (float 2.500000e-01)
  %i.ve = fadd reassoc nsz arcp contract afn <4 x float> %i.vb, %i.uw
  %i.vf = fmul reassoc nsz arcp contract afn <4 x float> %i.ve, splat (float 6.250000e-02)
  %i.vg = fadd reassoc nsz arcp contract afn <4 x float> %i.vd, %i.uz
  %i.vh = fadd reassoc nsz arcp contract afn <4 x float> %i.vg, %i.vf ; 2 uses
  %i.vi = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.vh, zeroinitializer
  %i.vj = select <4 x i1> %i.vi, <4 x float> zeroinitializer, <4 x float> %i.vh
  store <4 x float> %i.vj, ptr %i.uq, align 16, !tbaa !20, !alias.scope !172, !noalias !175
  %i.vk = add nuw i64 %.036.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.vk, %i.pq
  br i1 %exitcond.not.i.i.i, label %.lr.ph.i.i, label %.lr.ph.i.i.i, !llvm.loop !82

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.i, %middle.block338
  %i.vl = mul nsw i64 %i.sg, %i.pq
  br label %bb.ac

._crit_edge.i.i:                                  ; preds = %bb.ac, %dwt_interleave_rows.exit.i.i
end_hunk_0
begin_hunk_1_@process:bb.a
  %scevgep269.1271.i.i = getelementptr nuw i8, ptr %.093.i, i64 %i.abl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.kc, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep269.1271.i.i, i64 16, i1 false), !tbaa !20, !noalias !193
  %i.abm = shl i64 %i.aao, 4                      ; 2 uses
  %scevgep.1.1.i.i = getelementptr nuw i8, ptr %i.za, i64 %i.abm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.pd, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep.1.1.i.i, i64 16, i1 false), !tbaa !20, !noalias !191
  %scevgep269.1.1.i.i = getelementptr nuw i8, ptr %.093.i, i64 %i.abm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.pe, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep269.1.1.i.i, i64 16, i1 false), !tbaa !20, !noalias !193
  %i.abn = add nsw i64 %i.aai, %i.abd
  %i.abo = shl i64 %i.abn, 4                      ; 2 uses
  %scevgep.2.1.i.i = getelementptr nuw i8, ptr %i.za, i64 %i.abo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.kj, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep.2.1.i.i, i64 16, i1 false), !tbaa !20, !noalias !191
  %scevgep269.2.1.i.i = getelementptr nuw i8, ptr %.093.i, i64 %i.abo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.kb, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep269.2.1.i.i, i64 16, i1 false), !tbaa !20, !noalias !193
  %i.abp = add nsw i64 %i.aam, %spec.select.i.i
  %i.abq = shl i64 %i.abp, 4                      ; 2 uses
  %scevgep.2272.i.i = getelementptr nuw i8, ptr %i.za, i64 %i.abq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.pf, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep.2272.i.i, i64 16, i1 false), !tbaa !20, !noalias !191
  %scevgep269.2273.i.i = getelementptr nuw i8, ptr %.093.i, i64 %i.abq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.pg, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep269.2273.i.i, i64 16, i1 false), !tbaa !20, !noalias !193
  %i.abr = add i64 %.0205260.i.i, %i.aam
  %i.abs = shl i64 %i.abr, 4                      ; 2 uses
  %scevgep.1.2.i.i = getelementptr nuw i8, ptr %i.za, i64 %i.abs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.kh, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep.1.2.i.i, i64 16, i1 false), !tbaa !20, !noalias !191
  %scevgep269.1.2.i.i = getelementptr nuw i8, ptr %.093.i, i64 %i.abs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.jz, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep269.1.2.i.i, i64 16, i1 false), !tbaa !20, !noalias !193
  %i.abt = add nsw i64 %i.aam, %i.abd
  %i.abu = shl i64 %i.abt, 4                      ; 2 uses
  %scevgep.2.2.i.i = getelementptr nuw i8, ptr %i.za, i64 %i.abu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ph, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep.2.2.i.i, i64 16, i1 false), !tbaa !20, !noalias !191
  %scevgep269.2.2.i.i = getelementptr nuw i8, ptr %.093.i, i64 %i.abu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.pi, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep269.2.2.i.i, i64 16, i1 false), !tbaa !20, !noalias !193
  %i.abv = load float, ptr %i.kl, align 8, !tbaa !20, !noalias !196
  %i.abw = load float, ptr %i.km, align 8, !tbaa !20, !noalias !196
  %i.abx = fsub reassoc nsz arcp contract afn float %i.abv, %i.abw
  %i.aby = load float, ptr %i.kn, align 8, !tbaa !20, !noalias !196
  %i.abz = load float, ptr %i.ko, align 8, !tbaa !20, !noalias !196
  %i.aca = fsub reassoc nsz arcp contract afn float %i.aby, %i.abz
  %i.acb = load float, ptr %i.kp, align 4, !tbaa !20, !noalias !196
  %i.acc = load float, ptr %i.kq, align 4, !tbaa !20, !noalias !196
  %i.acd = fsub reassoc nsz arcp contract afn float %i.acb, %i.acc
  %i.ace = fmul reassoc nsz arcp contract afn float %i.acd, 5.000000e-01 ; 3 uses
  %i.acf = load float, ptr %i.kr, align 4, !tbaa !20, !noalias !196
  %i.acg = load float, ptr %i.ks, align 4, !tbaa !20, !noalias !196
  %i.ach = fsub reassoc nsz arcp contract afn float %i.acf, %i.acg
  %i.aci = fmul reassoc nsz arcp contract afn float %i.ach, 5.000000e-01 ; 3 uses
  %i.acj = load <2 x float>, ptr %i.kd, align 8, !tbaa !20, !noalias !196
  %i.ack = load <2 x float>, ptr %i.ke, align 8, !tbaa !20, !noalias !196
  %i.acl = fsub reassoc nsz arcp contract afn <2 x float> %i.acj, %i.ack
  %i.acm = fmul reassoc nsz arcp contract afn <2 x float> %i.acl, splat (float 5.000000e-01) ; 4 uses
  %i.acn = load <2 x float>, ptr %i.kf, align 8, !tbaa !20, !noalias !196
  %i.aco = load <2 x float>, ptr %i.kg, align 8, !tbaa !20, !noalias !196
  %i.acp = fsub reassoc nsz arcp contract afn <2 x float> %i.acn, %i.aco
  %i.acq = fmul reassoc nsz arcp contract afn <2 x float> %i.acp, splat (float 5.000000e-01) ; 4 uses
  %i.acr = fmul reassoc nsz arcp contract afn <2 x float> %i.acm, %i.acm
  %i.acs = fmul reassoc nsz arcp contract afn <2 x float> %i.acq, %i.acq
  %i.act = fadd reassoc nsz arcp contract afn <2 x float> %i.acs, %i.acr ; 3 uses
  %i.acu = fcmp reassoc nsz arcp contract afn une <2 x float> %i.act, zeroinitializer ; 2 uses
  %i.acv = extractelement <2 x i1> %i.acu, i64 0  ; 2 uses
  %i.acw = extractelement <2 x float> %i.act, i64 1
  %i.acx = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.acw) ; 3 uses
  %i.acy = extractelement <2 x float> %i.acm, i64 1
  %i.acz = fdiv reassoc nsz arcp contract afn float %i.acy, %i.acx
  %i.ada = extractelement <2 x float> %i.acq, i64 1
  %i.adb = fdiv reassoc nsz arcp contract afn float %i.ada, %i.acx
  %i.adc = extractelement <2 x i1> %i.acu, i64 1  ; 2 uses
  %.sroa.17433.0.i.i = select nsz i1 %i.adc, float %i.acz, float 1.000000e+00 ; 3 uses
  %i.add = select reassoc nsz arcp contract afn i1 %i.adc, float %i.adb, float 0.000000e+00 ; 3 uses
  %i.ade = fmul reassoc nsz arcp contract afn float %.sroa.17433.0.i.i, %.sroa.17433.0.i.i ; 8 uses
  %i.adf = fmul reassoc nsz arcp contract afn float %i.add, %i.add ; 8 uses
  %i.adg = fmul reassoc nsz arcp contract afn float %.sroa.17433.0.i.i, %i.add ; 4 uses
  %i.adh = shufflevector <2 x float> %i.acm, <2 x float> %i.acq, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.adi = insertelement <4 x float> %i.adh, float %i.abx, i64 2
  %i.adj = insertelement <4 x float> %i.adi, float %i.aca, i64 3
  %i.adk = fmul reassoc nsz arcp contract afn <4 x float> %i.adj, <float 1.000000e+00, float 1.000000e+00, float 5.000000e-01, float 5.000000e-01> ; 5 uses
  %foldExtExtBinop = fmul reassoc nsz arcp contract afn <4 x float> %i.adk, %i.adk
  %foldExtExtBinop341 = fmul reassoc nsz arcp contract afn <4 x float> %i.adk, %i.adk
  %shift = shufflevector <4 x float> %foldExtExtBinop341, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop343 = fadd reassoc nsz arcp contract afn <4 x float> %shift, %foldExtExtBinop
  %i.adl = extractelement <4 x float> %foldExtExtBinop343, i64 2 ; 2 uses
  %i.adm = insertelement <2 x float> %i.act, float %i.adl, i64 1
  %i.adn = call reassoc nsz arcp contract afn <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.adm)
  %i.ado = shufflevector <2 x float> %i.adn, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %i.adp = fdiv reassoc nsz arcp contract afn <4 x float> %i.adk, %i.ado ; 4 uses
  %i.adq = extractelement <4 x float> %i.adp, i64 0
  %.sroa.12431.0.i.i = select nsz i1 %i.acv, float %i.adq, float 1.000000e+00 ; 3 uses
  %i.adr = extractelement <4 x float> %i.adp, i64 1
  %i.ads = select reassoc nsz arcp contract afn i1 %i.acv, float %i.adr, float 0.000000e+00 ; 3 uses
  %i.adt = fmul reassoc nsz arcp contract afn float %.sroa.12431.0.i.i, %.sroa.12431.0.i.i ; 8 uses
  %i.adu = fmul reassoc nsz arcp contract afn float %i.ads, %i.ads ; 8 uses
  %i.adv = fmul reassoc nsz arcp contract afn float %.sroa.12431.0.i.i, %i.ads ; 4 uses
  %i.adw = fcmp reassoc nsz arcp contract afn une float %i.adl, 0.000000e+00 ; 2 uses
  %i.adx = extractelement <4 x float> %i.adp, i64 2
  %.sroa.12423.0.i.i = select nsz i1 %i.adw, float %i.adx, float 1.000000e+00 ; 3 uses
  %i.ady = extractelement <4 x float> %i.adp, i64 3
  %i.adz = select reassoc nsz arcp contract afn i1 %i.adw, float %i.ady, float 0.000000e+00 ; 3 uses
  %i.aea = fmul reassoc nsz arcp contract afn float %.sroa.12423.0.i.i, %.sroa.12423.0.i.i ; 8 uses
  %i.aeb = fmul reassoc nsz arcp contract afn float %i.adz, %i.adz ; 8 uses
  %i.aec = fmul reassoc nsz arcp contract afn float %.sroa.12423.0.i.i, %i.adz ; 4 uses
  %i.aed = fmul reassoc nsz arcp contract afn float %i.ace, %i.ace
  %i.aee = fmul reassoc nsz arcp contract afn float %i.aci, %i.aci
  %i.aef = fadd reassoc nsz arcp contract afn float %i.aee, %i.aed ; 2 uses
  %i.aeg = fcmp reassoc nsz arcp contract afn une float %i.aef, 0.000000e+00 ; 2 uses
  %i.aeh = load <2 x float>, ptr %i.jz, align 16, !tbaa !20, !noalias !196
  %i.aei = load <2 x float>, ptr %i.ka, align 16, !tbaa !20, !noalias !196
  %i.aej = fsub reassoc nsz arcp contract afn <2 x float> %i.aeh, %i.aei
  %i.aek = fmul reassoc nsz arcp contract afn <2 x float> %i.aej, splat (float 5.000000e-01) ; 3 uses
  %i.ael = load <2 x float>, ptr %i.kb, align 16, !tbaa !20, !noalias !196
  %i.aem = load <2 x float>, ptr %i.kc, align 16, !tbaa !20, !noalias !196
  %i.aen = fsub reassoc nsz arcp contract afn <2 x float> %i.ael, %i.aem
  %i.aeo = fmul reassoc nsz arcp contract afn <2 x float> %i.aen, splat (float 5.000000e-01) ; 3 uses
  %i.aep = fmul reassoc nsz arcp contract afn <2 x float> %i.aek, %i.aek
  %i.aeq = fmul reassoc nsz arcp contract afn <2 x float> %i.aeo, %i.aeo
  %i.aer = fadd reassoc nsz arcp contract afn <2 x float> %i.aeq, %i.aep ; 2 uses
  %i.aes = call reassoc nsz arcp contract afn <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.aer) ; 3 uses
  %i.aet = fcmp reassoc nsz arcp contract afn une <2 x float> %i.aer, zeroinitializer ; 2 uses
  %i.aeu = fdiv reassoc nsz arcp contract afn <2 x float> %i.aek, %i.aes
  %i.aev = select <2 x i1> %i.aet, <2 x float> %i.aeu, <2 x float> splat (float 1.000000e+00) ; 3 uses
  %i.aew = fdiv reassoc nsz arcp contract afn <2 x float> %i.aeo, %i.aes
  %i.aex = select <2 x i1> %i.aet, <2 x float> %i.aew, <2 x float> zeroinitializer ; 3 uses
  %i.aey = fneg reassoc nsz arcp contract afn <2 x float> %i.aes ; 2 uses
  %i.aez = fmul reassoc nsz arcp contract afn <2 x float> %i.aev, %i.aev ; 8 uses
  %i.afa = fmul reassoc nsz arcp contract afn <2 x float> %i.aex, %i.aex ; 8 uses
  %i.afb = fmul reassoc nsz arcp contract afn <2 x float> %i.aev, %i.aex ; 4 uses
  %i.afc = fmul reassoc nsz arcp contract afn <2 x float> %i.ra, %i.aey
  %i.afd = fptosi <2 x float> %i.afc to <2 x i32>
  %i.afe = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.afd, <2 x i32> splat (i32 -1065353216))
  %i.aff = add nsw <2 x i32> %i.afe, splat (i32 1065353216)
  %i.afg = bitcast <2 x i32> %i.aff to <2 x float> ; 6 uses
  %i.afh = fmul reassoc nsz arcp contract afn <2 x float> %i.rb, %i.aey
  %i.afi = fptosi <2 x float> %i.afh to <2 x i32>
  %i.afj = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.afi, <2 x i32> splat (i32 -1065353216))
  %i.afk = add nsw <2 x i32> %i.afj, splat (i32 1065353216)
  %i.afl = bitcast <2 x i32> %i.afk to <2 x float> ; 6 uses
  %i.afm = load <2 x float>, ptr %i.kh, align 16, !tbaa !20, !noalias !196
  %i.afn = load <2 x float>, ptr %i.ki, align 16, !tbaa !20, !noalias !196
  %i.afo = fsub reassoc nsz arcp contract afn <2 x float> %i.afm, %i.afn
  %i.afp = fmul reassoc nsz arcp contract afn <2 x float> %i.afo, splat (float 5.000000e-01) ; 3 uses
  %i.afq = load <2 x float>, ptr %i.kj, align 16, !tbaa !20, !noalias !196
  %i.afr = load <2 x float>, ptr %i.kk, align 16, !tbaa !20, !noalias !196
  %i.afs = fsub reassoc nsz arcp contract afn <2 x float> %i.afq, %i.afr
  %i.aft = fmul reassoc nsz arcp contract afn <2 x float> %i.afs, splat (float 5.000000e-01) ; 3 uses
  %i.afu = fmul reassoc nsz arcp contract afn <2 x float> %i.afp, %i.afp
  %i.afv = fmul reassoc nsz arcp contract afn <2 x float> %i.aft, %i.aft
  %i.afw = fadd reassoc nsz arcp contract afn <2 x float> %i.afv, %i.afu ; 2 uses
  %i.afx = call reassoc nsz arcp contract afn <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.afw) ; 3 uses
  %i.afy = fcmp reassoc nsz arcp contract afn une <2 x float> %i.afw, zeroinitializer ; 2 uses
  %i.afz = fdiv reassoc nsz arcp contract afn <2 x float> %i.afp, %i.afx
  %i.aga = select <2 x i1> %i.afy, <2 x float> %i.afz, <2 x float> splat (float 1.000000e+00) ; 3 uses
  %i.agb = fdiv reassoc nsz arcp contract afn <2 x float> %i.aft, %i.afx
  %i.agc = select <2 x i1> %i.afy, <2 x float> %i.agb, <2 x float> zeroinitializer ; 3 uses
  %i.agd = fneg reassoc nsz arcp contract afn <2 x float> %i.afx ; 2 uses
  %i.age = fmul reassoc nsz arcp contract afn <2 x float> %i.aga, %i.aga ; 8 uses
  %i.agf = fmul reassoc nsz arcp contract afn <2 x float> %i.agc, %i.agc ; 8 uses
  %i.agg = fmul reassoc nsz arcp contract afn <2 x float> %i.aga, %i.agc ; 4 uses
  %i.agh = fmul reassoc nsz arcp contract afn <2 x float> %i.rc, %i.agd
  %i.agi = fptosi <2 x float> %i.agh to <2 x i32>
  %i.agj = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.agi, <2 x i32> splat (i32 -1065353216))
  %i.agk = add nsw <2 x i32> %i.agj, splat (i32 1065353216)
  %i.agl = bitcast <2 x i32> %i.agk to <2 x float> ; 6 uses
  %i.agm = fmul reassoc nsz arcp contract afn <2 x float> %i.rd, %i.agd
  %i.agn = fptosi <2 x float> %i.agm to <2 x i32>
  %i.ago = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.agn, <2 x i32> splat (i32 -1065353216))
  %i.agp = add nsw <2 x i32> %i.ago, splat (i32 1065353216)
  %i.agq = bitcast <2 x i32> %i.agp to <2 x float> ; 6 uses
  %i.agr = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.aef) ; 3 uses
  %i.ags = insertelement <4 x float> %i.ado, float %i.acx, i64 1
  %i.agt = insertelement <4 x float> %i.ags, float %i.agr, i64 3
  %i.agu = fneg reassoc nsz arcp contract afn <4 x float> %i.agt
  %i.agv = shufflevector <4 x float> %i.agu, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.agw = fdiv reassoc nsz arcp contract afn float %i.ace, %i.agr
  %i.agx = fdiv reassoc nsz arcp contract afn float %i.aci, %i.agr
  %.sroa.17425.0.i.i = select nsz i1 %i.aeg, float %i.agw, float 1.000000e+00 ; 3 uses
  %i.agy = select reassoc nsz arcp contract afn i1 %i.aeg, float %i.agx, float 0.000000e+00 ; 3 uses
  %i.agz = fmul reassoc nsz arcp contract afn float %.sroa.17425.0.i.i, %.sroa.17425.0.i.i ; 8 uses
  %i.aha = fmul reassoc nsz arcp contract afn float %i.agy, %i.agy ; 8 uses
  %i.ahb = fmul reassoc nsz arcp contract afn float %.sroa.17425.0.i.i, %i.agy ; 4 uses
  %i.ahc = fmul reassoc nsz arcp contract afn <8 x float> %i.qz, %i.agv
  %i.ahd = fptosi <8 x float> %i.ahc to <8 x i32>
  %i.ahe = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ahd, <8 x i32> splat (i32 -1065353216))
  %i.ahf = add nsw <8 x i32> %i.ahe, splat (i32 1065353216) ; 8 uses
  %bc = bitcast <8 x i32> %i.ahf to <8 x float>
  %i.ahg = extractelement <8 x float> %bc, i64 0  ; 6 uses
  %bc345 = bitcast <8 x i32> %i.ahf to <8 x float>
  %i.ahh = extractelement <8 x float> %bc345, i64 1 ; 6 uses
  %bc346 = bitcast <8 x i32> %i.ahf to <8 x float>
  %i.ahi = extractelement <8 x float> %bc346, i64 2 ; 6 uses
  %bc347 = bitcast <8 x i32> %i.ahf to <8 x float>
  %i.ahj = extractelement <8 x float> %bc347, i64 3 ; 6 uses
  %bc348 = bitcast <8 x i32> %i.ahf to <8 x float>
  %i.ahk = extractelement <8 x float> %bc348, i64 4 ; 6 uses
  %bc349 = bitcast <8 x i32> %i.ahf to <8 x float>
  %i.ahl = extractelement <8 x float> %bc349, i64 5 ; 6 uses
  %bc350 = bitcast <8 x i32> %i.ahf to <8 x float>
  %i.ahm = extractelement <8 x float> %bc350, i64 6 ; 6 uses
  %bc351 = bitcast <8 x i32> %i.ahf to <8 x float>
  %i.ahn = extractelement <8 x float> %bc351, i64 7 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20, !noalias !196
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20, !noalias !196
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20, !noalias !196
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20, !noalias !196
  switch i32 %.0.i.i, label %bb.am [
    i32 2, label %bb.ao
    i32 1, label %bb.an
  ]

bb.am:                                            ; preds = %.critedge.i.i
  store <2 x float> splat (float 2.500000e-01), ptr %i.c, align 16, !tbaa !20, !noalias !196
  store <2 x float> splat (float 5.000000e-01), ptr %i.kt, align 16, !tbaa !20, !noalias !196
  store <2 x float> splat (float 2.500000e-01), ptr %i.ku, align 16, !tbaa !20, !noalias !196
  store <2 x float> splat (float 5.000000e-01), ptr %i.kv, align 16, !tbaa !20, !noalias !196
  store <2 x float> splat (float -3.000000e+00), ptr %i.kw, align 16, !tbaa !20, !noalias !196
  store <2 x float> splat (float 5.000000e-01), ptr %i.kx, align 16, !tbaa !20, !noalias !196
  store <2 x float> splat (float 2.500000e-01), ptr %i.ky, align 16, !tbaa !20, !noalias !196
  store <2 x float> splat (float 5.000000e-01), ptr %i.kz, align 16, !tbaa !20, !noalias !196
  store <2 x float> splat (float 2.500000e-01), ptr %i.la, align 16, !tbaa !20, !noalias !196
  store float 2.500000e-01, ptr %i.ld, align 8, !tbaa !20, !noalias !196
  store float 5.000000e-01, ptr %i.le, align 8, !tbaa !20, !noalias !196
  store float 2.500000e-01, ptr %i.lf, align 8, !tbaa !20, !noalias !196
  store float 5.000000e-01, ptr %i.lg, align 8, !tbaa !20, !noalias !196
  store float -3.000000e+00, ptr %i.lh, align 8, !tbaa !20, !noalias !196
  store float 5.000000e-01, ptr %i.li, align 8, !tbaa !20, !noalias !196
  store float 2.500000e-01, ptr %i.lj, align 8, !tbaa !20, !noalias !196
  store float 5.000000e-01, ptr %i.lk, align 8, !tbaa !20, !noalias !196
  store float 2.500000e-01, ptr %i.ll, align 8, !tbaa !20, !noalias !196
  br label %compute_kernel.exit.i.i

bb.an:                                            ; preds = %.critedge.i.i
  %i.aho = fmul reassoc nsz arcp contract afn float %i.adu, %i.ahg
  %i.ahp = fadd reassoc nsz arcp contract afn float %i.aho, %i.adt ; 3 uses
  %i.ahq = fmul reassoc nsz arcp contract afn float %i.adt, %i.ahg
  %i.ahr = fadd reassoc nsz arcp contract afn float %i.ahq, %i.adu ; 3 uses
  %i.ahs = fmul reassoc nsz arcp contract afn float %i.adf, %i.ahh
  %i.aht = fadd reassoc nsz arcp contract afn float %i.ahs, %i.ade ; 2 uses
  %i.ahu = fmul reassoc nsz arcp contract afn float %i.ade, %i.ahh
  %i.ahv = fadd reassoc nsz arcp contract afn float %i.ahu, %i.adf ; 2 uses
  %i.ahw = fmul reassoc nsz arcp contract afn <2 x float> %i.afg, splat (float 5.000000e-01)
  %i.ahx = fadd reassoc nsz arcp contract afn <2 x float> %i.ahw, splat (float -5.000000e-01)
  %i.ahy = fmul reassoc nsz arcp contract afn <2 x float> %i.ahx, %i.afb ; 3 uses
  %i.ahz = fneg reassoc nsz arcp contract afn <2 x float> %i.ahy ; 2 uses
  store <2 x float> %i.ahy, ptr %i.c, align 16, !tbaa !20, !noalias !196
  store <2 x float> %i.ahz, ptr %i.ku, align 16, !tbaa !20, !noalias !196
  %i.aia = fmul reassoc nsz arcp contract afn <2 x float> %i.afa, %i.afg
  %i.aib = fadd reassoc nsz arcp contract afn <2 x float> %i.aia, %i.aez ; 4 uses
  %i.aic = fmul reassoc nsz arcp contract afn <2 x float> %i.aez, %i.afg
  %i.aid = fadd reassoc nsz arcp contract afn <2 x float> %i.aic, %i.afa ; 4 uses
  %i.aie = extractelement <2 x float> %i.aid, i64 0
  store float %i.aie, ptr %i.kt, align 16, !tbaa !20, !noalias !196
  %i.aif = extractelement <2 x float> %i.aib, i64 0
  store float %i.aif, ptr %i.kv, align 16, !tbaa !20, !noalias !196
  %i.aig = fadd reassoc nsz arcp contract afn <2 x float> %i.aib, %i.aid
  %i.aih = fmul reassoc nsz arcp contract afn <2 x float> %i.aig, splat (float -2.000000e+00)
  %i.aii = extractelement <2 x float> %i.aid, i64 1
  store float %i.aii, ptr %i.lb, align 4, !tbaa !20, !noalias !196
  %i.aij = extractelement <2 x float> %i.aib, i64 1
  store float %i.aij, ptr %i.lc, align 4, !tbaa !20, !noalias !196
  store <2 x float> %i.aih, ptr %i.kw, align 16, !tbaa !20, !noalias !196
  store <2 x float> %i.aib, ptr %i.kx, align 16, !tbaa !20, !noalias !196
  store <2 x float> %i.ahz, ptr %i.ky, align 16, !tbaa !20, !noalias !196
  store <2 x float> %i.aid, ptr %i.kz, align 16, !tbaa !20, !noalias !196
  store <2 x float> %i.ahy, ptr %i.la, align 16, !tbaa !20, !noalias !196
  %i.aik = fmul reassoc nsz arcp contract afn float %i.ahg, 5.000000e-01
  %i.ail = fadd reassoc nsz arcp contract afn float %i.aik, -5.000000e-01
  %i.aim = fmul reassoc nsz arcp contract afn float %i.ail, %i.adv ; 3 uses
  %i.ain = fneg reassoc nsz arcp contract afn float %i.aim ; 2 uses
  %i.aio = fadd reassoc nsz arcp contract afn float %i.ahp, %i.ahr
  %i.aip = fmul reassoc nsz arcp contract afn float %i.aio, -2.000000e+00
  store float %i.aim, ptr %i.ld, align 8, !tbaa !20, !noalias !196
  store float %i.ahr, ptr %i.le, align 8, !tbaa !20, !noalias !196
  store float %i.ain, ptr %i.lf, align 8, !tbaa !20, !noalias !196
  store float %i.ahp, ptr %i.lg, align 8, !tbaa !20, !noalias !196
  store float %i.aip, ptr %i.lh, align 8, !tbaa !20, !noalias !196
  store float %i.ahp, ptr %i.li, align 8, !tbaa !20, !noalias !196
  store float %i.ain, ptr %i.lj, align 8, !tbaa !20, !noalias !196
  store float %i.ahr, ptr %i.lk, align 8, !tbaa !20, !noalias !196
  store float %i.aim, ptr %i.ll, align 8, !tbaa !20, !noalias !196
  %i.aiq = fmul reassoc nsz arcp contract afn float %i.ahh, 5.000000e-01
  %i.air = fadd reassoc nsz arcp contract afn float %i.aiq, -5.000000e-01
  %i.ais = fmul reassoc nsz arcp contract afn float %i.air, %i.adg ; 2 uses
  %i.ait = fneg reassoc nsz arcp contract afn float %i.ais
  %i.aiu = fadd reassoc nsz arcp contract afn float %i.aht, %i.ahv
  %i.aiv = fmul reassoc nsz arcp contract afn float %i.aiu, -2.000000e+00
  br label %compute_kernel.exit.i.i

bb.ao:                                            ; preds = %.critedge.i.i
  %i.aiw = fmul reassoc nsz arcp contract afn float %i.adt, %i.ahg
  %i.aix = fadd reassoc nsz arcp contract afn float %i.aiw, %i.adu ; 3 uses
  %i.aiy = fmul reassoc nsz arcp contract afn float %i.adu, %i.ahg
  %i.aiz = fadd reassoc nsz arcp contract afn float %i.aiy, %i.adt ; 3 uses
  %i.aja = fmul reassoc nsz arcp contract afn float %i.ade, %i.ahh
  %i.ajb = fadd reassoc nsz arcp contract afn float %i.aja, %i.adf ; 2 uses
  %i.ajc = fmul reassoc nsz arcp contract afn float %i.adf, %i.ahh
  %i.ajd = fadd reassoc nsz arcp contract afn float %i.ajc, %i.ade ; 2 uses
  %i.aje = fmul reassoc nsz arcp contract afn <2 x float> %i.afg, splat (float 5.000000e-01)
  %i.ajf = fsub reassoc nsz arcp contract afn <2 x float> splat (float 5.000000e-01), %i.aje
  %i.ajg = fmul reassoc nsz arcp contract afn <2 x float> %i.ajf, %i.afb ; 3 uses
  %i.ajh = fneg reassoc nsz arcp contract afn <2 x float> %i.ajg ; 2 uses
  store <2 x float> %i.ajg, ptr %i.c, align 16, !tbaa !20, !noalias !196
  store <2 x float> %i.ajh, ptr %i.ku, align 16, !tbaa !20, !noalias !196
  %i.aji = fmul reassoc nsz arcp contract afn <2 x float> %i.aez, %i.afg
  %i.ajj = fadd reassoc nsz arcp contract afn <2 x float> %i.aji, %i.afa ; 4 uses
  %i.ajk = fmul reassoc nsz arcp contract afn <2 x float> %i.afa, %i.afg
  %i.ajl = fadd reassoc nsz arcp contract afn <2 x float> %i.ajk, %i.aez ; 4 uses
  %i.ajm = extractelement <2 x float> %i.ajl, i64 0
  store float %i.ajm, ptr %i.kt, align 16, !tbaa !20, !noalias !196
  %i.ajn = extractelement <2 x float> %i.ajj, i64 0
  store float %i.ajn, ptr %i.kv, align 16, !tbaa !20, !noalias !196
  %i.ajo = fadd reassoc nsz arcp contract afn <2 x float> %i.ajl, %i.ajj
  %i.ajp = fmul reassoc nsz arcp contract afn <2 x float> %i.ajo, splat (float -2.000000e+00)
  %i.ajq = extractelement <2 x float> %i.ajl, i64 1
  store float %i.ajq, ptr %i.lb, align 4, !tbaa !20, !noalias !196
  %i.ajr = extractelement <2 x float> %i.ajj, i64 1
  store float %i.ajr, ptr %i.lc, align 4, !tbaa !20, !noalias !196
  store <2 x float> %i.ajp, ptr %i.kw, align 16, !tbaa !20, !noalias !196
  store <2 x float> %i.ajj, ptr %i.kx, align 16, !tbaa !20, !noalias !196
  store <2 x float> %i.ajh, ptr %i.ky, align 16, !tbaa !20, !noalias !196
  store <2 x float> %i.ajl, ptr %i.kz, align 16, !tbaa !20, !noalias !196
  store <2 x float> %i.ajg, ptr %i.la, align 16, !tbaa !20, !noalias !196
  %i.ajs = fmul reassoc nsz arcp contract afn float %i.ahg, 5.000000e-01
  %i.ajt = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.ajs
  %i.aju = fmul reassoc nsz arcp contract afn float %i.ajt, %i.adv ; 3 uses
  %i.ajv = fneg reassoc nsz arcp contract afn float %i.aju ; 2 uses
  %i.ajw = fadd reassoc nsz arcp contract afn float %i.aiz, %i.aix
  %i.ajx = fmul reassoc nsz arcp contract afn float %i.ajw, -2.000000e+00
  store float %i.aju, ptr %i.ld, align 8, !tbaa !20, !noalias !196
  store float %i.aiz, ptr %i.le, align 8, !tbaa !20, !noalias !196
  store float %i.ajv, ptr %i.lf, align 8, !tbaa !20, !noalias !196
  store float %i.aix, ptr %i.lg, align 8, !tbaa !20, !noalias !196
  store float %i.ajx, ptr %i.lh, align 8, !tbaa !20, !noalias !196
  store float %i.aix, ptr %i.li, align 8, !tbaa !20, !noalias !196
  store float %i.ajv, ptr %i.lj, align 8, !tbaa !20, !noalias !196
  store float %i.aiz, ptr %i.lk, align 8, !tbaa !20, !noalias !196
  store float %i.aju, ptr %i.ll, align 8, !tbaa !20, !noalias !196
  %i.ajy = fmul reassoc nsz arcp contract afn float %i.ahh, 5.000000e-01
  %i.ajz = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.ajy
  %i.aka = fmul reassoc nsz arcp contract afn float %i.ajz, %i.adg ; 2 uses
  %i.akb = fneg reassoc nsz arcp contract afn float %i.aka
  %i.akc = fadd reassoc nsz arcp contract afn float %i.ajd, %i.ajb
  %i.akd = fmul reassoc nsz arcp contract afn float %i.akc, -2.000000e+00
  br label %compute_kernel.exit.i.i

compute_kernel.exit.i.i:                          ; preds = %bb.ao, %bb.an, %bb.am
  %.sink74.i.i.i = phi float [ %i.aka, %bb.ao ], [ %i.ais, %bb.an ], [ 2.500000e-01, %bb.am ] ; 2 uses
  %.sink72.i.i.i = phi float [ %i.ajd, %bb.ao ], [ %i.ahv, %bb.an ], [ 5.000000e-01, %bb.am ] ; 2 uses
  %.sink70.i.i.i = phi float [ %i.akb, %bb.ao ], [ %i.ait, %bb.an ], [ 2.500000e-01, %bb.am ] ; 2 uses
  %.sink68.i.i.i = phi float [ %i.ajb, %bb.ao ], [ %i.aht, %bb.an ], [ 5.000000e-01, %bb.am ] ; 2 uses
  %.sink66.i.i.i = phi float [ %i.akd, %bb.ao ], [ %i.aiv, %bb.an ], [ -3.000000e+00, %bb.am ]
  store float %.sink74.i.i.i, ptr %i.lm, align 4, !tbaa !20, !noalias !196
  store float %.sink72.i.i.i, ptr %i.ln, align 4, !tbaa !20, !noalias !196
  store float %.sink70.i.i.i, ptr %i.lo, align 4, !tbaa !20, !noalias !196
  store float %.sink68.i.i.i, ptr %i.lp, align 4, !tbaa !20, !noalias !196
  store float %.sink66.i.i.i, ptr %i.lq, align 4, !tbaa !20, !noalias !196
  store float %.sink68.i.i.i, ptr %i.lr, align 4, !tbaa !20, !noalias !196
  store float %.sink70.i.i.i, ptr %i.ls, align 4, !tbaa !20, !noalias !196
  store float %.sink72.i.i.i, ptr %i.lt, align 4, !tbaa !20, !noalias !196
  store float %.sink74.i.i.i, ptr %i.lu, align 4, !tbaa !20, !noalias !196
  switch i32 %.0.i106.i, label %bb.ap [
    i32 2, label %bb.ar
    i32 1, label %bb.aq
  ]

bb.ap:                                            ; preds = %compute_kernel.exit.i.i
  store <2 x float> splat (float 2.500000e-01), ptr %i.d, align 16, !tbaa !20, !noalias !196
  store <2 x float> splat (float 5.000000e-01), ptr %i.lv, align 16, !tbaa !20, !noalias !196
  store <2 x float> splat (float 2.500000e-01), ptr %i.lw, align 16, !tbaa !20, !noalias !196
  store <2 x float> splat (float 5.000000e-01), ptr %i.lx, align 16, !tbaa !20, !noalias !196
  store <2 x float> splat (float -3.000000e+00), ptr %i.ly, align 16, !tbaa !20, !noalias !196
  store <2 x float> splat (float 5.000000e-01), ptr %i.lz, align 16, !tbaa !20, !noalias !196
  store <2 x float> splat (float 2.500000e-01), ptr %i.ma, align 16, !tbaa !20, !noalias !196
  store <2 x float> splat (float 5.000000e-01), ptr %i.mb, align 16, !tbaa !20, !noalias !196
  store <2 x float> splat (float 2.500000e-01), ptr %i.mc, align 16, !tbaa !20, !noalias !196
  store float 2.500000e-01, ptr %i.mf, align 8, !tbaa !20, !noalias !196
  store float 5.000000e-01, ptr %i.mg, align 8, !tbaa !20, !noalias !196
  store float 2.500000e-01, ptr %i.mh, align 8, !tbaa !20, !noalias !196
  store float 5.000000e-01, ptr %i.mi, align 8, !tbaa !20, !noalias !196
  store float -3.000000e+00, ptr %i.mj, align 8, !tbaa !20, !noalias !196
  store float 5.000000e-01, ptr %i.mk, align 8, !tbaa !20, !noalias !196
  store float 2.500000e-01, ptr %i.ml, align 8, !tbaa !20, !noalias !196
  store float 5.000000e-01, ptr %i.mm, align 8, !tbaa !20, !noalias !196
  store float 2.500000e-01, ptr %i.mn, align 8, !tbaa !20, !noalias !196
  br label %compute_kernel.exit228.i.i

bb.aq:                                            ; preds = %compute_kernel.exit.i.i
  %i.ake = fmul reassoc nsz arcp contract afn float %i.aeb, %i.ahi
  %i.akf = fadd reassoc nsz arcp contract afn float %i.ake, %i.aea ; 3 uses
  %i.akg = fmul reassoc nsz arcp contract afn float %i.aea, %i.ahi
  %i.akh = fadd reassoc nsz arcp contract afn float %i.akg, %i.aeb ; 3 uses
  %i.aki = fmul reassoc nsz arcp contract afn float %i.aha, %i.ahj
  %i.akj = fadd reassoc nsz arcp contract afn float %i.aki, %i.agz ; 2 uses
  %i.akk = fmul reassoc nsz arcp contract afn float %i.agz, %i.ahj
  %i.akl = fadd reassoc nsz arcp contract afn float %i.akk, %i.aha ; 2 uses
  %i.akm = fmul reassoc nsz arcp contract afn <2 x float> %i.agl, splat (float 5.000000e-01)
  %i.akn = fadd reassoc nsz arcp contract afn <2 x float> %i.akm, splat (float -5.000000e-01)
  %i.ako = fmul reassoc nsz arcp contract afn <2 x float> %i.akn, %i.agg ; 3 uses
  %i.akp = fneg reassoc nsz arcp contract afn <2 x float> %i.ako ; 2 uses
  store <2 x float> %i.ako, ptr %i.d, align 16, !tbaa !20, !noalias !196
  store <2 x float> %i.akp, ptr %i.lw, align 16, !tbaa !20, !noalias !196
  %i.akq = fmul reassoc nsz arcp contract afn <2 x float> %i.agf, %i.agl
  %i.akr = fadd reassoc nsz arcp contract afn <2 x float> %i.akq, %i.age ; 4 uses
  %i.aks = fmul reassoc nsz arcp contract afn <2 x float> %i.age, %i.agl
  %i.akt = fadd reassoc nsz arcp contract afn <2 x float> %i.aks, %i.agf ; 4 uses
  %i.aku = extractelement <2 x float> %i.akt, i64 0
  store float %i.aku, ptr %i.lv, align 16, !tbaa !20, !noalias !196
  %i.akv = extractelement <2 x float> %i.akr, i64 0
  store float %i.akv, ptr %i.lx, align 16, !tbaa !20, !noalias !196
  %i.akw = fadd reassoc nsz arcp contract afn <2 x float> %i.akr, %i.akt
  %i.akx = fmul reassoc nsz arcp contract afn <2 x float> %i.akw, splat (float -2.000000e+00)
  %i.aky = extractelement <2 x float> %i.akt, i64 1
  store float %i.aky, ptr %i.md, align 4, !tbaa !20, !noalias !196
  %i.akz = extractelement <2 x float> %i.akr, i64 1
  store float %i.akz, ptr %i.me, align 4, !tbaa !20, !noalias !196
  store <2 x float> %i.akx, ptr %i.ly, align 16, !tbaa !20, !noalias !196
  store <2 x float> %i.akr, ptr %i.lz, align 16, !tbaa !20, !noalias !196
  store <2 x float> %i.akp, ptr %i.ma, align 16, !tbaa !20, !noalias !196
  store <2 x float> %i.akt, ptr %i.mb, align 16, !tbaa !20, !noalias !196
  store <2 x float> %i.ako, ptr %i.mc, align 16, !tbaa !20, !noalias !196
  %i.ala = fmul reassoc nsz arcp contract afn float %i.ahi, 5.000000e-01
  %i.alb = fadd reassoc nsz arcp contract afn float %i.ala, -5.000000e-01
  %i.alc = fmul reassoc nsz arcp contract afn float %i.alb, %i.aec ; 3 uses
  %i.ald = fneg reassoc nsz arcp contract afn float %i.alc ; 2 uses
  %i.ale = fadd reassoc nsz arcp contract afn float %i.akf, %i.akh
  %i.alf = fmul reassoc nsz arcp contract afn float %i.ale, -2.000000e+00
  store float %i.alc, ptr %i.mf, align 8, !tbaa !20, !noalias !196
  store float %i.akh, ptr %i.mg, align 8, !tbaa !20, !noalias !196
  store float %i.ald, ptr %i.mh, align 8, !tbaa !20, !noalias !196
  store float %i.akf, ptr %i.mi, align 8, !tbaa !20, !noalias !196
  store float %i.alf, ptr %i.mj, align 8, !tbaa !20, !noalias !196
  store float %i.akf, ptr %i.mk, align 8, !tbaa !20, !noalias !196
  store float %i.ald, ptr %i.ml, align 8, !tbaa !20, !noalias !196
  store float %i.akh, ptr %i.mm, align 8, !tbaa !20, !noalias !196
  store float %i.alc, ptr %i.mn, align 8, !tbaa !20, !noalias !196
  %i.alg = fmul reassoc nsz arcp contract afn float %i.ahj, 5.000000e-01
  %i.alh = fadd reassoc nsz arcp contract afn float %i.alg, -5.000000e-01
  %i.ali = fmul reassoc nsz arcp contract afn float %i.alh, %i.ahb ; 2 uses
  %i.alj = fneg reassoc nsz arcp contract afn float %i.ali
  %i.alk = fadd reassoc nsz arcp contract afn float %i.akj, %i.akl
  %i.all = fmul reassoc nsz arcp contract afn float %i.alk, -2.000000e+00
  br label %compute_kernel.exit228.i.i

bb.ar:                                            ; preds = %compute_kernel.exit.i.i
  %i.alm = fmul reassoc nsz arcp contract afn float %i.aea, %i.ahi
  %i.aln = fadd reassoc nsz arcp contract afn float %i.alm, %i.aeb ; 3 uses
  %i.alo = fmul reassoc nsz arcp contract afn float %i.aeb, %i.ahi
  %i.alp = fadd reassoc nsz arcp contract afn float %i.alo, %i.aea ; 3 uses
  %i.alq = fmul reassoc nsz arcp contract afn float %i.agz, %i.ahj
  %i.alr = fadd reassoc nsz arcp contract afn float %i.alq, %i.aha ; 2 uses
  %i.als = fmul reassoc nsz arcp contract afn float %i.aha, %i.ahj
  %i.alt = fadd reassoc nsz arcp contract afn float %i.als, %i.agz ; 2 uses
  %i.alu = fmul reassoc nsz arcp contract afn <2 x float> %i.agl, splat (float 5.000000e-01)
  %i.alv = fsub reassoc nsz arcp contract afn <2 x float> splat (float 5.000000e-01), %i.alu
  %i.alw = fmul reassoc nsz arcp contract afn <2 x float> %i.alv, %i.agg ; 3 uses
  %i.alx = fneg reassoc nsz arcp contract afn <2 x float> %i.alw ; 2 uses
  store <2 x float> %i.alw, ptr %i.d, align 16, !tbaa !20, !noalias !196
  store <2 x float> %i.alx, ptr %i.lw, align 16, !tbaa !20, !noalias !196
  %i.aly = fmul reassoc nsz arcp contract afn <2 x float> %i.age, %i.agl
  %i.alz = fadd reassoc nsz arcp contract afn <2 x float> %i.aly, %i.agf ; 4 uses
  %i.ama = fmul reassoc nsz arcp contract afn <2 x float> %i.agf, %i.agl
  %i.amb = fadd reassoc nsz arcp contract afn <2 x float> %i.ama, %i.age ; 4 uses
  %i.amc = extractelement <2 x float> %i.amb, i64 0
  store float %i.amc, ptr %i.lv, align 16, !tbaa !20, !noalias !196
  %i.amd = extractelement <2 x float> %i.alz, i64 0
  store float %i.amd, ptr %i.lx, align 16, !tbaa !20, !noalias !196
  %i.ame = fadd reassoc nsz arcp contract afn <2 x float> %i.amb, %i.alz
  %i.amf = fmul reassoc nsz arcp contract afn <2 x float> %i.ame, splat (float -2.000000e+00)
  %i.amg = extractelement <2 x float> %i.amb, i64 1
  store float %i.amg, ptr %i.md, align 4, !tbaa !20, !noalias !196
  %i.amh = extractelement <2 x float> %i.alz, i64 1
  store float %i.amh, ptr %i.me, align 4, !tbaa !20, !noalias !196
  store <2 x float> %i.amf, ptr %i.ly, align 16, !tbaa !20, !noalias !196
  store <2 x float> %i.alz, ptr %i.lz, align 16, !tbaa !20, !noalias !196
  store <2 x float> %i.alx, ptr %i.ma, align 16, !tbaa !20, !noalias !196
  store <2 x float> %i.amb, ptr %i.mb, align 16, !tbaa !20, !noalias !196
  store <2 x float> %i.alw, ptr %i.mc, align 16, !tbaa !20, !noalias !196
  %i.ami = fmul reassoc nsz arcp contract afn float %i.ahi, 5.000000e-01
  %i.amj = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.ami
  %i.amk = fmul reassoc nsz arcp contract afn float %i.amj, %i.aec ; 3 uses
  %i.aml = fneg reassoc nsz arcp contract afn float %i.amk ; 2 uses
  %i.amm = fadd reassoc nsz arcp contract afn float %i.alp, %i.aln
  %i.amn = fmul reassoc nsz arcp contract afn float %i.amm, -2.000000e+00
  store float %i.amk, ptr %i.mf, align 8, !tbaa !20, !noalias !196
  store float %i.alp, ptr %i.mg, align 8, !tbaa !20, !noalias !196
  store float %i.aml, ptr %i.mh, align 8, !tbaa !20, !noalias !196
  store float %i.aln, ptr %i.mi, align 8, !tbaa !20, !noalias !196
  store float %i.amn, ptr %i.mj, align 8, !tbaa !20, !noalias !196
  store float %i.aln, ptr %i.mk, align 8, !tbaa !20, !noalias !196
  store float %i.aml, ptr %i.ml, align 8, !tbaa !20, !noalias !196
  store float %i.alp, ptr %i.mm, align 8, !tbaa !20, !noalias !196
  store float %i.amk, ptr %i.mn, align 8, !tbaa !20, !noalias !196
  %i.amo = fmul reassoc nsz arcp contract afn float %i.ahj, 5.000000e-01
  %i.amp = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.amo
  %i.amq = fmul reassoc nsz arcp contract afn float %i.amp, %i.ahb ; 2 uses
  %i.amr = fneg reassoc nsz arcp contract afn float %i.amq
  %i.ams = fadd reassoc nsz arcp contract afn float %i.alt, %i.alr
  %i.amt = fmul reassoc nsz arcp contract afn float %i.ams, -2.000000e+00
  br label %compute_kernel.exit228.i.i

compute_kernel.exit228.i.i:                       ; preds = %bb.ar, %bb.aq, %bb.ap
  %.sink74.i223.i.i = phi float [ %i.amq, %bb.ar ], [ %i.ali, %bb.aq ], [ 2.500000e-01, %bb.ap ] ; 2 uses
  %.sink72.i224.i.i = phi float [ %i.alt, %bb.ar ], [ %i.akl, %bb.aq ], [ 5.000000e-01, %bb.ap ] ; 2 uses
  %.sink70.i225.i.i = phi float [ %i.amr, %bb.ar ], [ %i.alj, %bb.aq ], [ 2.500000e-01, %bb.ap ] ; 2 uses
  %.sink68.i226.i.i = phi float [ %i.alr, %bb.ar ], [ %i.akj, %bb.aq ], [ 5.000000e-01, %bb.ap ] ; 2 uses
  %.sink66.i227.i.i = phi float [ %i.amt, %bb.ar ], [ %i.all, %bb.aq ], [ -3.000000e+00, %bb.ap ]
  store float %.sink74.i223.i.i, ptr %i.mo, align 4, !tbaa !20, !noalias !196
  store float %.sink72.i224.i.i, ptr %i.mp, align 4, !tbaa !20, !noalias !196
  store float %.sink70.i225.i.i, ptr %i.mq, align 4, !tbaa !20, !noalias !196
  store float %.sink68.i226.i.i, ptr %i.mr, align 4, !tbaa !20, !noalias !196
  store float %.sink66.i227.i.i, ptr %i.ms, align 4, !tbaa !20, !noalias !196
  store float %.sink68.i226.i.i, ptr %i.mt, align 4, !tbaa !20, !noalias !196
  store float %.sink70.i225.i.i, ptr %i.mu, align 4, !tbaa !20, !noalias !196
  store float %.sink72.i224.i.i, ptr %i.mv, align 4, !tbaa !20, !noalias !196
  store float %.sink74.i223.i.i, ptr %i.mw, align 4, !tbaa !20, !noalias !196
  switch i32 %.0.i108.i, label %bb.as [
    i32 2, label %bb.au
    i32 1, label %bb.at
  ]

bb.as:                                            ; preds = %compute_kernel.exit228.i.i
  store <2 x float> splat (float 2.500000e-01), ptr %i.e, align 16, !tbaa !20, !noalias !196
  store <2 x float> splat (float 5.000000e-01), ptr %i.mx, align 16, !tbaa !20, !noalias !196
  store <2 x float> splat (float 2.500000e-01), ptr %i.my, align 16, !tbaa !20, !noalias !196
  store <2 x float> splat (float 5.000000e-01), ptr %i.mz, align 16, !tbaa !20, !noalias !196
  store <2 x float> splat (float -3.000000e+00), ptr %i.na, align 16, !tbaa !20, !noalias !196
  store <2 x float> splat (float 5.000000e-01), ptr %i.nb, align 16, !tbaa !20, !noalias !196
  store <2 x float> splat (float 2.500000e-01), ptr %i.nc, align 16, !tbaa !20, !noalias !196
  store <2 x float> splat (float 5.000000e-01), ptr %i.nd, align 16, !tbaa !20, !noalias !196
  store <2 x float> splat (float 2.500000e-01), ptr %i.ne, align 16, !tbaa !20, !noalias !196
  store float 2.500000e-01, ptr %i.nh, align 8, !tbaa !20, !noalias !196
  store float 5.000000e-01, ptr %i.ni, align 8, !tbaa !20, !noalias !196
  store float 2.500000e-01, ptr %i.nj, align 8, !tbaa !20, !noalias !196
  store float 5.000000e-01, ptr %i.nk, align 8, !tbaa !20, !noalias !196
  store float -3.000000e+00, ptr %i.nl, align 8, !tbaa !20, !noalias !196
  store float 5.000000e-01, ptr %i.nm, align 8, !tbaa !20, !noalias !196
  store float 2.500000e-01, ptr %i.nn, align 8, !tbaa !20, !noalias !196
  store float 5.000000e-01, ptr %i.no, align 8, !tbaa !20, !noalias !196
  store float 2.500000e-01, ptr %i.np, align 8, !tbaa !20, !noalias !196
  br label %compute_kernel.exit234.i.i

bb.at:                                            ; preds = %compute_kernel.exit228.i.i
  %i.amu = fmul reassoc nsz arcp contract afn float %i.adu, %i.ahk
  %i.amv = fadd reassoc nsz arcp contract afn float %i.amu, %i.adt ; 3 uses
  %i.amw = fmul reassoc nsz arcp contract afn float %i.adt, %i.ahk
  %i.amx = fadd reassoc nsz arcp contract afn float %i.amw, %i.adu ; 3 uses
  %i.amy = fmul reassoc nsz arcp contract afn float %i.adf, %i.ahl
  %i.amz = fadd reassoc nsz arcp contract afn float %i.amy, %i.ade ; 2 uses
  %i.ana = fmul reassoc nsz arcp contract afn float %i.ade, %i.ahl
  %i.anb = fadd reassoc nsz arcp contract afn float %i.ana, %i.adf ; 2 uses
  %i.anc = fmul reassoc nsz arcp contract afn <2 x float> %i.afl, splat (float 5.000000e-01)
  %i.and = fadd reassoc nsz arcp contract afn <2 x float> %i.anc, splat (float -5.000000e-01)
  %i.ane = fmul reassoc nsz arcp contract afn <2 x float> %i.and, %i.afb ; 3 uses
  %i.anf = fneg reassoc nsz arcp contract afn <2 x float> %i.ane ; 2 uses
  store <2 x float> %i.ane, ptr %i.e, align 16, !tbaa !20, !noalias !196
  store <2 x float> %i.anf, ptr %i.my, align 16, !tbaa !20, !noalias !196
  %i.ang = fmul reassoc nsz arcp contract afn <2 x float> %i.afa, %i.afl
  %i.anh = fadd reassoc nsz arcp contract afn <2 x float> %i.ang, %i.aez ; 4 uses
  %i.ani = fmul reassoc nsz arcp contract afn <2 x float> %i.aez, %i.afl
  %i.anj = fadd reassoc nsz arcp contract afn <2 x float> %i.ani, %i.afa ; 4 uses
  %i.ank = extractelement <2 x float> %i.anj, i64 0
  store float %i.ank, ptr %i.mx, align 16, !tbaa !20, !noalias !196
  %i.anl = extractelement <2 x float> %i.anh, i64 0
  store float %i.anl, ptr %i.mz, align 16, !tbaa !20, !noalias !196
  %i.anm = fadd reassoc nsz arcp contract afn <2 x float> %i.anh, %i.anj
  %i.ann = fmul reassoc nsz arcp contract afn <2 x float> %i.anm, splat (float -2.000000e+00)
  %i.ano = extractelement <2 x float> %i.anj, i64 1
  store float %i.ano, ptr %i.nf, align 4, !tbaa !20, !noalias !196
  %i.anp = extractelement <2 x float> %i.anh, i64 1
  store float %i.anp, ptr %i.ng, align 4, !tbaa !20, !noalias !196
  store <2 x float> %i.ann, ptr %i.na, align 16, !tbaa !20, !noalias !196
  store <2 x float> %i.anh, ptr %i.nb, align 16, !tbaa !20, !noalias !196
  store <2 x float> %i.anf, ptr %i.nc, align 16, !tbaa !20, !noalias !196
  store <2 x float> %i.anj, ptr %i.nd, align 16, !tbaa !20, !noalias !196
  store <2 x float> %i.ane, ptr %i.ne, align 16, !tbaa !20, !noalias !196
  %i.anq = fmul reassoc nsz arcp contract afn float %i.ahk, 5.000000e-01
  %i.anr = fadd reassoc nsz arcp contract afn float %i.anq, -5.000000e-01
  %i.ans = fmul reassoc nsz arcp contract afn float %i.anr, %i.adv ; 3 uses
  %i.ant = fneg reassoc nsz arcp contract afn float %i.ans ; 2 uses
  %i.anu = fadd reassoc nsz arcp contract afn float %i.amv, %i.amx
  %i.anv = fmul reassoc nsz arcp contract afn float %i.anu, -2.000000e+00
  store float %i.ans, ptr %i.nh, align 8, !tbaa !20, !noalias !196
  store float %i.amx, ptr %i.ni, align 8, !tbaa !20, !noalias !196
  store float %i.ant, ptr %i.nj, align 8, !tbaa !20, !noalias !196
  store float %i.amv, ptr %i.nk, align 8, !tbaa !20, !noalias !196
  store float %i.anv, ptr %i.nl, align 8, !tbaa !20, !noalias !196
  store float %i.amv, ptr %i.nm, align 8, !tbaa !20, !noalias !196
  store float %i.ant, ptr %i.nn, align 8, !tbaa !20, !noalias !196
  store float %i.amx, ptr %i.no, align 8, !tbaa !20, !noalias !196
  store float %i.ans, ptr %i.np, align 8, !tbaa !20, !noalias !196
  %i.anw = fmul reassoc nsz arcp contract afn float %i.ahl, 5.000000e-01
  %i.anx = fadd reassoc nsz arcp contract afn float %i.anw, -5.000000e-01
  %i.any = fmul reassoc nsz arcp contract afn float %i.anx, %i.adg ; 2 uses
  %i.anz = fneg reassoc nsz arcp contract afn float %i.any
  %i.aoa = fadd reassoc nsz arcp contract afn float %i.amz, %i.anb
  %i.aob = fmul reassoc nsz arcp contract afn float %i.aoa, -2.000000e+00
  br label %compute_kernel.exit234.i.i

bb.au:                                            ; preds = %compute_kernel.exit228.i.i
  %i.aoc = fmul reassoc nsz arcp contract afn float %i.adt, %i.ahk
  %i.aod = fadd reassoc nsz arcp contract afn float %i.aoc, %i.adu ; 3 uses
  %i.aoe = fmul reassoc nsz arcp contract afn float %i.adu, %i.ahk
  %i.aof = fadd reassoc nsz arcp contract afn float %i.aoe, %i.adt ; 3 uses
  %i.aog = fmul reassoc nsz arcp contract afn float %i.ade, %i.ahl
  %i.aoh = fadd reassoc nsz arcp contract afn float %i.aog, %i.adf ; 2 uses
  %i.aoi = fmul reassoc nsz arcp contract afn float %i.adf, %i.ahl
  %i.aoj = fadd reassoc nsz arcp contract afn float %i.aoi, %i.ade ; 2 uses
  %i.aok = fmul reassoc nsz arcp contract afn <2 x float> %i.afl, splat (float 5.000000e-01)
  %i.aol = fsub reassoc nsz arcp contract afn <2 x float> splat (float 5.000000e-01), %i.aok
  %i.aom = fmul reassoc nsz arcp contract afn <2 x float> %i.aol, %i.afb ; 3 uses
  %i.aon = fneg reassoc nsz arcp contract afn <2 x float> %i.aom ; 2 uses
  store <2 x float> %i.aom, ptr %i.e, align 16, !tbaa !20, !noalias !196
  store <2 x float> %i.aon, ptr %i.my, align 16, !tbaa !20, !noalias !196
  %i.aoo = fmul reassoc nsz arcp contract afn <2 x float> %i.aez, %i.afl
  %i.aop = fadd reassoc nsz arcp contract afn <2 x float> %i.aoo, %i.afa ; 4 uses
  %i.aoq = fmul reassoc nsz arcp contract afn <2 x float> %i.afa, %i.afl
  %i.aor = fadd reassoc nsz arcp contract afn <2 x float> %i.aoq, %i.aez ; 4 uses
  %i.aos = extractelement <2 x float> %i.aor, i64 0
  store float %i.aos, ptr %i.mx, align 16, !tbaa !20, !noalias !196
  %i.aot = extractelement <2 x float> %i.aop, i64 0
  store float %i.aot, ptr %i.mz, align 16, !tbaa !20, !noalias !196
  %i.aou = fadd reassoc nsz arcp contract afn <2 x float> %i.aor, %i.aop
  %i.aov = fmul reassoc nsz arcp contract afn <2 x float> %i.aou, splat (float -2.000000e+00)
  %i.aow = extractelement <2 x float> %i.aor, i64 1
  store float %i.aow, ptr %i.nf, align 4, !tbaa !20, !noalias !196
  %i.aox = extractelement <2 x float> %i.aop, i64 1
  store float %i.aox, ptr %i.ng, align 4, !tbaa !20, !noalias !196
  store <2 x float> %i.aov, ptr %i.na, align 16, !tbaa !20, !noalias !196
  store <2 x float> %i.aop, ptr %i.nb, align 16, !tbaa !20, !noalias !196
  store <2 x float> %i.aon, ptr %i.nc, align 16, !tbaa !20, !noalias !196
  store <2 x float> %i.aor, ptr %i.nd, align 16, !tbaa !20, !noalias !196
  store <2 x float> %i.aom, ptr %i.ne, align 16, !tbaa !20, !noalias !196
  %i.aoy = fmul reassoc nsz arcp contract afn float %i.ahk, 5.000000e-01
  %i.aoz = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.aoy
  %i.apa = fmul reassoc nsz arcp contract afn float %i.aoz, %i.adv ; 3 uses
  %i.apb = fneg reassoc nsz arcp contract afn float %i.apa ; 2 uses
  %i.apc = fadd reassoc nsz arcp contract afn float %i.aof, %i.aod
  %i.apd = fmul reassoc nsz arcp contract afn float %i.apc, -2.000000e+00
  store float %i.apa, ptr %i.nh, align 8, !tbaa !20, !noalias !196
  store float %i.aof, ptr %i.ni, align 8, !tbaa !20, !noalias !196
  store float %i.apb, ptr %i.nj, align 8, !tbaa !20, !noalias !196
  store float %i.aod, ptr %i.nk, align 8, !tbaa !20, !noalias !196
  store float %i.apd, ptr %i.nl, align 8, !tbaa !20, !noalias !196
  store float %i.aod, ptr %i.nm, align 8, !tbaa !20, !noalias !196
  store float %i.apb, ptr %i.nn, align 8, !tbaa !20, !noalias !196
  store float %i.aof, ptr %i.no, align 8, !tbaa !20, !noalias !196
  store float %i.apa, ptr %i.np, align 8, !tbaa !20, !noalias !196
  %i.ape = fmul reassoc nsz arcp contract afn float %i.ahl, 5.000000e-01
  %i.apf = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.ape
  %i.apg = fmul reassoc nsz arcp contract afn float %i.apf, %i.adg ; 2 uses
  %i.aph = fneg reassoc nsz arcp contract afn float %i.apg
  %i.api = fadd reassoc nsz arcp contract afn float %i.aoj, %i.aoh
  %i.apj = fmul reassoc nsz arcp contract afn float %i.api, -2.000000e+00
  br label %compute_kernel.exit234.i.i

compute_kernel.exit234.i.i:                       ; preds = %bb.au, %bb.at, %bb.as
  %.sink74.i229.i.i = phi float [ %i.apg, %bb.au ], [ %i.any, %bb.at ], [ 2.500000e-01, %bb.as ] ; 2 uses
  %.sink72.i230.i.i = phi float [ %i.aoj, %bb.au ], [ %i.anb, %bb.at ], [ 5.000000e-01, %bb.as ] ; 2 uses
  %.sink70.i231.i.i = phi float [ %i.aph, %bb.au ], [ %i.anz, %bb.at ], [ 2.500000e-01, %bb.as ] ; 2 uses
  %.sink68.i232.i.i = phi float [ %i.aoh, %bb.au ], [ %i.amz, %bb.at ], [ 5.000000e-01, %bb.as ] ; 2 uses
  %.sink66.i233.i.i = phi float [ %i.apj, %bb.au ], [ %i.aob, %bb.at ], [ -3.000000e+00, %bb.as ]
  store float %.sink74.i229.i.i, ptr %i.nq, align 4, !tbaa !20, !noalias !196
  store float %.sink72.i230.i.i, ptr %i.nr, align 4, !tbaa !20, !noalias !196
  store float %.sink70.i231.i.i, ptr %i.ns, align 4, !tbaa !20, !noalias !196
  store float %.sink68.i232.i.i, ptr %i.nt, align 4, !tbaa !20, !noalias !196
  store float %.sink66.i233.i.i, ptr %i.nu, align 4, !tbaa !20, !noalias !196
  store float %.sink68.i232.i.i, ptr %i.nv, align 4, !tbaa !20, !noalias !196
  store float %.sink70.i231.i.i, ptr %i.nw, align 4, !tbaa !20, !noalias !196
  store float %.sink72.i230.i.i, ptr %i.nx, align 4, !tbaa !20, !noalias !196
  store float %.sink74.i229.i.i, ptr %i.ny, align 4, !tbaa !20, !noalias !196
  switch i32 %.0.i110.i, label %bb.av [
    i32 2, label %bb.ax
    i32 1, label %bb.aw
  ]

bb.av:                                            ; preds = %compute_kernel.exit234.i.i
  store <2 x float> splat (float 2.500000e-01), ptr %i.f, align 16, !tbaa !20, !noalias !196
  store <2 x float> splat (float 5.000000e-01), ptr %i.nz, align 16, !tbaa !20, !noalias !196
  store <2 x float> splat (float 2.500000e-01), ptr %i.oa, align 16, !tbaa !20, !noalias !196
  store <2 x float> splat (float 5.000000e-01), ptr %i.ob, align 16, !tbaa !20, !noalias !196
  store <2 x float> splat (float -3.000000e+00), ptr %i.oc, align 16, !tbaa !20, !noalias !196
  store <2 x float> splat (float 5.000000e-01), ptr %i.od, align 16, !tbaa !20, !noalias !196
  store <2 x float> splat (float 2.500000e-01), ptr %i.oe, align 16, !tbaa !20, !noalias !196
  store <2 x float> splat (float 5.000000e-01), ptr %i.of, align 16, !tbaa !20, !noalias !196
  store <2 x float> splat (float 2.500000e-01), ptr %i.og, align 16, !tbaa !20, !noalias !196
  store float 2.500000e-01, ptr %i.oj, align 8, !tbaa !20, !noalias !196
  store float 5.000000e-01, ptr %i.ok, align 8, !tbaa !20, !noalias !196
  store float 2.500000e-01, ptr %i.ol, align 8, !tbaa !20, !noalias !196
  store float 5.000000e-01, ptr %i.om, align 8, !tbaa !20, !noalias !196
  store float -3.000000e+00, ptr %i.on, align 8, !tbaa !20, !noalias !196
  store float 5.000000e-01, ptr %i.oo, align 8, !tbaa !20, !noalias !196
  store float 2.500000e-01, ptr %i.op, align 8, !tbaa !20, !noalias !196
  store float 5.000000e-01, ptr %i.oq, align 8, !tbaa !20, !noalias !196
  store float 2.500000e-01, ptr %i.or, align 8, !tbaa !20, !noalias !196
  br label %compute_kernel.exit240.i.i

bb.aw:                                            ; preds = %compute_kernel.exit234.i.i
  %i.apk = fmul reassoc nsz arcp contract afn float %i.aeb, %i.ahm
  %i.apl = fadd reassoc nsz arcp contract afn float %i.apk, %i.aea ; 3 uses
  %i.apm = fmul reassoc nsz arcp contract afn float %i.aea, %i.ahm
  %i.apn = fadd reassoc nsz arcp contract afn float %i.apm, %i.aeb ; 3 uses
  %i.apo = fmul reassoc nsz arcp contract afn float %i.aha, %i.ahn
  %i.app = fadd reassoc nsz arcp contract afn float %i.apo, %i.agz ; 2 uses
  %i.apq = fmul reassoc nsz arcp contract afn float %i.agz, %i.ahn
  %i.apr = fadd reassoc nsz arcp contract afn float %i.apq, %i.aha ; 2 uses
  %i.aps = fmul reassoc nsz arcp contract afn <2 x float> %i.agq, splat (float 5.000000e-01)
  %i.apt = fadd reassoc nsz arcp contract afn <2 x float> %i.aps, splat (float -5.000000e-01)
  %i.apu = fmul reassoc nsz arcp contract afn <2 x float> %i.apt, %i.agg ; 3 uses
  %i.apv = fneg reassoc nsz arcp contract afn <2 x float> %i.apu ; 2 uses
  store <2 x float> %i.apu, ptr %i.f, align 16, !tbaa !20, !noalias !196
  store <2 x float> %i.apv, ptr %i.oa, align 16, !tbaa !20, !noalias !196
  %i.apw = fmul reassoc nsz arcp contract afn <2 x float> %i.agf, %i.agq
  %i.apx = fadd reassoc nsz arcp contract afn <2 x float> %i.apw, %i.age ; 4 uses
  %i.apy = fmul reassoc nsz arcp contract afn <2 x float> %i.age, %i.agq
  %i.apz = fadd reassoc nsz arcp contract afn <2 x float> %i.apy, %i.agf ; 4 uses
  %i.aqa = extractelement <2 x float> %i.apz, i64 0
  store float %i.aqa, ptr %i.nz, align 16, !tbaa !20, !noalias !196
  %i.aqb = extractelement <2 x float> %i.apx, i64 0
  store float %i.aqb, ptr %i.ob, align 16, !tbaa !20, !noalias !196
  %i.aqc = fadd reassoc nsz arcp contract afn <2 x float> %i.apx, %i.apz
  %i.aqd = fmul reassoc nsz arcp contract afn <2 x float> %i.aqc, splat (float -2.000000e+00)
  %i.aqe = extractelement <2 x float> %i.apz, i64 1
  store float %i.aqe, ptr %i.oh, align 4, !tbaa !20, !noalias !196
  %i.aqf = extractelement <2 x float> %i.apx, i64 1
  store float %i.aqf, ptr %i.oi, align 4, !tbaa !20, !noalias !196
  store <2 x float> %i.aqd, ptr %i.oc, align 16, !tbaa !20, !noalias !196
  store <2 x float> %i.apx, ptr %i.od, align 16, !tbaa !20, !noalias !196
  store <2 x float> %i.apv, ptr %i.oe, align 16, !tbaa !20, !noalias !196
  store <2 x float> %i.apz, ptr %i.of, align 16, !tbaa !20, !noalias !196
  store <2 x float> %i.apu, ptr %i.og, align 16, !tbaa !20, !noalias !196
  %i.aqg = fmul reassoc nsz arcp contract afn float %i.ahm, 5.000000e-01
  %i.aqh = fadd reassoc nsz arcp contract afn float %i.aqg, -5.000000e-01
  %i.aqi = fmul reassoc nsz arcp contract afn float %i.aqh, %i.aec ; 3 uses
  %i.aqj = fneg reassoc nsz arcp contract afn float %i.aqi ; 2 uses
  %i.aqk = fadd reassoc nsz arcp contract afn float %i.apl, %i.apn
  %i.aql = fmul reassoc nsz arcp contract afn float %i.aqk, -2.000000e+00
  store float %i.aqi, ptr %i.oj, align 8, !tbaa !20, !noalias !196
  store float %i.apn, ptr %i.ok, align 8, !tbaa !20, !noalias !196
  store float %i.aqj, ptr %i.ol, align 8, !tbaa !20, !noalias !196
  store float %i.apl, ptr %i.om, align 8, !tbaa !20, !noalias !196
  store float %i.aql, ptr %i.on, align 8, !tbaa !20, !noalias !196
  store float %i.apl, ptr %i.oo, align 8, !tbaa !20, !noalias !196
  store float %i.aqj, ptr %i.op, align 8, !tbaa !20, !noalias !196
  store float %i.apn, ptr %i.oq, align 8, !tbaa !20, !noalias !196
  store float %i.aqi, ptr %i.or, align 8, !tbaa !20, !noalias !196
  %i.aqm = fmul reassoc nsz arcp contract afn float %i.ahn, 5.000000e-01
  %i.aqn = fadd reassoc nsz arcp contract afn float %i.aqm, -5.000000e-01
  %i.aqo = fmul reassoc nsz arcp contract afn float %i.aqn, %i.ahb ; 2 uses
  %i.aqp = fneg reassoc nsz arcp contract afn float %i.aqo
  %i.aqq = fadd reassoc nsz arcp contract afn float %i.app, %i.apr
  %i.aqr = fmul reassoc nsz arcp contract afn float %i.aqq, -2.000000e+00
  br label %compute_kernel.exit240.i.i

bb.ax:                                            ; preds = %compute_kernel.exit234.i.i
  %i.aqs = fmul reassoc nsz arcp contract afn float %i.aea, %i.ahm
  %i.aqt = fadd reassoc nsz arcp contract afn float %i.aqs, %i.aeb ; 3 uses
  %i.aqu = fmul reassoc nsz arcp contract afn float %i.aeb, %i.ahm
  %i.aqv = fadd reassoc nsz arcp contract afn float %i.aqu, %i.aea ; 3 uses
  %i.aqw = fmul reassoc nsz arcp contract afn float %i.agz, %i.ahn
  %i.aqx = fadd reassoc nsz arcp contract afn float %i.aqw, %i.aha ; 2 uses
  %i.aqy = fmul reassoc nsz arcp contract afn float %i.aha, %i.ahn
  %i.aqz = fadd reassoc nsz arcp contract afn float %i.aqy, %i.agz ; 2 uses
  %i.ara = fmul reassoc nsz arcp contract afn <2 x float> %i.agq, splat (float 5.000000e-01)
  %i.arb = fsub reassoc nsz arcp contract afn <2 x float> splat (float 5.000000e-01), %i.ara
  %i.arc = fmul reassoc nsz arcp contract afn <2 x float> %i.arb, %i.agg ; 3 uses
  %i.ard = fneg reassoc nsz arcp contract afn <2 x float> %i.arc ; 2 uses
  store <2 x float> %i.arc, ptr %i.f, align 16, !tbaa !20, !noalias !196
  store <2 x float> %i.ard, ptr %i.oa, align 16, !tbaa !20, !noalias !196
  %i.are = fmul reassoc nsz arcp contract afn <2 x float> %i.age, %i.agq
  %i.arf = fadd reassoc nsz arcp contract afn <2 x float> %i.are, %i.agf ; 4 uses
  %i.arg = fmul reassoc nsz arcp contract afn <2 x float> %i.agf, %i.agq
  %i.arh = fadd reassoc nsz arcp contract afn <2 x float> %i.arg, %i.age ; 4 uses
  %i.ari = extractelement <2 x float> %i.arh, i64 0
  store float %i.ari, ptr %i.nz, align 16, !tbaa !20, !noalias !196
  %i.arj = extractelement <2 x float> %i.arf, i64 0
  store float %i.arj, ptr %i.ob, align 16, !tbaa !20, !noalias !196
  %i.ark = fadd reassoc nsz arcp contract afn <2 x float> %i.arh, %i.arf
  %i.arl = fmul reassoc nsz arcp contract afn <2 x float> %i.ark, splat (float -2.000000e+00)
  %i.arm = extractelement <2 x float> %i.arh, i64 1
  store float %i.arm, ptr %i.oh, align 4, !tbaa !20, !noalias !196
  %i.arn = extractelement <2 x float> %i.arf, i64 1
  store float %i.arn, ptr %i.oi, align 4, !tbaa !20, !noalias !196
  store <2 x float> %i.arl, ptr %i.oc, align 16, !tbaa !20, !noalias !196
  store <2 x float> %i.arf, ptr %i.od, align 16, !tbaa !20, !noalias !196
  store <2 x float> %i.ard, ptr %i.oe, align 16, !tbaa !20, !noalias !196
  store <2 x float> %i.arh, ptr %i.of, align 16, !tbaa !20, !noalias !196
  store <2 x float> %i.arc, ptr %i.og, align 16, !tbaa !20, !noalias !196
  %i.aro = fmul reassoc nsz arcp contract afn float %i.ahm, 5.000000e-01
  %i.arp = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.aro
  %i.arq = fmul reassoc nsz arcp contract afn float %i.arp, %i.aec ; 3 uses
  %i.arr = fneg reassoc nsz arcp contract afn float %i.arq ; 2 uses
  %i.ars = fadd reassoc nsz arcp contract afn float %i.aqv, %i.aqt
  %i.art = fmul reassoc nsz arcp contract afn float %i.ars, -2.000000e+00
  store float %i.arq, ptr %i.oj, align 8, !tbaa !20, !noalias !196
  store float %i.aqv, ptr %i.ok, align 8, !tbaa !20, !noalias !196
  store float %i.arr, ptr %i.ol, align 8, !tbaa !20, !noalias !196
  store float %i.aqt, ptr %i.om, align 8, !tbaa !20, !noalias !196
  store float %i.art, ptr %i.on, align 8, !tbaa !20, !noalias !196
  store float %i.aqt, ptr %i.oo, align 8, !tbaa !20, !noalias !196
  store float %i.arr, ptr %i.op, align 8, !tbaa !20, !noalias !196
  store float %i.aqv, ptr %i.oq, align 8, !tbaa !20, !noalias !196
  store float %i.arq, ptr %i.or, align 8, !tbaa !20, !noalias !196
  %i.aru = fmul reassoc nsz arcp contract afn float %i.ahn, 5.000000e-01
  %i.arv = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.aru
  %i.arw = fmul reassoc nsz arcp contract afn float %i.arv, %i.ahb ; 2 uses
  %i.arx = fneg reassoc nsz arcp contract afn float %i.arw
  %i.ary = fadd reassoc nsz arcp contract afn float %i.aqz, %i.aqx
  %i.arz = fmul reassoc nsz arcp contract afn float %i.ary, -2.000000e+00
  br label %compute_kernel.exit240.i.i

compute_kernel.exit240.i.i:                       ; preds = %bb.ax, %bb.aw, %bb.av
  %.sink74.i235.i.i = phi float [ %i.arw, %bb.ax ], [ %i.aqo, %bb.aw ], [ 2.500000e-01, %bb.av ] ; 2 uses
  %.sink72.i236.i.i = phi float [ %i.aqz, %bb.ax ], [ %i.apr, %bb.aw ], [ 5.000000e-01, %bb.av ] ; 2 uses
  %.sink70.i237.i.i = phi float [ %i.arx, %bb.ax ], [ %i.aqp, %bb.aw ], [ 2.500000e-01, %bb.av ] ; 2 uses
  %.sink68.i238.i.i = phi float [ %i.aqx, %bb.ax ], [ %i.app, %bb.aw ], [ 5.000000e-01, %bb.av ] ; 2 uses
  %.sink66.i239.i.i = phi float [ %i.arz, %bb.ax ], [ %i.aqr, %bb.aw ], [ -3.000000e+00, %bb.av ]
  store float %.sink74.i235.i.i, ptr %i.os, align 4, !tbaa !20, !noalias !196
  store float %.sink72.i236.i.i, ptr %i.ot, align 4, !tbaa !20, !noalias !196
  store float %.sink70.i237.i.i, ptr %i.ou, align 4, !tbaa !20, !noalias !196
  store float %.sink68.i238.i.i, ptr %i.ov, align 4, !tbaa !20, !noalias !196
  store float %.sink66.i239.i.i, ptr %i.ow, align 4, !tbaa !20, !noalias !196
  store float %.sink68.i238.i.i, ptr %i.ox, align 4, !tbaa !20, !noalias !196
  store float %.sink70.i237.i.i, ptr %i.oy, align 4, !tbaa !20, !noalias !196
  store float %.sink72.i236.i.i, ptr %i.oz, align 4, !tbaa !20, !noalias !196
  store float %.sink74.i235.i.i, ptr %i.pa, align 4, !tbaa !20, !noalias !196
  %wide.masked.gather261 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep255, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !20, !noalias !196
  %wide.masked.gather262 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep256, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !20, !noalias !196 ; 2 uses
  %i.asa = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather262, %wide.masked.gather261
  %wide.masked.gather263 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep257, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !20, !noalias !196
  %i.asb = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather263, %wide.masked.gather262
  %wide.masked.gather264 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep258, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !20, !noalias !196
  %wide.masked.gather265 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep259, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !20, !noalias !196 ; 4 uses
  %i.asc = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather265, %wide.masked.gather264
  %wide.masked.gather266 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep260, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !20, !noalias !196
  %i.asd = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather266, %wide.masked.gather265
  %i.ase = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather265, %wide.masked.gather265
  %wide.masked.gather268 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep267, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !20, !noalias !196
  %wide.masked.gather270 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep269, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !20, !noalias !196 ; 2 uses
  %i.asf = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather270, %wide.masked.gather268
  %wide.masked.gather272 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep271, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !20, !noalias !196
  %i.asg = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather272, %wide.masked.gather270
  %wide.masked.gather274 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep273, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !20, !noalias !196
  %wide.masked.gather276 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep275, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !20, !noalias !196 ; 4 uses
  %i.ash = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather276, %wide.masked.gather274
  %wide.masked.gather278 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep277, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !20, !noalias !196
  %i.asi = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather278, %wide.masked.gather276
  %i.asj = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather276, %wide.masked.gather276
  %wide.masked.gather280 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep279, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !20, !noalias !196
  %wide.masked.gather282 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep281, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !20, !noalias !196 ; 2 uses
  %i.ask = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather282, %wide.masked.gather280
  %wide.masked.gather284 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep283, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !20, !noalias !196
  %i.asl = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather284, %wide.masked.gather282
  %wide.masked.gather286 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep285, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !20, !noalias !196
  %wide.masked.gather288 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep287, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !20, !noalias !196 ; 4 uses
  %i.asm = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather288, %wide.masked.gather286
  %wide.masked.gather290 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep289, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !20, !noalias !196
  %i.asn = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather290, %wide.masked.gather288
  %i.aso = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather288, %wide.masked.gather288
  %wide.masked.gather292 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep291, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !20, !noalias !196
  %wide.masked.gather294 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep293, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !20, !noalias !196 ; 2 uses
  %i.asp = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather294, %wide.masked.gather292
  %wide.masked.gather296 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep295, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !20, !noalias !196
  %i.asq = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather296, %wide.masked.gather294
  %wide.masked.gather298 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep297, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !20, !noalias !196
  %wide.masked.gather300 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep299, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !20, !noalias !196 ; 4 uses
  %i.asr = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather300, %wide.masked.gather298
  %wide.masked.gather302 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep301, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !20, !noalias !196
  %i.ass = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather302, %wide.masked.gather300
  %i.ast = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather300, %wide.masked.gather300
  %wide.masked.gather261.1 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep255.1, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !20, !noalias !196
  %wide.masked.gather262.1 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep256.1, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !20, !noalias !196 ; 2 uses
end_hunk_1
