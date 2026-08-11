inline.NumInlined: 457
inline.NumDeleted: 181
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_Z12gmx_tune_pmeiPPc:bb.a

bb.wq:                                            ; preds = %bb.wo
  %i.cey = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i299

bb.wr:                                            ; preds = %bb.wp
  %i.cez = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cfa = load ptr, ptr %i.bcd, align 8, !tbaa !45 ; 2 uses
  %.not.i.i.i304 = icmp eq ptr %i.cfa, null
  br i1 %.not.i.i.i304, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i299, label %bb.ws

bb.ws:                                            ; preds = %bb.wr
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.bcd, ptr noundef nonnull %i.cfa) #25
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i299

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i299: ; preds = %bb.ws, %bb.wr, %bb.wq
  %.pn.i300 = phi { ptr, i32 } [ %i.cey, %bb.wq ], [ %i.cez, %bb.wr ], [ %i.cez, %bb.ws ] ; 2 uses
  %i.cfb = load ptr, ptr %8, align 8, !tbaa !47   ; 2 uses
  %i.cfc = icmp eq ptr %i.cfb, %i.bcb
  br i1 %i.cfc, label %.body209.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i301

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i301: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i299
  %i.cfd = load i64, ptr %i.bcb, align 8, !tbaa !36
  %i.cfe = add i64 %i.cfd, 1
  call void @_ZdlPvm(ptr noundef %i.cfb, i64 noundef %i.cfe) #29
  br label %.body209.i

.noexc:                                           ; preds = %bb.wp
  %i.cff = invoke noundef zeroext i1 @_Z10gmx_fexistRKNSt10filesystem7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40) %8)
          to label %bb.wt unwind label %bb.ww

bb.wt:                                            ; preds = %.noexc
  %i.cfg = load ptr, ptr %i.bcd, align 8, !tbaa !45 ; 2 uses
  %.not.i.i.i.i229 = icmp eq ptr %i.cfg, null
  br i1 %.not.i.i.i.i229, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i230, label %bb.wu

bb.wu:                                            ; preds = %bb.wt
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.bcd, ptr noundef nonnull %i.cfg) #25
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i230

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i230: ; preds = %bb.wu, %bb.wt
  %i.cfh = load ptr, ptr %8, align 8, !tbaa !47   ; 2 uses
  %i.cfi = icmp eq ptr %i.cfh, %i.bcb
  br i1 %i.cfi, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i232, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i231

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i231: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i230
  %i.cfj = load i64, ptr %i.bcb, align 8, !tbaa !36
  %i.cfk = add i64 %i.cfj, 1
  call void @_ZdlPvm(ptr noundef %i.cfh, i64 noundef %i.cfk) #29
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i232

_ZNSt10filesystem7__cxx114pathD2Ev.exit.i232:     ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i230, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i231
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %i.cff, label %bb.wv, label %.tail1.thread.i.i

bb.wv:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i232
  %i.cfl = load ptr, ptr @stdout, align 8, !tbaa !40
  %i.cfm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cfl, ptr noundef nonnull @.str.399, ptr noundef nonnull %i.ceo) #25 ; 0 uses
  %i.cfn = call i32 @remove(ptr noundef nonnull %i.ceo) #25 ; 0 uses
  br label %.tail1.thread.i.i

bb.ww:                                            ; preds = %.noexc
  %i.cfo = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %.body209.i

.tail1.thread.i.i:                                ; preds = %bb.wv, %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i232, %.noexc232.i, %.tail1.i.i, %sub_02.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i224.i, %.tail.i.i192
  %indvars.iv.next.i215.i = add nuw nsw i64 %indvars.iv.i213.i, 1 ; 2 uses
  %exitcond.not.i216.i = icmp eq i64 %indvars.iv.next.i215.i, 51
  br i1 %exitcond.not.i216.i, label %.loopexit36.i, label %sub_0.i.i186, !llvm.loop !276

