Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_analyze?download=true
inline.NumInlined: 346
inline.NumDeleted: 133
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_Z11gmx_analyzeiPPc:bb.a
  br i1 %i.bfh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i299
  %i.bfi = load i64, ptr %i.bes, align 8, !tbaa !23
  %i.bfj = add i64 %i.bfi, 1
  call void @_ZdlPvm(ptr noundef %i.bfg, i64 noundef %i.bfj) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i299, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.bfk = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.bfl = load ptr, ptr %i.bfk, align 8, !tbaa !19 ; 2 uses
  %.not.i.i.i.i300 = icmp eq ptr %i.bfl, null
  br i1 %.not.i.i.i.i300, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i301, label %bb.dr

bb.dr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344.i
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.bfk, ptr noundef nonnull %i.bfl) #23
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i301

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i301: ; preds = %bb.dr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344.i
  %i.bfm = load ptr, ptr %3, align 8, !tbaa !22   ; 2 uses
  %i.bfn = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bfo = icmp eq ptr %i.bfm, %i.bfn
  br i1 %i.bfo, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i303, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i302

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i302: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i301
  %i.bfp = load i64, ptr %i.bfn, align 8, !tbaa !23
  %i.bfq = add i64 %i.bfp, 1
  call void @_ZdlPvm(ptr noundef %i.bfm, i64 noundef %i.bfq) #24
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i303

_ZNSt10filesystem7__cxx114pathD2Ev.exit.i303:     ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i301, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i302
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.bfr = invoke noundef zeroext i1 @_Z31output_env_get_print_xvgr_codesPK16gmx_output_env_t(ptr noundef %i.bep)
          to label %bb.ds unwind label %.loopexit.split-lp419.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ds:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i303
  br i1 %i.bfr, label %bb.dt, label %bb.dy

bb.dt:                                            ; preds = %bb.ds
  %i.bfs = add nsw i32 %i.beg, -1
  %i.bft = uitofp nneg i32 %i.bfs to float
  %i.bfu = fmul float %i.bei, %i.bft
  %i.bfv = fpext float %i.bfu to double
  %i.bfw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bfb, ptr noundef nonnull @.str.210, double noundef %i.bfv, i32 noundef %i.beg) #23 ; 0 uses
  br label %bb.dy

bb.du:                                            ; preds = %bb.dp
  %i.bfx = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

bb.dv:                                            ; preds = %.noexc.i.i295
  %i.bfy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350.i

bb.dw:                                            ; preds = %.noexc.i297
  %i.bfz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bga = load ptr, ptr %5, align 8, !tbaa !22   ; 2 uses
  %i.bgb = icmp eq ptr %i.bga, %i.bey
  br i1 %i.bgb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345.i: ; preds = %bb.dw
  %i.bgc = load i64, ptr %i.bey, align 8, !tbaa !23
  %i.bgd = add i64 %i.bgc, 1
  call void @_ZdlPvm(ptr noundef %i.bga, i64 noundef %i.bgd) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347.i: ; preds = %bb.dw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.bge = load ptr, ptr %4, align 8, !tbaa !22   ; 2 uses
  %i.bgf = icmp eq ptr %i.bge, %i.bes
  br i1 %i.bgf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347.i
  %i.bgg = load i64, ptr %i.bes, align 8, !tbaa !23
  %i.bgh = add i64 %i.bgg, 1
  call void @_ZdlPvm(ptr noundef %i.bge, i64 noundef %i.bgh) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348.i, %bb.dv
  %.pn.pn.i296 = phi { ptr, i32 } [ %i.bfy, %bb.dv ], [ %i.bfz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348.i ], [ %i.bfz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #23
  br label %bb.dx

bb.dx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350.i, %bb.du
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.i296, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350.i ], [ %i.bfx, %bb.du ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %.loopexit.split-lp419.loopexit.split-lp.i

.loopexit.split-lp419.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph447.i, %bb.gv, %bb.gd, %bb.fx, %bb.fs, %bb.fr, %bb.fk, %_ZL22optimal_error_estimatedPKdf.exit.i, %bb.fa, %bb.ez, %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit380.i, %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit378.i, %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit376.i, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit356._crit_edge.i, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit354.i, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.i, %exp2.i.noexc, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit.i, %bb.dz, %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i303
  %lpad.loopexit.split-lp1203 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp419.loopexit.split-lp.i

bb.dy:                                            ; preds = %bb.dt, %bb.ds
  %i.bgi = shl nsw i32 %i.beh, 1
  %i.bgj = sext i32 %i.bgi to i64                 ; 4 uses
  %i.bgk = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.bgl = load ptr, ptr %i.bgk, align 8, !tbaa !36 ; 5 uses
  %i.bgm = load ptr, ptr %2, align 8, !tbaa !37   ; 2 uses
  %i.bgn = ptrtoint ptr %i.bgl to i64
  %i.bgo = ptrtoint ptr %i.bgm to i64
  %i.bgp = sub i64 %i.bgn, %i.bgo
  %i.bgq = ashr exact i64 %i.bgp, 5               ; 3 uses
  %i.bgr = icmp ult i64 %i.bgq, %i.bgj
  br i1 %i.bgr, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.bgs = sub nuw nsw i64 %i.bgj, %i.bgq
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.bgs)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit_crit_edge.i unwind label %.loopexit.split-lp419.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit_crit_edge.i: ; preds = %bb.dz
  %.pre.i = load ptr, ptr %i.bgk, align 8, !tbaa !36
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit.i

bb.ea:                                            ; preds = %bb.dy
  %i.bgt = icmp ugt i64 %i.bgq, %i.bgj
  br i1 %i.bgt, label %bb.eb, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit.i

bb.eb:                                            ; preds = %bb.ea
  %i.bgu = getelementptr inbounds nuw [32 x i8], ptr %i.bgm, i64 %i.bgj ; 4 uses
  %.not.i.i.i321 = icmp eq ptr %i.bgl, %i.bgu
  br i1 %.not.i.i.i321, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.eb, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.bha, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.bgu, %bb.eb ] ; 3 uses
  %i.bgv = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !22 ; 2 uses
  %i.bgw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.bgx = icmp eq ptr %i.bgv, %i.bgw
  br i1 %i.bgx, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.bgy = load i64, ptr %i.bgw, align 8, !tbaa !23
  %i.bgz = add i64 %i.bgy, 1
  call void @_ZdlPvm(ptr noundef %i.bgv, i64 noundef %i.bgz) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.bha = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bha, %i.bgl
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  store ptr %i.bgu, ptr %i.bgk, align 8, !tbaa !36
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, %bb.eb, %bb.ea, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit_crit_edge.i
  %i.bhb = phi ptr [ %.pre.i, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit_crit_edge.i ], [ %i.bgu, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i ], [ %i.bgl, %bb.eb ], [ %i.bgl, %bb.ea ]
  %i.bhc = load ptr, ptr %2, align 8, !tbaa !37   ; 3 uses
  %i.bhd = ptrtoint ptr %i.bhb to i64
  %i.bhe = ptrtoint ptr %i.bhc to i64
  %i.bhf = sub i64 %i.bhd, %i.bhe
  %i.bhg = getelementptr inbounds nuw i8, ptr %i.bhc, i64 %i.bhf
  invoke void @_Z10xvgrLegendP8_IO_FILEN3gmx8ArrayRefIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPK16gmx_output_env_t(ptr noundef %i.bfb, ptr %i.bhc, ptr %i.bhg, ptr noundef %i.bep)
          to label %bb.ec unwind label %.loopexit.split-lp419.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ec:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit.i
  %i.bhh = sitofp i32 %i.bef to double
  %i.bhi = fdiv double 1.000000e+00, %i.bhh
  %exp2.i324 = invoke double @exp2(double %i.bhi)
          to label %exp2.i.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

exp2.i.noexc:                                     ; preds = %bb.ec
  %i.bhj = fptrunc double %exp2.i324 to float
  %i.bhk = zext nneg i32 %i.beg to i64            ; 8 uses
  %i.bhl = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.211, ptr noundef nonnull @.str.150, i32 noundef 461, i64 noundef range(i64 -2147483648, 2147483648) %i.bhk, i64 noundef 4)
          to label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.i unwind label %.loopexit.split-lp419.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 27 uses

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.i:        ; preds = %exp2.i.noexc
  %i.bhm = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.212, ptr noundef nonnull @.str.150, i32 noundef 462, i64 noundef range(i64 -2147483648, 2147483648) %i.bhk, i64 noundef 4)
          to label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit354.i unwind label %.loopexit.split-lp419.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 16 uses

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit354.i:     ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.i
  %i.bhn = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.213, ptr noundef nonnull @.str.150, i32 noundef 463, i64 noundef range(i64 -2147483648, 2147483648) %i.bhk, i64 noundef 4)
          to label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit356.preheader.i unwind label %.loopexit.split-lp419.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 27 uses

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit356.preheader.i: ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit354.i
  %i.bho = ptrtoaddr ptr %i.bhn to i64            ; 2 uses
  %i.bhp = icmp sgt i32 %i.beh, 0
  br i1 %i.bhp, label %.lr.ph469.i, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit356._crit_edge.i

