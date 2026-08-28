Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/MatrixStats?download=true
inline.NumInlined: 305
inline.NumDeleted: 198
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5faiss11MatrixStatsC2EmmPKf:bb.a
  br i1 %i.dv, label %.loopexit, label %.lr.ph.i.i.i.i108, !llvm.loop !67

.lr.ph.i.i.i.i108:                                ; preds = %bb.ak, %bb.al
  %.020.i.i.i.i109 = phi ptr [ %i.dw, %bb.al ], [ %i.dr, %bb.ak ]
  %i.dw = load ptr, ptr %.020.i.i.i.i109, align 8, !tbaa !63 ; 4 uses
  %.not18.i.i.i.i110 = icmp eq ptr %i.dw, null
  br i1 %.not18.i.i.i.i110, label %.loopexit.i.i, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i.i.i.i108
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !64 ; 2 uses
  %i.dz = urem i64 %i.dy, %i.dq
  %.not19.i.i.i.i111 = icmp eq i64 %i.dz, %.pre-phi
  br i1 %.not19.i.i.i.i111, label %bb.al, label %..loopexit_crit_edge21.i.i.i.i112, !llvm.loop !67

..loopexit_crit_edge21.i.i.i.i112:                ; preds = %bb.am
  br label %.loopexit.i.i, !llvm.loop !67

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i108, %bb.ag, %..loopexit_crit_edge21.i.i.i.i112, %.loopexit139
  %.pre-phi250 = phi i64 [ %i.dc, %bb.ag ], [ %.pre-phi, %.loopexit139 ], [ %.pre-phi, %..loopexit_crit_edge21.i.i.i.i112 ], [ %.pre-phi, %.lr.ph.i.i.i.i108 ]
  %i.ea = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #22
          to label %.noexc113 unwind label %bb.ao ; 5 uses

.noexc113:                                        ; preds = %.loopexit.i.i
  store ptr null, ptr %i.ea, align 8, !tbaa !63
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store i64 %i.cv, ptr %i.eb, align 8, !tbaa !68
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ec, i8 0, i64 16, i1 false)
  %i.ed = invoke ptr @_ZNSt10_HashtableImSt4pairIKmN5faiss11MatrixStats10OccurrenceEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.l, i64 noundef %.pre-phi250, i64 noundef %i.cv, ptr noundef nonnull %i.ea, i64 noundef 1)
          to label %.loopexit unwind label %_ZNSt10_HashtableImSt4pairIKmN5faiss11MatrixStats10OccurrenceEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

_ZNSt10_HashtableImSt4pairIKmN5faiss11MatrixStats10OccurrenceEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.noexc113
  %i.ee = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ea, i64 noundef 32) #23
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit116

.loopexit:                                        ; preds = %bb.al, %.noexc113, %bb.ak
  %.pn.i.i = phi ptr [ %i.ed, %.noexc113 ], [ %i.dr, %bb.ak ], [ %i.dw, %bb.al ] ; 2 uses
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  store i64 %.081156, ptr %.1.i.i, align 8, !tbaa !64
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 24
  store i64 1, ptr %.sroa.535.0..sroa_idx, align 8, !tbaa !64
  br label %bb.ar

bb.an:                                            ; preds = %bb.ad
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit116

bb.ao:                                            ; preds = %.loopexit.i.i
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit116

_ZNSt13unordered_mapImN5faiss11MatrixStats10OccurrenceESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit: ; preds = %bb.ai, %bb.af, %bb.ah
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.af ], [ %i.dg, %bb.ah ], [ %i.dl, %bb.ai ] ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !71
  %i.ej = load i64, ptr %i.d, align 8, !tbaa !48
  %i.ek = mul i64 %i.ej, %i.ei
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ek
  %bcmp = tail call i32 @bcmp(ptr %i.az, ptr %i.el, i64 %i.af)
  %.not99 = icmp eq i32 %bcmp, 0
  br i1 %.not99, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_ZNSt13unordered_mapImN5faiss11MatrixStats10OccurrenceESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 24 ; 2 uses
  %i.en = load i64, ptr %i.em, align 8, !tbaa !72
  %i.eo = add i64 %i.en, 1
  store i64 %i.eo, ptr %i.em, align 8, !tbaa !72
  br label %bb.ar