bb.wx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i.i
  %.pn57.pn.i.i = phi { ptr, i32 } [ %.pn57.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i.i ], [ %.pn50.pn.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #25
  br label %.body209.i

.loopexit36.i:                                    ; preds = %.tail1.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #25
  %i.cfp = load ptr, ptr %i.bcq, align 8, !tbaa !269
  %i.cfq = load double, ptr %i.cfp, align 8, !tbaa !270
  %i.cfr = fcmp ole double %i.cfq, 0.000000e+00
  %or.cond9.i = and i1 %i.bac, %i.cfr
  br i1 %or.cond9.i, label %bb.wy, label %bb.wz

bb.wy:                                            ; preds = %.loopexit36.i
  %i.cfs = load ptr, ptr @stdout, align 8, !tbaa !40
  %i.cft = call i64 @fwrite(ptr nonnull @.str.380, i64 77, i64 1, ptr %i.cfs) ; 0 uses
  %.neg.i = xor i32 %i.byd, -1
  %i.cfu = add nsw i32 %i.avp, %.neg.i
  %i.cfv = add nsw i32 %i.cfu, %i.bxz
  br label %.loopexit49.i

bb.wz:                                            ; preds = %.loopexit36.i
  %indvars.iv.next.i187 = add nuw nsw i64 %indvars.iv.i177, 1 ; 2 uses
  %exitcond.not.i188 = icmp eq i64 %indvars.iv.next.i187, %wide.trip.count.i
  br i1 %exitcond.not.i188, label %.loopexit49.i, label %bb.mu, !llvm.loop !277

.loopexit49.i:                                    ; preds = %bb.wz, %bb.wy, %_ZL24make_gpu_id_command_lineB5cxx11PKc.exit.i
  %.3156.i = phi i32 [ %i.cfv, %bb.wy ], [ %.1154884.i, %_ZL24make_gpu_id_command_lineB5cxx11PKc.exit.i ], [ %i.bxz, %bb.wz ] ; 2 uses
  %.4.i = phi i1 [ %spec.select1076.i, %bb.wy ], [ %.1148887.i, %_ZL24make_gpu_id_command_lineB5cxx11PKc.exit.i ], [ %spec.select1076.i, %bb.wz ] ; 2 uses
  %.3.i = phi i1 [ false, %bb.wy ], [ %.1146888.i, %_ZL24make_gpu_id_command_lineB5cxx11PKc.exit.i ], [ false, %bb.wz ] ; 2 uses
  %i.cfw = load ptr, ptr %26, align 8, !tbaa !47  ; 2 uses
  %i.cfx = icmp eq ptr %i.cfw, %i.azx
  br i1 %i.cfx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i175, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i174: ; preds = %.loopexit49.i
  %i.cfy = load i64, ptr %i.azx, align 8, !tbaa !36
  %i.cfz = add i64 %i.cfy, 1
  call void @_ZdlPvm(ptr noundef %i.cfw, i64 noundef %i.cfz) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i175

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i175: ; preds = %.loopexit49.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i174
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25
  %indvars.iv.next985.i = add nuw nsw i64 %indvars.iv984.i, 1 ; 2 uses
  %exitcond1046.not = icmp eq i64 %indvars.iv.next985.i, %i.ayy
  br i1 %exitcond1046.not, label %._crit_edge.i173, label %bb.mr, !llvm.loop !278

.body209.i:                                       ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i299, %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i241.i, %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i253.i, %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i311, %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i323, %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i335, %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i347, %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i359, %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i371, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i301, %bb.pm, %bb.oq, %bb.nu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i313, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i337, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i361, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i373, %bb.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i349, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i325, %bb.nj, %bb.of, %bb.pb, %bb.ww, %.loopexit.i189, %bb.wx, %.body.i, %bb.tf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i243.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i255.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i
  %.pn164.i = phi { ptr, i32 } [ %.pn.i242.i, %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i241.i ], [ %.pn.i178, %.body.i ], [ %.pn.i196.i, %bb.tf ], [ %.pn57.pn.i.i, %bb.wx ], [ %.pn.i312, %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i311 ], [ %.pn.i254.i, %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i253.i ], [ %.pn.i254.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i255.i ], [ %.pn.i242.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i243.i ], [ %lpad.loopexit.split-lp.i194, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ], [ %lpad.loopexit37.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit41.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit45.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit50.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %i.cfo, %bb.ww ], [ %lpad.loopexit.i190, %.loopexit.i189 ], [ %i.bkc, %bb.pm ], [ %i.bjb, %bb.pb ], [ %i.bia, %bb.oq ], [ %i.bgz, %bb.of ], [ %i.bfy, %bb.nu ], [ %i.bex, %bb.nj ], [ %.pn.i324, %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i323 ], [ %.pn.i312, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i313 ], [ %.pn.i336, %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i335 ], [ %.pn.i324, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i325 ], [ %.pn.i348, %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i347 ], [ %.pn.i336, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i337 ], [ %.pn.i360, %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i359 ], [ %.pn.i348, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i349 ], [ %.pn.i372, %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i371 ], [ %.pn.i360, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i361 ], [ %i.bkd, %bb.pn ], [ %.pn.i372, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i373 ], [ %.pn.i300, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i301 ], [ %.pn.i300, %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i299 ]
  %i.cga = load ptr, ptr %26, align 8, !tbaa !47  ; 2 uses
  %i.cgb = icmp eq ptr %i.cga, %i.azx
  br i1 %i.cgb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237.i: ; preds = %.body209.i
  %i.cgc = load i64, ptr %i.azx, align 8, !tbaa !36
  %i.cgd = add i64 %i.cgc, 1
  call void @_ZdlPvm(ptr noundef %i.cga, i64 noundef %i.cgd) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239.i: ; preds = %.body209.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237.i
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #25
  br label %common.resume

._crit_edge.i173:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i175, %.._crit_edge_crit_edge.i
  %indvars.iv.next987.pre-phi.i = phi i64 [ %.pre.i172, %.._crit_edge_crit_edge.i ], [ %i.bck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i175 ] ; 2 uses
  %.1154.lcssa.i = phi i32 [ %.0153894.i, %.._crit_edge_crit_edge.i ], [ %.3156.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i175 ]
  %.1148.lcssa.i = phi i1 [ %.0147895.i, %.._crit_edge_crit_edge.i ], [ %.4.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i175 ] ; 2 uses
  %.1146.lcssa.i = phi i1 [ %.0145896.i, %.._crit_edge_crit_edge.i ], [ %.3.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i175 ]
  %exitcond989.not.i = icmp eq i64 %indvars.iv.next987.pre-phi.i, %wide.trip.count988.i.pre-phi
  br i1 %exitcond989.not.i, label %._crit_edge898.i, label %bb.mq, !llvm.loop !279

._crit_edge898.i:                                 ; preds = %._crit_edge.i173
  br i1 %.1148.lcssa.i, label %bb.xa, label %_ZL12do_the_testsP8_IO_FILEPPciiiPKcPP6t_perfPiiiibS1_S1_S1_S1_PK8t_filenmiilbS4_.exit

bb.xa:                                            ; preds = %._crit_edge898.i
  %i.cge = call i64 @fwrite(ptr nonnull @.str.310, i64 62, i64 1, ptr %i.qz) ; 0 uses
  %i.cgf = call i64 @fwrite(ptr nonnull @.str.381, i64 71, i64 1, ptr %i.qz) ; 0 uses
  %i.cgg = call i64 @fwrite(ptr nonnull @.str.310, i64 62, i64 1, ptr %i.qz) ; 0 uses
  br label %_ZL12do_the_testsP8_IO_FILEPPciiiPKcPP6t_perfPiiiibS1_S1_S1_S1_PK8t_filenmiilbS4_.exit

_ZL12do_the_testsP8_IO_FILEPPciiiPKcPP6t_perfPiiiibS1_S1_S1_S1_PK8t_filenmiilbS4_.exit: ; preds = %bb.mo, %._crit_edge898.i, %bb.xa
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.299, ptr noundef nonnull @.str.205, i32 noundef 1683, ptr noundef %i.awk)
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.355, ptr noundef nonnull @.str.205, i32 noundef 1684, ptr noundef %i.awl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #25
  %i.cgh = call noundef double @_Z11gmx_gettimev()
  %i.cgi = fsub double %i.cgh, %i.gp
  %i.cgj = fdiv double %i.cgi, 6.000000e+01
  %i.cgk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.qz, ptr noundef nonnull @.str.251, double noundef %i.cgj) #25 ; 0 uses
  %i.cgl = call noundef ptr @_Z6opt2fnPKciPK8t_filenm(ptr noundef nonnull @.str.60, i32 noundef 51, ptr noundef nonnull @_ZZ12gmx_tune_pmeiPPcE3fnm)
  %i.cgm = load i32, ptr %i.as, align 4, !tbaa !9 ; 2 uses
  %i.cgn = load i32, ptr %i.ax, align 4, !tbaa !9 ; 3 uses
  %i.cgo = load i32, ptr %i.at, align 4, !tbaa !9 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #25
  %i.cgp = icmp sgt i32 %i.cgo, 1                 ; 3 uses
  br i1 %i.cgp, label %bb.xb, label %bb.xe

