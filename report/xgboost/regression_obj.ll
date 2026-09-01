Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/regression_obj?download=true
inline.NumInlined: 7707
inline.NumDeleted: 2228
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN4dmlc10ParseFloatIfLb1EEET_PKcPPc:bb.a
bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i8 41, ptr %i.a, align 1, !tbaa !15
  %i.bi = icmp eq i8 %i.bb, 41
  br i1 %i.bi, label %_ZN4dmlc11LogCheck_EQIccEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, label %_ZN4dmlc11LogCheck_EQIccEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit

_ZN4dmlc11LogCheck_EQIccEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZN4dmlc11LogCheck_EQIccEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.q
  call void @_ZN4dmlc14LogCheckFormatIccEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %2, ptr noundef nonnull align 1 dereferenceable(1) %.4, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %.pr = load ptr, ptr %2, align 8, !tbaa !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %.not181 = icmp eq ptr %.pr, null
  br i1 %.not181, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZN4dmlc11LogCheck_EQIccEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.bj = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.r
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.bj, ptr noundef nonnull @.str.66, i32 noundef 163)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.s

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.bk = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.t ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.bl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, ptr noundef nonnull @.str.57, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.t ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.bm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, ptr noundef nonnull @.str.67, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit161 unwind label %bb.t ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit161: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bn = load ptr, ptr %2, align 8, !tbaa !85    ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !9
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !18
  %i.br = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, ptr noundef %i.bo, i64 noundef %i.bq)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.t ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit161
  %i.bs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.br, ptr noundef nonnull @.str.59, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit164 unwind label %bb.t ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit164: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.bt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.br, ptr noundef nonnull @.str.68, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit166 unwind label %bb.t ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit166: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit164
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.v unwind label %bb.s

bb.s:                                             ; preds = %.noexc, %bb.r, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit166
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit164, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit161, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.u unwind label %bb.ao

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn = phi { ptr, i32 } [ %i.bu, %bb.s ], [ %i.bv, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %.pn

bb.v:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit166
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %.pr167 = load ptr, ptr %2, align 8, !tbaa !85  ; 4 uses
  %.not.i = icmp eq ptr %.pr167, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bw = load ptr, ptr %.pr167, align 8, !tbaa !9 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.pr167, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.w
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !15
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr167, i64 noundef 32) #36
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_EQIccEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_EQIccEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.v, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.cb = getelementptr inbounds nuw i8, ptr %.3.pn, i64 2
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, %.critedge4
  %.5 = phi ptr [ %i.cb, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit ], [ %scevgep246, %.critedge4 ]
  %.not149 = icmp eq ptr %1, null
  br i1 %.not149, label %.thread170, label %bb.y

bb.y:                                             ; preds = %bb.x
  store ptr %.5, ptr %1, align 8, !tbaa !119
  br label %.thread170

.critedge4.thread:                                ; preds = %bb.m, %bb.n, %bb.o
  %.1130193.lcssa.wide.neg = phi i64 [ 0, %bb.m ], [ -1, %bb.n ], [ -2, %bb.o ]
  %.3192.lcssa = phi ptr [ %i.am, %bb.m ], [ %i.ar, %bb.n ], [ %i.av, %bb.o ]
  %i.cc = getelementptr inbounds i8, ptr %.3192.lcssa, i64 %.1130193.lcssa.wide.neg ; 3 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !15  ; 3 uses
  %i.ce = add i8 %i.cd, -48
  %i.cf = icmp ult i8 %i.ce, 10
  br i1 %i.cf, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.critedge4.thread, %.lr.ph
  %i.cg = phi i8 [ %i.cm, %.lr.ph ], [ %i.cd, %.critedge4.thread ]
  %.0124195 = phi i64 [ %i.ck, %.lr.ph ], [ 0, %.critedge4.thread ]
  %.7194 = phi ptr [ %i.cl, %.lr.ph ], [ %i.cc, %.critedge4.thread ]
  %i.ch = mul i64 %.0124195, 10
  %i.ci = zext nneg i8 %i.cg to i64
  %i.cj = add i64 %i.ch, -48
  %i.ck = add i64 %i.cj, %i.ci                    ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.7194, i64 1 ; 3 uses
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !15  ; 3 uses
  %i.cn = add i8 %i.cm, -48
  %i.co = icmp ult i8 %i.cn, 10
  br i1 %i.co, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !122

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.cp = uitofp i64 %i.ck to float
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.critedge4.thread
  %.7.lcssa = phi ptr [ %i.cc, %.critedge4.thread ], [ %i.cl, %._crit_edge.loopexit ] ; 2 uses
  %.0124.lcssa = phi float [ 0.000000e+00, %.critedge4.thread ], [ %i.cp, %._crit_edge.loopexit ] ; 3 uses
  %.lcssa = phi i8 [ %i.cd, %.critedge4.thread ], [ %i.cm, %._crit_edge.loopexit ] ; 2 uses
  %i.cq = icmp eq i8 %.lcssa, 46
  br i1 %i.cq, label %.preheader182, label %._crit_edge204

