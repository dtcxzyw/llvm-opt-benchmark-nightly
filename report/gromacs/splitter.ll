Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/splitter?download=true
inline.NumInlined: 650
inline.NumDeleted: 351
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_Z11gen_sblocksP8_IO_FILEiRK22InteractionDefinitionsb:bb.a
          to label %bb.al unwind label %bb.am

bb.al:                                            ; preds = %.noexc105.i
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %.noexc83.i unwind label %bb.an

bb.am:                                            ; preds = %.noexc105.i
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i98.i

bb.an:                                            ; preds = %bb.al
  %i.em = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.en = load ptr, ptr %i.aw, align 8, !tbaa !19 ; 2 uses
  %.not.i.i.i103.i = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i103.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i98.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull %i.en) #22
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i98.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i98.i: ; preds = %bb.ao, %bb.an, %bb.am
  %.pn.i99.i = phi { ptr, i32 } [ %i.el, %bb.am ], [ %i.em, %bb.an ], [ %i.em, %bb.ao ] ; 2 uses
  %i.eo = load ptr, ptr %6, align 8, !tbaa !24    ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.ax
  br i1 %i.ep, label %.body.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i98.i
  %i.eq = load i64, ptr %i.ax, align 8, !tbaa !25
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.er) #21
  br label %.body.thread.i

.noexc83.i:                                       ; preds = %bb.al
  invoke void @_Z20range_check_functioniiiPKcS0_RKNSt10filesystem7__cxx114pathEi(i32 noundef %i.ec, i32 noundef 0, i32 noundef %2, ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef 92)
          to label %bb.ap unwind label %bb.az

bb.ap:                                            ; preds = %.noexc83.i
  %i.es = load ptr, ptr %i.aw, align 8, !tbaa !19 ; 2 uses
  %.not.i.i.i.i82.i = icmp eq ptr %i.es, null
  br i1 %.not.i.i.i.i82.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull %i.es) #22
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i.i: ; preds = %bb.aq, %bb.ap
  %i.et = load ptr, ptr %6, align 8, !tbaa !24    ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.ax
  br i1 %i.eu, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i.i
  %i.ev = load i64, ptr %i.ax, align 8, !tbaa !25
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ew) #21
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i.i

_ZNSt10filesystem7__cxx114pathD2Ev.exit.i.i:      ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store ptr %i.ba, ptr %7, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 62, ptr %i.b, align 8, !tbaa !29
  %i.ex = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc94.i unwind label %.loopexit.i ; 3 uses

.noexc94.i:                                       ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i.i
  store ptr %i.ex, ptr %7, align 8, !tbaa !24
  %i.ey = load i64, ptr %i.b, align 8, !tbaa !29  ; 3 uses
  store i64 %i.ey, ptr %i.ba, align 8, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(62) %i.ex, ptr noundef nonnull align 1 dereferenceable(62) @.str.7, i64 62, i1 false)
  store i64 %i.ey, ptr %i.bb, align 8, !tbaa !30
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.ey
  store i8 0, ptr %i.ez, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.az)
          to label %bb.ar unwind label %bb.as

bb.ar:                                            ; preds = %.noexc94.i
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %7)
          to label %.noexc84.i unwind label %bb.at

bb.as:                                            ; preds = %.noexc94.i
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i89.i

bb.at:                                            ; preds = %bb.ar
  %i.fb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fc = load ptr, ptr %i.az, align 8, !tbaa !19 ; 2 uses
  %.not.i.i.i93.i = icmp eq ptr %i.fc, null
  br i1 %.not.i.i.i93.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i89.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull %i.fc) #22
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i89.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i89.i: ; preds = %bb.au, %bb.at, %bb.as
  %.pn.i90.i = phi { ptr, i32 } [ %i.fa, %bb.as ], [ %i.fb, %bb.at ], [ %i.fb, %bb.au ] ; 2 uses
  %i.fd = load ptr, ptr %7, align 8, !tbaa !24    ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.ba
  br i1 %i.fe, label %.body.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i91.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i91.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i89.i
  %i.ff = load i64, ptr %i.ba, align 8, !tbaa !25
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fg) #21
  br label %.body.thread.i

.noexc84.i:                                       ; preds = %bb.ar
  invoke void @_Z20range_check_functioniiiPKcS0_RKNSt10filesystem7__cxx114pathEi(i32 noundef %i.dy, i32 noundef 0, i32 noundef %2, ptr noundef null, ptr noundef nonnull @.str.16, ptr noundef nonnull align 8 dereferenceable(40) %7, i32 noundef 93)
          to label %bb.av unwind label %bb.ba

bb.av:                                            ; preds = %.noexc84.i
  %i.fh = load ptr, ptr %i.az, align 8, !tbaa !19 ; 2 uses
  %.not.i.i.i46.i.i = icmp eq ptr %i.fh, null
  br i1 %.not.i.i.i46.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i47.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull %i.fh) #22
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i47.i.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i47.i.i: ; preds = %bb.aw, %bb.av
  %i.fi = load ptr, ptr %7, align 8, !tbaa !24    ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.ba
  br i1 %i.fj, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit50.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i47.i.i
  %i.fk = load i64, ptr %i.ba, align 8, !tbaa !25
  %i.fl = add i64 %i.fk, 1
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fl) #21
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit50.i.i

_ZNSt10filesystem7__cxx114pathD2Ev.exit50.i.i:    ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i47.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.fm = sext i32 %i.ec to i64
  %i.fn = getelementptr inbounds [8 x i8], ptr %.sroa.0107.0.lcssa, i64 %i.fm ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 4 ; 3 uses
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !27
  %.not.i.i46 = icmp eq i32 %i.fp, -1
  br i1 %.not.i.i46, label %bb.bc, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit50.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA63_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 1 dereferenceable(63) @.str.7, i8 noundef zeroext 2)
          to label %.noexc85.i unwind label %.loopexit.split-lp.i

.noexc85.i:                                       ; preds = %bb.ax
  %i.fq = load i32, ptr %i.eb, align 4, !tbaa !27
  %i.fr = load i32, ptr %i.fo, align 4, !tbaa !27
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %8, i32 noundef 96, ptr noundef nonnull @.str.17, i32 noundef %i.dl, i32 noundef %i.fq, i32 noundef %i.ed, i32 noundef %i.fr, ptr noundef nonnull @.str.7, i32 noundef 103) #19
          to label %bb.ay unwind label %bb.bb

bb.ay:                                            ; preds = %.noexc85.i
  unreachable

bb.az:                                            ; preds = %.noexc83.i
  %i.fs = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %.body.thread.i

bb.ba:                                            ; preds = %.noexc84.i
  %i.ft = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %.body.thread.i

bb.bb:                                            ; preds = %.noexc85.i
  %i.fu = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %.body.thread.i

bb.bc:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit50.i.i
  %i.fv = load i32, ptr %i.eb, align 4, !tbaa !27
  store i32 %i.fv, ptr %i.fo, align 4, !tbaa !27
  store i32 %i.ec, ptr %i.fn, align 4, !tbaa !81
  %i.fw = add nsw i32 %.04217.i.i, 1
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.ak
  %.2.i = phi i32 [ %spec.select.i, %bb.bc ], [ %.1.i, %bb.ak ] ; 2 uses
  %.1.i.i = phi i32 [ %i.fw, %bb.bc ], [ %.04217.i.i, %bb.ak ] ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 4 ; 2 uses
  %.not5.i.i = icmp eq ptr %i.fx, %i.dv
  br i1 %.not5.i.i, label %_ZL7mk_greyN3gmx8ArrayRefI5egColEEPK7t_graphPiiNS0_I5t_sidEE.exit.i, label %bb.ak