bb.xb:                                            ; preds = %_ZL12do_the_testsP8_IO_FILEPPciiiPKcPP6t_perfPiiiibS1_S1_S1_S1_PK8t_filenmiilbS4_.exit
  %i.cgq = call i64 @fwrite(ptr nonnull @.str.310, i64 62, i64 1, ptr %i.qz) ; 0 uses
  %i.cgr = call i64 @fwrite(ptr nonnull @.str.424, i64 28, i64 1, ptr %i.qz) ; 0 uses
  %i.cgs = call i64 @fwrite(ptr nonnull @.str.425, i64 70, i64 1, ptr %i.qz) ; 0 uses
  %i.cgt = icmp sgt i32 %i.cgm, 1
  br i1 %i.cgt, label %bb.xc, label %bb.xd

bb.xc:                                            ; preds = %bb.xb
  %i.cgu = call i64 @fwrite(ptr nonnull @.str.426, i64 11, i64 1, ptr %i.qz) ; 0 uses
  br label %bb.xd

bb.xd:                                            ; preds = %bb.xc, %bb.xb
  %fputc.i214 = call i32 @fputc(i32 10, ptr %i.qz) ; 0 uses
  br label %bb.xe

bb.xe:                                            ; preds = %bb.xd, %_ZL12do_the_testsP8_IO_FILEPPciiiPKcPP6t_perfPiiiibS1_S1_S1_S1_PK8t_filenmiilbS4_.exit
  %i.cgv = icmp sgt i32 %i.cgn, 0
  br i1 %i.cgv, label %.preheader187.lr.ph.i, label %._crit_edge211.thread.i

