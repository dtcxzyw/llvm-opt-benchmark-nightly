Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpTNLPAdapter?download=true
inline.NumInlined: 3192
inline.NumDeleted: 752
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 107
begin_hunk_0_@_ZN5Ipopt11TNLPAdapter9GetSpacesERNS_8SmartPtrIKNS_11VectorSpaceEEES5_S5_S5_RNS1_IKNS_11MatrixSpaceEEES5_S9_S5_S9_S5_S9_S9_S9_RNS1_IKNS_14SymMatrixSpaceEEE:bb.a
  %.pn959.pn1902.ph = phi { ptr, i32 } [ %i.te, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1051.thread ], [ %i.su, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1053.thread ], [ %i.te, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1050.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #22
  br label %bb.go

bb.go:                                            ; preds = %.sink.split3075, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1051, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1053
  %.pn959.pn1902 = phi { ptr, i32 } [ %i.sv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1051 ], [ %i.sv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1053 ], [ %.pn959.pn1902.ph, %.sink.split3075 ]
  call void @__cxa_free_exception(ptr %i.ss) #22
  br label %bb.gp

bb.gp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1051, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1053, %bb.go, %bb.gm
  %.pn959.pn.pn = phi { ptr, i32 } [ %.pn959.pn1902, %bb.go ], [ %i.sv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1053 ], [ %i.st, %bb.gm ], [ %i.sv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1051 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  br label %_ZN5Ipopt8SmartPtrINS_16DenseVectorSpaceEED2Ev.exit1531

bb.gq:                                            ; preds = %bb.gg
  %i.tm = sext i32 %.16522143 to i64
  %i.tn = getelementptr inbounds [4 x i8], ptr %i.ns, i64 %i.tm
  %i.to = trunc nuw nsw i64 %indvars.iv2359 to i32
  store i32 %i.to, ptr %i.tn, align 4, !tbaa !100
  %i.tp = load double, ptr %i.og, align 8, !tbaa !98
  %i.tq = fcmp ogt double %i.sh, %i.tp
  br i1 %i.tq, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %bb.gq
  %i.tr = sext i32 %.16482144 to i64
  %i.ts = getelementptr inbounds [4 x i8], ptr %i.ny, i64 %i.tr
  store i32 %.16522143, ptr %i.ts, align 4, !tbaa !100
  %i.tt = add nsw i32 %.16482144, 1
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gq
  %.2649 = phi i32 [ %i.tt, %bb.gr ], [ %.16482144, %bb.gq ]
  %i.tu = load double, ptr %i.oh, align 8, !tbaa !99
  %i.tv = fcmp olt double %i.sj, %i.tu
  br i1 %i.tv, label %bb.gt, label %bb.gu

bb.gt:                                            ; preds = %bb.gs
  %i.tw = sext i32 %.16442145 to i64
  %i.tx = getelementptr inbounds [4 x i8], ptr %i.oe, i64 %i.tw
  store i32 %.16522143, ptr %i.tx, align 4, !tbaa !100
  %i.ty = add nsw i32 %.16442145, 1
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %bb.gs
  %.2645 = phi i32 [ %i.ty, %bb.gt ], [ %.16442145, %bb.gs ]
  %i.tz = add nsw i32 %.16522143, 1
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %bb.gf
  %.2656 = phi i32 [ %i.so, %bb.gf ], [ %.16552142, %bb.gu ] ; 2 uses
  %.2653 = phi i32 [ %.16522143, %bb.gf ], [ %i.tz, %bb.gu ] ; 2 uses
  %.3650 = phi i32 [ %.16482144, %bb.gf ], [ %.2649, %bb.gu ] ; 2 uses
  %.3646 = phi i32 [ %.16442145, %bb.gf ], [ %.2645, %bb.gu ] ; 2 uses
  %indvars.iv.next2360 = add nuw nsw i64 %indvars.iv2359, 1 ; 2 uses
  %exitcond2363.not = icmp eq i64 %indvars.iv.next2360, %wide.trip.count2362
  br i1 %exitcond2363.not, label %._crit_edge2149, label %.lr.ph2148, !llvm.loop !224

bb.gw:                                            ; preds = %._crit_edge2149
  %i.ua = load i32, ptr %i.of, align 8, !tbaa !122
  %i.ub = icmp eq i32 %i.ua, 0
  br i1 %i.ub, label %bb.gz, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.uc = icmp sge i32 %.1668.lcssa, %.1655.lcssa
  %i.ud = icmp eq i32 %.1668.lcssa, 0
  %or.cond = or i1 %i.ud, %i.uc
  br i1 %or.cond, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  store i32 3, ptr %i.oi, align 8, !tbaa !101
  %i.ue = load ptr, ptr %i.ok, align 8, !tbaa !33 ; 2 uses
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !26
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 16
  %i.uh = load ptr, ptr %i.ug, align 8
  invoke void (ptr, i32, i32, ptr, ...) %i.uh(ptr noundef nonnull align 8 dereferenceable(40) %i.ue, i32 noundef 4, i32 noundef 3, ptr noundef nonnull @.str.93, i32 noundef %.1668.lcssa, i32 noundef %.1655.lcssa)
          to label %bb.ev unwind label %bb.fd, !llvm.loop !225

bb.gz:                                            ; preds = %bb.gx, %bb.gw, %._crit_edge2149
  %i.ui = icmp sgt i32 %.1655.lcssa, 0
  br i1 %i.ui, label %bb.ha, label %bb.hw

bb.ha:                                            ; preds = %bb.gz
  %i.uj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !36
  %.not1968 = icmp eq ptr %i.uk, null
  br i1 %.not1968, label %bb.hw, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #22
  %i.ul = getelementptr inbounds nuw i8, ptr %61, i64 8
  store ptr %61, ptr %i.ul, align 8, !tbaa !126
  store ptr %61, ptr %61, align 8, !tbaa !127
  %i.um = getelementptr inbounds nuw i8, ptr %61, i64 16 ; 2 uses
  store i64 0, ptr %i.um, align 8, !tbaa !309
  %i.un = invoke noundef zeroext i1 @_ZN5Ipopt11TNLPAdapter29DetermineDependentConstraintsEiPKiPKdS4_S4_S4_iS2_RNSt7__cxx114listIiSaIiEEE(ptr noundef nonnull align 8 dereferenceable(600) %0, i32 noundef %.1668.lcssa, ptr noundef nonnull %i.mu, ptr noundef nonnull %i.ku, ptr noundef nonnull %i.la, ptr noundef nonnull %i.lg, ptr nonnull poison, i32 noundef %.1655.lcssa, ptr noundef nonnull %i.nm, ptr noundef nonnull align 8 dereferenceable(24) %61)
          to label %bb.hc unwind label %bb.he

bb.hc:                                            ; preds = %bb.hb
  br i1 %i.un, label %bb.hf, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.uo = load ptr, ptr %i.ok, align 8, !tbaa !33 ; 2 uses
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !26
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 16
  %i.ur = load ptr, ptr %i.uq, align 8
  invoke void (ptr, i32, i32, ptr, ...) %i.ur(ptr noundef nonnull align 8 dereferenceable(40) %i.uo, i32 noundef 4, i32 noundef 3, ptr noundef nonnull @.str.94)
          to label %bb.hf unwind label %bb.he

bb.he:                                            ; preds = %bb.hl, %bb.hj, %bb.hi, %bb.hh, %bb.hf, %bb.hd, %bb.hb
  %i.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.hv

bb.hf:                                            ; preds = %bb.hd, %bb.hc
  invoke void @_ZNSt7__cxx114listIiSaIiEE4sortEv(ptr noundef nonnull align 8 dereferenceable(24) %61)
          to label %bb.hg unwind label %bb.he

bb.hg:                                            ; preds = %bb.hf
  %i.ut = load ptr, ptr %61, align 8, !tbaa !127
  %i.uu = icmp eq ptr %i.ut, %61
  %i.uv = load ptr, ptr %i.ok, align 8, !tbaa !33 ; 4 uses
  br i1 %i.uu, label %bb.hi, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.uw = load i64, ptr %i.um, align 8, !tbaa !312
  %i.ux = load ptr, ptr %i.uv, align 8, !tbaa !26
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 16
  %i.uz = load ptr, ptr %i.uy, align 8
  invoke void (ptr, i32, i32, ptr, ...) %i.uz(ptr noundef nonnull align 8 dereferenceable(40) %i.uv, i32 noundef 4, i32 noundef 3, ptr noundef nonnull @.str.95, i64 noundef %i.uw)
          to label %bb.hj unwind label %bb.he

bb.hi:                                            ; preds = %bb.hg
  %i.va = load ptr, ptr %i.uv, align 8, !tbaa !26
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 16
  %i.vc = load ptr, ptr %i.vb, align 8
  invoke void (ptr, i32, i32, ptr, ...) %i.vc(ptr noundef nonnull align 8 dereferenceable(40) %i.uv, i32 noundef 6, i32 noundef 3, ptr noundef nonnull @.str.96)
          to label %bb.hj unwind label %bb.he

bb.hj:                                            ; preds = %bb.hi, %bb.hh
  %i.vd = load ptr, ptr %i.ok, align 8, !tbaa !33 ; 2 uses
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !26
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 56
  %i.vg = load ptr, ptr %i.vf, align 8
  %i.vh = invoke noundef zeroext i1 %i.vg(ptr noundef nonnull align 8 dereferenceable(40) %i.vd, i32 noundef 6, i32 noundef 3)
          to label %bb.hk unwind label %bb.he

bb.hk:                                            ; preds = %bb.hj
  br i1 %i.vh, label %bb.hl, label %bb.hp

bb.hl:                                            ; preds = %bb.hk
  %i.vi = load ptr, ptr %i.ok, align 8, !tbaa !33 ; 2 uses
  %i.vj = load ptr, ptr %i.vi, align 8, !tbaa !26
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 16
  %i.vl = load ptr, ptr %i.vk, align 8
  invoke void (ptr, i32, i32, ptr, ...) %i.vl(ptr noundef nonnull align 8 dereferenceable(40) %i.vi, i32 noundef 6, i32 noundef 3, ptr noundef nonnull @.str.97)
          to label %.preheader2085 unwind label %bb.he

.preheader2085:                                   ; preds = %bb.hl
  %.sroa.01861.02155 = load ptr, ptr %61, align 8, !tbaa !127 ; 2 uses
  %.not19692156 = icmp eq ptr %.sroa.01861.02155, %61
  br i1 %.not19692156, label %._crit_edge2160, label %.lr.ph2159

._crit_edge2160:                                  ; preds = %bb.hm, %.preheader2085
  %i.vm = load ptr, ptr %i.ok, align 8, !tbaa !33 ; 2 uses
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !26
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 16
  %i.vp = load ptr, ptr %i.vo, align 8
  invoke void (ptr, i32, i32, ptr, ...) %i.vp(ptr noundef nonnull align 8 dereferenceable(40) %i.vm, i32 noundef 6, i32 noundef 3, ptr noundef nonnull @.str.99)
          to label %bb.hp unwind label %bb.ho

.lr.ph2159:                                       ; preds = %.preheader2085, %bb.hm
  %.sroa.01861.02158 = phi ptr [ %.sroa.01861.0, %bb.hm ], [ %.sroa.01861.02155, %.preheader2085 ] ; 2 uses
  %.06312157 = phi i32 [ %i.vw, %bb.hm ], [ 0, %.preheader2085 ] ; 2 uses
  %i.vq = load ptr, ptr %i.ok, align 8, !tbaa !33 ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %.sroa.01861.02158, i64 16
  %i.vs = load i32, ptr %i.vr, align 4, !tbaa !100
  %i.vt = load ptr, ptr %i.vq, align 8, !tbaa !26
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 16
  %i.vv = load ptr, ptr %i.vu, align 8
  invoke void (ptr, i32, i32, ptr, ...) %i.vv(ptr noundef nonnull align 8 dereferenceable(40) %i.vq, i32 noundef 6, i32 noundef 3, ptr noundef nonnull @.str.98, i32 noundef %.06312157, i32 noundef %i.vs)
          to label %bb.hm unwind label %bb.hn

bb.hm:                                            ; preds = %.lr.ph2159
  %i.vw = add nuw nsw i32 %.06312157, 1
  %.sroa.01861.0 = load ptr, ptr %.sroa.01861.02158, align 8, !tbaa !127 ; 2 uses
  %.not1969 = icmp eq ptr %.sroa.01861.0, %61
  br i1 %.not1969, label %._crit_edge2160, label %.lr.ph2159, !llvm.loop !226

bb.hn:                                            ; preds = %.lr.ph2159
  %i.vx = landingpad { ptr, i32 }
          cleanup
  br label %bb.hv

bb.ho:                                            ; preds = %._crit_edge2160
  %i.vy = landingpad { ptr, i32 }
          cleanup
  br label %bb.hv

bb.hp:                                            ; preds = %._crit_edge2160, %bb.hk
  %i.vz = load ptr, ptr %61, align 8, !tbaa !127  ; 3 uses
  %i.wa = icmp eq ptr %i.vz, %61
  br i1 %i.wa, label %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vz, i64 16
  %i.wc = load i32, ptr %i.wb, align 4, !tbaa !100 ; 6 uses
  %i.wd = icmp slt i32 %i.wc, %.1655.lcssa
  br i1 %i.wd, label %.lr.ph2165.preheader, label %.loopexit2083

.lr.ph2165.preheader:                             ; preds = %bb.hq
  %i.we = sext i32 %i.wc to i64
  br label %.lr.ph2165

.lr.ph2165:                                       ; preds = %.lr.ph2165.preheader, %bb.hs
  %indvar = phi i32 [ 0, %.lr.ph2165.preheader ], [ %indvar.next, %bb.hs ] ; 2 uses
  %indvars.iv2372.in = phi i32 [ %i.wc, %.lr.ph2165.preheader ], [ %indvars.iv2372, %bb.hs ]
  %indvars.iv2364 = phi i64 [ %i.we, %.lr.ph2165.preheader ], [ %indvars.iv.next2365, %bb.hs ] ; 3 uses
  %.06272162 = phi i32 [ %i.wc, %.lr.ph2165.preheader ], [ %.16281916, %bb.hs ] ; 5 uses
  %.sroa.01855.02161 = phi ptr [ %i.vz, %.lr.ph2165.preheader ], [ %.sroa.01855.11915, %bb.hs ] ; 3 uses
  %indvars.iv2372 = add i32 %indvars.iv2372.in, 1 ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %.sroa.01855.02161, i64 16
  %i.wg = load i32, ptr %i.wf, align 4, !tbaa !100 ; 2 uses
  %i.wh = trunc nsw i64 %indvars.iv2364 to i32
  %i.wi = icmp eq i32 %i.wg, %i.wh
  br i1 %i.wi, label %bb.hr, label %.thread1912

.thread1912:                                      ; preds = %.lr.ph2165
  %i.wj = getelementptr inbounds [4 x i8], ptr %i.nm, i64 %indvars.iv2364
  %i.wk = load i32, ptr %i.wj, align 4, !tbaa !100
  %i.wl = sext i32 %.06272162 to i64
  %i.wm = getelementptr inbounds [4 x i8], ptr %i.nm, i64 %i.wl
  store i32 %i.wk, ptr %i.wm, align 4, !tbaa !100
  %i.wn = add nsw i32 %.06272162, 1
  br label %bb.hs

bb.hr:                                            ; preds = %.lr.ph2165
  %i.wo = load ptr, ptr %.sroa.01855.02161, align 8, !tbaa !127 ; 2 uses
  %i.wp = icmp eq ptr %i.wo, %61
  br i1 %i.wp, label %.preheader2082, label %bb.hs

.preheader2082:                                   ; preds = %bb.hr
  %.06252167 = add nsw i32 %i.wg, 1
  %i.wq = icmp slt i32 %.06252167, %.1655.lcssa
  br i1 %i.wq, label %.lr.ph2170.preheader, label %.loopexit2083

.lr.ph2170.preheader:                             ; preds = %.preheader2082
  %i.wr = sext i32 %indvars.iv2372 to i64         ; 5 uses
  %i.ws = sext i32 %.06272162 to i64              ; 5 uses
  %i.wt = add nsw i32 %.1655.lcssa, -2
  %i.wu = add i32 %i.wc, %indvar
  %i.wv = sub i32 %i.wt, %i.wu                    ; 2 uses
  %i.ww = zext i32 %i.wv to i64
  %i.wx = add nuw nsw i64 %i.ww, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.wv, 11
  br i1 %min.iters.check, label %.lr.ph2170.preheader3250, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph2170.preheader
  %i.wy = sub nsw i64 %i.ws, %i.wr
  %i.wz = shl nsw i64 %i.wy, 2
  %i.xa = add nsw i64 %i.wz, -1
  %diff.check = icmp ult i64 %i.xa, 31
  br i1 %diff.check, label %.lr.ph2170.preheader3250, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.wx, 8589934584              ; 4 uses
  %i.xb = add nsw i64 %n.vec, %i.ws               ; 2 uses
  %i.xc = add nsw i64 %n.vec, %i.wr
  %invariant.gep = getelementptr [4 x i8], ptr %i.nm, i64 %i.wr
  %invariant.gep3431 = getelementptr [4 x i8], ptr %i.nm, i64 %i.ws
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !100
  %wide.load3156 = load <4 x i32>, ptr %i.xd, align 4, !tbaa !100
  %gep3432 = getelementptr [4 x i8], ptr %invariant.gep3431, i64 %index ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %gep3432, i64 16
  store <4 x i32> %wide.load, ptr %gep3432, align 4, !tbaa !100
  store <4 x i32> %wide.load3156, ptr %i.xe, align 4, !tbaa !100
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.xf = icmp eq i64 %index.next, %n.vec
  br i1 %i.xf, label %middle.block, label %vector.body, !llvm.loop !227

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.wx, %n.vec
  br i1 %cmp.n, label %.loopexit2083.loopexit, label %.lr.ph2170.preheader3250

.lr.ph2170.preheader3250:                         ; preds = %vector.memcheck, %.lr.ph2170.preheader, %middle.block
  %indvars.iv2379.ph = phi i64 [ %i.ws, %vector.memcheck ], [ %i.ws, %.lr.ph2170.preheader ], [ %i.xb, %middle.block ] ; 2 uses
  %indvars.iv2375.ph = phi i64 [ %i.wr, %vector.memcheck ], [ %i.wr, %.lr.ph2170.preheader ], [ %i.xc, %middle.block ] ; 3 uses
  %i.xg = trunc i64 %indvars.iv2375.ph to i32     ; 2 uses
  %i.xh = sub i32 %.1655.lcssa, %i.xg
  %xtraiter = and i32 %i.xh, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph2170.prol.loopexit, label %.lr.ph2170.prol

.lr.ph2170.prol:                                  ; preds = %.lr.ph2170.preheader3250, %.lr.ph2170.prol
  %indvars.iv2379.prol = phi i64 [ %indvars.iv.next2380.prol, %.lr.ph2170.prol ], [ %indvars.iv2379.ph, %.lr.ph2170.preheader3250 ] ; 2 uses
  %indvars.iv2375.prol = phi i64 [ %indvars.iv.next2376.prol, %.lr.ph2170.prol ], [ %indvars.iv2375.ph, %.lr.ph2170.preheader3250 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph2170.prol ], [ 0, %.lr.ph2170.preheader3250 ]
  %i.xi = getelementptr inbounds [4 x i8], ptr %i.nm, i64 %indvars.iv2375.prol
  %i.xj = load i32, ptr %i.xi, align 4, !tbaa !100
  %indvars.iv.next2380.prol = add nsw i64 %indvars.iv2379.prol, 1 ; 3 uses
  %i.xk = getelementptr inbounds [4 x i8], ptr %i.nm, i64 %indvars.iv2379.prol
  store i32 %i.xj, ptr %i.xk, align 4, !tbaa !100
  %indvars.iv.next2376.prol = add nsw i64 %indvars.iv2375.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph2170.prol.loopexit, label %.lr.ph2170.prol, !llvm.loop !228

.lr.ph2170.prol.loopexit:                         ; preds = %.lr.ph2170.prol, %.lr.ph2170.preheader3250
  %indvars.iv.next2380.lcssa3251.unr = phi i64 [ poison, %.lr.ph2170.preheader3250 ], [ %indvars.iv.next2380.prol, %.lr.ph2170.prol ]
  %indvars.iv2379.unr = phi i64 [ %indvars.iv2379.ph, %.lr.ph2170.preheader3250 ], [ %indvars.iv.next2380.prol, %.lr.ph2170.prol ]
  %indvars.iv2375.unr = phi i64 [ %indvars.iv2375.ph, %.lr.ph2170.preheader3250 ], [ %indvars.iv.next2376.prol, %.lr.ph2170.prol ]
  %i.xl = sub i32 %i.xg, %.1655.lcssa
  %i.xm = icmp ugt i32 %i.xl, -4
  br i1 %i.xm, label %.loopexit2083.loopexit, label %.lr.ph2170

.lr.ph2170:                                       ; preds = %.lr.ph2170.prol.loopexit, %.lr.ph2170
  %indvars.iv2379 = phi i64 [ %indvars.iv.next2380.3, %.lr.ph2170 ], [ %indvars.iv2379.unr, %.lr.ph2170.prol.loopexit ] ; 5 uses
  %indvars.iv2375 = phi i64 [ %indvars.iv.next2376.3, %.lr.ph2170 ], [ %indvars.iv2375.unr, %.lr.ph2170.prol.loopexit ] ; 5 uses
  %i.xn = getelementptr inbounds [4 x i8], ptr %i.nm, i64 %indvars.iv2375
  %i.xo = load i32, ptr %i.xn, align 4, !tbaa !100
  %i.xp = getelementptr inbounds [4 x i8], ptr %i.nm, i64 %indvars.iv2379
  store i32 %i.xo, ptr %i.xp, align 4, !tbaa !100
  %i.xq = getelementptr [4 x i8], ptr %i.nm, i64 %indvars.iv2375
  %i.xr = getelementptr i8, ptr %i.xq, i64 4
  %i.xs = load i32, ptr %i.xr, align 4, !tbaa !100
  %i.xt = getelementptr [4 x i8], ptr %i.nm, i64 %indvars.iv2379
  %i.xu = getelementptr i8, ptr %i.xt, i64 4
  store i32 %i.xs, ptr %i.xu, align 4, !tbaa !100
  %i.xv = getelementptr [4 x i8], ptr %i.nm, i64 %indvars.iv2375
  %i.xw = getelementptr i8, ptr %i.xv, i64 8
  %i.xx = load i32, ptr %i.xw, align 4, !tbaa !100
  %i.xy = getelementptr [4 x i8], ptr %i.nm, i64 %indvars.iv2379
  %i.xz = getelementptr i8, ptr %i.xy, i64 8
  store i32 %i.xx, ptr %i.xz, align 4, !tbaa !100
  %i.ya = getelementptr [4 x i8], ptr %i.nm, i64 %indvars.iv2375
  %i.yb = getelementptr i8, ptr %i.ya, i64 12
  %i.yc = load i32, ptr %i.yb, align 4, !tbaa !100
  %indvars.iv.next2380.3 = add nsw i64 %indvars.iv2379, 4 ; 2 uses
  %i.yd = getelementptr [4 x i8], ptr %i.nm, i64 %indvars.iv2379
  %i.ye = getelementptr i8, ptr %i.yd, i64 12
  store i32 %i.yc, ptr %i.ye, align 4, !tbaa !100
  %indvars.iv.next2376.3 = add nsw i64 %indvars.iv2375, 4 ; 2 uses
  %lftr.wideiv2385.3 = trunc i64 %indvars.iv.next2376.3 to i32
  %exitcond2386.not.3 = icmp eq i32 %.1655.lcssa, %lftr.wideiv2385.3
  br i1 %exitcond2386.not.3, label %.loopexit2083.loopexit, label %.lr.ph2170, !llvm.loop !229

bb.hs:                                            ; preds = %.thread1912, %bb.hr
  %.16281916 = phi i32 [ %i.wn, %.thread1912 ], [ %.06272162, %bb.hr ] ; 2 uses
  %.sroa.01855.11915 = phi ptr [ %.sroa.01855.02161, %.thread1912 ], [ %i.wo, %bb.hr ]
  %indvars.iv.next2365 = add nsw i64 %indvars.iv2364, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next2365 to i32
  %exitcond2368.not = icmp eq i32 %.1655.lcssa, %lftr.wideiv
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond2368.not, label %.loopexit2083, label %.lr.ph2165, !llvm.loop !230

.loopexit2083.loopexit:                           ; preds = %.lr.ph2170.prol.loopexit, %.lr.ph2170, %middle.block
  %indvars.iv.next2380.lcssa = phi i64 [ %i.xb, %middle.block ], [ %indvars.iv.next2380.lcssa3251.unr, %.lr.ph2170.prol.loopexit ], [ %indvars.iv.next2380.3, %.lr.ph2170 ]
  %i.yf = trunc nsw i64 %indvars.iv.next2380.lcssa to i32
  br label %.loopexit2083

.loopexit2083:                                    ; preds = %bb.hs, %.loopexit2083.loopexit, %bb.hq, %.preheader2082
  %.3630 = phi i32 [ %i.yf, %.loopexit2083.loopexit ], [ %.06272162, %.preheader2082 ], [ %i.wc, %bb.hq ], [ %.16281916, %bb.hs ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #22
  store double 0.000000e+00, ptr %i.g, align 8, !tbaa !123
  %i.yg = load i32, ptr %i.hj, align 4, !tbaa !110
  %i.yh = load ptr, ptr %i.hw, align 8, !tbaa !80
  invoke void @_ZN5Ipopt10IpBlasCopyEiPKdiPdi(i32 noundef %i.yg, ptr noundef nonnull %i.g, i32 noundef 0, ptr noundef %i.yh, i32 noundef 1)
          to label %bb.hu unwind label %bb.ht

bb.ht:                                            ; preds = %.loopexit2083
  %i.yi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #22
  br label %bb.hv

bb.hu:                                            ; preds = %.loopexit2083
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #22
  %.pre2604 = load ptr, ptr %61, align 8, !tbaa !127 ; 2 uses
  %.not8.i.i = icmp eq ptr %.pre2604, %61
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.hu, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.yj, %.lr.ph.i.i ], [ %.pre2604, %bb.hu ] ; 2 uses
  %i.yj = load ptr, ptr %.09.i.i, align 8, !tbaa !127 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 24) #24
  %.not.i.i1054 = icmp eq ptr %i.yj, %61
  br i1 %.not.i.i1054, label %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !231

_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit:       ; preds = %.lr.ph.i.i, %bb.hp, %bb.hu
  %.36573040 = phi i32 [ %.1655.lcssa, %bb.hp ], [ %.3630, %bb.hu ], [ %.3630, %.lr.ph.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #22
  br label %bb.hw

bb.hv:                                            ; preds = %bb.hn, %bb.ho, %bb.ht, %bb.he
  %.pn956.pn = phi { ptr, i32 } [ %i.us, %bb.he ], [ %i.yi, %bb.ht ], [ %i.vx, %bb.hn ], [ %i.vy, %bb.ho ]
  %i.yk = load ptr, ptr %61, align 8, !tbaa !127  ; 2 uses
  %.not8.i.i1055 = icmp eq ptr %i.yk, %61
  br i1 %.not8.i.i1055, label %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit1059, label %.lr.ph.i.i1056

.lr.ph.i.i1056:                                   ; preds = %bb.hv, %.lr.ph.i.i1056
  %.09.i.i1057 = phi ptr [ %i.yl, %.lr.ph.i.i1056 ], [ %i.yk, %bb.hv ] ; 2 uses
  %i.yl = load ptr, ptr %.09.i.i1057, align 8, !tbaa !127 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i1057, i64 noundef 24) #24
  %.not.i.i1058 = icmp eq ptr %i.yl, %61
  br i1 %.not.i.i1058, label %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit1059, label %.lr.ph.i.i1056, !llvm.loop !231

_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit1059:   ; preds = %.lr.ph.i.i1056, %bb.hv
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #22
  br label %_ZN5Ipopt8SmartPtrINS_16DenseVectorSpaceEED2Ev.exit1531

bb.hw:                                            ; preds = %bb.gz, %bb.ha, %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit
  %.4658 = phi i32 [ %.36573040, %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit ], [ %.1655.lcssa, %bb.ha ], [ %.1655.lcssa, %bb.gz ] ; 24 uses
  call void @_ZdaPv(ptr noundef nonnull %i.ku) #24
  call void @_ZdaPv(ptr noundef nonnull %i.la) #24
  %i.ym = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #25
          to label %bb.hx unwind label %bb.it     ; 26 uses

bb.hx:                                            ; preds = %bb.hw
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 8 ; 5 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %i.ym, i64 12
  store i32 %.1668.lcssa, ptr %i.yo, align 4, !tbaa !132
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Ipopt16DenseVectorSpaceE, i64 16), ptr %i.ym, align 8, !tbaa !26
  %i.yp = getelementptr inbounds nuw i8, ptr %i.ym, i64 24 ; 3 uses
  store i32 0, ptr %i.yp, align 8, !tbaa !117
  %i.yq = getelementptr inbounds nuw i8, ptr %i.ym, i64 32
  store ptr null, ptr %i.yq, align 8, !tbaa !118
  %i.yr = getelementptr inbounds nuw i8, ptr %i.ym, i64 40
  store ptr %i.yp, ptr %i.yr, align 8, !tbaa !119
  %i.ys = getelementptr inbounds nuw i8, ptr %i.ym, i64 48
  store ptr %i.yp, ptr %i.ys, align 8, !tbaa !120
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ym, i64 56
  store i64 0, ptr %i.yt, align 8, !tbaa !121
  %i.yu = getelementptr inbounds nuw i8, ptr %i.ym, i64 72 ; 3 uses
  store i32 0, ptr %i.yu, align 8, !tbaa !117
  %i.yv = getelementptr inbounds nuw i8, ptr %i.ym, i64 80
  store ptr null, ptr %i.yv, align 8, !tbaa !118
  %i.yw = getelementptr inbounds nuw i8, ptr %i.ym, i64 88
  store ptr %i.yu, ptr %i.yw, align 8, !tbaa !119
  %i.yx = getelementptr inbounds nuw i8, ptr %i.ym, i64 96
  store ptr %i.yu, ptr %i.yx, align 8, !tbaa !120
  %i.yy = getelementptr inbounds nuw i8, ptr %i.ym, i64 104
  store i64 0, ptr %i.yy, align 8, !tbaa !121
  %i.yz = getelementptr inbounds nuw i8, ptr %i.ym, i64 120 ; 3 uses
  store i32 0, ptr %i.yz, align 8, !tbaa !117
  %i.za = getelementptr inbounds nuw i8, ptr %i.ym, i64 128
  store ptr null, ptr %i.za, align 8, !tbaa !118
  %i.zb = getelementptr inbounds nuw i8, ptr %i.ym, i64 136
  store ptr %i.yz, ptr %i.zb, align 8, !tbaa !119
  %i.zc = getelementptr inbounds nuw i8, ptr %i.ym, i64 144
  store ptr %i.yz, ptr %i.zc, align 8, !tbaa !120
  %i.zd = getelementptr inbounds nuw i8, ptr %i.ym, i64 152
  store i64 0, ptr %i.zd, align 8, !tbaa !121
  %i.ze = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  store i32 2, ptr %i.yn, align 8, !tbaa !24
  %i.zf = load ptr, ptr %i.ze, align 8, !tbaa !61 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.zf, null
  br i1 %.not.i.i.i, label %bb.ia, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 8 ; 2 uses
  %i.zh = load i32, ptr %i.zg, align 8, !tbaa !24
  %i.zi = add nsw i32 %i.zh, -1                   ; 2 uses
  store i32 %i.zi, ptr %i.zg, align 8, !tbaa !24
  %i.zj = icmp eq i32 %i.zi, 0
  br i1 %i.zj, label %bb.hz, label %bb.ia

