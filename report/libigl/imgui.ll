Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/imgui?download=true
inline.NumInlined: 2414
inline.NumDeleted: 435
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_ZN5ImGuiL12NavScoreItemEP16ImGuiNavItemData:bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 7812
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !218
  %or.cond.i = icmp ult i32 %i.ar, 2
  br i1 %or.cond.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.sroa.0.4.vec.extract133 = extractelement <2 x float> %.sroa.0.0, i64 1 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 524
  %i.at = load float, ptr %i.as, align 4, !tbaa !215 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 532
  %i.av = load float, ptr %i.au, align 4, !tbaa !216 ; 3 uses
  %i.aw = fcmp olt float %.sroa.0.4.vec.extract133, %i.at
  %i.ax = fcmp ogt float %.sroa.0.4.vec.extract133, %i.av
  %i.ay = select i1 %i.ax, float %i.av, float %.sroa.0.4.vec.extract133
  %i.az = select i1 %i.aw, float %i.at, float %i.ay
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0, float %i.az, i64 1
  br label %_ZL35NavClampRectToVisibleAreaForMoveDiriR6ImRectRKS_.exit

bb.k:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 520
  %.sroa.0.0.vec.extract121 = extractelement <2 x float> %.sroa.0.0, i64 0 ; 3 uses
  %i.bb = load float, ptr %i.ba, align 8, !tbaa !436 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 528
  %i.bd = load float, ptr %i.bc, align 8, !tbaa !437 ; 3 uses
  %i.be = fcmp olt float %.sroa.0.0.vec.extract121, %i.bb
  %i.bf = fcmp ogt float %.sroa.0.0.vec.extract121, %i.bd
  %i.bg = select i1 %i.bf, float %i.bd, float %.sroa.0.0.vec.extract121
  %i.bh = select i1 %i.be, float %i.bb, float %i.bg
  %.sroa.0.0.vec.insert = insertelement <2 x float> %.sroa.0.0, float %i.bh, i64 0
  br label %_ZL35NavClampRectToVisibleAreaForMoveDiriR6ImRectRKS_.exit

_ZL35NavClampRectToVisibleAreaForMoveDiriR6ImRectRKS_.exit: ; preds = %bb.j, %bb.k
  %.sink179 = phi i64 [ 1, %bb.j ], [ 0, %bb.k ]  ; 2 uses
  %.sink = phi float [ %i.at, %bb.j ], [ %i.bb, %bb.k ] ; 2 uses
  %.sink177 = phi float [ %i.av, %bb.j ], [ %i.bd, %bb.k ] ; 2 uses
  %.sroa.0.1 = phi <2 x float> [ %.sroa.0.4.vec.insert, %bb.j ], [ %.sroa.0.0.vec.insert, %bb.k ] ; 4 uses
  %.sroa.17.12.vec.extract153 = extractelement <2 x float> %.sroa.17.0, i64 %.sink179 ; 3 uses
  %i.bi = fcmp olt float %.sroa.17.12.vec.extract153, %.sink
  %i.bj = fcmp ogt float %.sroa.17.12.vec.extract153, %.sink177
  %i.bk = select i1 %i.bj, float %.sink177, float %.sroa.17.12.vec.extract153
  %i.bl = select i1 %i.bi, float %.sink, float %i.bk
  %.sroa.17.12.vec.insert = insertelement <2 x float> %.sroa.17.0, float %i.bl, i64 %.sink179 ; 4 uses
  %.sroa.0.0.vec.extract = extractelement <2 x float> %.sroa.0.1, i64 0 ; 2 uses
  %.sroa.17.8.vec.extract136 = extractelement <2 x float> %.sroa.17.12.vec.insert, i64 0 ; 2 uses
  %i.bm = fcmp olt float %.sroa.17.8.vec.extract136, %.sroa.0.0.copyload
  br i1 %i.bm, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZL35NavClampRectToVisibleAreaForMoveDiriR6ImRectRKS_.exit
  %i.bn = fsub float %.sroa.17.8.vec.extract136, %.sroa.0.0.copyload
  br label %_ZL24NavScoreItemDistIntervalffff.exit

bb.m:                                             ; preds = %_ZL35NavClampRectToVisibleAreaForMoveDiriR6ImRectRKS_.exit
  %i.bo = fcmp olt float %.sroa.8.0.copyload, %.sroa.0.0.vec.extract
  br i1 %i.bo, label %bb.n, label %_ZL24NavScoreItemDistIntervalffff.exit

