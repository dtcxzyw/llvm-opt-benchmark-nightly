Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proxy/original/spec_skills_fmt_format?download=true
inline.NumInlined: 1124
inline.NumDeleted: 425
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i70: ; preds = %_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEEZNS1_11write_fixedIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIdEEEET1_SC_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS5_E0_EESC_SC_SJ_mOSD_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i69
  %i.ft = load ptr, ptr %8, align 8, !tbaa !34    ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.fv = icmp eq ptr %i.ft, %i.fu
  br i1 %i.fv, label %_ZN3fmt3v126detail14digit_groupingIcED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i70
  %i.fw = load i64, ptr %i.fu, align 8, !tbaa !28
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fx) #23
  br label %_ZN3fmt3v126detail14digit_groupingIcED2Ev.exit74

_ZN3fmt3v126detail14digit_groupingIcED2Ev.exit74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  br label %bb.al

bb.aa:                                            ; preds = %_ZNK3fmt3v126detail14digit_groupingIcE16count_separatorsEi.exit67
  %i.fy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @_ZN3fmt3v126detail14digit_groupingIcED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  br label %bb.am

bb.ab:                                            ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  %i.fz = sub nsw i32 0, %i.k                     ; 4 uses
  store i32 %i.fz, ptr %i.f, align 4, !tbaa !49
  %i.ga = icmp eq i32 %2, 0
  br i1 %i.ga, label %bb.ac, label %.thread88

.thread88:                                        ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #22
  br label %.thread91

bb.ac:                                            ; preds = %bb.ab
  %i.gb = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !39 ; 4 uses
  %i.gd = icmp sgt i32 %i.gc, -1
  %i.ge = icmp slt i32 %i.gc, %i.fz
  %or.cond52 = select i1 %i.gd, i1 %i.ge, i1 false
  br i1 %or.cond52, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 %i.gc, ptr %i.f, align 4, !tbaa !49
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.gf = phi i32 [ %i.gc, %bb.ad ], [ %i.fz, %bb.ac ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #22
  %.not94 = icmp eq i32 %i.gf, 0
  br i1 %.not94, label %bb.af, label %.thread91

.thread91:                                        ; preds = %bb.ae, %.thread88
  %.ph = phi i32 [ %i.fz, %.thread88 ], [ %i.gf, %bb.ae ]
  store i8 1, ptr %i.g, align 1, !tbaa !92
  %.pre = load i32, ptr %4, align 4, !tbaa !37
  br label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.gg = load i32, ptr %4, align 4, !tbaa !37
  %.fr95 = freeze i32 %i.gg                       ; 2 uses
  %i.gh = and i32 %.fr95, 8192                    ; 2 uses
  %.not96 = icmp eq i32 %i.gh, 0
  %.lobit = lshr exact i32 %i.gh, 13
  %i.gi = trunc nuw nsw i32 %.lobit to i8
  store i8 %i.gi, ptr %i.g, align 1, !tbaa !92
  %spec.select93 = select i1 %.not96, i32 1, i32 2
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.thread91
  %i.gj = phi i32 [ %.fr95, %bb.af ], [ %.pre, %.thread91 ] ; 2 uses
  %i.gk = phi i32 [ 0, %bb.af ], [ %.ph, %.thread91 ]
  %i.gl = phi i32 [ %spec.select93, %bb.af ], [ 2, %.thread91 ]
  %i.gm = add nuw nsw i32 %i.gl, %i.gk
  %i.gn = zext nneg i32 %i.gm to i64
  %i.go = add nsw i64 %i.gn, %i.n                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  store ptr %i.c, ptr %10, align 8, !tbaa !45
  %i.gp = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.g, ptr %i.gp, align 8, !tbaa !94
  %i.gq = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.b, ptr %i.gq, align 8, !tbaa !40
  %i.gr = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %i.f, ptr %i.gr, align 8, !tbaa !88
  %i.gs = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %1, ptr %i.gs, align 8, !tbaa !206
  %i.gt = getelementptr inbounds nuw i8, ptr %10, i64 40
  store ptr %i.a, ptr %i.gt, align 8, !tbaa !88
  %i.gu = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !65
  %i.gw = zext i32 %i.gv to i64
  %i.gx = call i64 @llvm.usub.sat.i64(i64 %i.gw, i64 %i.go) ; 4 uses
  %i.gy = lshr i32 %i.gj, 3
  %i.gz = and i32 %i.gy, 7
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw i8, ptr @.str.19, i64 %i.ha
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !28
  %i.hd = sext i8 %i.hc to i64
  %i.he = and i64 %i.hd, 4294967295
  %i.hf = lshr i64 %i.gx, %i.he                   ; 4 uses
  %i.hg = sub nsw i64 %i.gx, %i.hf
  %i.hh = lshr i32 %i.gj, 15
  %i.hi = and i32 %i.hh, 7
  %i.hj = zext nneg i32 %i.hi to i64
  %i.hk = mul nuw nsw i64 %i.gx, %i.hj
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !61
  %i.hn = add i64 %i.hm, %i.go
  %i.ho = add i64 %i.hn, %i.hk                    ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !62
  %i.hr = icmp ugt i64 %i.ho, %i.hq
  br i1 %i.hr, label %bb.ah, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i75

bb.ah:                                            ; preds = %bb.ag
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !63
  call void %i.ht(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ho), !inline_history !205
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i75

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i75: ; preds = %bb.ah, %bb.ag
  %.not.i.i76 = icmp eq i64 %i.hf, 0
  br i1 %.not.i.i76, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i75
  %i.hu = call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr nonnull %0, i64 noundef %i.hf, ptr noundef nonnull align 4 dereferenceable(16) %4)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i75
  %.sroa.09.0.i.i77 = phi ptr [ %i.hu, %bb.ai ], [ %0, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i75 ]
  %i.hv = call ptr @_ZZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEENKUlS6_E1_clES6_(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr %.sroa.09.0.i.i77) ; 2 uses
  %.not31.i.i78 = icmp eq i64 %i.gx, %i.hf
  br i1 %.not31.i.i78, label %_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEEZNS1_11write_fixedIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIdEEEET1_SC_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS5_E1_EESC_SC_SJ_mOSD_.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hw = call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr %i.hv, i64 noundef %i.hg, ptr noundef nonnull align 4 dereferenceable(16) %4)
  br label %_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEEZNS1_11write_fixedIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIdEEEET1_SC_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS5_E1_EESC_SC_SJ_mOSD_.exit