.preheader182:                                    ; preds = %._crit_edge
  %.8198 = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 1 ; 3 uses
  %i.cr = load i8, ptr %.8198, align 1, !tbaa !15 ; 3 uses
  %i.cs = add i8 %i.cr, -48
  %i.ct = icmp ult i8 %i.cs, 10
  br i1 %i.ct, label %.lr.ph203, label %._crit_edge204

.lr.ph203:                                        ; preds = %.preheader182, %bb.aa
  %i.cu = phi i8 [ %i.dc, %bb.aa ], [ %i.cr, %.preheader182 ]
  %.8202 = phi ptr [ %.8, %bb.aa ], [ %.8198, %.preheader182 ]
  %.0116201 = phi i32 [ %i.db, %bb.aa ], [ 0, %.preheader182 ] ; 2 uses
  %.0117200 = phi i64 [ %.1118, %bb.aa ], [ 0, %.preheader182 ] ; 2 uses
  %.0119199 = phi i64 [ %.1120, %bb.aa ], [ 1, %.preheader182 ] ; 2 uses
  %i.cv = icmp samesign ult i32 %.0116201, 19
  br i1 %i.cv, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph203
  %i.cw = mul i64 %.0117200, 10
  %i.cx = zext nneg i8 %i.cu to i64
  %i.cy = add i64 %i.cw, -48
  %i.cz = add i64 %i.cy, %i.cx
  %i.da = mul i64 %.0119199, 10
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph203
  %.1120 = phi i64 [ %i.da, %bb.z ], [ %.0119199, %.lr.ph203 ] ; 2 uses
  %.1118 = phi i64 [ %i.cz, %bb.z ], [ %.0117200, %.lr.ph203 ] ; 2 uses
  %i.db = add nuw nsw i32 %.0116201, 1
  %.8 = getelementptr inbounds nuw i8, ptr %.8202, i64 1 ; 3 uses
  %i.dc = load i8, ptr %.8, align 1, !tbaa !15    ; 3 uses
  %i.dd = add i8 %i.dc, -48
  %i.de = icmp ult i8 %i.dd, 10
  br i1 %i.de, label %.lr.ph203, label %._crit_edge204.loopexit, !llvm.loop !123

._crit_edge204.loopexit:                          ; preds = %bb.aa
  %i.df = uitofp i64 %.1118 to double
  %i.dg = uitofp i64 %.1120 to double
  %i.dh = fdiv double %i.df, %i.dg
  %i.di = fptrunc double %i.dh to float
  %i.dj = fadd float %.0124.lcssa, %i.di
  br label %._crit_edge204

._crit_edge204:                                   ; preds = %.preheader182, %._crit_edge204.loopexit, %._crit_edge
  %i.dk = phi i8 [ %.lcssa, %._crit_edge ], [ %i.cr, %.preheader182 ], [ %i.dc, %._crit_edge204.loopexit ] ; 2 uses
  %.9 = phi ptr [ %.7.lcssa, %._crit_edge ], [ %.8198, %.preheader182 ], [ %.8, %._crit_edge204.loopexit ] ; 3 uses
  %.0121 = phi float [ %.0124.lcssa, %._crit_edge ], [ %.0124.lcssa, %.preheader182 ], [ %i.dj, %._crit_edge204.loopexit ] ; 5 uses
  switch i8 %i.dk, label %bb.aj [
    i8 101, label %bb.ab
    i8 69, label %bb.ab
  ]

