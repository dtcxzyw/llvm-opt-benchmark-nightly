Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/subdivision2d?download=true
inline.NumInlined: 844
inline.NumDeleted: 324
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN2cv8Subdiv2D6insertENS_6Point_IfEE:bb.a

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN2cv8Subdiv2D6VertexC1Ev(ptr noundef nonnull align 4 dereferenceable(16) %i.di)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.w
  %i.dl = load ptr, ptr %i.dh, align 8, !tbaa !22
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16 ; 2 uses
  store ptr %i.dm, ptr %i.dh, align 8, !tbaa !22
  br label %_ZNSt6vectorIN2cv8Subdiv2D6VertexESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit.i

bb.x:                                             ; preds = %bb.v
  invoke void @_ZNSt6vectorIN2cv8Subdiv2D6VertexESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr %i.di)
          to label %.noexc70 unwind label %bb.f

.noexc70:                                         ; preds = %bb.x
  %.pre.i = load ptr, ptr %i.dh, align 8, !tbaa !22
  br label %_ZNSt6vectorIN2cv8Subdiv2D6VertexESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit.i

_ZNSt6vectorIN2cv8Subdiv2D6VertexESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit.i: ; preds = %.noexc70, %.noexc
  %i.dn = phi ptr [ %i.dm, %.noexc ], [ %.pre.i, %.noexc70 ]
  %i.do = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = lshr exact i64 %i.dr, 4
  %i.dt = trunc i64 %i.ds to i32
  %i.du = add i32 %i.dt, -1
  br label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIN2cv8Subdiv2D6VertexESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit.i, %._crit_edge.i
  %i.dv = phi ptr [ %i.do, %_ZNSt6vectorIN2cv8Subdiv2D6VertexESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit.i ], [ %.pre6.i, %._crit_edge.i ]
  %i.dw = phi i32 [ %i.du, %_ZNSt6vectorIN2cv8Subdiv2D6VertexESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit.i ], [ %i.df, %._crit_edge.i ] ; 6 uses
  %i.dx = sext i32 %i.dw to i64                   ; 4 uses
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %i.dv, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !16
  store i32 %i.dz, ptr %i.de, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  invoke void @_ZN2cv8Subdiv2D6VertexC1ENS_6Point_IfEEbi(ptr noundef nonnull align 4 dereferenceable(16) %3, <2 x float> %1, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.z unwind label %bb.f

bb.z:                                             ; preds = %bb.y
  %i.ea = load ptr, ptr %0, align 8, !tbaa !13
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %i.ea, i64 %i.dx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.eb, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  store i32 %i.dw, ptr %i.a, align 4, !tbaa !12
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !34 ; 2 uses
  %i.ee = icmp slt i32 %i.ed, 1
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  br i1 %i.ee, label %bb.aa, label %._crit_edge.i72

._crit_edge.i72:                                  ; preds = %bb.z
  %.pre4.i = load ptr, ptr %i.ef, align 8, !tbaa !8
  br label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !23 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !20
  %.not.i.i73 = icmp eq ptr %i.eh, %i.ej
  br i1 %.not.i.i73, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN2cv8Subdiv2D8QuadEdgeC1Ev(ptr noundef nonnull align 4 dereferenceable(32) %i.eh)
          to label %.noexc75 unwind label %bb.ak

.noexc75:                                         ; preds = %bb.ab
  %i.ek = load ptr, ptr %i.eg, align 8, !tbaa !23
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 32 ; 2 uses
  store ptr %i.el, ptr %i.eg, align 8, !tbaa !23
  br label %_ZNSt6vectorIN2cv8Subdiv2D8QuadEdgeESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit.i

bb.ac:                                            ; preds = %bb.aa
  invoke void @_ZNSt6vectorIN2cv8Subdiv2D8QuadEdgeESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ef, ptr %i.eh)
          to label %.noexc76 unwind label %bb.ak

