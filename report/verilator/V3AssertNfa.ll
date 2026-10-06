Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3AssertNfa?download=true
inline.NumInlined: 4685
inline.NumDeleted: 1487
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN12_GLOBAL__N_114SvaNfaLowering5lowerEP8FileLineRNS_8SvaGraphEP11AstNodeExprP10AstSenTreeS6_bS6_bPS6_P6AstVarSB_PSt6vectorIS6_SaIS6_EESF_11VAssertType20VAssertDirectiveType:._crit_edge.i.i

_ZNSt10unique_ptrIN12_GLOBAL__N_113SvaVertexDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_113SvaVertexDataEEclEPS1_.exit.i.i.i.i, %bb.p
  %.val313 = phi ptr [ %.val313.pre, %_ZNKSt14default_deleteIN12_GLOBAL__N_113SvaVertexDataEEclEPS1_.exit.i.i.i.i ], [ %i.cc, %bb.p ]
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01211.04001, i64 %indvars.iv
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !317
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 72
  store ptr %.val313, ptr %i.ch, align 8, !tbaa !28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ab
  br i1 %exitcond.not, label %.lr.ph2551, label %bb.o, !llvm.loop !529

bb.q:                                             ; preds = %bb.o
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.yw

._crit_edge2552:                                  ; preds = %._crit_edge2549, %.preheader.thread
  %i.cj = phi ptr [ %i.bu, %.preheader.thread ], [ %i.bz, %._crit_edge2549 ]
  %i.ck = phi ptr [ %i.bv, %.preheader.thread ], [ %i.ca, %._crit_edge2549 ]
  %i.cl = load ptr, ptr %0, align 8, !tbaa !128
  %i.cm = invoke noundef ptr @_ZNK7AstNode14findBasicDTypeE14VBasicDTypeKwd(ptr noundef nonnull align 8 dereferenceable(152) %i.cl, i8 25)
          to label %bb.t unwind label %bb.ac      ; 2 uses

.lr.ph2551:                                       ; preds = %_ZNSt10unique_ptrIN12_GLOBAL__N_113SvaVertexDataESt14default_deleteIS1_EED2Ev.exit, %._crit_edge2549
  %indvars.iv3635 = phi i64 [ %indvars.iv.next3636, %._crit_edge2549 ], [ 0, %_ZNSt10unique_ptrIN12_GLOBAL__N_113SvaVertexDataESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01211.04001, i64 %indvars.iv3635
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !317
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !599 ; 2 uses
  %.not12262545 = icmp eq ptr %i.cq, null
  br i1 %.not12262545, label %._crit_edge2549, label %.lr.ph2548

._crit_edge2549:                                  ; preds = %_ZN6V3ListI11V3GraphEdgeXadL_ZNS0_6oLinksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit, %.lr.ph2551
  %indvars.iv.next3636 = add nuw nsw i64 %indvars.iv3635, 1 ; 2 uses
  %exitcond3639.not = icmp eq i64 %indvars.iv.next3636, %i.ab
  br i1 %exitcond3639.not, label %._crit_edge2552, label %.lr.ph2551, !llvm.loop !530

.lr.ph2548:                                       ; preds = %.lr.ph2551, %_ZN6V3ListI11V3GraphEdgeXadL_ZNS0_6oLinksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit
  %.sroa.01195.02546 = phi ptr [ %i.cs, %_ZN6V3ListI11V3GraphEdgeXadL_ZNS0_6oLinksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit ], [ %i.cq, %.lr.ph2551 ] ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.01195.02546, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !593 ; 3 uses
  %.not.i282 = icmp eq ptr %i.cs, null            ; 2 uses
  %i.ct = select i1 %.not.i282, ptr %.sroa.01195.02546, ptr %i.cs
  call void @llvm.prefetch.p0(ptr nonnull %i.ct, i32 1, i32 3, i32 1)
  %i.cu = getelementptr i8, ptr %.sroa.01195.02546, i64 48
  %.val315 = load ptr, ptr %i.cu, align 8, !tbaa !600 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.val315, i64 64
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !325 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.01195.02546, i64 80
  %i.cy = load i8, ptr %i.cx, align 8, !tbaa !313, !range !76, !noundef !77
  %i.cz = trunc nuw i8 %i.cy to i1
  %.not253 = icmp ne i32 %i.cw, %i.as
  %or.cond.not = and i1 %.not253, %i.cz
  br i1 %or.cond.not, label %bb.r, label %_ZN6V3ListI11V3GraphEdgeXadL_ZNS0_6oLinksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit

bb.r:                                             ; preds = %.lr.ph2548
  %i.da = getelementptr inbounds nuw i8, ptr %.val315, i64 160
  %i.db = load i8, ptr %i.da, align 8, !tbaa !333, !range !76, !noundef !77
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %_ZN6V3ListI11V3GraphEdgeXadL_ZNS0_6oLinksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dd = sext i32 %i.cw to i64
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01211.04001, i64 %i.dd
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !317
  %i.dg = getelementptr i8, ptr %i.df, i64 72
  %.val324 = load ptr, ptr %i.dg, align 8, !tbaa !28
  %i.dh = getelementptr inbounds nuw i8, ptr %.val324, i64 48
  store i8 1, ptr %i.dh, align 8, !tbaa !602
  br label %_ZN6V3ListI11V3GraphEdgeXadL_ZNS0_6oLinksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit

_ZN6V3ListI11V3GraphEdgeXadL_ZNS0_6oLinksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit: ; preds = %.lr.ph2548, %bb.r, %bb.s
  br i1 %.not.i282, label %._crit_edge2549, label %.lr.ph2548

bb.t:                                             ; preds = %._crit_edge2552
  %i.di = invoke noalias noundef nonnull dereferenceable(280) ptr @_Znwm(i64 noundef 280) #31
          to label %bb.u unwind label %bb.ad      ; 6 uses

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !603)
  %i.dj = load ptr, ptr %39, align 8, !tbaa !26, !noalias !603
  %i.dk = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 4 uses
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !27, !noalias !603 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 7 uses
  store ptr %i.dm, ptr %42, align 8, !tbaa !29, !alias.scope !604
  %i.dn = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 3 uses
  store i64 0, ptr %i.dn, align 8, !tbaa !27, !alias.scope !604
  store i8 0, ptr %i.dm, align 8, !tbaa !28, !alias.scope !604
  %i.do = add i64 %i.dl, 6
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %42, i64 noundef %i.do)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dp = load i64, ptr %i.dn, align 8, !tbaa !27, !alias.scope !604
  %i.dq = sub i64 4611686018427387903, %i.dp
  %i.dr = icmp ult i64 %i.dq, %i.dl
  br i1 %i.dr, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.v
  %i.ds = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %42, ptr noundef %i.dj, i64 noundef %i.dl)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.w ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.dt = load i64, ptr %i.dn, align 8, !tbaa !27, !alias.scope !604
  %i.du = add i64 %i.dt, -4611686018427387898
  %i.dv = icmp ult i64 %i.du, 6
  br i1 %i.dv, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #30
          to label %.cont.i.i unwind label %bb.w

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.dw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %42, ptr noundef nonnull @.str.586, i64 noundef 6)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.w ; 0 uses

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.u
  %i.dx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dy = load ptr, ptr %42, align 8, !tbaa !26, !alias.scope !604 ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.dm
  br i1 %i.dz, label %.body339, label %.body339.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  invoke void @_ZN6AstVarC2EP8FileLine8VVarTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP12AstNodeDType(ptr noundef nonnull align 8 dereferenceable(280) %i.di, ptr noundef %1, i8 17, ptr noundef nonnull align 8 dereferenceable(32) %42, ptr noundef %i.cm)
          to label %bb.x unwind label %bb.ae

bb.x:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.ea = load ptr, ptr %42, align 8, !tbaa !26   ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.dm
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341: ; preds = %bb.x
  %i.ec = load i64, ptr %i.dm, align 8, !tbaa !28
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ed) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #26
  %i.ee = getelementptr inbounds nuw i8, ptr %i.di, i64 251
  store i8 3, ptr %i.ee, align 1, !tbaa !260
  %i.ef = load ptr, ptr %0, align 8, !tbaa !128
  invoke void @_ZN7AstNode7addOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(306) %i.ef, ptr noundef nonnull %i.di)
          to label %_ZN13AstNodeModule9addStmtspEP7AstNode.exit.preheader unwind label %bb.ad

_ZN13AstNodeModule9addStmtspEP7AstNode.exit.preheader: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343
  br i1 %.not12202537, label %_ZN13AstNodeModule9addStmtspEP7AstNode.exit._crit_edge, label %.lr.ph2555

.lr.ph2555:                                       ; preds = %_ZN13AstNodeModule9addStmtspEP7AstNode.exit.preheader
  %i.eg = getelementptr inbounds nuw i8, ptr %54, i64 16 ; 9 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %54, i64 8 ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %55, i64 16 ; 7 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %55, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 10 uses
  %i.el = getelementptr inbounds nuw i8, ptr %53, i64 8 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 9 uses
  %i.en = getelementptr inbounds nuw i8, ptr %49, i64 8 ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %50, i64 16 ; 7 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %50, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 10 uses
  %i.er = getelementptr inbounds nuw i8, ptr %48, i64 8 ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %51, i64 16 ; 7 uses
  %i.et = getelementptr inbounds nuw i8, ptr %51, i64 8 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 7 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %52, i64 8 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 9 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 7 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 10 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 7 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %46, i64 8 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 7 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %47, i64 8 ; 3 uses
  %i.fg = zext i32 %i.af to i64
  br label %bb.af

_ZN13AstNodeModule9addStmtspEP7AstNode.exit._crit_edge: ; preds = %_ZN13AstNodeModule9addStmtspEP7AstNode.exit, %_ZN13AstNodeModule9addStmtspEP7AstNode.exit.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #26
  store ptr %1, ptr %56, align 8, !tbaa !341
  %i.fh = getelementptr inbounds nuw i8, ptr %56, i64 8
  store i32 %.0143.lcssa39903999, ptr %i.fh, align 8, !tbaa !605
  %i.fi = getelementptr inbounds nuw i8, ptr %56, i64 16 ; 21 uses
  %i.fj = ptrtoint ptr %.0.i.i.i.i.i.i.i4005 to i64
  %i.fk = ptrtoint ptr %.sroa.01211.04001 to i64  ; 2 uses
  %i.fl = sub i64 %i.fj, %i.fk                    ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fi, i8 0, i64 24, i1 false)
  %.not.i.i.i.i346 = icmp eq ptr %.0.i.i.i.i.i.i.i4005, %.sroa.01211.04001
  br i1 %.not.i.i.i.i346, label %.thread, label %bb.y

.thread:                                          ; preds = %_ZN13AstNodeModule9addStmtspEP7AstNode.exit._crit_edge
  %i.fm = getelementptr inbounds nuw i8, ptr %56, i64 24
  %i.fn = getelementptr inbounds i8, ptr null, i64 %i.fl ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %56, i64 32 ; 2 uses
  store i64 0, ptr %i.fi, align 8
  store ptr %i.fn, ptr %i.fo, align 8, !tbaa !342
  br label %bb.dv

bb.y:                                             ; preds = %_ZN13AstNodeModule9addStmtspEP7AstNode.exit._crit_edge
  %i.fp = icmp ugt i64 %i.fl, 9223372036854775800
  br i1 %i.fp, label %.noexc.i.i, label %_ZNSt15__new_allocatorIPN12_GLOBAL__N_114SvaStateVertexEE8allocateEmPKv.exit.i.i.i.i, !prof !20

