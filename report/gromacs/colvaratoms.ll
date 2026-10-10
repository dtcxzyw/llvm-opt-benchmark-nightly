Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/colvaratoms?download=true
inline.NumInlined: 2814
inline.NumDeleted: 782
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN12colvarmodule10atom_group18apply_colvar_forceERKd:bb.a
  %i.fx = add nuw i64 %.05193, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.fx, %i.et
  br i1 %exitcond.not, label %.loopexit91, label %bb.k, !llvm.loop !896

.loopexit91:                                      ; preds = %bb.k, %bb.i, %bb.j, %bb.h
  %i.fy = load ptr, ptr %i.w, align 8, !tbaa !46  ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 33
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !53, !range !55, !noundef !56
  %i.gb = trunc nuw i8 %i.ga to i1
  br i1 %i.gb, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.loopexit91
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 97
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !53, !range !55, !noundef !56
  %i.ge = trunc nuw i8 %i.gd to i1
  br i1 %i.ge, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l, %.loopexit91
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fy, i64 193
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !53, !range !55, !noundef !56
  %i.gh = trunc nuw i8 %i.gg to i1
  br i1 %i.gh, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !107 ; 2 uses
  %.not = icmp eq ptr %i.gj, null
  %spec.select = select i1 %.not, ptr %0, ptr %i.gj ; 4 uses
  %i.gk = call noundef ptr @_ZN12colvarmodule4mainEv() ; 0 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %spec.select, i64 1144
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !108 ; 2 uses
  %.not100 = icmp eq i64 %i.gm, 0
  br i1 %.not100, label %.loopexit, label %.lr.ph97

.lr.ph97:                                         ; preds = %bb.n
  %i.gn = load ptr, ptr @_ZN12colvarmodule5proxyE, align 8, !tbaa !135
  %i.go = getelementptr inbounds nuw i8, ptr %spec.select, i64 1152
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !54
  %i.gq = getelementptr inbounds nuw i8, ptr %spec.select, i64 512
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !107 ; 2 uses
  %.not.i = icmp eq ptr %i.gr, null
  %spec.select.i = select i1 %.not.i, ptr %spec.select, ptr %i.gr ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 1096
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !114
  %i.gu = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 1144
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !108 ; 2 uses
  %.idx.i78 = shl i64 %i.gv, 4
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gn, i64 416
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !113
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph97, %bb.o
  %.04796 = phi i64 [ 0, %.lr.ph97 ], [ %i.hu, %bb.o ] ; 3 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %.04796
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !122
  %i.ha = load double, ptr %1, align 8, !tbaa !109 ; 2 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %.04796 ; 3 uses
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !109
  %i.hd = getelementptr [8 x i8], ptr %i.hb, i64 %i.gv
  %i.he = load double, ptr %i.hd, align 8, !tbaa !109
  %i.hf = getelementptr i8, ptr %i.hb, i64 %.idx.i78
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !109
  %i.hh = fmul double %i.ha, %i.hg
  %i.hi = sext i32 %i.gz to i64
  %i.hj = getelementptr inbounds nuw [24 x i8], ptr %i.gx, i64 %i.hi ; 3 uses
  %i.hk = insertelement <2 x double> poison, double %i.ha, i64 0
  %i.hl = shufflevector <2 x double> %i.hk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hm = insertelement <2 x double> poison, double %i.hc, i64 0
  %i.hn = insertelement <2 x double> %i.hm, double %i.he, i64 1
  %i.ho = fmul <2 x double> %i.hl, %i.hn
  %i.hp = load <2 x double>, ptr %i.hj, align 8, !tbaa !109
  %i.hq = fadd <2 x double> %i.ho, %i.hp
  store <2 x double> %i.hq, ptr %i.hj, align 8, !tbaa !109
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hj, i64 16 ; 2 uses
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !119
  %i.ht = fadd double %i.hh, %i.hs
  store double %i.ht, ptr %i.hr, align 8, !tbaa !119
  %i.hu = add nuw i64 %.04796, 1                  ; 2 uses
  %exitcond103.not = icmp eq i64 %i.hu, %i.gm
  br i1 %exitcond103.not, label %.loopexit, label %bb.o, !llvm.loop !897

