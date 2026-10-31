Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/localplayer?download=true
inline.NumInlined: 802
inline.NumDeleted: 265
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN11LocalPlayerD0Ev:bb.a
bb.a:
  tail call void @_ZN11LocalPlayerD2Ev(ptr noundef nonnull align 8 dead_on_return(864) dereferenceable(864) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 864) #25
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11LocalPlayer15updateSneakNodeEP3MapRKN4core8vector3dIfEES6_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(864) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %3) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %struct.MapNode, align 4            ; 12 uses
  %i.a = alloca i8, align 1                       ; 15 uses
  %5 = alloca %"class.std::vector.346", align 8   ; 9 uses
  %6 = alloca %"class.std::vector.346", align 8   ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d), !inline_history !0 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.j = load i8, ptr %i.i, align 4, !tbaa !77, !range !78, !noundef !79 ; 2 uses
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 644
  %i.m = load float, ptr %i.l, align 4, !tbaa !226
  %i.n = fadd nsz float %i.m, f0xBE4CCCCC
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.078 = phi nsz float [ %i.n, %bb.b ], [ f0x3E4CCCCC, %bb.a ]
  %i.o = load float, ptr %2, align 4, !tbaa !80
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.q = load float, ptr %i.p, align 4, !tbaa !81
  %i.r = fsub nsz float %i.q, %.078
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !82 ; 2 uses
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
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !66
  %i.ai = extractelement <2 x i16> %i.ac, i64 0   ; 2 uses
  %i.aj = icmp eq i16 %i.ah, %i.ai
  br i1 %i.aj, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.al = load i16, ptr %i.ak, align 8, !tbaa !67
  %i.am = extractelement <2 x i16> %i.ac, i64 1   ; 2 uses
  %i.an = icmp eq i16 %i.al, %i.am
  br i1 %i.an, label %_ZNK4core8vector3dIsEneERKS1_.exit, label %.thread

_ZNK4core8vector3dIsEneERKS1_.exit:               ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 626
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !68
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
  %i.ar = load i8, ptr %i.a, align 1, !tbaa !83, !range !78, !noundef !79
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.at = and i32 %i.aq, 65535
  %i.au = zext nneg i32 %i.at to i64              ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !86
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !87 ; 3 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = sdiv exact i64 %i.bb, 2080
  %i.bd = icmp ugt i64 %i.bc, %i.au
  br i1 %i.bd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw [2080 x i8], ptr %i.ay, i64 %i.au ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !21
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %bb.h, label %_ZNK14NodeDefManager3getERK7MapNode.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 260000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit

_ZNK14NodeDefManager3getERK7MapNode.exit:         ; preds = %bb.g, %bb.h
  %i.bj = phi ptr [ %i.bi, %bb.h ], [ %i.be, %bb.g ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 1412
  %i.bl = load i8, ptr %i.bk, align 4, !tbaa !125, !range !78, !noundef !79
  %i.bm = and i8 %i.bl, %i.j
  %or.cond.not = icmp eq i8 %i.bm, 0
  br i1 %or.cond.not, label %.thread, label %bb.ay

.thread:                                          ; preds = %bb.e, %_ZNK14NodeDefManager3getERK7MapNode.exit, %bb.c, %bb.d, %_ZNK4core8vector3dIsEneERKS1_.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 653 ; 2 uses
  store i8 0, ptr %i.bn, align 1, !tbaa !126
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
  %.082223.ph = phi float [ %i.et, %.thread214.thread ], [ +inf, %.thread ]
  %.086.idx222.ph = phi i64 [ %.086.add241, %.thread214.thread ], [ 0, %.thread ]
  br label %bb.j

bb.i:                                             ; preds = %.thread214
  br i1 %.177224.ph, label %.thread244, label %bb.ay

bb.j:                                             ; preds = %.outer, %.thread214
  %.086.idx222 = phi i64 [ %.086.add, %.thread214 ], [ %.086.idx222.ph, %.outer ] ; 3 uses
  %.086.ptr = getelementptr inbounds nuw i8, ptr @_ZZN11LocalPlayer15updateSneakNodeEP3MapRKN4core8vector3dIfEES6_E11dir9_center, i64 %.086.idx222 ; 2 uses
  %i.bw = load <2 x i16>, ptr %.086.ptr, align 2, !tbaa !127
  %i.bx = add <2 x i16> %i.bw, %i.ac              ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.086.ptr, i64 4
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !68
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
  %i.cf = load i8, ptr %i.a, align 1, !tbaa !83, !range !78, !noundef !79
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.k, label %.thread214

bb.k:                                             ; preds = %bb.j
  %i.ch = and i32 %i.ce, 65535
  %i.ci = zext nneg i32 %i.ch to i64              ; 2 uses
  %i.cj = load ptr, ptr %i.bp, align 8, !tbaa !86
  %i.ck = load ptr, ptr %i.bo, align 8, !tbaa !87 ; 3 uses
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = sdiv exact i64 %i.cn, 2080
  %i.cp = icmp ugt i64 %i.co, %i.ci
  br i1 %i.cp, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cq = getelementptr inbounds nuw [2080 x i8], ptr %i.ck, i64 %i.ci ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !21
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %bb.m, label %_ZNK14NodeDefManager3getERK7MapNode.exit112

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ck, i64 260000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit112

_ZNK14NodeDefManager3getERK7MapNode.exit112:      ; preds = %bb.l, %bb.m
  %i.cv = phi ptr [ %i.cu, %bb.m ], [ %i.cq, %bb.l ]
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 1412
  %i.cx = load i8, ptr %i.cw, align 4, !tbaa !125, !range !78, !noundef !79
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %bb.n, label %.thread214

bb.n:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit112
  %i.cz = insertelement <2 x i16> %i.bx, i16 %i.ca, i64 1
  %i.da = sitofp nsz <2 x i16> %i.cz to <2 x float>
  %i.db = fmul nnan nsz <2 x float> %i.da, splat (float 1.000000e+01) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  invoke void @_ZNK7MapNode17getCollisionBoxesEPK14NodeDefManagerPSt6vectorIN4core8aabbox3dIfEESaIS6_EEh(ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull %i.h, ptr noundef nonnull %5, i8 noundef zeroext 0)
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %bb.n
  %.val103 = load ptr, ptr %5, align 8, !tbaa !128 ; 9 uses
  %.val104 = load ptr, ptr %i.bq, align 8, !tbaa !128 ; 3 uses
  %i.dc = icmp eq ptr %.val103, %.val104
  br i1 %i.dc, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.sroa.0186.0.copyload = load float, ptr %.val103, align 4, !tbaa !35
  %.sroa.13.0..val103.sroa_idx = getelementptr inbounds nuw i8, ptr %.val103, i64 8
  %i.dd = load <2 x float>, ptr %.sroa.13.0..val103.sroa_idx, align 4, !tbaa !35
  %.sroa.26.12..sroa_idx = getelementptr inbounds nuw i8, ptr %.val103, i64 20
  %.sroa.26.12.copyload = load float, ptr %.sroa.26.12..sroa_idx, align 4, !tbaa !35
  %.sroa.01.07.i = getelementptr inbounds nuw i8, ptr %.val103, i64 24 ; 2 uses
  %.not8.i = icmp eq ptr %.sroa.01.07.i, %.val104
  %i.de = shufflevector <2 x float> %i.dd, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.df = insertelement <4 x float> %i.de, float %.sroa.0186.0.copyload, i64 0
  %i.dg = insertelement <4 x float> %i.df, float %.sroa.26.12.copyload, i64 3 ; 3 uses
  br i1 %.not8.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.p, %.lr.ph.i
  %.sroa.01.010.i = phi ptr [ %.sroa.01.0.i, %.lr.ph.i ], [ %.sroa.01.07.i, %bb.p ] ; 3 uses
  %.0.val.pn9.i = phi ptr [ %.sroa.01.010.i, %.lr.ph.i ], [ %.val103, %bb.p ] ; 2 uses
  %i.dh = phi <4 x float> [ %i.ec, %.lr.ph.i ], [ %i.dg, %bb.p ] ; 3 uses
  %i.di = phi <4 x float> [ %i.eb, %.lr.ph.i ], [ %i.dg, %bb.p ]
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.val.pn9.i, i64 44
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !82, !noalias !227
  %i.dl = load float, ptr %.sroa.01.010.i, align 4, !tbaa !80, !noalias !227
  %i.dm = getelementptr inbounds nuw i8, ptr %.0.val.pn9.i, i64 32
  %i.dn = load <2 x float>, ptr %i.dm, align 4, !tbaa !35, !noalias !227
  %i.do = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dp = insertelement <2 x float> %i.do, float %i.dk, i64 1
  %i.dq = shufflevector <2 x float> %i.dp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 4 uses
  %i.dr = fcmp nsz olt <4 x float> %i.dq, %i.dh
  %i.ds = fcmp nsz ogt <4 x float> %i.dq, %i.dh
  %i.dt = shufflevector <4 x i1> %i.dr, <4 x i1> %i.ds, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.du = select <4 x i1> %i.dt, <4 x float> %i.dq, <4 x float> %i.di
  %i.dv = select <4 x i1> %i.dt, <4 x float> %i.dq, <4 x float> %i.dh ; 3 uses
  %i.dw = insertelement <2 x float> %i.do, float %i.dl, i64 0
  %i.dx = shufflevector <2 x float> %i.dw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 4 uses
  %i.dy = fcmp nsz olt <4 x float> %i.dx, %i.dv
  %i.dz = fcmp nsz ogt <4 x float> %i.dx, %i.dv
  %i.ea = shufflevector <4 x i1> %i.dy, <4 x i1> %i.dz, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.eb = select <4 x i1> %i.ea, <4 x float> %i.dx, <4 x float> %i.du ; 2 uses
  %i.ec = select <4 x i1> %i.ea, <4 x float> %i.dx, <4 x float> %i.dv
  %.sroa.01.0.i = getelementptr inbounds nuw i8, ptr %.sroa.01.010.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.01.0.i, %.val104
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !222

.loopexit:                                        ; preds = %.lr.ph.i, %bb.o, %bb.p
  %i.ed = phi <4 x float> [ zeroinitializer, %bb.o ], [ %i.dg, %bb.p ], [ %i.eb, %.lr.ph.i ] ; 2 uses
  %i.ee = shufflevector <4 x float> %i.ed, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ef = shufflevector <4 x float> %i.ed, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.eg = fadd nsz <2 x float> %i.ee, %i.ef
  %i.eh = fmul nsz <2 x float> %i.eg, splat (float 5.000000e-01) ; 2 uses
  %foldExtExtBinop = fadd nsz <2 x float> %i.db, %i.eh
  %i.ei = extractelement <2 x float> %foldExtExtBinop, i64 0
  %foldExtExtBinop287 = fadd nsz <2 x float> %i.db, %i.eh
  %i.ej = extractelement <2 x float> %foldExtExtBinop287, i64 1
  %.not.i.i.i = icmp eq ptr %.val103, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %.loopexit
  %i.ek = load ptr, ptr %i.br, align 8, !tbaa !130
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = ptrtoint ptr %.val103 to i64
  %i.en = sub i64 %i.el, %i.em
  call void @_ZdlPvm(ptr noundef nonnull %.val103, i64 noundef %i.en) #25
  br label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EED2Ev.exit: ; preds = %.loopexit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.eo = load float, ptr %2, align 4, !tbaa !80
  %i.ep = fsub nsz float %i.eo, %i.ei             ; 3 uses
  %i.eq = load float, ptr %i.s, align 4, !tbaa !82
  %i.er = fsub nsz float %i.eq, %i.ej             ; 3 uses
  %i.es = fmul nsz float %i.er, %i.er
  %i.et = call nsz noundef float @llvm.fmuladd.f32(float %i.ep, float %i.ep, float %i.es) ; 2 uses
  %i.eu = fcmp nsz ogt float %i.et, %.082223.ph
  br i1 %i.eu, label %.thread214, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EED2Ev.exit
  %i.ev = call nsz noundef float @llvm.fabs.f32(float %i.ep)
  %i.ew = load float, ptr %3, align 4, !tbaa !80
  %i.ex = fadd nsz float %i.ew, 5.500000e+00
  %i.ey = fcmp nsz ogt float %i.ev, %i.ex
  br i1 %i.ey, label %.thread214, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ez = call nsz noundef float @llvm.fabs.f32(float %i.er)
  %i.fa = load float, ptr %i.bs, align 4, !tbaa !82
  %i.fb = fadd nsz float %i.fa, 5.500000e+00
  %i.fc = fcmp nsz ogt float %i.ez, %i.fb
  br i1 %i.fc, label %.thread214, label %bb.v

bb.t:                                             ; preds = %bb.n
  %i.fd = landingpad { ptr, i32 }
          cleanup
  %i.fe = load ptr, ptr %5, align 8, !tbaa !131   ; 3 uses
  %.not.i.i.i117 = icmp eq ptr %i.fe, null
  br i1 %.not.i.i.i117, label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EED2Ev.exit118, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ff = load ptr, ptr %i.br, align 8, !tbaa !130
  %i.fg = ptrtoint ptr %i.ff to i64
  %i.fh = ptrtoint ptr %i.fe to i64
  %i.fi = sub i64 %i.fg, %i.fh
  call void @_ZdlPvm(ptr noundef nonnull %i.fe, i64 noundef %i.fi) #25
  br label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EED2Ev.exit118

_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EED2Ev.exit118: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.ax

bb.v:                                             ; preds = %bb.s
  %i.fj = load i8, ptr %i.bt, align 1, !tbaa !132, !range !78, !noundef !79
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fl = load float, ptr %i.bu, align 8, !tbaa !228
  %i.fm = load float, ptr %i.bv, align 4, !tbaa !133
  %i.fn = fsub nsz float %i.fl, %i.fm
  %i.fo = fdiv nsz float %i.fn, 1.000000e+01
  %i.fp = call nsz float @llvm.ceil.f32(float %i.fo)
  %i.fq = fptoui float %i.fp to i16               ; 2 uses
  %.not101220 = icmp eq i16 %i.fq, 0
  br i1 %.not101220, label %.thread214.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.w
  %invariant.op = or disjoint i48 %.sroa.0.0.insert.ext.i110, %.sroa.3.0.insert.shift.i106
  br label %.lr.ph

bb.x:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit126
  %i.fr = add i16 %.093221, 1                     ; 2 uses
  %.not101 = icmp ugt i16 %i.fr, %i.fq
  br i1 %.not101, label %.thread214.thread, label %.lr.ph, !llvm.loop !223

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.x
  %.093221 = phi i16 [ %i.fr, %bb.x ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %i.fs = add i16 %.093221, %i.cb
  %.sroa.2.0.insert.ext.i121 = zext i16 %i.fs to i48
  %.sroa.2.0.insert.shift.i122 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i121, 16
  %.sroa.0.0.insert.insert.i125.reass.reass.reass = or disjoint i48 %.sroa.2.0.insert.shift.i122, %invariant.op
  %i.ft = call i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %1, i48 %.sroa.0.0.insert.insert.i125.reass.reass.reass, ptr noundef nonnull %i.a) ; 2 uses
  store i32 %i.ft, ptr %4, align 4
  %i.fu = load i8, ptr %i.a, align 1, !tbaa !83, !range !78, !noundef !79
  %i.fv = trunc nuw i8 %i.fu to i1
  br i1 %i.fv, label %bb.y, label %.thread214

bb.y:                                             ; preds = %.lr.ph
  %i.fw = and i32 %i.ft, 65535
  %i.fx = zext nneg i32 %i.fw to i64              ; 2 uses
  %i.fy = load ptr, ptr %i.bp, align 8, !tbaa !86
  %i.fz = load ptr, ptr %i.bo, align 8, !tbaa !87 ; 3 uses
  %i.ga = ptrtoint ptr %i.fy to i64
  %i.gb = ptrtoint ptr %i.fz to i64
  %i.gc = sub i64 %i.ga, %i.gb
  %i.gd = sdiv exact i64 %i.gc, 2080
  %i.ge = icmp ugt i64 %i.gd, %i.fx
  br i1 %i.ge, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.gf = getelementptr inbounds nuw [2080 x i8], ptr %i.fz, i64 %i.fx ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !21
  %i.gi = icmp eq i64 %i.gh, 0
  br i1 %i.gi, label %bb.aa, label %_ZNK14NodeDefManager3getERK7MapNode.exit126

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fz, i64 260000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit126

_ZNK14NodeDefManager3getERK7MapNode.exit126:      ; preds = %bb.z, %bb.aa
  %i.gk = phi ptr [ %i.gj, %bb.aa ], [ %i.gf, %bb.z ]
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 1412
  %i.gm = load i8, ptr %i.gl, align 4, !tbaa !125, !range !78, !noundef !79
  %i.gn = trunc nuw i8 %i.gm to i1
  br i1 %i.gn, label %.thread214, label %bb.x

bb.ab:                                            ; preds = %bb.v
  %i.go = add i16 %i.cb, 1
  %.sroa.2.0.insert.ext.i129 = zext i16 %i.go to i48
  %.sroa.2.0.insert.shift.i130 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i129, 16
  %.sroa.2.0.insert.insert.i131 = or disjoint i48 %.sroa.3.0.insert.shift.i106, %.sroa.2.0.insert.shift.i130
  %.sroa.0.0.insert.insert.i133 = or disjoint i48 %.sroa.2.0.insert.insert.i131, %.sroa.0.0.insert.ext.i110
  %i.gp = call i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %1, i48 %.sroa.0.0.insert.insert.i133, ptr noundef nonnull %i.a) ; 2 uses
  store i32 %i.gp, ptr %4, align 4
  %i.gq = load i8, ptr %i.a, align 1, !tbaa !83, !range !78, !noundef !79
  %i.gr = trunc nuw i8 %i.gq to i1
  br i1 %i.gr, label %bb.ac, label %.thread214