.preheader187.lr.ph.i:                            ; preds = %bb.xe
  %i.cgw = icmp sgt i32 %.0, 0
  %i.cgx = icmp sgt i32 %i.cgo, 0
  %i.cgy = sitofp i32 %i.cgo to double            ; 2 uses
  %i.cgz = sitofp i32 %i.cgo to float             ; 4 uses
  %i.cha = fneg float %i.cgz                      ; 2 uses
  %i.chb = add nsw i32 %i.cgo, -1
  %71 = sitofp i32 %i.chb to double
  %i.chc = icmp sgt i32 %i.cgm, 1
  br i1 %i.cgw, label %.preheader187.us.preheader.i, label %._crit_edge211.thread.i

.preheader187.us.preheader.i:                     ; preds = %.preheader187.lr.ph.i
  %wide.trip.count237.i = zext nneg i32 %i.cgn to i64
  %wide.trip.count232.i = zext nneg i32 %.0 to i64
  %wide.trip.count.i206 = zext i32 %i.cgo to i64  ; 5 uses
  %xtraiter = and i64 %wide.trip.count.i206, 3    ; 3 uses
  %i.chd = icmp ult i32 %i.cgo, 4
  %unroll_iter = and i64 %wide.trip.count.i206, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod1786 = icmp ne i64 %xtraiter, 0
  %xtraiter1788 = and i64 %wide.trip.count.i206, 7 ; 3 uses
  %i.che = icmp ult i32 %i.cgo, 8
  %unroll_iter1793 = and i64 %wide.trip.count.i206, 2147483640
  %lcmp.mod1790.not = icmp eq i64 %xtraiter1788, 0
  %lcmp.mod1792 = icmp ne i64 %xtraiter1788, 0
  br label %.preheader187.us.i

