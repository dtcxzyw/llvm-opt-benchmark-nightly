Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_wham?download=true
inline.NumInlined: 929
inline.NumDeleted: 365
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_Z8gmx_whamiPPc:bb.a
.noexc287:                                        ; preds = %._crit_edge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.afs = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.afs, ptr %6, align 8, !tbaa !137
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.afs, ptr noundef nonnull align 1 dereferenceable(9) @.str.348, i64 9, i1 false)
  %i.aft = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 9, ptr %i.aft, align 8, !tbaa !139
  %i.afu = getelementptr inbounds nuw i8, ptr %6, i64 25
  store i8 0, ptr %i.afu, align 1, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.afv = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.afv, ptr %7, align 8, !tbaa !137
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah) #25
  store i64 24, ptr %i.ah, align 8, !tbaa !138
  %i.afw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.ah, i64 noundef 0)
          to label %.noexc214.i unwind label %bb.gj ; 2 uses

.noexc214.i:                                      ; preds = %.noexc287
  store ptr %i.afw, ptr %7, align 8, !tbaa !82
  %i.afx = load i64, ptr %i.ah, align 8, !tbaa !138 ; 3 uses
  store i64 %i.afx, ptr %i.afv, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.afw, ptr noundef nonnull align 1 dereferenceable(24) @.str.349, i64 24, i1 false)
  %i.afy = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.afx, ptr %i.afy, align 8, !tbaa !139
  %i.afz = load ptr, ptr %7, align 8, !tbaa !82
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afz, i64 %i.afx
  store i8 0, ptr %i.aga, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah) #25
  %i.agb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ8gmx_whamiPPcE3opt, i64 128), align 8, !tbaa !140
  %i.agc = invoke noundef ptr @_Z8xvgropenRKNSt10filesystem7__cxx114pathEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_PK16gmx_output_env_t(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull @.str.347, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.agb)
          to label %bb.gh unwind label %bb.gk

bb.gh:                                            ; preds = %.noexc214.i
  %i.agd = load ptr, ptr %7, align 8, !tbaa !82   ; 2 uses
  %i.age = icmp eq ptr %i.agd, %i.afv
  br i1 %i.age, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i280

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i280: ; preds = %bb.gh
  %i.agf = load i64, ptr %i.afv, align 8, !tbaa !18
  %i.agg = add i64 %i.agf, 1
  call void @_ZdlPvm(ptr noundef %i.agd, i64 noundef %i.agg) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.gh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i280
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.agh = load ptr, ptr %6, align 8, !tbaa !82   ; 2 uses
  %i.agi = icmp eq ptr %i.agh, %i.afs
  br i1 %i.agi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.agj = load i64, ptr %i.afs, align 8, !tbaa !18
  %i.agk = add i64 %i.agj, 1
  call void @_ZdlPvm(ptr noundef %i.agh, i64 noundef %i.agk) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.agl = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.agm = load ptr, ptr %i.agl, align 8, !tbaa !80 ; 2 uses
  %.not.i.i.i.i281 = icmp eq ptr %i.agm, null
  br i1 %.not.i.i.i.i281, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i282, label %bb.gi

bb.gi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218.i
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.agl, ptr noundef nonnull %i.agm) #25
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i282

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i282: ; preds = %bb.gi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218.i
  %i.agn = load ptr, ptr %5, align 8, !tbaa !82   ; 2 uses
  %i.ago = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.agp = icmp eq ptr %i.agn, %i.ago
  br i1 %i.agp, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i284, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i283

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i283: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i282
  %i.agq = load i64, ptr %i.ago, align 8, !tbaa !18
  %i.agr = add i64 %i.agq, 1
  call void @_ZdlPvm(ptr noundef %i.agn, i64 noundef %i.agr) #32
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i284

_ZNSt10filesystem7__cxx114pathD2Ev.exit.i284:     ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i282, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i283
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %.lr.ph81.i

bb.gj:                                            ; preds = %.noexc287
  %i.ags = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221.i