bb.ac:                                            ; preds = %bb.ab
  %i.gs = and i32 %i.gp, 65535
  %i.gt = zext nneg i32 %i.gs to i64              ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN11LocalPlayer12applyControlEfP11Environment:bb.a
  %i.ka = load i8, ptr %i.jz, align 2, !tbaa !145, !range !78, !noundef !79
  %i.kb = trunc nuw i8 %i.ka to i1
  br i1 %i.kb, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 419
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !139, !range !78, !noundef !79
  %i.ke = trunc nuw i8 %i.kd to i1
  br i1 %i.ke, label %bb.cb, label %bb.ce

bb.cb:                                            ; preds = %bb.ca, %bb.bz, %bb.by
  br i1 %i.an, label %bb.cj, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.kg = load i8, ptr %i.kf, align 8, !tbaa !71, !range !78, !noundef !79
  %i.kh = trunc nuw i8 %i.kg to i1
  br i1 %i.kh, label %bb.cd, label %bb.cj

bb.cd:                                            ; preds = %bb.cc
  %i.ki = load i8, ptr %i.fc, align 1, !tbaa !198, !range !78, !noundef !79
  %i.kj = trunc nuw i8 %i.ki to i1
  br i1 %i.kj, label %bb.ce, label %bb.cj

bb.ce:                                            ; preds = %bb.cd, %bb.ca
  br i1 %.3, label %bb.ci, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  br i1 %i.ar, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 242
  %i.kl = load i8, ptr %i.kk, align 2, !tbaa !279, !range !78, !noundef !79
  %i.km = trunc nuw i8 %i.kl to i1
  br i1 %i.km, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ce, %bb.cg, %bb.ch
  %.sink251 = phi i64 [ 92, %bb.ch ], [ 96, %bb.cg ], [ 96, %bb.ce ]
  %.sink250 = phi i64 [ 304, %bb.ch ], [ 312, %bb.cg ], [ 312, %bb.ce ]
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 %.sink251
  %.sink = load float, ptr %i.kn, align 4, !tbaa !35
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 %.sink250
  %i.kp = load float, ptr %i.ko, align 8, !tbaa !35
  %i.kq = fmul nsz float %.sink, %i.kp
  %.pn160 = fmul nsz float %i.kq, 1.000000e+01
  %.0150 = fmul nsz float %1, %.pn160
  br label %bb.cq