bb.aq:                                            ; preds = %_ZNSt13unordered_mapImN5faiss11MatrixStats10OccurrenceESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit
  %i.ep = load i64, ptr %i.e, align 8, !tbaa !73
  %i.eq = add i64 %i.ep, 1
  store i64 %i.eq, ptr %i.e, align 8, !tbaa !73
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq, %.loopexit
  %i.er = add nuw i64 %.081156, 1                 ; 2 uses
  %i.es = load i64, ptr %i.c, align 8, !tbaa !47  ; 2 uses
  %i.et = icmp ult i64 %i.er, %i.es
  br i1 %i.et, label %bb.l, label %._crit_edge159, !llvm.loop !74

bb.as:                                            ; preds = %._crit_edge159
  tail call void (ptr, ptr, ...) @_ZN5faiss11MatrixStats10do_commentEPKcz(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull @.str.3)
  br label %bb.au

bb.at:                                            ; preds = %._crit_edge159
  %i.eu = sub i64 %.lcssa149, %i.at
  tail call void (ptr, ptr, ...) @_ZN5faiss11MatrixStats10do_commentEPKcz(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull @.str.4, i64 noundef %i.eu)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !62 ; 3 uses
  %i.ex = load i64, ptr %i.c, align 8, !tbaa !47  ; 2 uses
  %i.ey = icmp eq i64 %i.ew, %i.ex
  br i1 %i.ey, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  tail call void (ptr, ptr, ...) @_ZN5faiss11MatrixStats10do_commentEPKcz(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull @.str.5)
  br label %bb.bb

bb.aw:                                            ; preds = %bb.au
  %i.ez = uitofp i64 %i.ew to double
  %i.fa = fmul nnan double %i.ez, 1.000000e+02
  %i.fb = uitofp i64 %i.ex to double
  %i.fc = fdiv double %i.fa, %i.fb
  tail call void (ptr, ptr, ...) @_ZN5faiss11MatrixStats10do_commentEPKcz(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull @.str.6, i64 noundef %i.ew, double noundef %i.fc)
  %i.fd = load i64, ptr %i.e, align 8, !tbaa !73  ; 2 uses
  %.not = icmp eq i64 %i.fd, 0
  br i1 %.not, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  tail call void (ptr, ptr, ...) @_ZN5faiss11MatrixStats10do_commentEPKcz(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull @.str.7, i64 noundef %i.fd)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.sroa.0118.0161 = load ptr, ptr %i.o, align 8, !tbaa !63 ; 2 uses
  %i.fe = icmp eq ptr %.sroa.0118.0161, null
  br i1 %i.fe, label %._crit_edge167, label %.lr.ph166

._crit_edge167:                                   ; preds = %bb.ba, %bb.ay
  %.sroa.0.0.lcssa = phi i64 [ 0, %bb.ay ], [ %.sroa.0.1, %bb.ba ]
  %.sroa.5.0.lcssa = phi i64 [ 0, %bb.ay ], [ %.sroa.5.1, %bb.ba ]
  tail call void (ptr, ptr, ...) @_ZN5faiss11MatrixStats10do_commentEPKcz(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull @.str.8, i64 noundef %.sroa.0.0.lcssa, i64 noundef %.sroa.5.0.lcssa)
  br label %bb.bb

.lr.ph166:                                        ; preds = %bb.ay, %bb.ba
  %.sroa.0118.0164 = phi ptr [ %.sroa.0118.0, %bb.ba ], [ %.sroa.0118.0161, %bb.ay ] ; 3 uses
  %.sroa.5.0163 = phi i64 [ %.sroa.5.1, %bb.ba ], [ 0, %bb.ay ] ; 2 uses
  %.sroa.0.0162 = phi i64 [ %.sroa.0.1, %bb.ba ], [ 0, %bb.ay ]
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.0118.0164, i64 24
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !72 ; 2 uses
  %i.fh = icmp ugt i64 %i.fg, %.sroa.5.0163
  br i1 %i.fh, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %.lr.ph166
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0118.0164, i64 16
  %.sroa.0.0.copyload = load i64, ptr %i.fi, align 8, !tbaa !64
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph166, %bb.az
  %.sroa.0.1 = phi i64 [ %.sroa.0.0.copyload, %bb.az ], [ %.sroa.0.0162, %.lr.ph166 ] ; 2 uses
  %.sroa.5.1 = phi i64 [ %i.fg, %bb.az ], [ %.sroa.5.0163, %.lr.ph166 ] ; 2 uses
  %.sroa.0118.0 = load ptr, ptr %.sroa.0118.0164, align 8, !tbaa !63 ; 2 uses
  %i.fj = icmp eq ptr %.sroa.0118.0, null
  br i1 %i.fj, label %._crit_edge167, label %.lr.ph166, !llvm.loop !75