bb.gk:                                            ; preds = %.noexc214.i
  %i.agt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.agu = load ptr, ptr %7, align 8, !tbaa !82   ; 2 uses
  %i.agv = icmp eq ptr %i.agu, %i.afv
  br i1 %i.agv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219.i: ; preds = %bb.gk
  %i.agw = load i64, ptr %i.afv, align 8, !tbaa !18
  %i.agx = add i64 %i.agw, 1
  call void @_ZdlPvm(ptr noundef %i.agu, i64 noundef %i.agx) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221.i: ; preds = %bb.gk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219.i, %bb.gj
  %.pn.i279 = phi { ptr, i32 } [ %i.ags, %bb.gj ], [ %i.agt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219.i ], [ %i.agt, %bb.gk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.agy = load ptr, ptr %6, align 8, !tbaa !82   ; 2 uses
  %i.agz = icmp eq ptr %i.agy, %i.afs
  br i1 %i.agz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221.i
  %i.aha = load i64, ptr %i.afs, align 8, !tbaa !18
  %i.ahb = add i64 %i.aha, 1
  call void @_ZdlPvm(ptr noundef %i.agy, i64 noundef %i.ahb) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %.body

.lr.ph81.i:                                       ; preds = %bb.gg, %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i284
  %.0173.i = phi ptr [ %i.agc, %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i284 ], [ null, %bb.gg ] ; 4 uses
  %putchar.i267 = call i32 @putchar(i32 10)       ; 0 uses
  %i.ahc = uitofp nneg i32 %i.px to double
  %.not204.i = icmp eq ptr %.0173.i, null         ; 2 uses
  br label %bb.gl

.loopexit37.i:                                    ; preds = %.critedge2.i, %.noexc289
  %exitcond164.not.i = icmp eq i64 %indvars.iv.next161.i, %wide.trip.count23.i
  br i1 %exitcond164.not.i, label %._crit_edge82.i, label %bb.gl, !llvm.loop !160

bb.gl:                                            ; preds = %.loopexit37.i, %.lr.ph81.i
  %indvars.iv160.i = phi i64 [ 0, %.lr.ph81.i ], [ %indvars.iv.next161.i, %.loopexit37.i ] ; 2 uses
  %i.ahd = load ptr, ptr @stdout, align 8, !tbaa !116
  %indvars.iv.next161.i = add nuw nsw i64 %indvars.iv160.i, 1 ; 3 uses
  %i.ahe = trunc nuw nsw i64 %indvars.iv.next161.i to i32
  %i.ahf = uitofp nneg i32 %i.ahe to double
  %i.ahg = fmul nnan double %i.ahf, 1.000000e+02
  %i.ahh = fdiv double %i.ahg, %i.ahc
  %i.ahi = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ahd, ptr noundef nonnull @.str.350, double noundef %i.ahh) #25 ; 0 uses
  %i.ahj = load ptr, ptr @stdout, align 8, !tbaa !116
  %i.ahk = call i32 @fflush(ptr noundef %i.ahj)   ; 0 uses
  %i.ahl = getelementptr inbounds nuw [152 x i8], ptr %i.pz, i64 %indvars.iv160.i ; 8 uses
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahl, i64 64 ; 3 uses
  %i.ahn = load ptr, ptr %i.ahm, align 8, !tbaa !109
  %i.aho = load i32, ptr %i.ahn, align 4, !tbaa !9 ; 9 uses
  %i.ahp = sdiv i32 %i.aho, 2                     ; 2 uses
  %i.ahq = icmp slt i32 %i.aho, 10
  br i1 %i.ahq, label %bb.gm, label %bb.gp

bb.gm:                                            ; preds = %bb.gl
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA64_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 1 dereferenceable(64) @.str.219, i8 noundef zeroext 2)
          to label %.noexc288 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc288:                                        ; preds = %bb.gm
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %8, i32 noundef 2358, ptr noundef nonnull @.str.351, i32 noundef %i.aho) #31
          to label %bb.gn unwind label %bb.go

bb.gn:                                            ; preds = %.noexc288
  unreachable

bb.go:                                            ; preds = %.noexc288
  %i.ahr = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %.body

bb.gp:                                            ; preds = %bb.gl
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahl, i64 96
  %i.aht = load double, ptr %i.ahs, align 8, !tbaa !155 ; 3 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.ahl, i64 80 ; 2 uses
  %i.ahv = load i32, ptr %i.ahl, align 8, !tbaa !123
  %i.ahw = sext i32 %i.ahv to i64
  %i.ahx = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.219, i32 noundef 2364, i64 noundef range(i64 -2147483648, 2147483648) %i.ahw, i64 noundef 8)
          to label %.noexc289 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc289:                                        ; preds = %bb.gp
  store ptr %i.ahx, ptr %i.ahu, align 8, !tbaa !127
  %i.ahy = load i32, ptr %i.ahl, align 8, !tbaa !123
  %i.ahz = icmp sgt i32 %i.ahy, 0
  br i1 %i.ahz, label %.lr.ph78.i, label %.loopexit37.i