bb.cj:                                            ; preds = %bb.cd, %bb.cc, %bb.cb
  br i1 %.3, label %bb.co, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 422
  %i.ks = load i8, ptr %i.kr, align 2, !tbaa !145, !range !78, !noundef !79
  %i.kt = trunc nuw i8 %i.ks to i1
  %or.cond22 = select i1 %i.kt, i1 %i.bg, i1 false
  br i1 %or.cond22, label %bb.co, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 419
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !139, !range !78, !noundef !79
  %i.kw = trunc nuw i8 %i.kv to i1
  br i1 %i.kw, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.ky = load i8, ptr %i.kx, align 4, !tbaa !143, !range !78, !noundef !79
  %i.kz = trunc nuw i8 %i.ky to i1
  %or.cond25 = select i1 %i.kz, i1 %i.bg, i1 false
  br i1 %or.cond25, label %bb.co, label %bb.cp

bb.cn:                                            ; preds = %bb.cl
  br i1 %i.bg, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cm, %bb.ck, %bb.cn, %bb.cj
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.lb = load float, ptr %i.la, align 8, !tbaa !290
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ld = load float, ptr %i.lc, align 8, !tbaa !291
  %i.le = fmul nsz float %i.lb, %i.ld
  %i.lf = fmul nsz float %i.le, 1.000000e+01
  %i.lg = fmul nsz float %1, %i.lf                ; 2 uses
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cn, %bb.cm
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.li = load float, ptr %i.lh, align 8, !tbaa !292
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.lk = load float, ptr %i.lj, align 4, !tbaa !293
  %i.ll = fmul nsz float %i.li, %i.lk
  %i.lm = fmul nsz float %i.ll, 1.000000e+01
  %i.ln = fmul nsz float %1, %i.lm                ; 2 uses
  br label %bb.cq

bb.cq:                                            ; preds = %bb.co, %bb.cp, %bb.ci
  %.1151 = phi nsz float [ %i.lg, %bb.co ], [ %i.ln, %bb.cp ], [ %.0150, %bb.ci ]
  %.0149 = phi nsz float [ %i.lg, %bb.co ], [ %i.ln, %bb.cp ], [ 0.000000e+00, %bb.ci ]
  br i1 %i.an, label %bb.cu, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 419
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !139, !range !78, !noundef !79
  %i.lq = trunc nuw i8 %i.lp to i1
  br i1 %i.lq, label %bb.cu, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.ls = load i8, ptr %i.lr, align 4, !tbaa !143, !range !78, !noundef !79
  %i.lt = trunc nuw i8 %i.ls to i1
  br i1 %i.lt, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.lu = call nsz noundef float @_ZN11LocalPlayer13getSlipFactorEP11EnvironmentRKN4core8vector3dIfEE(ptr noundef nonnull align 8 dereferenceable(864) %0, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(12) %3)
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs, %bb.cr, %bb.cq
  %.0148 = phi nsz float [ 1.000000e+00, %bb.cq ], [ 1.000000e+00, %bb.cr ], [ 1.000000e+00, %bb.cs ], [ %i.lu, %bb.ct ]
  br i1 %i.ay, label %bb.cv, label %._crit_edge

._crit_edge:                                      ; preds = %bb.cu
  %.pre = load float, ptr %3, align 8, !tbaa !80
  %.pre230 = load float, ptr %i.o, align 4, !tbaa !81
  %.pre232 = load float, ptr %i.p, align 8, !tbaa !82
  br label %bb.cy

bb.cv:                                            ; preds = %bb.cu
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 419
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !139, !range !78, !noundef !79
  %i.lx = trunc nuw i8 %i.lw to i1
  %.pre229 = load float, ptr %3, align 8, !tbaa !80 ; 5 uses
  %.pre231 = load float, ptr %i.o, align 4, !tbaa !81 ; 4 uses
  %.pre233 = load float, ptr %i.p, align 8, !tbaa !82 ; 5 uses
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
  store i8 1, ptr %i.b, align 8, !tbaa !278
  br label %bb.cy