.lr.ph469.i:                                      ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit356.preheader.i
  %i.bhq = sitofp i32 %i.bee to float             ; 2 uses
  %i.bhr = uitofp nneg i32 %i.beg to float        ; 3 uses
  %i.bhs = fcmp ugt float %i.bhq, %i.bhr
  %i.bht = fmul float %i.bei, %i.bhr              ; 6 uses
  %i.bhu = fpext float %i.bht to double           ; 15 uses
  %i.bhv = getelementptr inbounds nuw i8, ptr %i.bhm, i64 4
  %i.bhw = add nsw i32 %i.beg, -1
  %i.bhx = uitofp nneg i32 %i.bhw to float        ; 2 uses
  %i.bhy = fmul float %i.bei, %i.bhx              ; 2 uses
  %i.bhz = getelementptr inbounds nuw i8, ptr %i.bhl, i64 4
  %i.bia = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 13 uses
  %i.bib = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 11 uses
  %not..i = xor i1 %i.bem, true                   ; 2 uses
  %i.bic = fpext float %i.bhy to double           ; 4 uses
  %i.bid = fcmp ole float %i.bht, 0.000000e+00    ; 6 uses
  %i.bie = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.bif = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  %i.big = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.bih = add nsw i32 %i.beh, -1
  %i.bii = zext nneg i32 %i.bih to i64
  %wide.trip.count537.i = zext nneg i32 %i.beh to i64
  %i.bij = add nsw i64 %i.bhk, -1                 ; 2 uses
  %min.iters.check1037 = icmp ult i32 %i.beg, 9
  %n.vec1039 = and i64 %i.bij, -8                 ; 3 uses
  %i.bik = or disjoint i64 %n.vec1039, 1
  %cmp.n1047 = icmp eq i64 %i.bij, %n.vec1039
  br label %bb.ed

bb.ed:                                            ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit356.i, %.lr.ph469.i
  %indvars.iv534.i = phi i64 [ 0, %.lr.ph469.i ], [ %indvars.iv.next535.i, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit356.i ] ; 15 uses
  br i1 %i.bhs, label %._crit_edge.thread.i, label %.lr.ph.i304

.lr.ph.i304:                                      ; preds = %bb.ed
  %i.bil = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv534.i
  %i.bim = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %indvars.iv534.i
  %i.bin = getelementptr inbounds nuw [8 x i8], ptr %i.le, i64 %indvars.iv534.i ; 6 uses
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ej, %.lr.ph.i304
  %.0303437.i = phi float [ %i.bhq, %.lr.ph.i304 ], [ %i.blo, %bb.ej ] ; 2 uses
  %.0304436.i = phi i32 [ 0, %.lr.ph.i304 ], [ %.1305.i, %bb.ej ] ; 3 uses
  %.0306435.i = phi i32 [ 0, %.lr.ph.i304 ], [ %i.bip, %bb.ej ]
  %i.bio = fptosi float %.0303437.i to i32
  %i.bip = sdiv i32 %i.beg, %i.bio                ; 8 uses
  %.not332.i = icmp eq i32 %i.bip, %.0306435.i
  br i1 %.not332.i, label %bb.ej, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.biq = sdiv i32 %i.beg, %i.bip                ; 6 uses
  %i.bir = icmp sgt i32 %i.biq, 0
  br i1 %i.bir, label %.preheader.lr.ph.i310, label %._crit_edge433.i

.preheader.lr.ph.i310:                            ; preds = %bb.ef
  %i.bis = icmp sgt i32 %i.bip, 0
  %i.bit = load double, ptr %i.bim, align 8, !tbaa !34 ; 2 uses
  %i.biu = sitofp i32 %i.bip to double            ; 2 uses
  br i1 %i.bis, label %.preheader.lr.ph.split.us.i314, label %.preheader.lr.ph.split.i311

.preheader.lr.ph.split.us.i314:                   ; preds = %.preheader.lr.ph.i310
  %i.biv = load ptr, ptr %i.bil, align 8, !tbaa !25
  %i.biw = zext nneg i32 %i.bip to i64            ; 3 uses
  %wide.trip.count488.i = zext nneg i32 %i.biq to i64
  %xtraiter1369 = and i64 %i.biw, 7               ; 3 uses
  %i.bix = icmp ult i32 %i.bip, 8
  %unroll_iter1374 = and i64 %i.biw, 2147483640
  %lcmp.mod1371.not = icmp eq i64 %xtraiter1369, 0
  %lcmp.mod1373 = icmp ne i64 %xtraiter1369, 0
  br label %.preheader.us.i315

.preheader.us.i315:                               ; preds = %._crit_edge.us.i320, %.preheader.lr.ph.split.us.i314
  %indvars.iv485.i = phi i64 [ %indvars.iv.next486.i, %._crit_edge.us.i320 ], [ 0, %.preheader.lr.ph.split.us.i314 ] ; 2 uses
  %.0295432.us.i = phi double [ %i.bkk, %._crit_edge.us.i320 ], [ 0.000000e+00, %.preheader.lr.ph.split.us.i314 ]
  %i.biy = mul nuw nsw i64 %indvars.iv485.i, %i.biw
  %invariant.gep.i316 = getelementptr inbounds nuw [4 x i8], ptr %i.biv, i64 %i.biy ; 9 uses
  br i1 %i.bix, label %.epil.preheader1368, label %.preheader.us.i315.new

.preheader.us.i315.new:                           ; preds = %.preheader.us.i315, %.preheader.us.i315.new
  %indvars.iv.i317 = phi i64 [ %indvars.iv.next.i319.7, %.preheader.us.i315.new ], [ 0, %.preheader.us.i315 ] ; 9 uses
  %.0296430.us.i = phi double [ %i.bkd, %.preheader.us.i315.new ], [ 0.000000e+00, %.preheader.us.i315 ]
  %niter1375 = phi i64 [ %niter1375.next.7, %.preheader.us.i315.new ], [ 0, %.preheader.us.i315 ]
  %gep.i318 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i316, i64 %indvars.iv.i317
  %i.biz = load float, ptr %gep.i318, align 4, !tbaa !17
  %i.bja = fpext float %i.biz to double
  %i.bjb = fadd double %.0296430.us.i, %i.bja
  %i.bjc = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i316, i64 %indvars.iv.i317
  %gep.i318.1 = getelementptr inbounds nuw i8, ptr %i.bjc, i64 4
  %i.bjd = load float, ptr %gep.i318.1, align 4, !tbaa !17
  %i.bje = fpext float %i.bjd to double
  %i.bjf = fadd double %i.bjb, %i.bje
  %i.bjg = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i316, i64 %indvars.iv.i317
  %gep.i318.2 = getelementptr inbounds nuw i8, ptr %i.bjg, i64 8
  %i.bjh = load float, ptr %gep.i318.2, align 4, !tbaa !17
  %i.bji = fpext float %i.bjh to double
  %i.bjj = fadd double %i.bjf, %i.bji
  %i.bjk = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i316, i64 %indvars.iv.i317
  %gep.i318.3 = getelementptr inbounds nuw i8, ptr %i.bjk, i64 12
  %i.bjl = load float, ptr %gep.i318.3, align 4, !tbaa !17
  %i.bjm = fpext float %i.bjl to double
  %i.bjn = fadd double %i.bjj, %i.bjm
  %i.bjo = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i316, i64 %indvars.iv.i317
  %gep.i318.4 = getelementptr inbounds nuw i8, ptr %i.bjo, i64 16
  %i.bjp = load float, ptr %gep.i318.4, align 4, !tbaa !17
  %i.bjq = fpext float %i.bjp to double
  %i.bjr = fadd double %i.bjn, %i.bjq
  %i.bjs = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i316, i64 %indvars.iv.i317
  %gep.i318.5 = getelementptr inbounds nuw i8, ptr %i.bjs, i64 20
  %i.bjt = load float, ptr %gep.i318.5, align 4, !tbaa !17
  %i.bju = fpext float %i.bjt to double
  %i.bjv = fadd double %i.bjr, %i.bju
  %i.bjw = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i316, i64 %indvars.iv.i317
  %gep.i318.6 = getelementptr inbounds nuw i8, ptr %i.bjw, i64 24
  %i.bjx = load float, ptr %gep.i318.6, align 4, !tbaa !17
  %i.bjy = fpext float %i.bjx to double
  %i.bjz = fadd double %i.bjv, %i.bjy
  %i.bka = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i316, i64 %indvars.iv.i317
  %gep.i318.7 = getelementptr inbounds nuw i8, ptr %i.bka, i64 28
  %i.bkb = load float, ptr %gep.i318.7, align 4, !tbaa !17
  %i.bkc = fpext float %i.bkb to double
  %i.bkd = fadd double %i.bjz, %i.bkc             ; 3 uses
  %indvars.iv.next.i319.7 = add nuw nsw i64 %indvars.iv.i317, 8 ; 2 uses
  %niter1375.next.7 = add i64 %niter1375, 8       ; 2 uses
  %niter1375.ncmp.7 = icmp eq i64 %niter1375.next.7, %unroll_iter1374
  br i1 %niter1375.ncmp.7, label %._crit_edge.us.i320.unr-lcssa, label %.preheader.us.i315.new, !llvm.loop !92