_ZL7mk_greyN3gmx8ArrayRefI5egColEEPK7t_graphPiiNS0_I5t_sidEE.exit.i: ; preds = %bb.bd
  %i.fy = add nsw i32 %i.dr, %.1.i.i              ; 3 uses
  %i.fz = sub nsw i32 %.153289.i, %.1.i.i         ; 2 uses
  %i.ga = icmp sgt i32 %i.fy, 0
  br i1 %i.ga, label %.lr.ph.i, label %.loopexit136.i, !llvm.loop !41

._crit_edge.i:                                    ; preds = %.loopexit136.i, %bb.n
  %.046.lcssa.i = phi i32 [ 0, %bb.n ], [ %i.cg, %.loopexit136.i ] ; 14 uses
  %i.gb = load ptr, ptr @debug, align 8, !tbaa !60 ; 2 uses
  %.not61.i = icmp eq ptr %i.gb, null
  br i1 %.not61.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %._crit_edge.i
  %i.gc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.gb, ptr noundef nonnull @.str.12, i32 noundef %.046.lcssa.i) #22 ; 0 uses
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %._crit_edge.i
  %.not.i.i.i86.i = icmp eq ptr %.sroa.0116.0.i, null
  br i1 %.not.i.i.i86.i, label %_ZL10mk_sblocksP8_IO_FILEP7t_graphiN3gmx8ArrayRefI5t_sidEE.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gd = ptrtoint ptr %.sroa.0116.0.i to i64
  %i.ge = sub i64 %.sroa.17.0.i, %i.gd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0116.0.i, i64 noundef %i.ge) #21
  br label %_ZL10mk_sblocksP8_IO_FILEP7t_graphiN3gmx8ArrayRefI5t_sidEE.exit

.body.i:                                          ; preds = %bb.aj, %bb.u
  %.pn66.pn.i = phi { ptr, i32 } [ %.pn66.i, %bb.u ], [ %.pn64.i, %bb.aj ] ; 2 uses
  %.not.i.i.i87.i = icmp eq ptr %.sroa.0116.0.i, null
  br i1 %.not.i.i.i87.i, label %.body, label %.body.thread.i

.body.thread.i:                                   ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i89.i, %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i98.i, %.body.i, %bb.bb, %bb.ba, %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i91.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100.i, %bb.ac, %.loopexit.split-lp.i, %.loopexit.i
  %.pn66.pn134.i = phi { ptr, i32 } [ %.pn66.pn.i, %.body.i ], [ %i.fs, %bb.az ], [ %i.ft, %bb.ba ], [ %i.fu, %bb.bb ], [ %.pn.i90.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i91.i ], [ %.pn.i99.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100.i ], [ %.pn.i, %bb.ac ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %.pn.i99.i, %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i98.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %.pn.i90.i, %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i89.i ]
  %i.gf = ptrtoint ptr %.sroa.0116.0.i to i64
  %i.gg = sub i64 %.sroa.17.0.i, %i.gf
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0116.0.i, i64 noundef %i.gg) #21
  br label %.body

_ZL10mk_sblocksP8_IO_FILEP7t_graphiN3gmx8ArrayRefI5t_sidEE.exit: ; preds = %bb.bg, %bb.bf
  %.not37 = icmp eq i32 %.046.lcssa.i, 0
  br i1 %.not37, label %_ZL10mk_sblocksP8_IO_FILEP7t_graphiN3gmx8ArrayRefI5t_sidEE.exit.thread, label %bb.bj

_ZL10mk_sblocksP8_IO_FILEP7t_graphiN3gmx8ArrayRefI5t_sidEE.exit.thread: ; preds = %._crit_edge, %_ZL10mk_sblocksP8_IO_FILEP7t_graphiN3gmx8ArrayRefI5t_sidEE.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  %i.gh = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #20
          to label %_ZN3gmx11ListOfListsIiEC2Ev.exit unwind label %bb.bh ; 3 uses

bb.bh:                                            ; preds = %_ZL10mk_sblocksP8_IO_FILEP7t_graphiN3gmx8ArrayRefI5t_sidEE.exit.thread
  %i.gi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gj = load ptr, ptr %0, align 8, !tbaa !16    ; 3 uses
  %.not.i.i4.i.i = icmp eq ptr %i.gj, null
  br i1 %.not.i.i4.i.i, label %.body, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !31
  %i.gm = ptrtoint ptr %i.gl to i64
  %i.gn = ptrtoint ptr %i.gj to i64
  %i.go = sub i64 %i.gm, %i.gn
  call void @_ZdlPvm(ptr noundef nonnull %i.gj, i64 noundef %i.go) #21
  br label %.body

_ZN3gmx11ListOfListsIiEC2Ev.exit:                 ; preds = %_ZL10mk_sblocksP8_IO_FILEP7t_graphiN3gmx8ArrayRefI5t_sidEE.exit.thread
  store ptr %i.gh, ptr %0, align 8, !tbaa !16
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gh, i64 4 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.gp, ptr %i.gq, align 8, !tbaa !31
  store i32 0, ptr %i.gh, align 4, !tbaa !17
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gp, ptr %i.gr, align 8, !tbaa !15
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gs, i8 0, i64 24, i1 false)
  br label %bb.dk

bb.bj:                                            ; preds = %_ZL10mk_sblocksP8_IO_FILEP7t_graphiN3gmx8ArrayRefI5t_sidEE.exit
  %.idx = shl nuw nsw i64 %i.e, 3                 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.0107.0.lcssa, i64 %.idx ; 3 uses
  br i1 %.not146, label %_ZSt4sortIP5t_sidPFbRKS0_S3_EEvT_S6_T0_.exit.thread458, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gu = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.e, i1 true)
  %i.gv = shl nuw nsw i64 %i.gu, 1
  %i.gw = xor i64 %i.gv, 126
  invoke void @_ZSt16__introsort_loopIP5t_sidlN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_SA_T0_T1_(ptr noundef nonnull %.sroa.0107.0.lcssa, ptr noundef nonnull %i.gt, i64 noundef %i.gw, ptr nonnull @_ZL8sid_compRK5t_sidS1_)
          to label %.noexc53 unwind label %bb.k

.noexc53:                                         ; preds = %bb.bk
  %i.gx = icmp ugt i32 %2, 16
  br i1 %i.gx, label %bb.bl, label %bb.br

bb.bl:                                            ; preds = %.noexc53
  %scevgep.i85 = getelementptr i8, ptr %.sroa.0107.0.lcssa, i64 8
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.0107.0.lcssa, i64 4
  br label %bb.bm

