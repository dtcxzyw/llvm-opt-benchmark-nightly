Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_wham?download=true
inline.NumInlined: 929
inline.NumDeleted: 365
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_Z8gmx_whamiPPc:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA18_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 1 dereferenceable(18) @.str.346, i8 noundef zeroext 2)
          to label %.noexc288 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp1279

.noexc288:                                        ; preds = %._crit_edge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.aft = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.aft, ptr %6, align 8, !tbaa !94
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.aft, ptr noundef nonnull align 1 dereferenceable(9) @.str.348, i64 9, i1 false)
  %i.afu = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 9, ptr %i.afu, align 8, !tbaa !96
  %i.afv = getelementptr inbounds nuw i8, ptr %6, i64 25
  store i8 0, ptr %i.afv, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.afw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.afw, ptr %7, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah) #25
  store i64 24, ptr %i.ah, align 8, !tbaa !95
  %i.afx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.ah, i64 noundef 0)
          to label %.noexc218.i unwind label %bb.gj ; 2 uses

.noexc218.i:                                      ; preds = %.noexc288
  store ptr %i.afx, ptr %7, align 8, !tbaa !61
  %i.afy = load i64, ptr %i.ah, align 8, !tbaa !95 ; 3 uses
  store i64 %i.afy, ptr %i.afw, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.afx, ptr noundef nonnull align 1 dereferenceable(24) @.str.349, i64 24, i1 false)
  %i.afz = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.afy, ptr %i.afz, align 8, !tbaa !96
  %i.aga = load ptr, ptr %7, align 8, !tbaa !61
  %i.agb = getelementptr inbounds nuw i8, ptr %i.aga, i64 %i.afy
  store i8 0, ptr %i.agb, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah) #25
  %i.agc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ8gmx_whamiPPcE3opt, i64 128), align 8, !tbaa !97
  %i.agd = invoke noundef ptr @_Z8xvgropenRKNSt10filesystem7__cxx114pathEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_PK16gmx_output_env_t(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull @.str.347, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.agc)
          to label %bb.gh unwind label %bb.gk

bb.gh:                                            ; preds = %.noexc218.i
  %i.age = load ptr, ptr %7, align 8, !tbaa !61   ; 2 uses
  %i.agf = icmp eq ptr %i.age, %i.afw
  br i1 %i.agf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i281

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i281: ; preds = %bb.gh
  %i.agg = load i64, ptr %i.afw, align 8, !tbaa !16
  %i.agh = add i64 %i.agg, 1
  call void @_ZdlPvm(ptr noundef %i.age, i64 noundef %i.agh) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.gh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i281
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.agi = load ptr, ptr %6, align 8, !tbaa !61   ; 2 uses
  %i.agj = icmp eq ptr %i.agi, %i.aft
  br i1 %i.agj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.agk = load i64, ptr %i.aft, align 8, !tbaa !16
  %i.agl = add i64 %i.agk, 1
  call void @_ZdlPvm(ptr noundef %i.agi, i64 noundef %i.agl) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.agm = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.agn = load ptr, ptr %i.agm, align 8, !tbaa !58 ; 2 uses
  %.not.i.i.i.i282 = icmp eq ptr %i.agn, null
  br i1 %.not.i.i.i.i282, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i283, label %bb.gi

bb.gi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222.i
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.agm, ptr noundef nonnull %i.agn) #25
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i283

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i283: ; preds = %bb.gi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222.i
  %i.ago = load ptr, ptr %5, align 8, !tbaa !61   ; 2 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.agq = icmp eq ptr %i.ago, %i.agp
  br i1 %i.agq, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i285, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i284

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i284: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i283
  %i.agr = load i64, ptr %i.agp, align 8, !tbaa !16
  %i.ags = add i64 %i.agr, 1
  call void @_ZdlPvm(ptr noundef %i.ago, i64 noundef %i.ags) #32
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i285

_ZNSt10filesystem7__cxx114pathD2Ev.exit.i285:     ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i283, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i284
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %.lr.ph81.i

bb.gj:                                            ; preds = %.noexc288
  %i.agt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225.i

bb.gk:                                            ; preds = %.noexc218.i
  %i.agu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.agv = load ptr, ptr %7, align 8, !tbaa !61   ; 2 uses
  %i.agw = icmp eq ptr %i.agv, %i.afw
  br i1 %i.agw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223.i: ; preds = %bb.gk
  %i.agx = load i64, ptr %i.afw, align 8, !tbaa !16
  %i.agy = add i64 %i.agx, 1
  call void @_ZdlPvm(ptr noundef %i.agv, i64 noundef %i.agy) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225.i: ; preds = %bb.gk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223.i, %bb.gj
  %.pn.i280 = phi { ptr, i32 } [ %i.agt, %bb.gj ], [ %i.agu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223.i ], [ %i.agu, %bb.gk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.agz = load ptr, ptr %6, align 8, !tbaa !61   ; 2 uses
  %i.aha = icmp eq ptr %i.agz, %i.aft
  br i1 %i.aha, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225.i
  %i.ahb = load i64, ptr %i.aft, align 8, !tbaa !16
  %i.ahc = add i64 %i.ahb, 1
  call void @_ZdlPvm(ptr noundef %i.agz, i64 noundef %i.ahc) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %.body

.lr.ph81.i:                                       ; preds = %bb.gg, %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i285
  %.0173.i = phi ptr [ %i.agd, %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i285 ], [ null, %bb.gg ] ; 4 uses
  %putchar.i267 = call i32 @putchar(i32 10)       ; 0 uses
  %i.ahd = uitofp nneg i32 %i.px to double
  %.not208.i = icmp eq ptr %.0173.i, null         ; 2 uses
  br label %bb.gl

.loopexit37.i:                                    ; preds = %.critedge2.i, %.noexc290
  %exitcond164.not.i = icmp eq i64 %indvars.iv.next161.i, %wide.trip.count23.i
  br i1 %exitcond164.not.i, label %._crit_edge82.i, label %bb.gl, !llvm.loop !178

bb.gl:                                            ; preds = %.loopexit37.i, %.lr.ph81.i
  %indvars.iv160.i = phi i64 [ 0, %.lr.ph81.i ], [ %indvars.iv.next161.i, %.loopexit37.i ] ; 2 uses
  %i.ahe = load ptr, ptr @stdout, align 8, !tbaa !82
  %indvars.iv.next161.i = add nuw nsw i64 %indvars.iv160.i, 1 ; 3 uses
  %i.ahf = trunc nuw nsw i64 %indvars.iv.next161.i to i32
  %i.ahg = uitofp nneg i32 %i.ahf to double
  %i.ahh = fmul nnan double %i.ahg, 1.000000e+02
  %i.ahi = fdiv double %i.ahh, %i.ahd
  %i.ahj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ahe, ptr noundef nonnull @.str.350, double noundef %i.ahi) #25 ; 0 uses
  %i.ahk = load ptr, ptr @stdout, align 8, !tbaa !82
  %i.ahl = call i32 @fflush(ptr noundef %i.ahk)   ; 0 uses
  %i.ahm = getelementptr inbounds nuw [152 x i8], ptr %i.pz, i64 %indvars.iv160.i ; 8 uses
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahm, i64 64 ; 3 uses
  %i.aho = load ptr, ptr %i.ahn, align 8, !tbaa !80
  %i.ahp = load i32, ptr %i.aho, align 4, !tbaa !12 ; 9 uses
  %i.ahq = sdiv i32 %i.ahp, 2                     ; 2 uses
  %i.ahr = icmp slt i32 %i.ahp, 10
  br i1 %i.ahr, label %bb.gm, label %bb.gp