._crit_edge.us.i320.unr-lcssa:                    ; preds = %.preheader.us.i315.new
  br i1 %lcmp.mod1371.not, label %._crit_edge.us.i320, label %.epil.preheader1368

.epil.preheader1368:                              ; preds = %._crit_edge.us.i320.unr-lcssa, %.preheader.us.i315
  %indvars.iv.i317.epil.init = phi i64 [ 0, %.preheader.us.i315 ], [ %indvars.iv.next.i319.7, %._crit_edge.us.i320.unr-lcssa ]
  %.0296430.us.i.epil.init = phi double [ 0.000000e+00, %.preheader.us.i315 ], [ %i.bkd, %._crit_edge.us.i320.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1373)
  br label %bb.eg

bb.eg:                                            ; preds = %bb.eg, %.epil.preheader1368
  %indvars.iv.i317.epil = phi i64 [ %indvars.iv.i317.epil.init, %.epil.preheader1368 ], [ %indvars.iv.next.i319.epil, %bb.eg ] ; 2 uses
  %.0296430.us.i.epil = phi double [ %.0296430.us.i.epil.init, %.epil.preheader1368 ], [ %i.bkg, %bb.eg ]
  %epil.iter1370 = phi i64 [ 0, %.epil.preheader1368 ], [ %epil.iter1370.next, %bb.eg ]
  %gep.i318.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i316, i64 %indvars.iv.i317.epil
  %i.bke = load float, ptr %gep.i318.epil, align 4, !tbaa !17
  %i.bkf = fpext float %i.bke to double
  %i.bkg = fadd double %.0296430.us.i.epil, %i.bkf ; 2 uses
  %indvars.iv.next.i319.epil = add nuw nsw i64 %indvars.iv.i317.epil, 1
  %epil.iter1370.next = add i64 %epil.iter1370, 1 ; 2 uses
  %epil.iter1370.cmp.not = icmp eq i64 %epil.iter1370.next, %xtraiter1369
  br i1 %epil.iter1370.cmp.not, label %._crit_edge.us.i320, label %bb.eg, !llvm.loop !93

._crit_edge.us.i320:                              ; preds = %bb.eg, %._crit_edge.us.i320.unr-lcssa
  %.lcssa1206 = phi double [ %i.bkd, %._crit_edge.us.i320.unr-lcssa ], [ %i.bkg, %bb.eg ]
  %i.bkh = fdiv double %.lcssa1206, %i.biu
  %i.bki = fsub double %i.bit, %i.bkh             ; 2 uses
  %i.bkj = fmul double %i.bki, %i.bki
  %i.bkk = fadd double %.0295432.us.i, %i.bkj     ; 2 uses
  %indvars.iv.next486.i = add nuw nsw i64 %indvars.iv485.i, 1 ; 2 uses
  %exitcond489.not.i = icmp eq i64 %indvars.iv.next486.i, %wide.trip.count488.i
  br i1 %exitcond489.not.i, label %._crit_edge433.i, label %.preheader.us.i315, !llvm.loop !94

.preheader.lr.ph.split.i311:                      ; preds = %.preheader.lr.ph.i310
  %i.bkl = fdiv double 0.000000e+00, %i.biu
  %i.bkm = fsub double %i.bit, %i.bkl             ; 2 uses
  %i.bkn = fmul double %i.bkm, %i.bkm             ; 9 uses
  %xtraiter1361 = and i32 %i.biq, 7               ; 3 uses
  %i.bko = icmp ult i32 %i.biq, 8
  br i1 %i.bko, label %.preheader.i312.epil.preheader, label %.preheader.lr.ph.split.i311.new

.preheader.lr.ph.split.i311.new:                  ; preds = %.preheader.lr.ph.split.i311
  %unroll_iter1366 = and i32 %i.biq, 2147483640
  br label %.preheader.i312

.preheader.i312:                                  ; preds = %.preheader.i312, %.preheader.lr.ph.split.i311.new
  %.0295432.i = phi double [ 0.000000e+00, %.preheader.lr.ph.split.i311.new ], [ %i.bkw, %.preheader.i312 ]
  %niter1367 = phi i32 [ 0, %.preheader.lr.ph.split.i311.new ], [ %niter1367.next.7, %.preheader.i312 ]
  %i.bkp = fadd double %i.bkn, %.0295432.i
  %i.bkq = fadd double %i.bkn, %i.bkp
  %i.bkr = fadd double %i.bkn, %i.bkq
  %i.bks = fadd double %i.bkn, %i.bkr
  %i.bkt = fadd double %i.bkn, %i.bks
  %i.bku = fadd double %i.bkn, %i.bkt
  %i.bkv = fadd double %i.bkn, %i.bku
  %i.bkw = fadd double %i.bkn, %i.bkv             ; 3 uses
  %niter1367.next.7 = add nuw nsw i32 %niter1367, 8 ; 2 uses
  %niter1367.ncmp.7 = icmp eq i32 %niter1367.next.7, %unroll_iter1366
  br i1 %niter1367.ncmp.7, label %._crit_edge433.i.loopexit1195.unr-lcssa, label %.preheader.i312, !llvm.loop !94

._crit_edge433.i.loopexit1195.unr-lcssa:          ; preds = %.preheader.i312
  %lcmp.mod1363.not = icmp eq i32 %xtraiter1361, 0
  br i1 %lcmp.mod1363.not, label %._crit_edge433.i, label %.preheader.i312.epil.preheader

.preheader.i312.epil.preheader:                   ; preds = %._crit_edge433.i.loopexit1195.unr-lcssa, %.preheader.lr.ph.split.i311
  %.0295432.i.epil.init = phi double [ 0.000000e+00, %.preheader.lr.ph.split.i311 ], [ %i.bkw, %._crit_edge433.i.loopexit1195.unr-lcssa ]
  %lcmp.mod1365 = icmp ne i32 %xtraiter1361, 0
  call void @llvm.assume(i1 %lcmp.mod1365)
  br label %.preheader.i312.epil

.preheader.i312.epil:                             ; preds = %.preheader.i312.epil, %.preheader.i312.epil.preheader
  %.0295432.i.epil = phi double [ %.0295432.i.epil.init, %.preheader.i312.epil.preheader ], [ %i.bkx, %.preheader.i312.epil ]
  %epil.iter1362 = phi i32 [ 0, %.preheader.i312.epil.preheader ], [ %epil.iter1362.next, %.preheader.i312.epil ]
  %i.bkx = fadd double %i.bkn, %.0295432.i.epil   ; 2 uses
  %epil.iter1362.next = add i32 %epil.iter1362, 1 ; 2 uses
  %epil.iter1362.cmp.not = icmp eq i32 %epil.iter1362.next, %xtraiter1361
  br i1 %epil.iter1362.cmp.not, label %._crit_edge433.i, label %.preheader.i312.epil, !llvm.loop !95