.lr.ph78.i:                                       ; preds = %.noexc289
  %i.aia = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZ8gmx_whamiPPcE3opt, i64 148), align 4, !tbaa !62
  %i.aib = fpext float %i.aia to double
  %i.aic = fdiv double %i.aib, %i.aht
  %i.aid = call double @llvm.rint.f64(double %i.aic)
  %i.aie = fptosi double %i.aid to i32
  %spec.store.select.i = call i32 @llvm.umax.i32(i32 %i.aie, i32 1)
  %i.aif = getelementptr inbounds nuw i8, ptr %i.ahl, i64 112
  %i.aig = zext nneg i32 %i.ahp to i64            ; 17 uses
  %i.aih = shl nuw nsw i64 %i.aig, 3              ; 4 uses
  %i.aii = shl nuw nsw i64 %i.aig, 2              ; 4 uses
  %i.aij = uitofp nneg i32 %i.aho to double
  %i.aik = getelementptr inbounds nuw i8, ptr %i.ahl, i64 72
  %i.ail = zext nneg i32 %i.aho to i64            ; 5 uses
  %i.aim = sext i32 %spec.store.select.i to i64   ; 2 uses
  %smax.i273 = call i32 @llvm.smax.i32(i32 %i.ahp, i32 2)
  %wide.trip.count155.i = zext nneg i32 %smax.i273 to i64
  %44 = add nsw i64 %i.aig, -1
  %xtraiter1162 = and i64 %i.ail, 7               ; 3 uses
  %unroll_iter1167 = and i64 %i.ail, 2147483640
  %lcmp.mod1164.not = icmp eq i64 %xtraiter1162, 0
  %lcmp.mod1166 = icmp ne i64 %xtraiter1162, 0
  %min.iters.check990 = icmp ult i32 %i.aho, 32
  %i.ain = and i64 %i.aig, 12
  %n.vec992 = and i64 %i.aig, 1073741808          ; 4 uses
  %cmp.n1005 = icmp eq i64 %n.vec992, %i.aig
  %min.epilog.iters.check1010 = icmp eq i64 %i.ain, 0
  %n.vec1012 = and i64 %i.aig, 1073741820         ; 3 uses
  %cmp.n1019 = icmp eq i64 %n.vec1012, %i.aig
  %min.iters.check957 = icmp ult i32 %i.aho, 32
  %i.aio = and i64 %i.aig, 12
  %n.vec959 = and i64 %i.aig, 1073741808          ; 4 uses
  %cmp.n970 = icmp eq i64 %n.vec959, %i.aig
  %min.epilog.iters.check975 = icmp eq i64 %i.aio, 0
  %n.vec977 = and i64 %i.aig, 1073741820          ; 3 uses
  %cmp.n985 = icmp eq i64 %n.vec977, %i.aig
  br label %bb.gq

bb.gq:                                            ; preds = %.critedge2.i, %.lr.ph78.i
  %indvars.iv157.i = phi i64 [ 0, %.lr.ph78.i ], [ %indvars.iv.next158.i, %.critedge2.i ] ; 6 uses
  %i.aip = load ptr, ptr %i.ahm, align 8, !tbaa !109
  %i.aiq = getelementptr inbounds nuw [4 x i8], ptr %i.aip, i64 %indvars.iv157.i
  %i.air = load i32, ptr %i.aiq, align 4, !tbaa !9
  %.not203.i = icmp eq i32 %i.aho, %i.air
  br i1 %.not203.i, label %.noexc225.i, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA64_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 1 dereferenceable(64) @.str.219, i8 noundef zeroext 2)
          to label %.noexc290 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc290:                                        ; preds = %bb.gr
  %i.ais = load ptr, ptr %i.ahm, align 8, !tbaa !109
  %i.ait = getelementptr inbounds nuw [4 x i8], ptr %i.ais, i64 %indvars.iv157.i
  %i.aiu = load i32, ptr %i.ait, align 4, !tbaa !9
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %9, i32 noundef 2375, ptr noundef nonnull @.str.353, i32 noundef %i.aho, i32 noundef %i.aiu) #31
          to label %bb.gs unwind label %bb.gt

bb.gs:                                            ; preds = %.noexc290
  unreachable

bb.gt:                                            ; preds = %.noexc290
  %i.aiv = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %.body

.noexc225.i:                                      ; preds = %bb.gq
  %i.aiw = load ptr, ptr %i.aif, align 8, !tbaa !161
  %i.aix = getelementptr inbounds nuw [8 x i8], ptr %i.aiw, i64 %indvars.iv157.i
  %i.aiy = load ptr, ptr %i.aix, align 8, !tbaa !162 ; 12 uses
  %i.aiz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aih) #36
          to label %.noexc291 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 15 uses