.noexc76:                                         ; preds = %bb.ac
  %.pre.i74 = load ptr, ptr %i.eg, align 8, !tbaa !23
  br label %_ZNSt6vectorIN2cv8Subdiv2D8QuadEdgeESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit.i

_ZNSt6vectorIN2cv8Subdiv2D8QuadEdgeESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit.i: ; preds = %.noexc76, %.noexc75
  %i.em = phi ptr [ %i.el, %.noexc75 ], [ %.pre.i74, %.noexc76 ]
  %i.en = load ptr, ptr %i.ef, align 8, !tbaa !8  ; 2 uses
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = sub i64 %i.eo, %i.ep
  %i.er = lshr exact i64 %i.eq, 5
  %i.es = trunc i64 %i.er to i32
  %i.et = add i32 %i.es, -1                       ; 2 uses
  store i32 %i.et, ptr %i.ec, align 8, !tbaa !34
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIN2cv8Subdiv2D8QuadEdgeESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit.i, %._crit_edge.i72
  %i.eu = phi ptr [ %i.en, %_ZNSt6vectorIN2cv8Subdiv2D8QuadEdgeESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit.i ], [ %.pre4.i, %._crit_edge.i72 ]
  %i.ev = phi i32 [ %i.et, %_ZNSt6vectorIN2cv8Subdiv2D8QuadEdgeESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit.i ], [ %i.ed, %._crit_edge.i72 ] ; 2 uses
  %i.ew = shl nsw i32 %i.ev, 2                    ; 4 uses
  %i.ex = sext i32 %i.ev to i64                   ; 3 uses
  %i.ey = getelementptr inbounds nuw [32 x i8], ptr %i.eu, i64 %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !12
  store i32 %i.fa, ptr %i.ec, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  invoke void @_ZN2cv8Subdiv2D8QuadEdgeC1Ei(ptr noundef nonnull align 4 dereferenceable(32) %2, i32 noundef %i.ew)
          to label %bb.ae unwind label %bb.ak

bb.ae:                                            ; preds = %bb.ad
  %i.fb = load ptr, ptr %i.ef, align 8, !tbaa !8
  %i.fc = getelementptr inbounds nuw [32 x i8], ptr %i.fb, i64 %i.ex
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.fc, ptr noundef nonnull align 4 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.fd = ashr i32 %.promoted, 2
  %i.fe = sext i32 %i.fd to i64
  %i.ff = load ptr, ptr %i.ef, align 8, !tbaa !8  ; 4 uses
  %i.fg = getelementptr inbounds nuw [32 x i8], ptr %i.ff, i64 %i.fe ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fi = and i32 %.promoted, 3
  %i.fj = zext nneg i32 %i.fi to i64              ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.fj
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !12 ; 4 uses
  %i.fm = getelementptr inbounds nuw [32 x i8], ptr %i.ff, i64 %i.ex ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store i32 %i.fl, ptr %i.fn, align 4, !tbaa !12
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  store i32 %i.dw, ptr %i.fo, align 4, !tbaa !12
  %i.fp = sext i32 %i.fl to i64
  %i.fq = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  %i.fr = getelementptr inbounds nuw [16 x i8], ptr %i.fq, i64 %i.fp
  store i32 %i.ew, ptr %i.fr, align 4, !tbaa !16
  %i.fs = or disjoint i32 %i.ew, 2
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %i.fq, i64 %i.dx
  store i32 %i.fs, ptr %i.ft, align 4, !tbaa !16
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.fj ; 2 uses
  %i.fv = load i32, ptr %i.fm, align 4, !tbaa !12 ; 3 uses
  %i.fw = add nsw i32 %i.fv, 1
  %i.fx = and i32 %i.fw, 3
  %i.fy = load i32, ptr %i.fu, align 4, !tbaa !12 ; 3 uses
  %i.fz = add nsw i32 %i.fy, 1
  %i.ga = and i32 %i.fz, 3
  %i.gb = ashr i32 %i.fv, 2
  %i.gc = sext i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw [32 x i8], ptr %i.ff, i64 %i.gc
  %i.ge = zext nneg i32 %i.fx to i64
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %i.ge ; 2 uses
  %i.gg = ashr i32 %i.fy, 2
  %i.gh = sext i32 %i.gg to i64
  %i.gi = getelementptr inbounds nuw [32 x i8], ptr %i.ff, i64 %i.gh
  %i.gj = zext nneg i32 %i.ga to i64
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %i.gj ; 2 uses
  store i32 %i.fy, ptr %i.fm, align 4, !tbaa !12
  store i32 %i.fv, ptr %i.fu, align 4, !tbaa !12
  %i.gl = load i32, ptr %i.gf, align 4, !tbaa !12
  %i.gm = load i32, ptr %i.gk, align 4, !tbaa !12
  store i32 %i.gm, ptr %i.gf, align 4, !tbaa !12
  store i32 %i.gl, ptr %i.gk, align 4, !tbaa !12
  br label %bb.af