._crit_edge433.i:                                 ; preds = %._crit_edge433.i.loopexit1195.unr-lcssa, %.preheader.i312.epil, %._crit_edge.us.i320, %bb.ef
  %.0295.lcssa.i = phi double [ 0.000000e+00, %bb.ef ], [ %i.bkk, %._crit_edge.us.i320 ], [ %i.bkw, %._crit_edge433.i.loopexit1195.unr-lcssa ], [ %i.bkx, %.preheader.i312.epil ]
  %i.bky = sitofp i32 %i.bip to float
  %i.bkz = fmul float %i.bei, %i.bky
  %i.bla = sext i32 %.0304436.i to i64            ; 2 uses
  %i.blb = getelementptr inbounds [4 x i8], ptr %i.bhl, i64 %i.bla
  store float %i.bkz, ptr %i.blb, align 4, !tbaa !17
  %i.blc = load double, ptr %i.bin, align 8, !tbaa !34 ; 3 uses
  %i.bld = fcmp oeq double %i.blc, 0.000000e+00
  br i1 %i.bld, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %._crit_edge433.i
  %i.ble = sitofp i32 %i.biq to double            ; 2 uses
end_hunk_0
begin_hunk_1_@_Z11gmx_analyzeiPPc:bb.a
bb.eo:                                            ; preds = %bb.en, %bb.em
  %i.bof = icmp sgt i32 %.0304.lcssa606610.i, 0
  br i1 %i.bof, label %bb.ep, label %._crit_edge444.i

bb.ep:                                            ; preds = %bb.eo
  %i.bog = zext nneg i32 %i.bml to i64            ; 5 uses
  %i.boh = getelementptr inbounds nuw [4 x i8], ptr %i.bhl, i64 %i.bog ; 4 uses
  %i.boi = zext nneg i32 %.0304.lcssa606610.i to i64 ; 3 uses
  %i.boj = getelementptr [4 x i8], ptr %i.bhl, i64 %i.boi
  %i.bok = getelementptr i8, ptr %i.boj, i64 -8   ; 4 uses
  %i.bol = load float, ptr %i.bhz, align 4, !tbaa !17
  %i.bom = load float, ptr %i.bhl, align 4, !tbaa !17 ; 2 uses
  %i.bon = fdiv float %i.bol, %i.bom
  %i.boo = fadd float %i.bon, -1.000000e+00
  %i.bop = fadd float %.0293.i, %i.bom
  %i.boq = fdiv float %i.bop, %i.boo
  %i.bor = call noundef float @sqrtf(float noundef %i.boq) #23
  store float %i.bor, ptr %i.bhn, align 4, !tbaa !17
  switch i32 %.0304.lcssa606610.i, label %.peel.next.i.preheader.split [
    i32 1, label %._crit_edge444.i
    i32 2, label %._crit_edge444.i.loopexit.peel.begin
  ]

.peel.next.i.preheader.split:                     ; preds = %bb.ep
  %xtraiter1382 = and i64 %i.boi, 1
  %i.bos = icmp eq i32 %.0304.lcssa606610.i, 3
  br i1 %i.bos, label %.peel.next.i.epil.preheader, label %.peel.next.i.preheader.split.new

.peel.next.i.preheader.split.new:                 ; preds = %.peel.next.i.preheader.split
  %i.bot = and i64 %i.boi, 2147483646
  %i.bou = add nsw i64 %i.bot, -4
  br label %.peel.next.i

.peel.next.i:                                     ; preds = %bb.eu, %.peel.next.i.preheader.split.new
  %indvars.iv500.i = phi i64 [ 1, %.peel.next.i.preheader.split.new ], [ %indvars.iv.next501.i.1, %bb.eu ] ; 6 uses
  %niter1388 = phi i64 [ 0, %.peel.next.i.preheader.split.new ], [ %niter1388.next.1, %bb.eu ] ; 2 uses
  %i.bov = icmp eq i64 %indvars.iv500.i, %i.bog
  br i1 %i.bov, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %.peel.next.i
  %i.bow = load float, ptr %i.boh, align 4, !tbaa !17
  %i.box = load float, ptr %i.bok, align 4, !tbaa !17
  %i.boy = fdiv float %i.bow, %i.box
  %i.boz = fadd float %i.boy, -1.000000e+00
  br label %.peel.next.i.1

bb.er:                                            ; preds = %.peel.next.i
  %i.bpa = getelementptr inbounds nuw [4 x i8], ptr %i.bhl, i64 %indvars.iv500.i ; 2 uses
  %i.bpb = getelementptr inbounds nuw i8, ptr %i.bpa, i64 4
  %i.bpc = load float, ptr %i.bpb, align 4, !tbaa !17
  %i.bpd = getelementptr i8, ptr %i.bpa, i64 -4
  %i.bpe = load float, ptr %i.bpd, align 4, !tbaa !17
  %i.bpf = fdiv float %i.bpc, %i.bpe
  %i.bpg = fadd float %i.bpf, -1.000000e+00
  %i.bph = fmul float %i.bpg, 5.000000e-01
  br label %.peel.next.i.1

.peel.next.i.1:                                   ; preds = %bb.er, %bb.eq
  %.0294.i = phi float [ %i.bph, %bb.er ], [ %i.boz, %bb.eq ]
  %i.bpi = getelementptr inbounds nuw [4 x i8], ptr %i.bhl, i64 %indvars.iv500.i
  %i.bpj = load float, ptr %i.bpi, align 4, !tbaa !17
  %i.bpk = fadd float %.0293.i, %i.bpj
  %i.bpl = fdiv float %i.bpk, %.0294.i
  %i.bpm = call noundef float @sqrtf(float noundef %i.bpl) #23
  %i.bpn = getelementptr inbounds nuw [4 x i8], ptr %i.bhn, i64 %indvars.iv500.i
  store float %i.bpm, ptr %i.bpn, align 4, !tbaa !17
  %indvars.iv.next501.i = add nuw nsw i64 %indvars.iv500.i, 1 ; 4 uses
  %i.bpo = icmp eq i64 %indvars.iv.next501.i, %i.bog
  br i1 %i.bpo, label %bb.et, label %bb.es

bb.es:                                            ; preds = %.peel.next.i.1
  %i.bpp = getelementptr inbounds nuw [4 x i8], ptr %i.bhl, i64 %indvars.iv.next501.i ; 2 uses
  %i.bpq = getelementptr inbounds nuw i8, ptr %i.bpp, i64 4
  %i.bpr = load float, ptr %i.bpq, align 4, !tbaa !17
  %i.bps = getelementptr i8, ptr %i.bpp, i64 -4
  %i.bpt = load float, ptr %i.bps, align 4, !tbaa !17
  %i.bpu = fdiv float %i.bpr, %i.bpt
  %i.bpv = fadd float %i.bpu, -1.000000e+00
  %i.bpw = fmul float %i.bpv, 5.000000e-01
  br label %bb.eu

bb.et:                                            ; preds = %.peel.next.i.1
  %i.bpx = load float, ptr %i.boh, align 4, !tbaa !17
  %i.bpy = load float, ptr %i.bok, align 4, !tbaa !17
  %i.bpz = fdiv float %i.bpx, %i.bpy
  %i.bqa = fadd float %i.bpz, -1.000000e+00
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es
  %.0294.i.1 = phi float [ %i.bpw, %bb.es ], [ %i.bqa, %bb.et ]
  %i.bqb = getelementptr inbounds nuw [4 x i8], ptr %i.bhl, i64 %indvars.iv.next501.i
  %i.bqc = load float, ptr %i.bqb, align 4, !tbaa !17
  %i.bqd = fadd float %.0293.i, %i.bqc
  %i.bqe = fdiv float %i.bqd, %.0294.i.1
  %i.bqf = call noundef float @sqrtf(float noundef %i.bqe) #23
  %i.bqg = getelementptr inbounds nuw [4 x i8], ptr %i.bhn, i64 %indvars.iv.next501.i
  store float %i.bqf, ptr %i.bqg, align 4, !tbaa !17
  %indvars.iv.next501.i.1 = add nuw nsw i64 %indvars.iv500.i, 2 ; 3 uses
  %niter1388.next.1 = add i64 %niter1388, 2
  %niter1388.ncmp.1 = icmp eq i64 %niter1388, %i.bou
  br i1 %niter1388.ncmp.1, label %._crit_edge444.i.loopexit.peel.begin.loopexit.unr-lcssa, label %.peel.next.i, !llvm.loop !99

._crit_edge444.i.loopexit.peel.begin.loopexit.unr-lcssa: ; preds = %bb.eu
  %lcmp.mod1384.not = icmp eq i64 %xtraiter1382, 0
  br i1 %lcmp.mod1384.not, label %._crit_edge444.i.loopexit.peel.begin, label %.peel.next.i.epil.preheader