.noexc291:                                        ; preds = %.noexc225.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aiz, i8 0, i64 %i.aih, i1 false), !tbaa !128
  %i.aja = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aii) #36
          to label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.preheader105.i unwind label %bb.gu ; 8 uses

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.preheader105.i: ; preds = %.noexc291
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aja, i8 0, i64 %i.aii, i1 false), !tbaa !9
  br label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i:          ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.preheader105.i
  %indvars.iv.i275 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.preheader105.i ], [ %indvars.iv.next.i276.7, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i ] ; 9 uses
  %.017555.i = phi double [ 0.000000e+00, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.preheader105.i ], [ %i.akn, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i ]
  %niter1168 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.preheader105.i ], [ %niter1168.next.7, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i ]
  %i.ajb = getelementptr inbounds nuw [4 x i8], ptr %i.aiy, i64 %indvars.iv.i275
  %i.ajc = load float, ptr %i.ajb, align 4, !tbaa !43
  %i.ajd = fpext float %i.ajc to double
  %i.aje = fadd double %.017555.i, %i.ajd
  %i.ajf = getelementptr inbounds nuw [4 x i8], ptr %i.aiy, i64 %indvars.iv.i275
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.ajf, i64 4
  %i.ajh = load float, ptr %i.ajg, align 4, !tbaa !43
  %i.aji = fpext float %i.ajh to double
  %i.ajj = fadd double %i.aje, %i.aji
  %i.ajk = getelementptr inbounds nuw [4 x i8], ptr %i.aiy, i64 %indvars.iv.i275
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ajk, i64 8
  %i.ajm = load float, ptr %i.ajl, align 4, !tbaa !43
  %i.ajn = fpext float %i.ajm to double
  %i.ajo = fadd double %i.ajj, %i.ajn
  %i.ajp = getelementptr inbounds nuw [4 x i8], ptr %i.aiy, i64 %indvars.iv.i275
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajp, i64 12
  %i.ajr = load float, ptr %i.ajq, align 4, !tbaa !43
  %i.ajs = fpext float %i.ajr to double
  %i.ajt = fadd double %i.ajo, %i.ajs
  %i.aju = getelementptr inbounds nuw [4 x i8], ptr %i.aiy, i64 %indvars.iv.i275
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.aju, i64 16
  %i.ajw = load float, ptr %i.ajv, align 4, !tbaa !43
  %i.ajx = fpext float %i.ajw to double
  %i.ajy = fadd double %i.ajt, %i.ajx
  %i.ajz = getelementptr inbounds nuw [4 x i8], ptr %i.aiy, i64 %indvars.iv.i275
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajz, i64 20
  %i.akb = load float, ptr %i.aka, align 4, !tbaa !43
  %i.akc = fpext float %i.akb to double
  %i.akd = fadd double %i.ajy, %i.akc
  %i.ake = getelementptr inbounds nuw [4 x i8], ptr %i.aiy, i64 %indvars.iv.i275
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ake, i64 24
  %i.akg = load float, ptr %i.akf, align 4, !tbaa !43
  %i.akh = fpext float %i.akg to double
  %i.aki = fadd double %i.akd, %i.akh
  %i.akj = getelementptr inbounds nuw [4 x i8], ptr %i.aiy, i64 %indvars.iv.i275
  %i.akk = getelementptr inbounds nuw i8, ptr %i.akj, i64 28
  %i.akl = load float, ptr %i.akk, align 4, !tbaa !43
  %i.akm = fpext float %i.akl to double
  %i.akn = fadd double %i.aki, %i.akm             ; 3 uses
  %indvars.iv.next.i276.7 = add nuw nsw i64 %indvars.iv.i275, 8 ; 2 uses
  %niter1168.next.7 = add i64 %niter1168, 8       ; 2 uses
  %niter1168.ncmp.7 = icmp eq i64 %niter1168.next.7, %unroll_iter1167
  br i1 %niter1168.ncmp.7, label %.preheader34.preheader.i.unr-lcssa, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i, !llvm.loop !163

bb.gu:                                            ; preds = %.noexc291
  %i.ako = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit236.i

.preheader34.preheader.i.unr-lcssa:               ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i
  br i1 %lcmp.mod1164.not, label %.preheader34.preheader.i, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.epil.preheader

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.epil.preheader: ; preds = %.preheader34.preheader.i.unr-lcssa
  call void @llvm.assume(i1 %lcmp.mod1166)
  br label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.epil

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.epil:     ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.epil, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.epil.preheader
  %indvars.iv.i275.epil = phi i64 [ %indvars.iv.next.i276.7, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.epil.preheader ], [ %indvars.iv.next.i276.epil, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.epil ] ; 2 uses
  %.017555.i.epil = phi double [ %i.akn, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.epil.preheader ], [ %i.aks, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.epil ]
  %epil.iter1163 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.epil.preheader ], [ %epil.iter1163.next, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.epil ]
  %i.akp = getelementptr inbounds nuw [4 x i8], ptr %i.aiy, i64 %indvars.iv.i275.epil
  %i.akq = load float, ptr %i.akp, align 4, !tbaa !43
  %i.akr = fpext float %i.akq to double
  %i.aks = fadd double %.017555.i.epil, %i.akr    ; 2 uses
  %indvars.iv.next.i276.epil = add nuw nsw i64 %indvars.iv.i275.epil, 1
  %epil.iter1163.next = add i64 %epil.iter1163, 1 ; 2 uses
  %epil.iter1163.cmp.not = icmp eq i64 %epil.iter1163.next, %xtraiter1162
  br i1 %epil.iter1163.cmp.not, label %.preheader34.preheader.i, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.epil, !llvm.loop !164