bb.n:                                             ; preds = %bb.m
  %i.bp = fsub float %.sroa.0.0.vec.extract, %.sroa.8.0.copyload
  br label %_ZL24NavScoreItemDistIntervalffff.exit

_ZL24NavScoreItemDistIntervalffff.exit:           ; preds = %bb.l, %bb.m, %bb.n
  %.0.i = phi float [ %i.bn, %bb.l ], [ %i.bp, %bb.n ], [ 0.000000e+00, %bb.m ] ; 5 uses
  %i.bq = shufflevector <2 x float> %.sroa.17.12.vec.insert, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.br = insertelement <2 x float> %i.bq, float %.sroa.10.0.copyload, i64 1
  %i.bs = shufflevector <2 x float> %.sroa.0.1, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bt = insertelement <2 x float> %i.bs, float %.sroa.5.0.copyload, i64 1 ; 2 uses
  %i.bu = fsub <2 x float> %i.br, %i.bt
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bw = shufflevector <2 x float> %i.bt, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bv, <4 x float> <float 2.000000e-01, float 2.000000e-01, float 8.000000e-01, float 8.000000e-01>, <4 x float> %i.bw) ; 4 uses
  %i.by = extractelement <4 x float> %i.bx, i64 1 ; 2 uses
  %i.bz = extractelement <4 x float> %i.bx, i64 2 ; 2 uses
  %i.ca = fcmp olt float %i.bz, %i.by
  br i1 %i.ca, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZL24NavScoreItemDistIntervalffff.exit
  %i.cb = fsub float %i.bz, %i.by
  br label %_ZL24NavScoreItemDistIntervalffff.exit111

bb.p:                                             ; preds = %_ZL24NavScoreItemDistIntervalffff.exit
  %i.cc = extractelement <4 x float> %i.bx, i64 0 ; 2 uses
  %i.cd = extractelement <4 x float> %i.bx, i64 3 ; 2 uses
  %i.ce = fcmp olt float %i.cd, %i.cc
  br i1 %i.ce, label %bb.q, label %_ZL24NavScoreItemDistIntervalffff.exit111.thread

bb.q:                                             ; preds = %bb.p
  %i.cf = fsub float %i.cc, %i.cd
  br label %_ZL24NavScoreItemDistIntervalffff.exit111

_ZL24NavScoreItemDistIntervalffff.exit111:        ; preds = %bb.o, %bb.q
  %.0.i110 = phi float [ %i.cb, %bb.o ], [ %i.cf, %bb.q ] ; 3 uses
  %i.cg = fcmp une float %.0.i110, 0.000000e+00   ; 2 uses
  %i.ch = fcmp une float %.0.i, 0.000000e+00
  %or.cond = and i1 %i.ch, %i.cg
  br i1 %or.cond, label %bb.r, label %_ZL24NavScoreItemDistIntervalffff.exit111.thread

bb.r:                                             ; preds = %_ZL24NavScoreItemDistIntervalffff.exit111
  %i.ci = fdiv float %.0.i, 1.000000e+03
  %i.cj = fcmp ogt float %.0.i, 0.000000e+00
  %i.ck = select i1 %i.cj, float 1.000000e+00, float -1.000000e+00
  %i.cl = fadd float %i.ci, %i.ck
  br label %_ZL24NavScoreItemDistIntervalffff.exit111.thread