bb.af:                                            ; preds = %bb.ag, %bb.ae
  %i.gn = phi i32 [ %.promoted, %bb.ae ], [ %i.hc, %bb.ag ]
  %.045 = phi i32 [ %i.ew, %bb.ae ], [ %i.gp, %bb.ag ]
  %i.go = xor i32 %.045, 2
  %i.gp = invoke noundef i32 @_ZN2cv8Subdiv2D12connectEdgesEii(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %i.gn, i32 noundef %i.go)
          to label %bb.ag unwind label %bb.al     ; 3 uses

bb.ag:                                            ; preds = %bb.af
  %i.gq = ashr i32 %i.gp, 2
  %i.gr = sext i32 %i.gq to i64
  %i.gs = load ptr, ptr %i.ef, align 8, !tbaa !8  ; 4 uses
  %i.gt = getelementptr inbounds nuw [32 x i8], ptr %i.gs, i64 %i.gr
  %i.gu = add nsw i32 %i.gp, 1
  %i.gv = and i32 %i.gu, 3
  %i.gw = zext nneg i32 %i.gv to i64
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.gw
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !12 ; 3 uses
  %i.gz = and i32 %i.gy, -4
  %i.ha = add i32 %i.gy, 1
  %i.hb = and i32 %i.ha, 3                        ; 2 uses
  %i.hc = or disjoint i32 %i.hb, %i.gz            ; 3 uses
  %i.hd = ashr i32 %i.gy, 2
  %i.he = sext i32 %i.hd to i64
  %i.hf = getelementptr inbounds nuw [32 x i8], ptr %i.gs, i64 %i.he
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %i.hh = xor i32 %i.hb, 2
  %i.hi = zext nneg i32 %i.hh to i64
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.hi
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !12
  %.not52 = icmp eq i32 %i.hk, %i.fl
  br i1 %.not52, label %bb.ah, label %bb.af, !llvm.loop !58