bb.bb:                                            ; preds = %._crit_edge167, %bb.av
  %i.fk = load double, ptr %i.h, align 8, !tbaa !49
  %i.fl = tail call double @sqrt(double noundef %i.fk) #21 ; 2 uses
  store double %i.fl, ptr %i.h, align 8, !tbaa !49
  %i.fm = load double, ptr %i.i, align 8, !tbaa !61
  %i.fn = tail call double @sqrt(double noundef %i.fm) #21 ; 2 uses
  store double %i.fn, ptr %i.i, align 8, !tbaa !61
  %i.fo = load i64, ptr %i.g, align 8, !tbaa !60
  tail call void (ptr, ptr, ...) @_ZN5faiss11MatrixStats10do_commentEPKcz(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull @.str.9, double noundef %i.fl, double noundef %i.fn, i64 noundef %i.fo)
  %i.fp = load double, ptr %i.i, align 8, !tbaa !61 ; 2 uses
  %i.fq = load double, ptr %i.h, align 8, !tbaa !49 ; 2 uses
  %i.fr = fmul double %i.fq, 1.000100e+00
  %i.fs = fcmp olt double %i.fp, %i.fr
  br i1 %i.fs, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  tail call void (ptr, ptr, ...) @_ZN5faiss11MatrixStats10do_commentEPKcz(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull @.str.10)
  %.pre212 = load double, ptr %i.i, align 8, !tbaa !61
  %.pre213 = load double, ptr %i.h, align 8, !tbaa !49
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.ft = phi double [ %.pre213, %bb.bc ], [ %i.fq, %bb.bb ]
  %i.fu = phi double [ %.pre212, %bb.bc ], [ %i.fp, %bb.bb ]
  %i.fv = fmul double %i.ft, 1.000000e+02
  %i.fw = fcmp ogt double %i.fu, %i.fv
  br i1 %i.fw, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  tail call void (ptr, ptr, ...) @_ZN5faiss11MatrixStats10do_commentEPKcz(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull @.str.11)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.fx = load i64, ptr %i.d, align 8, !tbaa !48  ; 3 uses
  %.not193 = icmp eq i64 %i.fx, 0
  br i1 %.not193, label %._crit_edge178.thread, label %.lr.ph177

.lr.ph177:                                        ; preds = %bb.bf
  %i.fy = load ptr, ptr %i.k, align 8, !tbaa !55
  br label %bb.bg

._crit_edge178:                                   ; preds = %bb.bj
  %i.fz = icmp eq i64 %i.gz, 0
  br i1 %i.fz, label %._crit_edge178.thread, label %bb.bk

bb.bg:                                            ; preds = %.lr.ph177, %bb.bj
  %.069175 = phi i64 [ 0, %.lr.ph177 ], [ %i.hm, %bb.bj ] ; 2 uses
  %.070174 = phi i64 [ 0, %.lr.ph177 ], [ %i.gz, %bb.bj ]
  %.071173 = phi i64 [ 0, %.lr.ph177 ], [ %.172, %bb.bj ] ; 3 uses
  %.073172 = phi i64 [ 0, %.lr.ph177 ], [ %.174, %bb.bj ] ; 3 uses
  %.075171 = phi double [ +inf, %.lr.ph177 ], [ %.176, %bb.bj ] ; 2 uses
  %.077170 = phi double [ 0.000000e+00, %.lr.ph177 ], [ %.178, %bb.bj ] ; 2 uses
  %i.ga = getelementptr inbounds nuw [80 x i8], ptr %i.fy, i64 %.069175 ; 10 uses
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !9
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !14
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !15
  %i.gg = add i64 %i.gd, %i.gf
  %i.gh = sub i64 %i.gb, %i.gg                    ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ga, i64 56
  store i64 %i.gh, ptr %i.gi, align 8, !tbaa !21
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ga, i64 40
  %i.gk = uitofp i64 %i.gh to double
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ga, i64 64
  %i.gm = load <2 x double>, ptr %i.gj, align 8, !tbaa !22
  %i.gn = insertelement <2 x double> poison, double %i.gk, i64 0
  %i.go = shufflevector <2 x double> %i.gn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gp = fdiv <2 x double> %i.gm, %i.go          ; 2 uses
  %i.gq = extractelement <2 x double> %i.gp, i64 0 ; 3 uses
  store double %i.gq, ptr %i.gl, align 8, !tbaa !23
  %i.gr = fneg double %i.gq
  %i.gs = extractelement <2 x double> %i.gp, i64 1
  %i.gt = tail call double @llvm.fmuladd.f64(double %i.gr, double %i.gq, double %i.gs) ; 2 uses
  %i.gu = fcmp olt double %i.gt, 0.000000e+00
  %.0.i = select i1 %i.gu, double 0.000000e+00, double %i.gt
  %i.gv = tail call double @sqrt(double noundef %.0.i) #21 ; 5 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ga, i64 72
  store double %i.gv, ptr %i.gw, align 8, !tbaa !24
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !16
  %i.gz = add i64 %i.gy, %.070174                 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ga, i64 36
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !18 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ga, i64 32
  %i.hd = load float, ptr %i.hc, align 8, !tbaa !17 ; 2 uses
  %i.he = fcmp oeq float %i.hb, %i.hd
  br i1 %i.he, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.hf = add i64 %.071173, 1
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  %i.hg = fpext float %i.hb to double
  %i.hh = fpext float %i.hd to double
  %i.hi = fmul double %i.hh, 1.001000e+00
  %i.hj = fcmp ogt double %i.hi, %i.hg
  br i1 %i.hj, label %4, label %bb.bj

