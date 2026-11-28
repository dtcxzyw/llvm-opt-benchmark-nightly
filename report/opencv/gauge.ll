Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/gauge?download=true
inline.NumInlined: 415
inline.NumDeleted: 181
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@main:.noexc.i
  %i.sw = icmp slt i32 %.0110.in.i, 0
  %i.sx = icmp ne i32 %i.ox, %.138.i
  %i.sy = select i1 %i.su, i1 %i.sx, i1 false
  %.2107.i = select i1 %i.sy, double %i.sv, double %.0105.i
  %or.cond7.i = select i1 %i.sr, i1 %i.sw, i1 false
  %.3108.i = select i1 %or.cond7.i, double %i.st, double %.2107.i
  %i.sz = load double, ptr %39, align 8, !tbaa !101 ; 2 uses
  %i.ta = load double, ptr %i.lq, align 8, !tbaa !102
  %i.tb = load double, ptr %i.lt, align 8, !tbaa !103 ; 2 uses
  %i.tc = load double, ptr %i.lw, align 8, !tbaa !104
  %i.td = fsub double %i.ta, %i.sz
  %i.te = fsub double %i.tc, %i.tb
  %i.tf = fsub double %.3108.i, %i.sz
  %i.tg = fmul double %i.tf, %i.te
  %i.th = fdiv double %i.tg, %i.td
  %i.ti = fadd double %i.tb, %i.th
  br label %_ZNSolsEPFRSoS_E.exit143.i

_ZNSolsEPFRSoS_E.exit143.i:                       ; preds = %bb.cq, %.noexc166.i
  %.0.i = phi double [ %i.ti, %bb.cq ], [ 0.000000e+00, %.noexc166.i ]
  %i.tj = load ptr, ptr %11, align 8, !tbaa !16   ; 3 uses
  %.not.i.i.i.i67 = icmp eq ptr %i.tj, null
  br i1 %.not.i.i.i.i67, label %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit.i, label %bb.cr