bb.ah:                                            ; preds = %bb.ag
  store i32 %i.hc, ptr %i.b, align 4, !tbaa !12
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !23
  %i.hn = ptrtoint ptr %i.hm to i64
  %i.ho = ptrtoint ptr %i.gs to i64
  %i.hp = sub i64 %i.hn, %i.ho
  %sh.diff = lshr i64 %i.hp, 3
  %tr.sh.diff = trunc i64 %sh.diff to i32         ; 2 uses
  %i.hq = icmp sgt i32 %tr.sh.diff, 3
  br i1 %i.hq, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.ah
  %11 = and i32 %tr.sh.diff, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ao
  %i.hr = phi ptr [ %i.mp, %bb.ao ], [ %i.gs, %.lr.ph.preheader ] ; 4 uses
  %.04491 = phi i32 [ %i.mq, %bb.ao ], [ 0, %.lr.ph.preheader ]
  %storemerge8990 = phi i32 [ %storemerge, %bb.ao ], [ %i.hc, %.lr.ph.preheader ] ; 4 uses
  %i.hs = ashr i32 %storemerge8990, 2
  %i.ht = sext i32 %i.hs to i64                   ; 2 uses
  %i.hu = getelementptr inbounds nuw [32 x i8], ptr %i.hr, i64 %i.ht ; 3 uses
  %i.hv = add i32 %storemerge8990, 1
  %i.hw = and i32 %i.hv, 3
  %i.hx = zext nneg i32 %i.hw to i64              ; 2 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %i.hx
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !12 ; 2 uses
  %i.ia = add i32 %i.hz, 1
  %i.ib = and i32 %i.ia, 3
  %i.ic = ashr i32 %i.hz, 2
  %i.id = sext i32 %i.ic to i64
  %i.ie = getelementptr inbounds nuw [32 x i8], ptr %i.hr, i64 %i.id
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  %i.ig = xor i32 %i.ib, 2
  %i.ih = zext nneg i32 %i.ig to i64
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.ih
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !12
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hu, i64 16 ; 2 uses
  %i.il = and i32 %storemerge8990, 3              ; 2 uses
  %i.im = zext nneg i32 %i.il to i64              ; 2 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %i.im
  %i.io = load i32, ptr %i.in, align 4, !tbaa !12 ; 2 uses
  %i.ip = xor i32 %i.il, 2
  %i.iq = zext nneg i32 %i.ip to i64
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %i.iq
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !12
  %i.it = sext i32 %i.ij to i64
  %i.iu = load ptr, ptr %0, align 8, !tbaa !13    ; 4 uses
  %i.iv = getelementptr inbounds nuw [16 x i8], ptr %i.iu, i64 %i.it
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %.sroa.04.0.copyload = load <2 x float>, ptr %i.iw, align 4 ; 2 uses
  %i.ix = sext i32 %i.io to i64
  %i.iy = getelementptr inbounds nuw [16 x i8], ptr %i.iu, i64 %i.ix
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.ja = load <2 x float>, ptr %i.iz, align 4    ; 2 uses
  %i.jb = sext i32 %i.is to i64
  %i.jc = getelementptr inbounds nuw [16 x i8], ptr %i.iu, i64 %i.jb
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.je = load <2 x float>, ptr %i.jd, align 4
  %.sroa.02.0.vec.extract.i.i = extractelement <2 x float> %.sroa.04.0.copyload, i64 0
  %i.jf = fpext float %.sroa.02.0.vec.extract.i.i to double ; 5 uses
  %.sroa.0.4.vec.extract.i.i = extractelement <2 x float> %i.ja, i64 1
  %i.jg = fpext float %.sroa.0.4.vec.extract.i.i to double ; 4 uses
  %.sroa.02.4.vec.extract.i.i = extractelement <2 x float> %.sroa.04.0.copyload, i64 1
  %i.jh = fpext float %.sroa.02.4.vec.extract.i.i to double ; 4 uses
  %i.ji = fsub double %i.jg, %i.jh                ; 2 uses
  %i.jj = fpext <2 x float> %i.je to <2 x double> ; 5 uses
  %i.jk = extractelement <2 x double> %i.jj, i64 0
  %i.jl = fsub double %i.jk, %i.jf                ; 2 uses
  %i.jm = extractelement <2 x double> %i.jj, i64 1
  %i.jn = fsub double %i.jm, %i.jh                ; 2 uses
  %.sroa.0.0.vec.extract.i.i = extractelement <2 x float> %i.ja, i64 0
  %i.jo = fpext float %.sroa.0.0.vec.extract.i.i to double ; 4 uses
  %i.jp = fsub double %i.jo, %i.jf
  %i.jq = fneg double %i.jp                       ; 2 uses
  %i.jr = fmul double %i.jn, %i.jq
  %i.js = call noundef double @llvm.fmuladd.f64(double %i.jl, double %i.ji, double %i.jr) ; 2 uses
  %i.jt = fcmp ogt double %i.js, 0.000000e+00
  br i1 %i.jt, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %.lr.ph
  %i.ju = shufflevector <2 x double> %i.jj, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.jv = getelementptr inbounds nuw [16 x i8], ptr %i.iu, i64 %i.dx
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.jw, align 4 ; 2 uses
  %.sroa.01.0.vec.extract.i.i78 = extractelement <2 x float> %.sroa.0.0.copyload, i64 0
  %i.jx = fpext float %.sroa.01.0.vec.extract.i.i78 to double ; 4 uses
  %.sroa.01.4.vec.extract.i.i82 = extractelement <2 x float> %.sroa.0.0.copyload, i64 1
  %i.jy = fpext float %.sroa.01.4.vec.extract.i.i82 to double ; 4 uses
  %i.jz = insertelement <4 x double> poison, double %i.jx, i64 0
  %i.ka = insertelement <4 x double> %i.jz, double %i.jg, i64 1
  %i.kb = insertelement <4 x double> %i.ka, double %i.jo, i64 2
  %i.kc = insertelement <4 x double> %i.kb, double %i.jy, i64 3
  %i.kd = fsub <4 x double> %i.kc, %i.ju          ; 4 uses
  %i.ke = extractelement <4 x double> %i.kd, i64 2
  %i.kf = fneg double %i.ke
  %i.kg = shufflevector <4 x double> %i.kd, <4 x double> poison, <2 x i32> <i32 poison, i32 3>
  %i.kh = insertelement <2 x double> %i.kg, double %i.jh, i64 0 ; 2 uses
  %i.ki = insertelement <2 x double> %i.kh, double %i.kf, i64 1
  %i.kj = fmul <2 x double> %i.kh, %i.ki
  %i.kk = insertelement <4 x double> poison, double %i.jf, i64 0
  %i.kl = shufflevector <4 x double> %i.kk, <4 x double> %i.kd, <2 x i32> <i32 0, i32 4>
  %i.km = insertelement <4 x double> poison, double %i.jf, i64 0
  %i.kn = shufflevector <4 x double> %i.km, <4 x double> %i.kd, <2 x i32> <i32 0, i32 5>
  %i.ko = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kl, <2 x double> %i.kn, <2 x double> %i.kj) ; 2 uses
  %i.kp = fsub double %i.jx, %i.jf                ; 2 uses
  %i.kq = fsub double %i.jy, %i.jh                ; 2 uses
  %i.kr = shufflevector <2 x double> %i.jj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ks = insertelement <2 x double> %i.kr, double %i.kq, i64 1 ; 2 uses
  %i.kt = insertelement <2 x double> %i.ks, double %i.jq, i64 1
  %i.ku = fmul <2 x double> %i.ks, %i.kt
  %i.kv = insertelement <2 x double> %i.jj, double %i.kp, i64 1 ; 2 uses
  %i.kw = insertelement <2 x double> %i.kv, double %i.ji, i64 1
  %i.kx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kv, <2 x double> %i.kw, <2 x double> %i.ku) ; 2 uses
  %i.ky = extractelement <2 x double> %i.kx, i64 0
  %i.kz = fneg double %i.ky
  %i.la = insertelement <2 x double> %i.ko, double %i.jy, i64 1
  %i.lb = shufflevector <2 x double> %i.ko, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.lc = insertelement <2 x double> %i.lb, double %i.jy, i64 1
  %i.ld = fmul <2 x double> %i.la, %i.lc
  %i.le = insertelement <2 x double> poison, double %i.kz, i64 0
  %i.lf = insertelement <2 x double> %i.le, double %i.jx, i64 1
  %i.lg = shufflevector <2 x double> %i.kx, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.lh = insertelement <2 x double> %i.lg, double %i.jx, i64 1
  %i.li = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lf, <2 x double> %i.lh, <2 x double> %i.ld) ; 2 uses
  %i.lj = extractelement <2 x double> %i.li, i64 0
  %i.lk = extractelement <2 x double> %i.li, i64 1
  %i.ll = call double @llvm.fmuladd.f64(double %i.lk, double %i.js, double %i.lj)
  %i.lm = fmul double %i.jg, %i.jg
  %i.ln = call double @llvm.fmuladd.f64(double %i.jo, double %i.jo, double %i.lm)
  %i.lo = fneg double %i.kp
  %i.lp = fmul double %i.jn, %i.lo
  %i.lq = call noundef double @llvm.fmuladd.f64(double %i.jl, double %i.kq, double %i.lp)
  %i.lr = fneg double %i.ln
  %i.ls = call double @llvm.fmuladd.f64(double %i.lr, double %i.lq, double %i.ll)
  %i.lt = fcmp olt double %i.ls, f0xBE50000000000000
  br i1 %i.lt, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  call void @_ZN2cv8Subdiv2D9swapEdgesEi(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %storemerge8990)
  %i.lu = load ptr, ptr %i.ef, align 8, !tbaa !8  ; 2 uses
  %i.lv = getelementptr inbounds nuw [32 x i8], ptr %i.lu, i64 %i.ht
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.lv, i64 %i.hx
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !12 ; 2 uses
  %i.ly = and i32 %i.lx, -4
  %i.lz = add i32 %i.lx, 1
  %i.ma = and i32 %i.lz, 3
  %i.mb = or disjoint i32 %i.ma, %i.ly
  br label %bb.ao

