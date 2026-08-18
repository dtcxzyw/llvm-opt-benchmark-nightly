inline.NumInlined: 802
inline.NumDeleted: 265
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN11LocalPlayer15updateSneakNodeEP3MapRKN4core8vector3dIfEES6_:bb.a
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d), !inline_history !83 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.j = load i8, ptr %i.i, align 4, !tbaa !84, !range !85, !noundef !86 ; 2 uses
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 644
  %i.m = load float, ptr %i.l, align 4, !tbaa !87
  %i.n = fadd nsz float %i.m, f0xBE4CCCCC
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.078 = phi nsz float [ %i.n, %bb.b ], [ f0x3E4CCCCC, %bb.a ]
  %i.o = load float, ptr %2, align 4, !tbaa !88
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.q = load float, ptr %i.p, align 4, !tbaa !89
  %i.r = fsub nsz float %i.q, %.078
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !90 ; 2 uses
  %i.u = fcmp nsz ogt float %i.t, 0.000000e+00
  %i.v = select nsz i1 %i.u, float 5.000000e+00, float -5.000000e+00
  %i.w = insertelement <2 x float> poison, float %i.o, i64 0
  %i.x = insertelement <2 x float> %i.w, float %i.r, i64 1 ; 2 uses
  %i.y = fcmp nsz ogt <2 x float> %i.x, zeroinitializer
  %i.z = select <2 x i1> %i.y, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.aa = fadd nsz <2 x float> %i.x, %i.z
  %i.ab = fdiv nsz <2 x float> %i.aa, splat (float 1.000000e+01)
  %i.ac = fptosi <2 x float> %i.ab to <2 x i16>   ; 3 uses
  %i.ad = fadd nsz float %i.t, %i.v
  %i.ae = fdiv nsz float %i.ad, 1.000000e+01
  %i.af = fptosi float %i.ae to i16               ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 622 ; 5 uses
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !70
  %i.ai = extractelement <2 x i16> %i.ac, i64 0   ; 2 uses
  %i.aj = icmp eq i16 %i.ah, %i.ai
  br i1 %i.aj, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.al = load i16, ptr %i.ak, align 8, !tbaa !71
  %i.am = extractelement <2 x i16> %i.ac, i64 1   ; 2 uses
  %i.an = icmp eq i16 %i.al, %i.am
  br i1 %i.an, label %_ZNK4core8vector3dIsEneERKS1_.exit, label %.thread

_ZNK4core8vector3dIsEneERKS1_.exit:               ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 626
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !72
  %.not218 = icmp eq i16 %i.ap, %i.af
  br i1 %.not218, label %bb.e, label %.thread

bb.e:                                             ; preds = %_ZNK4core8vector3dIsEneERKS1_.exit
  %.sroa.9209.0.insert.ext = zext i16 %i.af to i48
  %.sroa.9209.0.insert.shift = shl nuw i48 %.sroa.9209.0.insert.ext, 32
  %.sroa.7207.0.insert.ext = zext i16 %i.am to i48
  %.sroa.7207.0.insert.shift = shl nuw nsw i48 %.sroa.7207.0.insert.ext, 16
  %.sroa.7207.0.insert.insert = or disjoint i48 %.sroa.9209.0.insert.shift, %.sroa.7207.0.insert.shift
  %.sroa.0205.0.insert.ext = zext i16 %i.ai to i48
  %.sroa.0205.0.insert.insert = or disjoint i48 %.sroa.7207.0.insert.insert, %.sroa.0205.0.insert.ext
  %i.aq = call i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %1, i48 %.sroa.0205.0.insert.insert, ptr noundef nonnull %i.a) ; 2 uses
  store i32 %i.aq, ptr %4, align 4
  %i.ar = load i8, ptr %i.a, align 1, !tbaa !91, !range !85, !noundef !86
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.at = and i32 %i.aq, 65535
  %i.au = zext nneg i32 %i.at to i64              ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !92
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !95 ; 3 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = sdiv exact i64 %i.bb, 2080
  %i.bd = icmp ugt i64 %i.bc, %i.au
  br i1 %i.bd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw [2080 x i8], ptr %i.ay, i64 %i.au ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !19
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %bb.h, label %_ZNK14NodeDefManager3getERK7MapNode.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 260000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit

_ZNK14NodeDefManager3getERK7MapNode.exit:         ; preds = %bb.g, %bb.h
  %i.bj = phi ptr [ %i.bi, %bb.h ], [ %i.be, %bb.g ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 1412
  %i.bl = load i8, ptr %i.bk, align 4, !tbaa !96, !range !85, !noundef !86
  %i.bm = and i8 %i.bl, %i.j
  %or.cond.not = icmp eq i8 %i.bm, 0
  br i1 %or.cond.not, label %.thread, label %bb.bb

.thread:                                          ; preds = %bb.e, %_ZNK14NodeDefManager3getERK7MapNode.exit, %bb.c, %bb.d, %_ZNK4core8vector3dIsEneERKS1_.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 653 ; 2 uses
  store i8 0, ptr %i.bn, align 1, !tbaa !134
  %i.bo = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 277 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 724
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 626 ; 3 uses
  br label %.outer

.outer:                                           ; preds = %.thread214.thread, %.thread
  %.177224.ph = phi i1 [ true, %.thread214.thread ], [ false, %.thread ]
  %.082223.ph = phi float [ %i.en, %.thread214.thread ], [ +inf, %.thread ]
  %.086.idx222.ph = phi i64 [ %.086.add241, %.thread214.thread ], [ 0, %.thread ]
  br label %bb.j

bb.i:                                             ; preds = %.thread214
  br i1 %.177224.ph, label %.thread244, label %bb.bb

bb.j:                                             ; preds = %.outer, %.thread214
  %.086.idx222 = phi i64 [ %.086.add, %.thread214 ], [ %.086.idx222.ph, %.outer ] ; 3 uses
  %.086.ptr = getelementptr inbounds nuw i8, ptr @_ZZN11LocalPlayer15updateSneakNodeEP3MapRKN4core8vector3dIfEES6_E11dir9_center, i64 %.086.idx222 ; 2 uses
  %i.bw = load <2 x i16>, ptr %.086.ptr, align 2, !tbaa !135
  %i.bx = add <2 x i16> %i.bw, %i.ac              ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.086.ptr, i64 4
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !72
  %i.ca = add i16 %i.bz, %i.af                    ; 3 uses
  %.sroa.3.0.insert.ext.i105 = zext i16 %i.ca to i48
  %.sroa.3.0.insert.shift.i106 = shl nuw i48 %.sroa.3.0.insert.ext.i105, 32 ; 3 uses
  %i.cb = extractelement <2 x i16> %i.bx, i64 1   ; 2 uses
  %i.cc = extractelement <2 x i16> %i.bx, i64 0
  %.sroa.0.0.insert.ext.i110 = zext i16 %i.cc to i48 ; 2 uses
  %.v = shufflevector <2 x i16> %i.bx, <2 x i16> <i16 0, i16 poison>, <3 x i32> <i32 0, i32 1, i32 2>
  %i.cd = bitcast <3 x i16> %.v to i48
  %.sroa.0.0.insert.insert.i111 = or disjoint i48 %.sroa.3.0.insert.shift.i106, %i.cd
  %i.ce = call i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %1, i48 %.sroa.0.0.insert.insert.i111, ptr noundef nonnull %i.a) ; 2 uses
  store i32 %i.ce, ptr %4, align 4
  %i.cf = load i8, ptr %i.a, align 1, !tbaa !91, !range !85, !noundef !86
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.k, label %.thread214

bb.k:                                             ; preds = %bb.j
  %i.ch = and i32 %i.ce, 65535
  %i.ci = zext nneg i32 %i.ch to i64              ; 2 uses
  %i.cj = load ptr, ptr %i.bp, align 8, !tbaa !92
  %i.ck = load ptr, ptr %i.bo, align 8, !tbaa !95 ; 3 uses
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = sdiv exact i64 %i.cn, 2080
  %i.cp = icmp ugt i64 %i.co, %i.ci
  br i1 %i.cp, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cq = getelementptr inbounds nuw [2080 x i8], ptr %i.ck, i64 %i.ci ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !19
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %bb.m, label %_ZNK14NodeDefManager3getERK7MapNode.exit112

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ck, i64 260000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit112

_ZNK14NodeDefManager3getERK7MapNode.exit112:      ; preds = %bb.l, %bb.m
  %i.cv = phi ptr [ %i.cu, %bb.m ], [ %i.cq, %bb.l ]
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 1412
  %i.cx = load i8, ptr %i.cw, align 4, !tbaa !96, !range !85, !noundef !86
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %bb.n, label %.thread214