.loopexit:                                        ; preds = %bb.o, %bb.n, %bb.a, %bb.m, %bb.l, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN12colvarmodule10atom_group11apply_forceERKNS_7rvectorE(ptr noundef nonnull align 8 dereferenceable(1712) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.colvarmodule::atom_group::group_force_object", align 8 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.c = load i8, ptr %i.b, align 8, !tbaa !130, !range !55, !noundef !56
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.f = load i8, ptr %i.e, align 8, !tbaa !131, !range !55, !noundef !56
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %.noexc.i20, label %bb.f

.noexc.i20:                                       ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 70, ptr %i.a, align 8, !tbaa !35
  %i.i = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc21 unwind label %bb.d   ; 3 uses

.noexc21:                                         ; preds = %.noexc.i20
  store ptr %i.i, ptr %2, align 8, !tbaa !42
  %i.j = load i64, ptr %i.a, align 8, !tbaa !35   ; 3 uses
  store i64 %i.j, ptr %i.h, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(70) %i.i, ptr noundef nonnull align 1 dereferenceable(70) @.str.130, i64 70, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !31
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  store i8 0, ptr %i.l, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.m = invoke noundef i32 @_ZN12colvarmodule5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef -1)
          to label %bb.c unwind label %bb.e       ; 0 uses

bb.c:                                             ; preds = %.noexc21
  %i.n = load ptr, ptr %2, align 8, !tbaa !42     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.h
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.c
  %i.p = load i64, ptr %i.h, align 8, !tbaa !32
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.l

bb.d:                                             ; preds = %.noexc.i20
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