4:                                                ; preds = %bb.bi
  %5 = add i64 %.073172, 1
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %4, %bb.bh
  %.174 = phi i64 [ %.073172, %bb.bh ], [ %5, %4 ], [ %.073172, %bb.bi ] ; 3 uses
  %.172 = phi i64 [ %i.hf, %bb.bh ], [ %.071173, %4 ], [ %.071173, %bb.bi ] ; 3 uses
  %i.hk = fcmp ogt double %i.gv, %.077170
  %.178 = select i1 %i.hk, double %i.gv, double %.077170 ; 3 uses
  %i.hl = fcmp olt double %i.gv, %.075171
  %.176 = select i1 %i.hl, double %i.gv, double %.075171 ; 3 uses
  %i.hm = add nuw i64 %.069175, 1                 ; 2 uses
  %exitcond207.not = icmp eq i64 %i.hm, %i.fx
  br i1 %exitcond207.not, label %._crit_edge178, label %bb.bg, !llvm.loop !76

._crit_edge178.thread:                            ; preds = %bb.bf, %._crit_edge178
  %.071.lcssa263 = phi i64 [ %.172, %._crit_edge178 ], [ 0, %bb.bf ]
  %.073.lcssa261 = phi i64 [ %.174, %._crit_edge178 ], [ 0, %bb.bf ]
  %.075.lcssa259 = phi double [ %.176, %._crit_edge178 ], [ +inf, %bb.bf ]
  %.077.lcssa257 = phi double [ %.178, %._crit_edge178 ], [ 0.000000e+00, %bb.bf ]
  tail call void (ptr, ptr, ...) @_ZN5faiss11MatrixStats10do_commentEPKcz(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull @.str.12)
  br label %bb.bl

bb.bk:                                            ; preds = %._crit_edge178
  %i.hn = uitofp i64 %i.gz to double
  %i.ho = fmul nnan double %i.hn, 1.000000e+02
  %i.hp = load i64, ptr %i.c, align 8, !tbaa !47
  %i.hq = mul i64 %i.hp, %i.fx
  %i.hr = uitofp i64 %i.hq to double
  %i.hs = fdiv double %i.ho, %i.hr
  tail call void (ptr, ptr, ...) @_ZN5faiss11MatrixStats10do_commentEPKcz(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull @.str.13, double noundef %i.hs)
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %._crit_edge178.thread
  %.071.lcssa262 = phi i64 [ %.172, %bb.bk ], [ %.071.lcssa263, %._crit_edge178.thread ] ; 2 uses
  %.073.lcssa260 = phi i64 [ %.174, %bb.bk ], [ %.073.lcssa261, %._crit_edge178.thread ] ; 2 uses
  %.075.lcssa258 = phi double [ %.176, %bb.bk ], [ %.075.lcssa259, %._crit_edge178.thread ]
  %.077.lcssa256 = phi double [ %.178, %bb.bk ], [ %.077.lcssa257, %._crit_edge178.thread ] ; 2 uses
  %i.ht = icmp eq i64 %.071.lcssa262, 0
  br i1 %i.ht, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  tail call void (ptr, ptr, ...) @_ZN5faiss11MatrixStats10do_commentEPKcz(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull @.str.14)
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  tail call void (ptr, ptr, ...) @_ZN5faiss11MatrixStats10do_commentEPKcz(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull @.str.15, i64 noundef %.071.lcssa262)
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.hu = icmp eq i64 %.073.lcssa260, 0
  br i1 %i.hu, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  tail call void (ptr, ptr, ...) @_ZN5faiss11MatrixStats10do_commentEPKcz(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull @.str.16)
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo
  tail call void (ptr, ptr, ...) @_ZN5faiss11MatrixStats10do_commentEPKcz(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull @.str.17, i64 noundef %.073.lcssa260)
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  tail call void (ptr, ptr, ...) @_ZN5faiss11MatrixStats10do_commentEPKcz(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull @.str.18, double noundef %.075.lcssa258, double noundef %.077.lcssa256)
  %i.hv = load i64, ptr %i.d, align 8, !tbaa !48  ; 5 uses
  %.not194 = icmp eq i64 %i.hv, 0
  br i1 %.not194, label %._crit_edge189.thread, label %.lr.ph188