bb.gm:                                            ; preds = %bb.gl
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA64_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 1 dereferenceable(64) @.str.219, i8 noundef zeroext 2)
          to label %.noexc289 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp1279

.noexc289:                                        ; preds = %bb.gm
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %8, i32 noundef 2358, ptr noundef nonnull @.str.351, i32 noundef %i.ahp) #31
          to label %bb.gn unwind label %bb.go

bb.gn:                                            ; preds = %.noexc289
  unreachable

bb.go:                                            ; preds = %.noexc289
  %i.ahs = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %.body

bb.gp:                                            ; preds = %bb.gl
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahm, i64 96
  %i.ahu = load double, ptr %i.aht, align 8, !tbaa !104 ; 3 uses
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahm, i64 80 ; 2 uses
  %i.ahw = load i32, ptr %i.ahm, align 8, !tbaa !85
  %i.ahx = sext i32 %i.ahw to i64
  %i.ahy = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.219, i32 noundef 2364, i64 noundef range(i64 -2147483648, 2147483648) %i.ahx, i64 noundef 8)
          to label %.noexc290 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp1279

.noexc290:                                        ; preds = %bb.gp
  store ptr %i.ahy, ptr %i.ahv, align 8, !tbaa !89
  %i.ahz = load i32, ptr %i.ahm, align 8, !tbaa !85
  %i.aia = icmp sgt i32 %i.ahz, 0
  br i1 %i.aia, label %.lr.ph78.i, label %.loopexit37.i

.lr.ph78.i:                                       ; preds = %.noexc290
  %i.aib = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZ8gmx_whamiPPcE3opt, i64 148), align 4, !tbaa !255
  %i.aic = fpext float %i.aib to double
  %i.aid = fdiv double %i.aic, %i.ahu
  %i.aie = call double @llvm.rint.f64(double %i.aid)
  %i.aif = fptosi double %i.aie to i32
  %spec.store.select.i = call i32 @llvm.umax.i32(i32 %i.aif, i32 1)
  %i.aig = getelementptr inbounds nuw i8, ptr %i.ahm, i64 112
  %i.aih = zext nneg i32 %i.ahq to i64            ; 17 uses
  %i.aii = shl nuw nsw i64 %i.aih, 3              ; 4 uses
  %i.aij = shl nuw nsw i64 %i.aih, 2              ; 4 uses
  %i.aik = uitofp nneg i32 %i.ahp to double
  %i.ail = getelementptr inbounds nuw i8, ptr %i.ahm, i64 72
  %i.aim = zext nneg i32 %i.ahp to i64            ; 4 uses
  %i.ain = sext i32 %spec.store.select.i to i64   ; 2 uses
  %smax.i274 = call i32 @llvm.smax.i32(i32 %i.ahq, i32 2)
  %wide.trip.count155.i = zext nneg i32 %smax.i274 to i64
  %xtraiter1286 = and i64 %i.aim, 7               ; 3 uses
  %unroll_iter1291 = and i64 %i.aim, 2147483640
  %lcmp.mod1288.not = icmp eq i64 %xtraiter1286, 0
  %lcmp.mod1290 = icmp ne i64 %xtraiter1286, 0
  %i.aio = add nsw i64 %i.aih, -1
  %min.iters.check1066 = icmp ult i32 %i.ahp, 32
  %i.aip = and i64 %i.aih, 12
  %n.vec1068 = and i64 %i.aih, 1073741808         ; 4 uses
  %cmp.n1081 = icmp eq i64 %n.vec1068, %i.aih
  %min.epilog.iters.check1085 = icmp eq i64 %i.aip, 0
  %n.vec1088 = and i64 %i.aih, 1073741820         ; 3 uses
  %cmp.n1095 = icmp eq i64 %n.vec1088, %i.aih
  %min.iters.check1033 = icmp ult i32 %i.ahp, 32
  %i.aiq = and i64 %i.aih, 12
  %n.vec1035 = and i64 %i.aih, 1073741808         ; 4 uses
  %cmp.n1046 = icmp eq i64 %n.vec1035, %i.aih
  %min.epilog.iters.check1050 = icmp eq i64 %i.aiq, 0
  %n.vec1053 = and i64 %i.aih, 1073741820         ; 3 uses
  %cmp.n1061 = icmp eq i64 %n.vec1053, %i.aih
  br label %bb.gq

bb.gq:                                            ; preds = %.critedge2.i, %.lr.ph78.i
  %indvars.iv157.i = phi i64 [ 0, %.lr.ph78.i ], [ %indvars.iv.next158.i, %.critedge2.i ] ; 6 uses
  %i.air = load ptr, ptr %i.ahn, align 8, !tbaa !80
  %i.ais = getelementptr inbounds nuw [4 x i8], ptr %i.air, i64 %indvars.iv157.i
  %i.ait = load i32, ptr %i.ais, align 4, !tbaa !12
  %.not207.i = icmp eq i32 %i.ahp, %i.ait
  br i1 %.not207.i, label %.noexc229.i, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA64_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 1 dereferenceable(64) @.str.219, i8 noundef zeroext 2)
          to label %.noexc291 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp1279

.noexc291:                                        ; preds = %bb.gr
  %i.aiu = load ptr, ptr %i.ahn, align 8, !tbaa !80
  %i.aiv = getelementptr inbounds nuw [4 x i8], ptr %i.aiu, i64 %indvars.iv157.i
  %i.aiw = load i32, ptr %i.aiv, align 4, !tbaa !12
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %9, i32 noundef 2375, ptr noundef nonnull @.str.353, i32 noundef %i.ahp, i32 noundef %i.aiw) #31
          to label %bb.gs unwind label %bb.gt

bb.gs:                                            ; preds = %.noexc291
  unreachable

bb.gt:                                            ; preds = %.noexc291
  %i.aix = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %.body

.noexc229.i:                                      ; preds = %bb.gq
  %i.aiy = load ptr, ptr %i.aig, align 8, !tbaa !106
  %i.aiz = getelementptr inbounds nuw [8 x i8], ptr %i.aiy, i64 %indvars.iv157.i
  %i.aja = load ptr, ptr %i.aiz, align 8, !tbaa !107 ; 11 uses
  %i.ajb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aii) #36
          to label %.noexc292 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp1279 ; 15 uses