_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEEZNS1_11write_fixedIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIdEEEET1_SC_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS5_E1_EESC_SC_SJ_mOSD_.exit: ; preds = %bb.aj, %bb.ak
  %.sroa.09.1.i.i79 = phi ptr [ %i.hw, %bb.ak ], [ %i.hv, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  br label %bb.al

bb.al:                                            ; preds = %_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEEZNS1_11write_fixedIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIdEEEET1_SC_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS5_E1_EESC_SC_SJ_mOSD_.exit, %_ZN3fmt3v126detail14digit_groupingIcED2Ev.exit74, %_ZN3fmt3v126detail14digit_groupingIcED2Ev.exit
  %.sroa.039.0 = phi ptr [ %.sroa.09.1.i.i, %_ZN3fmt3v126detail14digit_groupingIcED2Ev.exit ], [ %i.fm, %_ZN3fmt3v126detail14digit_groupingIcED2Ev.exit74 ], [ %.sroa.09.1.i.i79, %_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEEZNS1_11write_fixedIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIdEEEET1_SC_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS5_E1_EESC_SC_SJ_mOSD_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  ret ptr %.sroa.039.0

bb.am:                                            ; preds = %bb.aa, %bb.t
  %.pn49.pn = phi { ptr, i32 } [ %lpad.phi, %bb.t ], [ %i.fy, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  resume { ptr, i32 } %.pn49.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local ptr @_ZZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEENKUlS6_E_clES6_(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = alloca [21 x i8], align 16               ; 8 uses
  %i.b = load i32, ptr %0, align 8, !tbaa !79     ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = shl nsw i32 %i.b, 3
  %i.d = lshr i32 539700480, %i.c
  %i.e = trunc i32 %i.d to i8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !61   ; 2 uses
  %i.h = add i64 %i.g, 1                          ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !62
  %i.k = icmp ugt i64 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !63
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.h), !inline_history !1
  %.pre.i.i = load i64, ptr %i.f, align 8, !tbaa !61 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.b, %bb.c
  %.pre-phi.i.i = phi i64 [ %i.h, %bb.b ], [ %.pre2.i.i, %bb.c ]
  %i.n = phi i64 [ %i.g, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.o = load ptr, ptr %1, align 8, !tbaa !64
  store i64 %.pre-phi.i.i, ptr %i.f, align 8, !tbaa !61
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.n
  store i8 %i.e, ptr %i.p, align 1, !tbaa !28
  br label %bb.d

bb.d:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !207  ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !80   ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.v = load i8, ptr %i.u, align 4, !tbaa !81    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %.not.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.w = icmp ugt i64 %i.r, 99
  br i1 %i.w, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.i.i.i
  %.020.i.i.i = phi i32 [ %i.x, %.lr.ph.i.i.i ], [ %i.t, %bb.e ]
  %.01819.i.i.i = phi i64 [ %i.ae, %.lr.ph.i.i.i ], [ %i.r, %bb.e ] ; 3 uses
  %i.x = add i32 %.020.i.i.i, -2                  ; 3 uses
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.y
  %i.aa = urem i64 %.01819.i.i.i, 100
  %i.ab = shl nuw nsw i64 %i.aa, 1
  %i.ac = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2
  store i16 %i.ad, ptr %i.z, align 1
  %i.ae = udiv i64 %.01819.i.i.i, 100             ; 2 uses
  %i.af = icmp ugt i64 %.01819.i.i.i, 9999
  br i1 %i.af, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !7

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.e
  %.018.lcssa.i.i.i = phi i64 [ %i.r, %bb.e ], [ %i.ae, %.lr.ph.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i = phi i32 [ %i.t, %bb.e ], [ %i.x, %.lr.ph.i.i.i ] ; 2 uses
  %i.ag = icmp samesign ugt i64 %.018.lcssa.i.i.i, 9
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.ah = add i32 %.0.lcssa.i.i.i, -2
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ai
  %i.ak = shl nuw nsw i64 %.018.lcssa.i.i.i, 1
  %i.al = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.ak
  %i.am = load i16, ptr %i.al, align 2
  store i16 %i.am, ptr %i.aj, align 1
  br label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i.i

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.an = trunc nuw nsw i64 %.018.lcssa.i.i.i to i8
  %i.ao = or disjoint i8 %i.an, 48
  %i.ap = add i32 %.0.lcssa.i.i.i, -1
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aq
  store i8 %i.ao, ptr %i.ar, align 1, !tbaa !28
  br label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i.i

_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i.i: ; preds = %bb.g, %bb.f
  %i.as = sext i32 %i.t to i64
  %i.at = getelementptr inbounds i8, ptr %i.a, i64 %i.as
  br label %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit

bb.h:                                             ; preds = %bb.d
  %i.au = sext i32 %i.t to i64
  %i.av = getelementptr i8, ptr %i.a, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.av, i64 1      ; 4 uses
  %i.ax = add nsw i32 %i.t, -1                    ; 2 uses
  %i.ay = icmp sgt i32 %i.t, 2
  br i1 %i.ay, label %.lr.ph.preheader.i.i.a, label %._crit_edge.i.i.a

.lr.ph.preheader.i.i.a:                           ; preds = %bb.h
  %2 = lshr i32 %i.ax, 1
  br label %.lr.ph.i.i

._crit_edge.i.i.a:                                ; preds = %.lr.ph.i.i, %bb.h
  %.029.lcssa.i.i.a = phi i64 [ %i.r, %bb.h ], [ %i.be, %.lr.ph.i.i ] ; 3 uses
  %.028.lcssa.i.i.a = phi ptr [ %i.aw, %bb.h ], [ %i.az, %.lr.ph.i.i ] ; 2 uses
  %3 = and i32 %i.ax, 1
  %.not32.i.i.a = icmp eq i32 %3, 0
  br i1 %.not32.i.i.a, label %bb.j, label %bb.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.a
  %.046.i.i = phi i32 [ %i.bf, %.lr.ph.i.i ], [ %2, %.lr.ph.preheader.i.i.a ] ; 2 uses
  %.02845.i.i = phi ptr [ %i.az, %.lr.ph.i.i ], [ %i.aw, %.lr.ph.preheader.i.i.a ]
  %.02944.i.i = phi i64 [ %i.be, %.lr.ph.i.i ], [ %i.r, %.lr.ph.preheader.i.i.a ] ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %.02845.i.i, i64 -2 ; 3 uses
  %i.ba = urem i64 %.02944.i.i, 100
  %i.bb = shl nuw nsw i64 %i.ba, 1
  %i.bc = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.bb
  %i.bd = load i16, ptr %i.bc, align 2
  store i16 %i.bd, ptr %i.az, align 1
  %i.be = udiv i64 %.02944.i.i, 100               ; 2 uses
  %i.bf = add nsw i32 %.046.i.i, -1
  %4 = icmp samesign ugt i32 %.046.i.i, 1
  br i1 %4, label %.lr.ph.i.i, label %._crit_edge.i.i.a, !llvm.loop !8

bb.i:                                             ; preds = %._crit_edge.i.i.a
  %i.bg = urem i64 %.029.lcssa.i.i.a, 10
  %i.bh = trunc nuw nsw i64 %i.bg to i8
  %i.bi = or disjoint i8 %i.bh, 48
  %i.bj = getelementptr inbounds i8, ptr %.028.lcssa.i.i.a, i64 -1 ; 2 uses
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !28
  %i.bk = udiv i64 %.029.lcssa.i.i.a, 10
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.a
  %.130.i.i = phi i64 [ %i.bk, %bb.i ], [ %.029.lcssa.i.i.a, %._crit_edge.i.i.a ] ; 3 uses
  %.1.i.i = phi ptr [ %i.bj, %bb.i ], [ %.028.lcssa.i.i.a, %._crit_edge.i.i.a ] ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %.1.i.i, i64 -1
  store i8 %i.v, ptr %i.bl, align 1, !tbaa !28
  %i.bm = getelementptr inbounds i8, ptr %.1.i.i, i64 -2 ; 3 uses
  %i.bn = icmp ugt i64 %.130.i.i, 99
  br i1 %i.bn, label %.lr.ph.i37.i.i, label %._crit_edge.i33.i.i

.lr.ph.i37.i.i:                                   ; preds = %bb.j, %.lr.ph.i37.i.i
  %.020.i38.i.i = phi i32 [ %i.bo, %.lr.ph.i37.i.i ], [ 1, %bb.j ]
  %.01819.i39.i.i = phi i64 [ %i.bv, %.lr.ph.i37.i.i ], [ %.130.i.i, %bb.j ] ; 3 uses
  %i.bo = add i32 %.020.i38.i.i, -2               ; 3 uses
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bp
  %i.br = urem i64 %.01819.i39.i.i, 100
  %i.bs = shl nuw nsw i64 %i.br, 1
  %i.bt = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.bs
  %i.bu = load i16, ptr %i.bt, align 2
  store i16 %i.bu, ptr %i.bq, align 1
  %i.bv = udiv i64 %.01819.i39.i.i, 100           ; 2 uses
  %i.bw = icmp ugt i64 %.01819.i39.i.i, 9999
  br i1 %i.bw, label %.lr.ph.i37.i.i, label %._crit_edge.i33.i.i, !llvm.loop !7

._crit_edge.i33.i.i:                              ; preds = %.lr.ph.i37.i.i, %bb.j
  %.018.lcssa.i34.i.i = phi i64 [ %.130.i.i, %bb.j ], [ %i.bv, %.lr.ph.i37.i.i ] ; 3 uses
  %.0.lcssa.i35.i.i = phi i32 [ 1, %bb.j ], [ %i.bo, %.lr.ph.i37.i.i ] ; 2 uses
  %i.bx = icmp samesign ugt i64 %.018.lcssa.i34.i.i, 9
  br i1 %i.bx, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i33.i.i
  %i.by = add i32 %.0.lcssa.i35.i.i, -2
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bz
  %i.cb = shl nuw nsw i64 %.018.lcssa.i34.i.i, 1
  %i.cc = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.cb
  %i.cd = load i16, ptr %i.cc, align 2
  store i16 %i.cd, ptr %i.ca, align 1
  br label %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit

bb.l:                                             ; preds = %._crit_edge.i33.i.i
  %i.ce = trunc nuw nsw i64 %.018.lcssa.i34.i.i to i8
  %i.cf = or disjoint i8 %i.ce, 48
  %i.cg = add i32 %.0.lcssa.i35.i.i, -1
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.ch
  store i8 %i.cf, ptr %i.ci, align 1, !tbaa !28
  br label %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit

_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit: ; preds = %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i.i, %bb.k, %bb.l
  %.027.i.i = phi ptr [ %i.at, %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i.i ], [ %i.aw, %bb.k ], [ %i.aw, %bb.l ]
  %i.cj = call ptr @_ZN3fmt3v126detail13copy_noinlineIcPcNS0_14basic_appenderIcEEEET1_T0_S7_S6_(ptr noundef nonnull %i.a, ptr noundef %.027.i.i, ptr %1) ; 11 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !82 ; 2 uses
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %.lr.ph.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit

.lr.ph.i:                                         ; preds = %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  br label %bb.m

bb.m:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %.lr.ph.i
  %.04.i = phi i32 [ 0, %.lr.ph.i ], [ %i.cy, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i ]
  %i.cq = load i64, ptr %i.cn, align 8, !tbaa !61 ; 2 uses
  %i.cr = add i64 %i.cq, 1                        ; 3 uses
  %i.cs = load i64, ptr %i.co, align 8, !tbaa !62
  %i.ct = icmp ugt i64 %i.cr, %i.cs
  br i1 %i.ct, label %bb.n, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.n:                                             ; preds = %bb.m
  %i.cu = load ptr, ptr %i.cp, align 8, !tbaa !63
  call void %i.cu(ptr noundef nonnull align 8 dereferenceable(32) %i.cj, i64 noundef %i.cr), !inline_history !9
  %.pre.i.i.i = load i64, ptr %i.cn, align 8, !tbaa !61 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.n, %bb.m
  %.pre-phi.i.i.i = phi i64 [ %i.cr, %bb.m ], [ %.pre2.i.i.i, %bb.n ]
  %i.cv = phi i64 [ %i.cq, %bb.m ], [ %.pre.i.i.i, %bb.n ]
  %i.cw = load ptr, ptr %i.cj, align 8, !tbaa !64
  store i64 %.pre-phi.i.i.i, ptr %i.cn, align 8, !tbaa !61
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cv
  store i8 48, ptr %i.cx, align 1, !tbaa !28
  %i.cy = add nuw nsw i32 %.04.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.cy, %i.cl
  br i1 %exitcond.not.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit, label %bb.m, !llvm.loop !6

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.da = load i8, ptr %i.cz, align 4, !tbaa !83
  %i.db = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 3 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !61 ; 2 uses
  %i.dd = add i64 %i.dc, 1                        ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.df = load i64, ptr %i.de, align 8, !tbaa !62
  %i.dg = icmp ugt i64 %i.dd, %i.df
  br i1 %i.dg, label %bb.o, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit11

bb.o:                                             ; preds = %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !63
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(32) %i.cj, i64 noundef %i.dd), !inline_history !1
  %.pre.i.i9 = load i64, ptr %i.db, align 8, !tbaa !61 ; 2 uses
  %.pre2.i.i10 = add i64 %.pre.i.i9, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit11

_ZN3fmt3v1214basic_appenderIcEaSEc.exit11:        ; preds = %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit, %bb.o
  %.pre-phi.i.i8 = phi i64 [ %i.dd, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit ], [ %.pre2.i.i10, %bb.o ]
  %i.dj = phi i64 [ %i.dc, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit ], [ %.pre.i.i9, %bb.o ]
  %i.dk = load ptr, ptr %i.cj, align 8, !tbaa !64
  store i64 %.pre-phi.i.i8, ptr %i.db, align 8, !tbaa !61
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dj
  store i8 %i.da, ptr %i.dl, align 1, !tbaa !28
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !84
  %i.do = call ptr @_ZN3fmt3v126detail14write_exponentIcNS0_14basic_appenderIcEEEET0_iS5_(i32 noundef %i.dn, ptr nonnull %i.cj)
  ret ptr %i.do
}

declare noundef signext i8 @_ZN3fmt3v126detail18decimal_point_implIcEET_NS0_10locale_refE(ptr) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3fmt3v126detail14digit_groupingIcEC2ENS0_10locale_refEb(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %1, i1 noundef zeroext %2) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v12::detail::thousands_sep_result", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !95
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !35
  store i8 0, ptr %i.a, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !95
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i64 0, ptr %i.e, align 8, !tbaa !35
  store i8 0, ptr %i.d, align 8, !tbaa !28
  br i1 %2, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  invoke void @_ZN3fmt3v126detail13thousands_sepIcEENS1_20thousands_sep_resultIT_EENS0_10locale_refE(ptr dead_on_unwind nonnull writable sret(%"struct.fmt::v12::detail::thousands_sep_result") align 8 %3, ptr %1)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.g = load i8, ptr %i.f, align 8, !tbaa !97    ; 2 uses
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.h = load i64, ptr %i.e, align 8, !tbaa !35   ; 2 uses
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !34   ; 3 uses
  %i.j = icmp eq ptr %i.i, %i.d
  br i1 %i.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread: ; preds = %bb.d
  %i.k = icmp ult i64 %i.h, 16
  call void @llvm.assume(i1 %i.k)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.d, align 8, !tbaa !28
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.thread.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef 0, i64 noundef %i.h, ptr noundef null, i64 noundef 1)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.thread.i
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread, %.noexc
  %i.m = phi ptr [ %.pre.i, %.noexc ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  store i8 %i.g, ptr %i.m, align 1, !tbaa !28
  store i64 1, ptr %i.e, align 8, !tbaa !35
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 0, ptr %i.o, align 1, !tbaa !28
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_ZN3fmt3v126detail20thousands_sep_resultIcED2Ev.exit

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.thread.i, %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %3, align 8, !tbaa !34     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
end_hunk_0
begin_hunk_1_@_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_11write_fixedIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIdEEEET1_SC_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS5_E0_EESC_SC_SJ_mmOSD_:bb.a
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
  %i.r = mul nuw nsw i64 %i.d, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !61
  %i.u = add i64 %i.t, %2
  %i.v = add i64 %i.u, %i.r                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !62
  %i.y = icmp ugt i64 %i.v, %i.x
  br i1 %i.y, label %bb.b, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !63
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.v), !inline_history !4
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %bb.a, %bb.b
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %i.ab = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr nonnull %0, i64 noundef %i.m, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %.sroa.09.0 = phi ptr [ %i.ab, %bb.c ], [ %0, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit ] ; 6 uses
  %i.ac = load ptr, ptr %4, align 8, !tbaa !225, !nonnull !52, !align !54
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !85 ; 2 uses
  %.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = shl nsw i32 %i.ad, 3
  %i.af = lshr i32 539700480, %i.ae
  %i.ag = trunc i32 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 8 ; 3 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !61 ; 2 uses
  %i.aj = add i64 %i.ai, 1                        ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !62
  %i.am = icmp ugt i64 %i.aj, %i.al
  br i1 %i.am, label %bb.f, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !63
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.0, i64 noundef %i.aj), !inline_history !222
  %.pre.i.i.i = load i64, ptr %i.ah, align 8, !tbaa !61 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.f, %bb.e
  %.pre-phi.i.i.i = phi i64 [ %i.aj, %bb.e ], [ %.pre2.i.i.i, %bb.f ]
  %i.ap = phi i64 [ %i.ai, %bb.e ], [ %.pre.i.i.i, %bb.f ]
  %i.aq = load ptr, ptr %.sroa.09.0, align 8, !tbaa !64
  store i64 %.pre-phi.i.i.i, ptr %i.ah, align 8, !tbaa !61
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  store i8 %i.ag, ptr %i.ar, align 1, !tbaa !28
  br label %bb.g

bb.g:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !226, !nonnull !52, !align !53
  %i.au = load i64, ptr %i.at, align 8, !tbaa !76
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !227, !nonnull !52, !align !54
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !49
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !228, !nonnull !52, !align !54
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !49
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !229, !nonnull !52
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !28
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !230, !nonnull !52, !align !53
  %i.bg = tail call ptr @_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEcmNS1_14digit_groupingIcEEEET_S7_T1_iiT0_RKT2_(ptr %.sroa.09.0, i64 noundef %i.au, i32 noundef %i.ax, i32 noundef %i.ba, i8 noundef signext %i.bd, ptr noundef nonnull align 8 dereferenceable(64) %i.bf) ; 7 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !231, !nonnull !52, !align !54
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !49 ; 2 uses
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %.lr.ph.i.i, label %_ZZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEENKUlS6_E0_clES6_.exit

.lr.ph.i.i:                                       ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  br label %bb.h

bb.h:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i, %.lr.ph.i.i
  %.04.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.bw, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i ]
  %i.bo = load i64, ptr %i.bl, align 8, !tbaa !61 ; 2 uses
  %i.bp = add i64 %i.bo, 1                        ; 3 uses
  %i.bq = load i64, ptr %i.bm, align 8, !tbaa !62
  %i.br = icmp ugt i64 %i.bp, %i.bq
  br i1 %i.br, label %bb.i, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.bs = load ptr, ptr %i.bn, align 8, !tbaa !63
  tail call void %i.bs(ptr noundef nonnull align 8 dereferenceable(32) %i.bg, i64 noundef %i.bp), !inline_history !223
  %.pre.i.i.i.i = load i64, ptr %i.bl, align 8, !tbaa !61 ; 2 uses
  %.pre2.i.i.i.i = add i64 %.pre.i.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i:      ; preds = %bb.i, %bb.h
  %.pre-phi.i.i.i.i = phi i64 [ %i.bp, %bb.h ], [ %.pre2.i.i.i.i, %bb.i ]
  %i.bt = phi i64 [ %i.bo, %bb.h ], [ %.pre.i.i.i.i, %bb.i ]
  %i.bu = load ptr, ptr %i.bg, align 8, !tbaa !64
  store i64 %.pre-phi.i.i.i.i, ptr %i.bl, align 8, !tbaa !61
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bt
  store i8 48, ptr %i.bv, align 1, !tbaa !28
  %i.bw = add nuw nsw i32 %.04.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.bw, %i.bj
  br i1 %exitcond.not.i.i, label %_ZZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEENKUlS6_E0_clES6_.exit, label %bb.h, !llvm.loop !6

_ZZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEENKUlS6_E0_clES6_.exit: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i, %bb.g
  %.not31 = icmp eq i64 %i.d, %i.m
  br i1 %.not31, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEENKUlS6_E0_clES6_.exit
  %i.bx = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr %i.bg, i64 noundef %i.n, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEENKUlS6_E0_clES6_.exit
  %.sroa.09.1 = phi ptr [ %i.bx, %bb.j ], [ %i.bg, %_ZZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEENKUlS6_E0_clES6_.exit ]
  ret ptr %.sroa.09.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEcmNS1_14digit_groupingIcEEEET_S7_T1_iiT0_RKT2_(ptr %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef signext %4, ptr noundef nonnull align 8 dereferenceable(64) %5) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [21 x i8], align 16               ; 8 uses
  %i.b = alloca [21 x i8], align 16               ; 8 uses
  %6 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !35
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %.not.i.i = icmp eq i8 %4, 0
  br i1 %.not.i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = icmp ugt i64 %1, 99
  br i1 %i.e, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.020.i.i.i = phi i32 [ %i.f, %.lr.ph.i.i.i ], [ %2, %bb.c ]
  %.01819.i.i.i = phi i64 [ %i.m, %.lr.ph.i.i.i ], [ %1, %bb.c ] ; 3 uses
  %i.f = add i32 %.020.i.i.i, -2                  ; 3 uses
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g
  %i.i = urem i64 %.01819.i.i.i, 100
  %i.j = shl nuw nsw i64 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.j
  %i.l = load i16, ptr %i.k, align 2
  store i16 %i.l, ptr %i.h, align 1
  %i.m = udiv i64 %.01819.i.i.i, 100              ; 2 uses
  %i.n = icmp ugt i64 %.01819.i.i.i, 9999
  br i1 %i.n, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !7

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.018.lcssa.i.i.i = phi i64 [ %1, %bb.c ], [ %i.m, %.lr.ph.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i = phi i32 [ %2, %bb.c ], [ %i.f, %.lr.ph.i.i.i ] ; 2 uses
  %i.o = icmp samesign ugt i64 %.018.lcssa.i.i.i, 9
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.p = add i32 %.0.lcssa.i.i.i, -2
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.q
  %i.s = shl nuw nsw i64 %.018.lcssa.i.i.i, 1
  %i.t = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2
  store i16 %i.u, ptr %i.r, align 1
  br label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.v = trunc nuw nsw i64 %.018.lcssa.i.i.i to i8
  %i.w = or disjoint i8 %i.v, 48
  %i.x = add i32 %.0.lcssa.i.i.i, -1
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.y
  store i8 %i.w, ptr %i.z, align 1, !tbaa !28
  br label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i.i

_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i.i: ; preds = %bb.e, %bb.d
  %i.aa = sext i32 %2 to i64
  %i.ab = getelementptr inbounds i8, ptr %i.b, i64 %i.aa
  br label %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit

bb.f:                                             ; preds = %bb.b
  %i.ac = sext i32 %2 to i64
  %i.ad = getelementptr i8, ptr %i.b, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 1      ; 4 uses
  %i.af = sub nsw i32 %2, %3                      ; 3 uses
  %i.ag = icmp sgt i32 %i.af, 1
  br i1 %i.ag, label %.lr.ph.preheader.i.i.a, label %._crit_edge.i.i.a

.lr.ph.preheader.i.i.a:                           ; preds = %bb.f
  %7 = lshr i32 %i.af, 1
  br label %.lr.ph.i.i

._crit_edge.i.i.a:                                ; preds = %.lr.ph.i.i, %bb.f
  %.029.lcssa.i.i.a = phi i64 [ %1, %bb.f ], [ %i.am, %.lr.ph.i.i ] ; 3 uses
  %.028.lcssa.i.i.a = phi ptr [ %i.ae, %bb.f ], [ %i.ah, %.lr.ph.i.i ] ; 2 uses
  %8 = and i32 %i.af, 1
  %.not32.i.i.a = icmp eq i32 %8, 0
  br i1 %.not32.i.i.a, label %bb.h, label %bb.g

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.a
  %.046.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %7, %.lr.ph.preheader.i.i.a ] ; 2 uses
  %.02845.i.i = phi ptr [ %i.ah, %.lr.ph.i.i ], [ %i.ae, %.lr.ph.preheader.i.i.a ]
  %.02944.i.i = phi i64 [ %i.am, %.lr.ph.i.i ], [ %1, %.lr.ph.preheader.i.i.a ] ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %.02845.i.i, i64 -2 ; 3 uses
  %i.ai = urem i64 %.02944.i.i, 100
  %i.aj = shl nuw nsw i64 %i.ai, 1
  %i.ak = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.aj
  %i.al = load i16, ptr %i.ak, align 2
  store i16 %i.al, ptr %i.ah, align 1
  %i.am = udiv i64 %.02944.i.i, 100               ; 2 uses
  %i.an = add nsw i32 %.046.i.i, -1
  %9 = icmp samesign ugt i32 %.046.i.i, 1
  br i1 %9, label %.lr.ph.i.i, label %._crit_edge.i.i.a, !llvm.loop !8