.preheader187.us.i:                               ; preds = %._crit_edge202.us.i, %.preheader187.us.preheader.i
  %indvars.iv234.i = phi i64 [ 0, %.preheader187.us.preheader.i ], [ %indvars.iv.next235.i, %._crit_edge202.us.i ] ; 3 uses
  %.0158209.us.i = phi i32 [ 0, %.preheader187.us.preheader.i ], [ %.2160.us.i, %._crit_edge202.us.i ]
  %.0161208.us.i = phi i32 [ -1, %.preheader187.us.preheader.i ], [ %.3.us.i, %._crit_edge202.us.i ]
  %.0165207.us.i = phi i32 [ -1, %.preheader187.us.preheader.i ], [ %.3168.us.i, %._crit_edge202.us.i ]
  %.0170206.us.i = phi i32 [ -1, %.preheader187.us.preheader.i ], [ %.3173.us.i, %._crit_edge202.us.i ]
  %i.chf = getelementptr inbounds nuw [8 x i8], ptr %i.avk, i64 %indvars.iv234.i
  %i.chg = trunc nuw nsw i64 %indvars.iv234.i to i32 ; 2 uses
  br label %bb.xf

bb.xf:                                            ; preds = %bb.xy, %.preheader187.us.i
  %indvars.iv229.i = phi i64 [ 0, %.preheader187.us.i ], [ %indvars.iv.next230.i, %bb.xy ] ; 3 uses
  %.1159198.us.i = phi i32 [ %.0158209.us.i, %.preheader187.us.i ], [ %.2160.us.i, %bb.xy ] ; 5 uses
  %.1162197.us.i = phi i32 [ %.0161208.us.i, %.preheader187.us.i ], [ %.3.us.i, %bb.xy ] ; 3 uses
  %.1166196.us.i = phi i32 [ %.0165207.us.i, %.preheader187.us.i ], [ %.3168.us.i, %bb.xy ] ; 5 uses
  %.1171195.us.i = phi i32 [ %.0170206.us.i, %.preheader187.us.i ], [ %.3173.us.i, %bb.xy ] ; 4 uses
  %i.chh = load ptr, ptr %i.chf, align 8, !tbaa !257
  %i.chi = getelementptr inbounds nuw [80 x i8], ptr %i.chh, i64 %indvars.iv229.i ; 13 uses
  %i.chj = getelementptr inbounds nuw i8, ptr %i.chi, i64 32 ; 11 uses
  store double 0.000000e+00, ptr %i.chj, align 8, !tbaa !280
  %i.chk = getelementptr inbounds nuw i8, ptr %i.chi, i64 64 ; 8 uses
  %i.chl = getelementptr inbounds nuw i8, ptr %i.chi, i64 48 ; 7 uses
  call void @llvm.masked.store.v5f32.p0(<5 x float> <float 0.000000e+00, float poison, float poison, float poison, float 0.000000e+00>, ptr align 8 %i.chl, <5 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true>), !tbaa !10
  %i.chm = load i32, ptr %i.chi, align 8, !tbaa !266
  %i.chn = icmp eq i32 %i.chm, -1
  br i1 %i.chn, label %bb.xh, label %bb.xg

bb.xg:                                            ; preds = %bb.xf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) %i.l, ptr noundef nonnull align 1 dereferenceable(6) @.str.372, i64 6, i1 false)
  br label %bb.xi

bb.xh:                                            ; preds = %bb.xf
  %i.cho = getelementptr inbounds nuw i8, ptr %i.chi, i64 16
  %i.chp = load i32, ptr %i.cho, align 8, !tbaa !273
  %i.chq = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.l, ptr noundef nonnull dereferenceable(1) @.str.371, i32 noundef %i.chp) #25 ; 0 uses
  br label %bb.xi