.noexc.i.i:                                       ; preds = %bb.y
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #30
          to label %.noexc347 unwind label %bb.xf

.noexc347:                                        ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIPN12_GLOBAL__N_114SvaStateVertexEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.y
  %i.fq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fl) #31
          to label %.noexc348 unwind label %bb.xf ; 8 uses

.noexc348:                                        ; preds = %_ZNSt15__new_allocatorIPN12_GLOBAL__N_114SvaStateVertexEE8allocateEmPKv.exit.i.i.i.i
  store ptr %i.fq, ptr %i.fi, align 8, !tbaa !343
  %i.fr = getelementptr inbounds nuw i8, ptr %56, i64 24 ; 4 uses
  store ptr %i.fq, ptr %i.fr, align 8, !tbaa !344
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fl ; 4 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %56, i64 32 ; 4 uses
  store ptr %i.fs, ptr %i.ft, align 8, !tbaa !342
  %i.fu = icmp samesign ugt i64 %i.fl, 8
  br i1 %i.fu, label %bb.z, label %bb.aa, !prof !345

bb.z:                                             ; preds = %.noexc348
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fq, ptr align 8 %.sroa.01211.04001, i64 %i.fl, i1 false)
  br label %bb.dv

bb.aa:                                            ; preds = %.noexc348
  %i.fv = icmp eq i64 %i.fl, 8
  br i1 %i.fv, label %bb.ab, label %bb.dv

bb.ab:                                            ; preds = %bb.aa
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.01211.04001, align 8, !tbaa !317
  store ptr %.val.i.i.i.i.i.i.i.i.i, ptr %i.fq, align 8, !tbaa !317
  br label %bb.dv

bb.ac:                                            ; preds = %._crit_edge2552
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.yw

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343, %bb.t
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %bb.yw

bb.ae:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.fy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fz = load ptr, ptr %42, align 8, !tbaa !26   ; 2 uses
  %i.ga = icmp eq ptr %i.fz, %i.dm
  br i1 %i.ga, label %.body339, label %.body339.sink.split

.body339.sink.split:                              ; preds = %bb.ae, %bb.w
  %.sink = phi ptr [ %i.dy, %bb.w ], [ %i.fz, %bb.ae ]
  %.pn199.ph = phi { ptr, i32 } [ %i.dx, %bb.w ], [ %i.fy, %bb.ae ]
  %i.gb = load i64, ptr %i.dm, align 8, !tbaa !28
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.gc) #27
  br label %.body339

.body339:                                         ; preds = %.body339.sink.split, %bb.ae, %bb.w
  %.pn199 = phi { ptr, i32 } [ %i.dx, %bb.w ], [ %i.fy, %bb.ae ], [ %.pn199.ph, %.body339.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #26
  call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef 280) #27
  br label %bb.yw

bb.af:                                            ; preds = %.lr.ph2555, %_ZN13AstNodeModule9addStmtspEP7AstNode.exit
  %indvars.iv3640 = phi i64 [ 0, %.lr.ph2555 ], [ %indvars.iv.next3641, %_ZN13AstNodeModule9addStmtspEP7AstNode.exit ] ; 15 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01211.04001, i64 %indvars.iv3640 ; 6 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !317 ; 4 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 121
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !306, !range !76, !noundef !77
  %i.gh = trunc nuw i8 %i.gg to i1
  br i1 %i.gh, label %bb.ag, label %bb.bn

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !606)
  %i.gi = load ptr, ptr %39, align 8, !tbaa !26, !noalias !606
  %i.gj = load i64, ptr %i.dk, align 8, !tbaa !27, !noalias !606 ; 3 uses
  store ptr %i.ew, ptr %44, align 8, !tbaa !29, !alias.scope !607
  store i64 0, ptr %i.ex, align 8, !tbaa !27, !alias.scope !607
  store i8 0, ptr %i.ew, align 8, !tbaa !28, !alias.scope !607
  %i.gk = add i64 %i.gj, 3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %44, i64 noundef %i.gk)
          to label %bb.ah unwind label %.loopexit1293

bb.ah:                                            ; preds = %bb.ag
  %i.gl = load i64, ptr %i.ex, align 8, !tbaa !27, !alias.scope !607
  %i.gm = sub i64 4611686018427387903, %i.gl
  %i.gn = icmp ult i64 %i.gm, %i.gj
  br i1 %i.gn, label %.invoke.i.i358, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i355

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i355: ; preds = %bb.ah
  %i.go = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %44, ptr noundef %i.gi, i64 noundef %i.gj)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i356 unwind label %.loopexit1293 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i356: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i355
  %i.gp = load i64, ptr %i.ex, align 8, !tbaa !27, !alias.scope !607
  %i.gq = add i64 %i.gp, -4611686018427387901
  %i.gr = icmp ult i64 %i.gq, 3
  br i1 %i.gr, label %.invoke.i.i358, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i357

.invoke.i.i358:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i356, %bb.ah
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #30
          to label %.cont.i.i359 unwind label %.loopexit.split-lp1294

.cont.i.i359:                                     ; preds = %.invoke.i.i358
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i357: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i356
  %i.gs = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %44, ptr noundef nonnull @.str.587, i64 noundef 3)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit362 unwind label %.loopexit1293 ; 0 uses

.loopexit1293:                                    ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i355, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i357
  %lpad.loopexit1295 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit.split-lp1294:                           ; preds = %.invoke.i.i358
  %lpad.loopexit.split-lp1296 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ai:                                            ; preds = %.loopexit.split-lp1294, %.loopexit1293
  %lpad.phi1297 = phi { ptr, i32 } [ %lpad.loopexit1295, %.loopexit1293 ], [ %lpad.loopexit.split-lp1296, %.loopexit.split-lp1294 ] ; 2 uses
  %i.gt = load ptr, ptr %44, align 8, !tbaa !26, !alias.scope !607 ; 2 uses
  %i.gu = icmp eq ptr %i.gt, %i.ew
  br i1 %i.gu, label %.body360, label %.body360.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit362: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i357
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !608)
  %i.gv = icmp samesign ult i64 %indvars.iv3640, 10
  br i1 %i.gv, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit362
  %i.gw = trunc nuw nsw i64 %indvars.iv3640 to i32
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.ao
  %.030.i.i = phi i32 [ %i.he, %bb.ao ], [ 1, %.lr.ph.i.i.preheader ] ; 4 uses
  %.02329.i.i = phi i32 [ %i.hd, %bb.ao ], [ %i.gw, %.lr.ph.i.i.preheader ] ; 5 uses
  %i.gx = icmp samesign ult i32 %.02329.i.i, 100
  br i1 %i.gx, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.lr.ph.i.i
  %i.gy = add i32 %.030.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.ak:                                            ; preds = %.lr.ph.i.i
  %i.gz = icmp samesign ult i32 %.02329.i.i, 1000
  br i1 %i.gz, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ha = add i32 %.030.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.am:                                            ; preds = %bb.ak
  %i.hb = icmp samesign ult i32 %.02329.i.i, 10000
  br i1 %i.hb, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.hc = add i32 %.030.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.ao:                                            ; preds = %bb.am
  %i.hd = udiv i32 %.02329.i.i, 10000
  %i.he = add i32 %.030.i.i, 4                    ; 2 uses
  %i.hf = icmp samesign ult i32 %.02329.i.i, 100000
  br i1 %i.hf, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !6

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.ao, %bb.an, %bb.al, %bb.aj, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit362
  %.022.i.i = phi i32 [ %i.hc, %bb.an ], [ %i.gy, %bb.aj ], [ %i.ha, %bb.al ], [ 1, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit362 ], [ %i.he, %bb.ao ] ; 2 uses
  %i.hg = zext i32 %.022.i.i to i64
  store ptr %i.ey, ptr %45, align 8, !tbaa !29, !alias.scope !608
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %45, i64 noundef %i.hg, i8 noundef signext 45)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i unwind label %bb.ar

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.hh = load ptr, ptr %45, align 8, !tbaa !26, !alias.scope !608 ; 4 uses
  %i.hi = icmp samesign ugt i64 %indvars.iv3640, 99
  %i.hj = trunc nuw nsw i64 %indvars.iv3640 to i32 ; 2 uses
  br i1 %i.hi, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i363

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %i.hk = add i32 %.022.i.i, -1
  br label %.lr.ph.i11.i

.lr.ph.i11.i:                                     ; preds = %.lr.ph.i11.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i32 [ %i.hn, %.lr.ph.i11.i ], [ %i.hj, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.hy, %.lr.ph.i11.i ], [ %i.hk, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.hl = urem i32 %.020.i.i, 100
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_114SvaNfaLowering5lowerEP8FileLineRNS_8SvaGraphEP11AstNodeExprP10AstSenTreeS6_bS6_bPS6_P6AstVarSB_PSt6vectorIS6_SaIS6_EESF_11VAssertType20VAssertDirectiveType:._crit_edge.i.i
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i570: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i569, %bb.dk
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xh, i64 8 ; 2 uses
  %i.xr = load i64, ptr %i.xq, align 8, !tbaa !27
  store i64 %i.xr, ptr %i.el, align 8, !tbaa !27, !alias.scope !629
  store ptr %i.xj, ptr %i.xh, align 8, !tbaa !26
  store i64 0, ptr %i.xq, align 8, !tbaa !27
  store i8 0, ptr %i.xj, align 8, !tbaa !28
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit576

bb.dl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i566, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i561
  %i.xs = sub i64 4611686018427387903, %i.wt
  %i.xt = icmp ult i64 %i.xs, %i.wu
  br i1 %i.xt, label %bb.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i562

bb.dm:                                            ; preds = %bb.dl
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #30
          to label %.noexc574 unwind label %.loopexit.split-lp1269

.noexc574:                                        ; preds = %bb.dm
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i562: ; preds = %bb.dl
  %i.xu = load ptr, ptr %55, align 8, !tbaa !26, !noalias !629
  %i.xv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %54, ptr noundef %i.xu, i64 noundef %i.wu)
          to label %.noexc575 unwind label %.loopexit1268 ; 5 uses

.noexc575:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i562
  store ptr %i.ek, ptr %53, align 8, !tbaa !29, !alias.scope !629
  %i.xw = load ptr, ptr %i.xv, align 8, !tbaa !26 ; 2 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xv, i64 16 ; 5 uses
  %i.xy = icmp eq ptr %i.xw, %i.xx
  br i1 %i.xy, label %bb.dn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i563