.preheader34.preheader.i:                         ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.epil, %.preheader34.preheader.i.unr-lcssa
  %.lcssa1114 = phi double [ %i.akn, %.preheader34.preheader.i.unr-lcssa ], [ %i.aks, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.epil ]
  %i.akt = fdiv double %.lcssa1114, %i.aij        ; 3 uses
  %broadcast.splatinsert1025 = insertelement <4 x double> poison, double %i.akt, i64 0
  %broadcast.splat1026 = shufflevector <4 x double> %broadcast.splatinsert1025, <4 x double> poison, <4 x i32> zeroinitializer ; 3 uses
  br label %.preheader34.i

.preheader34.i:                                   ; preds = %.critedge.i278, %.preheader34.preheader.i
  %indvar = phi i64 [ %indvar.next, %.critedge.i278 ], [ 0, %.preheader34.preheader.i ] ; 2 uses
  %indvars.iv134.i = phi i64 [ %indvars.iv.next135.i, %.critedge.i278 ], [ 0, %.preheader34.preheader.i ] ; 5 uses
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv134.i, i64 %i.ail)
  %45 = mul i64 %indvar, %i.aim
  %i.aku = sub i64 %smax, %45
  %umin = call i64 @llvm.umin.i64(i64 %i.aku, i64 %44)
  %i.akv = add i64 %umin, 1                       ; 3 uses
  %46 = getelementptr inbounds [4 x i8], ptr %i.aiy, i64 %indvars.iv134.i ; 2 uses
  %min.iters.check1022 = icmp ult i64 %i.akv, 9
  br i1 %min.iters.check1022, label %scalar.ph1021.preheader, label %vector.ph1023

vector.ph1023:                                    ; preds = %.preheader34.i
  %i.akw = and i64 %i.akv, 7                      ; 2 uses
  %i.akx = icmp eq i64 %i.akw, 0
  %i.aky = select i1 %i.akx, i64 8, i64 %i.akw
  %n.vec1024 = sub i64 %i.akv, %i.aky             ; 2 uses
  %i.akz = load float, ptr %46, align 4, !tbaa !43
  %broadcast.splatinsert1029 = insertelement <4 x float> poison, float %i.akz, i64 0
  %broadcast.splat1030 = shufflevector <4 x float> %broadcast.splatinsert1029, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ala = fpext <4 x float> %broadcast.splat1030 to <4 x double>
  %i.alb = fsub <4 x double> %i.ala, %broadcast.splat1026 ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.aiy, i64 %indvars.iv134.i
  br label %vector.body1027

vector.body1027:                                  ; preds = %vector.body1027, %vector.ph1023
  %index1028 = phi i64 [ 0, %vector.ph1023 ], [ %index.next1037, %vector.body1027 ] ; 4 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index1028 ; 2 uses
  %i.alc = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load1031 = load <4 x float>, ptr %gep, align 4, !tbaa !43
  %wide.load1032 = load <4 x float>, ptr %i.alc, align 4, !tbaa !43
  %i.ald = fpext <4 x float> %wide.load1031 to <4 x double>
  %i.ale = fpext <4 x float> %wide.load1032 to <4 x double>
  %i.alf = fsub <4 x double> %i.ald, %broadcast.splat1026
  %i.alg = fsub <4 x double> %i.ale, %broadcast.splat1026
  %i.alh = fmul <4 x double> %i.alb, %i.alf
  %i.ali = fmul <4 x double> %i.alb, %i.alg
  %i.alj = getelementptr inbounds nuw [8 x i8], ptr %i.aiz, i64 %index1028 ; 3 uses
  %i.alk = getelementptr inbounds nuw i8, ptr %i.alj, i64 32 ; 2 uses
  %wide.load1033 = load <4 x double>, ptr %i.alj, align 8, !tbaa !128
  %wide.load1034 = load <4 x double>, ptr %i.alk, align 8, !tbaa !128
  %i.all = fadd <4 x double> %wide.load1033, %i.alh
  %i.alm = fadd <4 x double> %wide.load1034, %i.ali
  store <4 x double> %i.all, ptr %i.alj, align 8, !tbaa !128
  store <4 x double> %i.alm, ptr %i.alk, align 8, !tbaa !128
  %i.aln = getelementptr inbounds nuw [4 x i8], ptr %i.aja, i64 %index1028 ; 3 uses
  %i.alo = getelementptr inbounds nuw i8, ptr %i.aln, i64 16 ; 2 uses
  %wide.load1035 = load <4 x i32>, ptr %i.aln, align 4, !tbaa !9
  %wide.load1036 = load <4 x i32>, ptr %i.alo, align 4, !tbaa !9
  %i.alp = add nsw <4 x i32> %wide.load1035, splat (i32 1)
  %i.alq = add nsw <4 x i32> %wide.load1036, splat (i32 1)
  store <4 x i32> %i.alp, ptr %i.aln, align 4, !tbaa !9
  store <4 x i32> %i.alq, ptr %i.alo, align 4, !tbaa !9
  %index.next1037 = add nuw i64 %index1028, 8     ; 2 uses
  %i.alr = icmp eq i64 %index.next1037, %n.vec1024
  br i1 %i.alr, label %scalar.ph1021.preheader, label %vector.body1027, !llvm.loop !165