bb.n:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit112
  %i.cz = insertelement <2 x i16> %i.bx, i16 %i.ca, i64 1
  %i.da = sitofp <2 x i16> %i.cz to <2 x float>
  %i.db = fmul nnan nsz <2 x float> %i.da, splat (float 1.000000e+01) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  invoke void @_ZNK7MapNode17getCollisionBoxesEPK14NodeDefManagerPSt6vectorIN4core8aabbox3dIfEESaIS6_EEh(ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull %i.h, ptr noundef nonnull %5, i8 noundef zeroext 0)
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %bb.n
  %.val103 = load ptr, ptr %5, align 8, !tbaa !136 ; 9 uses
  %.val104 = load ptr, ptr %i.bq, align 8, !tbaa !136 ; 3 uses
  %i.dc = icmp eq ptr %.val103, %.val104
  br i1 %i.dc, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.sroa.0186.0.copyload = load float, ptr %.val103, align 4, !tbaa !34
  %.sroa.13.0..val103.sroa_idx = getelementptr inbounds nuw i8, ptr %.val103, i64 8
  %i.dd = load <2 x float>, ptr %.sroa.13.0..val103.sroa_idx, align 4, !tbaa !34
  %.sroa.26.12..sroa_idx = getelementptr inbounds nuw i8, ptr %.val103, i64 20
  %.sroa.26.12.copyload = load float, ptr %.sroa.26.12..sroa_idx, align 4, !tbaa !34
  %.sroa.01.07.i = getelementptr inbounds nuw i8, ptr %.val103, i64 24 ; 2 uses
  %.not8.i = icmp eq ptr %.sroa.01.07.i, %.val104
  %7 = shufflevector <2 x float> %i.dd, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.de = insertelement <4 x float> %7, float %.sroa.0186.0.copyload, i64 0
  %i.df = insertelement <4 x float> %i.de, float %.sroa.26.12.copyload, i64 3 ; 3 uses
  br i1 %.not8.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.p, %.lr.ph.i
  %.sroa.01.010.i = phi ptr [ %.sroa.01.0.i, %.lr.ph.i ], [ %.sroa.01.07.i, %bb.p ] ; 3 uses
  %.0.val.pn9.i = phi ptr [ %.sroa.01.010.i, %.lr.ph.i ], [ %.val103, %bb.p ] ; 2 uses
  %i.dg = phi <4 x float> [ %i.dw, %.lr.ph.i ], [ %i.df, %bb.p ] ; 3 uses
  %i.dh = phi <4 x float> [ %i.dv, %.lr.ph.i ], [ %i.df, %bb.p ]
  %i.di = getelementptr inbounds nuw i8, ptr %.0.val.pn9.i, i64 44
  %i.dj = load float, ptr %i.di, align 4, !tbaa !90, !noalias !137
  %i.dk = load float, ptr %.sroa.01.010.i, align 4, !tbaa !88, !noalias !137
  %i.dl = getelementptr inbounds nuw i8, ptr %.0.val.pn9.i, i64 32
  %i.dm = load <2 x float>, ptr %i.dl, align 4, !tbaa !34, !noalias !137
  %8 = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dn = insertelement <2 x float> %8, float %i.dj, i64 1
  %i.do = shufflevector <2 x float> %i.dn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 4 uses
  %9 = fcmp nsz olt <4 x float> %i.do, %i.dg
  %10 = fcmp nsz ogt <4 x float> %i.do, %i.dg
  %i.dp = shufflevector <4 x i1> %9, <4 x i1> %10, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.dq = select <4 x i1> %i.dp, <4 x float> %i.do, <4 x float> %i.dh
  %i.dr = select <4 x i1> %i.dp, <4 x float> %i.do, <4 x float> %i.dg ; 3 uses
  %i.ds = insertelement <2 x float> %8, float %i.dk, i64 0
  %i.dt = shufflevector <2 x float> %i.ds, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 4 uses
  %11 = fcmp nsz olt <4 x float> %i.dt, %i.dr
  %12 = fcmp nsz ogt <4 x float> %i.dt, %i.dr
  %i.du = shufflevector <4 x i1> %11, <4 x i1> %12, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.dv = select <4 x i1> %i.du, <4 x float> %i.dt, <4 x float> %i.dq ; 2 uses
  %i.dw = select <4 x i1> %i.du, <4 x float> %i.dt, <4 x float> %i.dr
  %.sroa.01.0.i = getelementptr inbounds nuw i8, ptr %.sroa.01.010.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.01.0.i, %.val104
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !140

.loopexit:                                        ; preds = %.lr.ph.i, %bb.o, %bb.p
  %i.dx = phi <4 x float> [ zeroinitializer, %bb.o ], [ %i.df, %bb.p ], [ %i.dv, %.lr.ph.i ] ; 2 uses
  %i.dy = shufflevector <4 x float> %i.dx, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.dz = shufflevector <4 x float> %i.dx, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.ea = fadd nsz <2 x float> %i.dy, %i.dz
  %i.eb = fmul nsz <2 x float> %i.ea, splat (float 5.000000e-01) ; 2 uses
  %foldExtExtBinop = fadd nsz <2 x float> %i.db, %i.eb
  %i.ec = extractelement <2 x float> %foldExtExtBinop, i64 0
  %foldExtExtBinop288 = fadd nsz <2 x float> %i.db, %i.eb
  %i.ed = extractelement <2 x float> %foldExtExtBinop288, i64 1
  %.not.i.i.i = icmp eq ptr %.val103, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %.loopexit
  %i.ee = load ptr, ptr %i.br, align 8, !tbaa !142
  %i.ef = ptrtoint ptr %i.ee to i64
  %i.eg = ptrtoint ptr %.val103 to i64
  %i.eh = sub i64 %i.ef, %i.eg
  call void @_ZdlPvm(ptr noundef nonnull %.val103, i64 noundef %i.eh) #25
  br label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EED2Ev.exit: ; preds = %.loopexit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.ei = load float, ptr %2, align 4, !tbaa !88
  %i.ej = fsub nsz float %i.ei, %i.ec             ; 3 uses
  %i.ek = load float, ptr %i.s, align 4, !tbaa !90
  %i.el = fsub nsz float %i.ek, %i.ed             ; 3 uses
  %i.em = fmul nsz float %i.el, %i.el
  %i.en = call nsz noundef float @llvm.fmuladd.f32(float %i.ej, float %i.ej, float %i.em) ; 2 uses
  %i.eo = fcmp nsz ogt float %i.en, %.082223.ph
  br i1 %i.eo, label %.thread214, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EED2Ev.exit
  %i.ep = call nsz noundef float @llvm.fabs.f32(float %i.ej)
  %i.eq = load float, ptr %3, align 4, !tbaa !88
  %i.er = fadd nsz float %i.eq, 5.500000e+00
  %i.es = fcmp nsz ogt float %i.ep, %i.er
  br i1 %i.es, label %.thread214, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.et = call nsz noundef float @llvm.fabs.f32(float %i.el)
  %i.eu = load float, ptr %i.bs, align 4, !tbaa !90
  %i.ev = fadd nsz float %i.eu, 5.500000e+00
  %i.ew = fcmp nsz ogt float %i.et, %i.ev
  br i1 %i.ew, label %.thread214, label %bb.v

bb.t:                                             ; preds = %bb.n
  %i.ex = landingpad { ptr, i32 }
          cleanup
  %i.ey = load ptr, ptr %5, align 8, !tbaa !143   ; 3 uses
  %.not.i.i.i117 = icmp eq ptr %i.ey, null
  br i1 %.not.i.i.i117, label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EED2Ev.exit118, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ez = load ptr, ptr %i.br, align 8, !tbaa !142
  %i.fa = ptrtoint ptr %i.ez to i64
  %i.fb = ptrtoint ptr %i.ey to i64
  %i.fc = sub i64 %i.fa, %i.fb
  call void @_ZdlPvm(ptr noundef nonnull %i.ey, i64 noundef %i.fc) #25
  br label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EED2Ev.exit118

_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EED2Ev.exit118: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.ba

bb.v:                                             ; preds = %bb.s
  %i.fd = load i8, ptr %i.bt, align 1, !tbaa !144, !range !85, !noundef !86
  %i.fe = trunc nuw i8 %i.fd to i1
  br i1 %i.fe, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ff = load float, ptr %i.bu, align 8, !tbaa !145
  %i.fg = load float, ptr %i.bv, align 4, !tbaa !146
  %i.fh = fsub nsz float %i.ff, %i.fg
  %i.fi = fdiv nsz float %i.fh, 1.000000e+01
  %i.fj = call nsz float @llvm.ceil.f32(float %i.fi)
  %i.fk = fptoui float %i.fj to i16               ; 2 uses
  %.not101220 = icmp eq i16 %i.fk, 0
  br i1 %.not101220, label %.thread214.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.w
  %invariant.op = or disjoint i48 %.sroa.0.0.insert.ext.i110, %.sroa.3.0.insert.shift.i106
  br label %.lr.ph

bb.x:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit126
  %i.fl = add i16 %.095221, 1                     ; 2 uses
  %.not101 = icmp ugt i16 %i.fl, %i.fk
  br i1 %.not101, label %.thread214.thread, label %.lr.ph, !llvm.loop !147

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.x
  %.095221 = phi i16 [ %i.fl, %bb.x ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %i.fm = add i16 %.095221, %i.cb
  %.sroa.2.0.insert.ext.i121 = zext i16 %i.fm to i48
  %.sroa.2.0.insert.shift.i122 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i121, 16
  %.sroa.0.0.insert.insert.i125.reass.reass.reass = or disjoint i48 %.sroa.2.0.insert.shift.i122, %invariant.op
  %i.fn = call i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %1, i48 %.sroa.0.0.insert.insert.i125.reass.reass.reass, ptr noundef nonnull %i.a) ; 2 uses
  store i32 %i.fn, ptr %4, align 4
  %i.fo = load i8, ptr %i.a, align 1, !tbaa !91, !range !85, !noundef !86
  %i.fp = trunc nuw i8 %i.fo to i1
  br i1 %i.fp, label %bb.y, label %.thread214

bb.y:                                             ; preds = %.lr.ph
  %i.fq = and i32 %i.fn, 65535
  %i.fr = zext nneg i32 %i.fq to i64              ; 2 uses
  %i.fs = load ptr, ptr %i.bp, align 8, !tbaa !92
  %i.ft = load ptr, ptr %i.bo, align 8, !tbaa !95 ; 3 uses
  %i.fu = ptrtoint ptr %i.fs to i64
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = sub i64 %i.fu, %i.fv
  %i.fx = sdiv exact i64 %i.fw, 2080
  %i.fy = icmp ugt i64 %i.fx, %i.fr
  br i1 %i.fy, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.fz = getelementptr inbounds nuw [2080 x i8], ptr %i.ft, i64 %i.fr ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !19
  %i.gc = icmp eq i64 %i.gb, 0
  br i1 %i.gc, label %bb.aa, label %_ZNK14NodeDefManager3getERK7MapNode.exit126

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ft, i64 260000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit126

_ZNK14NodeDefManager3getERK7MapNode.exit126:      ; preds = %bb.z, %bb.aa
  %i.ge = phi ptr [ %i.gd, %bb.aa ], [ %i.fz, %bb.z ]
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 1412
  %i.gg = load i8, ptr %i.gf, align 4, !tbaa !96, !range !85, !noundef !86
  %i.gh = trunc nuw i8 %i.gg to i1
  br i1 %i.gh, label %.thread214, label %bb.x