bb.cr:                                            ; preds = %_ZNSolsEPFRSoS_E.exit143.i
  %i.tk = load ptr, ptr %i.pg, align 8, !tbaa !15
  %i.tl = ptrtoint ptr %i.tk to i64
  %i.tm = ptrtoint ptr %i.tj to i64
  %i.tn = sub i64 %i.tl, %i.tm
  call void @_ZdlPvm(ptr noundef nonnull %i.tj, i64 noundef %i.tn) #18
  br label %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit.i: ; preds = %bb.cr, %_ZNSolsEPFRSoS_E.exit143.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  br label %_ZNSolsEPFRSoS_E.exit.i68

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.co
  %.pn128.i = phi { ptr, i32 } [ %i.sm, %bb.co ], [ %lpad.loopexit.split-lp179, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.to = load ptr, ptr %11, align 8, !tbaa !16   ; 3 uses
  %.not.i.i.i146.i = icmp eq ptr %i.to, null
  br i1 %.not.i.i.i146.i, label %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit147.i, label %bb.cs

bb.cs:                                            ; preds = %.loopexit.split-lp.i
  %i.tp = load ptr, ptr %i.pg, align 8, !tbaa !15
  %i.tq = ptrtoint ptr %i.tp to i64
  %i.tr = ptrtoint ptr %i.to to i64
  %i.ts = sub i64 %i.tq, %i.tr
  call void @_ZdlPvm(ptr noundef nonnull %i.to, i64 noundef %i.ts) #18
  br label %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit147.i

_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit147.i: ; preds = %bb.cs, %.loopexit.split-lp.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  br label %bb.cu

_ZNSolsEPFRSoS_E.exit.i68:                        ; preds = %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit.i, %.noexc156.i
  %.1.i = phi double [ %.0.i, %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit.i ], [ 0.000000e+00, %.noexc156.i ]
  %i.tt = load ptr, ptr %8, align 8, !tbaa !16    ; 3 uses
  %.not.i.i.i148.i = icmp eq ptr %i.tt, null
  br i1 %.not.i.i.i148.i, label %bb.cx, label %bb.ct

bb.ct:                                            ; preds = %_ZNSolsEPFRSoS_E.exit.i68
  %i.tu = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !15
  %i.tw = ptrtoint ptr %i.tv to i64
  %i.tx = ptrtoint ptr %i.tt to i64
  %i.ty = sub i64 %i.tw, %i.tx
  call void @_ZdlPvm(ptr noundef nonnull %i.tt, i64 noundef %i.ty) #18
  br label %bb.cx

bb.cu:                                            ; preds = %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit147.i, %bb.cc, %bb.cb
  %.pn130.i = phi { ptr, i32 } [ %i.ov, %bb.cc ], [ %.pn128.i, %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit147.i ], [ %i.ou, %bb.cb ]
  %i.tz = load ptr, ptr %8, align 8, !tbaa !16    ; 3 uses
  %.not.i.i.i150.i = icmp eq ptr %i.tz, null
  br i1 %.not.i.i.i150.i, label %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit151.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ua = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !15
  %i.uc = ptrtoint ptr %i.ub to i64
  %i.ud = ptrtoint ptr %i.tz to i64
  %i.ue = sub i64 %i.uc, %i.ud
  call void @_ZdlPvm(ptr noundef nonnull %i.tz, i64 noundef %i.ue) #18
  br label %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit151.i

_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit151.i: ; preds = %bb.cv, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.cw

bb.cw:                                            ; preds = %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit151.i, %bb.ca
  %.pn130.pn.i = phi { ptr, i32 } [ %.pn130.i, %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit151.i ], [ %i.ot, %bb.ca ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %.body70

.body70:                                          ; preds = %bb.cw, %bb.bz
  %.pn130.pn.pn.i = phi { ptr, i32 } [ %.pn130.pn.i, %bb.cw ], [ %i.os, %bb.bz ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %41) #17
  br label %bb.dd

bb.cx:                                            ; preds = %bb.ct, %_ZNSolsEPFRSoS_E.exit.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %41) #17
  %i.uf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.4, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73 unwind label %bb.dc ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73: ; preds = %bb.cx
  %i.ug = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %.1.i)
          to label %_ZNSolsEd.exit unwind label %bb.dc ; 2 uses

_ZNSolsEd.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73
  %i.uh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ug, ptr noundef nonnull @.str.5, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76 unwind label %bb.dc ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76: ; preds = %_ZNSolsEd.exit
  %i.ui = load ptr, ptr %i.cl, align 8, !tbaa !39
  %i.uj = load i64, ptr %i.cn, align 8, !tbaa !41
  %i.uk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ug, ptr noundef %i.ui, i64 noundef %i.uj)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit78 unwind label %bb.dc ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit78: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !44
  %i.um = getelementptr i8, ptr %i.ul, i64 -24
  %i.un = load i64, ptr %i.um, align 8
  %i.uo = getelementptr inbounds i8, ptr %i.uk, i64 %i.un
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 240
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !60 ; 6 uses
  %.not.i.i.i102 = icmp eq ptr %i.uq, null
  br i1 %.not.i.i.i102, label %bb.cy, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i103

bb.cy:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit78
  invoke void @_ZSt16__throw_bad_castv() #19
          to label %.noexc107 unwind label %bb.dc

.noexc107:                                        ; preds = %bb.cy
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i103: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit78
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 56
  %i.us = load i8, ptr %i.ur, align 8, !tbaa !66
  %.not.i1.i.i104 = icmp eq i8 %i.us, 0
  br i1 %.not.i1.i.i104, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i103
  %i.ut = getelementptr inbounds nuw i8, ptr %i.uq, i64 67
  %i.uu = load i8, ptr %i.ut, align 1, !tbaa !40
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i105

bb.da:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i103
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.uq)
          to label %.noexc108 unwind label %bb.dc