bb.ab:                                            ; preds = %._crit_edge204, %._crit_edge204
  %i.dl = getelementptr inbounds nuw i8, ptr %.9, i64 1 ; 2 uses
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !15  ; 2 uses
  %i.dn = icmp eq i8 %i.dm, 45                    ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.9, i64 2
  %i.dp = icmp eq i8 %i.dm, 43
  %i.dq = or i1 %i.dn, %i.dp
  %.10 = select i1 %i.dq, ptr %i.do, ptr %i.dl    ; 3 uses
  %i.dr = load i8, ptr %.10, align 1, !tbaa !15   ; 3 uses
  %i.ds = add i8 %i.dr, -48
  %i.dt = icmp ult i8 %i.ds, 10
  br i1 %i.dt, label %.lr.ph211, label %._crit_edge225

.lr.ph211:                                        ; preds = %bb.ab, %.lr.ph211
  %i.du = phi i8 [ %i.ea, %.lr.ph211 ], [ %i.dr, %bb.ab ]
  %.0209 = phi i32 [ %i.dy, %.lr.ph211 ], [ 0, %bb.ab ]
  %.11208 = phi ptr [ %i.dz, %.lr.ph211 ], [ %.10, %bb.ab ]
  %i.dv = mul i32 %.0209, 10
  %i.dw = zext nneg i8 %i.du to i32
  %i.dx = add i32 %i.dv, -48
  %i.dy = add i32 %i.dx, %i.dw                    ; 6 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.11208, i64 1 ; 12 uses
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !15  ; 10 uses
  %i.eb = add i8 %i.ea, -48
  %i.ec = icmp ult i8 %i.eb, 10
  br i1 %i.ec, label %.lr.ph211, label %._crit_edge212, !llvm.loop !124

._crit_edge212:                                   ; preds = %.lr.ph211
  %i.ed = icmp ugt i32 %i.dy, 38
  br i1 %i.ed, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %._crit_edge212
  %i.ee = tail call ptr @__errno_location() #40
  store i32 34, ptr %i.ee, align 4, !tbaa !118
  %.not154 = icmp eq ptr %1, null
  br i1 %.not154, label %.thread170, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store ptr %i.dz, ptr %1, align 8, !tbaa !119
  br label %.thread170

bb.ae:                                            ; preds = %._crit_edge212
  %i.ef = icmp eq i32 %i.dy, 38
  br i1 %i.ef, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.eg = fcmp ogt float %.0121, f0x4059C7DC
  %i.eh = fcmp olt float %.0121, f0x3F967699
  %or.cond = select i1 %i.dn, i1 %i.eh, i1 %i.eg
  br i1 %or.cond, label %bb.ag, label %.lr.ph218.preheader

bb.ag:                                            ; preds = %bb.af
  %i.ei = tail call ptr @__errno_location() #40
  store i32 34, ptr %i.ei, align 4, !tbaa !118
  %.not153 = icmp eq ptr %1, null
  br i1 %.not153, label %.thread170, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store ptr %i.dz, ptr %1, align 8, !tbaa !119
  br label %.thread170

bb.ai:                                            ; preds = %bb.ae
  %i.ej = icmp samesign ugt i32 %i.dy, 7
  br i1 %i.ej, label %.lr.ph218.preheader, label %.preheader

.lr.ph218.preheader:                              ; preds = %bb.af, %bb.ai
  %.1216.ph = phi i32 [ 38, %bb.af ], [ %i.dy, %bb.ai ]
  br label %.lr.ph218

.preheader:                                       ; preds = %.lr.ph218, %bb.ai
  %.0113.lcssa = phi float [ 1.000000e+00, %bb.ai ], [ %i.ek, %.lr.ph218 ] ; 2 uses
  %.1.lcssa = phi i32 [ %i.dy, %bb.ai ], [ %i.el, %.lr.ph218 ] ; 7 uses
  %.not221 = icmp eq i32 %.1.lcssa, 0
  br i1 %.not221, label %._crit_edge225, label %.lr.ph224