bb.ab:                                            ; preds = %bb.v
  %i.gi = add i16 %i.cb, 1
  %.sroa.2.0.insert.ext.i129 = zext i16 %i.gi to i48
  %.sroa.2.0.insert.shift.i130 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i129, 16
  %.sroa.2.0.insert.insert.i131 = or disjoint i48 %.sroa.3.0.insert.shift.i106, %.sroa.2.0.insert.shift.i130
  %.sroa.0.0.insert.insert.i133 = or disjoint i48 %.sroa.2.0.insert.insert.i131, %.sroa.0.0.insert.ext.i110
  %i.gj = call i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %1, i48 %.sroa.0.0.insert.insert.i133, ptr noundef nonnull %i.a) ; 2 uses
  store i32 %i.gj, ptr %4, align 4
  %i.gk = load i8, ptr %i.a, align 1, !tbaa !91, !range !85, !noundef !86
  %i.gl = trunc nuw i8 %i.gk to i1
  br i1 %i.gl, label %bb.ac, label %.thread214

bb.ac:                                            ; preds = %bb.ab
  %i.gm = and i32 %i.gj, 65535
  %i.gn = zext nneg i32 %i.gm to i64              ; 2 uses
  %i.go = load ptr, ptr %i.bp, align 8, !tbaa !92
  %i.gp = load ptr, ptr %i.bo, align 8, !tbaa !95 ; 3 uses
  %i.gq = ptrtoint ptr %i.go to i64
  %i.gr = ptrtoint ptr %i.gp to i64
  %i.gs = sub i64 %i.gq, %i.gr
  %i.gt = sdiv exact i64 %i.gs, 2080
  %i.gu = icmp ugt i64 %i.gt, %i.gn
  br i1 %i.gu, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.gv = getelementptr inbounds nuw [2080 x i8], ptr %i.gp, i64 %i.gn ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !19
  %i.gy = icmp eq i64 %i.gx, 0
  br i1 %i.gy, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gp, i64 260000
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.ha = phi ptr [ %i.gz, %bb.ae ], [ %i.gv, %bb.ad ]
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 1412
  %i.hc = load i8, ptr %i.hb, align 4, !tbaa !96, !range !85, !noundef !86
  %i.hd = trunc nuw i8 %i.hc to i1
  br i1 %i.hd, label %.thread214, label %.thread214.thread

.thread214:                                       ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit126, %.lr.ph, %bb.ab, %bb.s, %bb.r, %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EED2Ev.exit, %bb.af, %bb.j, %_ZNK14NodeDefManager3getERK7MapNode.exit112
  %.086.add = add nuw nsw i64 %.086.idx222, 6     ; 2 uses
  %.not = icmp eq i64 %.086.add, 54
  br i1 %.not, label %bb.i, label %bb.j

.thread214.thread:                                ; preds = %bb.af, %bb.w, %bb.x
  store <2 x i16> %i.bx, ptr %i.ag, align 2, !tbaa !135
  store i16 %i.ca, ptr %.sroa.10.0..sroa_idx, align 2, !tbaa !135
  %.086.add241 = add nuw nsw i64 %.086.idx222, 6  ; 2 uses
  %.not242 = icmp eq i64 %.086.add241, 54
  br i1 %.not242, label %.thread244, label %.outer

.thread244:                                       ; preds = %.thread214.thread, %bb.i
  %.sroa.06.0.copyload = load i48, ptr %i.ag, align 2
  %i.he = call i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %1, i48 %.sroa.06.0.copyload, ptr noundef null)
  store i32 %i.he, ptr %4, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZNK7MapNode17getCollisionBoxesEPK14NodeDefManagerPSt6vectorIN4core8aabbox3dIfEESaIS6_EEh(ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef %i.h, ptr noundef nonnull %6, i8 noundef zeroext 0)
          to label %bb.ag unwind label %bb.at

bb.ag:                                            ; preds = %.thread244
  %.val = load ptr, ptr %6, align 8, !tbaa !136   ; 5 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.val102 = load ptr, ptr %i.hf, align 8, !tbaa !136 ; 3 uses
  %i.hg = icmp eq ptr %.val, %.val102
  br i1 %i.hg, label %_ZL18getNodeBoundingBoxRKSt6vectorIN4core8aabbox3dIfEESaIS2_EE.exit150, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hh = load <4 x float>, ptr %.val, align 4, !tbaa !34 ; 3 uses
  %.sroa.19.12..sroa_idx = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.hi = load <2 x float>, ptr %.sroa.19.12..sroa_idx, align 4, !tbaa !34 ; 3 uses
  %.sroa.01.07.i135 = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 2 uses
  %.not8.i136 = icmp eq ptr %.sroa.01.07.i135, %.val102
  br i1 %.not8.i136, label %_ZL18getNodeBoundingBoxRKSt6vectorIN4core8aabbox3dIfEESaIS2_EE.exit150, label %.lr.ph.i137

.lr.ph.i137:                                      ; preds = %bb.ah, %.lr.ph.i137
end_hunk_0
begin_hunk_1_@_ZN11LocalPlayer8old_moveEfP11EnvironmentPSt6vectorI13CollisionInfoSaIS3_EE:bb.a
  %i.oc = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.f, i48 %.sroa.0109.0.copyload, ptr noundef null)
          to label %bb.ay unwind label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  %i.od = and i32 %i.oc, 65535
  %i.oe = zext nneg i32 %i.od to i64              ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.og = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !92
  %i.oi = load ptr, ptr %i.of, align 8, !tbaa !95 ; 4 uses
  %i.oj = ptrtoint ptr %i.oh to i64
  %i.ok = ptrtoint ptr %i.oi to i64
  %i.ol = sub i64 %i.oj, %i.ok
  %i.om = sdiv exact i64 %i.ol, 2080
  %i.on = icmp ugt i64 %i.om, %i.oe
  br i1 %i.on, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.oo = getelementptr inbounds nuw [2080 x i8], ptr %i.oi, i64 %i.oe ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 16
  %i.oq = load i64, ptr %i.op, align 8, !tbaa !19 ; 2 uses
  %i.or = icmp eq i64 %i.oq, 0
  br i1 %i.or, label %bb.ba, label %_ZNK14NodeDefManager3getERK7MapNode.exit

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.os = getelementptr inbounds nuw i8, ptr %i.oi, i64 260000
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.oi, i64 260016
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !19
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit

_ZNK14NodeDefManager3getERK7MapNode.exit:         ; preds = %bb.ba, %bb.az
  %i.ot = phi i64 [ %.pre, %bb.ba ], [ %i.oq, %bb.az ]
  %i.ou = phi ptr [ %i.os, %bb.ba ], [ %i.oo, %bb.az ]
  %i.ov = icmp eq i64 %i.ot, 3
  br i1 %i.ov, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %.critedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ou, i64 8
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !9  ; 2 uses
  %i.oy = load i16, ptr %i.ox, align 1
  %i.oz = xor i16 %i.oy, 26977
  %i.pa = getelementptr i8, ptr %i.ox, i64 2
  %i.pb = load i8, ptr %i.pa, align 1
  %i.pc = zext i8 %i.pb to i16
  %i.pd = xor i16 %i.pc, 114
  %i.pe = or i16 %i.oz, %i.pd
  %i.pf = icmp ne i16 %i.pe, 0
  %i.pg = zext i1 %i.pf to i32
  %i.ph = icmp eq i32 %i.pg, 0
  br i1 %i.ph, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.critedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.pj = load i64, ptr %i.pi, align 8, !tbaa !19
  %i.pk = icmp eq i64 %i.pj, 3
  br i1 %i.pk, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit496.thread767.thread897

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !9  ; 2 uses
  %i.pn = load i16, ptr %i.pm, align 1
  %i.po = xor i16 %i.pn, 26977
  %i.pp = getelementptr i8, ptr %i.pm, i64 2
  %i.pq = load i8, ptr %i.pp, align 1
  %i.pr = zext i8 %i.pq to i16
  %i.ps = xor i16 %i.pr, 114
  %i.pt = or i16 %i.po, %i.ps
  %i.pu = icmp ne i16 %i.pt, 0
  %i.pv = zext i1 %i.pu to i32
  %.not772 = icmp eq i32 %i.pv, 0
  br i1 %.not772, label %.critedge, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit496.thread767.thread897

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit496.thread767.thread897: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 660
  store i8 0, ptr %i.pw, align 4, !tbaa !74
  store i8 0, ptr %i.ny, align 4, !tbaa !84
  br label %.critedge371

bb.bb:                                            ; preds = %bb.ax
  %i.px = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

.critedge:                                        ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.aw, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.py = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.f, i48 %.sroa.0.0.insert.insert.i493, ptr noundef null)
          to label %bb.bc unwind label %bb.bf

bb.bc:                                            ; preds = %.critedge
  %i.pz = and i32 %i.py, 65535
  %i.qa = zext nneg i32 %i.pz to i64              ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.qc = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !92
  %i.qe = load ptr, ptr %i.qb, align 8, !tbaa !95 ; 4 uses
  %i.qf = ptrtoint ptr %i.qd to i64
  %i.qg = ptrtoint ptr %i.qe to i64
  %i.qh = sub i64 %i.qf, %i.qg
  %i.qi = sdiv exact i64 %i.qh, 2080
  %i.qj = icmp ugt i64 %i.qi, %i.qa
  br i1 %i.qj, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.qk = getelementptr inbounds nuw [2080 x i8], ptr %i.qe, i64 %i.qa ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 16
  %i.qm = load i64, ptr %i.ql, align 8, !tbaa !19 ; 2 uses
  %i.qn = icmp eq i64 %i.qm, 0
  br i1 %i.qn, label %bb.be, label %_ZNK14NodeDefManager3getERK7MapNode.exit494

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qe, i64 260000
  %.phi.trans.insert831 = getelementptr inbounds nuw i8, ptr %i.qe, i64 260016
  %.pre832 = load i64, ptr %.phi.trans.insert831, align 8, !tbaa !19
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit494

_ZNK14NodeDefManager3getERK7MapNode.exit494:      ; preds = %bb.be, %bb.bd
  %i.qp = phi i64 [ %.pre832, %bb.be ], [ %i.qm, %bb.bd ]
  %i.qq = phi ptr [ %i.qo, %bb.be ], [ %i.qk, %bb.bd ]
  %i.qr = icmp eq i64 %i.qp, 3
  br i1 %i.qr, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit496, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit496.thread767.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit496: ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit494
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qq, i64 8
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !9  ; 2 uses
  %i.qu = load i16, ptr %i.qt, align 1
  %i.qv = xor i16 %i.qu, 26977
  %i.qw = getelementptr i8, ptr %i.qt, i64 2
  %i.qx = load i8, ptr %i.qw, align 1
  %i.qy = zext i8 %i.qx to i16
  %i.qz = xor i16 %i.qy, 114
  %i.ra = or i16 %i.qv, %i.qz
  %i.rb = icmp ne i16 %i.ra, 0
  %i.rc = zext i1 %i.rb to i32
  %.not773 = icmp eq i32 %i.rc, 0
  br i1 %.not773, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit496.thread767, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit496.thread767.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit496.thread767.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit496, %_ZNK14NodeDefManager3getERK7MapNode.exit494
  %i.rd = getelementptr inbounds nuw i8, ptr %0, i64 660
  store i8 1, ptr %i.rd, align 4, !tbaa !74
  br label %bb.bg