_ZL24NavScoreItemDistIntervalffff.exit111.thread: ; preds = %bb.p, %bb.r, %_ZL24NavScoreItemDistIntervalffff.exit111
  %i.cm = phi i1 [ true, %bb.r ], [ %i.cg, %_ZL24NavScoreItemDistIntervalffff.exit111 ], [ false, %bb.p ]
  %.0.i110157 = phi float [ %.0.i110, %bb.r ], [ %.0.i110, %_ZL24NavScoreItemDistIntervalffff.exit111 ], [ 0.000000e+00, %bb.p ] ; 4 uses
  %.098 = phi float [ %i.cl, %bb.r ], [ %.0.i, %_ZL24NavScoreItemDistIntervalffff.exit111 ], [ %.0.i, %bb.p ] ; 5 uses
  %i.cn = tail call float @llvm.fabs.f32(float %.098) ; 2 uses
  %i.co = tail call float @llvm.fabs.f32(float %.0.i110157) ; 2 uses
  %i.cp = fadd float %i.co, %i.cn                 ; 4 uses
  %foldExtExtBinop = fadd <2 x float> %.sroa.17.12.vec.insert, %.sroa.0.1
  %i.cq = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.cr = fadd float %.sroa.0.0.copyload, %.sroa.8.0.copyload
  %i.cs = fsub float %i.cq, %i.cr                 ; 4 uses
  %foldExtExtBinop181 = fadd <2 x float> %.sroa.17.12.vec.insert, %.sroa.0.1
  %i.ct = extractelement <2 x float> %foldExtExtBinop181, i64 1
  %i.cu = fadd float %.sroa.5.0.copyload, %.sroa.10.0.copyload
  %i.cv = fsub float %i.ct, %i.cu                 ; 4 uses
  %i.cw = tail call float @llvm.fabs.f32(float %i.cs) ; 2 uses
  %i.cx = tail call float @llvm.fabs.f32(float %i.cv) ; 2 uses
  %i.cy = fadd float %i.cw, %i.cx                 ; 5 uses
  %i.cz = fcmp une float %.098, 0.000000e+00
  %or.cond3 = or i1 %i.cm, %i.cz
  br i1 %or.cond3, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZL24NavScoreItemDistIntervalffff.exit111.thread
  %i.da = fcmp ogt float %i.cn, %i.co
  %i.db = fcmp ogt float %.098, 0.000000e+00
  %i.dc = zext i1 %i.db to i32
  %i.dd = fcmp ogt float %.0.i110157, 0.000000e+00
  %i.de = select i1 %i.dd, i32 3, i32 2
  %.0.i112 = select i1 %i.da, i32 %i.dc, i32 %i.de
  br label %bb.w