.lr.ph218:                                        ; preds = %.lr.ph218.preheader, %.lr.ph218
  %.1216 = phi i32 [ %i.el, %.lr.ph218 ], [ %.1216.ph, %.lr.ph218.preheader ]
  %.0113215 = phi float [ %i.ek, %.lr.ph218 ], [ 1.000000e+00, %.lr.ph218.preheader ]
  %i.ek = fmul float %.0113215, 1.000000e+08      ; 2 uses
  %i.el = add nsw i32 %.1216, -8                  ; 3 uses
  %i.em = icmp ugt i32 %i.el, 7
  br i1 %i.em, label %.lr.ph218, label %.preheader, !llvm.loop !125

.lr.ph224:                                        ; preds = %.preheader
  %i.en = fmul float %.0113.lcssa, 1.000000e+01   ; 2 uses
  %.not.a = icmp eq i32 %.1.lcssa, 1
  br i1 %.not.a, label %._crit_edge225, label %.lr.ph224.1

.lr.ph224.1:                                      ; preds = %.lr.ph224
  %i.eo = fmul float %i.en, 1.000000e+01          ; 2 uses
  %.not.1 = icmp eq i32 %.1.lcssa, 2
  br i1 %.not.1, label %._crit_edge225, label %.lr.ph224.2

.lr.ph224.2:                                      ; preds = %.lr.ph224.1
  %i.ep = fmul float %i.eo, 1.000000e+01          ; 2 uses
  %.not.2 = icmp eq i32 %.1.lcssa, 3
  br i1 %.not.2, label %._crit_edge225, label %.lr.ph224.3

.lr.ph224.3:                                      ; preds = %.lr.ph224.2
  %i.eq = fmul float %i.ep, 1.000000e+01          ; 2 uses
  %.not.3 = icmp eq i32 %.1.lcssa, 4
  br i1 %.not.3, label %._crit_edge225, label %.lr.ph224.4

.lr.ph224.4:                                      ; preds = %.lr.ph224.3
  %i.er = fmul float %i.eq, 1.000000e+01          ; 2 uses
  %.not.4 = icmp eq i32 %.1.lcssa, 5
  br i1 %.not.4, label %._crit_edge225, label %.lr.ph224.5

.lr.ph224.5:                                      ; preds = %.lr.ph224.4
  %i.es = fmul float %i.er, 1.000000e+01          ; 2 uses
  %.not.5 = icmp eq i32 %.1.lcssa, 6
  br i1 %.not.5, label %._crit_edge225, label %.lr.ph224.6

.lr.ph224.6:                                      ; preds = %.lr.ph224.5
  %i.et = fmul float %i.es, 1.000000e+01
  br label %._crit_edge225

._crit_edge225:                                   ; preds = %.lr.ph224, %.lr.ph224.1, %.lr.ph224.2, %.lr.ph224.3, %.lr.ph224.4, %.lr.ph224.5, %.lr.ph224.6, %bb.ab, %.preheader
  %.pr179261269274289 = phi i8 [ %i.ea, %.preheader ], [ %i.dr, %bb.ab ], [ %i.ea, %.lr.ph224.6 ], [ %i.ea, %.lr.ph224.5 ], [ %i.ea, %.lr.ph224.4 ], [ %i.ea, %.lr.ph224.3 ], [ %i.ea, %.lr.ph224.2 ], [ %i.ea, %.lr.ph224.1 ], [ %i.ea, %.lr.ph224 ]
  %.11.lcssa262268276288 = phi ptr [ %i.dz, %.preheader ], [ %.10, %bb.ab ], [ %i.dz, %.lr.ph224.6 ], [ %i.dz, %.lr.ph224.5 ], [ %i.dz, %.lr.ph224.4 ], [ %i.dz, %.lr.ph224.3 ], [ %i.dz, %.lr.ph224.2 ], [ %i.dz, %.lr.ph224.1 ], [ %i.dz, %.lr.ph224 ]
  %.1114.lcssa = phi float [ %.0113.lcssa, %.preheader ], [ 1.000000e+00, %bb.ab ], [ %i.en, %.lr.ph224 ], [ %i.eo, %.lr.ph224.1 ], [ %i.ep, %.lr.ph224.2 ], [ %i.eq, %.lr.ph224.3 ], [ %i.er, %.lr.ph224.4 ], [ %i.es, %.lr.ph224.5 ], [ %i.et, %.lr.ph224.6 ] ; 2 uses
  %i.eu = fdiv float %.0121, %.1114.lcssa
  %i.ev = fmul float %.0121, %.1114.lcssa
  %i.ew = select i1 %i.dn, float %i.eu, float %i.ev
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge225, %._crit_edge204
  %i.ex = phi i8 [ %.pr179261269274289, %._crit_edge225 ], [ %i.dk, %._crit_edge204 ]
  %.12 = phi ptr [ %.11.lcssa262268276288, %._crit_edge225 ], [ %.9, %._crit_edge204 ] ; 2 uses
  %.2123 = phi float [ %i.ew, %._crit_edge225 ], [ %.0121, %._crit_edge204 ] ; 2 uses
  switch i8 %i.ex, label %bb.al [
    i8 102, label %bb.ak
    i8 70, label %bb.ak
  ]