.noexc292:                                        ; preds = %.noexc229.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ajb, i8 0, i64 %i.aii, i1 false), !tbaa !90
  %i.ajc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aij) #36
          to label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.preheader105.i unwind label %bb.gu ; 8 uses

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.preheader105.i: ; preds = %.noexc292
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ajc, i8 0, i64 %i.aij, i1 false), !tbaa !12
  br label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i:          ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.preheader105.i
  %indvars.iv.i276 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.preheader105.i ], [ %indvars.iv.next.i277.7, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i ] ; 9 uses
  %.017555.i = phi double [ 0.000000e+00, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.preheader105.i ], [ %i.akp, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i ]
  %niter1292 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.preheader105.i ], [ %niter1292.next.7, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i ]
  %i.ajd = getelementptr inbounds nuw [4 x i8], ptr %i.aja, i64 %indvars.iv.i276
  %i.aje = load float, ptr %i.ajd, align 4, !tbaa !32
  %i.ajf = fpext float %i.aje to double
  %i.ajg = fadd double %.017555.i, %i.ajf
  %i.ajh = getelementptr inbounds nuw [4 x i8], ptr %i.aja, i64 %indvars.iv.i276
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajh, i64 4
  %i.ajj = load float, ptr %i.aji, align 4, !tbaa !32
  %i.ajk = fpext float %i.ajj to double
  %i.ajl = fadd double %i.ajg, %i.ajk
  %i.ajm = getelementptr inbounds nuw [4 x i8], ptr %i.aja, i64 %indvars.iv.i276
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajm, i64 8
  %i.ajo = load float, ptr %i.ajn, align 4, !tbaa !32
  %i.ajp = fpext float %i.ajo to double
  %i.ajq = fadd double %i.ajl, %i.ajp
  %i.ajr = getelementptr inbounds nuw [4 x i8], ptr %i.aja, i64 %indvars.iv.i276
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajr, i64 12
  %i.ajt = load float, ptr %i.ajs, align 4, !tbaa !32
  %i.aju = fpext float %i.ajt to double
  %i.ajv = fadd double %i.ajq, %i.aju
  %i.ajw = getelementptr inbounds nuw [4 x i8], ptr %i.aja, i64 %indvars.iv.i276
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajw, i64 16
  %i.ajy = load float, ptr %i.ajx, align 4, !tbaa !32
  %i.ajz = fpext float %i.ajy to double
  %i.aka = fadd double %i.ajv, %i.ajz
  %i.akb = getelementptr inbounds nuw [4 x i8], ptr %i.aja, i64 %indvars.iv.i276
  %i.akc = getelementptr inbounds nuw i8, ptr %i.akb, i64 20
  %i.akd = load float, ptr %i.akc, align 4, !tbaa !32
  %i.ake = fpext float %i.akd to double
  %i.akf = fadd double %i.aka, %i.ake
  %i.akg = getelementptr inbounds nuw [4 x i8], ptr %i.aja, i64 %indvars.iv.i276
  %i.akh = getelementptr inbounds nuw i8, ptr %i.akg, i64 24
  %i.aki = load float, ptr %i.akh, align 4, !tbaa !32
  %i.akj = fpext float %i.aki to double
  %i.akk = fadd double %i.akf, %i.akj
  %i.akl = getelementptr inbounds nuw [4 x i8], ptr %i.aja, i64 %indvars.iv.i276
  %i.akm = getelementptr inbounds nuw i8, ptr %i.akl, i64 28
  %i.akn = load float, ptr %i.akm, align 4, !tbaa !32
  %i.ako = fpext float %i.akn to double
  %i.akp = fadd double %i.akk, %i.ako             ; 3 uses
  %indvars.iv.next.i277.7 = add nuw nsw i64 %indvars.iv.i276, 8 ; 2 uses
  %niter1292.next.7 = add i64 %niter1292, 8       ; 2 uses
  %niter1292.ncmp.7 = icmp eq i64 %niter1292.next.7, %unroll_iter1291
  br i1 %niter1292.ncmp.7, label %.preheader34.preheader.i.unr-lcssa, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i, !llvm.loop !179

bb.gu:                                            ; preds = %.noexc292
  %i.akq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit240.i

.preheader34.preheader.i.unr-lcssa:               ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i
  br i1 %lcmp.mod1288.not, label %.preheader34.preheader.i, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.epil.preheader

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.epil.preheader: ; preds = %.preheader34.preheader.i.unr-lcssa
  call void @llvm.assume(i1 %lcmp.mod1290)
  br label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.epil

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.epil:     ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.epil, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.epil.preheader
  %indvars.iv.i276.epil = phi i64 [ %indvars.iv.next.i277.7, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.epil.preheader ], [ %indvars.iv.next.i277.epil, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.epil ] ; 2 uses
  %.017555.i.epil = phi double [ %i.akp, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.epil.preheader ], [ %i.aku, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.epil ]
  %epil.iter1287 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.epil.preheader ], [ %epil.iter1287.next, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.epil ]
  %i.akr = getelementptr inbounds nuw [4 x i8], ptr %i.aja, i64 %indvars.iv.i276.epil
  %i.aks = load float, ptr %i.akr, align 4, !tbaa !32
  %i.akt = fpext float %i.aks to double
  %i.aku = fadd double %.017555.i.epil, %i.akt    ; 2 uses
  %indvars.iv.next.i277.epil = add nuw nsw i64 %indvars.iv.i276.epil, 1
  %epil.iter1287.next = add i64 %epil.iter1287, 1 ; 2 uses
  %epil.iter1287.cmp.not = icmp eq i64 %epil.iter1287.next, %xtraiter1286
  br i1 %epil.iter1287.cmp.not, label %.preheader34.preheader.i, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.epil, !llvm.loop !180

.preheader34.preheader.i:                         ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.epil, %.preheader34.preheader.i.unr-lcssa
  %.lcssa1213 = phi double [ %i.akp, %.preheader34.preheader.i.unr-lcssa ], [ %i.aku, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.epil ]
  %i.akv = fdiv double %.lcssa1213, %i.aik        ; 3 uses
  %broadcast.splatinsert1101 = insertelement <4 x double> poison, double %i.akv, i64 0
  %broadcast.splat1102 = shufflevector <4 x double> %broadcast.splatinsert1101, <4 x double> poison, <4 x i32> zeroinitializer ; 3 uses
  br label %.preheader34.i

.preheader34.i:                                   ; preds = %.critedge.i279, %.preheader34.preheader.i
  %indvar = phi i64 [ %indvars.iv.next624, %.critedge.i279 ], [ %i.aim, %.preheader34.preheader.i ] ; 3 uses
  %indvars.iv134.i = phi i64 [ %indvars.iv.next135.i, %.critedge.i279 ], [ 0, %.preheader34.preheader.i ] ; 3 uses
  %i.akw = getelementptr inbounds [4 x i8], ptr %i.aja, i64 %indvars.iv134.i ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.aja, i64 %indvars.iv134.i ; 2 uses
  %i.akx = call i64 @llvm.umin.i64(i64 %indvar, i64 %i.aio)
  %i.aky = add i64 %i.akx, 1                      ; 3 uses
  %min.iters.check1098 = icmp ult i64 %i.aky, 9
  br i1 %min.iters.check1098, label %scalar.ph1097.preheader, label %vector.ph1099

vector.ph1099:                                    ; preds = %.preheader34.i
  %i.akz = and i64 %i.aky, 7                      ; 2 uses
  %i.ala = icmp eq i64 %i.akz, 0
  %i.alb = select i1 %i.ala, i64 8, i64 %i.akz
  %n.vec1100 = sub i64 %i.aky, %i.alb             ; 2 uses
  %i.alc = load float, ptr %i.akw, align 4, !tbaa !32
  %broadcast.splatinsert1105 = insertelement <4 x float> poison, float %i.alc, i64 0
  %broadcast.splat1106 = shufflevector <4 x float> %broadcast.splatinsert1105, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ald = fpext <4 x float> %broadcast.splat1106 to <4 x double>
  %i.ale = fsub <4 x double> %i.ald, %broadcast.splat1102 ; 2 uses
  br label %vector.body1103