bb.t:                                             ; preds = %_ZL24NavScoreItemDistIntervalffff.exit111.thread
  %i.df = fcmp une float %i.cs, 0.000000e+00
  %i.dg = fcmp une float %i.cv, 0.000000e+00
  %or.cond5 = select i1 %i.df, i1 true, i1 %i.dg
  br i1 %or.cond5, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dh = fcmp ogt float %i.cw, %i.cx
  %i.di = fcmp ogt float %i.cs, 0.000000e+00
  %i.dj = zext i1 %i.di to i32
  %i.dk = fcmp ogt float %i.cv, 0.000000e+00
  %i.dl = select i1 %i.dk, i32 3, i32 2
  %.0.i113 = select i1 %i.dh, i32 %i.dj, i32 %i.dl
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.dm = load i32, ptr %i.h, align 8, !tbaa !423
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 7696
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !319
  %i.dp = icmp uge i32 %i.dm, %i.do
  %i.dq = zext i1 %i.dp to i32
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.s
  %.097 = phi i32 [ %.0.i112, %bb.s ], [ %.0.i113, %bb.u ], [ %i.dq, %bb.v ] ; 2 uses
  %.096 = phi float [ %.098, %bb.s ], [ %i.cs, %bb.u ], [ 0.000000e+00, %bb.v ] ; 2 uses
  %.095 = phi float [ %.0.i110157, %bb.s ], [ %i.cv, %bb.u ], [ 0.000000e+00, %bb.v ] ; 2 uses
  %.094 = phi float [ %i.cp, %bb.s ], [ %i.cy, %bb.u ], [ 0.000000e+00, %bb.v ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 7804
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !724 ; 5 uses
  %i.dt = icmp eq i32 %.097, %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.dv = load float, ptr %i.du, align 4, !tbaa !1093 ; 3 uses
  br i1 %i.dt, label %bb.x, label %._crit_edge

bb.x:                                             ; preds = %bb.w
  %i.dw = fcmp olt float %i.cp, %i.dv
  br i1 %i.dw, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store float %i.cp, ptr %i.du, align 4, !tbaa !1093
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.cy, ptr %i.dx, align 8, !tbaa !1095
  br label %_ZNK6ImRect8OverlapsERKS_.exit.thread

bb.z:                                             ; preds = %bb.x
  %i.dy = fcmp oeq float %i.cp, %i.dv
  br i1 %i.dy, label %bb.aa, label %._crit_edge

bb.aa:                                            ; preds = %bb.z
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ea = load float, ptr %i.dz, align 8, !tbaa !1095 ; 2 uses
  %i.eb = fcmp olt float %i.cy, %i.ea
  br i1 %i.eb, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store float %i.cy, ptr %i.dz, align 8, !tbaa !1095
  br label %._crit_edge

bb.ac:                                            ; preds = %bb.aa
  %i.ec = fcmp oeq float %i.cy, %i.ea
  br i1 %i.ec, label %bb.ad, label %._crit_edge

bb.ad:                                            ; preds = %bb.ac
  %i.ed = icmp samesign ugt i32 %.097, 1
  %i.ee = select i1 %i.ed, float %.0.i110157, float %.098
  %i.ef = fcmp olt float %i.ee, 0.000000e+00
  br i1 %i.ef, label %1, label %._crit_edge

1:                                                ; preds = %bb.ad
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.w, %bb.z, %bb.ac, %1, %bb.ad, %bb.ab
  %.0 = phi i1 [ true, %bb.ab ], [ true, %1 ], [ false, %bb.ad ], [ false, %bb.ac ], [ false, %bb.z ], [ false, %bb.w ] ; 4 uses
  %i.eg = fcmp oeq float %i.dv, f0x7F7FFFFF
  br i1 %i.eg, label %bb.ae, label %_ZNK6ImRect8OverlapsERKS_.exit.thread

bb.ae:                                            ; preds = %._crit_edge
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !452
  %i.ej = fcmp olt float %.094, %i.ei
  %i.ek = icmp eq i32 %i.e, 1
  %or.cond158 = and i1 %i.ek, %i.ej
  br i1 %or.cond158, label %bb.af, label %_ZNK6ImRect8OverlapsERKS_.exit.thread

bb.af:                                            ; preds = %bb.ae
  %i.el = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.em = load i32, ptr %i.el, align 4, !tbaa !428
  %i.en = and i32 %i.em, 268435456
  %.not109 = icmp eq i32 %i.en, 0
  br i1 %.not109, label %bb.ag, label %_ZNK6ImRect8OverlapsERKS_.exit.thread

bb.ag:                                            ; preds = %bb.af
  %i.eo = icmp eq i32 %i.ds, 0
  %i.ep = fcmp olt float %.096, 0.000000e+00
  %or.cond9 = select i1 %i.eo, i1 %i.ep, i1 false
  br i1 %or.cond9, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.eq = icmp eq i32 %i.ds, 1
  %i.er = fcmp ogt float %.096, 0.000000e+00
  %or.cond11 = select i1 %i.eq, i1 %i.er, i1 false
  br i1 %or.cond11, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.es = icmp eq i32 %i.ds, 2
  %i.et = fcmp olt float %.095, 0.000000e+00
  %or.cond13 = select i1 %i.es, i1 %i.et, i1 false
  br i1 %or.cond13, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eu = icmp eq i32 %i.ds, 3
  %i.ev = fcmp ogt float %.095, 0.000000e+00
  %or.cond15 = select i1 %i.eu, i1 %i.ev, i1 false
  br i1 %or.cond15, label %bb.ak, label %_ZNK6ImRect8OverlapsERKS_.exit.thread

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag
  store float %.094, ptr %i.eh, align 4, !tbaa !452
  br label %_ZNK6ImRect8OverlapsERKS_.exit.thread

_ZNK6ImRect8OverlapsERKS_.exit.thread:            ; preds = %bb.c, %bb.d, %bb.e, %_ZNK6ImRect8OverlapsERKS_.exit, %._crit_edge, %bb.ae, %bb.aj, %bb.ak, %bb.af, %bb.y, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ false, %_ZNK6ImRect8OverlapsERKS_.exit ], [ true, %bb.y ], [ %.0, %bb.af ], [ true, %bb.ak ], [ %.0, %bb.aj ], [ false, %bb.c ], [ %.0, %bb.ae ], [ %.0, %._crit_edge ], [ false, %bb.e ], [ false, %bb.d ]
  ret i1 %.2
}