.noexc108:                                        ; preds = %bb.da
  %i.uv = load ptr, ptr %i.uq, align 8, !tbaa !44
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 48
  %i.ux = load ptr, ptr %i.uw, align 8
  %i.uy = invoke noundef signext i8 %i.ux(ptr noundef nonnull align 8 dereferenceable(570) %i.uq, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i105 unwind label %bb.dc, !inline_history !19

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i105: ; preds = %.noexc108, %bb.cz
  %.0.i.i.i106 = phi i8 [ %i.uu, %bb.cz ], [ %i.uy, %.noexc108 ]
  %i.uz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.uk, i8 noundef signext %.0.i.i.i106)
          to label %.noexc110 unwind label %bb.dc

.noexc110:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i105
  %i.va = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.uz)
          to label %_ZNSolsEPFRSoS_E.exit80 unwind label %bb.dc ; 0 uses

_ZNSolsEPFRSoS_E.exit80:                          ; preds = %.noexc110
  %i.vb = load ptr, ptr %i.cl, align 8, !tbaa !39 ; 2 uses
  %i.vc = icmp eq ptr %i.vb, %i.cm
  br i1 %i.vc, label %_ZN16GaugeCalibrationD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i81: ; preds = %_ZNSolsEPFRSoS_E.exit80
  %i.vd = load i64, ptr %i.cm, align 8, !tbaa !40
  %i.ve = add i64 %i.vd, 1
  call void @_ZdlPvm(ptr noundef %i.vb, i64 noundef %i.ve) #18
  br label %_ZN16GaugeCalibrationD2Ev.exit

_ZN16GaugeCalibrationD2Ev.exit:                   ; preds = %_ZNSolsEPFRSoS_E.exit80, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i81
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #17
  br label %_ZNSolsEPFRSoS_E.exit

bb.db:                                            ; preds = %.noexc.i57
  %i.vf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

.body62:                                          ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.vg = load ptr, ptr %40, align 8, !tbaa !39   ; 2 uses
  %i.vh = icmp eq ptr %i.vg, %i.bz
  br i1 %i.vh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %.body62
  %i.vi = load i64, ptr %i.bz, align 8, !tbaa !40
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i87.a

bb.dc:                                            ; preds = %.noexc110, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i105, %.noexc108, %bb.da, %bb.cy, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76, %_ZNSolsEd.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73, %bb.cx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  %i.vj = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.dd:                                            ; preds = %.body70, %bb.dc
  %.pn21 = phi { ptr, i32 } [ %i.vj, %bb.dc ], [ %.pn130.pn.pn.i, %.body70 ] ; 2 uses
  %i.vk = load ptr, ptr %i.cl, align 8, !tbaa !39 ; 2 uses
  %i.vl = icmp eq ptr %i.vk, %i.cm
  br i1 %i.vl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i87: ; preds = %bb.dd
  %42 = load i64, ptr %i.cm, align 8, !tbaa !40
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i87.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i87.a: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i87
  %.sink180 = phi i64 [ %42, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i87 ], [ %i.vi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84 ]
  %.sink = phi ptr [ %i.vk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i87 ], [ %i.vg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84 ]
  %.pn21.pn.ph = phi { ptr, i32 } [ %.pn21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i87 ], [ %.pn115.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84 ]
  %i.vm = add i64 %.sink180, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.vm) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i87.a, %bb.dd, %.body62, %bb.db
  %.pn21.pn = phi { ptr, i32 } [ %.pn115.pn.i, %.body62 ], [ %i.vf, %bb.db ], [ %.pn21, %bb.dd ], [ %.pn21.pn.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i87.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #17
  br label %bb.de

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc100, %_ZN16GaugeCalibrationD2Ev.exit
  %.015 = phi i32 [ 0, %_ZN16GaugeCalibrationD2Ev.exit ], [ 1, %.noexc100 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %38) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #17
  %i.vn = load ptr, ptr %36, align 8, !tbaa !39   ; 2 uses
  %i.vo = icmp eq ptr %i.vn, %i.aa
  br i1 %i.vo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.vp = load i64, ptr %i.aa, align 8, !tbaa !40
  %i.vq = add i64 %i.vp, 1
  call void @_ZdlPvm(ptr noundef %i.vn, i64 noundef %i.vq) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %_ZNSolsEPFRSoS_E.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #17
  call void @_ZN2cv17CommandLineParserD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %33) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #17
  ret i32 %.015