.lr.ph188:                                        ; preds = %bb.br
  %i.hw = load ptr, ptr %i.k, align 8, !tbaa !55  ; 5 uses
  %i.hx = fmul double %.077.lcssa256, 1.000000e-04 ; 2 uses
  %min.iters.check = icmp ult i64 %i.hv, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph188
  %n.vec = and i64 %i.hv, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.hx, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.is, %vector.body ]
  %vec.phi290 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.it, %vector.body ]
  %i.hy = getelementptr inbounds nuw [80 x i8], ptr %i.hw, i64 %index
  %i.hz = getelementptr inbounds nuw [80 x i8], ptr %i.hw, i64 %index
  %i.ia = getelementptr inbounds nuw [80 x i8], ptr %i.hw, i64 %index
  %i.ib = getelementptr inbounds nuw [80 x i8], ptr %i.hw, i64 %index
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hy, i64 72
  %i.id = getelementptr inbounds nuw i8, ptr %i.hz, i64 152
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ia, i64 232
  %i.if = getelementptr inbounds nuw i8, ptr %i.ib, i64 312
  %i.ig = load double, ptr %i.ic, align 8, !tbaa !24
  %i.ih = load double, ptr %i.id, align 8, !tbaa !24
  %i.ii = insertelement <2 x double> poison, double %i.ig, i64 0
  %i.ij = insertelement <2 x double> %i.ii, double %i.ih, i64 1
  %i.ik = load double, ptr %i.ie, align 8, !tbaa !24
  %i.il = load double, ptr %i.if, align 8, !tbaa !24
  %i.im = insertelement <2 x double> poison, double %i.ik, i64 0
  %i.in = insertelement <2 x double> %i.im, double %i.il, i64 1
  %i.io = fcmp olt <2 x double> %i.ij, %broadcast.splat
  %i.ip = fcmp olt <2 x double> %i.in, %broadcast.splat
  %i.iq = zext <2 x i1> %i.io to <2 x i64>
  %i.ir = zext <2 x i1> %i.ip to <2 x i64>
  %i.is = add <2 x i64> %vec.phi, %i.iq           ; 2 uses
  %i.it = add <2 x i64> %vec.phi290, %i.ir        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.iu = icmp eq i64 %index.next, %n.vec
  br i1 %i.iu, label %middle.block, label %vector.body, !llvm.loop !77

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.it, %i.is
  %i.iv = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.hv, %n.vec
  br i1 %cmp.n, label %._crit_edge189, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph188, %middle.block
  %.0186.ph = phi i64 [ 0, %.lr.ph188 ], [ %n.vec, %middle.block ]
  %.068185.ph = phi i64 [ 0, %.lr.ph188 ], [ %i.iv, %middle.block ]
  br label %scalar.ph