vector.body1103:                                  ; preds = %vector.body1103, %vector.ph1099
  %index1104 = phi i64 [ 0, %vector.ph1099 ], [ %index.next1113, %vector.body1103 ] ; 4 uses
  %gep.a = getelementptr [4 x i8], ptr %invariant.gep, i64 %index1104 ; 2 uses
  %i.alf = getelementptr i8, ptr %gep.a, i64 16
  %wide.load1107 = load <4 x float>, ptr %gep.a, align 4, !tbaa !32
  %wide.load1108 = load <4 x float>, ptr %i.alf, align 4, !tbaa !32
  %i.alg = fpext <4 x float> %wide.load1107 to <4 x double>
  %i.alh = fpext <4 x float> %wide.load1108 to <4 x double>
  %i.ali = fsub <4 x double> %i.alg, %broadcast.splat1102
  %i.alj = fsub <4 x double> %i.alh, %broadcast.splat1102
  %i.alk = fmul <4 x double> %i.ale, %i.ali
  %i.all = fmul <4 x double> %i.ale, %i.alj
  %i.alm = getelementptr inbounds nuw [8 x i8], ptr %i.ajb, i64 %index1104 ; 3 uses
  %i.aln = getelementptr inbounds nuw i8, ptr %i.alm, i64 32 ; 2 uses
  %wide.load1109 = load <4 x double>, ptr %i.alm, align 8, !tbaa !90
  %wide.load1110 = load <4 x double>, ptr %i.aln, align 8, !tbaa !90
  %i.alo = fadd <4 x double> %wide.load1109, %i.alk
  %i.alp = fadd <4 x double> %wide.load1110, %i.all
  store <4 x double> %i.alo, ptr %i.alm, align 8, !tbaa !90
  store <4 x double> %i.alp, ptr %i.aln, align 8, !tbaa !90
  %i.alq = getelementptr inbounds nuw [4 x i8], ptr %i.ajc, i64 %index1104 ; 3 uses
  %i.alr = getelementptr inbounds nuw i8, ptr %i.alq, i64 16 ; 2 uses
  %wide.load1111 = load <4 x i32>, ptr %i.alq, align 4, !tbaa !12
  %wide.load1112 = load <4 x i32>, ptr %i.alr, align 4, !tbaa !12
  %i.als = add nsw <4 x i32> %wide.load1111, splat (i32 1)
  %i.alt = add nsw <4 x i32> %wide.load1112, splat (i32 1)
  store <4 x i32> %i.als, ptr %i.alq, align 4, !tbaa !12
  store <4 x i32> %i.alt, ptr %i.alr, align 4, !tbaa !12
  %index.next1113 = add nuw i64 %index1104, 8     ; 2 uses
  %i.alu = icmp eq i64 %index.next1113, %n.vec1100
  br i1 %i.alu, label %scalar.ph1097.preheader, label %vector.body1103, !llvm.loop !181

scalar.ph1097.preheader:                          ; preds = %vector.body1103, %.preheader34.i
  %indvars.iv129.i.ph = phi i64 [ 0, %.preheader34.i ], [ %n.vec1100, %vector.body1103 ]
  br label %scalar.ph1097

scalar.ph1097:                                    ; preds = %scalar.ph1097.preheader, %bb.gv
  %indvars.iv129.i = phi i64 [ %indvars.iv.next130.i, %bb.gv ], [ %indvars.iv129.i.ph, %scalar.ph1097.preheader ] ; 5 uses
  %exitcond625.not = icmp eq i64 %indvars.iv129.i, %indvar
  br i1 %exitcond625.not, label %.critedge.i279, label %bb.gv

bb.gv:                                            ; preds = %scalar.ph1097
  %i.alv = load float, ptr %i.akw, align 4, !tbaa !32
  %i.alw = fpext float %i.alv to double
  %i.alx = fsub double %i.alw, %i.akv
  %i.aly = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv129.i
  %i.alz = load float, ptr %i.aly, align 4, !tbaa !32
  %i.ama = fpext float %i.alz to double
  %i.amb = fsub double %i.ama, %i.akv
  %i.amc = fmul double %i.alx, %i.amb
  %i.amd = getelementptr inbounds nuw [8 x i8], ptr %i.ajb, i64 %indvars.iv129.i ; 2 uses
  %i.ame = load double, ptr %i.amd, align 8, !tbaa !90
  %i.amf = fadd double %i.ame, %i.amc
  store double %i.amf, ptr %i.amd, align 8, !tbaa !90
  %i.amg = getelementptr inbounds nuw [4 x i8], ptr %i.ajc, i64 %indvars.iv129.i ; 2 uses
  %i.amh = load i32, ptr %i.amg, align 4, !tbaa !12
  %i.ami = add nsw i32 %i.amh, 1
  store i32 %i.ami, ptr %i.amg, align 4, !tbaa !12
  %indvars.iv.next130.i = add nuw i64 %indvars.iv129.i, 1 ; 2 uses
  %exitcond133.not.i = icmp eq i64 %indvars.iv.next130.i, %i.aih
  br i1 %exitcond133.not.i, label %.critedge.i279, label %scalar.ph1097, !llvm.loop !182

.critedge.i279:                                   ; preds = %bb.gv, %scalar.ph1097
  %indvars.iv.next135.i = add nsw i64 %indvars.iv134.i, %i.ain ; 2 uses
  %i.amj = icmp slt i64 %indvars.iv.next135.i, %i.aim
  %indvars.iv.next624 = sub i64 %indvar, %i.ain
  br i1 %i.amj, label %.preheader34.i, label %vector.main.loop.iter.check1065, !llvm.loop !183

vector.main.loop.iter.check1065:                  ; preds = %.critedge.i279
  br i1 %min.iters.check1066, label %vec.epilog.ph1086, label %vector.body1069