bb.de:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, %bb.s
  %.pn24 = phi { ptr, i32 } [ %i.by, %bb.s ], [ %.pn21.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %38) #17
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.r
  %.pn24.pn = phi { ptr, i32 } [ %.pn24, %bb.de ], [ %i.bx, %bb.r ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #17
  %i.vr = load ptr, ptr %36, align 8, !tbaa !39   ; 2 uses
  %i.vs = icmp eq ptr %i.vr, %i.aa
  br i1 %i.vs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %bb.df
  %i.vt = load i64, ptr %i.aa, align 8, !tbaa !40
  %i.vu = add i64 %i.vt, 1
  call void @_ZdlPvm(ptr noundef %i.vr, i64 noundef %i.vu) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %bb.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  %.pn24.pn.pn = phi { ptr, i32 } [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ], [ %.pn24.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94 ], [ %.pn24.pn, %bb.df ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #17
  br label %bb.dg

bb.dg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %.pn24.pn.pn.pn = phi { ptr, i32 } [ %.pn24.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96 ], [ %i.bs, %bb.q ], [ %.pn17, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ]
  call void @_ZN2cv17CommandLineParserD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %33) #17
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  %.pn24.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn24.pn.pn.pn, %bb.dg ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #17
  resume { ptr, i32 } %.pn24.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

declare void @_ZN2cv17CommandLineParserC1EiPKPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN2cv17CommandLineParser5aboutERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_ZNK2cv17CommandLineParser12printMessageEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN2cv6imreadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN2cv17CommandLineParserD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #4

declare void @_ZN2cv8cvtColorERKNS_11_InputArrayERKNS_12_OutputArrayEiiNS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN2cv12HoughCirclesERKNS_11_InputArrayERKNS_12_OutputArrayEiddddii(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef, double noundef, double noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN2cv6circleERKNS_17_InputOutputArrayENS_6Point_IiEEiRKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24), i64, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #6

declare void @_ZN2cv4lineERKNS_17_InputOutputArrayENS_6Point_IiEES4_RKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24), i64, i64, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN2cv7putTextERKNS_17_InputOutputArrayERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6Point_IiEEidNS_7Scalar_IdEEiib(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(32), i64, i32 noundef, double noundef, ptr noundef align 8 dead_on_return, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN2cv7imwriteERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11_InputArrayERKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #17 ; 0 uses
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef double @_ZN2cv9thresholdERKNS_11_InputArrayERKNS_12_OutputArrayEddi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), double noundef, double noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN2cv11HoughLinesPERKNS_11_InputArrayERKNS_12_OutputArrayEddidd(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), double noundef, double noundef, i32 noundef, double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(16) %2) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !16     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN2cv3VecIiLi4EEESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #19
  unreachable

_ZNKSt6vectorIN2cv3VecIiLi4EEESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #21 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load <4 x i32>, ptr %2, align 4, !tbaa !11
  store <4 x i32> %i.r, ptr %i.q, align 4, !tbaa !11
  %.not13.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not13.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIiLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN2cv3VecIiLi4EEESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i.i.i
  %.015.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %i.p, %_ZNKSt6vectorIN2cv3VecIiLi4EEESaIS2_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %.01214.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN2cv3VecIiLi4EEESaIS2_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.s = load i32, ptr %.01214.i.i.i.i.i, align 4, !tbaa !11
  store i32 %i.s, ptr %.015.i.i.i.i.i, align 4, !tbaa !11
  %i.t = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !11
  %i.v = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 4
  store i32 %i.u, ptr %i.v, align 4, !tbaa !11
  %i.w = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 8
  %i.x = load i32, ptr %i.w, align 4, !tbaa !11
  %i.y = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 8
  store i32 %i.x, ptr %i.y, align 4, !tbaa !11
  %i.z = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 12
end_hunk_0