bb.bm:                                            ; preds = %_ZSt13move_backwardIP5t_sidS1_ET0_T_S3_S2_.exit.i.i, %bb.bl
  %.020.i.idx.i = phi i64 [ 8, %bb.bl ], [ %.020.i.add.i, %_ZSt13move_backwardIP5t_sidS1_ET0_T_S3_S2_.exit.i.i ] ; 4 uses
  %.pn19.i.i = phi ptr [ %.sroa.0107.0.lcssa, %bb.bl ], [ %.020.i.ptr.i, %_ZSt13move_backwardIP5t_sidS1_ET0_T_S3_S2_.exit.i.i ] ; 4 uses
  %.020.i.ptr.i = getelementptr inbounds nuw i8, ptr %.sroa.0107.0.lcssa, i64 %.020.i.idx.i ; 6 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.020.i.ptr.i, i64 4
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !27 ; 2 uses
  %i.hb = load i32, ptr %i.gy, align 4, !tbaa !27 ; 2 uses
  %i.hc = icmp eq i32 %i.ha, %i.hb
  %i.hd = load i32, ptr %.020.i.ptr.i, align 4
  %i.he = load i32, ptr %.sroa.0107.0.lcssa, align 4
  %i.hf = icmp slt i32 %i.hd, %i.he
  %i.hg = icmp slt i32 %i.ha, %i.hb
  %.0.i94 = select i1 %i.hc, i1 %i.hf, i1 %i.hg
  %i.hh = load i64, ptr %.020.i.ptr.i, align 4    ; 3 uses
  br i1 %.0.i94, label %bb.bn, label %bb.bq

bb.bn:                                            ; preds = %bb.bm
  %i.hi = icmp samesign ugt i64 %.020.i.idx.i, 8
  br i1 %i.hi, label %bb.bo, label %bb.bp, !prof !32

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i85, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.0107.0.lcssa, i64 %.020.i.idx.i, i1 false)
  br label %_ZSt13move_backwardIP5t_sidS1_ET0_T_S3_S2_.exit.i.i

bb.bp:                                            ; preds = %bb.bn
  %i.hj = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 8
  %i.hk = load i64, ptr %.sroa.0107.0.lcssa, align 4
  store i64 %i.hk, ptr %i.hj, align 4
  br label %_ZSt13move_backwardIP5t_sidS1_ET0_T_S3_S2_.exit.i.i

bb.bq:                                            ; preds = %bb.bm
  %.sroa.0129.0.extract.trunc = trunc i64 %i.hh to i32 ; 2 uses
  %.sroa.6132.0.extract.shift = lshr i64 %i.hh, 32
  %.sroa.6132.0.extract.trunc = trunc nuw i64 %.sroa.6132.0.extract.shift to i32 ; 4 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 4
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !27 ; 2 uses
  %i.hn = icmp eq i32 %i.hm, %.sroa.6132.0.extract.trunc
  %i.ho = load i32, ptr %.pn19.i.i, align 4
  %i.hp = icmp sgt i32 %i.ho, %.sroa.0129.0.extract.trunc
  %i.hq = icmp sgt i32 %i.hm, %.sroa.6132.0.extract.trunc
  %.0.i93 = select i1 %i.hn, i1 %i.hp, i1 %i.hq
  br i1 %.0.i93, label %.lr.ph.i.i.i, label %_ZSt13move_backwardIP5t_sidS1_ET0_T_S3_S2_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bq, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.0.i.i.i, %.lr.ph.i.i.i ], [ %.pn19.i.i, %bb.bq ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %.012.i.i.i, %.lr.ph.i.i.i ], [ %.020.i.ptr.i, %bb.bq ]
  %i.hr = load i64, ptr %.012.i.i.i, align 4
  store i64 %i.hr, ptr %.0911.i.i.i, align 4
  %.0.i.i.i = getelementptr inbounds i8, ptr %.012.i.i.i, i64 -8 ; 2 uses
  %i.hs = getelementptr inbounds i8, ptr %.012.i.i.i, i64 -4
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !27 ; 2 uses
  %i.hu = icmp eq i32 %i.ht, %.sroa.6132.0.extract.trunc
  %i.hv = load i32, ptr %.0.i.i.i, align 4
  %i.hw = icmp sgt i32 %i.hv, %.sroa.0129.0.extract.trunc
  %i.hx = icmp sgt i32 %i.ht, %.sroa.6132.0.extract.trunc
  %.0.i92 = select i1 %i.hu, i1 %i.hw, i1 %i.hx
  br i1 %.0.i92, label %.lr.ph.i.i.i, label %_ZSt13move_backwardIP5t_sidS1_ET0_T_S3_S2_.exit.i.i, !llvm.loop !42

_ZSt13move_backwardIP5t_sidS1_ET0_T_S3_S2_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.bq, %bb.bo, %bb.bp
  %.09.lcssa.i.i.i.sink = phi ptr [ %.sroa.0107.0.lcssa, %bb.bo ], [ %.sroa.0107.0.lcssa, %bb.bp ], [ %.020.i.ptr.i, %bb.bq ], [ %.012.i.i.i, %.lr.ph.i.i.i ]
  store i64 %i.hh, ptr %.09.lcssa.i.i.i.sink, align 4
  %.020.i.add.i = add nuw nsw i64 %.020.i.idx.i, 8 ; 2 uses
  %.not.i.i86 = icmp eq i64 %.020.i.add.i, 128
  br i1 %.not.i.i86, label %_ZSt16__insertion_sortIP5t_sidN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_SA_T0_.exit.i, label %bb.bm, !llvm.loop !43

_ZSt16__insertion_sortIP5t_sidN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_SA_T0_.exit.i: ; preds = %_ZSt13move_backwardIP5t_sidS1_ET0_T_S3_S2_.exit.i.i
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.0107.0.lcssa, i64 128 ; 4 uses
  %i.hz = add nsw i64 %.idx, -136                 ; 2 uses
  %i.ia = and i64 %i.hz, 8
  %lcmp.mod.not.not = icmp eq i64 %i.ia, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i87.prol, label %.lr.ph.i.i87.prol.loopexit

.lr.ph.i.i87.prol:                                ; preds = %_ZSt16__insertion_sortIP5t_sidN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_SA_T0_.exit.i
  %i.ib = load i64, ptr %i.hy, align 4            ; 3 uses
  %.sroa.0134.0.extract.trunc.prol = trunc i64 %i.ib to i32 ; 2 uses
  %.sroa.6137.0.extract.shift.prol = lshr i64 %i.ib, 32
  %.sroa.6137.0.extract.trunc.prol = trunc nuw i64 %.sroa.6137.0.extract.shift.prol to i32 ; 4 uses
  %.010.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.sroa.0107.0.lcssa, i64 120 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.0107.0.lcssa, i64 124
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !27 ; 2 uses
  %i.ie = icmp eq i32 %i.id, %.sroa.6137.0.extract.trunc.prol
  %i.if = load i32, ptr %.010.i.i.i.prol, align 4
  %i.ig = icmp sgt i32 %i.if, %.sroa.0134.0.extract.trunc.prol
  %i.ih = icmp sgt i32 %i.id, %.sroa.6137.0.extract.trunc.prol
  %.0.i91.prol = select i1 %i.ie, i1 %i.ig, i1 %i.ih
  br i1 %.0.i91.prol, label %.lr.ph.i.i14.i.prol, label %_ZSt25__unguarded_linear_insertIP5t_sidN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.prol