vector.body1069:                                  ; preds = %vector.main.loop.iter.check1065, %vector.body1069
  %index1070 = phi i64 [ %index.next1079, %vector.body1069 ], [ 0, %vector.main.loop.iter.check1065 ] ; 3 uses
  %i.amk = getelementptr inbounds nuw [8 x i8], ptr %i.ajb, i64 %index1070 ; 5 uses
  %i.aml = getelementptr inbounds nuw i8, ptr %i.amk, i64 32 ; 2 uses
  %i.amm = getelementptr inbounds nuw i8, ptr %i.amk, i64 64 ; 2 uses
  %i.amn = getelementptr inbounds nuw i8, ptr %i.amk, i64 96 ; 2 uses
  %wide.load1071 = load <4 x double>, ptr %i.amk, align 8, !tbaa !90
  %wide.load1072 = load <4 x double>, ptr %i.aml, align 8, !tbaa !90
  %wide.load1073 = load <4 x double>, ptr %i.amm, align 8, !tbaa !90
  %wide.load1074 = load <4 x double>, ptr %i.amn, align 8, !tbaa !90
  %i.amo = getelementptr inbounds nuw [4 x i8], ptr %i.ajc, i64 %index1070 ; 4 uses
  %i.amp = getelementptr inbounds nuw i8, ptr %i.amo, i64 16
  %i.amq = getelementptr inbounds nuw i8, ptr %i.amo, i64 32
  %i.amr = getelementptr inbounds nuw i8, ptr %i.amo, i64 48
  %wide.load1075 = load <4 x i32>, ptr %i.amo, align 4, !tbaa !12
  %wide.load1076 = load <4 x i32>, ptr %i.amp, align 4, !tbaa !12
  %wide.load1077 = load <4 x i32>, ptr %i.amq, align 4, !tbaa !12
  %wide.load1078 = load <4 x i32>, ptr %i.amr, align 4, !tbaa !12
  %i.ams = sitofp <4 x i32> %wide.load1075 to <4 x double>
  %i.amt = sitofp <4 x i32> %wide.load1076 to <4 x double>
  %i.amu = sitofp <4 x i32> %wide.load1077 to <4 x double>
  %i.amv = sitofp <4 x i32> %wide.load1078 to <4 x double>
  %i.amw = fdiv <4 x double> %wide.load1071, %i.ams
  %i.amx = fdiv <4 x double> %wide.load1072, %i.amt
  %i.amy = fdiv <4 x double> %wide.load1073, %i.amu
  %i.amz = fdiv <4 x double> %wide.load1074, %i.amv
  store <4 x double> %i.amw, ptr %i.amk, align 8, !tbaa !90
  store <4 x double> %i.amx, ptr %i.aml, align 8, !tbaa !90
  store <4 x double> %i.amy, ptr %i.amm, align 8, !tbaa !90
  store <4 x double> %i.amz, ptr %i.amn, align 8, !tbaa !90
  %index.next1079 = add nuw i64 %index1070, 16    ; 2 uses
  %i.ana = icmp eq i64 %index.next1079, %n.vec1068
  br i1 %i.ana, label %middle.block1080, label %vector.body1069, !llvm.loop !184

middle.block1080:                                 ; preds = %vector.body1069
  br i1 %cmp.n1081, label %iter.check1047, label %vec.epilog.iter.check1083

vec.epilog.iter.check1083:                        ; preds = %middle.block1080
  br i1 %min.epilog.iters.check1085, label %.lr.ph61.i.preheader, label %vec.epilog.ph1086, !prof !93

vec.epilog.ph1086:                                ; preds = %vector.main.loop.iter.check1065, %vec.epilog.iter.check1083
  %vec.epilog.resume.val1087 = phi i64 [ %n.vec1068, %vec.epilog.iter.check1083 ], [ 0, %vector.main.loop.iter.check1065 ]
  br label %vec.epilog.vector.body1089

vec.epilog.vector.body1089:                       ; preds = %vec.epilog.vector.body1089, %vec.epilog.ph1086
  %index1090 = phi i64 [ %vec.epilog.resume.val1087, %vec.epilog.ph1086 ], [ %index.next1093, %vec.epilog.vector.body1089 ] ; 3 uses
  %i.anb = getelementptr inbounds nuw [8 x i8], ptr %i.ajb, i64 %index1090 ; 2 uses
  %wide.load1091 = load <4 x double>, ptr %i.anb, align 8, !tbaa !90
  %i.anc = getelementptr inbounds nuw [4 x i8], ptr %i.ajc, i64 %index1090
  %wide.load1092 = load <4 x i32>, ptr %i.anc, align 4, !tbaa !12
  %i.and = sitofp <4 x i32> %wide.load1092 to <4 x double>
  %i.ane = fdiv <4 x double> %wide.load1091, %i.and
  store <4 x double> %i.ane, ptr %i.anb, align 8, !tbaa !90
  %index.next1093 = add nuw i64 %index1090, 4     ; 2 uses
  %i.anf = icmp eq i64 %index.next1093, %n.vec1088
  br i1 %i.anf, label %vec.epilog.middle.block1094, label %vec.epilog.vector.body1089, !llvm.loop !185

vec.epilog.middle.block1094:                      ; preds = %vec.epilog.vector.body1089
  br i1 %cmp.n1095, label %iter.check1047, label %.lr.ph61.i.preheader

.lr.ph61.i.preheader:                             ; preds = %vec.epilog.iter.check1083, %vec.epilog.middle.block1094
  %indvars.iv137.i.ph = phi i64 [ %n.vec1068, %vec.epilog.iter.check1083 ], [ %n.vec1088, %vec.epilog.middle.block1094 ]
  br label %.lr.ph61.i

.lr.ph61.i:                                       ; preds = %.lr.ph61.i.preheader, %.lr.ph61.i
  %indvars.iv137.i = phi i64 [ %indvars.iv.next138.i, %.lr.ph61.i ], [ %indvars.iv137.i.ph, %.lr.ph61.i.preheader ] ; 3 uses
  %i.ang = getelementptr inbounds nuw [8 x i8], ptr %i.ajb, i64 %indvars.iv137.i ; 2 uses
  %i.anh = load double, ptr %i.ang, align 8, !tbaa !90
  %i.ani = getelementptr inbounds nuw [4 x i8], ptr %i.ajc, i64 %indvars.iv137.i
  %i.anj = load i32, ptr %i.ani, align 4, !tbaa !12
  %i.ank = sitofp i32 %i.anj to double
  %i.anl = fdiv double %i.anh, %i.ank
  store double %i.anl, ptr %i.ang, align 8, !tbaa !90
  %indvars.iv.next138.i = add nuw nsw i64 %indvars.iv137.i, 1 ; 2 uses
  %exitcond141.not.i = icmp eq i64 %indvars.iv.next138.i, %i.aih
  br i1 %exitcond141.not.i, label %iter.check1047, label %.lr.ph61.i, !llvm.loop !186

iter.check1047:                                   ; preds = %.lr.ph61.i, %vec.epilog.middle.block1094, %middle.block1080
  %i.anm = load double, ptr %i.ajb, align 8, !tbaa !90
  %i.ann = fdiv double 1.000000e+00, %i.anm       ; 3 uses
  br i1 %min.iters.check1033, label %vec.epilog.ph1051, label %vector.ph1034

vector.ph1034:                                    ; preds = %iter.check1047
  %broadcast.splatinsert1036 = insertelement <4 x double> poison, double %i.ann, i64 0
  %broadcast.splat1037 = shufflevector <4 x double> %broadcast.splatinsert1036, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body1038