scalar.ph1021.preheader:                          ; preds = %vector.body1027, %.preheader34.i
  %indvars.iv129.i.ph = phi i64 [ 0, %.preheader34.i ], [ %n.vec1024, %vector.body1027 ]
  br label %scalar.ph1021

scalar.ph1021:                                    ; preds = %scalar.ph1021.preheader, %bb.gv
  %indvars.iv129.i = phi i64 [ %indvars.iv.next130.i, %bb.gv ], [ %indvars.iv129.i.ph, %scalar.ph1021.preheader ] ; 4 uses
  %i.als = add nsw i64 %indvars.iv129.i, %indvars.iv134.i ; 2 uses
  %i.alt = icmp slt i64 %i.als, %i.ail
  br i1 %i.alt, label %bb.gv, label %.critedge.i278

bb.gv:                                            ; preds = %scalar.ph1021
  %i.alu = load float, ptr %46, align 4, !tbaa !43
  %i.alv = fpext float %i.alu to double
  %i.alw = fsub double %i.alv, %i.akt
  %i.alx = getelementptr inbounds [4 x i8], ptr %i.aiy, i64 %i.als
  %i.aly = load float, ptr %i.alx, align 4, !tbaa !43
  %i.alz = fpext float %i.aly to double
  %i.ama = fsub double %i.alz, %i.akt
  %i.amb = fmul double %i.alw, %i.ama
  %i.amc = getelementptr inbounds nuw [8 x i8], ptr %i.aiz, i64 %indvars.iv129.i ; 2 uses
  %i.amd = load double, ptr %i.amc, align 8, !tbaa !128
  %i.ame = fadd double %i.amd, %i.amb
  store double %i.ame, ptr %i.amc, align 8, !tbaa !128
  %i.amf = getelementptr inbounds nuw [4 x i8], ptr %i.aja, i64 %indvars.iv129.i ; 2 uses
  %i.amg = load i32, ptr %i.amf, align 4, !tbaa !9
  %i.amh = add nsw i32 %i.amg, 1
  store i32 %i.amh, ptr %i.amf, align 4, !tbaa !9
  %indvars.iv.next130.i = add nuw nsw i64 %indvars.iv129.i, 1 ; 2 uses
  %exitcond133.not.i = icmp eq i64 %indvars.iv.next130.i, %i.aig
  br i1 %exitcond133.not.i, label %.critedge.i278, label %scalar.ph1021, !llvm.loop !166

.critedge.i278:                                   ; preds = %bb.gv, %scalar.ph1021
  %indvars.iv.next135.i = add nsw i64 %indvars.iv134.i, %i.aim ; 2 uses
  %i.ami = icmp slt i64 %indvars.iv.next135.i, %i.ail
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ami, label %.preheader34.i, label %vector.main.loop.iter.check989, !llvm.loop !167

vector.main.loop.iter.check989:                   ; preds = %.critedge.i278
  br i1 %min.iters.check990, label %vec.epilog.ph1011, label %vector.body993