bb.xi:                                            ; preds = %bb.xh, %bb.xg
  %.pre.i207 = load double, ptr %i.chj, align 8, !tbaa !280 ; 3 uses
  %.pre239.i = load float, ptr %i.chk, align 8, !tbaa !281 ; 3 uses
  br i1 %i.cgx, label %.lr.ph.us.i, label %._crit_edge.us..loopexit.us_crit_edge.i

.lr.ph.us.i.new:                                  ; preds = %.lr.ph.us.i, %.lr.ph.us.i.new
  %indvars.iv.i211 = phi i64 [ %indvars.iv.next.i212.3, %.lr.ph.us.i.new ], [ 0, %.lr.ph.us.i ] ; 6 uses
  %i.chr = phi float [ %i.ciq, %.lr.ph.us.i.new ], [ %.pre239.i, %.lr.ph.us.i ]
  %i.chs = phi double [ %i.cin, %.lr.ph.us.i.new ], [ %.pre.i207, %.lr.ph.us.i ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.us.i.new ], [ 0, %.lr.ph.us.i ]
  %i.cht = getelementptr inbounds nuw [8 x i8], ptr %i.cmj, i64 %indvars.iv.i211
  %i.chu = load double, ptr %i.cht, align 8, !tbaa !270
  %i.chv = fadd double %i.chs, %i.chu             ; 2 uses
  store double %i.chv, ptr %i.chj, align 8, !tbaa !280
  %i.chw = getelementptr inbounds nuw [4 x i8], ptr %i.cml, i64 %indvars.iv.i211
  %i.chx = load float, ptr %i.chw, align 4, !tbaa !10
  %i.chy = fadd float %i.chr, %i.chx              ; 2 uses
  store float %i.chy, ptr %i.chk, align 8, !tbaa !281
  %indvars.iv.next.i212 = or disjoint i64 %indvars.iv.i211, 1 ; 2 uses
  %i.chz = getelementptr inbounds nuw [8 x i8], ptr %i.cmj, i64 %indvars.iv.next.i212
  %i.cia = load double, ptr %i.chz, align 8, !tbaa !270
  %i.cib = fadd double %i.chv, %i.cia             ; 2 uses
  store double %i.cib, ptr %i.chj, align 8, !tbaa !280
  %i.cic = getelementptr inbounds nuw [4 x i8], ptr %i.cml, i64 %indvars.iv.next.i212
  %i.cid = load float, ptr %i.cic, align 4, !tbaa !10
  %i.cie = fadd float %i.chy, %i.cid              ; 2 uses
  store float %i.cie, ptr %i.chk, align 8, !tbaa !281
  %indvars.iv.next.i212.1 = or disjoint i64 %indvars.iv.i211, 2 ; 2 uses
  %i.cif = getelementptr inbounds nuw [8 x i8], ptr %i.cmj, i64 %indvars.iv.next.i212.1
  %i.cig = load double, ptr %i.cif, align 8, !tbaa !270
  %i.cih = fadd double %i.cib, %i.cig             ; 2 uses
  store double %i.cih, ptr %i.chj, align 8, !tbaa !280
  %i.cii = getelementptr inbounds nuw [4 x i8], ptr %i.cml, i64 %indvars.iv.next.i212.1
  %i.cij = load float, ptr %i.cii, align 4, !tbaa !10
  %i.cik = fadd float %i.cie, %i.cij              ; 2 uses
  store float %i.cik, ptr %i.chk, align 8, !tbaa !281
  %indvars.iv.next.i212.2 = or disjoint i64 %indvars.iv.i211, 3 ; 2 uses
  %i.cil = getelementptr inbounds nuw [8 x i8], ptr %i.cmj, i64 %indvars.iv.next.i212.2
  %i.cim = load double, ptr %i.cil, align 8, !tbaa !270
  %i.cin = fadd double %i.cih, %i.cim             ; 4 uses
  store double %i.cin, ptr %i.chj, align 8, !tbaa !280
  %i.cio = getelementptr inbounds nuw [4 x i8], ptr %i.cml, i64 %indvars.iv.next.i212.2
  %i.cip = load float, ptr %i.cio, align 4, !tbaa !10
  %i.ciq = fadd float %i.cik, %i.cip              ; 4 uses
  store float %i.ciq, ptr %i.chk, align 8, !tbaa !281
  %indvars.iv.next.i212.3 = add nuw nsw i64 %indvars.iv.i211, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph192.us.i.unr-lcssa, label %.lr.ph.us.i.new, !llvm.loop !282