.lr.ph.i.i14.i.prol:                              ; preds = %.lr.ph.i.i87.prol, %.lr.ph.i.i14.i.prol
  %.012.i.i15.i.prol = phi ptr [ %.0.i.i17.i.prol, %.lr.ph.i.i14.i.prol ], [ %.010.i.i.i.prol, %.lr.ph.i.i87.prol ] ; 5 uses
  %.0911.i.i16.i.prol = phi ptr [ %.012.i.i15.i.prol, %.lr.ph.i.i14.i.prol ], [ %i.hy, %.lr.ph.i.i87.prol ]
  %i.ii = load i64, ptr %.012.i.i15.i.prol, align 4
  store i64 %i.ii, ptr %.0911.i.i16.i.prol, align 4
  %.0.i.i17.i.prol = getelementptr inbounds i8, ptr %.012.i.i15.i.prol, i64 -8 ; 2 uses
  %i.ij = getelementptr inbounds i8, ptr %.012.i.i15.i.prol, i64 -4
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !27 ; 2 uses
  %i.il = icmp eq i32 %i.ik, %.sroa.6137.0.extract.trunc.prol
  %i.im = load i32, ptr %.0.i.i17.i.prol, align 4
  %i.in = icmp sgt i32 %i.im, %.sroa.0134.0.extract.trunc.prol
  %i.io = icmp sgt i32 %i.ik, %.sroa.6137.0.extract.trunc.prol
  %.0.i90.prol = select i1 %i.il, i1 %i.in, i1 %i.io
  br i1 %.0.i90.prol, label %.lr.ph.i.i14.i.prol, label %_ZSt25__unguarded_linear_insertIP5t_sidN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.prol, !llvm.loop !42

_ZSt25__unguarded_linear_insertIP5t_sidN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.prol: ; preds = %.lr.ph.i.i14.i.prol, %.lr.ph.i.i87.prol
  %.09.lcssa.i.i12.i.prol = phi ptr [ %i.hy, %.lr.ph.i.i87.prol ], [ %.012.i.i15.i.prol, %.lr.ph.i.i14.i.prol ]
  store i64 %i.ib, ptr %.09.lcssa.i.i12.i.prol, align 4
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.0107.0.lcssa, i64 136
  br label %.lr.ph.i.i87.prol.loopexit

.lr.ph.i.i87.prol.loopexit:                       ; preds = %_ZSt25__unguarded_linear_insertIP5t_sidN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.prol, %_ZSt16__insertion_sortIP5t_sidN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_SA_T0_.exit.i
  %.08.i.i.unr = phi ptr [ %i.hy, %_ZSt16__insertion_sortIP5t_sidN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_SA_T0_.exit.i ], [ %i.ip, %_ZSt25__unguarded_linear_insertIP5t_sidN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.prol ]
  %i.iq = icmp eq i64 %i.hz, 0
  br i1 %i.iq, label %_ZSt4sortIP5t_sidPFbRKS0_S3_EEvT_S6_T0_.exit, label %.lr.ph.i.i87
end_hunk_0
begin_hunk_1_@_Z11gen_sblocksP8_IO_FILEiRK22InteractionDefinitionsb:bb.a
  %i.ll = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lf, ptr noundef nonnull @.str.2, i32 noundef %i.lk, i32 noundef %i.lh, i32 noundef %i.lj) #22 ; 0 uses
  %indvars.iv.next391 = add nuw nsw i64 %indvars.iv390, 1 ; 2 uses
  %exitcond395.not = icmp eq i64 %indvars.iv.next391, %wide.trip.count394
  br i1 %exitcond395.not, label %._crit_edge280, label %.lr.ph276, !llvm.loop !45

._crit_edge280:                                   ; preds = %.lr.ph276, %_ZSt4sortIP5t_sidPFbRKS0_S3_EEvT_S6_T0_.exit, %_ZSt4sortIP5t_sidPFbRKS0_S3_EEvT_S6_T0_.exit.thread, %_ZSt4sortIP5t_sidPFbRKS0_S3_EEvT_S6_T0_.exit.thread458, %.thread460
  call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %i.lm = sext i32 %.046.lcssa.i to i64           ; 2 uses
  %i.ln = mul nuw nsw i64 %i.lm, 12
  %i.lo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ln) #20
          to label %.lr.ph.i56 unwind label %bb.bx ; 3 uses

.lr.ph.i56:                                       ; preds = %._crit_edge280
  %i.lp = getelementptr inbounds nuw [12 x i8], ptr %i.lo, i64 %i.lm
  %i.lq = add nuw nsw i32 %2, 1                   ; 2 uses
  br label %bb.by

.preheader186.i:                                  ; preds = %_ZNSt6vectorI11t_merge_sidSaIS0_EE9push_backEOS0_.exit.i
  br i1 %.not146, label %._crit_edge.i57, label %.lr.ph227.i

.lr.ph227.i:                                      ; preds = %.preheader186.i
  %i.lr = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %2 to i64
  br label %bb.cd

bb.bx:                                            ; preds = %._crit_edge.i57, %._crit_edge280
  %.sroa.39.1.i = phi ptr [ null, %._crit_edge280 ], [ %.sroa.39.4.i, %._crit_edge.i57 ]
  %.sroa.0118.1.i = phi ptr [ null, %._crit_edge280 ], [ %.sroa.0118.4.i, %._crit_edge.i57 ]
  %i.lt = landingpad { ptr, i32 }
          cleanup
  br label %.body.i55

bb.by:                                            ; preds = %_ZNSt6vectorI11t_merge_sidSaIS0_EE9push_backEOS0_.exit.i, %.lr.ph.i56
  %.059223.i = phi i32 [ 0, %.lr.ph.i56 ], [ %i.mi, %_ZNSt6vectorI11t_merge_sidSaIS0_EE9push_backEOS0_.exit.i ] ; 3 uses
  %.sroa.0118.0222.i = phi ptr [ %i.lo, %.lr.ph.i56 ], [ %.sroa.0118.4.i, %_ZNSt6vectorI11t_merge_sidSaIS0_EE9push_backEOS0_.exit.i ] ; 6 uses
  %.sroa.31.0221.i = phi ptr [ %i.lo, %.lr.ph.i56 ], [ %.sroa.31.2.i, %_ZNSt6vectorI11t_merge_sidSaIS0_EE9push_backEOS0_.exit.i ] ; 8 uses
  %.sroa.39.0220.i = phi ptr [ %i.lp, %.lr.ph.i56 ], [ %.sroa.39.4.i, %_ZNSt6vectorI11t_merge_sidSaIS0_EE9push_backEOS0_.exit.i ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.31.0221.i, %.sroa.39.0220.i
  br i1 %.not.i.i.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  store i32 %i.lq, ptr %.sroa.31.0221.i, align 4, !tbaa !17
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.31.0221.i, i64 4
  store i32 -1, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !17
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.31.0221.i, i64 8
  store i32 %.059223.i, ptr %.sroa.7.0..sroa_idx.i, align 4, !tbaa !17
  br label %_ZNSt6vectorI11t_merge_sidSaIS0_EE9push_backEOS0_.exit.i

bb.ca:                                            ; preds = %bb.by
  %i.lu = ptrtoint ptr %.sroa.31.0221.i to i64
  %i.lv = ptrtoint ptr %.sroa.0118.0222.i to i64
  %i.lw = sub i64 %i.lu, %i.lv                    ; 6 uses
  %i.lx = icmp eq i64 %i.lw, 9223372036854775800
  br i1 %i.lx, label %bb.cb, label %_ZNKSt6vectorI11t_merge_sidSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.cb:                                            ; preds = %bb.ca
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #19
          to label %.noexc85.i78 unwind label %.loopexit.split-lp188.i

.noexc85.i78:                                     ; preds = %bb.cb
  unreachable

_ZNKSt6vectorI11t_merge_sidSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.ca
  %i.ly = sdiv exact i64 %i.lw, 12                ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ly, i64 1)
  %i.lz = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ly ; 2 uses
  %i.ma = icmp ult i64 %i.lz, %i.ly
  %i.mb = call i64 @llvm.umin.i64(i64 %i.lz, i64 768614336404564650)
  %i.mc = select i1 %i.ma, i64 768614336404564650, i64 %i.mb ; 3 uses
  %.not.i.i.i.i.i76 = icmp ne i64 %i.mc, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i76)
  %i.md = mul nuw nsw i64 %i.mc, 12
  %i.me = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.md) #20
          to label %.noexc86.i unwind label %.loopexit187.i ; 4 uses