bb.cy:                                            ; preds = %._crit_edge, %bb.cw, %bb.cx, %bb.cv
  %i.me = phi float [ %.pre232, %._crit_edge ], [ %.pre233, %bb.cw ], [ %.pre233, %bb.cx ], [ %.pre233, %bb.cv ]
  %i.mf = phi float [ %.pre230, %._crit_edge ], [ %.pre231, %bb.cw ], [ %.pre231, %bb.cx ], [ %.pre231, %bb.cv ]
  %i.mg = phi float [ %.pre, %._crit_edge ], [ %.pre229, %bb.cw ], [ %.pre229, %bb.cx ], [ %.pre229, %bb.cv ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.mh = fadd nsz float %.sroa.6.3, %i.mf
  %i.mi = load float, ptr %i.bm, align 8, !tbaa !294 ; 5 uses
  %i.mj = fmul nsz float %i.mg, %i.mi
  %i.mk = fmul nsz float %i.mh, %i.mi
  %i.ml = fmul nsz float %i.me, %i.mi
  %.sroa.0.0.vec.insert.i205 = insertelement <2 x float> poison, float %i.mj, i64 0
  %.sroa.0.4.vec.insert.i206 = insertelement <2 x float> %.sroa.0.0.vec.insert.i205, float %i.mk, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i206, ptr %6, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %i.ml, ptr %.sroa.2.0..sroa_idx, align 8
  %i.mm = fmul nsz float %.1151, %i.mi
  %i.mn = fmul nsz float %.0148, %i.mm
  %i.mo = fmul nsz float %.0149, %i.mi
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
  %i.a = load <2 x float>, ptr %0, align 4, !tbaa !35 ; 4 uses
  %foldExtExtBinop = fmul nsz <2 x float> %i.a, %i.a
  %i.b = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.c = extractelement <2 x float> %i.a, i64 0   ; 2 uses
  %i.d = tail call nsz float @llvm.fmuladd.f32(float %i.c, float %i.c, float %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !82 ; 3 uses
  %i.g = tail call nsz float @llvm.fmuladd.f32(float %i.f, float %i.f, float %i.d) ; 2 uses
  %i.h = fcmp nsz oeq float %i.g, 0.000000e+00
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = fpext nsz float %i.g to double
  %i.j = tail call nsz double @llvm.sqrt.f64(double %i.i)
  %i.k = fdiv nsz double 1.000000e+00, %i.j       ; 2 uses
  %i.l = fpext nsz <2 x float> %i.a to <2 x double>
  %i.m = insertelement <2 x double> poison, double %i.k, i64 0
  %i.n = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> zeroinitializer
  %i.o = fmul nsz <2 x double> %i.n, %i.l
  %i.p = fptrunc nsz <2 x double> %i.o to <2 x float>
  store <2 x float> %i.p, ptr %0, align 4, !tbaa !35
  %i.q = fpext nsz float %i.f to double
  %i.r = fmul nsz double %i.k, %i.q
  %i.s = fptrunc nsz double %i.r to float
  store float %i.s, ptr %i.e, align 4, !tbaa !82
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef float @_ZN11LocalPlayer13getSlipFactorEP11EnvironmentRKN4core8vector3dIfEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(864) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !206  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !0 ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !33
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef nonnull align 8 dereferenceable(144) ptr %i.i(ptr noundef nonnull align 8 dereferenceable(88) %1)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.l = load i8, ptr %i.k, align 4, !tbaa !77, !range !78, !noundef !79
  %i.m = trunc nuw i8 %i.l to i1
  %.sroa.0.0.in.v.i = select i1 %i.m, i64 622, i64 616
  %.sroa.0.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0.in.v.i
  %.sroa.0.0.i = load i48, ptr %.sroa.0.0.in.i, align 2, !tbaa !127
  %i.n = tail call i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.j, i48 %.sroa.0.0.i, ptr noundef null)
  %i.o = and i32 %i.n, 65535
  %i.p = zext nneg i32 %i.o to i64                ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !86
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !87   ; 3 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = sdiv exact i64 %i.w, 2080
  %i.y = icmp ugt i64 %i.x, %i.p
  br i1 %i.y, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw [2080 x i8], ptr %i.t, i64 %i.p ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !21
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.c, label %_ZNK14NodeDefManager3getERK7MapNode.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 260000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit

_ZNK14NodeDefManager3getERK7MapNode.exit:         ; preds = %bb.b, %bb.c
  %i.ae = phi ptr [ %i.ad, %bb.c ], [ %i.z, %bb.b ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1412
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !125, !range !78, !noundef !79
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %._crit_edge.i.i, label %.thread

._crit_edge.i.i:                                  ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.ai, ptr %3, align 8, !tbaa !20
  store i64 8751168559530994803, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 8, ptr %i.aj, align 8, !tbaa !21
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i8 0, ptr %i.ak, align 8, !tbaa !17
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.am = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc18 unwind label %bb.e   ; 2 uses

.noexc18:                                         ; preds = %._crit_edge.i.i
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit, label %bb.d

bb.d:                                             ; preds = %.noexc18
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !195
  br label %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit

_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit: ; preds = %bb.d, %.noexc18
  %.0.i = phi i32 [ %i.ap, %bb.d ], [ 0, %.noexc18 ] ; 4 uses
  %i.aq = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.ai
  br i1 %i.ar, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit
  %i.as = load i64, ptr %i.ai, align 8, !tbaa !17
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #25
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  %i.av = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.ai
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.e
  %i.ax = load i64, ptr %i.ai, align 8, !tbaa !17
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
  %i.ba = load float, ptr %2, align 4, !tbaa !80
  %i.bb = fcmp nsz oeq float %i.ba, 0.000000e+00
  br i1 %i.bb, label %bb.g, label %_ZNK4core8vector3dIfEeqERKS1_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !81
  %i.be = fcmp nsz oeq float %i.bd, 0.000000e+00
  br i1 %i.be, label %_ZNK4core8vector3dIfEeqERKS1_.exit, label %_ZNK4core8vector3dIfEeqERKS1_.exit.thread

_ZNK4core8vector3dIfEeqERKS1_.exit:               ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !82
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
  %i.b = load float, ptr %i.a, align 8, !tbaa !295 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 716
  %i.d = load float, ptr %i.c, align 4, !tbaa !296 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %.sroa.0101.0.copyload = load float, ptr %i.e, align 8, !tbaa !35 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 364 ; 2 uses
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !35 ; 3 uses
  %.sroa.11104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %.sroa.11104.0.copyload = load float, ptr %.sroa.11104.0..sroa_idx, align 8, !tbaa !35 ; 2 uses
  %i.f = fneg nsz float %i.b
  %i.g = fpext nsz float %i.f to double
  %i.h = fmul nsz double %i.g, f0x3F91DF46A2529D39
  %sincos.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.h) ; 2 uses
  %sin.i = extractvalue { double, double } %sincos.i, 0
  %cos.i = extractvalue { double, double } %sincos.i, 1
  %i.i = fpext nsz float %.sroa.0101.0.copyload to double
  %i.j = fpext nsz float %.sroa.11104.0.copyload to double ; 2 uses
  %i.k = fneg nsz double %i.j
  %i.l = insertelement <2 x double> poison, double %cos.i, i64 0
  %i.m = insertelement <2 x double> %i.l, double %sin.i, i64 1 ; 2 uses
  %i.n = insertelement <2 x double> poison, double %i.j, i64 0
  %i.o = insertelement <2 x double> %i.n, double %i.k, i64 1
  %i.p = fmul nsz <2 x double> %i.m, %i.o
  %i.q = insertelement <2 x double> poison, double %i.i, i64 0
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer
  %i.s = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.t = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.r, <2 x double> %i.s, <2 x double> %i.p) ; 2 uses
  %i.u = extractelement <2 x double> %i.t, i64 1
  %i.v = fptrunc nsz double %i.u to float
  %i.w = extractelement <2 x double> %i.t, i64 0
  %i.x = fptrunc nsz double %i.w to float         ; 2 uses
  %i.y = insertelement <2 x float> poison, float %.sroa.7.0.copyload, i64 0
  %i.z = insertelement <2 x float> %i.y, float %i.x, i64 1
  br i1 %4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aa = fneg nsz float %i.d
  %i.ab = fpext nsz float %i.aa to double
  %i.ac = fmul nsz double %i.ab, f0x3F91DF46A2529D39
  %sincos.i28 = tail call nsz { double, double } @llvm.sincos.f64(double %i.ac) ; 2 uses
  %sin.i29 = extractvalue { double, double } %sincos.i28, 0
  %cos.i30 = extractvalue { double, double } %sincos.i28, 1
  %i.ad = fpext nsz float %.sroa.7.0.copyload to double
  %i.ae = fpext nsz float %i.x to double          ; 2 uses
  %i.af = fneg nsz double %i.ae
  %i.ag = insertelement <2 x double> poison, double %sin.i29, i64 0
  %i.ah = insertelement <2 x double> %i.ag, double %cos.i30, i64 1 ; 2 uses
  %i.ai = insertelement <2 x double> poison, double %i.af, i64 0
  %i.aj = insertelement <2 x double> %i.ai, double %i.ae, i64 1
  %i.ak = fmul nsz <2 x double> %i.ah, %i.aj
  %i.al = insertelement <2 x double> poison, double %i.ad, i64 0
  %i.am = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> zeroinitializer
  %i.an = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ao = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.am, <2 x double> %i.an, <2 x double> %i.ak)
  %i.ap = fptrunc nsz <2 x double> %i.ao to <2 x float>
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.aq = phi <2 x float> [ %i.ap, %bb.b ], [ %i.z, %bb.a ]
  %i.ar = load float, ptr %1, align 4, !tbaa !80
  %i.as = fsub nsz float %i.ar, %i.v              ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.au = load <2 x float>, ptr %i.at, align 4, !tbaa !35
  %i.av = fsub nsz <2 x float> %i.au, %i.aq       ; 4 uses
  %i.aw = fcmp nsz ogt float %2, 0.000000e+00
  br i1 %i.aw, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ax = fmul nsz <2 x float> %i.av, <float 0.000000e+00, float 1.000000e+00> ; 5 uses
  %foldExtExtBinop = fmul ninf nsz <2 x float> %i.ax, %i.ax
  %i.ay = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.az = tail call nsz float @llvm.fmuladd.f32(float %i.as, float %i.as, float %i.ay)
  %i.ba = extractelement <2 x float> %i.av, i64 1 ; 4 uses
  %i.bb = tail call nsz float @llvm.fmuladd.f32(float %i.ba, float %i.ba, float %i.az) ; 3 uses
  %i.bc = tail call nsz noundef float @llvm.sqrt.f32(float %i.bb)
  %i.bd = fcmp nsz ogt float %i.bc, %2
  br i1 %i.bd, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.as, i64 0
  %i.be = shufflevector <2 x float> %.sroa.0.0.vec.insert.i, <2 x float> %i.ax, <2 x i32> <i32 0, i32 2>
  %i.bf = fcmp nsz oeq float %i.bb, 0.000000e+00
  br i1 %i.bf, label %_ZN4core8vector3dIfE9normalizeEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bg = fpext nsz float %i.bb to double
  %i.bh = tail call nsz double @llvm.sqrt.f64(double %i.bg)
  %i.bi = fdiv nsz double 1.000000e+00, %i.bh     ; 2 uses
  %i.bj = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bk = insertelement <2 x float> %i.bj, float %i.as, i64 0
  %i.bl = fpext nsz <2 x float> %i.bk to <2 x double>
  %i.bm = insertelement <2 x double> poison, double %i.bi, i64 0
  %i.bn = shufflevector <2 x double> %i.bm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bo = fmul nsz <2 x double> %i.bn, %i.bl
  %i.bp = fptrunc nsz <2 x double> %i.bo to <2 x float>
  %i.bq = fpext nsz float %i.ba to double
  %i.br = fmul nsz double %i.bi, %i.bq
  %i.bs = fptrunc nsz double %i.br to float
  br label %_ZN4core8vector3dIfE9normalizeEv.exit