bb.dn:                                            ; preds = %.noexc575
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xv, i64 8
  %i.ya = load i64, ptr %i.xz, align 8, !tbaa !27 ; 2 uses
  %i.yb = icmp ult i64 %i.ya, 16
  call void @llvm.assume(i1 %i.yb)
  %i.yc = add nuw nsw i64 %i.ya, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ek, ptr noundef nonnull align 8 dereferenceable(1) %i.xx, i64 %i.yc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i564

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i563: ; preds = %.noexc575
  store ptr %i.xw, ptr %53, align 8, !tbaa !26, !alias.scope !629
  %i.yd = load i64, ptr %i.xx, align 8, !tbaa !28
  store i64 %i.yd, ptr %i.ek, align 8, !tbaa !28, !alias.scope !629
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i564

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i564: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i563, %bb.dn
  %i.ye = getelementptr inbounds nuw i8, ptr %i.xv, i64 8 ; 2 uses
  %i.yf = load i64, ptr %i.ye, align 8, !tbaa !27
  store i64 %i.yf, ptr %i.el, align 8, !tbaa !27, !alias.scope !629
  store ptr %i.xx, ptr %i.xv, align 8, !tbaa !26
  store i64 0, ptr %i.ye, align 8, !tbaa !27
  store i8 0, ptr %i.xx, align 8, !tbaa !28
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit576

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit576: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i564, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i570
  %i.yg = load ptr, ptr %55, align 8, !tbaa !26   ; 2 uses
  %i.yh = icmp eq ptr %i.yg, %i.ei
  br i1 %i.yh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit579, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i577

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i577: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit576
  %i.yi = load i64, ptr %i.ei, align 8, !tbaa !28
  %i.yj = add i64 %i.yi, 1
  call void @_ZdlPvm(ptr noundef %i.yg, i64 noundef %i.yj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit579

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit579: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit576, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i577
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #26
  %i.yk = load ptr, ptr %54, align 8, !tbaa !26   ; 2 uses
  %i.yl = icmp eq ptr %i.yk, %i.eg
  br i1 %i.yl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit582, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i580

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i580: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit579
  %i.ym = load i64, ptr %i.eg, align 8, !tbaa !28
  %i.yn = add i64 %i.ym, 1
  call void @_ZdlPvm(ptr noundef %i.yk, i64 noundef %i.yn) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit582

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit582: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit579, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i580
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #26
  %i.yo = invoke noalias noundef nonnull dereferenceable(280) ptr @_Znwm(i64 noundef 280) #31
          to label %bb.do unwind label %bb.ds     ; 5 uses

bb.do:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit582
  %i.yp = load ptr, ptr %0, align 8, !tbaa !128
  %i.yq = invoke noundef ptr @_ZNK7AstNode14findBasicDTypeE14VBasicDTypeKwd(ptr noundef nonnull align 8 dereferenceable(152) %i.yp, i8 1)
          to label %_ZNK7AstNode12findBitDTypeEv.exit584 unwind label %bb.dt

_ZNK7AstNode12findBitDTypeEv.exit584:             ; preds = %bb.do
  invoke void @_ZN6AstVarC2EP8FileLine8VVarTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP12AstNodeDType(ptr noundef nonnull align 8 dereferenceable(280) %i.yo, ptr noundef %1, i8 17, ptr noundef nonnull align 8 dereferenceable(32) %53, ptr noundef %i.yq)
          to label %bb.dp unwind label %bb.dt

bb.dp:                                            ; preds = %_ZNK7AstNode12findBitDTypeEv.exit584
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yo, i64 251
  store i8 3, ptr %i.yr, align 1, !tbaa !260
  %i.ys = load ptr, ptr %0, align 8, !tbaa !128
  invoke void @_ZN7AstNode7addOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(306) %i.ys, ptr noundef nonnull %i.yo)
          to label %bb.dq unwind label %bb.ds

bb.dq:                                            ; preds = %bb.dp
  %i.yt = load ptr, ptr %i.gd, align 8, !tbaa !317
  %i.yu = getelementptr i8, ptr %i.yt, i64 72
  %.val318 = load ptr, ptr %i.yu, align 8, !tbaa !28
  store ptr %i.yo, ptr %.val318, align 8, !tbaa !630
  %i.yv = load ptr, ptr %53, align 8, !tbaa !26   ; 2 uses
  %i.yw = icmp eq ptr %i.yv, %i.ek
  br i1 %i.yw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit590, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i588

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i588: ; preds = %bb.dq
  %i.yx = load i64, ptr %i.ek, align 8, !tbaa !28
  %i.yy = add i64 %i.yx, 1
  call void @_ZdlPvm(ptr noundef %i.yv, i64 noundef %i.yy) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit590

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit590: ; preds = %bb.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i588
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #26
  br label %_ZN13AstNodeModule9addStmtspEP7AstNode.exit

_ZN13AstNodeModule9addStmtspEP7AstNode.exit:      ; preds = %bb.cw, %bb.cv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit590, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit518, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415
  %indvars.iv.next3641 = add nuw nsw i64 %indvars.iv3640, 1 ; 2 uses
  %exitcond3644.not = icmp eq i64 %indvars.iv.next3641, %i.ab
  br i1 %exitcond3644.not, label %_ZN13AstNodeModule9addStmtspEP7AstNode.exit._crit_edge, label %bb.af, !llvm.loop !575

.loopexit1268:                                    ; preds = %.critedge.i568, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i562
  %lpad.loopexit1270 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dr

.loopexit.split-lp1269:                           ; preds = %bb.dm
  %lpad.loopexit.split-lp1271 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dr

bb.dr:                                            ; preds = %.loopexit.split-lp1269, %.loopexit1268
  %lpad.phi1272 = phi { ptr, i32 } [ %lpad.loopexit1270, %.loopexit1268 ], [ %lpad.loopexit.split-lp1271, %.loopexit.split-lp1269 ] ; 2 uses
  %i.yz = load ptr, ptr %55, align 8, !tbaa !26   ; 2 uses
  %i.za = icmp eq ptr %i.yz, %i.ei
  br i1 %i.za, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit593, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i591

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i591: ; preds = %bb.dr
  %i.zb = load i64, ptr %i.ei, align 8, !tbaa !28
  %i.zc = add i64 %i.zb, 1
  call void @_ZdlPvm(ptr noundef %i.yz, i64 noundef %i.zc) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit593

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit593: ; preds = %bb.dr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i591
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #26
  %i.zd = load ptr, ptr %54, align 8, !tbaa !26   ; 2 uses
  %i.ze = icmp eq ptr %i.zd, %i.eg
  br i1 %i.ze, label %.body542, label %.body542.sink.split

.body542.sink.split:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit593, %bb.cz
  %.sink6162 = phi ptr [ %i.va, %bb.cz ], [ %i.zd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit593 ]
  %.pn225.ph = phi { ptr, i32 } [ %lpad.phi1267, %bb.cz ], [ %lpad.phi1272, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit593 ]
  %i.zf = load i64, ptr %i.eg, align 8, !tbaa !28
  %i.zg = add i64 %i.zf, 1
  call void @_ZdlPvm(ptr noundef %.sink6162, i64 noundef %i.zg) #27
  br label %.body542

.body542:                                         ; preds = %.body542.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit593, %bb.cz
  %.pn225 = phi { ptr, i32 } [ %lpad.phi1267, %bb.cz ], [ %lpad.phi1272, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit593 ], [ %.pn225.ph, %.body542.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit599

bb.ds:                                            ; preds = %bb.dp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit582
  %i.zh = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

bb.dt:                                            ; preds = %bb.do, %_ZNK7AstNode12findBitDTypeEv.exit584
  %i.zi = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.yo, i64 noundef 280) #27
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %.pn227 = phi { ptr, i32 } [ %i.zh, %bb.ds ], [ %i.zi, %bb.dt ] ; 2 uses
  %i.zj = load ptr, ptr %53, align 8, !tbaa !26   ; 2 uses
  %i.zk = icmp eq ptr %i.zj, %i.ek
  br i1 %i.zk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit599, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i597

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i597: ; preds = %bb.du
  %i.zl = load i64, ptr %i.ek, align 8, !tbaa !28
  %i.zm = add i64 %i.zl, 1
  call void @_ZdlPvm(ptr noundef %i.zj, i64 noundef %i.zm) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit599

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit599: ; preds = %bb.du, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i597, %.body542
  %.pn227.pn = phi { ptr, i32 } [ %.pn225, %.body542 ], [ %.pn227, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i597 ], [ %.pn227, %bb.du ]
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #26
  br label %bb.yw

bb.dv:                                            ; preds = %bb.ab, %bb.aa, %bb.z, %.thread
  %i.zn = phi ptr [ %i.ft, %bb.z ], [ %i.ft, %bb.aa ], [ %i.ft, %bb.ab ], [ %i.fo, %.thread ]
  %i.zo = phi ptr [ %i.fs, %bb.z ], [ %i.fs, %bb.aa ], [ %i.fs, %bb.ab ], [ %i.fn, %.thread ]
  %i.zp = phi ptr [ %i.fr, %bb.z ], [ %i.fr, %bb.aa ], [ %i.fr, %bb.ab ], [ %i.fm, %.thread ]
  %.val204.i = phi ptr [ %i.fq, %bb.z ], [ %i.fq, %bb.aa ], [ %i.fq, %bb.ab ], [ null, %.thread ] ; 8 uses
  store ptr %i.zo, ptr %i.zp, align 8, !tbaa !344
  %i.zq = getelementptr inbounds nuw i8, ptr %56, i64 40 ; 6 uses
  %i.zr = ptrtoint ptr %.sroa.8.3 to i64
  %i.zs = ptrtoint ptr %.sroa.01203.4 to i64      ; 2 uses
  %i.zt = sub i64 %i.zr, %i.zs                    ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.zq, i8 0, i64 24, i1 false)
  %.not.i.i.i.i600 = icmp eq ptr %.sroa.8.3, %.sroa.01203.4
  br i1 %.not.i.i.i.i600, label %.thread1.i, label %bb.dw

.thread1.i:                                       ; preds = %bb.dv
  %i.zu = getelementptr inbounds nuw i8, ptr %56, i64 48
  %i.zv = getelementptr inbounds i8, ptr null, i64 %i.zt ; 2 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %56, i64 56
  store ptr %i.zv, ptr %i.zw, align 8, !tbaa !631
  br label %bb.eb

bb.dw:                                            ; preds = %bb.dv
  %i.zx = icmp ugt i64 %i.zt, 9223372036854775800
  br i1 %i.zx, label %.noexc.i.i602, label %bb.dx, !prof !20

.noexc.i.i602:                                    ; preds = %bb.dw
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #30
          to label %.noexc603 unwind label %bb.xg

.noexc603:                                        ; preds = %.noexc.i.i602
  unreachable

bb.dx:                                            ; preds = %bb.dw
  %i.zy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zt) #31
          to label %.noexc604 unwind label %bb.xg ; 5 uses

.noexc604:                                        ; preds = %bb.dx
  store ptr %i.zy, ptr %i.zq, align 8, !tbaa !632
  %i.zz = getelementptr inbounds nuw i8, ptr %56, i64 48 ; 4 uses
  store ptr %i.zy, ptr %i.zz, align 8, !tbaa !633
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zy, i64 %i.zt ; 4 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %56, i64 56
  store ptr %i.aaa, ptr %i.aab, align 8, !tbaa !631
  %i.aac = icmp samesign ugt i64 %i.zt, 8
  br i1 %i.aac, label %bb.dy, label %bb.dz, !prof !345

bb.dy:                                            ; preds = %.noexc604
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.zy, ptr align 8 %.sroa.01203.4, i64 %i.zt, i1 false)
  br label %bb.eb