.noexc86.i:                                       ; preds = %_ZNKSt6vectorI11t_merge_sidSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.mf = getelementptr inbounds i8, ptr %i.me, i64 %i.lw ; 4 uses
  store i32 %i.lq, ptr %i.mf, align 4, !tbaa !17
  %.sroa.6.0..sroa_idx114.i = getelementptr inbounds nuw i8, ptr %i.mf, i64 4
  store i32 -1, ptr %.sroa.6.0..sroa_idx114.i, align 4, !tbaa !17
  %.sroa.7.0..sroa_idx116.i = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  store i32 %.059223.i, ptr %.sroa.7.0..sroa_idx116.i, align 4, !tbaa !17
  %i.mg = icmp sgt i64 %i.lw, 0
  br i1 %i.mg, label %bb.cc, label %_ZNSt6vectorI11t_merge_sidSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i

bb.cc:                                            ; preds = %.noexc86.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.me, ptr align 4 %.sroa.0118.0222.i, i64 %i.lw, i1 false)
  br label %_ZNSt6vectorI11t_merge_sidSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i

_ZNSt6vectorI11t_merge_sidSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i: ; preds = %bb.cc, %.noexc86.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0118.0222.i, i64 noundef %i.lw) #21
  %i.mh = getelementptr inbounds nuw [12 x i8], ptr %i.me, i64 %i.mc
  br label %_ZNSt6vectorI11t_merge_sidSaIS0_EE9push_backEOS0_.exit.i

_ZNSt6vectorI11t_merge_sidSaIS0_EE9push_backEOS0_.exit.i: ; preds = %_ZNSt6vectorI11t_merge_sidSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i, %bb.bz
  %.sroa.39.4.i = phi ptr [ %i.mh, %_ZNSt6vectorI11t_merge_sidSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i ], [ %.sroa.39.0220.i, %bb.bz ] ; 7 uses
  %.pn176.i = phi ptr [ %i.mf, %_ZNSt6vectorI11t_merge_sidSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i ], [ %.sroa.31.0221.i, %bb.bz ]
  %.sroa.0118.4.i = phi ptr [ %i.me, %_ZNSt6vectorI11t_merge_sidSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i ], [ %.sroa.0118.0222.i, %bb.bz ] ; 19 uses
  %.sroa.31.2.i = getelementptr inbounds nuw i8, ptr %.pn176.i, i64 12 ; 2 uses
  %i.mi = add nuw nsw i32 %.059223.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.mi, %.046.lcssa.i
  br i1 %exitcond.not.i, label %.preheader186.i, label %bb.by, !llvm.loop !48

.loopexit187.i:                                   ; preds = %_ZNKSt6vectorI11t_merge_sidSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit189.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i55

.loopexit.split-lp188.i:                          ; preds = %bb.cb
  %lpad.loopexit.split-lp.i77 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i55

bb.cd:                                            ; preds = %bb.cl, %.lr.ph227.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph227.i ], [ %indvars.iv.next.i, %bb.cl ] ; 2 uses
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0107.0.lcssa, i64 %indvars.iv.i ; 3 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 4
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !27, !noalias !82 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22, !noalias !82
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA63_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 1 dereferenceable(63) @.str.7, i8 noundef zeroext 2)
          to label %bb.ce unwind label %bb.ci

bb.ce:                                            ; preds = %bb.cd
  invoke void @_Z20range_check_functioniiiPKcS0_RKNSt10filesystem7__cxx114pathEi(i32 noundef %i.ml, i32 noundef -1, i32 noundef range(i32 1, 0) %.046.lcssa.i, ptr noundef null, ptr noundef nonnull @.str.18, ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 265)
          to label %bb.cf unwind label %bb.cj

bb.cf:                                            ; preds = %bb.ce
  %i.mm = load ptr, ptr %i.lr, align 8, !tbaa !19, !noalias !82 ; 2 uses
  %.not.i.i.i.i71 = icmp eq ptr %i.mm, null
  br i1 %.not.i.i.i.i71, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i72, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.lr, ptr noundef nonnull %i.mm) #22
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i72

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i72: ; preds = %bb.cg, %bb.cf
  %i.mn = load ptr, ptr %5, align 8, !tbaa !24, !noalias !82 ; 2 uses
  %i.mo = icmp eq ptr %i.mn, %i.ls
  br i1 %i.mo, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i73: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i72
  %i.mp = load i64, ptr %i.ls, align 8, !tbaa !25, !noalias !82
  %i.mq = add i64 %i.mp, 1
  call void @_ZdlPvm(ptr noundef %i.mn, i64 noundef %i.mq) #21
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i74

_ZNSt10filesystem7__cxx114pathD2Ev.exit.i74:      ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i72, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !82
  %i.mr = icmp sgt i32 %i.ml, -1
  br i1 %i.mr, label %bb.ch, label %bb.cl

bb.ch:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i74
  %i.ms = zext nneg i32 %i.ml to i64
  %i.mt = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0118.4.i, i64 %i.ms ; 3 uses
  %i.mu = load i32, ptr %i.mj, align 4, !tbaa !17, !noalias !82
  %i.mv = load i32, ptr %i.mt, align 4, !tbaa !17
  %i.mw = call i32 @llvm.smin.i32(i32 %i.mu, i32 %i.mv)
  store i32 %i.mw, ptr %i.mt, align 4, !tbaa !34
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mt, i64 4 ; 2 uses
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !17
  %i.mz = load i32, ptr %i.mj, align 4, !tbaa !17, !noalias !82
  %i.na = call i32 @llvm.smax.i32(i32 %i.my, i32 %i.mz)
  store i32 %i.na, ptr %i.mx, align 4, !tbaa !35
  br label %bb.cl