._crit_edge.us..loopexit.us_crit_edge.i:          ; preds = %bb.xi
  %i.cir = fdiv double %.pre.i207, %i.cgy
  store double %i.cir, ptr %i.chj, align 8, !tbaa !280
  %i.cis = fdiv float %.pre239.i, %i.cgz          ; 2 uses
  store float %i.cis, ptr %i.chk, align 8, !tbaa !281
  %.pre240.i = load float, ptr %i.chl, align 8, !tbaa !283
  br label %.loopexit.us.i

bb.xj:                                            ; preds = %.lr.ph192.us.i, %bb.xk
  %indvars.iv219.i = phi i64 [ 0, %.lr.ph192.us.i ], [ %indvars.iv.next220.i, %bb.xk ] ; 2 uses
  %i.cit = getelementptr inbounds nuw [4 x i8], ptr %i.cmx, i64 %indvars.iv219.i
  %i.ciu = load float, ptr %i.cit, align 4, !tbaa !10 ; 2 uses
  %i.civ = fcmp ogt float %i.ciu, 0.000000e+00
  br i1 %i.civ, label %bb.xk, label %bb.xl

bb.xk:                                            ; preds = %bb.xj
  %i.ciw = load float, ptr %i.chl, align 8, !tbaa !283
  %i.cix = fadd float %i.ciu, %i.ciw              ; 2 uses
  store float %i.cix, ptr %i.chl, align 8, !tbaa !283
  %indvars.iv.next220.i = add nuw nsw i64 %indvars.iv219.i, 1 ; 2 uses
  %exitcond223.not.i = icmp eq i64 %indvars.iv.next220.i, %wide.trip.count.i206
  br i1 %exitcond223.not.i, label %.loopexit.us.i, label %bb.xj, !llvm.loop !284

bb.xl:                                            ; preds = %bb.xj
  store float %i.cha, ptr %i.chl, align 8, !tbaa !283
  br label %.loopexit.us.i

.loopexit.us.i:                                   ; preds = %bb.xk, %bb.xl, %._crit_edge.us..loopexit.us_crit_edge.i
  %i.ciy = phi float [ %i.cis, %._crit_edge.us..loopexit.us_crit_edge.i ], [ %i.cmv, %bb.xl ], [ %i.cmv, %bb.xk ] ; 2 uses
  %i.ciz = phi float [ %.pre240.i, %._crit_edge.us..loopexit.us_crit_edge.i ], [ %i.cha, %bb.xl ], [ %i.cix, %bb.xk ]
  %i.cja = fdiv float %i.ciz, %i.cgz
  store float %i.cja, ptr %i.chl, align 8, !tbaa !283
  %i.cjb = fcmp ogt float %i.ciy, 0.000000e+00
  br i1 %i.cjb, label %bb.xn, label %bb.xm

bb.xm:                                            ; preds = %.loopexit.us.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.m, ptr noundef nonnull align 1 dereferenceable(13) @.str.375, i64 13, i1 false)
  br label %bb.xo

bb.xn:                                            ; preds = %.loopexit.us.i
  %i.cjc = fpext float %i.ciy to double
  %i.cjd = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(1) @.str.373, double noundef %i.cjc) #25 ; 0 uses
  br label %bb.xo

bb.xo:                                            ; preds = %bb.xn, %bb.xm
  %i.cje = load double, ptr %i.chj, align 8, !tbaa !280 ; 11 uses
  %i.cjf = fcmp ogt double %i.cje, 0.000000e+00
  br i1 %i.cjf, label %bb.xp, label %bb.xy