bb.bf:                                            ; preds = %.critedge
  %i.re = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit496.thread767: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit496
  %.phi.trans.insert833 = getelementptr inbounds nuw i8, ptr %0, i64 660
  %.pre834 = load i8, ptr %.phi.trans.insert833, align 4, !tbaa !74, !range !85
  %i.rf = trunc nuw i8 %.pre834 to i1
  br i1 %i.rf, label %bb.bg, label %.critedge371

bb.bg:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit496.thread767.thread, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit496.thread767
  %i.rg = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.rh = load i8, ptr %i.rg, align 4, !tbaa !211, !range !85, !noundef !86
  %i.ri = trunc nuw i8 %i.rh to i1
  br i1 %i.ri, label %bb.bh, label %.critedge371

bb.bh:                                            ; preds = %bb.bg
  store float 0.000000e+00, ptr %i.mo, align 8, !tbaa !73
  %i.rj = load float, ptr %4, align 16, !tbaa !88 ; 2 uses
  %i.rk = load float, ptr %i.fw, align 4, !tbaa !89
  %i.rl = fsub nsz float %i.rk, %.0313            ; 2 uses
  %i.rm = load float, ptr %.sroa.2252.0..sroa_idx, align 8, !tbaa !90 ; 2 uses
  %i.rn = fcmp nsz ogt float %i.rl, 0.000000e+00
  %i.ro = select nsz i1 %i.rn, float 5.000000e+00, float -5.000000e+00
  %i.rp = fadd nsz float %i.rl, %i.ro
  %i.rq = fdiv nsz float %i.rp, 1.000000e+01
  %i.rr = fptosi float %i.rq to i16               ; 4 uses
  %i.rs = insertelement <2 x float> poison, float %i.rj, i64 0
  %i.rt = insertelement <2 x float> %i.rs, float %i.rm, i64 1 ; 2 uses
  %i.ru = fcmp nsz ogt <2 x float> %i.rt, zeroinitializer
  %i.rv = select <2 x i1> %i.ru, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.rw = fadd nsz <2 x float> %i.rt, %i.rv
  %i.rx = fdiv nsz <2 x float> %i.rw, splat (float 1.000000e+01) ; 2 uses
  %i.ry = extractelement <2 x float> %i.rx, i64 0
  %i.rz = fptosi float %i.ry to i16
  %i.sa = extractelement <2 x float> %i.rx, i64 1
  %i.sb = fptosi float %i.sa to i16
  %i.sc = getelementptr inbounds nuw i8, ptr %0, i64 622 ; 3 uses
  %.sroa.0656.0.copyload = load i16, ptr %i.sc, align 2, !tbaa !135
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 2 uses
  %.sroa.6.0.copyload = load i16, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !135
  %.sroa.7660.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 626 ; 2 uses
  %.sroa.7660.0.copyload = load i16, ptr %.sroa.7660.0..sroa_idx, align 2, !tbaa !135
  %.sroa.8.0.insert.ext = zext i16 %i.rr to i48
  %.sroa.8.0.insert.shift = shl nuw nsw i48 %.sroa.8.0.insert.ext, 16
  %i.sd = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 3 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 3 uses
  %i.sf = add i16 %i.rr, 1
  %.sroa.2.0.insert.ext.i529 = zext i16 %i.sf to i48
  %.sroa.2.0.insert.shift.i530 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i529, 16
  %i.sg = getelementptr inbounds nuw i8, ptr %0, i64 277
  %i.sh = add i16 %i.rr, 2
  %.sroa.2.0.insert.ext.i537 = zext i16 %i.sh to i48
  %.sroa.2.0.insert.shift.i538 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i537, 16
  br label %.preheader

.preheader:                                       ; preds = %bb.bh, %bb.bj
  %.0314815 = phi float [ 1.000000e+06, %bb.bh ], [ %.2316, %bb.bj ]
  %.0317814 = phi i16 [ -1, %bb.bh ], [ %i.sp, %bb.bj ] ; 2 uses
  %.sroa.7660.0813 = phi i16 [ %.sroa.0656.0.copyload, %bb.bh ], [ %.sroa.7660.2, %bb.bj ]
  %.sroa.6.0812 = phi i16 [ %.sroa.6.0.copyload, %bb.bh ], [ %.sroa.6.2, %bb.bj ]
  %.sroa.0656.0811 = phi i16 [ %.sroa.7660.0.copyload, %bb.bh ], [ %.sroa.0656.2.a, %bb.bj ]
  %i.si = add i16 %.0317814, %i.rz                ; 3 uses
  %i.sj = sitofp nsz i16 %i.si to float
  %i.sk = fmul nnan nsz float %i.sj, 1.000000e+01
  %i.sl = fsub nsz float %i.rj, %i.sk             ; 3 uses
  %i.sm = call nsz noundef float @llvm.fabs.f32(float %i.sl) ; 2 uses
  %.sroa.0652.0.insert.ext = zext i16 %i.si to i48 ; 3 uses
  %invariant.op = or disjoint i48 %.sroa.8.0.insert.shift, %.sroa.0652.0.insert.ext
  %invariant.op809 = or disjoint i48 %.sroa.2.0.insert.shift.i530, %.sroa.0652.0.insert.ext
  %invariant.op810 = or disjoint i48 %.sroa.2.0.insert.shift.i538, %.sroa.0652.0.insert.ext
  br label %bb.bk

bb.bi:                                            ; preds = %bb.bj
  %i.sn = fcmp nsz olt float %.2316, 9.000000e+05 ; 2 uses
  %i.so = zext i1 %i.sn to i8
  store i16 %.sroa.7660.2, ptr %i.sc, align 2, !tbaa !135
  store i16 %.sroa.6.2, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !135
  store i16 %.sroa.0656.2.a, ptr %.sroa.7660.0..sroa_idx, align 2, !tbaa !135
  store i8 %i.so, ptr %i.ny, align 4, !tbaa !84
  br i1 %i.sn, label %bb.cg, label %.critedge371

bb.bj:                                            ; preds = %bb.cf
  %i.sp = add nsw i16 %.0317814, 1                ; 2 uses
  %exitcond830.not = icmp eq i16 %i.sp, 2
  br i1 %exitcond830.not, label %bb.bi, label %.preheader, !llvm.loop !251

bb.bk:                                            ; preds = %.preheader, %bb.cf
  %.1315808 = phi float [ %.0314815, %.preheader ], [ %.2316, %bb.cf ] ; 8 uses
  %.0318807 = phi i16 [ -1, %.preheader ], [ %i.vs, %bb.cf ] ; 2 uses
  %.sroa.7660.1806 = phi i16 [ %.sroa.7660.0813, %.preheader ], [ %.sroa.7660.2, %bb.cf ] ; 7 uses
  %.sroa.6.1805 = phi i16 [ %.sroa.6.0812, %.preheader ], [ %.sroa.6.2, %bb.cf ] ; 7 uses
  %.sroa.0656.1804 = phi i16 [ %.sroa.0656.0811, %.preheader ], [ %.sroa.0656.2.a, %bb.cf ] ; 7 uses
  %i.sq = add i16 %.0318807, %i.sb                ; 3 uses
  %i.sr = sitofp nsz i16 %i.sq to float
  %i.ss = fmul nnan nsz float %i.sr, 1.000000e+01
  %i.st = fsub nsz float %i.rm, %i.ss             ; 3 uses
  %i.su = fmul nsz float %i.st, %i.st
  %i.sv = call nsz float @llvm.fmuladd.f32(float %i.sl, float %i.sl, float %i.su)
  %i.sw = call nsz noundef float @llvm.sqrt.f32(float %i.sv) ; 2 uses
  %i.sx = call nsz noundef float @llvm.fabs.f32(float %i.st) ; 2 uses
  %i.sy = fcmp nsz ogt float %i.sm, %i.sx
  %i.sz = select nsz i1 %i.sy, float %i.sm, float %i.sx
  %i.ta = fcmp nsz ogt float %i.sw, %.1315808
  %i.tb = fcmp nsz ogt float %i.sz, 1.000000e+01
  %or.cond = or i1 %i.ta, %i.tb
  br i1 %or.cond, label %bb.cf, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %.sroa.10.0.insert.ext = zext i16 %i.sq to i48
  %.sroa.10.0.insert.shift = shl nuw i48 %.sroa.10.0.insert.ext, 32 ; 3 uses
  %.sroa.0652.0.insert.insert.reass = or disjoint i48 %.sroa.10.0.insert.shift, %invariant.op
  %i.tc = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.f, i48 %.sroa.0652.0.insert.insert.reass, ptr noundef nonnull %i.a)
          to label %bb.bm unwind label %bb.bq

bb.bm:                                            ; preds = %bb.bl
  %i.td = load i8, ptr %i.a, align 1, !tbaa !91, !range !85, !noundef !86
  %i.te = trunc nuw i8 %i.td to i1
  br i1 %i.te, label %bb.bn, label %bb.cf

bb.bn:                                            ; preds = %bb.bm
  %i.tf = and i32 %i.tc, 65535
  %i.tg = zext nneg i32 %i.tf to i64              ; 2 uses
  %i.th = load ptr, ptr %i.se, align 8, !tbaa !92
  %i.ti = load ptr, ptr %i.sd, align 8, !tbaa !95 ; 3 uses
  %i.tj = ptrtoint ptr %i.th to i64
  %i.tk = ptrtoint ptr %i.ti to i64
  %i.tl = sub i64 %i.tj, %i.tk
  %i.tm = sdiv exact i64 %i.tl, 2080
  %i.tn = icmp ugt i64 %i.tm, %i.tg
  br i1 %i.tn, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.to = getelementptr inbounds nuw [2080 x i8], ptr %i.ti, i64 %i.tg ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 16
  %i.tq = load i64, ptr %i.tp, align 8, !tbaa !19
  %i.tr = icmp eq i64 %i.tq, 0
  br i1 %i.tr, label %bb.bp, label %_ZNK14NodeDefManager3getERK7MapNode.exit526

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.ts = getelementptr inbounds nuw i8, ptr %i.ti, i64 260000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit526