bb.ak:                                            ; preds = %bb.aj, %bb.aj
  %i.ey = getelementptr inbounds nuw i8, ptr %.12, i64 1
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak
  %.13 = phi ptr [ %i.ey, %bb.ak ], [ %.12, %bb.aj ]
  %.not155 = icmp eq ptr %1, null
  br i1 %.not155, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  store ptr %.13, ptr %1, align 8, !tbaa !119
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.ez = fneg float %.2123
  %i.fa = select i1 %.not151, float %i.ez, float %.2123
  br label %.thread170

.thread170:                                       ; preds = %bb.ag, %bb.ah, %bb.ad, %bb.ac, %bb.x, %bb.y, %bb.l, %bb.an
  %.3138 = phi float [ %i.ak, %bb.l ], [ %i.fa, %bb.an ], [ +qnan, %bb.x ], [ +qnan, %bb.y ], [ +inf, %bb.ac ], [ +inf, %bb.ad ], [ +inf, %bb.ah ], [ +inf, %bb.ag ]
  ret float %.3138

bb.ao:                                            ; preds = %bb.t
  %i.fb = landingpad { ptr, i32 }
          catch ptr null
  %i.fc = extractvalue { ptr, i32 } %i.fb, 0
  call void @__clang_call_terminate(ptr %i.fc) #39
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4dmlc14LogCheckFormatIccEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.69, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  %i.d = load i8, ptr %1, align 1, !tbaa !15      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.d, ptr %i.b, align 1, !tbaa !15
  %i.e = load ptr, ptr %3, align 8, !tbaa !57
  %i.f = getelementptr i8, ptr %i.e, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %3, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !102
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %bb.d unwind label %bb.l

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %3, i8 noundef signext %i.d)
          to label %bb.d unwind label %bb.l       ; 0 uses

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.k, %bb.b ], [ %3, %bb.c ]  ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i, ptr noundef nonnull @.str.70, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7 unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7: ; preds = %bb.d
  %i.n = load i8, ptr %2, align 1, !tbaa !15      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.n, ptr %i.a, align 1, !tbaa !15
  %i.o = load ptr, ptr %.0.i, align 8, !tbaa !57
  %i.p = getelementptr i8, ptr %i.o, i64 -24
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds i8, ptr %.0.i, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !102
  %.not.i8 = icmp eq i64 %i.t, 0
  br i1 %.not.i8, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.g unwind label %bb.l

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i, i8 noundef signext %i.n)
          to label %bb.g unwind label %bb.l       ; 0 uses

bb.g:                                             ; preds = %bb.e, %bb.f
  %.0.i9 = phi ptr [ %i.u, %bb.e ], [ %.0.i, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i9, ptr noundef nonnull @.str.71, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14 unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14: ; preds = %bb.g
  %i.x = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #38
          to label %bb.h unwind label %bb.l       ; 8 uses

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14
  call void @llvm.experimental.noalias.scope.decl(metadata !126)
  call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 4 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !16, !alias.scope !132
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 0, ptr %i.z, align 8, !tbaa !18, !alias.scope !132
  store i8 0, ptr %i.y, align 8, !tbaa !15, !alias.scope !132
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !97, !noalias !132 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.ab, null
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !132 ; 2 uses
  %i.ae = icmp ugt ptr %i.ab, %i.ad
  %.08.i.i.i = select i1 %i.ae, ptr %i.ab, ptr %i.ad ; 2 uses
end_hunk_0