vector.body993:                                   ; preds = %vector.main.loop.iter.check989, %vector.body993
  %index994 = phi i64 [ %index.next1003, %vector.body993 ], [ 0, %vector.main.loop.iter.check989 ] ; 3 uses
  %i.amj = getelementptr inbounds nuw [8 x i8], ptr %i.aiz, i64 %index994 ; 5 uses
  %i.amk = getelementptr inbounds nuw i8, ptr %i.amj, i64 32 ; 2 uses
  %i.aml = getelementptr inbounds nuw i8, ptr %i.amj, i64 64 ; 2 uses
  %i.amm = getelementptr inbounds nuw i8, ptr %i.amj, i64 96 ; 2 uses
  %wide.load995 = load <4 x double>, ptr %i.amj, align 8, !tbaa !128
  %wide.load996 = load <4 x double>, ptr %i.amk, align 8, !tbaa !128
  %wide.load997 = load <4 x double>, ptr %i.aml, align 8, !tbaa !128
  %wide.load998 = load <4 x double>, ptr %i.amm, align 8, !tbaa !128
  %i.amn = getelementptr inbounds nuw [4 x i8], ptr %i.aja, i64 %index994 ; 4 uses
  %i.amo = getelementptr inbounds nuw i8, ptr %i.amn, i64 16
  %i.amp = getelementptr inbounds nuw i8, ptr %i.amn, i64 32
  %i.amq = getelementptr inbounds nuw i8, ptr %i.amn, i64 48
  %wide.load999 = load <4 x i32>, ptr %i.amn, align 4, !tbaa !9
  %wide.load1000 = load <4 x i32>, ptr %i.amo, align 4, !tbaa !9
  %wide.load1001 = load <4 x i32>, ptr %i.amp, align 4, !tbaa !9
  %wide.load1002 = load <4 x i32>, ptr %i.amq, align 4, !tbaa !9
  %i.amr = sitofp <4 x i32> %wide.load999 to <4 x double>
  %i.ams = sitofp <4 x i32> %wide.load1000 to <4 x double>
  %i.amt = sitofp <4 x i32> %wide.load1001 to <4 x double>
  %i.amu = sitofp <4 x i32> %wide.load1002 to <4 x double>
  %i.amv = fdiv <4 x double> %wide.load995, %i.amr
  %i.amw = fdiv <4 x double> %wide.load996, %i.ams
  %i.amx = fdiv <4 x double> %wide.load997, %i.amt
  %i.amy = fdiv <4 x double> %wide.load998, %i.amu
  store <4 x double> %i.amv, ptr %i.amj, align 8, !tbaa !128
  store <4 x double> %i.amw, ptr %i.amk, align 8, !tbaa !128
  store <4 x double> %i.amx, ptr %i.aml, align 8, !tbaa !128
  store <4 x double> %i.amy, ptr %i.amm, align 8, !tbaa !128
  %index.next1003 = add nuw i64 %index994, 16     ; 2 uses
  %i.amz = icmp eq i64 %index.next1003, %n.vec992
  br i1 %i.amz, label %middle.block1004, label %vector.body993, !llvm.loop !168

middle.block1004:                                 ; preds = %vector.body993
  br i1 %cmp.n1005, label %iter.check972, label %vec.epilog.iter.check1009

vec.epilog.iter.check1009:                        ; preds = %middle.block1004
  br i1 %min.epilog.iters.check1010, label %.lr.ph61.i.preheader, label %vec.epilog.ph1011, !prof !132

vec.epilog.ph1011:                                ; preds = %vector.main.loop.iter.check989, %vec.epilog.iter.check1009
  %vec.epilog.resume.val1006 = phi i64 [ %n.vec992, %vec.epilog.iter.check1009 ], [ 0, %vector.main.loop.iter.check989 ]
  br label %vec.epilog.vector.body1013

vec.epilog.vector.body1013:                       ; preds = %vec.epilog.vector.body1013, %vec.epilog.ph1011
  %index1014 = phi i64 [ %vec.epilog.resume.val1006, %vec.epilog.ph1011 ], [ %index.next1017, %vec.epilog.vector.body1013 ] ; 3 uses
  %i.ana = getelementptr inbounds nuw [8 x i8], ptr %i.aiz, i64 %index1014 ; 2 uses
  %wide.load1015 = load <4 x double>, ptr %i.ana, align 8, !tbaa !128
  %i.anb = getelementptr inbounds nuw [4 x i8], ptr %i.aja, i64 %index1014
  %wide.load1016 = load <4 x i32>, ptr %i.anb, align 4, !tbaa !9
  %i.anc = sitofp <4 x i32> %wide.load1016 to <4 x double>
  %i.and = fdiv <4 x double> %wide.load1015, %i.anc
  store <4 x double> %i.and, ptr %i.ana, align 8, !tbaa !128
  %index.next1017 = add nuw i64 %index1014, 4     ; 2 uses
  %i.ane = icmp eq i64 %index.next1017, %n.vec1012
  br i1 %i.ane, label %vec.epilog.middle.block1018, label %vec.epilog.vector.body1013, !llvm.loop !169