; Function Attrs: nounwind
declare i32 @__isoc23_sscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #54

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12ImGuiContextD2Ev(ptr noundef nonnull align 8 dead_on_return(16233) dereferenceable(16233) %0) unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12648
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !364  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN14ImGuiStackToolD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not4.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 944 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !55
  %i.f = add nsw i32 %i.e, -1
  store i32 %i.f, ptr %i.d, align 8, !tbaa !55
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = load ptr, ptr @_ZL20GImAllocatorFreeFunc, align 8, !tbaa !132
  %i.h = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !132
  invoke void %i.g(ptr noundef nonnull %i.b, ptr noundef %i.h)
          to label %_ZN14ImGuiStackToolD2Ev.exit unwind label %bb.e, !inline_history !158

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #57
  unreachable

_ZN14ImGuiStackToolD2Ev.exit:                     ; preds = %bb.a, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12552
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !53   ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.l, null
  br i1 %.not.i.i1, label %_ZN15ImGuiTextBufferD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN14ImGuiStackToolD2Ev.exit
  %i.m = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 2 uses
  %.not4.i.i.i2 = icmp eq ptr %i.m, null
  br i1 %.not4.i.i.i2, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 944 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !55
  %i.p = add nsw i32 %i.o, -1
  store i32 %i.p, ptr %i.n, align 8, !tbaa !55
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.q = load ptr, ptr @_ZL20GImAllocatorFreeFunc, align 8, !tbaa !132
  %i.r = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !132
  invoke void %i.q(ptr noundef nonnull %i.l, ptr noundef %i.r)
          to label %_ZN15ImGuiTextBufferD2Ev.exit unwind label %bb.i, !inline_history !158

bb.i:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #57
  unreachable

_ZN15ImGuiTextBufferD2Ev.exit:                    ; preds = %_ZN14ImGuiStackToolD2Ev.exit, %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12512
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !522  ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %_ZN8ImVectorI16ImGuiContextHookED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN15ImGuiTextBufferD2Ev.exit
  %i.w = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.w, null
  br i1 %.not4.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 944 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !55
  %i.z = add nsw i32 %i.y, -1
  store i32 %i.z, ptr %i.x, align 8, !tbaa !55
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aa = load ptr, ptr @_ZL20GImAllocatorFreeFunc, align 8, !tbaa !132
  %i.ab = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !132
  invoke void %i.aa(ptr noundef nonnull %i.v, ptr noundef %i.ab)
          to label %_ZN8ImVectorI16ImGuiContextHookED2Ev.exit unwind label %bb.m, !inline_history !158

bb.m:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #57
  unreachable

_ZN8ImVectorI16ImGuiContextHookED2Ev.exit:        ; preds = %_ZN15ImGuiTextBufferD2Ev.exit, %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12496
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !53 ; 2 uses
  %.not.i.i3 = icmp eq ptr %i.af, null
  br i1 %.not.i.i3, label %_ZN13ImChunkStreamI18ImGuiTableSettingsED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN8ImVectorI16ImGuiContextHookED2Ev.exit
  %i.ag = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 2 uses
  %.not4.i.i.i4 = icmp eq ptr %i.ag, null
  br i1 %.not4.i.i.i4, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 944 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !55
  %i.aj = add nsw i32 %i.ai, -1
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !55
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ak = load ptr, ptr @_ZL20GImAllocatorFreeFunc, align 8, !tbaa !132
  %i.al = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !132
  invoke void %i.ak(ptr noundef nonnull %i.af, ptr noundef %i.al)
          to label %_ZN13ImChunkStreamI18ImGuiTableSettingsED2Ev.exit unwind label %bb.q, !inline_history !158

bb.q:                                             ; preds = %bb.p
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  tail call void @__clang_call_terminate(ptr %i.an) #57
  unreachable

_ZN13ImChunkStreamI18ImGuiTableSettingsED2Ev.exit: ; preds = %_ZN8ImVectorI16ImGuiContextHookED2Ev.exit, %bb.p
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 12480
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !53 ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i5, label %_ZN13ImChunkStreamI19ImGuiWindowSettingsED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZN13ImChunkStreamI18ImGuiTableSettingsED2Ev.exit
  %i.aq = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 2 uses
  %.not4.i.i.i6 = icmp eq ptr %i.aq, null
  br i1 %.not4.i.i.i6, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 944 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !55
  %i.at = add nsw i32 %i.as, -1
  store i32 %i.at, ptr %i.ar, align 8, !tbaa !55
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.au = load ptr, ptr @_ZL20GImAllocatorFreeFunc, align 8, !tbaa !132
end_hunk_0