bb.xp:                                            ; preds = %bb.xo
  %i.cjg = load float, ptr %i.chl, align 8, !tbaa !283 ; 2 uses
  %i.cjh = fcmp ogt float %i.cjg, 0.000000e+00
  br i1 %i.cjh, label %bb.xq, label %bb.xy

bb.xq:                                            ; preds = %bb.xp
  br i1 %i.cgp, label %.preheader.us.i, label %bb.xu

.preheader.us.i.new:                              ; preds = %.preheader.us.i, %.preheader.us.i.new
  %indvars.iv224.i = phi i64 [ %indvars.iv.next225.i.7, %.preheader.us.i.new ], [ 0, %.preheader.us.i ] ; 9 uses
  %.0169193.us.i = phi double [ %i.clc, %.preheader.us.i.new ], [ 0.000000e+00, %.preheader.us.i ]
  %niter1794 = phi i64 [ %niter1794.next.7, %.preheader.us.i.new ], [ 0, %.preheader.us.i ]
  %i.cji = getelementptr inbounds nuw [8 x i8], ptr %i.cmh, i64 %indvars.iv224.i
  %i.cjj = load double, ptr %i.cji, align 8, !tbaa !270
  %i.cjk = fsub double %i.cjj, %i.cje             ; 2 uses
  %i.cjl = fmul double %i.cjk, %i.cjk
  %i.cjm = fadd double %.0169193.us.i, %i.cjl
  %i.cjn = getelementptr inbounds nuw [8 x i8], ptr %i.cmh, i64 %indvars.iv224.i
  %i.cjo = getelementptr inbounds nuw i8, ptr %i.cjn, i64 8
  %i.cjp = load double, ptr %i.cjo, align 8, !tbaa !270
  %i.cjq = fsub double %i.cjp, %i.cje             ; 2 uses
  %i.cjr = fmul double %i.cjq, %i.cjq
  %i.cjs = fadd double %i.cjm, %i.cjr
  %i.cjt = getelementptr inbounds nuw [8 x i8], ptr %i.cmh, i64 %indvars.iv224.i
  %i.cju = getelementptr inbounds nuw i8, ptr %i.cjt, i64 16
  %i.cjv = load double, ptr %i.cju, align 8, !tbaa !270
  %i.cjw = fsub double %i.cjv, %i.cje             ; 2 uses
  %i.cjx = fmul double %i.cjw, %i.cjw
  %i.cjy = fadd double %i.cjs, %i.cjx
  %i.cjz = getelementptr inbounds nuw [8 x i8], ptr %i.cmh, i64 %indvars.iv224.i
  %i.cka = getelementptr inbounds nuw i8, ptr %i.cjz, i64 24
  %i.ckb = load double, ptr %i.cka, align 8, !tbaa !270
  %i.ckc = fsub double %i.ckb, %i.cje             ; 2 uses
  %i.ckd = fmul double %i.ckc, %i.ckc
  %i.cke = fadd double %i.cjy, %i.ckd
  %i.ckf = getelementptr inbounds nuw [8 x i8], ptr %i.cmh, i64 %indvars.iv224.i
  %i.ckg = getelementptr inbounds nuw i8, ptr %i.ckf, i64 32
  %i.ckh = load double, ptr %i.ckg, align 8, !tbaa !270
  %i.cki = fsub double %i.ckh, %i.cje             ; 2 uses
  %i.ckj = fmul double %i.cki, %i.cki
  %i.ckk = fadd double %i.cke, %i.ckj
  %i.ckl = getelementptr inbounds nuw [8 x i8], ptr %i.cmh, i64 %indvars.iv224.i
  %i.ckm = getelementptr inbounds nuw i8, ptr %i.ckl, i64 40
  %i.ckn = load double, ptr %i.ckm, align 8, !tbaa !270
  %i.cko = fsub double %i.ckn, %i.cje             ; 2 uses
end_hunk_0