bb.dz:                                            ; preds = %.noexc604
  %i.aad = icmp eq i64 %i.zt, 8
  br i1 %i.aad, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %.val.i.i.i.i.i.i.i.i.i601 = load ptr, ptr %.sroa.01203.4, align 8, !tbaa !595
  store ptr %.val.i.i.i.i.i.i.i.i.i601, ptr %i.zy, align 8, !tbaa !595
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz, %bb.dy, %.thread1.i
  %i.aae = phi ptr [ %i.aaa, %bb.ea ], [ %i.aaa, %bb.dz ], [ %i.aaa, %bb.dy ], [ %i.zv, %.thread1.i ]
  %i.aaf = phi ptr [ %i.zz, %bb.ea ], [ %i.zz, %bb.dz ], [ %i.zz, %bb.dy ], [ %i.zu, %.thread1.i ]
  store ptr %i.aae, ptr %i.aaf, align 8, !tbaa !633
  %i.aag = getelementptr inbounds nuw i8, ptr %56, i64 64
  store i32 %i.af, ptr %i.aag, align 8, !tbaa !634
  %i.aah = getelementptr inbounds nuw i8, ptr %56, i64 68
  store i32 %i.as, ptr %i.aah, align 4, !tbaa !635
  %i.aai = getelementptr inbounds nuw i8, ptr %56, i64 72
  store ptr %4, ptr %i.aai, align 8, !tbaa !636
  %i.aaj = getelementptr inbounds nuw i8, ptr %56, i64 80 ; 2 uses
  store ptr %7, ptr %i.aaj, align 8, !tbaa !637
  %i.aak = getelementptr inbounds nuw i8, ptr %56, i64 88
  store ptr %5, ptr %i.aak, align 8, !tbaa !638
  %i.aal = getelementptr inbounds nuw i8, ptr %56, i64 96
  store ptr %10, ptr %i.aal, align 8, !tbaa !639
  %i.aam = getelementptr inbounds nuw i8, ptr %56, i64 104
  store ptr %11, ptr %i.aam, align 8, !tbaa !640
  %i.aan = getelementptr inbounds nuw i8, ptr %56, i64 112
  store i8 %14, ptr %i.aan, align 8, !tbaa !208
  %i.aao = getelementptr inbounds nuw i8, ptr %56, i64 113
  store i8 %15, ptr %i.aao, align 1, !tbaa !209
  %i.aap = getelementptr inbounds nuw i8, ptr %56, i64 120
  store ptr %i.di, ptr %i.aap, align 8, !tbaa !347
  %i.aaq = getelementptr inbounds nuw i8, ptr %56, i64 128
  store ptr %2, ptr %i.aaq, align 8, !tbaa !188
  %i.aar = invoke noundef ptr @_ZN7AstNode9cloneTreeEbb(ptr noundef nonnull align 8 dereferenceable(152) %3, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %.noexc617 unwind label %.loopexit.split-lp1238.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc617:                                        ; preds = %bb.eb
  %i.aas = sext i32 %i.af to i64
  %i.aat = getelementptr inbounds nuw [8 x i8], ptr %.val204.i, i64 %i.aas
  %i.aau = load ptr, ptr %i.aat, align 8, !tbaa !317
  %i.aav = getelementptr i8, ptr %i.aau, i64 72
  %.val231.i = load ptr, ptr %i.aav, align 8, !tbaa !28
  %i.aaw = getelementptr inbounds nuw i8, ptr %.val231.i, i64 40
  store ptr %i.aar, ptr %i.aaw, align 8, !tbaa !641
  br i1 %.not12202537, label %_ZN12_GLOBAL__N_114SvaNfaLowering27emitAndCombinerDoneLatchNbaERNS0_8LowerCtxE.exit, label %.lr.ph.i616

.preheader26.i:                                   ; preds = %bb.ej
  %i.aax = shl nuw nsw i32 %.0143.lcssa39903999, 1
  br label %.preheader25.i

.lr.ph.i616:                                      ; preds = %.noexc617, %bb.ej
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ej ], [ 0, %.noexc617 ] ; 4 uses
  %i.aay = getelementptr inbounds nuw [8 x i8], ptr %.val204.i, i64 %indvars.iv.i
  %i.aaz = load ptr, ptr %i.aay, align 8, !tbaa !317
  %i.aba = getelementptr i8, ptr %i.aaz, i64 72
  %.val230.i = load ptr, ptr %i.aba, align 8, !tbaa !28 ; 2 uses
  %i.abb = load ptr, ptr %.val230.i, align 8, !tbaa !630
  %.not169.i = icmp eq ptr %i.abb, null
  br i1 %.not169.i, label %bb.ef, label %bb.ec

bb.ec:                                            ; preds = %.lr.ph.i616
  %i.abc = invoke noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #31
          to label %.noexc618 unwind label %.loopexit.split-lp1238.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 3 uses

.noexc618:                                        ; preds = %bb.ec
  %i.abd = getelementptr inbounds nuw [8 x i8], ptr %.val204.i, i64 %indvars.iv.i ; 2 uses
  %i.abe = load ptr, ptr %i.abd, align 8, !tbaa !317
  %i.abf = getelementptr i8, ptr %i.abe, i64 72
  %.val229.i = load ptr, ptr %i.abf, align 8, !tbaa !28
  %i.abg = load ptr, ptr %.val229.i, align 8, !tbaa !630
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #26
  store i8 0, ptr %35, align 1, !tbaa !318
  invoke void @_ZN9AstVarRefC2EP8FileLineP6AstVarRK7VAccess(ptr noundef nonnull align 8 dereferenceable(232) %i.abc, ptr noundef %1, ptr noundef %i.abg, ptr noundef nonnull align 1 dereferenceable(1) %35)
          to label %bb.ed unwind label %bb.ee

bb.ed:                                            ; preds = %.noexc618
  %i.abh = load ptr, ptr %i.abd, align 8, !tbaa !317
  %i.abi = getelementptr i8, ptr %i.abh, i64 72
  %.val228.i = load ptr, ptr %i.abi, align 8, !tbaa !28
  %i.abj = getelementptr inbounds nuw i8, ptr %.val228.i, i64 40
  store ptr %i.abc, ptr %i.abj, align 8, !tbaa !641
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #26
  br label %bb.ej

bb.ee:                                            ; preds = %.noexc618
  %i.abk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #26
  call void @_ZdlPvm(ptr noundef nonnull %i.abc, i64 noundef 232) #27
  br label %.body621

bb.ef:                                            ; preds = %.lr.ph.i616
  %i.abl = getelementptr inbounds nuw i8, ptr %.val230.i, i64 8
  %i.abm = load ptr, ptr %i.abl, align 8, !tbaa !622
  %.not170.i = icmp eq ptr %i.abm, null
  br i1 %.not170.i, label %bb.ej, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.abn = invoke noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #31
          to label %.noexc619 unwind label %.loopexit.split-lp1238.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 3 uses

.noexc619:                                        ; preds = %bb.eg
  %i.abo = getelementptr inbounds nuw [8 x i8], ptr %.val204.i, i64 %indvars.iv.i ; 2 uses
  %i.abp = load ptr, ptr %i.abo, align 8, !tbaa !317
  %i.abq = getelementptr i8, ptr %i.abp, i64 72
  %.val226.i = load ptr, ptr %i.abq, align 8, !tbaa !28
  %i.abr = getelementptr inbounds nuw i8, ptr %.val226.i, i64 8
  %i.abs = load ptr, ptr %i.abr, align 8, !tbaa !622
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #26
  store i8 0, ptr %36, align 1, !tbaa !318
  invoke void @_ZN9AstVarRefC2EP8FileLineP6AstVarRK7VAccess(ptr noundef nonnull align 8 dereferenceable(232) %i.abn, ptr noundef %1, ptr noundef %i.abs, ptr noundef nonnull align 1 dereferenceable(1) %36)
          to label %bb.eh unwind label %bb.ei

bb.eh:                                            ; preds = %.noexc619
  %i.abt = load ptr, ptr %i.abo, align 8, !tbaa !317
  %i.abu = getelementptr i8, ptr %i.abt, i64 72
  %.val225.i = load ptr, ptr %i.abu, align 8, !tbaa !28
  %i.abv = getelementptr inbounds nuw i8, ptr %.val225.i, i64 40
  store ptr %i.abn, ptr %i.abv, align 8, !tbaa !641
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #26
  br label %bb.ej

bb.ei:                                            ; preds = %.noexc619
  %i.abw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #26
  call void @_ZdlPvm(ptr noundef nonnull %i.abn, i64 noundef 232) #27
  br label %.body621

bb.ej:                                            ; preds = %bb.eh, %bb.ef, %bb.ed
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond3645.not = icmp eq i64 %indvars.iv.next.i, %i.ab
  br i1 %exitcond3645.not, label %.preheader26.i, label %.lr.ph.i616, !llvm.loop !576

.preheader25.i:                                   ; preds = %.preheader26.i, %._crit_edge.i.loopexit
  %.val183.i3669 = phi ptr [ %.val183.i, %._crit_edge.i.loopexit ], [ %.val204.i, %.preheader26.i ] ; 4 uses
  %.012795.i = phi i32 [ %i.agd, %._crit_edge.i.loopexit ], [ 0, %.preheader26.i ] ; 2 uses
  br label %.lr.ph84.i

.lr.ph84.i:                                       ; preds = %bb.fd, %.preheader25.i
  %.val183.i3670 = phi ptr [ %.val183.i3669, %.preheader25.i ], [ %.val183.i, %bb.fd ] ; 3 uses
  %.val184.i3666 = phi ptr [ %.val183.i3669, %.preheader25.i ], [ %.val184.i3667, %bb.fd ] ; 3 uses
  %.val194145.i = phi ptr [ %.val183.i3669, %.preheader25.i ], [ %.val194146.i, %bb.fd ] ; 3 uses
  %.val199.i = phi ptr [ %.val183.i3669, %.preheader25.i ], [ %.val199143.i, %bb.fd ] ; 3 uses
  %indvars.iv137.i = phi i64 [ 0, %.preheader25.i ], [ %indvars.iv.next138.i, %bb.fd ] ; 4 uses
  %.012282.i = phi i1 [ false, %.preheader25.i ], [ %.2.i, %bb.fd ] ; 4 uses
  %i.abx = getelementptr inbounds nuw [8 x i8], ptr %.val199.i, i64 %indvars.iv137.i
  %i.aby = load ptr, ptr %i.abx, align 8, !tbaa !317 ; 5 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 121
  %i.aca = load i8, ptr %i.abz, align 1, !tbaa !306, !range !76, !noundef !77
  %i.acb = trunc nuw i8 %i.aca to i1
  br i1 %i.acb, label %bb.ek, label %bb.fd

bb.ek:                                            ; preds = %.lr.ph84.i
  %i.acc = getelementptr i8, ptr %i.aby, i64 72
  %.val224.i = load ptr, ptr %i.acc, align 8, !tbaa !28
  %i.acd = getelementptr inbounds nuw i8, ptr %.val224.i, i64 40
  %i.ace = load ptr, ptr %i.acd, align 8, !tbaa !641
  %.not155.i = icmp eq ptr %i.ace, null
  br i1 %.not155.i, label %bb.el, label %bb.fd

bb.el:                                            ; preds = %bb.ek
  %i.acf = getelementptr inbounds nuw i8, ptr %i.aby, i64 128
  %i.acg = load ptr, ptr %i.acf, align 8, !tbaa !348
  %.not156.i = icmp eq ptr %i.acg, null
  br i1 %.not156.i, label %.critedge.i614, label %bb.em, !prof !20
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN12V3NumberData9ValueAndXESaIS1_EE17_M_default_appendEm:bb.a
  %i.bc = sub i64 %i.bb, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bc) #27
  br label %_ZNSt12_Vector_baseIN12V3NumberData9ValueAndXESaIS1_EE13_M_deallocateEPS1_m.exit38

_ZNSt12_Vector_baseIN12V3NumberData9ValueAndXESaIS1_EE13_M_deallocateEPS1_m.exit38: ; preds = %_ZNSt6vectorIN12V3NumberData9ValueAndXESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.i
  store ptr %i.ai, ptr %0, align 8, !tbaa !402
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %1
  store ptr %i.bd, ptr %i.a, align 8, !tbaa !406
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ag
  store ptr %i.be, ptr %i.h, align 8, !tbaa !403
  br label %bb.j