bb.g:                                             ; preds = %._crit_edge.i.i.a
  %i.ao = urem i64 %.029.lcssa.i.i.a, 10
  %i.ap = trunc nuw nsw i64 %i.ao to i8
  %i.aq = or disjoint i8 %i.ap, 48
  %i.ar = getelementptr inbounds i8, ptr %.028.lcssa.i.i.a, i64 -1 ; 2 uses
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !28
  %i.as = udiv i64 %.029.lcssa.i.i.a, 10
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.a
  %.130.i.i = phi i64 [ %i.as, %bb.g ], [ %.029.lcssa.i.i.a, %._crit_edge.i.i.a ] ; 3 uses
  %.1.i.i = phi ptr [ %i.ar, %bb.g ], [ %.028.lcssa.i.i.a, %._crit_edge.i.i.a ]
  %i.at = getelementptr inbounds i8, ptr %.1.i.i, i64 -1 ; 2 uses
  store i8 %4, ptr %i.at, align 1, !tbaa !28
  %i.au = sext i32 %3 to i64
  %i.av = sub nsw i64 0, %i.au
  %i.aw = getelementptr inbounds i8, ptr %i.at, i64 %i.av ; 3 uses
  %i.ax = icmp ugt i64 %.130.i.i, 99
  br i1 %i.ax, label %.lr.ph.i37.i.i, label %._crit_edge.i33.i.i