bb.hz:                                            ; preds = %bb.hy
  %i.zk = load ptr, ptr %i.zf, align 8, !tbaa !26
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 8
  %i.zm = load ptr, ptr %i.zl, align 8
  call void %i.zm(ptr noundef nonnull align 8 dereferenceable(16) %i.zf) #22, !inline_history !232
  br label %bb.ia

bb.ia:                                            ; preds = %bb.hz, %bb.hy, %bb.hx
  store ptr %i.ym, ptr %i.ze, align 8, !tbaa !61
  %i.zn = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #25
          to label %bb.ib unwind label %bb.iu     ; 26 uses

bb.ib:                                            ; preds = %bb.ia
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 8 ; 5 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zn, i64 12
  store i32 %.1664.lcssa, ptr %i.zp, align 4, !tbaa !132
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Ipopt16DenseVectorSpaceE, i64 16), ptr %i.zn, align 8, !tbaa !26
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zn, i64 24 ; 3 uses
  store i32 0, ptr %i.zq, align 8, !tbaa !117
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zn, i64 32
  store ptr null, ptr %i.zr, align 8, !tbaa !118
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zn, i64 40
  store ptr %i.zq, ptr %i.zs, align 8, !tbaa !119
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zn, i64 48
  store ptr %i.zq, ptr %i.zt, align 8, !tbaa !120
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zn, i64 56
  store i64 0, ptr %i.zu, align 8, !tbaa !121
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zn, i64 72 ; 3 uses
  store i32 0, ptr %i.zv, align 8, !tbaa !117
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zn, i64 80
  store ptr null, ptr %i.zw, align 8, !tbaa !118
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zn, i64 88
  store ptr %i.zv, ptr %i.zx, align 8, !tbaa !119
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zn, i64 96
  store ptr %i.zv, ptr %i.zy, align 8, !tbaa !120
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zn, i64 104
  store i64 0, ptr %i.zz, align 8, !tbaa !121
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zn, i64 120 ; 3 uses
  store i32 0, ptr %i.aaa, align 8, !tbaa !117
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zn, i64 128
  store ptr null, ptr %i.aab, align 8, !tbaa !118
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zn, i64 136
  store ptr %i.aaa, ptr %i.aac, align 8, !tbaa !119
  %i.aad = getelementptr inbounds nuw i8, ptr %i.zn, i64 144
  store ptr %i.aaa, ptr %i.aad, align 8, !tbaa !120
  %i.aae = getelementptr inbounds nuw i8, ptr %i.zn, i64 152
  store i64 0, ptr %i.aae, align 8, !tbaa !121
  %i.aaf = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  store i32 2, ptr %i.zo, align 8, !tbaa !24
  %i.aag = load ptr, ptr %i.aaf, align 8, !tbaa !61 ; 4 uses
  %.not.i.i.i1064 = icmp eq ptr %i.aag, null
  br i1 %.not.i.i.i1064, label %bb.ie, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 8 ; 2 uses
  %i.aai = load i32, ptr %i.aah, align 8, !tbaa !24
  %i.aaj = add nsw i32 %i.aai, -1                 ; 2 uses
  store i32 %i.aaj, ptr %i.aah, align 8, !tbaa !24
  %i.aak = icmp eq i32 %i.aaj, 0
  br i1 %i.aak, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %bb.ic
  %i.aal = load ptr, ptr %i.aag, align 8, !tbaa !26
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aal, i64 8
  %i.aan = load ptr, ptr %i.aam, align 8
  call void %i.aan(ptr noundef nonnull align 8 dereferenceable(16) %i.aag) #22, !inline_history !232
  br label %bb.ie