bb.j:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN12V3NumberData9ValueAndXEmS1_ET_S3_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN12V3NumberData9ValueAndXESaIS1_EE13_M_deallocateEPS1_m.exit38, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK8V3Number5widthEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !398
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK12V3NumberData5widthEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !398
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #0 comdat {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !731
  switch i8 %i.a, label %bb.f [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.527, i64 noundef 13) ; 0 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.528, i64 noundef 5) ; 0 uses
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.529, i64 noundef 6) ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.530, i64 noundef 6) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK8V3Number8isDoubleEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i8, ptr %i.a, align 4, !tbaa !399
  %i.c = icmp eq i8 %i.b, 2
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK8V3Number8isStringEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i8, ptr %i.a, align 4, !tbaa !399
  %i.c = icmp eq i8 %i.b, 3
  ret i1 %i.c
}

declare noundef zeroext i1 @_ZNK8V3Number7isAnyXZEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK8V3Number5sizedEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.b = load i8, ptr %i.a, align 1
  %i.c = trunc i8 %i.b to i1
  ret i1 %i.c
}

declare noundef i32 @_ZNK8V3Number10widthToFitEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK8V3Number8isSignedEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 2
  %i.d = icmp ne i8 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i8 @_ZNK8V3Number8dataTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i8, ptr %i.a, align 4, !tbaa !399
  ret i8 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i8 @_ZNK12V3NumberData4typeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i8, ptr %i.a, align 4, !tbaa !399
  ret i8 %i.b
}

declare noundef ptr @_ZNK7AstNode14findBasicDTypeE14VBasicDTypeKwd(ptr noundef nonnull align 8 dereferenceable(152), i8) local_unnamed_addr #3

declare noundef ptr @_ZNK7AstNode14findLogicDTypeEii8VSigning(ptr noundef nonnull align 8 dereferenceable(152), i32 noundef, i32 noundef, i8) local_unnamed_addr #3

declare noundef ptr @_ZNK7AstNode12findBitDTypeEii8VSigning(ptr noundef nonnull align 8 dereferenceable(152), i32 noundef, i32 noundef, i8) local_unnamed_addr #3

declare void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(152), ptr noundef) local_unnamed_addr #3

declare void @_ZN7AstNode7setOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(152), ptr noundef) local_unnamed_addr #3

declare void @_ZN7AstNode7setOp3pEPS_(ptr noundef nonnull align 8 dereferenceable(152), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode15unsafePrivateAsI10AstSenTreeS_EEPT_PT0_(ptr noundef %0) #4 comdat align 2 {
bb.a:
  ret ptr %0
}

declare void @_ZN7AstNode7addOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(152), ptr noundef) local_unnamed_addr #3

declare void @_ZN7V3GraphC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc noundef nonnull ptr @_ZN12_GLOBAL__N_18SvaGraph17createStateVertexEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #31 ; 10 uses
  invoke void @_ZN13V3GraphVertexC2EP7V3Graph(ptr noundef nonnull align 8 dereferenceable(168) %i.a, ptr noundef nonnull %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN12_GLOBAL__N_114SvaStateVertexE, i64 16), ptr %i.a, align 8, !tbaa !79
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i8 0, ptr %i.b, align 8, !tbaa !303
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  store i32 0, ptr %i.d, align 4, !tbaa !304
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i8 0, ptr %i.e, align 8, !tbaa !305
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 121
  store i8 0, ptr %i.f, align 1, !tbaa !306
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.c, i8 0, i64 25, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(34) %i.g, i8 0, i64 34, i1 false)
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 168) #27
  resume { ptr, i32 } %i.h
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_113SvaNfaBuilder21buildImplicationEdgesEP11AstNodeExprS2_PNS_14SvaStateVertexEbbP7AstNodeP8FileLine(ptr dead_on_unwind noalias nofree nonnull writable align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5, i1 noundef zeroext %6, ptr noundef %7) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"struct.(anonymous namespace)::BuildResult", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call fastcc void @_ZN12_GLOBAL__N_113SvaNfaBuilder9buildExprEP11AstNodeExprPNS_14SvaStateVertexEb(ptr dead_on_unwind noalias writable align 8 %8, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %2, ptr noundef %4, i1 noundef zeroext false)
  %.val = load ptr, ptr %8, align 8, !tbaa !205   ; 5 uses
  %.not2 = icmp eq ptr %.val, null
  br i1 %.not2, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull readonly align 8 dereferenceable(48) %8, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.val10.i.i = load ptr, ptr %i.b, align 8, !tbaa !343 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.val11.i.i = load ptr, ptr %i.c, align 8, !tbaa !344 ; 2 uses
  %i.d = ptrtoint ptr %.val11.i.i to i64
  %i.e = ptrtoint ptr %.val10.i.i to i64
  %i.f = sub i64 %i.d, %i.e                       ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %.val11.i.i, %.val10.i.i
  br i1 %.not.i.i.i.i.i, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = getelementptr inbounds i8, ptr null, i64 %i.f ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.a, align 8
  store ptr %i.h, ptr %i.i, align 8, !tbaa !342
  br label %_ZN12_GLOBAL__N_111BuildResultC2ERKS0_.exit

bb.c:                                             ; preds = %bb.b
  %i.j = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.j, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIPN12_GLOBAL__N_114SvaStateVertexEE8allocateEmPKv.exit.i.i.i.i.i, !prof !20

.noexc.i.i.i:                                     ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #30
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIPN12_GLOBAL__N_114SvaStateVertexEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #31
          to label %.noexc43 unwind label %bb.g   ; 5 uses

.noexc43:                                         ; preds = %_ZNSt15__new_allocatorIPN12_GLOBAL__N_114SvaStateVertexEE8allocateEmPKv.exit.i.i.i.i.i
  store ptr %i.k, ptr %i.a, align 8, !tbaa !343
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !344
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.m, ptr %i.n, align 8, !tbaa !342
  %i.o = icmp samesign ugt i64 %i.f, 8
  br i1 %i.o, label %bb.d, label %bb.e, !prof !345

bb.d:                                             ; preds = %.noexc43
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.k, ptr align 8 %.val10.i.i, i64 %i.f, i1 false)
  br label %_ZN12_GLOBAL__N_111BuildResultC2ERKS0_.exit

bb.e:                                             ; preds = %.noexc43
  %i.p = icmp eq i64 %i.f, 8
  br i1 %i.p, label %bb.f, label %_ZN12_GLOBAL__N_111BuildResultC2ERKS0_.exit

bb.f:                                             ; preds = %bb.e
  %.val.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.val10.i.i, align 8, !tbaa !317
  store ptr %.val.i.i.i.i.i.i.i.i.i.i, ptr %i.k, align 8, !tbaa !317
  br label %_ZN12_GLOBAL__N_111BuildResultC2ERKS0_.exit

_ZN12_GLOBAL__N_111BuildResultC2ERKS0_.exit:      ; preds = %.thread, %bb.d, %bb.e, %bb.f
  %i.q = phi ptr [ %i.m, %bb.d ], [ %i.m, %bb.e ], [ %i.m, %bb.f ], [ %i.h, %.thread ]
  %i.r = phi ptr [ %i.l, %bb.d ], [ %i.l, %bb.e ], [ %i.l, %bb.f ], [ %i.g, %.thread ]
  store ptr %i.q, ptr %i.r, align 8, !tbaa !344
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.u = load i16, ptr %i.t, align 8
  store i16 %i.u, ptr %i.s, align 8
  br label %bb.az

bb.g:                                             ; preds = %bb.t, %bb.o, %_ZNSt15__new_allocatorIPN12_GLOBAL__N_114SvaStateVertexEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46, %bb.s, %bb.r, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.h:                                             ; preds = %bb.a
  %.not = icmp ne ptr %.val, %4
  %or.cond.not = and i1 %6, %.not
  br i1 %or.cond.not, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.w = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error11v3errorPrepB5cxx11E11V3ErrorCode(i8 21)
          to label %bb.j unwind label %bb.g       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.x = load atomic i8, ptr @_ZGVZN7V3Error1sEvE3s_s acquire, align 8
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.k, label %bb.o, !prof !130

bb.k:                                             ; preds = %bb.j
  %i.z = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #26
  %.not.i.i = icmp eq i32 %i.z, 0
  br i1 %.not.i.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN14V3ErrorGuardedC2Ev(ptr noundef nonnull align 8 dereferenceable(720) @_ZZN7V3Error1sEvE3s_s)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aa = tail call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ErrorGuardedD2Ev, ptr nonnull @_ZZN7V3Error1sEvE3s_s, ptr nonnull @__dso_handle) #26 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #26
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #26
  br label %.body

bb.o:                                             ; preds = %bb.m, %bb.k, %bb.j
  %i.ac = tail call noundef nonnull align 8 dereferenceable(112) ptr @llvm.ptr.annotation.p0.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZZN7V3Error1sEvE3s_s, i64 304), ptr nonnull @.str.13, ptr nonnull @.str.14, i32 481, ptr null) ; 2 uses
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.574, i64 noundef 98)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.o
  invoke void @_ZNK7AstNode10v3errorEndERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %7, ptr noundef nonnull align 8 dereferenceable(112) %i.ac)
          to label %bb.p unwind label %bb.g

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false), !alias.scope !734
  store i8 1, ptr %i.ae, align 8, !tbaa !206, !alias.scope !734
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 0, ptr %i.af, align 1, !tbaa !308, !alias.scope !734
  br label %bb.az

bb.q:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8            ; 5 uses
  %i.ai = icmp eq ptr %i.ah, null                 ; 2 uses
  %.not29 = select i1 %6, i1 %i.ai, i1 false
  br i1 %.not29, label %bb.r, label %bb.v, !prof !20

bb.r:                                             ; preds = %bb.q
  %i.aj = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.1, i32 noundef 1547)
          to label %bb.s unwind label %bb.g       ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.ak = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %bb.t unwind label %bb.g       ; 2 uses

bb.t:                                             ; preds = %bb.s
  %i.al = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull @.str.575, i64 noundef 62)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46: ; preds = %bb.t
  invoke void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %7, ptr noundef nonnull align 8 dereferenceable(112) %i.ak) #30
          to label %bb.u unwind label %bb.g

bb.u:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46
  unreachable

bb.v:                                             ; preds = %bb.q
  %i.am = load ptr, ptr %1, align 8, !tbaa !290, !nonnull !77, !align !269
  %i.an = invoke noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #31
          to label %.noexc47 unwind label %bb.ak  ; 13 uses

.noexc47:                                         ; preds = %bb.v
  invoke void @_ZN13V3GraphVertexC2EP7V3Graph(ptr noundef nonnull align 8 dereferenceable(168) %i.an, ptr noundef nonnull align 8 dereferenceable(40) %i.am)
          to label %bb.x unwind label %bb.w

bb.w:                                             ; preds = %.noexc47
  %i.ao = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef 168) #27
  br label %.body

bb.x:                                             ; preds = %.noexc47
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN12_GLOBAL__N_114SvaStateVertexE, i64 16), ptr %i.an, align 8, !tbaa !79
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  store i8 0, ptr %i.ap, align 8, !tbaa !303
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 88
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 116
  store i32 0, ptr %i.ar, align 4, !tbaa !304
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 120
  store i8 0, ptr %i.as, align 8, !tbaa !305
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 121
  store i8 0, ptr %i.at, align 1, !tbaa !306
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.aq, i8 0, i64 25, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(34) %i.au, i8 0, i64 34, i1 false)
  %i.av = load ptr, ptr %1, align 8, !tbaa !290, !nonnull !77, !align !269 ; 2 uses
  br i1 %i.ai, label %bb.ap, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.aw = invoke noundef ptr @_ZN7AstNode9cloneTreeEbb(ptr noundef nonnull align 8 dereferenceable(152) %i.ah, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %_ZN11AstNodeExpr13cloneTreePureEb.exit unwind label %bb.ak ; 3 uses

_ZN11AstNodeExpr13cloneTreePureEb.exit:           ; preds = %bb.y
  %i.ax = invoke noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #31
          to label %.noexc51 unwind label %bb.ak  ; 6 uses

.noexc51:                                         ; preds = %_ZN11AstNodeExpr13cloneTreePureEb.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 88
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !184
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 72
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !259 ; 2 uses
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(152) %i.ax, i16 178, ptr noundef %i.az)
          to label %.noexc.i unwind label %bb.aa

