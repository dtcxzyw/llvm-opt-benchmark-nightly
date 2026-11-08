Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpTNLPAdapter?download=true
inline.NumInlined: 3192
inline.NumDeleted: 752
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 107
begin_hunk_0_@_ZN5Ipopt11TNLPAdapter9GetSpacesERNS_8SmartPtrIKNS_11VectorSpaceEEES5_S5_S5_RNS1_IKNS_11MatrixSpaceEEES5_S9_S5_S9_S5_S9_S9_S9_RNS1_IKNS_14SymMatrixSpaceEEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #22
  br i1 %.0632, label %bb.gb, label %bb.gc

.sink.split3150:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1050.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1053.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1051.thread
  %.pn959.pn1902.ph = phi { ptr, i32 } [ %i.sr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1051.thread ], [ %i.sh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1053.thread ], [ %i.sr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1050.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #22
  br label %bb.gb

bb.gb:                                            ; preds = %.sink.split3150, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1051, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1053
  %.pn959.pn1902 = phi { ptr, i32 } [ %i.si, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1051 ], [ %i.si, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1053 ], [ %.pn959.pn1902.ph, %.sink.split3150 ]
  call void @__cxa_free_exception(ptr %i.sf) #22
  br label %bb.gc

bb.gc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1051, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1053, %bb.gb, %bb.fz
  %.pn959.pn.pn = phi { ptr, i32 } [ %.pn959.pn1902, %bb.gb ], [ %i.si, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1053 ], [ %i.sg, %bb.fz ], [ %i.si, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1051 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  br label %_ZN5Ipopt8SmartPtrINS_16DenseVectorSpaceEED2Ev.exit1531

bb.gd:                                            ; preds = %bb.ft
  %i.sz = sext i32 %.16522161 to i64
  %i.ta = getelementptr inbounds [4 x i8], ptr %i.nn, i64 %i.sz
  %i.tb = trunc nuw nsw i64 %indvars.iv2434 to i32
  store i32 %i.tb, ptr %i.ta, align 4, !tbaa !100
  %i.tc = load double, ptr %i.ob, align 8, !tbaa !98
  %i.td = fcmp ogt double %i.ru, %i.tc
  br i1 %i.td, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  %i.te = sext i32 %.16482162 to i64
  %i.tf = getelementptr inbounds [4 x i8], ptr %i.nt, i64 %i.te
  store i32 %.16522161, ptr %i.tf, align 4, !tbaa !100
  %i.tg = add nsw i32 %.16482162, 1
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %bb.gd
  %.2649 = phi i32 [ %i.tg, %bb.ge ], [ %.16482162, %bb.gd ]
  %i.th = load double, ptr %i.oc, align 8, !tbaa !99
  %i.ti = fcmp olt double %i.rw, %i.th
  br i1 %i.ti, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %bb.gf
  %i.tj = sext i32 %.16442163 to i64
  %i.tk = getelementptr inbounds [4 x i8], ptr %i.nz, i64 %i.tj
  store i32 %.16522161, ptr %i.tk, align 4, !tbaa !100
  %i.tl = add nsw i32 %.16442163, 1
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  %.2645 = phi i32 [ %i.tl, %bb.gg ], [ %.16442163, %bb.gf ]
  %i.tm = add nsw i32 %.16522161, 1
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %bb.fs
  %.2656 = phi i32 [ %i.sb, %bb.fs ], [ %.16552160, %bb.gh ] ; 2 uses
  %.2653 = phi i32 [ %.16522161, %bb.fs ], [ %i.tm, %bb.gh ] ; 2 uses
  %.3650 = phi i32 [ %.16482162, %bb.fs ], [ %.2649, %bb.gh ] ; 2 uses
  %.3646 = phi i32 [ %.16442163, %bb.fs ], [ %.2645, %bb.gh ] ; 2 uses
  %indvars.iv.next2435 = add nuw nsw i64 %indvars.iv2434, 1 ; 2 uses
  %exitcond2438.not = icmp eq i64 %indvars.iv.next2435, %wide.trip.count2437
  br i1 %exitcond2438.not, label %._crit_edge2167, label %.lr.ph2166, !llvm.loop !224

bb.gj:                                            ; preds = %._crit_edge2167
  %i.tn = load i32, ptr %i.oa, align 8, !tbaa !122
  %i.to = icmp eq i32 %i.tn, 0
  br i1 %i.to, label %bb.gm, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.tp = icmp sge i32 %.1668.lcssa, %.1655.lcssa
  %i.tq = icmp eq i32 %.1668.lcssa, 0
  %or.cond = or i1 %i.tq, %i.tp
  br i1 %or.cond, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  store i32 3, ptr %i.od, align 8, !tbaa !101
  %i.tr = load ptr, ptr %i.of, align 8, !tbaa !33 ; 2 uses
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !26
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 16
  %i.tu = load ptr, ptr %i.tt, align 8
  invoke void (ptr, i32, i32, ptr, ...) %i.tu(ptr noundef nonnull align 8 dereferenceable(40) %i.tr, i32 noundef 4, i32 noundef 3, ptr noundef nonnull @.str.93, i32 noundef %.1668.lcssa, i32 noundef %.1655.lcssa)
          to label %bb.eq unwind label %.loopexit.split-lp2103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !llvm.loop !225

bb.gm:                                            ; preds = %bb.gk, %bb.gj, %._crit_edge2167
  %i.tv = icmp sgt i32 %.1655.lcssa, 0
  br i1 %i.tv, label %bb.gn, label %bb.hg

bb.gn:                                            ; preds = %bb.gm
  %i.tw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !36
  %.not1968 = icmp eq ptr %i.tx, null
  br i1 %.not1968, label %bb.hg, label %bb.go

bb.go:                                            ; preds = %bb.gn
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #22
  %i.ty = getelementptr inbounds nuw i8, ptr %61, i64 8
  store ptr %61, ptr %i.ty, align 8, !tbaa !126
  store ptr %61, ptr %61, align 8, !tbaa !127
  %i.tz = getelementptr inbounds nuw i8, ptr %61, i64 16 ; 2 uses
  store i64 0, ptr %i.tz, align 8, !tbaa !309
  %i.ua = invoke noundef zeroext i1 @_ZN5Ipopt11TNLPAdapter29DetermineDependentConstraintsEiPKiPKdS4_S4_S4_iS2_RNSt7__cxx114listIiSaIiEEE(ptr noundef nonnull align 8 dereferenceable(600) %0, i32 noundef %.1668.lcssa, ptr noundef nonnull %i.mp, ptr noundef nonnull %i.kt, ptr noundef nonnull %i.kz, ptr noundef nonnull %i.lf, ptr nonnull poison, i32 noundef %.1655.lcssa, ptr noundef nonnull %i.nh, ptr noundef nonnull align 8 dereferenceable(24) %61)
          to label %bb.gp unwind label %.loopexit.split-lp2095.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gp:                                            ; preds = %bb.go
  br i1 %i.ua, label %bb.gr, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.ub = load ptr, ptr %i.of, align 8, !tbaa !33 ; 2 uses
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !26
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 16
  %i.ue = load ptr, ptr %i.ud, align 8
  invoke void (ptr, i32, i32, ptr, ...) %i.ue(ptr noundef nonnull align 8 dereferenceable(40) %i.ub, i32 noundef 4, i32 noundef 3, ptr noundef nonnull @.str.94)
          to label %bb.gr unwind label %.loopexit.split-lp2095.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gr:                                            ; preds = %bb.gq, %bb.gp
  invoke void @_ZNSt7__cxx114listIiSaIiEE4sortEv(ptr noundef nonnull align 8 dereferenceable(24) %61)
          to label %bb.gs unwind label %.loopexit.split-lp2095.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gs:                                            ; preds = %bb.gr
  %i.uf = load ptr, ptr %61, align 8, !tbaa !127
  %i.ug = icmp eq ptr %i.uf, %61
  %i.uh = load ptr, ptr %i.of, align 8, !tbaa !33 ; 4 uses
  br i1 %i.ug, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.ui = load i64, ptr %i.tz, align 8, !tbaa !312
  %i.uj = load ptr, ptr %i.uh, align 8, !tbaa !26
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 16
  %i.ul = load ptr, ptr %i.uk, align 8
  invoke void (ptr, i32, i32, ptr, ...) %i.ul(ptr noundef nonnull align 8 dereferenceable(40) %i.uh, i32 noundef 4, i32 noundef 3, ptr noundef nonnull @.str.95, i64 noundef %i.ui)
          to label %bb.gv unwind label %.loopexit.split-lp2095.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gu:                                            ; preds = %bb.gs
  %i.um = load ptr, ptr %i.uh, align 8, !tbaa !26
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 16
  %i.uo = load ptr, ptr %i.un, align 8
  invoke void (ptr, i32, i32, ptr, ...) %i.uo(ptr noundef nonnull align 8 dereferenceable(40) %i.uh, i32 noundef 6, i32 noundef 3, ptr noundef nonnull @.str.96)
          to label %bb.gv unwind label %.loopexit.split-lp2095.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gv:                                            ; preds = %bb.gu, %bb.gt
  %i.up = load ptr, ptr %i.of, align 8, !tbaa !33 ; 2 uses
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !26
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 56
  %i.us = load ptr, ptr %i.ur, align 8
  %i.ut = invoke noundef zeroext i1 %i.us(ptr noundef nonnull align 8 dereferenceable(40) %i.up, i32 noundef 6, i32 noundef 3)
          to label %bb.gw unwind label %.loopexit.split-lp2095.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gw:                                            ; preds = %bb.gv
  br i1 %i.ut, label %bb.gx, label %bb.gz

bb.gx:                                            ; preds = %bb.gw
  %i.uu = load ptr, ptr %i.of, align 8, !tbaa !33 ; 2 uses
  %i.uv = load ptr, ptr %i.uu, align 8, !tbaa !26
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 16
  %i.ux = load ptr, ptr %i.uw, align 8
  invoke void (ptr, i32, i32, ptr, ...) %i.ux(ptr noundef nonnull align 8 dereferenceable(40) %i.uu, i32 noundef 6, i32 noundef 3, ptr noundef nonnull @.str.97)
          to label %.preheader2093 unwind label %.loopexit.split-lp2095.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader2093:                                   ; preds = %bb.gx
  %.sroa.01861.02173 = load ptr, ptr %61, align 8, !tbaa !127 ; 2 uses
  %.not19692174 = icmp eq ptr %.sroa.01861.02173, %61
  br i1 %.not19692174, label %._crit_edge2178, label %.lr.ph2177

._crit_edge2178:                                  ; preds = %bb.gy, %.preheader2093
  %i.uy = load ptr, ptr %i.of, align 8, !tbaa !33 ; 2 uses
  %i.uz = load ptr, ptr %i.uy, align 8, !tbaa !26
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 16
  %i.vb = load ptr, ptr %i.va, align 8
  invoke void (ptr, i32, i32, ptr, ...) %i.vb(ptr noundef nonnull align 8 dereferenceable(40) %i.uy, i32 noundef 6, i32 noundef 3, ptr noundef nonnull @.str.99)
          to label %bb.gz unwind label %.loopexit.split-lp2095.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph2177:                                       ; preds = %.preheader2093, %bb.gy
  %.sroa.01861.02176 = phi ptr [ %.sroa.01861.0, %bb.gy ], [ %.sroa.01861.02173, %.preheader2093 ] ; 2 uses
  %.06312175 = phi i32 [ %i.vi, %bb.gy ], [ 0, %.preheader2093 ] ; 2 uses
  %i.vc = load ptr, ptr %i.of, align 8, !tbaa !33 ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %.sroa.01861.02176, i64 16
  %i.ve = load i32, ptr %i.vd, align 4, !tbaa !100
  %i.vf = load ptr, ptr %i.vc, align 8, !tbaa !26
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 16
  %i.vh = load ptr, ptr %i.vg, align 8
  invoke void (ptr, i32, i32, ptr, ...) %i.vh(ptr noundef nonnull align 8 dereferenceable(40) %i.vc, i32 noundef 6, i32 noundef 3, ptr noundef nonnull @.str.98, i32 noundef %.06312175, i32 noundef %i.ve)
          to label %bb.gy unwind label %.loopexit.split-lp2095.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gy:                                            ; preds = %.lr.ph2177
  %i.vi = add nuw nsw i32 %.06312175, 1
  %.sroa.01861.0 = load ptr, ptr %.sroa.01861.02176, align 8, !tbaa !127 ; 2 uses
  %.not1969 = icmp eq ptr %.sroa.01861.0, %61
  br i1 %.not1969, label %._crit_edge2178, label %.lr.ph2177, !llvm.loop !226

.loopexit.split-lp2095.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph2177, %bb.go, %bb.gq, %bb.gr, %bb.gt, %bb.gu, %bb.gv, %bb.gx, %._crit_edge2178
  %lpad.loopexit.split-lp3473 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp2095

bb.gz:                                            ; preds = %._crit_edge2178, %bb.gw
  %i.vj = load ptr, ptr %61, align 8, !tbaa !127  ; 4 uses
  %i.vk = icmp eq ptr %i.vj, %61
  br i1 %i.vk, label %bb.hf, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vj, i64 16
  %i.vm = load i32, ptr %i.vl, align 4, !tbaa !100 ; 4 uses
  %i.vn = icmp slt i32 %i.vm, %.1655.lcssa
  br i1 %i.vn, label %.lr.ph2183.preheader, label %.loopexit2091

.lr.ph2183.preheader:                             ; preds = %bb.ha
  %i.vo = sext i32 %i.vm to i64
  br label %.lr.ph2183

.lr.ph2183:                                       ; preds = %.lr.ph2183.preheader, %bb.hc
  %indvars.iv2439 = phi i64 [ %i.vo, %.lr.ph2183.preheader ], [ %indvars.iv.next2440, %bb.hc ] ; 3 uses
  %.06272180 = phi i32 [ %i.vm, %.lr.ph2183.preheader ], [ %.16281916, %bb.hc ] ; 5 uses
  %.sroa.01855.02179 = phi ptr [ %i.vj, %.lr.ph2183.preheader ], [ %.sroa.01855.11915, %bb.hc ] ; 3 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %.sroa.01855.02179, i64 16
  %i.vq = load i32, ptr %i.vp, align 4, !tbaa !100 ; 3 uses
  %i.vr = trunc nsw i64 %indvars.iv2439 to i32
  %i.vs = icmp eq i32 %i.vq, %i.vr
  br i1 %i.vs, label %bb.hb, label %.thread1912

.thread1912:                                      ; preds = %.lr.ph2183
  %i.vt = getelementptr inbounds [4 x i8], ptr %i.nh, i64 %indvars.iv2439
  %i.vu = load i32, ptr %i.vt, align 4, !tbaa !100
  %i.vv = sext i32 %.06272180 to i64
  %i.vw = getelementptr inbounds [4 x i8], ptr %i.nh, i64 %i.vv
  store i32 %i.vu, ptr %i.vw, align 4, !tbaa !100
  %i.vx = add nsw i32 %.06272180, 1
  br label %bb.hc

bb.hb:                                            ; preds = %.lr.ph2183
  %i.vy = load ptr, ptr %.sroa.01855.02179, align 8, !tbaa !127 ; 2 uses
  %i.vz = icmp eq ptr %i.vy, %61
  br i1 %i.vz, label %.preheader2090, label %bb.hc

.preheader2090:                                   ; preds = %bb.hb
  %.06252185 = add nsw i32 %i.vq, 1               ; 2 uses
  %i.wa = icmp slt i32 %.06252185, %.1655.lcssa
  br i1 %i.wa, label %.lr.ph2188.preheader, label %.loopexit2091

.lr.ph2188.preheader:                             ; preds = %.preheader2090
  %i.wb = sext i32 %.06252185 to i64              ; 5 uses
  %i.wc = sext i32 %.06272180 to i64              ; 5 uses
  %i.wd = add nsw i32 %.1655.lcssa, -2
  %i.we = sub i32 %i.wd, %i.vq                    ; 2 uses
  %i.wf = zext i32 %i.we to i64
  %i.wg = add nuw nsw i64 %i.wf, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.we, 11
  br i1 %min.iters.check, label %.lr.ph2188.preheader3464, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph2188.preheader
  %i.wh = sub nsw i64 %i.wc, %i.wb
  %i.wi = shl nsw i64 %i.wh, 2
  %i.wj = add nsw i64 %i.wi, -1
  %diff.check = icmp ult i64 %i.wj, 31
  br i1 %diff.check, label %.lr.ph2188.preheader3464, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.wg, 8589934584              ; 4 uses
  %i.wk = add nsw i64 %n.vec, %i.wc               ; 2 uses
  %i.wl = add nsw i64 %n.vec, %i.wb
  %invariant.gep = getelementptr [4 x i8], ptr %i.nh, i64 %i.wb
  %invariant.gep3651 = getelementptr [4 x i8], ptr %i.nh, i64 %i.wc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !100
  %wide.load3301 = load <4 x i32>, ptr %i.wm, align 4, !tbaa !100
  %gep3652 = getelementptr [4 x i8], ptr %invariant.gep3651, i64 %index ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %gep3652, i64 16
  store <4 x i32> %wide.load, ptr %gep3652, align 4, !tbaa !100
  store <4 x i32> %wide.load3301, ptr %i.wn, align 4, !tbaa !100
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.wo = icmp eq i64 %index.next, %n.vec
  br i1 %i.wo, label %middle.block, label %vector.body, !llvm.loop !227

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.wg, %n.vec
  br i1 %cmp.n, label %.loopexit2091.loopexit, label %.lr.ph2188.preheader3464

.lr.ph2188.preheader3464:                         ; preds = %vector.memcheck, %.lr.ph2188.preheader, %middle.block
  %indvars.iv2454.ph = phi i64 [ %i.wc, %vector.memcheck ], [ %i.wc, %.lr.ph2188.preheader ], [ %i.wk, %middle.block ] ; 2 uses
  %indvars.iv2450.ph = phi i64 [ %i.wb, %vector.memcheck ], [ %i.wb, %.lr.ph2188.preheader ], [ %i.wl, %middle.block ] ; 3 uses
  %i.wp = trunc i64 %indvars.iv2450.ph to i32     ; 2 uses
  %i.wq = sub i32 %.1655.lcssa, %i.wp
  %xtraiter = and i32 %i.wq, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph2188.prol.loopexit, label %.lr.ph2188.prol

.lr.ph2188.prol:                                  ; preds = %.lr.ph2188.preheader3464, %.lr.ph2188.prol
  %indvars.iv2454.prol = phi i64 [ %indvars.iv.next2455.prol, %.lr.ph2188.prol ], [ %indvars.iv2454.ph, %.lr.ph2188.preheader3464 ] ; 2 uses
  %indvars.iv2450.prol = phi i64 [ %indvars.iv.next2451.prol, %.lr.ph2188.prol ], [ %indvars.iv2450.ph, %.lr.ph2188.preheader3464 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph2188.prol ], [ 0, %.lr.ph2188.preheader3464 ]
  %i.wr = getelementptr inbounds [4 x i8], ptr %i.nh, i64 %indvars.iv2450.prol
  %i.ws = load i32, ptr %i.wr, align 4, !tbaa !100
  %indvars.iv.next2455.prol = add nsw i64 %indvars.iv2454.prol, 1 ; 3 uses
  %i.wt = getelementptr inbounds [4 x i8], ptr %i.nh, i64 %indvars.iv2454.prol
  store i32 %i.ws, ptr %i.wt, align 4, !tbaa !100
  %indvars.iv.next2451.prol = add nsw i64 %indvars.iv2450.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph2188.prol.loopexit, label %.lr.ph2188.prol, !llvm.loop !228

.lr.ph2188.prol.loopexit:                         ; preds = %.lr.ph2188.prol, %.lr.ph2188.preheader3464
  %indvars.iv.next2455.lcssa3465.unr = phi i64 [ poison, %.lr.ph2188.preheader3464 ], [ %indvars.iv.next2455.prol, %.lr.ph2188.prol ]
  %indvars.iv2454.unr = phi i64 [ %indvars.iv2454.ph, %.lr.ph2188.preheader3464 ], [ %indvars.iv.next2455.prol, %.lr.ph2188.prol ]
  %indvars.iv2450.unr = phi i64 [ %indvars.iv2450.ph, %.lr.ph2188.preheader3464 ], [ %indvars.iv.next2451.prol, %.lr.ph2188.prol ]
  %i.wu = sub i32 %i.wp, %.1655.lcssa
  %i.wv = icmp ugt i32 %i.wu, -4
  br i1 %i.wv, label %.loopexit2091.loopexit, label %.lr.ph2188

.lr.ph2188:                                       ; preds = %.lr.ph2188.prol.loopexit, %.lr.ph2188
  %indvars.iv2454 = phi i64 [ %indvars.iv.next2455.3, %.lr.ph2188 ], [ %indvars.iv2454.unr, %.lr.ph2188.prol.loopexit ] ; 5 uses
  %indvars.iv2450 = phi i64 [ %indvars.iv.next2451.3, %.lr.ph2188 ], [ %indvars.iv2450.unr, %.lr.ph2188.prol.loopexit ] ; 5 uses
  %i.ww = getelementptr inbounds [4 x i8], ptr %i.nh, i64 %indvars.iv2450
  %i.wx = load i32, ptr %i.ww, align 4, !tbaa !100
  %i.wy = getelementptr inbounds [4 x i8], ptr %i.nh, i64 %indvars.iv2454
  store i32 %i.wx, ptr %i.wy, align 4, !tbaa !100
  %i.wz = getelementptr [4 x i8], ptr %i.nh, i64 %indvars.iv2450
  %i.xa = getelementptr i8, ptr %i.wz, i64 4
  %i.xb = load i32, ptr %i.xa, align 4, !tbaa !100
  %i.xc = getelementptr [4 x i8], ptr %i.nh, i64 %indvars.iv2454
  %i.xd = getelementptr i8, ptr %i.xc, i64 4
  store i32 %i.xb, ptr %i.xd, align 4, !tbaa !100
  %i.xe = getelementptr [4 x i8], ptr %i.nh, i64 %indvars.iv2450
  %i.xf = getelementptr i8, ptr %i.xe, i64 8
  %i.xg = load i32, ptr %i.xf, align 4, !tbaa !100
  %i.xh = getelementptr [4 x i8], ptr %i.nh, i64 %indvars.iv2454
  %i.xi = getelementptr i8, ptr %i.xh, i64 8
  store i32 %i.xg, ptr %i.xi, align 4, !tbaa !100
  %i.xj = getelementptr [4 x i8], ptr %i.nh, i64 %indvars.iv2450
  %i.xk = getelementptr i8, ptr %i.xj, i64 12
  %i.xl = load i32, ptr %i.xk, align 4, !tbaa !100
  %indvars.iv.next2455.3 = add nsw i64 %indvars.iv2454, 4 ; 2 uses
  %i.xm = getelementptr [4 x i8], ptr %i.nh, i64 %indvars.iv2454
  %i.xn = getelementptr i8, ptr %i.xm, i64 12
  store i32 %i.xl, ptr %i.xn, align 4, !tbaa !100
  %indvars.iv.next2451.3 = add nsw i64 %indvars.iv2450, 4 ; 2 uses
  %lftr.wideiv2460.3 = trunc i64 %indvars.iv.next2451.3 to i32
  %exitcond2461.not.3 = icmp eq i32 %.1655.lcssa, %lftr.wideiv2460.3
  br i1 %exitcond2461.not.3, label %.loopexit2091.loopexit, label %.lr.ph2188, !llvm.loop !229

bb.hc:                                            ; preds = %.thread1912, %bb.hb
  %.16281916 = phi i32 [ %i.vx, %.thread1912 ], [ %.06272180, %bb.hb ] ; 2 uses
  %.sroa.01855.11915 = phi ptr [ %.sroa.01855.02179, %.thread1912 ], [ %i.vy, %bb.hb ]
  %indvars.iv.next2440 = add nsw i64 %indvars.iv2439, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next2440 to i32
  %exitcond2443.not = icmp eq i32 %.1655.lcssa, %lftr.wideiv
  br i1 %exitcond2443.not, label %.loopexit2091, label %.lr.ph2183, !llvm.loop !230

.loopexit2091.loopexit:                           ; preds = %.lr.ph2188.prol.loopexit, %.lr.ph2188, %middle.block
  %indvars.iv.next2455.lcssa = phi i64 [ %i.wk, %middle.block ], [ %indvars.iv.next2455.lcssa3465.unr, %.lr.ph2188.prol.loopexit ], [ %indvars.iv.next2455.3, %.lr.ph2188 ]
  %i.xo = trunc nsw i64 %indvars.iv.next2455.lcssa to i32
  br label %.loopexit2091

.loopexit2091:                                    ; preds = %bb.hc, %.loopexit2091.loopexit, %bb.ha, %.preheader2090
  %.3630 = phi i32 [ %i.xo, %.loopexit2091.loopexit ], [ %.06272180, %.preheader2090 ], [ %i.vm, %bb.ha ], [ %.16281916, %bb.hc ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #22
  store double 0.000000e+00, ptr %i.g, align 8, !tbaa !123
  %i.xp = load i32, ptr %i.hj, align 4, !tbaa !110
  %i.xq = load ptr, ptr %i.hw, align 8, !tbaa !80
  invoke void @_ZN5Ipopt10IpBlasCopyEiPKdiPdi(i32 noundef %i.xp, ptr noundef nonnull %i.g, i32 noundef 0, ptr noundef %i.xq, i32 noundef 1)
          to label %bb.hd unwind label %bb.he

bb.hd:                                            ; preds = %.loopexit2091
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #22
  %.pre2679.a = load ptr, ptr %61, align 8, !tbaa !127
  br label %bb.hf

bb.he:                                            ; preds = %.loopexit2091
  %i.xr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #22
  br label %.loopexit.split-lp2095

bb.hf:                                            ; preds = %bb.hd, %bb.gz
  %i.xs = phi ptr [ %i.vj, %bb.gz ], [ %.pre2679.a, %bb.hd ] ; 2 uses
  %.3657 = phi i32 [ %.1655.lcssa, %bb.gz ], [ %.3630, %bb.hd ]
  %.not8.i.i = icmp eq ptr %i.xs, %61
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.hf, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.xt, %.lr.ph.i.i ], [ %i.xs, %bb.hf ] ; 2 uses
  %i.xt = load ptr, ptr %.09.i.i, align 8, !tbaa !127 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 24) #24
  %.not.i.i1054 = icmp eq ptr %i.xt, %61
  br i1 %.not.i.i1054, label %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !231

_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit:       ; preds = %.lr.ph.i.i, %bb.hf
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #22
  br label %bb.hg

.loopexit.split-lp2095:                           ; preds = %.loopexit.split-lp2095.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.he
  %.pn956.pn = phi { ptr, i32 } [ %i.xr, %bb.he ], [ %lpad.loopexit.split-lp3473, %.loopexit.split-lp2095.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.xu = load ptr, ptr %61, align 8, !tbaa !127  ; 2 uses
  %.not8.i.i1055 = icmp eq ptr %i.xu, %61
  br i1 %.not8.i.i1055, label %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit1059, label %.lr.ph.i.i1056

.lr.ph.i.i1056:                                   ; preds = %.loopexit.split-lp2095, %.lr.ph.i.i1056
  %.09.i.i1057 = phi ptr [ %i.xv, %.lr.ph.i.i1056 ], [ %i.xu, %.loopexit.split-lp2095 ] ; 2 uses
  %i.xv = load ptr, ptr %.09.i.i1057, align 8, !tbaa !127 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i1057, i64 noundef 24) #24
  %.not.i.i1058 = icmp eq ptr %i.xv, %61
  br i1 %.not.i.i1058, label %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit1059, label %.lr.ph.i.i1056, !llvm.loop !231

_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit1059:   ; preds = %.lr.ph.i.i1056, %.loopexit.split-lp2095
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #22
  br label %_ZN5Ipopt8SmartPtrINS_16DenseVectorSpaceEED2Ev.exit1531

bb.hg:                                            ; preds = %bb.gm, %bb.gn, %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit
  %.4658 = phi i32 [ %.3657, %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit ], [ %.1655.lcssa, %bb.gn ], [ %.1655.lcssa, %bb.gm ] ; 24 uses
  call void @_ZdaPv(ptr noundef nonnull %i.kt) #24
  call void @_ZdaPv(ptr noundef nonnull %i.kz) #24
  %i.xw = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #25
          to label %bb.hh unwind label %.loopexit.split-lp2103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 26 uses

bb.hh:                                            ; preds = %bb.hg
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 8 ; 5 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xw, i64 12
  store i32 %.1668.lcssa, ptr %i.xy, align 4, !tbaa !132
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Ipopt16DenseVectorSpaceE, i64 16), ptr %i.xw, align 8, !tbaa !26
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xw, i64 24 ; 3 uses
  store i32 0, ptr %i.xz, align 8, !tbaa !117
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xw, i64 32
  store ptr null, ptr %i.ya, align 8, !tbaa !118
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xw, i64 40
  store ptr %i.xz, ptr %i.yb, align 8, !tbaa !119
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xw, i64 48
  store ptr %i.xz, ptr %i.yc, align 8, !tbaa !120
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xw, i64 56
  store i64 0, ptr %i.yd, align 8, !tbaa !121
  %i.ye = getelementptr inbounds nuw i8, ptr %i.xw, i64 72 ; 3 uses
  store i32 0, ptr %i.ye, align 8, !tbaa !117
  %i.yf = getelementptr inbounds nuw i8, ptr %i.xw, i64 80
  store ptr null, ptr %i.yf, align 8, !tbaa !118
  %i.yg = getelementptr inbounds nuw i8, ptr %i.xw, i64 88
  store ptr %i.ye, ptr %i.yg, align 8, !tbaa !119
  %i.yh = getelementptr inbounds nuw i8, ptr %i.xw, i64 96
  store ptr %i.ye, ptr %i.yh, align 8, !tbaa !120
  %i.yi = getelementptr inbounds nuw i8, ptr %i.xw, i64 104
  store i64 0, ptr %i.yi, align 8, !tbaa !121
  %i.yj = getelementptr inbounds nuw i8, ptr %i.xw, i64 120 ; 3 uses
  store i32 0, ptr %i.yj, align 8, !tbaa !117
  %i.yk = getelementptr inbounds nuw i8, ptr %i.xw, i64 128
  store ptr null, ptr %i.yk, align 8, !tbaa !118
  %i.yl = getelementptr inbounds nuw i8, ptr %i.xw, i64 136
  store ptr %i.yj, ptr %i.yl, align 8, !tbaa !119
  %i.ym = getelementptr inbounds nuw i8, ptr %i.xw, i64 144
  store ptr %i.yj, ptr %i.ym, align 8, !tbaa !120
  %i.yn = getelementptr inbounds nuw i8, ptr %i.xw, i64 152
  store i64 0, ptr %i.yn, align 8, !tbaa !121
  %i.yo = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  store i32 2, ptr %i.xx, align 8, !tbaa !24
  %i.yp = load ptr, ptr %i.yo, align 8, !tbaa !61 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.yp, null
  br i1 %.not.i.i.i, label %bb.hk, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 8 ; 2 uses
  %i.yr = load i32, ptr %i.yq, align 8, !tbaa !24
  %i.ys = add nsw i32 %i.yr, -1                   ; 2 uses
  store i32 %i.ys, ptr %i.yq, align 8, !tbaa !24
  %i.yt = icmp eq i32 %i.ys, 0
  br i1 %i.yt, label %bb.hj, label %bb.hk