vector.body1038:                                  ; preds = %vector.ph1034, %vector.body1038
  %index1039 = phi i64 [ 0, %vector.ph1034 ], [ %index.next1044, %vector.body1038 ] ; 2 uses
  %i.ano = getelementptr inbounds nuw [8 x i8], ptr %i.ajb, i64 %index1039 ; 5 uses
  %i.anp = getelementptr inbounds nuw i8, ptr %i.ano, i64 32 ; 2 uses
  %i.anq = getelementptr inbounds nuw i8, ptr %i.ano, i64 64 ; 2 uses
  %i.anr = getelementptr inbounds nuw i8, ptr %i.ano, i64 96 ; 2 uses
  %wide.load1040 = load <4 x double>, ptr %i.ano, align 8, !tbaa !90
  %wide.load1041 = load <4 x double>, ptr %i.anp, align 8, !tbaa !90
  %wide.load1042 = load <4 x double>, ptr %i.anq, align 8, !tbaa !90
  %wide.load1043 = load <4 x double>, ptr %i.anr, align 8, !tbaa !90
  %i.ans = fmul <4 x double> %broadcast.splat1037, %wide.load1040
  %i.ant = fmul <4 x double> %broadcast.splat1037, %wide.load1041
  %i.anu = fmul <4 x double> %broadcast.splat1037, %wide.load1042
  %i.anv = fmul <4 x double> %broadcast.splat1037, %wide.load1043
  store <4 x double> %i.ans, ptr %i.ano, align 8, !tbaa !90
  store <4 x double> %i.ant, ptr %i.anp, align 8, !tbaa !90
  store <4 x double> %i.anu, ptr %i.anq, align 8, !tbaa !90
  store <4 x double> %i.anv, ptr %i.anr, align 8, !tbaa !90
  %index.next1044 = add nuw i64 %index1039, 16    ; 2 uses
  %i.anw = icmp eq i64 %index.next1044, %n.vec1035
  br i1 %i.anw, label %middle.block1045, label %vector.body1038, !llvm.loop !187

middle.block1045:                                 ; preds = %vector.body1038
  br i1 %cmp.n1046, label %._crit_edge65.i, label %vec.epilog.iter.check1048

vec.epilog.iter.check1048:                        ; preds = %middle.block1045
  br i1 %min.epilog.iters.check1050, label %.lr.ph64.i.preheader, label %vec.epilog.ph1051, !prof !93

vec.epilog.ph1051:                                ; preds = %iter.check1047, %vec.epilog.iter.check1048
  %vec.epilog.resume.val1052 = phi i64 [ %n.vec1035, %vec.epilog.iter.check1048 ], [ 0, %iter.check1047 ]
  %broadcast.splatinsert1054 = insertelement <4 x double> poison, double %i.ann, i64 0
  %broadcast.splat1055 = shufflevector <4 x double> %broadcast.splatinsert1054, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body1056

vec.epilog.vector.body1056:                       ; preds = %vec.epilog.vector.body1056, %vec.epilog.ph1051
  %index1057 = phi i64 [ %vec.epilog.resume.val1052, %vec.epilog.ph1051 ], [ %index.next1059, %vec.epilog.vector.body1056 ] ; 2 uses
  %i.anx = getelementptr inbounds nuw [8 x i8], ptr %i.ajb, i64 %index1057 ; 2 uses
  %wide.load1058 = load <4 x double>, ptr %i.anx, align 8, !tbaa !90
  %i.any = fmul <4 x double> %broadcast.splat1055, %wide.load1058
  store <4 x double> %i.any, ptr %i.anx, align 8, !tbaa !90
  %index.next1059 = add nuw i64 %index1057, 4     ; 2 uses
  %i.anz = icmp eq i64 %index.next1059, %n.vec1053
  br i1 %i.anz, label %vec.epilog.middle.block1060, label %vec.epilog.vector.body1056, !llvm.loop !188

vec.epilog.middle.block1060:                      ; preds = %vec.epilog.vector.body1056
  br i1 %cmp.n1061, label %._crit_edge65.i, label %.lr.ph64.i.preheader

.lr.ph64.i.preheader:                             ; preds = %vec.epilog.iter.check1048, %vec.epilog.middle.block1060
  %indvars.iv142.i.ph = phi i64 [ %n.vec1035, %vec.epilog.iter.check1048 ], [ %n.vec1053, %vec.epilog.middle.block1060 ]
  br label %.lr.ph64.i

.lr.ph64.i:                                       ; preds = %.lr.ph64.i.preheader, %.lr.ph64.i
  %indvars.iv142.i = phi i64 [ %indvars.iv.next143.i, %.lr.ph64.i ], [ %indvars.iv142.i.ph, %.lr.ph64.i.preheader ] ; 2 uses
  %i.aoa = getelementptr inbounds nuw [8 x i8], ptr %i.ajb, i64 %indvars.iv142.i ; 2 uses
  %i.aob = load double, ptr %i.aoa, align 8, !tbaa !90
  %i.aoc = fmul double %i.ann, %i.aob
  store double %i.aoc, ptr %i.aoa, align 8, !tbaa !90
  %indvars.iv.next143.i = add nuw nsw i64 %indvars.iv142.i, 1 ; 2 uses
  %exitcond146.not.i = icmp eq i64 %indvars.iv.next143.i, %i.aih
  br i1 %exitcond146.not.i, label %._crit_edge65.i, label %.lr.ph64.i, !llvm.loop !189

._crit_edge65.i:                                  ; preds = %.lr.ph64.i, %vec.epilog.middle.block1060, %middle.block1045
  br i1 %.not208.i, label %.lr.ph72.preheader.i, label %.lr.ph67.i

.lr.ph67.i:                                       ; preds = %._crit_edge65.i, %.lr.ph67.i
  %indvars.iv147.i = phi i64 [ %indvars.iv.next148.i, %.lr.ph67.i ], [ 0, %._crit_edge65.i ] ; 3 uses
  %i.aod = trunc nuw nsw i64 %indvars.iv147.i to i32
  %i.aoe = uitofp nneg i32 %i.aod to double
  %i.aof = fmul double %i.ahu, %i.aoe
  %i.aog = getelementptr inbounds nuw [8 x i8], ptr %i.ajb, i64 %indvars.iv147.i
  %i.aoh = load double, ptr %i.aog, align 8, !tbaa !90
  %i.aoi = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0173.i, ptr noundef nonnull @.str.354, double noundef %i.aof, double noundef %i.aoh) #25 ; 0 uses
  %indvars.iv.next148.i = add nuw nsw i64 %indvars.iv147.i, 1 ; 2 uses
  %exitcond151.not.i = icmp eq i64 %indvars.iv.next148.i, %i.aih
  br i1 %exitcond151.not.i, label %._crit_edge68.i, label %.lr.ph67.i, !llvm.loop !190

._crit_edge68.i:                                  ; preds = %.lr.ph67.i
  %i.aoj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ8gmx_whamiPPcE3opt, i64 128), align 8, !tbaa !97
  %i.aok = invoke noundef zeroext i1 @_Z31output_env_get_print_xvgr_codesPK16gmx_output_env_t(ptr noundef %i.aoj)
          to label %bb.gw unwind label %bb.gx

bb.gw:                                            ; preds = %._crit_edge68.i
  %i.aol = select i1 %i.aok, ptr @.str.356, ptr @.str.4
  %i.aom = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0173.i, ptr noundef nonnull @.str.355, ptr noundef nonnull %i.aol) #25 ; 0 uses
  br label %.lr.ph72.preheader.i

bb.gx:                                            ; preds = %._crit_edge68.i
  %i.aon = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ajc, i64 noundef %i.aij) #32
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit240.i

.lr.ph72.preheader.i:                             ; preds = %bb.gw, %._crit_edge65.i
  %i.aoo = load double, ptr %i.ajb, align 8, !tbaa !90
  %i.aop = fmul double %i.aoo, 5.000000e-01
  br label %.lr.ph72.i