.noexc.i:                                         ; preds = %.noexc51
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV10AstSampled, i64 16), ptr %i.ax, align 8, !tbaa !79
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(152) %i.ax, ptr noundef nonnull %i.aw)
          to label %.noexc5.i unwind label %bb.aa

.noexc5.i:                                        ; preds = %.noexc.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 72 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !259
  %.not.i.i.i = icmp eq ptr %i.bd, %i.bb
  br i1 %.not.i.i.i, label %_ZN12_GLOBAL__N_17sampledEP11AstNodeExpr.exit, label %bb.z

bb.z:                                             ; preds = %.noexc5.i
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !259
  %i.be = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !90
  %i.bf = add i64 %i.be, 1
  store i64 %i.bf, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !90
  br label %_ZN12_GLOBAL__N_17sampledEP11AstNodeExpr.exit

bb.aa:                                            ; preds = %.noexc.i, %.noexc51
end_hunk_2
begin_hunk_3_@_ZN12_GLOBAL__N_113SvaNfaBuilder9buildExprEP11AstNodeExprPNS_14SvaStateVertexEb:bb.a
.noexc.i.i.i899:                                  ; preds = %bb.oj
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #30
          to label %.noexc107.i unwind label %bb.ow, !noalias !839, !inline_history !793

.noexc107.i:                                      ; preds = %.noexc.i.i.i899
  unreachable

_ZNSt15__new_allocatorIPN12_GLOBAL__N_114SvaStateVertexEE8allocateEmPKv.exit.i.i.i.i.i896: ; preds = %bb.oj
  %i.beu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ber) #31
          to label %.noexc108.i unwind label %bb.ow, !noalias !839, !inline_history !793 ; 6 uses

.noexc108.i:                                      ; preds = %_ZNSt15__new_allocatorIPN12_GLOBAL__N_114SvaStateVertexEE8allocateEmPKv.exit.i.i.i.i.i896
  %i.bev = getelementptr inbounds nuw i8, ptr %i.beu, i64 %i.ber ; 3 uses
  %i.bew = icmp samesign ugt i64 %i.ber, 8
  br i1 %i.bew, label %bb.ok, label %bb.ol, !prof !345

bb.ok:                                            ; preds = %.noexc108.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.beu, ptr align 8 %.val10.i.i893, i64 %i.ber, i1 false), !noalias !839
  br label %_ZNSt6vectorIPN12_GLOBAL__N_114SvaStateVertexESaIS2_EEC2ERKS4_.exit.i897

bb.ol:                                            ; preds = %.noexc108.i
  %i.bex = icmp eq i64 %i.ber, 8
  br i1 %i.bex, label %bb.om, label %_ZNSt6vectorIPN12_GLOBAL__N_114SvaStateVertexESaIS2_EEC2ERKS4_.exit.i897

bb.om:                                            ; preds = %bb.ol
  %.val.i.i.i.i.i.i.i.i.i.i898 = load ptr, ptr %.val10.i.i893, align 8, !tbaa !317, !noalias !839
  store ptr %.val.i.i.i.i.i.i.i.i.i.i898, ptr %i.beu, align 8, !tbaa !317, !noalias !839
  br label %_ZNSt6vectorIPN12_GLOBAL__N_114SvaStateVertexESaIS2_EEC2ERKS4_.exit.i897

bb.on:                                            ; preds = %bb.oi
  %i.bey = landingpad { ptr, i32 }
          cleanup
  br label %.body.i881

bb.oo:                                            ; preds = %bb.or, %.lr.ph238.i
  %.sroa.0153.0237.i = phi ptr [ %.sroa.0166.0.lcssa.i, %.lr.ph238.i ], [ %i.bfl, %bb.or ] ; 2 uses
  %i.bez = load ptr, ptr %.sroa.0153.0237.i, align 8, !tbaa !317, !noalias !839
  %i.bfa = invoke fastcc noundef ptr @_ZZN12_GLOBAL__N_113SvaNfaBuilder12buildAbortOnEP11AstNodeExprS2_PNS_14SvaStateVertexE10VAbortKindP8FileLineENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.op unwind label %bb.os, !noalias !839, !inline_history !793

bb.op:                                            ; preds = %bb.oo
  %i.bfb = load ptr, ptr %i.b, align 8, !tbaa !410, !noalias !839
  %i.bfc = load ptr, ptr %1, align 8, !tbaa !290, !noalias !839, !nonnull !77, !align !269
  %.val.i.i891 = load ptr, ptr %i.bel, align 8, !tbaa !220, !noalias !839
  %.val5.i.i892 = load ptr, ptr %i.bem, align 8, !tbaa !220, !noalias !839
  %i.bfd = invoke fastcc noundef ptr @_ZN12_GLOBAL__N_113SvaNfaBuilder14throughoutCondEP11AstNodeExprP8FileLine(ptr %.val.i.i891, ptr %.val5.i.i892, ptr noundef nonnull %i.bfa, ptr noundef %i.bfb)
          to label %.noexc109.i unwind label %bb.os, !noalias !839, !inline_history !793

.noexc109.i:                                      ; preds = %bb.op
  %i.bfe = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #31
          to label %.noexc110.i unwind label %bb.os, !noalias !839, !inline_history !793 ; 9 uses

.noexc110.i:                                      ; preds = %.noexc109.i
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTV11V3GraphEdge, i64 16), ptr %i.bfe, align 8, !tbaa !79, !noalias !839
  %i.bff = getelementptr inbounds nuw i8, ptr %i.bfe, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bff, i8 0, i64 32, i1 false), !noalias !839
  invoke void @_ZN11V3GraphEdge4initEP7V3GraphP13V3GraphVertexS3_ib(ptr noundef nonnull align 8 dereferenceable(96) %i.bfe, ptr noundef nonnull align 8 dereferenceable(40) %i.bfc, ptr noundef %i.bez, ptr noundef nonnull %i.bek, i32 noundef 1, i1 noundef zeroext false)
          to label %bb.or unwind label %bb.oq, !noalias !839, !inline_history !793

bb.oq:                                            ; preds = %.noexc110.i
  %i.bfg = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bfe, i64 noundef 96) #27, !noalias !839, !inline_history !793
  br label %.body.i881

bb.or:                                            ; preds = %.noexc110.i
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN12_GLOBAL__N_112SvaTransEdgeE, i64 16), ptr %i.bfe, align 8, !tbaa !79, !noalias !839
  %i.bfh = getelementptr inbounds nuw i8, ptr %i.bfe, i64 72
  store ptr %i.bfd, ptr %i.bfh, align 8, !tbaa !312, !noalias !839
  %i.bfi = getelementptr inbounds nuw i8, ptr %i.bfe, i64 80
  store i8 0, ptr %i.bfi, align 8, !tbaa !313, !noalias !839
  %i.bfj = getelementptr inbounds nuw i8, ptr %i.bfe, i64 81
  store i8 0, ptr %i.bfj, align 1, !tbaa !314, !noalias !839
  %i.bfk = getelementptr inbounds nuw i8, ptr %i.bfe, i64 88
  store ptr null, ptr %i.bfk, align 8, !tbaa !315, !noalias !839
  %i.bfl = getelementptr inbounds nuw i8, ptr %.sroa.0153.0237.i, i64 8 ; 2 uses
  %.not197.i = icmp eq ptr %i.bfl, %.sroa.12.0.lcssa.i
  br i1 %.not197.i, label %._crit_edge239.i, label %bb.oo

bb.os:                                            ; preds = %.noexc109.i, %bb.op, %bb.oo
  %i.bfm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i881

_ZNSt6vectorIPN12_GLOBAL__N_114SvaStateVertexESaIS2_EEC2ERKS4_.exit.i897: ; preds = %bb.om, %bb.ol, %bb.ok, %.thread186.i
  %i.bfn = phi ptr [ %i.bev, %bb.ok ], [ %i.bev, %bb.ol ], [ %i.bev, %bb.om ], [ %i.bes, %.thread186.i ] ; 2 uses
  %i.bfo = phi ptr [ %i.beu, %bb.ok ], [ %i.beu, %bb.ol ], [ %i.beu, %bb.om ], [ null, %.thread186.i ] ; 7 uses
  %i.bfp = ptrtoint ptr %i.bfn to i64
  %i.bfq = ptrtoint ptr %i.bfo to i64
  %i.bfr = sub i64 %i.bfp, %i.bfq                 ; 7 uses
  %i.bfs = icmp eq i64 %i.bfr, 9223372036854775800
  br i1 %i.bfs, label %bb.ot, label %_ZNKSt6vectorIPN12_GLOBAL__N_114SvaStateVertexESaIS2_EE12_M_check_lenEmPKc.exit.i.i113.i

bb.ot:                                            ; preds = %_ZNSt6vectorIPN12_GLOBAL__N_114SvaStateVertexESaIS2_EEC2ERKS4_.exit.i897
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.522) #30
          to label %.noexc119.i unwind label %bb.ox, !noalias !839, !inline_history !793

.noexc119.i:                                      ; preds = %bb.ot
  unreachable

_ZNKSt6vectorIPN12_GLOBAL__N_114SvaStateVertexESaIS2_EE12_M_check_lenEmPKc.exit.i.i113.i: ; preds = %_ZNSt6vectorIPN12_GLOBAL__N_114SvaStateVertexESaIS2_EEC2ERKS4_.exit.i897
  %i.bft = ashr exact i64 %i.bfr, 3               ; 3 uses
  %i.bfu = icmp eq ptr %i.bfn, %i.bfo
  %.sroa.speculated.i.i.i114.i = select i1 %i.bfu, i64 1, i64 %i.bft
  %i.bfv = add nsw i64 %.sroa.speculated.i.i.i114.i, %i.bft ; 2 uses
  %i.bfw = icmp ult i64 %i.bfv, %i.bft
  %i.bfx = call i64 @llvm.umin.i64(i64 %i.bfv, i64 1152921504606846975)
  %i.bfy = select i1 %i.bfw, i64 1152921504606846975, i64 %i.bfx ; 3 uses
  %.not.i.i.i115.i = icmp ne i64 %i.bfy, 0
  call void @llvm.assume(i1 %.not.i.i.i115.i)
  %i.bfz = shl nuw nsw i64 %i.bfy, 3
  %i.bga = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bfz) #31
          to label %.noexc120.i unwind label %bb.ox, !noalias !839, !inline_history !793 ; 4 uses

.noexc120.i:                                      ; preds = %_ZNKSt6vectorIPN12_GLOBAL__N_114SvaStateVertexESaIS2_EE12_M_check_lenEmPKc.exit.i.i113.i
  %i.bgb = getelementptr inbounds i8, ptr %i.bga, i64 %i.bfr ; 2 uses
  store ptr %i.bek, ptr %i.bgb, align 8, !tbaa !317, !noalias !839
  %i.bgc = icmp sgt i64 %i.bfr, 0
  br i1 %i.bgc, label %bb.ou, label %_ZNSt6vectorIPN12_GLOBAL__N_114SvaStateVertexESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit20.i.i116.i