bb.ak:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.mc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.al:                                            ; preds = %bb.af
  %i.md = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.am:                                            ; preds = %bb.ai, %.lr.ph
  %i.me = icmp eq i32 %i.io, %i.fl
  br i1 %i.me, label %.loopexit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %i.im
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !12 ; 2 uses
  %i.mh = ashr i32 %i.mg, 2
  %i.mi = sext i32 %i.mh to i64
  %i.mj = getelementptr inbounds nuw [32 x i8], ptr %i.hr, i64 %i.mi
  %i.mk = and i32 %i.mg, 3
  %i.ml = zext nneg i32 %i.mk to i64
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %i.ml
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !12
  %i.mo = xor i32 %i.mn, 2
  br label %bb.ao

bb.ao:                                            ; preds = %bb.aj, %bb.an
  %i.mp = phi ptr [ %i.hr, %bb.an ], [ %i.lu, %bb.aj ]
  %storemerge = phi i32 [ %i.mo, %bb.an ], [ %i.mb, %bb.aj ]
  %i.mq = add nuw nsw i32 %.04491, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.mq, %11
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !59

.loopexit:                                        ; preds = %bb.ao, %bb.am, %bb.ah, %._crit_edge97
  %.0 = phi i32 [ %.0.pre, %._crit_edge97 ], [ %i.dw, %bb.ah ], [ %i.dw, %bb.am ], [ %i.dw, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.mr = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ms = load i32, ptr %i.mr, align 8, !tbaa !40
  %.not.i = icmp eq i32 %i.ms, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %.loopexit
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %4)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.mt = landingpad { ptr, i32 }
          catch ptr null
  %i.mu = extractvalue { ptr, i32 } %i.mt, 0
  call void @__clang_call_terminate(ptr %i.mu) #28
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %.loopexit, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret i32 %.0

bb.ar:                                            ; preds = %bb.ak, %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn58.pn = phi { ptr, i32 } [ %.pn58, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ], [ %i.md, %bb.al ], [ %i.d, %bb.f ], [ %.pn50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ], [ %i.mc, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  resume { ptr, i32 } %.pn58.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv8Subdiv2D6insertERKSt6vectorINS_6Point_IfEESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
end_hunk_0