.peel.next.i.epil.preheader:                      ; preds = %._crit_edge444.i.loopexit.peel.begin.loopexit.unr-lcssa, %.peel.next.i.preheader.split
  %indvars.iv500.i.epil.init = phi i64 [ 1, %.peel.next.i.preheader.split ], [ %indvars.iv.next501.i.1, %._crit_edge444.i.loopexit.peel.begin.loopexit.unr-lcssa ] ; 5 uses
  %lcmp.mod1386 = trunc i32 %.0304.lcssa606610.i to i1
  call void @llvm.assume(i1 %lcmp.mod1386)
  %i.bqh = icmp eq i64 %indvars.iv500.i.epil.init, %i.bog
  br i1 %i.bqh, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %.peel.next.i.epil.preheader
  %i.bqi = getelementptr inbounds nuw [4 x i8], ptr %i.bhl, i64 %indvars.iv500.i.epil.init ; 2 uses
  %i.bqj = getelementptr inbounds nuw i8, ptr %i.bqi, i64 4
  %i.bqk = load float, ptr %i.bqj, align 4, !tbaa !17
  %i.bql = getelementptr i8, ptr %i.bqi, i64 -4
  %i.bqm = load float, ptr %i.bql, align 4, !tbaa !17
  %i.bqn = fdiv float %i.bqk, %i.bqm
  %i.bqo = fadd float %i.bqn, -1.000000e+00
  %i.bqp = fmul float %i.bqo, 5.000000e-01
  br label %._crit_edge444.i.loopexit.peel.begin.loopexit.epilog-lcssa

bb.ew:                                            ; preds = %.peel.next.i.epil.preheader
  %i.bqq = load float, ptr %i.boh, align 4, !tbaa !17
  %i.bqr = load float, ptr %i.bok, align 4, !tbaa !17
  %i.bqs = fdiv float %i.bqq, %i.bqr
  %i.bqt = fadd float %i.bqs, -1.000000e+00
  br label %._crit_edge444.i.loopexit.peel.begin.loopexit.epilog-lcssa

._crit_edge444.i.loopexit.peel.begin.loopexit.epilog-lcssa: ; preds = %bb.ew, %bb.ev
  %.0294.i.epil = phi float [ %i.bqp, %bb.ev ], [ %i.bqt, %bb.ew ]
  %i.bqu = getelementptr inbounds nuw [4 x i8], ptr %i.bhl, i64 %indvars.iv500.i.epil.init
  %i.bqv = load float, ptr %i.bqu, align 4, !tbaa !17
  %i.bqw = fadd float %.0293.i, %i.bqv
  %i.bqx = fdiv float %i.bqw, %.0294.i.epil
  %i.bqy = call noundef float @sqrtf(float noundef %i.bqx) #23
  %i.bqz = getelementptr inbounds nuw [4 x i8], ptr %i.bhn, i64 %indvars.iv500.i.epil.init
  store float %i.bqy, ptr %i.bqz, align 4, !tbaa !17
  %indvars.iv.next501.i.epil = add nuw nsw i64 %indvars.iv500.i.epil.init, 1
  br label %._crit_edge444.i.loopexit.peel.begin

._crit_edge444.i.loopexit.peel.begin:             ; preds = %._crit_edge444.i.loopexit.peel.begin.loopexit.epilog-lcssa, %._crit_edge444.i.loopexit.peel.begin.loopexit.unr-lcssa, %bb.ep
  %i.bra = phi i64 [ 1, %bb.ep ], [ %indvars.iv.next501.i.1, %._crit_edge444.i.loopexit.peel.begin.loopexit.unr-lcssa ], [ %indvars.iv.next501.i.epil, %._crit_edge444.i.loopexit.peel.begin.loopexit.epilog-lcssa ] ; 4 uses
  %i.brb = icmp eq i64 %i.bra, %i.bog
  br i1 %i.brb, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %._crit_edge444.i.loopexit.peel.begin
  %i.brc = getelementptr inbounds nuw [4 x i8], ptr %i.bhl, i64 %i.bra ; 2 uses
  %i.brd = getelementptr inbounds nuw i8, ptr %i.brc, i64 4
  %i.bre = load float, ptr %i.brd, align 4, !tbaa !17
  %i.brf = getelementptr i8, ptr %i.brc, i64 -4
  %i.brg = load float, ptr %i.brf, align 4, !tbaa !17
  %i.brh = fdiv float %i.bre, %i.brg
  %i.bri = fadd float %i.brh, -1.000000e+00
  %i.brj = fmul float %i.bri, 5.000000e-01
  br label %._crit_edge444.i.loopexit.peel.next

bb.ey:                                            ; preds = %._crit_edge444.i.loopexit.peel.begin
  %i.brk = load float, ptr %i.boh, align 4, !tbaa !17
  %i.brl = load float, ptr %i.bok, align 4, !tbaa !17
  %i.brm = fdiv float %i.brk, %i.brl
  %i.brn = fadd float %i.brm, -1.000000e+00
  br label %._crit_edge444.i.loopexit.peel.next

._crit_edge444.i.loopexit.peel.next:              ; preds = %bb.ey, %bb.ex
  %.0294.i.peel = phi float [ %i.brj, %bb.ex ], [ %i.brn, %bb.ey ]
  %i.bro = getelementptr inbounds nuw [4 x i8], ptr %i.bhl, i64 %i.bra
  %i.brp = load float, ptr %i.bro, align 4, !tbaa !17
  %i.brq = fadd float %.0293.i, %i.brp
  %i.brr = fdiv float %i.brq, %.0294.i.peel
  %i.brs = call noundef float @sqrtf(float noundef %i.brr) #23
  %i.brt = getelementptr inbounds nuw [4 x i8], ptr %i.bhn, i64 %i.bra
  store float %i.brs, ptr %i.brt, align 4, !tbaa !17
  br label %._crit_edge444.i

._crit_edge444.i:                                 ; preds = %bb.ep, %._crit_edge444.i.loopexit.peel.next, %bb.eo
  br i1 %i.bem, label %bb.fb, label %bb.ez

bb.ez:                                            ; preds = %._crit_edge444.i
  %i.bru = fpext float %.lcssa953 to double
  store double %i.bru, ptr %i.m, align 16, !tbaa !34
  store double f0x3FEE666666666666, ptr %i.bia, align 8, !tbaa !34
  %i.brv = fmul float %.lcssa953, %i.bhx
  %i.brw = fmul float %i.bei, %i.brv
  %i.brx = call noundef float @sqrtf(float noundef %i.brw) #23
  %i.bry = fpext float %i.brx to double
  store double %i.bry, ptr %i.bib, align 16, !tbaa !34
  %i.brz = invoke noundef zeroext i1 @_Z10bDebugModev()
          to label %bb.fa unwind label %.loopexit.split-lp419.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fa:                                            ; preds = %bb.ez
  %i.bsa = invoke noundef float @_Z8do_lmfitiPKfPffS0_ffPK16gmx_output_env_tbiPdiPKc(i32 noundef %.0304.lcssa606610.i, ptr noundef nonnull %i.bhm, ptr noundef %i.bhn, float noundef 0.000000e+00, ptr noundef nonnull %i.bhl, float noundef 0.000000e+00, float noundef %i.bht, ptr noundef %i.bep, i1 noundef zeroext %i.brz, i32 noundef 9, ptr noundef nonnull %i.m, i32 noundef 0, ptr noundef null)
          to label %bb.fb unwind label %.loopexit.split-lp419.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.fb:                                            ; preds = %bb.fa, %._crit_edge444.i
  %i.bsb = load double, ptr %i.m, align 16        ; 2 uses
  %i.bsc = fcmp uge double %i.bsb, 0.000000e+00
  %or.cond.i307 = select i1 %not..i, i1 %i.bsc, i1 false
  %i.bsd = load double, ptr %i.bib, align 16      ; 2 uses
  %i.bse = fcmp uge double %i.bsd, 0.000000e+00
  %or.cond7.i = select i1 %or.cond.i307, i1 %i.bse, i1 false
  %i.bsf = load double, ptr %i.bia, align 8       ; 4 uses
  %i.bsg = fcmp uge double %i.bsf, 0.000000e+00
  %i.bsh = fcmp ule double %i.bsf, 1.000000e+00
  %or.cond12.i = or i1 %i.bsh, %i.beo
  %i.bsi = and i1 %i.bsg, %or.cond12.i
  %or.cond336.i = select i1 %or.cond7.i, i1 %i.bsi, i1 false
  %25 = fcmp ule double %i.bsd, %i.bic            ; 2 uses
  %or.cond470.not.i = select i1 %or.cond336.i, i1 %25, i1 false
  br i1 %or.cond470.not.i, label %bb.ft, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  br i1 %i.bem, label %bb.fl, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.bsj = load ptr, ptr @stdout, align 8, !tbaa !156 ; 2 uses
  br i1 %25, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.bsk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bsj, ptr noundef nonnull @.str.216, double noundef %i.bic) #23 ; 0 uses
  br label %bb.fg