._crit_edge189:                                   ; preds = %scalar.ph, %middle.block
  %.1.lcssa = phi i64 [ %i.iv, %middle.block ], [ %.1, %scalar.ph ] ; 2 uses
  %.not98 = icmp eq i64 %.1.lcssa, 0
  br i1 %.not98, label %._crit_edge189.thread, label %bb.bs

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0186 = phi i64 [ %i.jb, %scalar.ph ], [ %.0186.ph, %scalar.ph.preheader ] ; 2 uses
  %.068185 = phi i64 [ %.1, %scalar.ph ], [ %.068185.ph, %scalar.ph.preheader ]
  %i.iw = getelementptr inbounds nuw [80 x i8], ptr %i.hw, i64 %.0186
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 72
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !24
  %i.iz = fcmp olt double %i.iy, %i.hx
  %i.ja = zext i1 %i.iz to i64
  %.1 = add i64 %.068185, %i.ja                   ; 2 uses
  %i.jb = add nuw i64 %.0186, 1                   ; 2 uses
  %exitcond208.not = icmp eq i64 %i.jb, %i.hv
  br i1 %exitcond208.not, label %._crit_edge189, label %scalar.ph, !llvm.loop !80

bb.bs:                                            ; preds = %._crit_edge189
  tail call void (ptr, ptr, ...) @_ZN5faiss11MatrixStats10do_commentEPKcz(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull @.str.19, i64 noundef %.1.lcssa)
  br label %._crit_edge189.thread

._crit_edge189.thread:                            ; preds = %bb.br, %bb.bs, %._crit_edge189
  %i.jc = load i64, ptr %i.b, align 8, !tbaa !45
  %i.jd = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.r) #21
  %i.je = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef %i.jc, ptr noundef nonnull %i.r, i64 noundef %i.jd)
          to label %_ZNSt6vectorIcSaIcEED2Ev.exit unwind label %bb.k ; 0 uses

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %._crit_edge189.thread
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 10000) #23
  ret void

_ZNSt6vectorIcSaIcEED2Ev.exit116:                 ; preds = %bb.an, %bb.ao, %_ZNSt10_HashtableImSt4pairIKmN5faiss11MatrixStats10OccurrenceEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i, %bb.k, %bb.j
  %.pn102.pn.pn = phi { ptr, i32 } [ %i.av, %bb.j ], [ %i.aw, %bb.k ], [ %i.ee, %_ZNSt10_HashtableImSt4pairIKmN5faiss11MatrixStats10OccurrenceEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ], [ %i.ef, %bb.an ], [ %i.eg, %bb.ao ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 10000) #23
  br label %bb.bt

bb.bt:                                            ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit116, %bb.d
  %.pn102.pn.pn.pn = phi { ptr, i32 } [ %.pn102.pn.pn, %_ZNSt6vectorIcSaIcEED2Ev.exit116 ], [ %i.y, %bb.d ]
  tail call void @_ZNSt13unordered_mapImN5faiss11MatrixStats10OccurrenceESt4hashImESt8equal_toImESaISt4pairIKmS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.l) #21
  %i.jf = load ptr, ptr %i.k, align 8, !tbaa !55  ; 3 uses
  %.not.i.i.i117 = icmp eq ptr %i.jf, null
  br i1 %.not.i.i.i117, label %_ZNSt6vectorIN5faiss11MatrixStats11PerDimStatsESaIS2_EED2Ev.exit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !81
  %i.ji = ptrtoint ptr %i.jh to i64
  %i.jj = ptrtoint ptr %i.jf to i64
  %i.jk = sub i64 %i.ji, %i.jj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.jf, i64 noundef %i.jk) #23
  br label %_ZNSt6vectorIN5faiss11MatrixStats11PerDimStatsESaIS2_EED2Ev.exit

_ZNSt6vectorIN5faiss11MatrixStats11PerDimStatsESaIS2_EED2Ev.exit: ; preds = %bb.bt, %bb.bu
  %i.jl = load ptr, ptr %0, align 8, !tbaa !82    ; 2 uses
  %i.jm = icmp eq ptr %i.jl, %i.a
  br i1 %i.jm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN5faiss11MatrixStats11PerDimStatsESaIS2_EED2Ev.exit
  %i.jn = load i64, ptr %i.a, align 8, !tbaa !46
  %i.jo = add i64 %i.jn, 1
  tail call void @_ZdlPvm(ptr noundef %i.jl, i64 noundef %i.jo) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIN5faiss11MatrixStats11PerDimStatsESaIS2_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn102.pn.pn.pn
}

declare i32 @__gxx_personality_v0(...)

declare noundef i64 @_ZN5faiss10hash_bytesEPKhl(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt13unordered_mapImN5faiss11MatrixStats10OccurrenceESt4hashImESt8equal_toImESaISt4pairIKmS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !83   ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableImSt4pairIKmN5faiss11MatrixStats10OccurrenceEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

end_hunk_0