bb.e:                                             ; preds = %.noexc21
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %2, align 8, !tbaa !42     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.h
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.e
  %i.v = load i64, ptr %i.h, align 8, !tbaa !32
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26, %bb.d
  %.pn13 = phi { ptr, i32 } [ %i.r, %bb.d ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ], [ %i.s, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.m

bb.f:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !46
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 257
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !53, !range !55, !noundef !56
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr @_ZN12colvarmodule5proxyE, align 8, !tbaa !135
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1440
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !133
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 616
  %i.ag = sext i32 %i.ae to i64
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !113
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.ag ; 3 uses
  %i.aj = load <2 x double>, ptr %1, align 8, !tbaa !109
  %i.ak = load <2 x double>, ptr %i.ai, align 8, !tbaa !109
  %i.al = fadd <2 x double> %i.aj, %i.ak
  store <2 x double> %i.al, ptr %i.ai, align 8, !tbaa !109
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = load double, ptr %i.am, align 8, !tbaa !119
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !119
  %i.aq = fadd double %i.an, %i.ap
  store double %i.aq, ptr %i.ao, align 8, !tbaa !119
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @_ZN12colvarmodule10atom_group18group_force_objectC1EPS0_(ptr noundef nonnull align 8 dereferenceable(17) %3, ptr noundef nonnull align 8 dereferenceable(1712) %0)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !108 ; 7 uses
  %.not = icmp eq i64 %i.as, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1320 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !220, !range !55, !noundef !56
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.az = load ptr, ptr %i.at, align 8, !tbaa !114 ; 6 uses
  %i.ba = load ptr, ptr %3, align 8, !tbaa !221   ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1448
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !114 ; 8 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 1144
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !108 ; 4 uses
  %.idx.i.i.us = shl i64 %i.be, 4                 ; 4 uses
  %min.iters.check = icmp ult i64 %i.as, 18
  br i1 %min.iters.check, label %_ZN12colvarmodule10atom_group18group_force_object14add_atom_forceEmRKNS_7rvectorE.exit.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.us
  %i.bf = shl i64 %i.as, 3                        ; 4 uses
  %i.bg = getelementptr i8, ptr %i.bc, i64 %i.bf
  %i.bh = shl i64 %i.be, 3                        ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bc, i64 %i.bh  ; 4 uses
  %i.bj = getelementptr i8, ptr %i.bc, i64 %i.bh
  %i.bk = getelementptr i8, ptr %i.bj, i64 %i.bf  ; 4 uses
  %i.bl = getelementptr i8, ptr %i.bc, i64 %.idx.i.i.us ; 4 uses
  %i.bm = getelementptr i8, ptr %i.bc, i64 %.idx.i.i.us
  %i.bn = getelementptr i8, ptr %i.bm, i64 %i.bf  ; 4 uses
  %i.bo = getelementptr i8, ptr %i.az, i64 %i.bf  ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.bq = insertelement <4 x ptr> poison, ptr %i.bc, i64 0
  %i.br = shufflevector <4 x ptr> %i.bq, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bs = insertelement <4 x ptr> poison, ptr %i.bk, i64 0
  %i.bt = insertelement <4 x ptr> %i.bs, ptr %i.bn, i64 1
  %i.bu = insertelement <4 x ptr> %i.bt, ptr %i.bo, i64 2
  %i.bv = insertelement <4 x ptr> %i.bu, ptr %i.bp, i64 3
  %i.bw = icmp ult <4 x ptr> %i.br, %i.bv
  %i.bx = insertelement <4 x ptr> poison, ptr %i.bi, i64 0
  %i.by = insertelement <4 x ptr> %i.bx, ptr %i.bl, i64 1
  %i.bz = insertelement <4 x ptr> %i.by, ptr %i.az, i64 2
  %i.ca = insertelement <4 x ptr> %i.bz, ptr %1, i64 3
  %i.cb = insertelement <4 x ptr> poison, ptr %i.bg, i64 0
  %i.cc = shufflevector <4 x ptr> %i.cb, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cd = icmp ult <4 x ptr> %i.ca, %i.cc
  %i.ce = and <4 x i1> %i.bw, %i.cd
  %bound092 = icmp ult ptr %i.bi, %i.bn
  %bound193 = icmp ult ptr %i.bl, %i.bk
  %found.conflict94 = and i1 %bound092, %bound193
  %bound096 = icmp ult ptr %i.bi, %i.bo
  %bound197 = icmp ult ptr %i.az, %i.bk
  %found.conflict98 = and i1 %bound096, %bound197
  %bound0100 = icmp ult ptr %i.bi, %i.bp
  %bound1101 = icmp ult ptr %1, %i.bk
  %found.conflict102 = and i1 %bound0100, %bound1101
  %bound0104 = icmp ult ptr %i.bl, %i.bo
  %bound1105 = icmp ult ptr %i.az, %i.bn
  %found.conflict106 = and i1 %bound0104, %bound1105
  %bound0108 = icmp ult ptr %i.bl, %i.bp
  %bound1109 = icmp ult ptr %1, %i.bn
  %found.conflict110 = and i1 %bound0108, %bound1109
  %i.cf = bitcast <4 x i1> %i.ce to i4
  %i.cg = icmp ne i4 %i.cf, 0
  %op.rdx = or i1 %i.cg, %found.conflict94
  %op.rdx119 = or i1 %found.conflict98, %found.conflict102
  %op.rdx120 = or i1 %found.conflict106, %found.conflict110
  %op.rdx121 = or i1 %op.rdx, %op.rdx119
  %op.rdx122 = or i1 %op.rdx121, %op.rdx120
  br i1 %op.rdx122, label %_ZN12colvarmodule10atom_group18group_force_object14add_atom_forceEmRKNS_7rvectorE.exit.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.as, -2                      ; 3 uses
  %i.ch = load double, ptr %1, align 8, !tbaa !117, !alias.scope !914, !noalias !915
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ch, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ci = load double, ptr %i.au, align 8, !tbaa !118, !alias.scope !914, !noalias !915
  %broadcast.splatinsert112 = insertelement <2 x double> poison, double %i.ci, i64 0
  %broadcast.splat113 = shufflevector <2 x double> %broadcast.splatinsert112, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cj = load double, ptr %i.av, align 8, !tbaa !119, !alias.scope !914, !noalias !915
  %broadcast.splatinsert114 = insertelement <2 x double> poison, double %i.cj, i64 0
  %broadcast.splat115 = shufflevector <2 x double> %broadcast.splatinsert114, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %index
  %wide.load = load <2 x double>, ptr %i.ck, align 8, !tbaa !109, !alias.scope !916 ; 3 uses
  %i.cl = fmul <2 x double> %wide.load, %broadcast.splat
  %i.cm = fmul <2 x double> %wide.load, %broadcast.splat113
  %i.cn = fmul <2 x double> %wide.load, %broadcast.splat115
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %index ; 4 uses
  %wide.load116 = load <2 x double>, ptr %i.co, align 8, !tbaa !109, !alias.scope !917, !noalias !918
  %i.cp = fadd <2 x double> %i.cl, %wide.load116
  store <2 x double> %i.cp, ptr %i.co, align 8, !tbaa !109, !alias.scope !917, !noalias !918
  %i.cq = getelementptr [8 x i8], ptr %i.co, i64 %i.be ; 2 uses
  %wide.load117 = load <2 x double>, ptr %i.cq, align 8, !tbaa !109, !alias.scope !919, !noalias !920
  %i.cr = fadd <2 x double> %i.cm, %wide.load117
  store <2 x double> %i.cr, ptr %i.cq, align 8, !tbaa !109, !alias.scope !919, !noalias !920
  %i.cs = getelementptr i8, ptr %i.co, i64 %.idx.i.i.us ; 2 uses
  %wide.load118 = load <2 x double>, ptr %i.cs, align 8, !tbaa !109, !alias.scope !921, !noalias !922
  %i.ct = fadd <2 x double> %i.cn, %wide.load118
  store <2 x double> %i.ct, ptr %i.cs, align 8, !tbaa !109, !alias.scope !921, !noalias !922
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !911

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %_ZN12colvarmodule10atom_group18group_force_object14add_atom_forceEmRKNS_7rvectorE.exit.us.preheader

_ZN12colvarmodule10atom_group18group_force_object14add_atom_forceEmRKNS_7rvectorE.exit.us.preheader: ; preds = %vector.memcheck, %.lr.ph.split.us, %middle.block
  %.035.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.us ], [ %n.vec, %middle.block ]
  br label %_ZN12colvarmodule10atom_group18group_force_object14add_atom_forceEmRKNS_7rvectorE.exit.us