bb.ff:                                            ; preds = %bb.fd
  %fwrite.i309 = call i64 @fwrite(ptr nonnull @.str.217, i64 31, i64 1, ptr %i.bsj) ; 0 uses
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %i.bsl = load ptr, ptr @stdout, align 8, !tbaa !156
  %i.bsm = load double, ptr %i.bmk, align 8, !tbaa !34 ; 2 uses
  %i.bsn = fcmp oeq double %i.bsm, 0.000000e+00
  %.pre541.i.a = load double, ptr %i.bia, align 8, !tbaa !34 ; 4 uses
  br i1 %i.bsn, label %_ZL22optimal_error_estimatedPKdf.exit.i, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.bso = load double, ptr %i.m, align 16, !tbaa !34
  %i.bsp = fsub double 1.000000e+00, %.pre541.i.a
  %i.bsq = load double, ptr %i.bib, align 16, !tbaa !34
  %i.bsr = fmul double %i.bsp, %i.bsq
  %i.bss = call double @llvm.fmuladd.f64(double %.pre541.i.a, double %i.bso, double %i.bsr) ; 3 uses
  %i.bst = fcmp ole double %i.bss, 0.000000e+00
  %or.cond.i.i = select i1 %i.bid, i1 true, i1 %i.bst
  br i1 %or.cond.i.i, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  %i.bsu = load ptr, ptr @stderr, align 8, !tbaa !156
  %i.bsv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bsu, ptr noundef nonnull @.str.231, double noundef %i.bhu, double noundef %i.bss) #27 ; 0 uses
  %.pre540.i.a = load double, ptr %i.bia, align 8, !tbaa !34
  br label %_ZL22optimal_error_estimatedPKdf.exit.i

bb.fj:                                            ; preds = %bb.fh
  %i.bsw = fmul double %i.bss, 2.000000e+00
  %i.bsx = fdiv double %i.bsw, %i.bhu
  %i.bsy = call double @sqrt(double noundef %i.bsx) #23
  %i.bsz = fmul double %i.bsm, %i.bsy
  %i.bta = fptrunc double %i.bsz to float
  %i.btb = fpext float %i.bta to double
  br label %_ZL22optimal_error_estimatedPKdf.exit.i

_ZL22optimal_error_estimatedPKdf.exit.i:          ; preds = %bb.fj, %bb.fi, %bb.fg
  %i.btc = phi double [ %.pre541.i.a, %bb.fg ], [ %.pre540.i.a, %bb.fi ], [ %.pre541.i.a, %bb.fj ]
  %.1.i.i = phi double [ 0.000000e+00, %bb.fg ], [ 0.000000e+00, %bb.fi ], [ %i.btb, %bb.fj ]
  %i.btd = load double, ptr %i.m, align 16, !tbaa !34
  %i.bte = load double, ptr %i.bib, align 16, !tbaa !34
  %i.btf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bsl, ptr noundef nonnull @.str.218, double noundef %.1.i.i, double noundef %i.btc, double noundef %i.btd, double noundef %i.bte) #23 ; 0 uses
  %i.btg = fpext float %.lcssa953 to double
  store double %i.btg, ptr %i.m, align 16, !tbaa !34
  store double f0x3FEE666666666666, ptr %i.bia, align 8, !tbaa !34
  store double %i.bic, ptr %i.bib, align 16, !tbaa !34
  %i.bth = load ptr, ptr @stdout, align 8, !tbaa !156
  %i.bti = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bth, ptr noundef nonnull @.str.219, double noundef %i.bic) #23 ; 0 uses
  %i.btj = invoke noundef zeroext i1 @_Z10bDebugModev()
          to label %bb.fk unwind label %.loopexit.split-lp419.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fk:                                            ; preds = %_ZL22optimal_error_estimatedPKdf.exit.i
  %i.btk = invoke noundef float @_Z8do_lmfitiPKfPffS0_ffPK16gmx_output_env_tbiPdiPKc(i32 noundef %.0304.lcssa606610.i, ptr noundef nonnull %i.bhm, ptr noundef %i.bhn, float noundef 0.000000e+00, ptr noundef nonnull %i.bhl, float noundef 0.000000e+00, float noundef %i.bht, ptr noundef %i.bep, i1 noundef zeroext %i.btj, i32 noundef 9, ptr noundef nonnull %i.m, i32 noundef 4, ptr noundef null)
          to label %._crit_edge542.i unwind label %.loopexit.split-lp419.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

._crit_edge542.i:                                 ; preds = %bb.fk
  %.pre543.i.a = load double, ptr %i.m, align 16
  %.pre544.i.a = load double, ptr %i.bia, align 8
  br label %bb.fl

bb.fl:                                            ; preds = %._crit_edge542.i, %bb.fc
  %i.btl = phi double [ %.pre544.i.a, %._crit_edge542.i ], [ %i.bsf, %bb.fc ] ; 3 uses
  %i.btm = phi double [ %.pre543.i.a, %._crit_edge542.i ], [ %i.bsb, %bb.fc ]
  %i.btn = fcmp uge double %i.btm, 0.000000e+00
  %or.cond15.i = select i1 %not..i, i1 %i.btn, i1 false
  %i.bto = fcmp uge double %i.btl, 0.000000e+00
  %i.btp = fcmp ule double %i.btl, 1.000000e+00
  %or.cond20.i = or i1 %i.btp, %i.beo
  %i.btq = and i1 %i.bto, %or.cond20.i
  %or.cond337.i = select i1 %or.cond15.i, i1 %i.btq, i1 false
  br i1 %or.cond337.i, label %bb.ft, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  br i1 %i.bem, label %bb.fr, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.btr = load ptr, ptr @stdout, align 8, !tbaa !156
  %fwrite326.i = call i64 @fwrite(ptr nonnull @.str.217, i64 31, i64 1, ptr %i.btr) ; 0 uses
  %i.bts = load ptr, ptr @stdout, align 8, !tbaa !156
  %i.btt = load double, ptr %i.bmk, align 8, !tbaa !34 ; 2 uses
  %i.btu = fcmp oeq double %i.btt, 0.000000e+00
  %.pre546.i.a = load double, ptr %i.bia, align 8, !tbaa !34 ; 4 uses
  br i1 %i.btu, label %_ZL22optimal_error_estimatedPKdf.exit359.i, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.btv = load double, ptr %i.m, align 16, !tbaa !34
  %i.btw = fsub double 1.000000e+00, %.pre546.i.a
  %i.btx = load double, ptr %i.bib, align 16, !tbaa !34
  %i.bty = fmul double %i.btw, %i.btx
  %i.btz = call double @llvm.fmuladd.f64(double %.pre546.i.a, double %i.btv, double %i.bty) ; 3 uses
  %i.bua = fcmp ole double %i.btz, 0.000000e+00
  %or.cond.i357.i = select i1 %i.bid, i1 true, i1 %i.bua
  br i1 %or.cond.i357.i, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  %i.bub = load ptr, ptr @stderr, align 8, !tbaa !156
  %i.buc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bub, ptr noundef nonnull @.str.231, double noundef %i.bhu, double noundef %i.btz) #27 ; 0 uses
  %.pre545.i.a = load double, ptr %i.bia, align 8, !tbaa !34
  br label %_ZL22optimal_error_estimatedPKdf.exit359.i

bb.fq:                                            ; preds = %bb.fo
  %i.bud = fmul double %i.btz, 2.000000e+00
  %i.bue = fdiv double %i.bud, %i.bhu
  %i.buf = call double @sqrt(double noundef %i.bue) #23
  %i.bug = fmul double %i.btt, %i.buf
  %i.buh = fptrunc double %i.bug to float
  %i.bui = fpext float %i.buh to double
  br label %_ZL22optimal_error_estimatedPKdf.exit359.i

_ZL22optimal_error_estimatedPKdf.exit359.i:       ; preds = %bb.fq, %bb.fp, %bb.fn
  %i.buj = phi double [ %.pre546.i.a, %bb.fn ], [ %.pre545.i.a, %bb.fp ], [ %.pre546.i.a, %bb.fq ]
  %.1.i358.i = phi double [ 0.000000e+00, %bb.fn ], [ 0.000000e+00, %bb.fp ], [ %i.bui, %bb.fq ]
  %i.buk = load double, ptr %i.m, align 16, !tbaa !34
  %i.bul = load double, ptr %i.bib, align 16, !tbaa !34
  %i.bum = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bts, ptr noundef nonnull @.str.218, double noundef %.1.i358.i, double noundef %i.buj, double noundef %i.buk, double noundef %i.bul) #23 ; 0 uses
  br label %bb.fr