.lr.ph.i37.i.i:                                   ; preds = %bb.h, %.lr.ph.i37.i.i
  %.020.i38.i.i = phi i32 [ %i.ay, %.lr.ph.i37.i.i ], [ %3, %bb.h ]
  %.01819.i39.i.i = phi i64 [ %i.bf, %.lr.ph.i37.i.i ], [ %.130.i.i, %bb.h ] ; 3 uses
  %i.ay = add i32 %.020.i38.i.i, -2               ; 3 uses
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.az
  %i.bb = urem i64 %.01819.i39.i.i, 100
  %i.bc = shl nuw nsw i64 %i.bb, 1
  %i.bd = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.bc
  %i.be = load i16, ptr %i.bd, align 2
  store i16 %i.be, ptr %i.ba, align 1
  %i.bf = udiv i64 %.01819.i39.i.i, 100           ; 2 uses
  %i.bg = icmp ugt i64 %.01819.i39.i.i, 9999
  br i1 %i.bg, label %.lr.ph.i37.i.i, label %._crit_edge.i33.i.i, !llvm.loop !7

._crit_edge.i33.i.i:                              ; preds = %.lr.ph.i37.i.i, %bb.h
  %.018.lcssa.i34.i.i = phi i64 [ %.130.i.i, %bb.h ], [ %i.bf, %.lr.ph.i37.i.i ] ; 3 uses
  %.0.lcssa.i35.i.i = phi i32 [ %3, %bb.h ], [ %i.ay, %.lr.ph.i37.i.i ] ; 2 uses
  %i.bh = icmp samesign ugt i64 %.018.lcssa.i34.i.i, 9
  br i1 %i.bh, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i33.i.i
  %i.bi = add i32 %.0.lcssa.i35.i.i, -2
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bj
  %i.bl = shl nuw nsw i64 %.018.lcssa.i34.i.i, 1
  %i.bm = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.bl
  %i.bn = load i16, ptr %i.bm, align 2
  store i16 %i.bn, ptr %i.bk, align 1
  br label %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit

bb.j:                                             ; preds = %._crit_edge.i33.i.i
  %i.bo = trunc nuw nsw i64 %.018.lcssa.i34.i.i to i8
  %i.bp = or disjoint i8 %i.bo, 48
  %i.bq = add i32 %.0.lcssa.i35.i.i, -1
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.br
  store i8 %i.bp, ptr %i.bs, align 1, !tbaa !28
  br label %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit

_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit: ; preds = %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i.i, %bb.i, %bb.j
  %.027.i.i = phi ptr [ %i.ab, %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i.i ], [ %i.ae, %bb.i ], [ %i.ae, %bb.j ]
  %i.bt = call ptr @_ZN3fmt3v126detail13copy_noinlineIcPcNS0_14basic_appenderIcEEEET1_T0_S7_S6_(ptr noundef nonnull %i.b, ptr noundef %.027.i.i, ptr %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %bb.z

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.bw, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.bv, align 8, !tbaa !63
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  store ptr %i.bx, ptr %6, align 8, !tbaa !64
  store i64 500, ptr %i.bu, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %.not.i.i19 = icmp eq i8 %4, 0
  br i1 %.not.i.i19, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.by = icmp ugt i64 %1, 99
  br i1 %i.by, label %.lr.ph.i.i.i42, label %._crit_edge.i.i.i38

.lr.ph.i.i.i42:                                   ; preds = %bb.l, %.lr.ph.i.i.i42
  %.020.i.i.i43 = phi i32 [ %i.bz, %.lr.ph.i.i.i42 ], [ %2, %bb.l ]
  %.01819.i.i.i44 = phi i64 [ %i.cg, %.lr.ph.i.i.i42 ], [ %1, %bb.l ] ; 3 uses
  %i.bz = add i32 %.020.i.i.i43, -2               ; 3 uses
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ca
  %i.cc = urem i64 %.01819.i.i.i44, 100
  %i.cd = shl nuw nsw i64 %i.cc, 1
  %i.ce = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.cd
  %i.cf = load i16, ptr %i.ce, align 2
  store i16 %i.cf, ptr %i.cb, align 1
  %i.cg = udiv i64 %.01819.i.i.i44, 100           ; 2 uses
  %i.ch = icmp ugt i64 %.01819.i.i.i44, 9999
  br i1 %i.ch, label %.lr.ph.i.i.i42, label %._crit_edge.i.i.i38, !llvm.loop !7

._crit_edge.i.i.i38:                              ; preds = %.lr.ph.i.i.i42, %bb.l
  %.018.lcssa.i.i.i39 = phi i64 [ %1, %bb.l ], [ %i.cg, %.lr.ph.i.i.i42 ] ; 3 uses
  %.0.lcssa.i.i.i40 = phi i32 [ %2, %bb.l ], [ %i.bz, %.lr.ph.i.i.i42 ] ; 2 uses
  %i.ci = icmp samesign ugt i64 %.018.lcssa.i.i.i39, 9
  br i1 %i.ci, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i.i38
  %i.cj = add i32 %.0.lcssa.i.i.i40, -2
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ck
  %i.cm = shl nuw nsw i64 %.018.lcssa.i.i.i39, 1
  %i.cn = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.cm
  %i.co = load i16, ptr %i.cn, align 2
  store i16 %i.co, ptr %i.cl, align 1
  br label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i.i41

bb.n:                                             ; preds = %._crit_edge.i.i.i38
  %i.cp = trunc nuw nsw i64 %.018.lcssa.i.i.i39 to i8
  %i.cq = or disjoint i8 %i.cp, 48
  %i.cr = add i32 %.0.lcssa.i.i.i40, -1
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cs
  store i8 %i.cq, ptr %i.ct, align 1, !tbaa !28
  br label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i.i41

_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i.i41: ; preds = %bb.n, %bb.m
  %i.cu = sext i32 %2 to i64
  %i.cv = getelementptr inbounds i8, ptr %i.a, i64 %i.cu
  br label %_ZN3fmt3v126detail17write_significandIcmTnNSt9enable_ifIXsr3std11is_integralIT0_EE5valueEiE4typeELi0EEEPT_S8_S4_iiS7_.exit.i

bb.o:                                             ; preds = %bb.k
  %i.cw = sext i32 %2 to i64
  %i.cx = getelementptr i8, ptr %i.a, i64 %i.cw
  %i.cy = getelementptr i8, ptr %i.cx, i64 1      ; 4 uses
  %i.cz = sub nsw i32 %2, %3                      ; 3 uses
  %i.da = icmp sgt i32 %i.cz, 1
  br i1 %i.da, label %.lr.ph.preheader.i.i33.a, label %._crit_edge.i.i20.a

.lr.ph.preheader.i.i33.a:                         ; preds = %bb.o
  %10 = lshr i32 %i.cz, 1
  br label %.lr.ph.i.i34

._crit_edge.i.i20.a:                              ; preds = %.lr.ph.i.i34, %bb.o
  %.029.lcssa.i.i21.a = phi i64 [ %1, %bb.o ], [ %i.dg, %.lr.ph.i.i34 ] ; 3 uses
  %.028.lcssa.i.i22.a = phi ptr [ %i.cy, %bb.o ], [ %i.db, %.lr.ph.i.i34 ] ; 2 uses
  %11 = and i32 %i.cz, 1
  %.not32.i.i23.a = icmp eq i32 %11, 0
  br i1 %.not32.i.i23.a, label %bb.q, label %bb.p

.lr.ph.i.i34:                                     ; preds = %.lr.ph.i.i34, %.lr.ph.preheader.i.i33.a
  %.046.i.i35 = phi i32 [ %i.dh, %.lr.ph.i.i34 ], [ %10, %.lr.ph.preheader.i.i33.a ] ; 2 uses
  %.02845.i.i36 = phi ptr [ %i.db, %.lr.ph.i.i34 ], [ %i.cy, %.lr.ph.preheader.i.i33.a ]
  %.02944.i.i37 = phi i64 [ %i.dg, %.lr.ph.i.i34 ], [ %1, %.lr.ph.preheader.i.i33.a ] ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %.02845.i.i36, i64 -2 ; 3 uses
  %i.dc = urem i64 %.02944.i.i37, 100
  %i.dd = shl nuw nsw i64 %i.dc, 1
  %i.de = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.dd
  %i.df = load i16, ptr %i.de, align 2
  store i16 %i.df, ptr %i.db, align 1
  %i.dg = udiv i64 %.02944.i.i37, 100             ; 2 uses
  %i.dh = add nsw i32 %.046.i.i35, -1
  %12 = icmp samesign ugt i32 %.046.i.i35, 1
  br i1 %12, label %.lr.ph.i.i34, label %._crit_edge.i.i20.a, !llvm.loop !8

bb.p:                                             ; preds = %._crit_edge.i.i20.a
  %i.di = urem i64 %.029.lcssa.i.i21.a, 10
  %i.dj = trunc nuw nsw i64 %i.di to i8
  %i.dk = or disjoint i8 %i.dj, 48
  %i.dl = getelementptr inbounds i8, ptr %.028.lcssa.i.i22.a, i64 -1 ; 2 uses
  store i8 %i.dk, ptr %i.dl, align 1, !tbaa !28
  %i.dm = udiv i64 %.029.lcssa.i.i21.a, 10
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge.i.i20.a
  %.130.i.i24 = phi i64 [ %i.dm, %bb.p ], [ %.029.lcssa.i.i21.a, %._crit_edge.i.i20.a ] ; 3 uses
  %.1.i.i25 = phi ptr [ %i.dl, %bb.p ], [ %.028.lcssa.i.i22.a, %._crit_edge.i.i20.a ]
  %i.dn = getelementptr inbounds i8, ptr %.1.i.i25, i64 -1 ; 2 uses
  store i8 %4, ptr %i.dn, align 1, !tbaa !28
  %i.do = sext i32 %3 to i64
  %i.dp = sub nsw i64 0, %i.do
  %i.dq = getelementptr inbounds i8, ptr %i.dn, i64 %i.dp ; 3 uses
  %i.dr = icmp ugt i64 %.130.i.i24, 99
  br i1 %i.dr, label %.lr.ph.i37.i.i30, label %._crit_edge.i33.i.i26

.lr.ph.i37.i.i30:                                 ; preds = %bb.q, %.lr.ph.i37.i.i30
  %.020.i38.i.i31 = phi i32 [ %i.ds, %.lr.ph.i37.i.i30 ], [ %3, %bb.q ]
  %.01819.i39.i.i32 = phi i64 [ %i.dz, %.lr.ph.i37.i.i30 ], [ %.130.i.i24, %bb.q ] ; 3 uses
  %i.ds = add i32 %.020.i38.i.i31, -2             ; 3 uses
  %i.dt = zext i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dt
  %i.dv = urem i64 %.01819.i39.i.i32, 100
  %i.dw = shl nuw nsw i64 %i.dv, 1
  %i.dx = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.dw
  %i.dy = load i16, ptr %i.dx, align 2
  store i16 %i.dy, ptr %i.du, align 1
  %i.dz = udiv i64 %.01819.i39.i.i32, 100         ; 2 uses
  %i.ea = icmp ugt i64 %.01819.i39.i.i32, 9999
  br i1 %i.ea, label %.lr.ph.i37.i.i30, label %._crit_edge.i33.i.i26, !llvm.loop !7

._crit_edge.i33.i.i26:                            ; preds = %.lr.ph.i37.i.i30, %bb.q
  %.018.lcssa.i34.i.i27 = phi i64 [ %.130.i.i24, %bb.q ], [ %i.dz, %.lr.ph.i37.i.i30 ] ; 3 uses
  %.0.lcssa.i35.i.i28 = phi i32 [ %3, %bb.q ], [ %i.ds, %.lr.ph.i37.i.i30 ] ; 2 uses
  %i.eb = icmp samesign ugt i64 %.018.lcssa.i34.i.i27, 9
  br i1 %i.eb, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge.i33.i.i26
  %i.ec = add i32 %.0.lcssa.i35.i.i28, -2
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.ed
  %i.ef = shl nuw nsw i64 %.018.lcssa.i34.i.i27, 1
  %i.eg = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.ef
  %i.eh = load i16, ptr %i.eg, align 2
  store i16 %i.eh, ptr %i.ee, align 1
  br label %_ZN3fmt3v126detail17write_significandIcmTnNSt9enable_ifIXsr3std11is_integralIT0_EE5valueEiE4typeELi0EEEPT_S8_S4_iiS7_.exit.i

bb.s:                                             ; preds = %._crit_edge.i33.i.i26
  %i.ei = trunc nuw nsw i64 %.018.lcssa.i34.i.i27 to i8
  %i.ej = or disjoint i8 %i.ei, 48
  %i.ek = add i32 %.0.lcssa.i35.i.i28, -1
  %i.el = zext i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.el
  store i8 %i.ej, ptr %i.em, align 1, !tbaa !28
  br label %_ZN3fmt3v126detail17write_significandIcmTnNSt9enable_ifIXsr3std11is_integralIT0_EE5valueEiE4typeELi0EEEPT_S8_S4_iiS7_.exit.i

_ZN3fmt3v126detail17write_significandIcmTnNSt9enable_ifIXsr3std11is_integralIT0_EE5valueEiE4typeELi0EEEPT_S8_S4_iiS7_.exit.i: ; preds = %bb.s, %bb.r, %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i.i41
  %.027.i.i29 = phi ptr [ %i.cv, %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i.i41 ], [ %i.cy, %bb.r ], [ %i.cy, %bb.s ]
  %i.en = invoke ptr @_ZN3fmt3v126detail13copy_noinlineIcPcNS0_14basic_appenderIcEEEET1_T0_S7_S6_(ptr noundef nonnull %i.a, ptr noundef %.027.i.i29, ptr nonnull %6)
          to label %bb.t unwind label %bb.x       ; 0 uses

bb.t:                                             ; preds = %_ZN3fmt3v126detail17write_significandIcmTnNSt9enable_ifIXsr3std11is_integralIT0_EE5valueEiE4typeELi0EEEPT_S8_S4_iiS7_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.eo = load ptr, ptr %6, align 8, !tbaa !64
  %i.ep = zext i32 %3 to i64
  %i.eq = invoke ptr @_ZNK3fmt3v126detail14digit_groupingIcE5applyINS0_14basic_appenderIcEEcEET_S7_NS0_17basic_string_viewIT0_EE(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr %0, ptr %i.eo, i64 %i.ep)
          to label %bb.u unwind label %bb.x       ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.er = load ptr, ptr %6, align 8, !tbaa !64    ; 2 uses
  %i.es = sext i32 %3 to i64
  %i.et = getelementptr inbounds i8, ptr %i.er, i64 %i.es
  %i.eu = load i64, ptr %i.bw, align 8, !tbaa !61
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.eu
  %i.ew = invoke ptr @_ZN3fmt3v126detail13copy_noinlineIcPcNS0_14basic_appenderIcEEEET1_T0_S7_S6_(ptr noundef %i.et, ptr noundef %i.ev, ptr %0)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.ex = load ptr, ptr %6, align 8, !tbaa !64    ; 2 uses
  %.not.i.i46 = icmp eq ptr %i.ex, %i.bx
  br i1 %.not.i.i46, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @free(ptr noundef %i.ex) #22
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.z

bb.x:                                             ; preds = %_ZN3fmt3v126detail17write_significandIcmTnNSt9enable_ifIXsr3std11is_integralIT0_EE5valueEiE4typeELi0EEEPT_S8_S4_iiS7_.exit.i, %bb.u, %bb.t
  %i.ey = landingpad { ptr, i32 }
          cleanup
  %i.ez = load ptr, ptr %6, align 8, !tbaa !64    ; 2 uses
  %.not.i.i47 = icmp eq ptr %i.ez, %i.bx
  br i1 %.not.i.i47, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit48, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @free(ptr noundef %i.ez) #22
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit48

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit48: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  resume { ptr, i32 } %i.ey

bb.z:                                             ; preds = %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit, %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit
  %.sroa.018.0 = phi ptr [ %i.ew, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit ], [ %i.bt, %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit ]
  ret ptr %.sroa.018.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local ptr @_ZZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEENKUlS6_E1_clES6_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !233, !nonnull !52, !align !54
  %i.b = load i32, ptr %i.a, align 4, !tbaa !85   ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = shl nsw i32 %i.b, 3
  %i.d = lshr i32 539700480, %i.c
  %i.e = trunc i32 %i.d to i8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !61   ; 2 uses
  %i.h = add i64 %i.g, 1                          ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !62
  %i.k = icmp ugt i64 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !63
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.h), !inline_history !1
  %.pre.i.i = load i64, ptr %i.f, align 8, !tbaa !61 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.b, %bb.c
  %.pre-phi.i.i = phi i64 [ %i.h, %bb.b ], [ %.pre2.i.i, %bb.c ]
  %i.n = phi i64 [ %i.g, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.o = load ptr, ptr %1, align 8, !tbaa !64
  store i64 %.pre-phi.i.i, ptr %i.f, align 8, !tbaa !61
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.n
  store i8 %i.e, ptr %i.p, align 1, !tbaa !28
  br label %bb.d

bb.d:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !61   ; 2 uses
  %i.s = add i64 %i.r, 1                          ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !62
  %i.v = icmp ugt i64 %i.s, %i.u
  br i1 %i.v, label %bb.e, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit8

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !63
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.s), !inline_history !1
  %.pre.i.i6 = load i64, ptr %i.q, align 8, !tbaa !61 ; 2 uses
  %.pre2.i.i7 = add i64 %.pre.i.i6, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit8