_ZN12colvarmodule10atom_group18group_force_object14add_atom_forceEmRKNS_7rvectorE.exit.us: ; preds = %_ZN12colvarmodule10atom_group18group_force_object14add_atom_forceEmRKNS_7rvectorE.exit.us.preheader, %_ZN12colvarmodule10atom_group18group_force_object14add_atom_forceEmRKNS_7rvectorE.exit.us
  %.035.us = phi i64 [ %i.di, %_ZN12colvarmodule10atom_group18group_force_object14add_atom_forceEmRKNS_7rvectorE.exit.us ], [ %.035.us.ph, %_ZN12colvarmodule10atom_group18group_force_object14add_atom_forceEmRKNS_7rvectorE.exit.us.preheader ] ; 3 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.035.us
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !109 ; 2 uses
  %4 = load <2 x double>, ptr %1, align 8, !tbaa !109, !noalias !915
  %5 = insertelement <2 x double> poison, double %i.cw, i64 0
  %6 = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer
  %7 = fmul <2 x double> %6, %4                   ; 2 uses
  %i.cx = load double, ptr %i.av, align 8, !tbaa !119, !noalias !915
  %i.cy = fmul double %i.cw, %i.cx
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.035.us ; 4 uses
  %i.da = load double, ptr %i.cz, align 8, !tbaa !109
  %8 = extractelement <2 x double> %7, i64 0
  %i.db = fadd double %8, %i.da
  store double %i.db, ptr %i.cz, align 8, !tbaa !109
  %i.dc = getelementptr [8 x i8], ptr %i.cz, i64 %i.be ; 2 uses
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !109
  %9 = extractelement <2 x double> %7, i64 1
  %i.de = fadd double %9, %i.dd
  store double %i.de, ptr %i.dc, align 8, !tbaa !109
  %i.df = getelementptr i8, ptr %i.cz, i64 %.idx.i.i.us ; 2 uses
  %i.dg = load double, ptr %i.df, align 8, !tbaa !109
  %i.dh = fadd double %i.cy, %i.dg
  store double %i.dh, ptr %i.df, align 8, !tbaa !109
  %i.di = add nuw i64 %.035.us, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.di, %i.as
  br i1 %exitcond.not, label %._crit_edge, label %_ZN12colvarmodule10atom_group18group_force_object14add_atom_forceEmRKNS_7rvectorE.exit.us, !llvm.loop !912