_ZNK14NodeDefManager3getERK7MapNode.exit526:      ; preds = %bb.bp, %bb.bo
  %i.tt = phi ptr [ %i.ts, %bb.bp ], [ %i.to, %bb.bo ]
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 1412
  %i.tv = load i8, ptr %i.tu, align 4, !tbaa !96, !range !85, !noundef !86
  %i.tw = trunc nuw i8 %i.tv to i1
  br i1 %i.tw, label %bb.br, label %bb.cf

bb.bq:                                            ; preds = %bb.bl
  %i.tx = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.br:                                            ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit526
  %.sroa.0.0.insert.insert.i533.reass = or disjoint i48 %.sroa.10.0.insert.shift, %invariant.op809
  %i.ty = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.f, i48 %.sroa.0.0.insert.insert.i533.reass, ptr noundef nonnull %i.a)
          to label %bb.bs unwind label %bb.bw

bb.bs:                                            ; preds = %bb.br
  %i.tz = load i8, ptr %i.a, align 1, !tbaa !91, !range !85, !noundef !86
  %i.ua = trunc nuw i8 %i.tz to i1
  br i1 %i.ua, label %bb.bt, label %bb.cf

bb.bt:                                            ; preds = %bb.bs
  %i.ub = and i32 %i.ty, 65535
  %i.uc = zext nneg i32 %i.ub to i64              ; 2 uses
  %i.ud = load ptr, ptr %i.se, align 8, !tbaa !92
  %i.ue = load ptr, ptr %i.sd, align 8, !tbaa !95 ; 3 uses
  %i.uf = ptrtoint ptr %i.ud to i64
  %i.ug = ptrtoint ptr %i.ue to i64
  %i.uh = sub i64 %i.uf, %i.ug
  %i.ui = sdiv exact i64 %i.uh, 2080
  %i.uj = icmp ugt i64 %i.ui, %i.uc
  br i1 %i.uj, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.uk = getelementptr inbounds nuw [2080 x i8], ptr %i.ue, i64 %i.uc ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 16
  %i.um = load i64, ptr %i.ul, align 8, !tbaa !19
  %i.un = icmp eq i64 %i.um, 0
  br i1 %i.un, label %bb.bv, label %_ZNK14NodeDefManager3getERK7MapNode.exit534

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.uo = getelementptr inbounds nuw i8, ptr %i.ue, i64 260000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit534

_ZNK14NodeDefManager3getERK7MapNode.exit534:      ; preds = %bb.bv, %bb.bu
  %i.up = phi ptr [ %i.uo, %bb.bv ], [ %i.uk, %bb.bu ]
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 1412
  %i.ur = load i8, ptr %i.uq, align 4, !tbaa !96, !range !85, !noundef !86
  %i.us = trunc nuw i8 %i.ur to i1
  br i1 %i.us, label %bb.cf, label %bb.bx

bb.bw:                                            ; preds = %bb.br
  %i.ut = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.bx:                                            ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit534
  %i.uu = load i8, ptr %i.sg, align 1, !tbaa !144, !range !85, !noundef !86
  %i.uv = trunc nuw i8 %i.uu to i1
  br i1 %i.uv, label %bb.ce, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %.sroa.0.0.insert.insert.i541.reass = or disjoint i48 %.sroa.10.0.insert.shift, %invariant.op810
  %i.uw = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.f, i48 %.sroa.0.0.insert.insert.i541.reass, ptr noundef nonnull %i.a)
          to label %bb.bz unwind label %bb.cd

bb.bz:                                            ; preds = %bb.by
  %i.ux = load i8, ptr %i.a, align 1, !tbaa !91, !range !85, !noundef !86
  %i.uy = trunc nuw i8 %i.ux to i1
  br i1 %i.uy, label %bb.ca, label %bb.cf

bb.ca:                                            ; preds = %bb.bz
  %i.uz = and i32 %i.uw, 65535
  %i.va = zext nneg i32 %i.uz to i64              ; 2 uses
  %i.vb = load ptr, ptr %i.se, align 8, !tbaa !92
  %i.vc = load ptr, ptr %i.sd, align 8, !tbaa !95 ; 3 uses
  %i.vd = ptrtoint ptr %i.vb to i64
  %i.ve = ptrtoint ptr %i.vc to i64
  %i.vf = sub i64 %i.vd, %i.ve
  %i.vg = sdiv exact i64 %i.vf, 2080
  %i.vh = icmp ugt i64 %i.vg, %i.va
  br i1 %i.vh, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.vi = getelementptr inbounds nuw [2080 x i8], ptr %i.vc, i64 %i.va ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 16
  %i.vk = load i64, ptr %i.vj, align 8, !tbaa !19
  %i.vl = icmp eq i64 %i.vk, 0
  br i1 %i.vl, label %bb.cc, label %_ZNK14NodeDefManager3getERK7MapNode.exit542

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vc, i64 260000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit542

_ZNK14NodeDefManager3getERK7MapNode.exit542:      ; preds = %bb.cc, %bb.cb
  %i.vn = phi ptr [ %i.vm, %bb.cc ], [ %i.vi, %bb.cb ]
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 1412
  %i.vp = load i8, ptr %i.vo, align 4, !tbaa !96, !range !85, !noundef !86
  %i.vq = trunc nuw i8 %i.vp to i1
  br i1 %i.vq, label %bb.cf, label %bb.ce

bb.cd:                                            ; preds = %bb.by
  %i.vr = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.ce:                                            ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit542, %bb.bx
  br label %bb.cf

bb.cf:                                            ; preds = %bb.bz, %_ZNK14NodeDefManager3getERK7MapNode.exit542, %bb.bs, %_ZNK14NodeDefManager3getERK7MapNode.exit534, %bb.bm, %_ZNK14NodeDefManager3getERK7MapNode.exit526, %bb.bk, %bb.ce
  %.sroa.0656.2.a = phi i16 [ %.sroa.0656.1804, %bb.bk ], [ %.sroa.0656.1804, %_ZNK14NodeDefManager3getERK7MapNode.exit534 ], [ %i.sq, %bb.ce ], [ %.sroa.0656.1804, %_ZNK14NodeDefManager3getERK7MapNode.exit542 ], [ %.sroa.0656.1804, %bb.bz ], [ %.sroa.0656.1804, %bb.bs ], [ %.sroa.0656.1804, %_ZNK14NodeDefManager3getERK7MapNode.exit526 ], [ %.sroa.0656.1804, %bb.bm ] ; 3 uses
  %.sroa.6.2 = phi i16 [ %.sroa.6.1805, %bb.bk ], [ %.sroa.6.1805, %_ZNK14NodeDefManager3getERK7MapNode.exit534 ], [ %i.rr, %bb.ce ], [ %.sroa.6.1805, %_ZNK14NodeDefManager3getERK7MapNode.exit542 ], [ %.sroa.6.1805, %bb.bz ], [ %.sroa.6.1805, %bb.bs ], [ %.sroa.6.1805, %_ZNK14NodeDefManager3getERK7MapNode.exit526 ], [ %.sroa.6.1805, %bb.bm ] ; 3 uses
  %.sroa.7660.2 = phi i16 [ %.sroa.7660.1806, %bb.bk ], [ %.sroa.7660.1806, %_ZNK14NodeDefManager3getERK7MapNode.exit534 ], [ %i.si, %bb.ce ], [ %.sroa.7660.1806, %_ZNK14NodeDefManager3getERK7MapNode.exit542 ], [ %.sroa.7660.1806, %bb.bz ], [ %.sroa.7660.1806, %bb.bs ], [ %.sroa.7660.1806, %_ZNK14NodeDefManager3getERK7MapNode.exit526 ], [ %.sroa.7660.1806, %bb.bm ] ; 3 uses
  %.2316 = phi nsz float [ %.1315808, %bb.bk ], [ %.1315808, %_ZNK14NodeDefManager3getERK7MapNode.exit534 ], [ %i.sw, %bb.ce ], [ %.1315808, %_ZNK14NodeDefManager3getERK7MapNode.exit542 ], [ %.1315808, %bb.bz ], [ %.1315808, %bb.bs ], [ %.1315808, %_ZNK14NodeDefManager3getERK7MapNode.exit526 ], [ %.1315808, %bb.bm ] ; 3 uses
  %i.vs = add nsw i16 %.0318807, 1                ; 2 uses
  %exitcond.not = icmp eq i16 %i.vs, 2
  br i1 %exitcond.not, label %bb.bj, label %bb.bk, !llvm.loop !252

bb.cg:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %.sroa.065.0.copyload = load i48, ptr %i.sc, align 2
  %i.vt = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.f, i48 %.sroa.065.0.copyload, ptr noundef null)
          to label %bb.ch unwind label %bb.ck

bb.ch:                                            ; preds = %bb.cg
  store i32 %i.vt, ptr %8, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  invoke void @_ZNK7MapNode17getCollisionBoxesEPK14NodeDefManagerPSt6vectorIN4core8aabbox3dIfEESaIS6_EEh(ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef %i.m, ptr noundef nonnull %9, i8 noundef zeroext 0)
          to label %bb.ci unwind label %bb.cl

bb.ci:                                            ; preds = %bb.ch
  %i.vu = load ptr, ptr %9, align 8, !tbaa !136   ; 5 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.vw = load ptr, ptr %i.vv, align 8, !tbaa !136 ; 2 uses
  %.not774816 = icmp eq ptr %i.vu, %i.vw
  br i1 %.not774816, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.ci
  %.0319.lcssa = phi float [ 0.000000e+00, %bb.ci ], [ %.1320, %.lr.ph ]
  store float %.0319.lcssa, ptr %i.mo, align 8, !tbaa !73
  %.not.i.i.i = icmp eq ptr %i.vu, null
  br i1 %.not.i.i.i, label %bb.co, label %bb.cj