bb.ci:                                            ; preds = %bb.cd
  %i.nb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ce
  %i.nc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #22
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.pn80.i = phi { ptr, i32 } [ %i.nc, %bb.cj ], [ %i.nb, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !82
  br label %.body.i55

bb.cl:                                            ; preds = %bb.ch, %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i74
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond284.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond284.not.i, label %._crit_edge.i57, label %bb.cd, !llvm.loop !49

._crit_edge.i57:                                  ; preds = %bb.cl, %.preheader186.i
  %i.nd = ptrtoint ptr %.sroa.31.2.i to i64
  %i.ne = ptrtoint ptr %.sroa.0118.4.i to i64     ; 2 uses
  %i.nf = sub i64 %i.nd, %i.ne
  %i.ng = sdiv exact i64 %i.nf, 12
  invoke void @qsort(ptr noundef %.sroa.0118.4.i, i64 noundef %i.ng, i64 noundef 12, ptr noundef nonnull @_ZL7ms_compPKvS0_)
          to label %.preheader184.i.preheader unwind label %bb.bx

.preheader184.i.preheader:                        ; preds = %._crit_edge.i57
  %i.nh = add i32 %.046.lcssa.i, -2
  br label %.preheader184.i

.preheader184.i:                                  ; preds = %.preheader184.i.preheader, %._crit_edge232.i
  %.058235.i = phi i32 [ %spec.select.i58, %._crit_edge232.i ], [ 0, %.preheader184.i.preheader ] ; 8 uses
  %storemerge79228.i = add nsw i32 %.058235.i, 1  ; 2 uses
  %i.ni = icmp slt i32 %storemerge79228.i, %.046.lcssa.i
  br i1 %i.ni, label %.lr.ph231.preheader.i, label %._crit_edge232.i

.lr.ph231.preheader.i:                            ; preds = %.preheader184.i
  %i.nj = sext i32 %.058235.i to i64              ; 2 uses
  %i.nk = add nsw i64 %i.nj, 1                    ; 3 uses
  %i.nl = sub i32 %.058235.i, %.046.lcssa.i
  %i.nm = and i32 %i.nl, 1
  %lcmp.mod793.not.not = icmp eq i32 %i.nm, 0
  br i1 %lcmp.mod793.not.not, label %.lr.ph231.i.prol, label %.lr.ph231.i.prol.loopexit

.lr.ph231.i.prol:                                 ; preds = %.lr.ph231.preheader.i
  %i.nn = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0118.4.i, i64 %i.nk ; 3 uses
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !34 ; 2 uses
  %i.np = sext i32 %.058235.i to i64
  %i.nq = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0118.4.i, i64 %i.np ; 3 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 4 ; 2 uses
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !35 ; 2 uses
  %.not77.i.prol = icmp sgt i32 %i.no, %i.ns
  %i.nt = trunc nsw i64 %i.nk to i32
  br i1 %.not77.i.prol, label %.lr.ph231.i.prol.loopexit.unr-lcssa, label %bb.cm

bb.cm:                                            ; preds = %.lr.ph231.i.prol
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nn, i64 4
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !17
  %i.nw = call i32 @llvm.smax.i32(i32 %i.ns, i32 %i.nv)
  store i32 %i.nw, ptr %i.nr, align 4, !tbaa !35
  %i.nx = load i32, ptr %i.nq, align 4, !tbaa !17
  %i.ny = call i32 @llvm.smin.i32(i32 %i.no, i32 %i.nx)
  store i32 %i.ny, ptr %i.nq, align 4, !tbaa !34
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nn, i64 8
  store i32 -1, ptr %i.nz, align 4, !tbaa !83
  br label %.lr.ph231.i.prol.loopexit.unr-lcssa

.lr.ph231.i.prol.loopexit.unr-lcssa:              ; preds = %bb.cm, %.lr.ph231.i.prol
  %.2.i69.prol = phi i32 [ %.058235.i, %bb.cm ], [ %i.nt, %.lr.ph231.i.prol ] ; 2 uses
  %indvars.iv.next286.i.prol = add nsw i64 %i.nj, 2
  br label %.lr.ph231.i.prol.loopexit

.lr.ph231.i.prol.loopexit:                        ; preds = %.lr.ph231.i.prol.loopexit.unr-lcssa, %.lr.ph231.preheader.i
  %.2.i69.lcssa.unr = phi i32 [ poison, %.lr.ph231.preheader.i ], [ %.2.i69.prol, %.lr.ph231.i.prol.loopexit.unr-lcssa ]
  %indvars.iv285.i.unr = phi i64 [ %i.nk, %.lr.ph231.preheader.i ], [ %indvars.iv.next286.i.prol, %.lr.ph231.i.prol.loopexit.unr-lcssa ]
  %.1229.i.unr = phi i32 [ %.058235.i, %.lr.ph231.preheader.i ], [ %.2.i69.prol, %.lr.ph231.i.prol.loopexit.unr-lcssa ]
  %i.oa = icmp eq i32 %i.nh, %.058235.i
  br i1 %i.oa, label %._crit_edge232.i, label %.lr.ph231.i

.lr.ph231.i:                                      ; preds = %.lr.ph231.i.prol.loopexit, %bb.cp
  %indvars.iv285.i = phi i64 [ %indvars.iv.next286.i.1, %bb.cp ], [ %indvars.iv285.i.unr, %.lr.ph231.i.prol.loopexit ] ; 4 uses
  %.1229.i = phi i32 [ %.2.i69.1, %bb.cp ], [ %.1229.i.unr, %.lr.ph231.i.prol.loopexit ] ; 2 uses
  %i.ob = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0118.4.i, i64 %indvars.iv285.i ; 3 uses
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !34 ; 2 uses
  %i.od = sext i32 %.1229.i to i64
  %i.oe = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0118.4.i, i64 %i.od ; 3 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 4 ; 2 uses
  %i.og = load i32, ptr %i.of, align 4, !tbaa !35 ; 2 uses
  %.not77.i = icmp sgt i32 %i.oc, %i.og
  %i.oh = trunc nsw i64 %indvars.iv285.i to i32
  br i1 %.not77.i, label %.lr.ph231.i.1, label %bb.cn

bb.cn:                                            ; preds = %.lr.ph231.i
  %i.oi = getelementptr inbounds nuw i8, ptr %i.ob, i64 4
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !17
  %i.ok = call i32 @llvm.smax.i32(i32 %i.og, i32 %i.oj)
  store i32 %i.ok, ptr %i.of, align 4, !tbaa !35
  %i.ol = load i32, ptr %i.oe, align 4, !tbaa !17
  %i.om = call i32 @llvm.smin.i32(i32 %i.oc, i32 %i.ol)
  store i32 %i.om, ptr %i.oe, align 4, !tbaa !34
  %i.on = getelementptr inbounds nuw i8, ptr %i.ob, i64 8
  store i32 -1, ptr %i.on, align 4, !tbaa !83
  br label %.lr.ph231.i.1

.lr.ph231.i.1:                                    ; preds = %bb.cn, %.lr.ph231.i
  %.2.i69 = phi i32 [ %.1229.i, %bb.cn ], [ %i.oh, %.lr.ph231.i ] ; 2 uses
  %indvars.iv.next286.i = add nsw i64 %indvars.iv285.i, 1 ; 2 uses
  %i.oo = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0118.4.i, i64 %indvars.iv.next286.i ; 3 uses
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !34 ; 2 uses
  %i.oq = sext i32 %.2.i69 to i64
  %i.or = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0118.4.i, i64 %i.oq ; 3 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 4 ; 2 uses
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !35 ; 2 uses
  %.not77.i.1 = icmp sgt i32 %i.op, %i.ot
  %i.ou = trunc nsw i64 %indvars.iv.next286.i to i32
  br i1 %.not77.i.1, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %.lr.ph231.i.1
  %i.ov = getelementptr inbounds nuw i8, ptr %i.oo, i64 4
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !17
  %i.ox = call i32 @llvm.smax.i32(i32 %i.ot, i32 %i.ow)
  store i32 %i.ox, ptr %i.os, align 4, !tbaa !35
  %i.oy = load i32, ptr %i.or, align 4, !tbaa !17
  %i.oz = call i32 @llvm.smin.i32(i32 %i.op, i32 %i.oy)
  store i32 %i.oz, ptr %i.or, align 4, !tbaa !34
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  store i32 -1, ptr %i.pa, align 4, !tbaa !83
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %.lr.ph231.i.1
  %.2.i69.1 = phi i32 [ %.2.i69, %bb.co ], [ %i.ou, %.lr.ph231.i.1 ] ; 2 uses
  %indvars.iv.next286.i.1 = add nsw i64 %indvars.iv285.i, 2 ; 2 uses
  %lftr.wideiv.i70.1 = trunc i64 %indvars.iv.next286.i.1 to i32
  %exitcond288.not.i.1 = icmp eq i32 %.046.lcssa.i, %lftr.wideiv.i70.1
  br i1 %exitcond288.not.i.1, label %._crit_edge232.i, label %.lr.ph231.i, !llvm.loop !50

._crit_edge232.i:                                 ; preds = %.lr.ph231.i.prol.loopexit, %bb.cp, %.preheader184.i
  %.1.lcssa.i = phi i32 [ %.058235.i, %.preheader184.i ], [ %.2.i69.lcssa.unr, %.lr.ph231.i.prol.loopexit ], [ %.2.i69.1, %bb.cp ]
  %storemerge79.lcssa.i = phi i32 [ %storemerge79228.i, %.preheader184.i ], [ %.046.lcssa.i, %bb.cp ], [ %.046.lcssa.i, %.lr.ph231.i.prol.loopexit ]
  %12 = icmp eq i32 %storemerge79.lcssa.i, %.046.lcssa.i
  %13 = zext i1 %12 to i32
  %spec.select.i58 = add nsw i32 %.1.lcssa.i, %13 ; 2 uses
  %i.pb = icmp slt i32 %spec.select.i58, %.046.lcssa.i
  br i1 %i.pb, label %.preheader184.i, label %.preheader182.i, !llvm.loop !51

.preheader182.i:                                  ; preds = %._crit_edge232.i, %.critedge.i
  %indvars.iv306.i = phi i32 [ %indvars.iv.next307.i, %.critedge.i ], [ -1, %._crit_edge232.i ] ; 2 uses
  %indvars.iv292.i = phi i32 [ %indvars.iv.next293.i, %.critedge.i ], [ 1, %._crit_edge232.i ] ; 2 uses
  %indvar.i = phi i64 [ %indvar.next.pre-phi.i, %.critedge.i ], [ 0, %._crit_edge232.i ] ; 6 uses
  %.067245.i = phi i32 [ %.168.lcssa.i, %.critedge.i ], [ %.046.lcssa.i, %._crit_edge232.i ] ; 5 uses
  %i.pc = mul nuw nsw i64 %indvar.i, 12
  %scevgep.i = getelementptr i8, ptr %.sroa.0118.4.i, i64 %i.pc ; 2 uses
  %scevgep289.i = getelementptr i8, ptr %scevgep.i, i64 12
  %i.pd = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0118.4.i, i64 %indvar.i
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 8
  %i.pf = add nsw i32 %.067245.i, -1
  %i.pg = sext i32 %i.pf to i64
  %i.ph = icmp slt i64 %indvar.i, %i.pg
  br i1 %i.ph, label %.lr.ph241.i, label %.preheader182..critedge_crit_edge.i

.preheader182..critedge_crit_edge.i:              ; preds = %.preheader182.i
  %.pre.i59 = add nuw nsw i64 %indvar.i, 1
  br label %.critedge.i

.lr.ph241.i:                                      ; preds = %.preheader182.i
  %i.pi = trunc i64 %indvar.i to i32
  %i.pj = add nuw nsw i64 %indvar.i, 1            ; 3 uses
  %i.pk = add i32 %.067245.i, %indvars.iv306.i
  %wide.trip.count308.i = zext i32 %i.pk to i64
  %.neg150 = add i32 %.067245.i, -2
  %i.pl = sext i32 %.067245.i to i64
  br label %bb.cq

.preheader.i:                                     ; preds = %.critedge.i
  br i1 %.not146, label %._crit_edge250.i, label %iter.check

iter.check:                                       ; preds = %.preheader.i
  %wide.trip.count317.i = zext nneg i32 %2 to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.lr.ph249.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check677 = icmp ult i32 %2, 32
  br i1 %min.iters.check677, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.pm = and i64 %wide.trip.count317.i, 28
  %n.vec = and i64 %wide.trip.count317.i, 2147483616 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add <8 x i32> %vec.ind, splat (i32 8)
  %step.add.2 = add <8 x i32> %vec.ind, splat (i32 16)
  %step.add.3 = add <8 x i32> %vec.ind, splat (i32 24)
  %i.pn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0107.0.lcssa, i64 %index
  %i.po = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0107.0.lcssa, i64 %index
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 64
  %i.pq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0107.0.lcssa, i64 %index
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 128
  %i.ps = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0107.0.lcssa, i64 %index
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 192
  %interleaved.vec = shufflevector <8 x i32> %vec.ind, <8 x i32> splat (i32 -1), <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i32> %interleaved.vec, ptr %i.pn, align 4, !tbaa !17, !noalias !82
  %interleaved.vec678.a = shufflevector <8 x i32> %step.add, <8 x i32> splat (i32 -1), <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i32> %interleaved.vec678.a, ptr %i.pp, align 4, !tbaa !17, !noalias !82
  %interleaved.vec679.a = shufflevector <8 x i32> %step.add.2, <8 x i32> splat (i32 -1), <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i32> %interleaved.vec679.a, ptr %i.pr, align 4, !tbaa !17, !noalias !82
  %interleaved.vec680 = shufflevector <8 x i32> %step.add.3, <8 x i32> splat (i32 -1), <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i32> %interleaved.vec680, ptr %i.pt, align 4, !tbaa !17, !noalias !82
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 32)
  %i.pu = icmp eq i64 %index.next, %n.vec
  br i1 %i.pu, label %middle.block, label %vector.body, !llvm.loop !52

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count317.i
  br i1 %cmp.n, label %._crit_edge250.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.pm, 0
  br i1 %min.epilog.iters.check, label %.lr.ph249.i.preheader, label %vec.epilog.ph, !prof !84

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec681 = and i64 %wide.trip.count317.i, 2147483644 ; 3 uses
  %i.pv = trunc nuw nsw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.pv, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index682 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next685, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind683 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next686, %vec.epilog.vector.body ] ; 2 uses
  %i.pw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0107.0.lcssa, i64 %index682
  %interleaved.vec684 = shufflevector <4 x i32> %vec.ind683, <4 x i32> splat (i32 -1), <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i32> %interleaved.vec684, ptr %i.pw, align 4, !tbaa !17, !noalias !82
  %index.next685 = add nuw i64 %index682, 4       ; 2 uses
  %vec.ind.next686 = add <4 x i32> %vec.ind683, splat (i32 4)
  %i.px = icmp eq i64 %index.next685, %n.vec681
  br i1 %i.px, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !53

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n687 = icmp eq i64 %n.vec681, %wide.trip.count317.i
  br i1 %cmp.n687, label %._crit_edge250.i, label %.lr.ph249.i.preheader