.lr.ph72.i:                                       ; preds = %bb.gy, %.lr.ph72.preheader.i
  %indvars.iv152.i = phi i64 [ 1, %.lr.ph72.preheader.i ], [ %indvars.iv.next153.i, %bb.gy ] ; 2 uses
  %.017470.i = phi double [ %i.aop, %.lr.ph72.preheader.i ], [ %i.aot, %bb.gy ] ; 2 uses
  %i.aoq = getelementptr inbounds nuw [8 x i8], ptr %i.ajb, i64 %indvars.iv152.i
  %i.aor = load double, ptr %i.aoq, align 8, !tbaa !90 ; 2 uses
  %i.aos = fcmp ogt double %i.aor, 5.000000e-02
  br i1 %i.aos, label %bb.gy, label %.critedge2.i

bb.gy:                                            ; preds = %.lr.ph72.i
  %i.aot = fadd double %.017470.i, %i.aor         ; 2 uses
  %indvars.iv.next153.i = add nuw nsw i64 %indvars.iv152.i, 1 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_:bb.a

_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit: ; preds = %bb.s, %_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i8, %.preheader.i, %bb.l, %_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %i.c, 8
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us
  %.013.us = phi i64 [ %i.am, %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.us
  %i.q = load double, ptr %i.p, align 8, !tbaa !90 ; 2 uses
  %i.r = icmp slt i64 %.013.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.029.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.013.us, %.split.us ] ; 2 uses
  %i.s = shl i64 %.029.i.us, 1                    ; 3 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %0, i64 %i.t
  %i.v = getelementptr [8 x i8], ptr %0, i64 %i.s
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %i.x = load double, ptr %i.u, align 8, !tbaa !90
  %i.y = load double, ptr %i.w, align 8, !tbaa !90
  %i.z = fcmp olt double %i.x, %i.y
  %i.aa = or disjoint i64 %i.s, 1
  %spec.select.i.us = select i1 %i.z, i64 %i.aa, i64 %i.t ; 6 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.us
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !90
  %i.ad = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i.us
  store double %i.ac, ptr %i.ad, align 8, !tbaa !90
  %i.ae = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ae, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !1

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.af = icmp sgt i64 %spec.select.i.us, %.013.us
  br i1 %i.af, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.01317.i.i.us = phi i64 [ %.018.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.018.in.i.i.us = add nsw i64 %.01317.i.i.us, -1
  %.018.i.i.us = sdiv i64 %.018.in.i.i.us, 2      ; 4 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i.us
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !90 ; 2 uses
  %i.ai = fcmp olt double %i.ah, %i.q
  br i1 %i.ai, label %bb.c, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01317.i.i.us
  store double %i.ah, ptr %i.aj, align 8, !tbaa !90
  %i.ak = icmp sgt i64 %.018.i.i.us, %.013.us
  br i1 %i.ak, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us, !llvm.loop !2

_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.013.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.013.us, %.split.us ], [ %.01317.i.i.us, %.lr.ph.i.i.us ], [ %.018.i.i.us, %bb.c ]
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i.us
  store double %i.q, ptr %i.al, align 8, !tbaa !90
  %.not.us = icmp eq i64 %.013.us, 0
  %i.am = add nsw i64 %.013.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !544

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit
  %.013 = phi i64 [ %i.bm, %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013
  %i.ao = load double, ptr %i.an, align 8, !tbaa !90 ; 2 uses
  %i.ap = icmp slt i64 %.013, %i.i
  br i1 %i.ap, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.029.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.013, %.split ] ; 2 uses
  %i.aq = shl i64 %.029.i, 1                      ; 3 uses
  %i.ar = add i64 %i.aq, 2                        ; 2 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ar
  %i.at = getelementptr [8 x i8], ptr %0, i64 %i.aq
  %i.au = getelementptr i8, ptr %i.at, i64 8
  %i.av = load double, ptr %i.as, align 8, !tbaa !90
  %i.aw = load double, ptr %i.au, align 8, !tbaa !90
  %i.ax = fcmp olt double %i.av, %i.aw
  %i.ay = or disjoint i64 %i.aq, 1
  %spec.select.i = select i1 %i.ax, i64 %i.ay, i64 %i.ar ; 4 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i
  %i.ba = load double, ptr %i.az, align 8, !tbaa !90
  %i.bb = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i
  store double %i.ba, ptr %i.bb, align 8, !tbaa !90
  %i.bc = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.bc, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.013, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.bd = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.bd, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.be = load double, ptr %i.n, align 8, !tbaa !90
  store double %i.be, ptr %i.o, align 8, !tbaa !90
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.128.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bf = icmp sgt i64 %.128.i, %.013
  br i1 %i.bf, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.01317.i.i = phi i64 [ %.018.i.i, %bb.f ], [ %.128.i, %bb.e ] ; 3 uses
  %.018.in.i.i = add nsw i64 %.01317.i.i, -1
  %.018.i.i = sdiv i64 %.018.in.i.i, 2            ; 4 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !90 ; 2 uses
  %i.bi = fcmp olt double %i.bh, %i.ao
  br i1 %i.bi, label %bb.f, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01317.i.i
  store double %i.bh, ptr %i.bj, align 8, !tbaa !90
  %i.bk = icmp sgt i64 %.018.i.i, %.013
  br i1 %i.bk, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit, !llvm.loop !2