bb.cj:                                            ; preds = %._crit_edge
  %i.vx = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.vy = load ptr, ptr %i.vx, align 8, !tbaa !142
  %i.vz = ptrtoint ptr %i.vy to i64
  %i.wa = ptrtoint ptr %i.vu to i64
  %i.wb = sub i64 %i.vz, %i.wa
  call void @_ZdlPvm(ptr noundef nonnull %i.vu, i64 noundef %i.wb) #25
  br label %bb.co

bb.ck:                                            ; preds = %bb.cg
  %i.wc = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.cl:                                            ; preds = %bb.ch
  %i.wd = landingpad { ptr, i32 }
          cleanup
  %i.we = load ptr, ptr %9, align 8, !tbaa !143   ; 3 uses
  %.not.i.i.i543 = icmp eq ptr %i.we, null
  br i1 %.not.i.i.i543, label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EED2Ev.exit544, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.wf = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.wg = load ptr, ptr %i.wf, align 8, !tbaa !142
  %i.wh = ptrtoint ptr %i.wg to i64
  %i.wi = ptrtoint ptr %i.we to i64
  %i.wj = sub i64 %i.wh, %i.wi
  call void @_ZdlPvm(ptr noundef nonnull %i.we, i64 noundef %i.wj) #25
  br label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EED2Ev.exit544

_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EED2Ev.exit544: ; preds = %bb.cl, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.cn

.lr.ph:                                           ; preds = %bb.ci, %.lr.ph
  %.0319818 = phi float [ %.1320, %.lr.ph ], [ 0.000000e+00, %bb.ci ] ; 2 uses
  %.sroa.0634.0817 = phi ptr [ %i.wn, %.lr.ph ], [ %i.vu, %bb.ci ] ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %.sroa.0634.0817, i64 16
  %i.wl = load float, ptr %i.wk, align 4, !tbaa !253 ; 2 uses
  %i.wm = fcmp nsz ogt float %i.wl, %.0319818
  %.1320 = select nsz i1 %i.wm, float %i.wl, float %.0319818 ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %.sroa.0634.0817, i64 24 ; 2 uses
  %.not774 = icmp eq ptr %i.wn, %i.vw
  br i1 %.not774, label %._crit_edge, label %.lr.ph

bb.cn:                                            ; preds = %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EED2Ev.exit544, %bb.ck
  %.pn340 = phi { ptr, i32 } [ %i.wd, %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EED2Ev.exit544 ], [ %i.wc, %bb.ck ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.en

bb.co:                                            ; preds = %bb.cj, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.wo = load i8, ptr %i.jw, align 1, !tbaa !210, !range !85, !noundef !86
  %i.wp = trunc nuw i8 %i.wo to i1
  br i1 %i.wp, label %bb.cp, label %.critedge371

bb.cp:                                            ; preds = %bb.co
  store i8 1, ptr %i.li, align 2, !tbaa !156
  br label %.critedge371

.critedge371:                                     ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit496.thread767.thread897, %bb.co, %bb.cp, %bb.bi, %bb.bg, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit496.thread767
  %i.wq = load i8, ptr %i.ny, align 4, !tbaa !84, !range !85, !noundef !86
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.n, ptr noundef nonnull align 16 dereferenceable(12) %4, i64 12, i1 false), !tbaa.struct !155
  store i8 %i.wq, ptr %i.ny, align 4, !tbaa !84
  %.not342 = icmp eq ptr %3, null
  br i1 %.not342, label %.loopexit, label %bb.cq

bb.cq:                                            ; preds = %.critedge371
  %i.wr = load i8, ptr %i.y, align 8, !tbaa !20, !range !85, !noundef !86
  %i.ws = trunc nuw i8 %i.wr to i1
  %or.cond5 = and i1 %.not.i.i.i.i, %i.ws
  br i1 %or.cond5, label %.loopexit, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.wt = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.wu = load ptr, ptr %i.wt, align 8, !tbaa !151 ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ww = load ptr, ptr %i.wv, align 8, !tbaa !151 ; 2 uses
  %.not775819 = icmp eq ptr %i.wu, %i.ww
  br i1 %.not775819, label %.loopexit, label %.lr.ph822

.lr.ph822:                                        ; preds = %bb.cr
  %i.wx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.pre835 = load ptr, ptr %i.wx, align 8, !tbaa !212
  br label %bb.ct

bb.cs:                                            ; preds = %bb.db, %bb.da, %bb.cz
  %i.wz = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.ct:                                            ; preds = %.lr.ph822, %_ZNSt6vectorI13CollisionInfoSaIS0_EE9push_backERKS0_.exit
  %i.xa = phi ptr [ %.pre835, %.lr.ph822 ], [ %i.xv, %_ZNSt6vectorI13CollisionInfoSaIS0_EE9push_backERKS0_.exit ] ; 5 uses
  %.sroa.0630.0820 = phi ptr [ %i.wu, %.lr.ph822 ], [ %i.xw, %_ZNSt6vectorI13CollisionInfoSaIS0_EE9push_backERKS0_.exit ] ; 3 uses
  %i.xb = load ptr, ptr %i.wy, align 8, !tbaa !214
  %.not.i545 = icmp eq ptr %i.xa, %i.xb
  br i1 %.not.i545, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.xa, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0630.0820, i64 56, i1 false), !tbaa.struct !215
  %i.xc = load ptr, ptr %i.wx, align 8, !tbaa !212
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 56 ; 2 uses
  store ptr %i.xd, ptr %i.wx, align 8, !tbaa !212
  br label %_ZNSt6vectorI13CollisionInfoSaIS0_EE9push_backERKS0_.exit

bb.cv:                                            ; preds = %bb.ct
  %i.xe = load ptr, ptr %3, align 8, !tbaa !222   ; 5 uses
  %i.xf = ptrtoint ptr %i.xa to i64
  %i.xg = ptrtoint ptr %i.xe to i64
  %i.xh = sub i64 %i.xf, %i.xg                    ; 4 uses
  %i.xi = icmp eq i64 %i.xh, 9223372036854775800
  br i1 %i.xi, label %bb.cw, label %_ZNKSt6vectorI13CollisionInfoSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.cw:                                            ; preds = %bb.cv
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #28
          to label %.noexc547 unwind label %.loopexit.split-lp

.noexc547:                                        ; preds = %bb.cw
  unreachable

_ZNKSt6vectorI13CollisionInfoSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.cv
  %i.xj = sdiv exact i64 %i.xh, 56                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.xj, i64 1)
  %i.xk = add nsw i64 %.sroa.speculated.i.i.i, %i.xj ; 2 uses
  %i.xl = icmp ult i64 %i.xk, %i.xj
  %i.xm = call i64 @llvm.umin.i64(i64 %i.xk, i64 164703072086692425)
  %i.xn = select i1 %i.xl, i64 164703072086692425, i64 %i.xm ; 3 uses
  %.not.i.i.i546 = icmp ne i64 %i.xn, 0
  call void @llvm.assume(i1 %.not.i.i.i546)
  %i.xo = mul nuw nsw i64 %i.xn, 56
  %i.xp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.xo) #29
          to label %.noexc548 unwind label %.loopexit777 ; 5 uses

.noexc548:                                        ; preds = %_ZNKSt6vectorI13CollisionInfoSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 %i.xh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.xq, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0630.0820, i64 56, i1 false), !tbaa.struct !215
  %.not10.i.i.i.i.i = icmp eq ptr %i.xe, %i.xa
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI13CollisionInfoSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc548, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.xs, %.lr.ph.i.i.i.i.i ], [ %i.xp, %.noexc548 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.xr, %.lr.ph.i.i.i.i.i ], [ %i.xe, %.noexc548 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.0911.i.i.i.i.i, i64 56, i1 false), !tbaa.struct !215, !alias.scope !254
  %i.xr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 56 ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.xr, %i.xa
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI13CollisionInfoSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !227

_ZNSt6vectorI13CollisionInfoSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc548
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.xp, %.noexc548 ], [ %i.xs, %.lr.ph.i.i.i.i.i ]
  %i.xt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 56 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.xe, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorI13CollisionInfoSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.cx

bb.cx:                                            ; preds = %_ZNSt6vectorI13CollisionInfoSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.xe, i64 noundef %i.xh) #25
  br label %_ZNSt6vectorI13CollisionInfoSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI13CollisionInfoSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.cx, %_ZNSt6vectorI13CollisionInfoSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i
  store ptr %i.xp, ptr %3, align 8, !tbaa !222
  store ptr %i.xt, ptr %i.wx, align 8, !tbaa !212
  %i.xu = getelementptr inbounds nuw [56 x i8], ptr %i.xp, i64 %i.xn
  store ptr %i.xu, ptr %i.wy, align 8, !tbaa !214
  br label %_ZNSt6vectorI13CollisionInfoSaIS0_EE9push_backERKS0_.exit

_ZNSt6vectorI13CollisionInfoSaIS0_EE9push_backERKS0_.exit: ; preds = %_ZNSt6vectorI13CollisionInfoSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, %bb.cu
  %i.xv = phi ptr [ %i.xt, %_ZNSt6vectorI13CollisionInfoSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %i.xd, %bb.cu ]
end_hunk_1
begin_hunk_2_@_ZN11LocalPlayer12applyControlEfP11Environment:bb.a
  br i1 %i.hj, label %_ZN4core8vector3dIfE9normalizeEv.exit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.hk = fpext nsz float %i.hi to double
  %i.hl = call nsz double @llvm.sqrt.f64(double %i.hk)
  %i.hm = fdiv nsz double 1.000000e+00, %i.hl     ; 3 uses
  %i.hn = fpext nsz float %sin to double
  %i.ho = fmul nsz double %i.hm, %i.hn
  %i.hp = fptrunc nsz double %i.ho to float
  %i.hq = fmul nsz double %i.hm, 0.000000e+00
  %i.hr = fptrunc nsz double %i.hq to float
  %i.hs = fpext nsz float %cos to double
  %i.ht = fmul nsz double %i.hm, %i.hs
  %i.hu = fptrunc nsz double %i.ht to float
  br label %_ZN4core8vector3dIfE9normalizeEv.exit

_ZN4core8vector3dIfE9normalizeEv.exit:            ; preds = %bb.bt, %bb.bu
  %i.hv = phi float [ %cos, %bb.bt ], [ %i.hu, %bb.bu ]
  %i.hw = phi float [ 0.000000e+00, %bb.bt ], [ %i.hr, %bb.bu ]
  %i.hx = phi float [ %sin, %bb.bt ], [ %i.hp, %bb.bu ]
  %i.hy = fmul nsz float %i.bu, %i.hx
  %i.hz = fmul nsz float %i.bu, %i.hw
  %i.ia = fmul nsz float %i.bu, %i.hv
  br label %bb.by