bb.fr:                                            ; preds = %_ZL22optimal_error_estimatedPKdf.exit359.i, %bb.fm
  %i.bun = load ptr, ptr @stderr, align 8, !tbaa !156
  %i.buo = trunc i64 %indvars.iv534.i to i32
  %i.bup = add i32 %i.buo, 1
  %i.buq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bun, ptr noundef nonnull @.str.220, i32 noundef %i.bup) #27 ; 0 uses
  %i.bur = fpext float %.lcssa953 to double
  store double %i.bur, ptr %i.m, align 16, !tbaa !34
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %i.bia, align 8, !tbaa !34
  %i.bus = invoke noundef zeroext i1 @_Z10bDebugModev()
          to label %bb.fs unwind label %.loopexit.split-lp419.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fs:                                            ; preds = %bb.fr
  %i.but = invoke noundef float @_Z8do_lmfitiPKfPffS0_ffPK16gmx_output_env_tbiPdiPKc(i32 noundef %.0304.lcssa606610.i, ptr noundef nonnull %i.bhm, ptr noundef %i.bhn, float noundef 0.000000e+00, ptr noundef nonnull %i.bhl, float noundef 0.000000e+00, float noundef %i.bht, ptr noundef %i.bep, i1 noundef zeroext %i.bus, i32 noundef 9, ptr noundef nonnull %i.m, i32 noundef 6, ptr noundef null)
          to label %._crit_edge552.i unwind label %.loopexit.split-lp419.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

._crit_edge552.i:                                 ; preds = %bb.fs
  %.pre548.pre.i = load double, ptr %i.bia, align 8, !tbaa !34
  br label %bb.ft

bb.ft:                                            ; preds = %._crit_edge552.i, %bb.fl, %bb.fb
  %.pre548.i.a = phi double [ %.pre548.pre.i, %._crit_edge552.i ], [ %i.bsf, %bb.fb ], [ %i.btl, %bb.fl ] ; 4 uses
  %i.buu = load double, ptr %i.bmk, align 8, !tbaa !34 ; 2 uses
  %i.buv = fcmp oeq double %i.buu, 0.000000e+00
  br i1 %i.buv, label %_ZL22optimal_error_estimatedPKdf.exit362.i, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.buw = load double, ptr %i.m, align 16, !tbaa !34
  %i.bux = fsub double 1.000000e+00, %.pre548.i.a
  %i.buy = load double, ptr %i.bib, align 16, !tbaa !34
  %i.buz = fmul double %i.bux, %i.buy
  %i.bva = call double @llvm.fmuladd.f64(double %.pre548.i.a, double %i.buw, double %i.buz) ; 3 uses
  %i.bvb = fcmp ole double %i.bva, 0.000000e+00
  %or.cond.i360.i = select i1 %i.bid, i1 true, i1 %i.bvb
  br i1 %or.cond.i360.i, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  %i.bvc = load ptr, ptr @stderr, align 8, !tbaa !156
  %i.bvd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bvc, ptr noundef nonnull @.str.231, double noundef %i.bhu, double noundef %i.bva) #27 ; 0 uses
  %.pre547.i.a = load double, ptr %i.bia, align 8, !tbaa !34
  br label %_ZL22optimal_error_estimatedPKdf.exit362.i

bb.fw:                                            ; preds = %bb.fu
  %i.bve = fmul double %i.bva, 2.000000e+00
  %i.bvf = fdiv double %i.bve, %i.bhu
  %i.bvg = call double @sqrt(double noundef %i.bvf) #23
  %i.bvh = fmul double %i.buu, %i.bvg
  %i.bvi = fptrunc double %i.bvh to float
  %i.bvj = fpext float %i.bvi to double
  br label %_ZL22optimal_error_estimatedPKdf.exit362.i

_ZL22optimal_error_estimatedPKdf.exit362.i:       ; preds = %bb.fw, %bb.fv, %bb.ft
  %i.bvk = phi double [ %.pre548.i.a, %bb.ft ], [ %.pre547.i.a, %bb.fv ], [ %.pre548.i.a, %bb.fw ]
  %.1.i361.i = phi double [ 0.000000e+00, %bb.ft ], [ 0.000000e+00, %bb.fv ], [ %i.bvj, %bb.fw ]
  %i.bvl = fptrunc double %i.bvk to float
  %i.bvm = load double, ptr %i.m, align 16, !tbaa !34
  %i.bvn = fptrunc double %i.bvm to float
  %i.bvo = load double, ptr %i.bib, align 16, !tbaa !34
  %i.bvp = fptrunc double %i.bvo to float
  %i.bvq = fpext float %i.bvl to double
  %i.bvr = fpext float %i.bvn to double
  %i.bvs = fpext float %i.bvp to double
  br label %bb.fx

bb.fx:                                            ; preds = %_ZL22optimal_error_estimatedPKdf.exit362.i, %bb.ek
  %i.bvt = phi ptr [ %i.blz, %bb.ek ], [ %i.bmk, %_ZL22optimal_error_estimatedPKdf.exit362.i ] ; 5 uses
  %.0304.lcssa607.i = phi i32 [ %.0304.lcssa608.i, %bb.ek ], [ %.0304.lcssa606610.i, %_ZL22optimal_error_estimatedPKdf.exit362.i ] ; 3 uses
  %.0292.i = phi double [ 0.000000e+00, %bb.ek ], [ %.1.i361.i, %_ZL22optimal_error_estimatedPKdf.exit362.i ]
  %.0291.i = phi double [ 1.000000e+00, %bb.ek ], [ %i.bvq, %_ZL22optimal_error_estimatedPKdf.exit362.i ]
  %.0290.i = phi double [ 0.000000e+00, %bb.ek ], [ %i.bvr, %_ZL22optimal_error_estimatedPKdf.exit362.i ]
  %.0289.i = phi double [ 0.000000e+00, %bb.ek ], [ %i.bvs, %_ZL22optimal_error_estimatedPKdf.exit362.i ]
  %i.bvu = load ptr, ptr @stdout, align 8, !tbaa !156
  %indvars.iv.next535.i = add nuw nsw i64 %indvars.iv534.i, 1 ; 3 uses
  %i.bvv = trunc nuw nsw i64 %indvars.iv.next535.i to i32 ; 2 uses
  %i.bvw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bvu, ptr noundef nonnull @.str.221, i32 noundef %i.bvv, double noundef %.0292.i, double noundef %.0291.i, double noundef %.0290.i, double noundef %.0289.i) #23 ; 0 uses
  %i.bvx = invoke noundef i32 @_Z25output_env_get_xvg_formatPK16gmx_output_env_t(ptr noundef %i.bep)
          to label %bb.fy unwind label %.loopexit.split-lp419.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fy:                                            ; preds = %bb.fx
  %i.bvy = icmp eq i32 %i.bvx, 1
  br i1 %i.bvy, label %bb.fz, label %bb.gd

bb.fz:                                            ; preds = %bb.fy
  %i.bvz = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %indvars.iv534.i
  %i.bwa = load double, ptr %i.bvz, align 8, !tbaa !34
  %indvars.iv534.i.tr401 = trunc nuw i64 %indvars.iv534.i to i32
  %i.bwb = shl nuw i32 %indvars.iv534.i.tr401, 1  ; 2 uses
  %i.bwc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bfb, ptr noundef nonnull @.str.222, i32 noundef %i.bwb, double noundef %i.bwa) #23 ; 0 uses
  %i.bwd = load double, ptr %i.bvt, align 8, !tbaa !34 ; 2 uses
  %i.bwe = fcmp oeq double %i.bwd, 0.000000e+00
  br i1 %i.bwe, label %_ZL22optimal_error_estimatedPKdf.exit365.i, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.bwf = load double, ptr %i.bia, align 8, !tbaa !34 ; 2 uses
  %i.bwg = load double, ptr %i.m, align 16, !tbaa !34
  %i.bwh = fsub double 1.000000e+00, %i.bwf
  %i.bwi = load double, ptr %i.bib, align 16, !tbaa !34
  %i.bwj = fmul double %i.bwh, %i.bwi
  %i.bwk = call double @llvm.fmuladd.f64(double %i.bwf, double %i.bwg, double %i.bwj) ; 3 uses
  %i.bwl = fcmp ole double %i.bwk, 0.000000e+00
  %or.cond.i363.i = select i1 %i.bid, i1 true, i1 %i.bwl
  br i1 %or.cond.i363.i, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  %i.bwm = load ptr, ptr @stderr, align 8, !tbaa !156
  %i.bwn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bwm, ptr noundef nonnull @.str.231, double noundef %i.bhu, double noundef %i.bwk) #27 ; 0 uses
  br label %_ZL22optimal_error_estimatedPKdf.exit365.i