bb.hj:                                            ; preds = %bb.hi
  %i.yu = load ptr, ptr %i.yp, align 8, !tbaa !26
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 8
  %i.yw = load ptr, ptr %i.yv, align 8
  call void %i.yw(ptr noundef nonnull align 8 dereferenceable(16) %i.yp) #22, !inline_history !232
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %bb.hi, %bb.hh
  store ptr %i.xw, ptr %i.yo, align 8, !tbaa !61
  %i.yx = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #25
          to label %bb.hl unwind label %bb.id     ; 26 uses

bb.hl:                                            ; preds = %bb.hk
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 8 ; 5 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yx, i64 12
  store i32 %.1664.lcssa, ptr %i.yz, align 4, !tbaa !132
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Ipopt16DenseVectorSpaceE, i64 16), ptr %i.yx, align 8, !tbaa !26
  %i.za = getelementptr inbounds nuw i8, ptr %i.yx, i64 24 ; 3 uses
  store i32 0, ptr %i.za, align 8, !tbaa !117
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yx, i64 32
  store ptr null, ptr %i.zb, align 8, !tbaa !118
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yx, i64 40
  store ptr %i.za, ptr %i.zc, align 8, !tbaa !119
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yx, i64 48
  store ptr %i.za, ptr %i.zd, align 8, !tbaa !120
  %i.ze = getelementptr inbounds nuw i8, ptr %i.yx, i64 56
  store i64 0, ptr %i.ze, align 8, !tbaa !121
  %i.zf = getelementptr inbounds nuw i8, ptr %i.yx, i64 72 ; 3 uses
  store i32 0, ptr %i.zf, align 8, !tbaa !117
  %i.zg = getelementptr inbounds nuw i8, ptr %i.yx, i64 80
  store ptr null, ptr %i.zg, align 8, !tbaa !118
  %i.zh = getelementptr inbounds nuw i8, ptr %i.yx, i64 88
  store ptr %i.zf, ptr %i.zh, align 8, !tbaa !119
  %i.zi = getelementptr inbounds nuw i8, ptr %i.yx, i64 96
  store ptr %i.zf, ptr %i.zi, align 8, !tbaa !120
  %i.zj = getelementptr inbounds nuw i8, ptr %i.yx, i64 104
  store i64 0, ptr %i.zj, align 8, !tbaa !121
  %i.zk = getelementptr inbounds nuw i8, ptr %i.yx, i64 120 ; 3 uses
  store i32 0, ptr %i.zk, align 8, !tbaa !117
  %i.zl = getelementptr inbounds nuw i8, ptr %i.yx, i64 128
  store ptr null, ptr %i.zl, align 8, !tbaa !118
  %i.zm = getelementptr inbounds nuw i8, ptr %i.yx, i64 136
  store ptr %i.zk, ptr %i.zm, align 8, !tbaa !119
  %i.zn = getelementptr inbounds nuw i8, ptr %i.yx, i64 144
  store ptr %i.zk, ptr %i.zn, align 8, !tbaa !120
  %i.zo = getelementptr inbounds nuw i8, ptr %i.yx, i64 152
  store i64 0, ptr %i.zo, align 8, !tbaa !121
  %i.zp = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  store i32 2, ptr %i.yy, align 8, !tbaa !24
  %i.zq = load ptr, ptr %i.zp, align 8, !tbaa !61 ; 4 uses
  %.not.i.i.i1064 = icmp eq ptr %i.zq, null
  br i1 %.not.i.i.i1064, label %bb.ho, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 8 ; 2 uses
  %i.zs = load i32, ptr %i.zr, align 8, !tbaa !24
  %i.zt = add nsw i32 %i.zs, -1                   ; 2 uses
  store i32 %i.zt, ptr %i.zr, align 8, !tbaa !24
  %i.zu = icmp eq i32 %i.zt, 0
  br i1 %i.zu, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %bb.hm
  %i.zv = load ptr, ptr %i.zq, align 8, !tbaa !26
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 8
  %i.zx = load ptr, ptr %i.zw, align 8
  call void %i.zx(ptr noundef nonnull align 8 dereferenceable(16) %i.zq) #22, !inline_history !232
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hn, %bb.hm, %bb.hl
  store ptr %i.yx, ptr %i.zp, align 8, !tbaa !61
  %i.zy = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #25
          to label %bb.hp unwind label %bb.ie     ; 26 uses

bb.hp:                                            ; preds = %bb.ho
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 8 ; 5 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zy, i64 12
  store i32 %.1660.lcssa, ptr %i.aaa, align 4, !tbaa !132
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Ipopt16DenseVectorSpaceE, i64 16), ptr %i.zy, align 8, !tbaa !26
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zy, i64 24 ; 3 uses
  store i32 0, ptr %i.aab, align 8, !tbaa !117
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zy, i64 32
  store ptr null, ptr %i.aac, align 8, !tbaa !118
  %i.aad = getelementptr inbounds nuw i8, ptr %i.zy, i64 40
end_hunk_0