.thread:                                          ; preds = %bb.br
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 243
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !210, !range !85, !noundef !86
  %i.id = trunc nuw i8 %i.ic to i1
  %.not225 = xor i1 %i.id, true
  %or.cond16226 = select i1 %.not225, i1 true, i1 %i.an
  %brmerge247 = or i1 %or.cond16226, %i.hg
  br i1 %brmerge247, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %.thread
  %i.ie = call noundef nonnull align 4 dereferenceable(12) ptr @_ZN4core8vector3dIfE9normalizeEv(ptr noundef nonnull align 4 dereferenceable(12) %3) ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ig = load float, ptr %i.if, align 8, !tbaa !283 ; 3 uses
  %i.ih = load float, ptr %i.ie, align 4, !tbaa !88
  %i.ii = fmul nsz float %i.ig, %i.ih
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ie, i64 4
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !89
  %i.il = fmul nsz float %i.ig, %i.ik
  %i.im = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.in = load float, ptr %i.im, align 4, !tbaa !90
  %i.io = fmul nsz float %i.ig, %i.in
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.iq = load float, ptr %i.ip, align 4, !tbaa !284 ; 3 uses
  %i.ir = fmul nsz float %i.ii, %i.iq
  %i.is = fmul nsz float %i.il, %i.iq
  %i.it = fmul nsz float %i.iq, %i.io
  br label %bb.by

bb.bw:                                            ; preds = %.thread, %bb.bs
  %i.iu = fmul nsz float %sin, %sin
  %i.iv = call nsz float @llvm.fmuladd.f32(float %cos, float %cos, float %i.iu) ; 2 uses
  %i.iw = fcmp nsz oeq float %i.iv, 0.000000e+00
  br i1 %i.iw, label %_ZN4core8vector3dIfE9normalizeEv.exit192, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ix = fpext nsz float %i.iv to double
  %i.iy = call nsz double @llvm.sqrt.f64(double %i.ix)
  %i.iz = fdiv nsz double 1.000000e+00, %i.iy     ; 3 uses
  %i.ja = fpext nsz float %sin to double
  %i.jb = fmul nsz double %i.iz, %i.ja
  %i.jc = fptrunc nsz double %i.jb to float
  %i.jd = fmul nsz double %i.iz, 0.000000e+00
  %i.je = fptrunc nsz double %i.jd to float
  %i.jf = fpext nsz float %cos to double
  %i.jg = fmul nsz double %i.iz, %i.jf
  %i.jh = fptrunc nsz double %i.jg to float
  br label %_ZN4core8vector3dIfE9normalizeEv.exit192

_ZN4core8vector3dIfE9normalizeEv.exit192:         ; preds = %bb.bw, %bb.bx
  %i.ji = phi float [ %cos, %bb.bw ], [ %i.jh, %bb.bx ]
  %i.jj = phi float [ 0.000000e+00, %bb.bw ], [ %i.je, %bb.bx ]
  %i.jk = phi float [ %sin, %bb.bw ], [ %i.jc, %bb.bx ]
  %i.jl = fmul nsz float %i.bp, %i.jk
  %i.jm = fmul nsz float %i.bp, %i.jj
  %i.jn = fmul nsz float %i.bp, %i.ji
  br label %bb.by

bb.by:                                            ; preds = %bb.bv, %_ZN4core8vector3dIfE9normalizeEv.exit192, %_ZN4core8vector3dIfE9normalizeEv.exit
  %i.jo = phi float [ %i.it, %bb.bv ], [ %i.jn, %_ZN4core8vector3dIfE9normalizeEv.exit192 ], [ %i.ia, %_ZN4core8vector3dIfE9normalizeEv.exit ]
  %i.jp = phi float [ %i.is, %bb.bv ], [ %i.jm, %_ZN4core8vector3dIfE9normalizeEv.exit192 ], [ %i.hz, %_ZN4core8vector3dIfE9normalizeEv.exit ]
  %i.jq = phi float [ %i.ir, %bb.bv ], [ %i.jl, %_ZN4core8vector3dIfE9normalizeEv.exit192 ], [ %i.hy, %_ZN4core8vector3dIfE9normalizeEv.exit ]
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.js = load float, ptr %i.jr, align 8, !tbaa !285 ; 3 uses
  %i.jt = fmul nsz float %i.js, %i.jq
  store float %i.jt, ptr %3, align 8, !tbaa !88
  %i.ju = fmul nsz float %i.js, %i.jp
  store float %i.ju, ptr %i.o, align 4, !tbaa !89
  %i.jv = fmul nsz float %i.js, %i.jo
  store float %i.jv, ptr %i.p, align 8, !tbaa !90
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 418
  %i.jx = load i8, ptr %i.jw, align 2, !tbaa !156, !range !85, !noundef !86
  %i.jy = trunc nuw i8 %i.jx to i1
  %or.cond19 = select i1 %i.jy, i1 true, i1 %i.an
  br i1 %or.cond19, label %bb.cb, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 422
  %i.ka = load i8, ptr %i.jz, align 2, !tbaa !163, !range !85, !noundef !86
  %i.kb = trunc nuw i8 %i.ka to i1
  br i1 %i.kb, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 419
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !157, !range !85, !noundef !86
  %i.ke = trunc nuw i8 %i.kd to i1
  br i1 %i.ke, label %bb.cb, label %bb.ce

bb.cb:                                            ; preds = %bb.ca, %bb.bz, %bb.by
  br i1 %i.an, label %bb.cj, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.kg = load i8, ptr %i.kf, align 8, !tbaa !75, !range !85, !noundef !86
  %i.kh = trunc nuw i8 %i.kg to i1
  br i1 %i.kh, label %bb.cd, label %bb.cj

bb.cd:                                            ; preds = %bb.cc
  %i.ki = load i8, ptr %i.fc, align 1, !tbaa !250, !range !85, !noundef !86
  %i.kj = trunc nuw i8 %i.ki to i1
  br i1 %i.kj, label %bb.ce, label %bb.cj

bb.ce:                                            ; preds = %bb.cd, %bb.ca
  br i1 %.3, label %bb.ci, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  br i1 %i.ar, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 242
  %i.kl = load i8, ptr %i.kk, align 2, !tbaa !275, !range !85, !noundef !86
  %i.km = trunc nuw i8 %i.kl to i1
  br i1 %i.km, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ce, %bb.cg, %bb.ch
  %.sink251 = phi i64 [ 92, %bb.ch ], [ 96, %bb.cg ], [ 96, %bb.ce ]
  %.sink250 = phi i64 [ 304, %bb.ch ], [ 312, %bb.cg ], [ 312, %bb.ce ]
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 %.sink251
  %.sink = load float, ptr %i.kn, align 4, !tbaa !34
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 %.sink250
  %i.kp = load float, ptr %i.ko, align 8, !tbaa !34
  %i.kq = fmul nsz float %.sink, %i.kp
  %.pn160 = fmul nsz float %i.kq, 1.000000e+01
  %.0151 = fmul nsz float %1, %.pn160
  br label %bb.cq

bb.cj:                                            ; preds = %bb.cd, %bb.cc, %bb.cb
  br i1 %.3, label %bb.co, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 422
  %i.ks = load i8, ptr %i.kr, align 2, !tbaa !163, !range !85, !noundef !86
  %i.kt = trunc nuw i8 %i.ks to i1
  %or.cond22 = select i1 %i.kt, i1 %i.bg, i1 false
  br i1 %or.cond22, label %bb.co, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 419
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !157, !range !85, !noundef !86
  %i.kw = trunc nuw i8 %i.kv to i1
  br i1 %i.kw, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.ky = load i8, ptr %i.kx, align 4, !tbaa !161, !range !85, !noundef !86
  %i.kz = trunc nuw i8 %i.ky to i1
  %or.cond25 = select i1 %i.kz, i1 %i.bg, i1 false
  br i1 %or.cond25, label %bb.co, label %bb.cp

bb.cn:                                            ; preds = %bb.cl
  br i1 %i.bg, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cm, %bb.ck, %bb.cn, %bb.cj
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.lb = load float, ptr %i.la, align 8, !tbaa !286
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ld = load float, ptr %i.lc, align 8, !tbaa !287
  %i.le = fmul nsz float %i.lb, %i.ld
  %i.lf = fmul nsz float %i.le, 1.000000e+01
  %i.lg = fmul nsz float %1, %i.lf                ; 2 uses
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cn, %bb.cm
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.li = load float, ptr %i.lh, align 8, !tbaa !288
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.lk = load float, ptr %i.lj, align 4, !tbaa !289
  %i.ll = fmul nsz float %i.li, %i.lk
  %i.lm = fmul nsz float %i.ll, 1.000000e+01
  %i.ln = fmul nsz float %1, %i.lm                ; 2 uses
  br label %bb.cq

bb.cq:                                            ; preds = %bb.co, %bb.cp, %bb.ci
  %.0153 = phi nsz float [ %i.lg, %bb.co ], [ %i.ln, %bb.cp ], [ %.0151, %bb.ci ]
  %.1152 = phi nsz float [ %i.lg, %bb.co ], [ %i.ln, %bb.cp ], [ 0.000000e+00, %bb.ci ]
  br i1 %i.an, label %bb.cu, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 419
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !157, !range !85, !noundef !86
  %i.lq = trunc nuw i8 %i.lp to i1
  br i1 %i.lq, label %bb.cu, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.ls = load i8, ptr %i.lr, align 4, !tbaa !161, !range !85, !noundef !86
  %i.lt = trunc nuw i8 %i.ls to i1
  br i1 %i.lt, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.lu = call nsz noundef float @_ZN11LocalPlayer13getSlipFactorEP11EnvironmentRKN4core8vector3dIfEE(ptr noundef nonnull align 8 dereferenceable(864) %0, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(12) %3)
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs, %bb.cr, %bb.cq
  %.0154 = phi nsz float [ 1.000000e+00, %bb.cq ], [ 1.000000e+00, %bb.cr ], [ 1.000000e+00, %bb.cs ], [ %i.lu, %bb.ct ]
  br i1 %i.ay, label %bb.cv, label %._crit_edge