bb.ou:                                            ; preds = %.noexc120.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bga, ptr align 8 %i.bfo, i64 %i.bfr, i1 false), !noalias !839
  br label %_ZNSt6vectorIPN12_GLOBAL__N_114SvaStateVertexESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit20.i.i116.i

_ZNSt6vectorIPN12_GLOBAL__N_114SvaStateVertexESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit20.i.i116.i: ; preds = %bb.ou, %.noexc120.i
  %i.bgd = getelementptr inbounds nuw i8, ptr %i.bgb, i64 8
  %.not.i21.i.i117.i = icmp eq ptr %i.bfo, null
  br i1 %.not.i21.i.i117.i, label %_ZNSt6vectorIPN12_GLOBAL__N_114SvaStateVertexESaIS2_EED2Ev.exit.i, label %bb.ov

bb.ov:                                            ; preds = %_ZNSt6vectorIPN12_GLOBAL__N_114SvaStateVertexESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit20.i.i116.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bfo, i64 noundef %i.bfr) #27, !noalias !839, !inline_history !793
  br label %_ZNSt6vectorIPN12_GLOBAL__N_114SvaStateVertexESaIS2_EED2Ev.exit.i

_ZNSt6vectorIPN12_GLOBAL__N_114SvaStateVertexESaIS2_EED2Ev.exit.i: ; preds = %bb.ov, %_ZNSt6vectorIPN12_GLOBAL__N_114SvaStateVertexESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit20.i.i116.i
  %i.bge = getelementptr inbounds nuw [8 x i8], ptr %i.bga, i64 %i.bfy
  %i.bgf = load <2 x ptr>, ptr %9, align 16, !tbaa !358, !noalias !839
  store <2 x ptr> %i.bgf, ptr %0, align 8, !tbaa !358, !alias.scope !839
  %i.bgg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bga, ptr %i.bgg, align 8, !tbaa !343, !alias.scope !839
  %i.bgh = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bgd, ptr %i.bgh, align 8, !tbaa !344, !alias.scope !839
  %i.bgi = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bge, ptr %i.bgi, align 8, !tbaa !342, !alias.scope !839
  %i.bgj = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.bgj, align 8, !tbaa !206, !alias.scope !839
  %i.bgk = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 0, ptr %i.bgk, align 1, !tbaa !308, !alias.scope !839
  br label %_ZNSt6vectorIPN12_GLOBAL__N_114SvaStateVertexESaIS2_EED2Ev.exit140.i

bb.ow:                                            ; preds = %_ZNSt15__new_allocatorIPN12_GLOBAL__N_114SvaStateVertexEE8allocateEmPKv.exit.i.i.i.i.i896, %.noexc.i.i.i899
  %i.bgl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i881

bb.ox:                                            ; preds = %_ZNKSt6vectorIPN12_GLOBAL__N_114SvaStateVertexESaIS2_EE12_M_check_lenEmPKc.exit.i.i113.i, %bb.ot
  %i.bgm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i123.i = icmp eq ptr %i.bfo, null
  br i1 %.not.i.i.i123.i, label %.body.i881, label %bb.oy

bb.oy:                                            ; preds = %bb.ox
  call void @_ZdlPvm(ptr noundef nonnull %i.bfo, i64 noundef %i.bfr) #27, !noalias !839, !inline_history !793
  br label %.body.i881

bb.oz:                                            ; preds = %._crit_edge228.i
  %i.bgn = load ptr, ptr %1, align 8, !tbaa !290, !noalias !839, !nonnull !77, !align !269
  %i.bgo = invoke noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #31
          to label %.noexc125.i882 unwind label %bb.pg, !noalias !839, !inline_history !793 ; 11 uses

.noexc125.i882:                                   ; preds = %bb.oz
  invoke void @_ZN13V3GraphVertexC2EP7V3Graph(ptr noundef nonnull align 8 dereferenceable(168) %i.bgo, ptr noundef nonnull align 8 dereferenceable(40) %i.bgn)
          to label %bb.pb unwind label %bb.pa, !noalias !839, !inline_history !793

bb.pa:                                            ; preds = %.noexc125.i882
  %i.bgp = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bgo, i64 noundef 168) #27, !noalias !839, !inline_history !793
  br label %.body.i881

bb.pb:                                            ; preds = %.noexc125.i882
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN12_GLOBAL__N_114SvaStateVertexE, i64 16), ptr %i.bgo, align 8, !tbaa !79, !noalias !839
  %i.bgq = getelementptr inbounds nuw i8, ptr %i.bgo, i64 80
  store i8 0, ptr %i.bgq, align 8, !tbaa !303, !noalias !839
  %i.bgr = getelementptr inbounds nuw i8, ptr %i.bgo, i64 88
  %i.bgs = getelementptr inbounds nuw i8, ptr %i.bgo, i64 116
  store i32 0, ptr %i.bgs, align 4, !tbaa !304, !noalias !839
  %i.bgt = getelementptr inbounds nuw i8, ptr %i.bgo, i64 120
  store i8 0, ptr %i.bgt, align 8, !tbaa !305, !noalias !839
  %i.bgu = getelementptr inbounds nuw i8, ptr %i.bgo, i64 121
  store i8 0, ptr %i.bgu, align 1, !tbaa !306, !noalias !839
  %i.bgv = getelementptr inbounds nuw i8, ptr %i.bgo, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.bgr, i8 0, i64 25, i1 false), !noalias !839
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(34) %i.bgv, i8 0, i64 34, i1 false), !noalias !839
  %i.bgw = getelementptr inbounds nuw i8, ptr %i.bgo, i64 160
  store i8 1, ptr %i.bgw, align 8, !tbaa !333, !noalias !839
  %.not196231.i = icmp eq ptr %.sroa.0166.0.lcssa.i, %.sroa.12.0.lcssa.i
  br i1 %.not196231.i, label %._crit_edge235.i, label %.lr.ph234.i

._crit_edge235.i:                                 ; preds = %bb.pm, %bb.pb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull readonly align 16 dereferenceable(48) %9, i64 16, i1 false)
  %i.bgx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bgy = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.val10.i.i.i = load ptr, ptr %i.bgy, align 16, !tbaa !343, !noalias !839 ; 4 uses
  %i.bgz = getelementptr inbounds nuw i8, ptr %9, i64 24
  %.val11.i.i.i = load ptr, ptr %i.bgz, align 8, !tbaa !344, !noalias !839 ; 2 uses
  %i.bha = ptrtoint ptr %.val11.i.i.i to i64
  %i.bhb = ptrtoint ptr %.val10.i.i.i to i64
  %i.bhc = sub i64 %i.bha, %i.bhb                 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bgx, i8 0, i64 24, i1 false), !alias.scope !839
  %.not.i.i.i.i.i128.i = icmp eq ptr %.val11.i.i.i, %.val10.i.i.i
  br i1 %.not.i.i.i.i.i128.i, label %.thread187.i, label %bb.pc

.thread187.i:                                     ; preds = %._crit_edge235.i
  %i.bhd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bhe = getelementptr inbounds i8, ptr null, i64 %i.bhc ; 2 uses
  %i.bhf = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bhe, ptr %i.bhf, align 8, !tbaa !342, !alias.scope !839
  br label %_ZN12_GLOBAL__N_111BuildResultC2ERKS0_.exit.i

bb.pc:                                            ; preds = %._crit_edge235.i
  %i.bhg = icmp ugt i64 %i.bhc, 9223372036854775800
  br i1 %i.bhg, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIPN12_GLOBAL__N_114SvaStateVertexEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !20

.noexc.i.i.i.i:                                   ; preds = %bb.pc
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #30
          to label %.noexc129.i unwind label %bb.pg, !noalias !839, !inline_history !793

.noexc129.i:                                      ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIPN12_GLOBAL__N_114SvaStateVertexEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.pc
  %i.bhh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bhc) #31
          to label %.noexc130.i unwind label %bb.pg, !noalias !839, !inline_history !793 ; 5 uses

.noexc130.i:                                      ; preds = %_ZNSt15__new_allocatorIPN12_GLOBAL__N_114SvaStateVertexEE8allocateEmPKv.exit.i.i.i.i.i.i
  store ptr %i.bhh, ptr %i.bgx, align 8, !tbaa !343, !alias.scope !839
  %i.bhi = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store ptr %i.bhh, ptr %i.bhi, align 8, !tbaa !344, !alias.scope !839
  %i.bhj = getelementptr inbounds nuw i8, ptr %i.bhh, i64 %i.bhc ; 4 uses
  %i.bhk = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bhj, ptr %i.bhk, align 8, !tbaa !342, !alias.scope !839
  %i.bhl = icmp samesign ugt i64 %i.bhc, 8
  br i1 %i.bhl, label %bb.pd, label %bb.pe, !prof !345

bb.pd:                                            ; preds = %.noexc130.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bhh, ptr align 8 %.val10.i.i.i, i64 %i.bhc, i1 false), !noalias !839
  br label %_ZN12_GLOBAL__N_111BuildResultC2ERKS0_.exit.i

bb.pe:                                            ; preds = %.noexc130.i
  %i.bhm = icmp eq i64 %i.bhc, 8
  br i1 %i.bhm, label %bb.pf, label %_ZN12_GLOBAL__N_111BuildResultC2ERKS0_.exit.i

bb.pf:                                            ; preds = %bb.pe
  %.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.val10.i.i.i, align 8, !tbaa !317, !noalias !839
  store ptr %.val.i.i.i.i.i.i.i.i.i.i.i, ptr %i.bhh, align 8, !tbaa !317, !noalias !839
  br label %_ZN12_GLOBAL__N_111BuildResultC2ERKS0_.exit.i

_ZN12_GLOBAL__N_111BuildResultC2ERKS0_.exit.i:    ; preds = %bb.pf, %bb.pe, %bb.pd, %.thread187.i
  %i.bhn = phi ptr [ %i.bhj, %bb.pd ], [ %i.bhj, %bb.pe ], [ %i.bhj, %bb.pf ], [ %i.bhe, %.thread187.i ]
  %i.bho = phi ptr [ %i.bhi, %bb.pd ], [ %i.bhi, %bb.pe ], [ %i.bhi, %bb.pf ], [ %i.bhd, %.thread187.i ]
  store ptr %i.bhn, ptr %i.bho, align 8, !tbaa !344, !alias.scope !839
  %i.bhp = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bhq = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.bhr = load i16, ptr %i.bhq, align 8, !noalias !839
  store i16 %i.bhr, ptr %i.bhp, align 8, !alias.scope !839
  br label %_ZNSt6vectorIPN12_GLOBAL__N_114SvaStateVertexESaIS2_EED2Ev.exit140.i

bb.pg:                                            ; preds = %_ZNSt15__new_allocatorIPN12_GLOBAL__N_114SvaStateVertexEE8allocateEmPKv.exit.i.i.i.i.i.i, %.noexc.i.i.i.i, %bb.oz
  %i.bhs = landingpad { ptr, i32 }
          cleanup
  br label %.body.i881

.lr.ph234.i:                                      ; preds = %bb.pb, %bb.pm
  %.sroa.0147.0232.i = phi ptr [ %i.bir, %bb.pm ], [ %.sroa.0166.0.lcssa.i, %bb.pb ] ; 2 uses
  %i.bht = load ptr, ptr %.sroa.0147.0232.i, align 8, !tbaa !317, !noalias !839
  %i.bhu = load ptr, ptr %1, align 8, !tbaa !290, !noalias !839, !nonnull !77, !align !269
  %i.bhv = invoke noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #31
          to label %bb.ph unwind label %bb.pn, !noalias !839, !inline_history !793 ; 10 uses