bb.gc:                                            ; preds = %bb.ga
  %i.bwo = fmul double %i.bwk, 2.000000e+00
  %i.bwp = fdiv double %i.bwo, %i.bhu
  %i.bwq = call double @sqrt(double noundef %i.bwp) #23
  %i.bwr = fmul double %i.bwd, %i.bwq
  %i.bws = fptrunc double %i.bwr to float
  %i.bwt = fpext float %i.bws to double
  br label %_ZL22optimal_error_estimatedPKdf.exit365.i

_ZL22optimal_error_estimatedPKdf.exit365.i:       ; preds = %bb.gc, %bb.gb, %bb.fz
  %.1.i364.i = phi double [ 0.000000e+00, %bb.fz ], [ 0.000000e+00, %bb.gb ], [ %i.bwt, %bb.gc ]
  %i.bwu = or disjoint i32 %i.bwb, 1
  %i.bwv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bfb, ptr noundef nonnull @.str.223, i32 noundef %i.bwu, double noundef %.1.i364.i) #23 ; 0 uses
  br label %bb.gj

bb.gd:                                            ; preds = %bb.fy
  %i.bww = invoke noundef i32 @_Z25output_env_get_xvg_formatPK16gmx_output_env_t(ptr noundef %i.bep)
          to label %bb.ge unwind label %.loopexit.split-lp419.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ge:                                            ; preds = %bb.gd
  %i.bwx = icmp eq i32 %i.bww, 0
  br i1 %i.bwx, label %bb.gf, label %bb.gj

bb.gf:                                            ; preds = %bb.ge
  %i.bwy = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %indvars.iv534.i
  %i.bwz = load double, ptr %i.bwy, align 8, !tbaa !34
  %indvars.iv534.i.tr = trunc nuw i64 %indvars.iv534.i to i32
  %i.bxa = shl nuw i32 %indvars.iv534.i.tr, 1     ; 2 uses
  %i.bxb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bfb, ptr noundef nonnull @.str.224, i32 noundef %i.bxa, double noundef %i.bwz) #23 ; 0 uses
  %i.bxc = load double, ptr %i.bvt, align 8, !tbaa !34 ; 2 uses
  %i.bxd = fcmp oeq double %i.bxc, 0.000000e+00
  br i1 %i.bxd, label %_ZL22optimal_error_estimatedPKdf.exit368.i, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.bxe = load double, ptr %i.bia, align 8, !tbaa !34 ; 2 uses
  %i.bxf = load double, ptr %i.m, align 16, !tbaa !34
  %i.bxg = fsub double 1.000000e+00, %i.bxe
  %i.bxh = load double, ptr %i.bib, align 16, !tbaa !34
  %i.bxi = fmul double %i.bxg, %i.bxh
  %i.bxj = call double @llvm.fmuladd.f64(double %i.bxe, double %i.bxf, double %i.bxi) ; 3 uses
  %i.bxk = fcmp ole double %i.bxj, 0.000000e+00
  %or.cond.i366.i = select i1 %i.bid, i1 true, i1 %i.bxk
  br i1 %or.cond.i366.i, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  %i.bxl = load ptr, ptr @stderr, align 8, !tbaa !156
  %i.bxm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bxl, ptr noundef nonnull @.str.231, double noundef %i.bhu, double noundef %i.bxj) #27 ; 0 uses
  br label %_ZL22optimal_error_estimatedPKdf.exit368.i

bb.gi:                                            ; preds = %bb.gg
  %i.bxn = fmul double %i.bxj, 2.000000e+00
  %i.bxo = fdiv double %i.bxn, %i.bhu
  %i.bxp = call double @sqrt(double noundef %i.bxo) #23
  %i.bxq = fmul double %i.bxc, %i.bxp
  %i.bxr = fptrunc double %i.bxq to float
  %i.bxs = fpext float %i.bxr to double
  br label %_ZL22optimal_error_estimatedPKdf.exit368.i

_ZL22optimal_error_estimatedPKdf.exit368.i:       ; preds = %bb.gi, %bb.gh, %bb.gf
  %.1.i367.i = phi double [ 0.000000e+00, %bb.gf ], [ 0.000000e+00, %bb.gh ], [ %i.bxs, %bb.gi ]
  %i.bxt = or disjoint i32 %i.bxa, 1
  %i.bxu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bfb, ptr noundef nonnull @.str.225, i32 noundef %i.bxt, double noundef %.1.i367.i) #23 ; 0 uses
  br label %bb.gj

bb.gj:                                            ; preds = %_ZL22optimal_error_estimatedPKdf.exit368.i, %bb.ge, %_ZL22optimal_error_estimatedPKdf.exit365.i
  %i.bxv = icmp sgt i32 %.0304.lcssa607.i, 0      ; 2 uses
  br i1 %i.bxv, label %.lr.ph447.preheader.i, label %._crit_edge448.i

.lr.ph447.preheader.i:                            ; preds = %bb.gj
  %wide.trip.count509.i = zext nneg i32 %.0304.lcssa607.i to i64
  br label %.lr.ph447.i

.lr.ph447.i:                                      ; preds = %bb.gk, %.lr.ph447.preheader.i
  %indvars.iv506.i = phi i64 [ 0, %.lr.ph447.preheader.i ], [ %indvars.iv.next507.i, %bb.gk ] ; 3 uses
  %i.bxw = getelementptr inbounds nuw [4 x i8], ptr %i.bhl, i64 %indvars.iv506.i
  %i.bxx = load float, ptr %i.bxw, align 4, !tbaa !17
  %i.bxy = load double, ptr %i.bvt, align 8, !tbaa !34 ; 2 uses
  %i.bxz = getelementptr inbounds nuw [4 x i8], ptr %i.bhm, i64 %indvars.iv506.i
  %i.bya = load float, ptr %i.bxz, align 4, !tbaa !17
  %i.byb = fdiv float %i.bya, %i.bht
  %i.byc = call noundef float @sqrtf(float noundef %i.byb) #23
  %i.byd = fpext float %i.bxx to double           ; 2 uses
  %i.bye = invoke noundef double @_Z12fit_functioniPKdd(i32 noundef 9, ptr noundef nonnull %i.m, double noundef %i.byd)
          to label %bb.gk unwind label %.loopexit.split-lp419.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gk:                                            ; preds = %.lr.ph447.i
  %i.byf = fpext float %i.byc to double
  %i.byg = fmul double %i.bxy, %i.byf
  %i.byh = fdiv double %i.bye, %i.bhu
  %i.byi = call double @sqrt(double noundef %i.byh) #23
  %i.byj = fmul double %i.bxy, %i.byi
  %i.byk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bfb, ptr noundef nonnull @.str.226, double noundef %i.byd, double noundef %i.byg, double noundef %i.byj) #23 ; 0 uses
  %indvars.iv.next507.i = add nuw nsw i64 %indvars.iv506.i, 1 ; 2 uses
  %exitcond510.not.i = icmp eq i64 %indvars.iv.next507.i, %wide.trip.count509.i
  br i1 %exitcond510.not.i, label %._crit_edge448.i, label %.lr.ph447.i, !llvm.loop !100

._crit_edge448.i:                                 ; preds = %bb.gk, %bb.gj
  br i1 %i.bek, label %bb.gl, label %bb.gu

bb.gl:                                            ; preds = %._crit_edge448.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #23
  %i.byl = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.150, i32 noundef 668, i64 noundef range(i64 -2147483648, 2147483648) %i.bhk, i64 noundef 4)
          to label %.peel.next517.i unwind label %.loopexit.split-lp.loopexit.split-lp.i308.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 9 uses

.peel.next517.i:                                  ; preds = %bb.gl
  store ptr %i.byl, ptr %i.n, align 8, !tbaa !25
  %i.bym = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv534.i
  %i.byn = load ptr, ptr %i.bym, align 8, !tbaa !25 ; 8 uses
  %i.byo = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %indvars.iv534.i
  %i.byp = load double, ptr %i.byo, align 8, !tbaa !34 ; 7 uses
  %i.byq = load float, ptr %i.byn, align 4, !tbaa !17
  %i.byr = fpext float %i.byq to double
  %i.bys = fsub double %i.byr, %i.byp
end_hunk_1