._crit_edge:                                      ; preds = %_ZN12colvarmodule10atom_group18group_force_object14add_atom_forceEmRKNS_7rvectorE.exit, %_ZN12colvarmodule10atom_group18group_force_object14add_atom_forceEmRKNS_7rvectorE.exit.us, %middle.block, %bb.h
  call void @_ZN12colvarmodule10atom_group18group_force_objectD1Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.l

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN12colvarmodule10atom_group18group_force_object14add_atom_forceEmRKNS_7rvectorE.exit
  %i.dj = phi i64 [ %i.fb, %_ZN12colvarmodule10atom_group18group_force_object14add_atom_forceEmRKNS_7rvectorE.exit ], [ %i.as, %.lr.ph ]
  %.035 = phi i64 [ %i.fc, %_ZN12colvarmodule10atom_group18group_force_object14add_atom_forceEmRKNS_7rvectorE.exit ], [ 0, %.lr.ph ] ; 4 uses
  %i.dk = load ptr, ptr %i.at, align 8, !tbaa !114
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %.035
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !109 ; 2 uses
  %i.dn = load <2 x double>, ptr %1, align 8, !tbaa !109, !noalias !915
  %i.do = insertelement <2 x double> poison, double %i.dm, i64 0
  %i.dp = shufflevector <2 x double> %i.do, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dq = fmul <2 x double> %i.dp, %i.dn          ; 3 uses
  %i.dr = load double, ptr %i.av, align 8, !tbaa !119, !noalias !915
  %i.ds = fmul double %i.dm, %i.dr                ; 2 uses
  %i.dt = load i8, ptr %i.aw, align 8, !tbaa !220, !range !55, !noundef !56
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.split
  %i.dv = load ptr, ptr %3, align 8, !tbaa !221   ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 1448
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !114
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %.035 ; 4 uses
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !109
  %i.ea = extractelement <2 x double> %i.dq, i64 0
  %i.eb = fadd double %i.ea, %i.dz
  store double %i.eb, ptr %i.dy, align 8, !tbaa !109
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dv, i64 1144
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !108 ; 2 uses
  %i.ee = getelementptr [8 x i8], ptr %i.dy, i64 %i.ed ; 2 uses
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !109
  %i.eg = extractelement <2 x double> %i.dq, i64 1
  %i.eh = fadd double %i.eg, %i.ef
  store double %i.eh, ptr %i.ee, align 8, !tbaa !109
  %.idx.i.i = shl i64 %i.ed, 4
  %i.ei = getelementptr i8, ptr %i.dy, i64 %.idx.i.i ; 2 uses
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !109
  %i.ek = fadd double %i.ds, %i.ej
  store double %i.ek, ptr %i.ei, align 8, !tbaa !109
  br label %_ZN12colvarmodule10atom_group18group_force_object14add_atom_forceEmRKNS_7rvectorE.exit

bb.j:                                             ; preds = %.lr.ph.split
  %i.el = invoke noundef ptr @_ZN12colvarmodule4mainEv()
          to label %.noexc29 unwind label %bb.k   ; 0 uses

.noexc29:                                         ; preds = %bb.j
  %i.em = load ptr, ptr @_ZN12colvarmodule5proxyE, align 8, !tbaa !135
  %i.en = load ptr, ptr %3, align 8, !tbaa !221
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 1152
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !54
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %.035
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !122
  %i.es = getelementptr inbounds nuw i8, ptr %i.em, i64 416
  %i.et = sext i32 %i.er to i64
  %i.eu = load ptr, ptr %i.es, align 8, !tbaa !113
  %i.ev = getelementptr inbounds nuw [24 x i8], ptr %i.eu, i64 %i.et ; 3 uses
  %i.ew = load <2 x double>, ptr %i.ev, align 8, !tbaa !109
  %i.ex = fadd <2 x double> %i.dq, %i.ew
  store <2 x double> %i.ex, ptr %i.ev, align 8, !tbaa !109
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 16 ; 2 uses
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !119
  %i.fa = fadd double %i.ds, %i.ez
  store double %i.fa, ptr %i.ey, align 8, !tbaa !119
  %.pre = load i64, ptr %i.ar, align 8, !tbaa !108
  br label %_ZN12colvarmodule10atom_group18group_force_object14add_atom_forceEmRKNS_7rvectorE.exit

_ZN12colvarmodule10atom_group18group_force_object14add_atom_forceEmRKNS_7rvectorE.exit: ; preds = %.noexc29, %bb.i
  %i.fb = phi i64 [ %.pre, %.noexc29 ], [ %i.dj, %bb.i ] ; 2 uses
  %i.fc = add nuw i64 %.035, 1                    ; 2 uses
  %i.fd = icmp ult i64 %i.fc, %i.fb
  br i1 %i.fd, label %.lr.ph.split, label %._crit_edge, !llvm.loop !913