bb.ph:                                            ; preds = %.lr.ph234.i
  %i.bhw = load ptr, ptr %i.b, align 8, !tbaa !410, !noalias !839
  %i.bhx = invoke fastcc noundef ptr @_ZZN12_GLOBAL__N_113SvaNfaBuilder12buildAbortOnEP11AstNodeExprS2_PNS_14SvaStateVertexE10VAbortKindP8FileLineENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.pi unwind label %bb.po, !noalias !839, !inline_history !793 ; 2 uses

bb.pi:                                            ; preds = %bb.ph
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(168) %i.bhv, i16 325, ptr noundef %i.bhw)
          to label %.noexc133.i883 unwind label %bb.po, !noalias !839, !inline_history !793

.noexc133.i883:                                   ; preds = %bb.pi
  store ptr getelementptr inbounds nuw inrange(-16, 432) (i8, ptr @_ZTV12AstNodeUniop, i64 16), ptr %i.bhv, align 8, !tbaa !79, !noalias !839
  %i.bhy = getelementptr inbounds nuw i8, ptr %i.bhv, i64 152
  store i64 0, ptr %i.bhy, align 8, !noalias !839
  %i.bhz = getelementptr inbounds nuw i8, ptr %i.bhx, i64 72
  %i.bia = load ptr, ptr %i.bhz, align 8, !tbaa !259, !noalias !839 ; 2 uses
  %i.bib = getelementptr inbounds nuw i8, ptr %i.bhv, i64 72 ; 4 uses
  %i.bic = load ptr, ptr %i.bib, align 8, !tbaa !259, !noalias !839
  %.not.i.i.i.i132.i = icmp eq ptr %i.bic, %i.bia
  br i1 %.not.i.i.i.i132.i, label %_ZN12AstNodeUniopC2E6VNTypeP8FileLineP11AstNodeExpr.exit.i.i884, label %bb.pj

bb.pj:                                            ; preds = %.noexc133.i883
  store ptr %i.bia, ptr %i.bib, align 8, !tbaa !259, !noalias !839
  %i.bid = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !90, !noalias !839
  %i.bie = add i64 %i.bid, 1
  store i64 %i.bie, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !90, !noalias !839
  br label %_ZN12AstNodeUniopC2E6VNTypeP8FileLineP11AstNodeExpr.exit.i.i884

_ZN12AstNodeUniopC2E6VNTypeP8FileLineP11AstNodeExpr.exit.i.i884: ; preds = %bb.pj, %.noexc133.i883
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(168) %i.bhv, ptr noundef nonnull %i.bhx)
          to label %.noexc134.i885 unwind label %bb.po, !noalias !839, !inline_history !793

.noexc134.i885:                                   ; preds = %_ZN12AstNodeUniopC2E6VNTypeP8FileLineP11AstNodeExpr.exit.i.i884
  store ptr getelementptr inbounds nuw inrange(-16, 432) (i8, ptr @_ZTV9AstLogNot, i64 16), ptr %i.bhv, align 8, !tbaa !79, !noalias !839
  %i.bif = getelementptr inbounds nuw i8, ptr %i.bhv, i64 160
  store i8 0, ptr %i.bif, align 8, !tbaa !354, !noalias !839
  %i.big = invoke noundef ptr @_ZNK7AstNode14findBasicDTypeE14VBasicDTypeKwd(ptr noundef nonnull align 8 dereferenceable(168) %i.bhv, i8 1)
          to label %.noexc135.i886 unwind label %bb.po, !noalias !839, !inline_history !793 ; 2 uses

.noexc135.i886:                                   ; preds = %.noexc134.i885
  %i.bih = load ptr, ptr %i.bib, align 8, !tbaa !259, !noalias !839
  %.not.i.i5.i.i887 = icmp eq ptr %i.bih, %i.big
  br i1 %.not.i.i5.i.i887, label %_ZN9AstLogNotC2EP8FileLineP11AstNodeExprb.exit.i888, label %bb.pk

bb.pk:                                            ; preds = %.noexc135.i886
  store ptr %i.big, ptr %i.bib, align 8, !tbaa !259, !noalias !839
  %i.bii = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !90, !noalias !839
  %i.bij = add i64 %i.bii, 1
  store i64 %i.bij, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !90, !noalias !839
  br label %_ZN9AstLogNotC2EP8FileLineP11AstNodeExprb.exit.i888

_ZN9AstLogNotC2EP8FileLineP11AstNodeExprb.exit.i888: ; preds = %bb.pk, %.noexc135.i886
  %i.bik = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #31
          to label %.noexc136.i unwind label %bb.pn, !noalias !839, !inline_history !793 ; 9 uses

.noexc136.i:                                      ; preds = %_ZN9AstLogNotC2EP8FileLineP11AstNodeExprb.exit.i888
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTV11V3GraphEdge, i64 16), ptr %i.bik, align 8, !tbaa !79, !noalias !839
  %i.bil = getelementptr inbounds nuw i8, ptr %i.bik, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bil, i8 0, i64 32, i1 false), !noalias !839
  invoke void @_ZN11V3GraphEdge4initEP7V3GraphP13V3GraphVertexS3_ib(ptr noundef nonnull align 8 dereferenceable(96) %i.bik, ptr noundef nonnull align 8 dereferenceable(40) %i.bhu, ptr noundef %i.bht, ptr noundef nonnull %i.bgo, i32 noundef 1, i1 noundef zeroext false)
          to label %bb.pm unwind label %bb.pl, !noalias !839, !inline_history !793

bb.pl:                                            ; preds = %.noexc136.i
  %i.bim = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bik, i64 noundef 96) #27, !noalias !839, !inline_history !793
  br label %.body.i881

bb.pm:                                            ; preds = %.noexc136.i
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN12_GLOBAL__N_112SvaTransEdgeE, i64 16), ptr %i.bik, align 8, !tbaa !79, !noalias !839
  %i.bin = getelementptr inbounds nuw i8, ptr %i.bik, i64 72
  store ptr %i.bhv, ptr %i.bin, align 8, !tbaa !312, !noalias !839
  %i.bio = getelementptr inbounds nuw i8, ptr %i.bik, i64 80
  store i8 0, ptr %i.bio, align 8, !tbaa !313, !noalias !839
  %i.bip = getelementptr inbounds nuw i8, ptr %i.bik, i64 81
  %i.biq = getelementptr inbounds nuw i8, ptr %i.bik, i64 88
  store ptr null, ptr %i.biq, align 8, !tbaa !315, !noalias !839
  store i8 1, ptr %i.bip, align 1, !tbaa !314, !noalias !839
  %i.bir = getelementptr inbounds nuw i8, ptr %.sroa.0147.0232.i, i64 8 ; 2 uses
  %.not196.i = icmp eq ptr %i.bir, %.sroa.12.0.lcssa.i
  br i1 %.not196.i, label %._crit_edge235.i, label %.lr.ph234.i

bb.pn:                                            ; preds = %_ZN9AstLogNotC2EP8FileLineP11AstNodeExprb.exit.i888, %.lr.ph234.i
  %i.bis = landingpad { ptr, i32 }
          cleanup
  br label %.body.i881

bb.po:                                            ; preds = %.noexc134.i885, %_ZN12AstNodeUniopC2E6VNTypeP8FileLineP11AstNodeExpr.exit.i.i884, %bb.pi, %bb.ph
  %i.bit = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bhv, i64 noundef 168) #27, !noalias !839, !inline_history !793
  br label %.body.i881

_ZNSt6vectorIPN12_GLOBAL__N_114SvaStateVertexESaIS2_EED2Ev.exit140.i: ; preds = %_ZN12_GLOBAL__N_111BuildResultC2ERKS0_.exit.i, %_ZNSt6vectorIPN12_GLOBAL__N_114SvaStateVertexESaIS2_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26, !noalias !839
  %i.biu = ptrtoint ptr %.sroa.20.0.lcssa.i to i64
  %i.biv = ptrtoint ptr %.sroa.0166.0.lcssa.i to i64
  %i.biw = sub i64 %i.biu, %i.biv
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0166.0.lcssa.i, i64 noundef %i.biw) #27, !noalias !839, !inline_history !793
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.val74.pre.i = load ptr, ptr %.phi.trans.insert.i, align 16, !noalias !839 ; 3 uses
  %.not.i.i.i.i141.i = icmp eq ptr %.val74.pre.i, null
  br i1 %.not.i.i.i.i141.i, label %_ZN12_GLOBAL__N_111BuildResultD2Ev.exit.i889, label %bb.pp

bb.pp:                                            ; preds = %_ZNSt6vectorIPN12_GLOBAL__N_114SvaStateVertexESaIS2_EED2Ev.exit140.i
  %i.bix = getelementptr inbounds nuw i8, ptr %9, i64 32
  %.val75.i = load ptr, ptr %i.bix, align 16, !noalias !839
  %i.biy = ptrtoint ptr %.val75.i to i64
  %i.biz = ptrtoint ptr %.val74.pre.i to i64
  %i.bja = sub i64 %i.biy, %i.biz
  call void @_ZdlPvm(ptr noundef nonnull %.val74.pre.i, i64 noundef %i.bja) #27, !noalias !839, !inline_history !793
  br label %_ZN12_GLOBAL__N_111BuildResultD2Ev.exit.i889

_ZN12_GLOBAL__N_111BuildResultD2Ev.exit.i889:     ; preds = %bb.pp, %_ZNSt6vectorIPN12_GLOBAL__N_114SvaStateVertexESaIS2_EED2Ev.exit140.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26, !noalias !839
  %i.bjb = load ptr, ptr %i.bar, align 8, !tbaa !419, !noalias !839 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.bjb, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableIPK13V3GraphVertexS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN12_GLOBAL__N_111BuildResultD2Ev.exit.i889, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.bjc, %.lr.ph.i.i.i.i.i ], [ %i.bjb, %_ZN12_GLOBAL__N_111BuildResultD2Ev.exit.i889 ] ; 2 uses
  %i.bjc = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !247, !noalias !839 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i, i64 noundef 16) #27, !noalias !839, !inline_history !793
  %.not.i.i.i.i142.i = icmp eq ptr %i.bjc, null
  br i1 %.not.i.i.i.i142.i, label %_ZNSt10_HashtableIPK13V3GraphVertexS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !10

_ZNSt10_HashtableIPK13V3GraphVertexS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZN12_GLOBAL__N_111BuildResultD2Ev.exit.i889
  %i.bjd = load ptr, ptr %8, align 8, !tbaa !412, !noalias !839
  %i.bje = load i64, ptr %i.baq, align 8, !tbaa !413, !noalias !839
  %i.bjf = shl i64 %i.bje, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bjd, i8 0, i64 %i.bjf, i1 false), !noalias !839
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bar, i8 0, i64 16, i1 false), !noalias !839
  %i.bjg = load ptr, ptr %8, align 8, !tbaa !412, !noalias !839 ; 2 uses
  %i.bjh = icmp eq ptr %i.bjg, %i.bap
  br i1 %i.bjh, label %_ZN12_GLOBAL__N_113SvaNfaBuilder12buildAbortOnEP11AstNodeExprS2_PNS_14SvaStateVertexE10VAbortKindP8FileLine.exit, label %bb.pq

bb.pq:                                            ; preds = %_ZNSt10_HashtableIPK13V3GraphVertexS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i
  %i.bji = load i64, ptr %i.baq, align 8, !tbaa !413, !noalias !839
end_hunk_3