_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.013.lcssa.i.i = phi i64 [ %.128.i, %bb.e ], [ %.018.i.i, %bb.f ], [ %.01317.i.i, %.lr.ph.i.i ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i
  store double %i.ao, ptr %i.bl, align 8, !tbaa !90
  %.not = icmp eq i64 %.013, 0
  %i.bm = add nsw i64 %.013, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !544

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us, %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @erf(double noundef) local_unnamed_addr #22

declare void @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #28

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr>, <8 x i1>, <8 x i32>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #9

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { cold noreturn }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #15 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #16 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #17 = { cold nofree noreturn }
attributes #18 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #21 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #23 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #24 = { nounwind memory(none) }
attributes #25 = { nounwind }
attributes #26 = { convergent nounwind }
attributes #27 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #31 = { noreturn }
attributes #32 = { builtin nounwind }
attributes #33 = { nounwind willreturn memory(read) }
attributes #34 = { noreturn nounwind }
attributes #35 = { cold nounwind }
attributes #36 = { builtin allocsize(0) }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !62}
!1 = distinct !{!1, !62}
!2 = distinct !{!2, !62}
!3 = !{i32 7, !"openmp", i32 51}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!9, !9, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!"bool", !8, i64 0}
!16 = !{!8, !8, i64 0}
!17 = !{!"long", !8, i64 0}
!18 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0}
!19 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !18, i64 0, !18, i64 8, !18, i64 16}
!20 = !{!"float", !8, i64 0}
!21 = !{!"p1 _ZTS16gmx_output_env_t", !13, i64 0}
!22 = !{!"p1 double", !13, i64 0}
!23 = !{!"double", !8, i64 0}
!24 = !{!"_ZTSSt5arrayImLm2EE", !8, i64 0}
!25 = !{!"_ZTSN3gmx19ThreeFry2x64GeneralILj13ELj64EEE", !24, i64 0, !24, i64 16, !24, i64 32, !9, i64 48}
!26 = !{!"_ZTSN3gmx16ThreeFry2x64FastILj64EEE", !25, i64 0}
!27 = !{!"_ZTSN3gmx27TabulatedNormalDistributionIfLj14EE10param_typeE", !20, i64 0, !20, i64 4}
!28 = !{!"_ZTSN3gmx27TabulatedNormalDistributionIfLj14EEE", !27, i64 0, !17, i64 8, !9, i64 16}
!29 = !{!"_ZTS15UmbrellaOptions", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !15, i64 32, !15, i64 33, !20, i64 36, !20, i64 40, !20, i64 44, !15, i64 48, !9, i64 52, !9, i64 56, !13, i64 64, !9, i64 72, !20, i64 76, !20, i64 80, !20, i64 84, !20, i64 88, !20, i64 92, !15, i64 96, !15, i64 97, !9, i64 100, !15, i64 104, !20, i64 108, !15, i64 112, !15, i64 113, !15, i64 114, !15, i64 115, !15, i64 116, !9, i64 120, !21, i64 128, !15, i64 136, !15, i64 137, !20, i64 140, !15, i64 144, !20, i64 148, !15, i64 152, !9, i64 156, !9, i64 160, !20, i64 164, !9, i64 168, !9, i64 172, !15, i64 176, !15, i64 177, !22, i64 184, !22, i64 192, !23, i64 200, !23, i64 208, !23, i64 216, !9, i64 224, !26, i64 232, !28, i64 288}
!30 = !{!29, !9, i64 72}
!31 = !{!29, !15, i64 96}
!32 = !{!20, !20, i64 0}
!33 = !{!29, !20, i64 44}
!34 = !{!29, !9, i64 156}
!35 = !{!29, !9, i64 160}
!36 = !{!29, !20, i64 164}
!37 = !{!29, !9, i64 172}
!38 = !{!29, !9, i64 168}
!39 = !{!29, !15, i64 176}
!40 = !{!29, !15, i64 97}
!41 = !{!29, !9, i64 100}
!42 = !{!29, !20, i64 108}
!43 = !{!15, !15, i64 0}
!44 = !{!29, !15, i64 104}
!45 = !{!29, !15, i64 137}
!46 = !{!29, !9, i64 120}
!47 = !{!29, !9, i64 52}
!48 = !{!29, !15, i64 112}
!49 = !{!29, !15, i64 177}
!50 = !{!29, !15, i64 33}
!51 = !{!29, !15, i64 32}
!52 = !{i8 0, i8 2}
!53 = !{}
!54 = !{!"any p2 pointer", !13, i64 0}
!55 = !{!"p2 omnipotent char", !54, i64 0}
!56 = !{!55, !55, i64 0}
!57 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !13, i64 0}
!58 = !{!57, !57, i64 0}
!59 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !14, i64 0}
!60 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !59, i64 0, !17, i64 8, !8, i64 16}
!61 = !{!60, !14, i64 0}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{!13, !13, i64 0}
!64 = !{!"p1 bool", !13, i64 0}
!65 = !{!"_ZTS16t_coordselection", !9, i64 0, !9, i64 4, !64, i64 8}
!66 = !{!65, !9, i64 0}
!67 = !{!64, !64, i64 0}
!68 = !{!65, !64, i64 8}
!69 = !{!14, !14, i64 0}
!70 = !{!"llvm.loop.unroll.disable"}
!71 = !{!29, !20, i64 80}
!72 = !{!29, !20, i64 76}
!73 = !{!29, !20, i64 84}
!74 = !{!"p2 double", !54, i64 0}
!75 = !{!"p1 int", !13, i64 0}
!76 = !{!"p2 bool", !54, i64 0}
!77 = !{!"p2 float", !54, i64 0}
!78 = !{!"p1 float", !13, i64 0}
!79 = !{!"_ZTS16t_UmbrellaWindow", !9, i64 0, !74, i64 8, !74, i64 16, !9, i64 24, !22, i64 32, !22, i64 40, !22, i64 48, !75, i64 56, !75, i64 64, !22, i64 72, !22, i64 80, !22, i64 88, !23, i64 96, !76, i64 104, !77, i64 112, !78, i64 120, !78, i64 128, !78, i64 136, !22, i64 144}
!80 = !{!79, !75, i64 64}
!81 = !{!"p1 _ZTS8_IO_FILE", !13, i64 0}
!82 = !{!81, !81, i64 0}
!83 = !{!"_ZTS16t_UmbrellaHeader", !9, i64 0, !13, i64 8, !15, i64 16, !15, i64 17, !15, i64 18}
!84 = !{!83, !13, i64 8}
!85 = !{!79, !9, i64 0}
!86 = !{!79, !75, i64 56}
!87 = !{!79, !9, i64 24}
!88 = !{!79, !74, i64 8}
!89 = !{!22, !22, i64 0}
!90 = !{!23, !23, i64 0}
!91 = !{!"llvm.loop.isvectorized", i32 1}
!92 = !{!"llvm.loop.unroll.runtime.disable"}
!93 = !{!"branch_weights", i32 4, i32 12}
!94 = !{!59, !14, i64 0}
!95 = !{!17, !17, i64 0}
!96 = !{!60, !17, i64 8}
!97 = !{!29, !21, i64 128}
!98 = !{!29, !9, i64 224}
!99 = !{!74, !74, i64 0}
!100 = !{!29, !23, i64 200}
!101 = !{!29, !23, i64 216}
!102 = !{!29, !22, i64 192}
!103 = !{!79, !22, i64 72}
!104 = !{!79, !23, i64 96}
!105 = !{!29, !15, i64 116}
!106 = !{!79, !77, i64 112}
!107 = !{!78, !78, i64 0}
!108 = !{!79, !22, i64 40}
!109 = !{!79, !78, i64 136}
!110 = !{!79, !78, i64 128}
!111 = !{!79, !22, i64 32}
!112 = !{!"branch_weights", i32 4, i32 28}
!113 = !{!29, !20, i64 88}
!114 = !{!"p1 _ZTS15UmbrellaOptions", !13, i64 0}
!115 = !{!114, !114, i64 0}
!116 = !{!29, !20, i64 92}
!117 = !{!"llvm.loop.peeled.count", i32 2}
!118 = !{!79, !74, i64 16}
!119 = !{!79, !76, i64 104}
!120 = !{!79, !22, i64 48}
!121 = !{!79, !22, i64 144}
!122 = !{!19, !18, i64 0}
!123 = !{!19, !18, i64 8}
!124 = !{!19, !18, i64 16}
!125 = !{!25, !9, i64 48}
!126 = !{!28, !17, i64 8}
!127 = !{!28, !9, i64 16}
!128 = !{!"branch_weights", i32 8, i32 24}
!129 = !{!76, !76, i64 0}
!130 = !{!75, !75, i64 0}
!131 = !{!"vtable pointer", !7, i64 0}
!132 = !{!131, !131, i64 0}
!133 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0}
!134 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !133, i64 0}
!135 = !{!134, !133, i64 0}
!136 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !9, i64 8, !9, i64 12}
!137 = !{!136, !9, i64 8}
!138 = !{!136, !9, i64 12}
!139 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!140 = !{!"p1 _ZTSN3gmx11BasicVectorIfEE", !13, i64 0}
!141 = !{!83, !9, i64 0}
!142 = !{!83, !15, i64 16}
!143 = !{!83, !15, i64 17}
end_hunk_1