._crit_edge:                                      ; preds = %bb.cu
  %.pre = load float, ptr %3, align 8, !tbaa !88
  %.pre230 = load float, ptr %i.o, align 4, !tbaa !89
  %.pre232 = load float, ptr %i.p, align 8, !tbaa !90
  br label %bb.cy

bb.cv:                                            ; preds = %bb.cu
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 419
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !157, !range !85, !noundef !86
  %i.lx = trunc nuw i8 %i.lw to i1
  %.pre229 = load float, ptr %3, align 8, !tbaa !88 ; 5 uses
  %.pre231 = load float, ptr %i.o, align 4, !tbaa !89 ; 4 uses
  %.pre233 = load float, ptr %i.p, align 8, !tbaa !90 ; 5 uses
  br i1 %i.lx, label %bb.cw, label %bb.cy

bb.cw:                                            ; preds = %bb.cv
  %i.ly = fadd nsz float %.sroa.6.3, %.pre231     ; 2 uses
  %i.lz = fmul nsz float %i.ly, %i.ly
  %i.ma = call nsz float @llvm.fmuladd.f32(float %.pre229, float %.pre229, float %i.lz)
  %i.mb = call nsz float @llvm.fmuladd.f32(float %.pre233, float %.pre233, float %i.ma)
  %i.mc = call nsz noundef float @llvm.sqrt.f32(float %i.mb)
  %i.md = fcmp nsz ogt float %i.mc, f0x3C23D70A
  br i1 %i.md, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  store i8 1, ptr %i.b, align 8, !tbaa !274
  br label %bb.cy

bb.cy:                                            ; preds = %._crit_edge, %bb.cw, %bb.cx, %bb.cv
  %i.me = phi float [ %.pre232, %._crit_edge ], [ %.pre233, %bb.cw ], [ %.pre233, %bb.cx ], [ %.pre233, %bb.cv ]
  %i.mf = phi float [ %.pre230, %._crit_edge ], [ %.pre231, %bb.cw ], [ %.pre231, %bb.cx ], [ %.pre231, %bb.cv ]
  %i.mg = phi float [ %.pre, %._crit_edge ], [ %.pre229, %bb.cw ], [ %.pre229, %bb.cx ], [ %.pre229, %bb.cv ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.mh = fadd nsz float %.sroa.6.3, %i.mf
  %i.mi = load float, ptr %i.bm, align 8, !tbaa !290 ; 5 uses
  %i.mj = fmul nsz float %i.mg, %i.mi
  %i.mk = fmul nsz float %i.mh, %i.mi
  %i.ml = fmul nsz float %i.me, %i.mi
  %.sroa.0.0.vec.insert.i205 = insertelement <2 x float> poison, float %i.mj, i64 0
  %.sroa.0.4.vec.insert.i206 = insertelement <2 x float> %.sroa.0.0.vec.insert.i205, float %i.mk, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i206, ptr %6, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %i.ml, ptr %.sroa.2.0..sroa_idx, align 8
  %i.mm = fmul nsz float %.0153, %i.mi
  %i.mn = fmul nsz float %.0154, %i.mm
  %i.mo = fmul nsz float %.1152, %i.mi
  call void @_ZN11LocalPlayer10accelerateERKN4core8vector3dIfEEffb(ptr noundef nonnull align 8 dereferenceable(864) %0, ptr noundef nonnull align 4 dereferenceable(12) %6, float noundef %i.mn, float noundef %i.mo, i1 noundef zeroext %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.b
  ret void

bb.da:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176
  %.pn157.pn = phi { ptr, i32 } [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179 ], [ %i.cb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %.pn157.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(12) ptr @_ZN4core8vector3dIfE9normalizeEv(ptr noundef nonnull align 4 dereferenceable(12) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load <2 x float>, ptr %0, align 4, !tbaa !34 ; 4 uses
  %foldExtExtBinop = fmul nsz <2 x float> %i.a, %i.a
  %i.b = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.c = extractelement <2 x float> %i.a, i64 0   ; 2 uses
  %i.d = tail call nsz float @llvm.fmuladd.f32(float %i.c, float %i.c, float %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !90 ; 3 uses
  %i.g = tail call nsz float @llvm.fmuladd.f32(float %i.f, float %i.f, float %i.d) ; 2 uses
  %i.h = fcmp nsz oeq float %i.g, 0.000000e+00
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = fpext nsz float %i.g to double
  %i.j = tail call nsz double @llvm.sqrt.f64(double %i.i)
  %i.k = fdiv nsz double 1.000000e+00, %i.j       ; 2 uses
  %i.l = fpext <2 x float> %i.a to <2 x double>
  %i.m = insertelement <2 x double> poison, double %i.k, i64 0
  %i.n = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> zeroinitializer
  %i.o = fmul nsz <2 x double> %i.n, %i.l
  %i.p = fptrunc <2 x double> %i.o to <2 x float>
  store <2 x float> %i.p, ptr %0, align 4, !tbaa !34
  %i.q = fpext nsz float %i.f to double
  %i.r = fmul nsz double %i.k, %i.q
  %i.s = fptrunc nsz double %i.r to float
  store float %i.s, ptr %i.e, align 4, !tbaa !90
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef float @_ZN11LocalPlayer13getSlipFactorEP11EnvironmentRKN4core8vector3dIfEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(864) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !262  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !83 ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !31
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef nonnull align 8 dereferenceable(144) ptr %i.i(ptr noundef nonnull align 8 dereferenceable(88) %1)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.l = load i8, ptr %i.k, align 4, !tbaa !84, !range !85, !noundef !86
  %i.m = trunc nuw i8 %i.l to i1
  %.sroa.0.0.in.v.i = select i1 %i.m, i64 622, i64 616
  %.sroa.0.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0.in.v.i
  %.sroa.0.0.i = load i48, ptr %.sroa.0.0.in.i, align 2
  %i.n = tail call i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.j, i48 %.sroa.0.0.i, ptr noundef null)
  %i.o = and i32 %i.n, 65535
  %i.p = zext nneg i32 %i.o to i64                ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !92
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !95   ; 3 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = sdiv exact i64 %i.w, 2080
  %i.y = icmp ugt i64 %i.x, %i.p
  br i1 %i.y, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw [2080 x i8], ptr %i.t, i64 %i.p ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !19
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.c, label %_ZNK14NodeDefManager3getERK7MapNode.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 260000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit

_ZNK14NodeDefManager3getERK7MapNode.exit:         ; preds = %bb.b, %bb.c
  %i.ae = phi ptr [ %i.ad, %bb.c ], [ %i.z, %bb.b ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1412
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !96, !range !85, !noundef !86
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %._crit_edge.i.i, label %.thread

._crit_edge.i.i:                                  ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.ai, ptr %3, align 8, !tbaa !18
  store i64 8751168559530994803, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 8, ptr %i.aj, align 8, !tbaa !19
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i8 0, ptr %i.ak, align 8, !tbaa !15
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.am = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc18 unwind label %bb.e   ; 2 uses

.noexc18:                                         ; preds = %._crit_edge.i.i
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit, label %bb.d

bb.d:                                             ; preds = %.noexc18
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !246
  br label %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit

_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit: ; preds = %bb.d, %.noexc18
  %.0.i = phi i32 [ %i.ap, %bb.d ], [ 0, %.noexc18 ] ; 4 uses
  %i.aq = load ptr, ptr %3, align 8, !tbaa !9     ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.ai
  br i1 %i.ar, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit
  %i.as = load i64, ptr %i.ai, align 8, !tbaa !15
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #25
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  %i.av = load ptr, ptr %3, align 8, !tbaa !9     ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.ai
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.e
  %i.ax = load i64, ptr %i.ai, align 8, !tbaa !15
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %i.au

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.az = icmp sgt i32 %.0.i, 0
  br i1 %i.az, label %bb.f, label %.thread

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.ba = load float, ptr %2, align 4, !tbaa !88
  %i.bb = fcmp nsz oeq float %i.ba, 0.000000e+00
  br i1 %i.bb, label %bb.g, label %_ZNK4core8vector3dIfEeqERKS1_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !89
  %i.be = fcmp nsz oeq float %i.bd, 0.000000e+00
  br i1 %i.be, label %_ZNK4core8vector3dIfEeqERKS1_.exit, label %_ZNK4core8vector3dIfEeqERKS1_.exit.thread

_ZNK4core8vector3dIfEeqERKS1_.exit:               ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !90
  %.fr = freeze float %i.bg
  %i.bh = fcmp nsz oeq float %.fr, 0.000000e+00
  %i.bi = zext i1 %i.bh to i32
  %spec.select = shl nuw nsw i32 %.0.i, %i.bi
  br label %_ZNK4core8vector3dIfEeqERKS1_.exit.thread

_ZNK4core8vector3dIfEeqERKS1_.exit.thread:        ; preds = %_ZNK4core8vector3dIfEeqERKS1_.exit, %bb.f, %bb.g
  %i.bj = phi i32 [ %.0.i, %bb.f ], [ %spec.select, %_ZNK4core8vector3dIfEeqERKS1_.exit ], [ %.0.i, %bb.g ]
  %i.bk = add nuw nsw i32 %i.bj, 1
  %i.bl = uitofp nneg i32 %i.bk to float
  %i.bm = fdiv nsz float 1.000000e+00, %i.bl      ; 2 uses
  %i.bn = fcmp nsz olt float %i.bm, 1.000000e-03
  %i.bo = select i1 %i.bn, float 1.000000e-03, float %i.bm ; 2 uses
  %i.bp = fcmp nsz olt float %i.bo, 1.000000e+00
  %i.bq = select i1 %i.bp, float %i.bo, float 1.000000e+00
  br label %.thread

.thread:                                          ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNK4core8vector3dIfEeqERKS1_.exit.thread
  %.016 = phi nsz float [ %i.bq, %_ZNK4core8vector3dIfEeqERKS1_.exit.thread ], [ 1.000000e+00, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ 1.000000e+00, %_ZNK14NodeDefManager3getERK7MapNode.exit ]
  ret float %.016
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN11LocalPlayer10accelerateERKN4core8vector3dIfEEffb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(864) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1, float noundef %2, float noundef %3, i1 noundef zeroext %4) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.b = load float, ptr %i.a, align 8, !tbaa !291 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 716
  %i.d = load float, ptr %i.c, align 4, !tbaa !292 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
end_hunk_2