bb.k:                                             ; preds = %bb.j
  %i.fe = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12colvarmodule10atom_group18group_force_objectD1Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.m

bb.l:                                             ; preds = %bb.a, %._crit_edge, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25
  ret void

bb.m:                                             ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %.pn13.pn = phi { ptr, i32 } [ %.pn13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %i.fe, %bb.k ]
  resume { ptr, i32 } %.pn13.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN12colvarmodule10atom_group22get_group_force_objectEv(ptr dead_on_unwind noalias writable sret(%"class.colvarmodule::atom_group::group_force_object") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1712) %1) local_unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN12colvarmodule10atom_group18group_force_objectC1EPS0_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN12colvarmodule10atom_group18group_force_object14add_atom_forceEmRKNS_7rvectorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(17) %0, i64 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !220, !range !55, !noundef !56
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load double, ptr %2, align 8, !tbaa !117
  %i.e = load ptr, ptr %0, align 8, !tbaa !221    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1448
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !114
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %1 ; 4 uses
  %i.i = load double, ptr %i.h, align 8, !tbaa !109
  %i.j = fadd double %i.d, %i.i
  store double %i.j, ptr %i.h, align 8, !tbaa !109
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load double, ptr %i.k, align 8, !tbaa !118
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 1144
  %i.n = load i64, ptr %i.m, align 8, !tbaa !108  ; 2 uses
  %i.o = getelementptr [8 x i8], ptr %i.h, i64 %i.n ; 2 uses
  %i.p = load double, ptr %i.o, align 8, !tbaa !109
  %i.q = fadd double %i.l, %i.p
  store double %i.q, ptr %i.o, align 8, !tbaa !109
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = load double, ptr %i.r, align 8, !tbaa !119
  %.idx.i = shl i64 %i.n, 4
  %i.t = getelementptr i8, ptr %i.h, i64 %.idx.i  ; 2 uses
  %i.u = load double, ptr %i.t, align 8, !tbaa !109
  %i.v = fadd double %i.s, %i.u
  store double %i.v, ptr %i.t, align 8, !tbaa !109
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.w = tail call noundef ptr @_ZN12colvarmodule4mainEv() ; 0 uses
  %i.x = load ptr, ptr @_ZN12colvarmodule5proxyE, align 8, !tbaa !135
  %i.y = load ptr, ptr %0, align 8, !tbaa !221
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1152
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !54
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %1
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !122
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 416
  %i.ae = sext i32 %i.ac to i64
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !113
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.ae ; 3 uses
  %i.ah = load <2 x double>, ptr %2, align 8, !tbaa !109
  %i.ai = load <2 x double>, ptr %i.ag, align 8, !tbaa !109
  %i.aj = fadd <2 x double> %i.ah, %i.ai
  store <2 x double> %i.aj, ptr %i.ag, align 8, !tbaa !109
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.al = load double, ptr %i.ak, align 8, !tbaa !119
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.an = load double, ptr %i.am, align 8, !tbaa !119
  %i.ao = fadd double %i.al, %i.an
  store double %i.ao, ptr %i.am, align 8, !tbaa !119
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN12colvarmodule10atom_group16reset_atoms_dataEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1712) %0) local_unnamed_addr #22 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !138  ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not5.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEiEvT_S7_RKT0_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.a
  %i.e = ptrtoaddr ptr %i.d to i64
  %i.f = ptrtoaddr ptr %i.b to i64
  %i.g = add i64 %i.e, -8
  %i.h = sub i64 %i.g, %i.f
  %i.i = and i64 %i.h, -8
  %i.j = add i64 %i.i, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.j, i1 false), !tbaa !109
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEiEvT_S7_RKT0_.exit

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEiEvT_S7_RKT0_.exit: ; preds = %.lr.ph.i.i.i.i.preheader, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !138  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !138  ; 2 uses
  %.not5.i.i.i.i8 = icmp eq ptr %i.l, %i.n
  br i1 %.not5.i.i.i.i8, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEiEvT_S7_RKT0_.exit12, label %.lr.ph.i.i.i.i9.preheader

.lr.ph.i.i.i.i9.preheader:                        ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEiEvT_S7_RKT0_.exit
  %i.o = ptrtoaddr ptr %i.n to i64
  %i.p = ptrtoaddr ptr %i.l to i64
  %i.q = add i64 %i.o, -8
end_hunk_0