.lr.ph249.i.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv314.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec681, %vec.epilog.middle.block ]
  br label %.lr.ph249.i

.loopexit181.i:                                   ; preds = %.lr.ph239.preheader.i, %.preheader180.i
  %indvars.iv.next302.i = add nuw nsw i64 %indvars.iv301.i, 1 ; 2 uses
  %exitcond309.not.i = icmp eq i64 %indvars.iv.next302.i, %wide.trip.count308.i
  %indvars.iv.next405 = add nsw i64 %indvars.iv404, -1
  br i1 %exitcond309.not.i, label %.critedge.i, label %bb.cq, !llvm.loop !54

bb.cq:                                            ; preds = %.loopexit181.i, %.lr.ph241.i
  %indvars.iv404 = phi i64 [ %indvars.iv.next405, %.loopexit181.i ], [ %i.pl, %.lr.ph241.i ] ; 3 uses
  %indvars.iv301.i = phi i64 [ %indvars.iv.next302.i, %.loopexit181.i ], [ 0, %.lr.ph241.i ] ; 2 uses
  %i.py = trunc i64 %indvars.iv301.i to i32
  %i.pz = add i32 %i.pi, %i.py
  %i.qa = sub i32 %.neg150, %i.pz
  %i.qb = zext i32 %i.qa to i64
  %i.qc = mul nuw nsw i64 %i.qb, 12
  %i.qd = add nuw nsw i64 %i.qc, 12
  %i.qe = load i32, ptr %i.pe, align 4, !tbaa !83
  %i.qf = icmp eq i32 %i.qe, -1
  br i1 %i.qf, label %.preheader180.i, label %.critedge.i.loopexit.split.loop.exit571