bb.ie:                                            ; preds = %bb.id, %bb.ic, %bb.ib
  store ptr %i.zn, ptr %i.aaf, align 8, !tbaa !61
  %i.aao = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #25
          to label %bb.if unwind label %bb.iv     ; 26 uses

bb.if:                                            ; preds = %bb.ie
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aao, i64 8 ; 5 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aao, i64 12
  store i32 %.1660.lcssa, ptr %i.aaq, align 4, !tbaa !132
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Ipopt16DenseVectorSpaceE, i64 16), ptr %i.aao, align 8, !tbaa !26
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aao, i64 24 ; 3 uses
  store i32 0, ptr %i.aar, align 8, !tbaa !117
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aao, i64 32
  store ptr null, ptr %i.aas, align 8, !tbaa !118
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aao, i64 40
  store ptr %i.aar, ptr %i.aat, align 8, !tbaa !119
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aao, i64 48
  store ptr %i.aar, ptr %i.aau, align 8, !tbaa !120
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aao, i64 56
  store i64 0, ptr %i.aav, align 8, !tbaa !121
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aao, i64 72 ; 3 uses
  store i32 0, ptr %i.aaw, align 8, !tbaa !117
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aao, i64 80
  store ptr null, ptr %i.aax, align 8, !tbaa !118
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aao, i64 88
  store ptr %i.aaw, ptr %i.aay, align 8, !tbaa !119
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aao, i64 96
  store ptr %i.aaw, ptr %i.aaz, align 8, !tbaa !120
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aao, i64 104
  store i64 0, ptr %i.aba, align 8, !tbaa !121
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aao, i64 120 ; 3 uses
  store i32 0, ptr %i.abb, align 8, !tbaa !117
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aao, i64 128
  store ptr null, ptr %i.abc, align 8, !tbaa !118
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aao, i64 136
  store ptr %i.abb, ptr %i.abd, align 8, !tbaa !119
  %i.abe = getelementptr inbounds nuw i8, ptr %i.aao, i64 144
  store ptr %i.abb, ptr %i.abe, align 8, !tbaa !120
  %i.abf = getelementptr inbounds nuw i8, ptr %i.aao, i64 152
  store i64 0, ptr %i.abf, align 8, !tbaa !121
  %i.abg = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  store i32 2, ptr %i.aap, align 8, !tbaa !24
  %i.abh = load ptr, ptr %i.abg, align 8, !tbaa !61 ; 4 uses
  %.not.i.i.i1068 = icmp eq ptr %i.abh, null
  br i1 %.not.i.i.i1068, label %bb.ii, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abh, i64 8 ; 2 uses
  %i.abj = load i32, ptr %i.abi, align 8, !tbaa !24
  %i.abk = add nsw i32 %i.abj, -1                 ; 2 uses
  store i32 %i.abk, ptr %i.abi, align 8, !tbaa !24
  %i.abl = icmp eq i32 %i.abk, 0
  br i1 %i.abl, label %bb.ih, label %bb.ii

bb.ih:                                            ; preds = %bb.ig
  %i.abm = load ptr, ptr %i.abh, align 8, !tbaa !26
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 8
  %i.abo = load ptr, ptr %i.abn, align 8
  call void %i.abo(ptr noundef nonnull align 8 dereferenceable(16) %i.abh) #22, !inline_history !232
  br label %bb.ii

bb.ii:                                            ; preds = %bb.ih, %bb.ig, %bb.if
  store ptr %i.aao, ptr %i.abg, align 8, !tbaa !61
  %i.abp = load i32, ptr %i.of, align 8, !tbaa !122
  %i.abq = icmp sgt i32 %i.abp, 0
  br i1 %i.abq, label %bb.ij, label %bb.iy

bb.ij:                                            ; preds = %bb.ii
  %i.abr = load i32, ptr %i.oi, align 8, !tbaa !101
  %switch = icmp ult i32 %i.abr, 2
  br i1 %switch, label %bb.ik, label %bb.iy

bb.ik:                                            ; preds = %bb.ij
  %i.abs = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25
          to label %bb.il unwind label %bb.iw     ; 5 uses

bb.il:                                            ; preds = %bb.ik
  %i.abt = load i32, ptr %i.gg, align 8, !tbaa !109
end_hunk_0