vec.epilog.middle.block1018:                      ; preds = %vec.epilog.vector.body1013
  br i1 %cmp.n1019, label %iter.check972, label %.lr.ph61.i.preheader

.lr.ph61.i.preheader:                             ; preds = %vec.epilog.iter.check1009, %vec.epilog.middle.block1018
  %indvars.iv137.i.ph = phi i64 [ %n.vec992, %vec.epilog.iter.check1009 ], [ %n.vec1012, %vec.epilog.middle.block1018 ]
  br label %.lr.ph61.i

.lr.ph61.i:                                       ; preds = %.lr.ph61.i.preheader, %.lr.ph61.i
  %indvars.iv137.i = phi i64 [ %indvars.iv.next138.i, %.lr.ph61.i ], [ %indvars.iv137.i.ph, %.lr.ph61.i.preheader ] ; 3 uses
  %i.anf = getelementptr inbounds nuw [8 x i8], ptr %i.aiz, i64 %indvars.iv137.i ; 2 uses
  %i.ang = load double, ptr %i.anf, align 8, !tbaa !128
  %i.anh = getelementptr inbounds nuw [4 x i8], ptr %i.aja, i64 %indvars.iv137.i
  %i.ani = load i32, ptr %i.anh, align 4, !tbaa !9
  %i.anj = sitofp i32 %i.ani to double
  %i.ank = fdiv double %i.ang, %i.anj
  store double %i.ank, ptr %i.anf, align 8, !tbaa !128
  %indvars.iv.next138.i = add nuw nsw i64 %indvars.iv137.i, 1 ; 2 uses
  %exitcond141.not.i = icmp eq i64 %indvars.iv.next138.i, %i.aig
  br i1 %exitcond141.not.i, label %iter.check972, label %.lr.ph61.i, !llvm.loop !170

iter.check972:                                    ; preds = %.lr.ph61.i, %vec.epilog.middle.block1018, %middle.block1004
  %i.anl = load double, ptr %i.aiz, align 8, !tbaa !128
  %i.anm = fdiv double 1.000000e+00, %i.anl       ; 3 uses
  br i1 %min.iters.check957, label %vec.epilog.ph976, label %vector.ph958

vector.ph958:                                     ; preds = %iter.check972
  %broadcast.splatinsert960 = insertelement <4 x double> poison, double %i.anm, i64 0
  %broadcast.splat961 = shufflevector <4 x double> %broadcast.splatinsert960, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body962

vector.body962:                                   ; preds = %vector.body962, %vector.ph958
  %index963 = phi i64 [ 0, %vector.ph958 ], [ %index.next968, %vector.body962 ] ; 2 uses
  %i.ann = getelementptr inbounds nuw [8 x i8], ptr %i.aiz, i64 %index963 ; 5 uses
  %i.ano = getelementptr inbounds nuw i8, ptr %i.ann, i64 32 ; 2 uses
  %i.anp = getelementptr inbounds nuw i8, ptr %i.ann, i64 64 ; 2 uses
  %i.anq = getelementptr inbounds nuw i8, ptr %i.ann, i64 96 ; 2 uses
  %wide.load964 = load <4 x double>, ptr %i.ann, align 8, !tbaa !128
  %wide.load965 = load <4 x double>, ptr %i.ano, align 8, !tbaa !128
  %wide.load966 = load <4 x double>, ptr %i.anp, align 8, !tbaa !128
  %wide.load967 = load <4 x double>, ptr %i.anq, align 8, !tbaa !128
  %i.anr = fmul <4 x double> %broadcast.splat961, %wide.load964
  %i.ans = fmul <4 x double> %broadcast.splat961, %wide.load965
  %i.ant = fmul <4 x double> %broadcast.splat961, %wide.load966
  %i.anu = fmul <4 x double> %broadcast.splat961, %wide.load967
  store <4 x double> %i.anr, ptr %i.ann, align 8, !tbaa !128
  store <4 x double> %i.ans, ptr %i.ano, align 8, !tbaa !128
  store <4 x double> %i.ant, ptr %i.anp, align 8, !tbaa !128
  store <4 x double> %i.anu, ptr %i.anq, align 8, !tbaa !128
  %index.next968 = add nuw i64 %index963, 16      ; 2 uses
  %i.anv = icmp eq i64 %index.next968, %n.vec959
  br i1 %i.anv, label %middle.block969, label %vector.body962, !llvm.loop !171

middle.block969:                                  ; preds = %vector.body962
  br i1 %cmp.n970, label %._crit_edge65.i, label %vec.epilog.iter.check974

end_hunk_0