.preheader180.i:                                  ; preds = %bb.cq
  %i.qg = icmp slt i64 %i.pj, %indvars.iv404
  br i1 %i.qg, label %.lr.ph239.preheader.i, label %.loopexit181.i

.lr.ph239.preheader.i:                            ; preds = %.preheader180.i
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 4 dereferenceable(1) %scevgep289.i, i64 %i.qd, i1 false)
  br label %.loopexit181.i

.critedge.i.loopexit.split.loop.exit571:          ; preds = %bb.cq
  %i.qh = trunc nsw i64 %indvars.iv404 to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %.loopexit181.i, %.critedge.i.loopexit.split.loop.exit571, %.preheader182..critedge_crit_edge.i
  %indvar.next.pre-phi.i = phi i64 [ %.pre.i59, %.preheader182..critedge_crit_edge.i ], [ %i.pj, %.critedge.i.loopexit.split.loop.exit571 ], [ %i.pj, %.loopexit181.i ] ; 2 uses
  %.168.lcssa.i = phi i32 [ %.067245.i, %.preheader182..critedge_crit_edge.i ], [ %i.qh, %.critedge.i.loopexit.split.loop.exit571 ], [ %indvars.iv292.i, %.loopexit181.i ] ; 4 uses
  %i.qi = sext i32 %.168.lcssa.i to i64
  %i.qj = icmp slt i64 %indvar.next.pre-phi.i, %i.qi
  %indvars.iv.next293.i = add nuw i32 %indvars.iv292.i, 1
  %indvars.iv.next307.i = add nsw i32 %indvars.iv306.i, -1
  br i1 %i.qj, label %.preheader182.i, label %.preheader.i, !llvm.loop !55

._crit_edge250.i:                                 ; preds = %.lr.ph249.i, %middle.block, %vec.epilog.middle.block, %.preheader.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 24, i1 false), !alias.scope !82
  %i.qk = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #20
          to label %bb.ct unwind label %bb.cr     ; 3 uses

bb.cr:                                            ; preds = %._crit_edge250.i
  %i.ql = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qm = load ptr, ptr %0, align 8, !tbaa !16, !alias.scope !82 ; 3 uses
  %.not.i.i4.i.i.i = icmp eq ptr %i.qm, null
  br i1 %.not.i.i4.i.i.i, label %.body.i55, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !31, !alias.scope !82
  %i.qp = ptrtoint ptr %i.qo to i64
  %i.qq = ptrtoint ptr %i.qm to i64
  %i.qr = sub i64 %i.qp, %i.qq
  call void @_ZdlPvm(ptr noundef nonnull %i.qm, i64 noundef %i.qr) #21
  br label %.body.i55

.lr.ph249.i:                                      ; preds = %.lr.ph249.i.preheader, %.lr.ph249.i
  %indvars.iv314.i = phi i64 [ %indvars.iv.next315.i, %.lr.ph249.i ], [ %indvars.iv314.i.ph, %.lr.ph249.i.preheader ] ; 3 uses
  %i.qs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0107.0.lcssa, i64 %indvars.iv314.i ; 2 uses
  %i.qt = trunc nuw nsw i64 %indvars.iv314.i to i32
  store i32 %i.qt, ptr %i.qs, align 4, !tbaa !81, !noalias !82
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qs, i64 4
  store i32 -1, ptr %i.qu, align 4, !tbaa !27, !noalias !82
  %indvars.iv.next315.i = add nuw nsw i64 %indvars.iv314.i, 1 ; 2 uses
  %exitcond318.not.i = icmp eq i64 %indvars.iv.next315.i, %wide.trip.count317.i
  br i1 %exitcond318.not.i, label %._crit_edge250.i, label %.lr.ph249.i, !llvm.loop !56

bb.ct:                                            ; preds = %._crit_edge250.i
  store ptr %i.qk, ptr %0, align 8, !tbaa !16, !alias.scope !82
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qk, i64 4 ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.qv, ptr %i.qw, align 8, !tbaa !31, !alias.scope !82
  store i32 0, ptr %i.qk, align 4, !tbaa !17
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.qv, ptr %i.qx, align 8, !tbaa !15, !alias.scope !82
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qy, i8 0, i64 24, i1 false), !alias.scope !82
  %i.qz = icmp sgt i32 %.168.lcssa.i, 0
  br i1 %i.qz, label %_ZNSt6vectorIiSaIiEE5clearEv.exit.preheader.i, label %bb.dg

_ZNSt6vectorIiSaIiEE5clearEv.exit.preheader.i:    ; preds = %bb.ct
  %wide.trip.count325.i = zext nneg i32 %.168.lcssa.i to i64
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit.i

._crit_edge265.i:                                 ; preds = %bb.dd
  %.not.i.i.i90.i = icmp eq ptr %.sroa.0102.1.lcssa.i, null
end_hunk_1