_ZN3fmt3v1214basic_appenderIcEaSEc.exit8:         ; preds = %bb.d, %bb.e
  %.pre-phi.i.i5 = phi i64 [ %i.s, %bb.d ], [ %.pre2.i.i7, %bb.e ]
  %i.y = phi i64 [ %i.r, %bb.d ], [ %.pre.i.i6, %bb.e ]
  %i.z = load ptr, ptr %1, align 8, !tbaa !64
  store i64 %.pre-phi.i.i5, ptr %i.q, align 8, !tbaa !61
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y
  store i8 48, ptr %i.aa, align 1, !tbaa !28
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !234, !nonnull !52
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !92, !range !105, !noundef !52
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !235, !nonnull !52
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !28
  %i.ai = load i64, ptr %i.q, align 8, !tbaa !61  ; 2 uses
  %i.aj = add i64 %i.ai, 1                        ; 3 uses
  %i.ak = load i64, ptr %i.t, align 8, !tbaa !62
  %i.al = icmp ugt i64 %i.aj, %i.ak
  br i1 %i.al, label %bb.g, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit13

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !63
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.aj), !inline_history !1
  %.pre.i.i11 = load i64, ptr %i.q, align 8, !tbaa !61 ; 2 uses
  %.pre2.i.i12 = add i64 %.pre.i.i11, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit13

_ZN3fmt3v1214basic_appenderIcEaSEc.exit13:        ; preds = %bb.f, %bb.g
  %.pre-phi.i.i10 = phi i64 [ %i.aj, %bb.f ], [ %.pre2.i.i12, %bb.g ]
  %i.ao = phi i64 [ %i.ai, %bb.f ], [ %.pre.i.i11, %bb.g ]
  %i.ap = load ptr, ptr %1, align 8, !tbaa !64
  store i64 %.pre-phi.i.i10, ptr %i.q, align 8, !tbaa !61
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  store i8 %i.ah, ptr %i.aq, align 1, !tbaa !28
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !236, !nonnull !52, !align !54
  %i.at = load i32, ptr %i.as, align 4, !tbaa !49 ; 2 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit

end_hunk_1