_ZN4core8vector3dIfE9normalizeEv.exit:            ; preds = %bb.e, %bb.f
  %.sroa.055.0 = phi nsz <2 x float> [ %i.be, %bb.e ], [ %i.bp, %bb.f ] ; 2 uses
  %.sroa.13.0 = phi nsz float [ %i.ba, %bb.e ], [ %i.bs, %bb.f ]
  %.sroa.055.0.vec.extract60 = extractelement <2 x float> %.sroa.055.0, i64 0
  %i.bt = fmul nsz float %2, %.sroa.055.0.vec.extract60
  %i.bu = insertelement <2 x float> poison, float %2, i64 0
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bw = shufflevector <2 x float> %.sroa.055.0, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bx = insertelement <2 x float> %i.bw, float %.sroa.13.0, i64 1
  %i.by = fmul nsz <2 x float> %i.bv, %i.bx
  br label %bb.g

bb.g:                                             ; preds = %_ZN4core8vector3dIfE9normalizeEv.exit, %bb.d, %bb.c
  %.sroa.073.1 = phi nsz float [ 0.000000e+00, %bb.c ], [ %i.bt, %_ZN4core8vector3dIfE9normalizeEv.exit ], [ %i.as, %bb.d ]
  %i.bz = phi <2 x float> [ zeroinitializer, %bb.c ], [ %i.by, %_ZN4core8vector3dIfE9normalizeEv.exit ], [ %i.ax, %bb.d ] ; 4 uses
  %i.ca = fcmp nsz ogt float %3, 0.000000e+00
  %i.cb = extractelement <2 x float> %i.bz, i64 0 ; 3 uses
  br i1 %i.ca, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.cc = extractelement <2 x float> %i.av, i64 0 ; 2 uses
  %i.cd = fcmp nsz ogt float %i.cc, %3
  br i1 %i.cd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ce = fadd nsz float %3, %i.cb
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.cf = fneg nsz float %3
  %i.cg = fcmp nsz olt float %i.cc, %i.cf
  br i1 %i.cg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ch = fsub nsz float %i.cb, %3
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %foldExtExtBinop111 = fadd nsz <2 x float> %i.av, %i.bz
  %i.ci = extractelement <2 x float> %foldExtExtBinop111, i64 0
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.l, %bb.k, %bb.g
  %.sroa.11.2 = phi nsz float [ %i.ce, %bb.i ], [ %i.ch, %bb.k ], [ %i.ci, %bb.l ], [ %i.cb, %bb.g ] ; 2 uses
  %i.cj = insertelement <2 x float> %i.bz, float %.sroa.11.2, i64 0
  br i1 %4, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ck = fpext nsz float %i.d to double
  %i.cl = fmul nsz double %i.ck, f0x3F91DF46A2529D39
  %sincos.i39 = tail call nsz { double, double } @llvm.sincos.f64(double %i.cl) ; 2 uses
  %sin.i40 = extractvalue { double, double } %sincos.i39, 0
  %cos.i41 = extractvalue { double, double } %sincos.i39, 1
  %i.cm = fpext nsz float %.sroa.11.2 to double
  %i.cn = extractelement <2 x float> %i.bz, i64 1
  %i.co = fpext nsz float %i.cn to double         ; 2 uses
  %i.cp = fneg nsz double %i.co
  %i.cq = insertelement <2 x double> poison, double %sin.i40, i64 0
  %i.cr = insertelement <2 x double> %i.cq, double %cos.i41, i64 1 ; 2 uses
  %i.cs = insertelement <2 x double> poison, double %i.cp, i64 0
  %i.ct = insertelement <2 x double> %i.cs, double %i.co, i64 1
  %i.cu = fmul nsz <2 x double> %i.cr, %i.ct
  %i.cv = insertelement <2 x double> poison, double %i.cm, i64 0
  %i.cw = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cx = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cy = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cw, <2 x double> %i.cx, <2 x double> %i.cu)
  %i.cz = fptrunc nsz <2 x double> %i.cy to <2 x float>
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.da = phi <2 x float> [ %i.cz, %bb.n ], [ %i.cj, %bb.m ] ; 2 uses
  %i.db = fpext nsz float %i.b to double
  %i.dc = fmul nsz double %i.db, f0x3F91DF46A2529D39
  %sincos.i42 = tail call nsz { double, double } @llvm.sincos.f64(double %i.dc) ; 2 uses
  %sin.i43 = extractvalue { double, double } %sincos.i42, 0
  %cos.i44 = extractvalue { double, double } %sincos.i42, 1
  %i.dd = fpext nsz float %.sroa.073.1 to double
  %i.de = extractelement <2 x float> %i.da, i64 1
  %i.df = fpext nsz float %i.de to double         ; 2 uses
  %i.dg = fneg nsz double %i.df
  %i.dh = insertelement <2 x double> poison, double %cos.i44, i64 0
  %i.di = insertelement <2 x double> %i.dh, double %sin.i43, i64 1 ; 2 uses
  %i.dj = insertelement <2 x double> poison, double %i.df, i64 0
  %i.dk = insertelement <2 x double> %i.dj, double %i.dg, i64 1
  %i.dl = fmul nsz <2 x double> %i.di, %i.dk
  %i.dm = insertelement <2 x double> poison, double %i.dd, i64 0
  %i.dn = shufflevector <2 x double> %i.dm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.do = shufflevector <2 x double> %i.di, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.dp = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dn, <2 x double> %i.do, <2 x double> %i.dl)
  %i.dq = fptrunc nsz <2 x double> %i.dp to <2 x float> ; 2 uses
  %i.dr = extractelement <2 x float> %i.dq, i64 1
  %i.ds = fadd nsz float %.sroa.0101.0.copyload, %i.dr
  store float %i.ds, ptr %i.e, align 8, !tbaa !80
  %i.dt = extractelement <2 x float> %i.da, i64 0
  %i.du = fadd nsz float %.sroa.7.0.copyload, %i.dt
  store float %i.du, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !81
  %i.dv = extractelement <2 x float> %i.dq, i64 0
  %i.dw = fadd nsz float %.sroa.11104.0.copyload, %i.dv
  store float %i.dw, ptr %.sroa.11104.0..sroa_idx, align 8, !tbaa !82
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i48 @_ZN11LocalPlayer18getStandingNodePosEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(864) %0) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.b = load i8, ptr %i.a, align 4, !tbaa !77, !range !78, !noundef !79
  %i.c = trunc nuw i8 %i.b to i1
  %.sroa.0.0.in.v = select i1 %i.c, i64 622, i64 616
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0.in.v
  %.sroa.0.0 = load i48, ptr %.sroa.0.0.in, align 2, !tbaa !127
  ret i48 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i48 @_ZN11LocalPlayer18getFootstepNodePosEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(864) %0) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 604
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.a, align 4, !tbaa !35 ; 3 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 612
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 4, !tbaa !35 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 724
  %i.c = load float, ptr %i.b, align 4, !tbaa !133
  %.sroa.060.4.vec.extract = extractelement <2 x float> %.sroa.01.0.copyload.i, i64 1
  %i.d = fadd nsz float %.sroa.060.4.vec.extract, %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.f = load i8, ptr %i.e, align 4, !tbaa !143, !range !78, !noundef !79
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.060.0.vec.extract = extractelement <2 x float> %.sroa.01.0.copyload.i, i64 0 ; 2 uses
  %i.h = fcmp nsz ogt float %.sroa.060.0.vec.extract, 0.000000e+00
  %i.i = select nsz i1 %i.h, float 5.000000e+00, float -5.000000e+00
  %i.j = insertelement <2 x float> poison, float %i.d, i64 0
  %i.k = insertelement <2 x float> %i.j, float %.sroa.22.0.copyload.i, i64 1 ; 2 uses
  %i.l = fcmp nsz ogt <2 x float> %i.k, zeroinitializer
  %i.m = fadd nsz float %.sroa.060.0.vec.extract, %i.i
  %i.n = fdiv nsz float %i.m, 1.000000e+01
  %i.o = fptosi float %i.n to i16
  %i.p = select <2 x i1> %i.l, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.q = fadd nsz <2 x float> %i.k, %i.p
  %i.r = fdiv nsz <2 x float> %i.q, splat (float 1.000000e+01)
  %i.s = fptosi <2 x float> %i.r to <2 x i16>
  %i.t = zext <2 x i16> %i.s to <2 x i48>
  %i.u = shl nuw <2 x i48> %i.t, <i48 16, i48 32>
  %.sroa.2.0.insert.insert.i = tail call i48 @llvm.vector.reduce.or.v2i48(<2 x i48> %i.u)
  %.sroa.0.0.insert.ext.i = zext i16 %i.o to i48
  %.sroa.0.0.insert.insert.i = or disjoint i48 %.sroa.2.0.insert.insert.i, %.sroa.0.0.insert.ext.i
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 418
  %i.w = load i8, ptr %i.v, align 2, !tbaa !138, !range !78, !noundef !79
  %i.x = trunc nuw i8 %i.w to i1
  %i.y = insertelement <2 x float> %.sroa.01.0.copyload.i, float %.sroa.22.0.copyload.i, i64 1 ; 2 uses
  %i.z = fcmp nsz ogt <2 x float> %i.y, zeroinitializer
  %i.aa = select <2 x i1> %i.z, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.ab = fadd nsz <2 x float> %i.y, %i.aa
  %i.ac = fdiv nsz <2 x float> %i.ab, splat (float 1.000000e+01) ; 2 uses
  %i.ad = extractelement <2 x float> %i.ac, i64 0
  %i.ae = fptosi float %i.ad to i16
  %i.af = extractelement <2 x float> %i.ac, i64 1
  %i.ag = fptosi float %i.af to i16
  %.sroa.3.0.insert.ext.i34 = zext i16 %i.ag to i48
  %.sroa.3.0.insert.shift.i35 = shl nuw i48 %.sroa.3.0.insert.ext.i34, 32 ; 2 uses
  %.sroa.0.0.insert.ext.i39 = zext i16 %i.ae to i48 ; 2 uses
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ah = fadd nsz float %i.d, -5.000000e-01      ; 2 uses
  %i.ai = fcmp nsz ogt float %i.ah, 0.000000e+00
  %i.aj = select nsz i1 %i.ai, float 5.000000e+00, float -5.000000e+00
  %i.ak = fadd nsz float %i.ah, %i.aj
  %i.al = fdiv nsz float %i.ak, 1.000000e+01
  %i.am = fptosi float %i.al to i16
  %.sroa.2.0.insert.ext.i36 = zext i16 %i.am to i48
  %.sroa.2.0.insert.shift.i37 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i36, 16
  %.sroa.2.0.insert.insert.i38 = or disjoint i48 %.sroa.2.0.insert.shift.i37, %.sroa.3.0.insert.shift.i35
  %.sroa.0.0.insert.insert.i40 = or disjoint i48 %.sroa.2.0.insert.insert.i38, %.sroa.0.0.insert.ext.i39
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.an = fadd nsz float %i.d, -5.000000e+00      ; 2 uses
  %i.ao = fcmp nsz ogt float %i.an, 0.000000e+00
  %i.ap = select nsz i1 %i.ao, float 5.000000e+00, float -5.000000e+00
  %i.aq = fadd nsz float %i.an, %i.ap
  %i.ar = fdiv nsz float %i.aq, 1.000000e+01
  %i.as = fptosi float %i.ar to i16
  %.sroa.2.0.insert.ext.i49 = zext i16 %i.as to i48
  %.sroa.2.0.insert.shift.i50 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i49, 16
  %.sroa.2.0.insert.insert.i51 = or disjoint i48 %.sroa.2.0.insert.shift.i50, %.sroa.3.0.insert.shift.i35
  %.sroa.0.0.insert.insert.i53 = or disjoint i48 %.sroa.2.0.insert.insert.i51, %.sroa.0.0.insert.ext.i39
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.sroa.025.0 = phi i48 [ %.sroa.0.0.insert.insert.i, %bb.b ], [ %.sroa.0.0.insert.insert.i40, %bb.d ], [ %.sroa.0.0.insert.insert.i53, %bb.e ]
  ret i48 %.sroa.025.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i48 @_ZNK11LocalPlayer16getLightPositionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(864) %0) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 604
  %i.b = load float, ptr %i.a, align 4, !tbaa !80 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.d = fcmp nsz ogt float %i.b, 0.000000e+00
  %i.e = select nsz i1 %i.d, float 5.000000e+00, float -5.000000e+00
  %i.f = fadd nsz float %i.b, %i.e
  %i.g = fdiv nsz float %i.f, 1.000000e+01
  %i.h = fptosi float %i.g to i16
  %i.i = load <2 x float>, ptr %i.c, align 8, !tbaa !35
  %i.j = fadd <2 x float> %i.i, <float 1.500000e+01, float -0.000000e+00> ; 2 uses
  %i.k = fcmp nsz ogt <2 x float> %i.j, zeroinitializer
  %i.l = select <2 x i1> %i.k, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.m = fadd nsz <2 x float> %i.j, %i.l
  %i.n = fdiv nsz <2 x float> %i.m, splat (float 1.000000e+01)
  %i.o = fptosi <2 x float> %i.n to <2 x i16>
  %i.p = zext <2 x i16> %i.o to <2 x i48>
  %i.q = shl nuw <2 x i48> %i.p, <i48 16, i48 32>
  %.sroa.2.0.insert.insert.i = tail call i48 @llvm.vector.reduce.or.v2i48(<2 x i48> %i.q)
  %.sroa.0.0.insert.ext.i = zext i16 %i.h to i48
  %.sroa.0.0.insert.insert.i = or disjoint i48 %.sroa.2.0.insert.insert.i, %.sroa.0.0.insert.ext.i
  ret i48 %.sroa.0.0.insert.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { <2 x float>, float } @_ZNK11LocalPlayer12getEyeOffsetEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(864) %0) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.b = load float, ptr %i.a, align 8, !tbaa !297
  %i.c = fmul nsz float %i.b, 1.000000e+01
  %.sroa.0.4.vec.insert = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.c, i64 1
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.0.4.vec.insert, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float 0.000000e+00, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11LocalPlayer6isDeadEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(864) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Z14fatal_error_fnPKcS0_jS0_(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 778, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK11LocalPlayer6isDeadEv) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZNK10GenericCAO10isImmortalEv(ptr noundef nonnull align 8 dereferenceable(1076) %i.b)
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.e = load i16, ptr %i.d, align 8, !tbaa !298
  %i.f = icmp eq i16 %i.e, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = phi i1 [ false, %bb.c ], [ %i.f, %bb.d ]
  ret i1 %i.g
}

; Function Attrs: noreturn
declare void @_Z14fatal_error_fnPKcS0_jS0_(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #17

declare noundef zeroext i1 @_ZNK10GenericCAO10isImmortalEv(ptr noundef nonnull align 8 dereferenceable(1076)) local_unnamed_addr #4

; Function Attrs: nofree nounwind uwtable
define internal void @__cxx_global_var_init.18() #18 section ".text.startup" comdat($_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE, align 8
  %i.c = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS0_EED2Ev, ptr nonnull @_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE, ptr nonnull @__dso_handle) #26 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !301    ; 3 uses
end_hunk_1
