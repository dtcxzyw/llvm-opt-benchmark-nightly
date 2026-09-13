Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaDecGraph?download=true
inline.NumInlined: 3483
inline.NumDeleted: 1207
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 57
loop-unroll.NumUnrolled: 68
begin_hunk_0_@_ZN8DecGraph15DecisionDiagram15buildOneClusterERSt6vectorIiSaIiEE:bb.a
  %i.si = fcmp oeq float %i.sh, 1.024000e+03
  %i.sj = select i1 %i.si, float 0.000000e+00, float %i.sh
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0525.0, i64 %indvars.iv.ph ; 2 uses
  %i.sl = load float, ptr %i.sk, align 4, !tbaa !84
  %i.sm = fadd float %i.sl, %i.sj
  store float %i.sm, ptr %i.sk, align 4, !tbaa !84
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph757.prol.loopexit

.lr.ph757.prol.loopexit:                          ; preds = %.lr.ph757.prol, %.lr.ph757.preheader1194
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph757.preheader1194 ], [ %indvars.iv.next.prol, %.lr.ph757.prol ]
  %i.sn = icmp eq i64 %indvars.iv.ph, %i.bl
  br i1 %i.sn, label %._crit_edge758.thread, label %.lr.ph757

._crit_edge758:                                   ; preds = %.lr.ph761
  %.not.i.i.i216 = icmp eq ptr %.pre830, null
  br i1 %.not.i.i.i216, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %._crit_edge758.thread

._crit_edge758.thread:                            ; preds = %.lr.ph757.prol.loopexit, %.lr.ph757, %middle.block1169, %._crit_edge758
  %i.so = load ptr, ptr %i.aq, align 8, !tbaa !82
  %i.sp = ptrtoint ptr %i.so to i64
  %i.sq = ptrtoint ptr %.pre830 to i64
  %i.sr = sub i64 %i.sp, %i.sq
  call void @_ZdlPvm(ptr noundef nonnull %.pre830, i64 noundef %i.sr) #35
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %._crit_edge758, %._crit_edge758.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  %i.ss = getelementptr inbounds nuw i8, ptr %.sroa.0520.0760, i64 4 ; 2 uses
  %.not652 = icmp eq ptr %i.ss, %i.qz
  br i1 %.not652, label %._crit_edge762, label %.lr.ph761

.lr.ph757:                                        ; preds = %.lr.ph757.prol.loopexit, %.lr.ph757
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph757 ], [ %indvars.iv.unr, %.lr.ph757.prol.loopexit ] ; 4 uses
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %.pre830, i64 %indvars.iv
  %i.su = load float, ptr %i.st, align 4, !tbaa !84 ; 2 uses
  %i.sv = fcmp oeq float %i.su, 1.024000e+03
  %i.sw = select i1 %i.sv, float 0.000000e+00, float %i.su
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0525.0, i64 %indvars.iv ; 2 uses
  %i.sy = load float, ptr %i.sx, align 4, !tbaa !84
  %i.sz = fadd float %i.sy, %i.sw
  store float %i.sz, ptr %i.sx, align 4, !tbaa !84
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %.pre830, i64 %indvars.iv.next
  %i.tb = load float, ptr %i.ta, align 4, !tbaa !84 ; 2 uses
  %i.tc = fcmp oeq float %i.tb, 1.024000e+03
  %i.td = select i1 %i.tc, float 0.000000e+00, float %i.tb
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0525.0, i64 %indvars.iv.next ; 2 uses
  %i.tf = load float, ptr %i.te, align 4, !tbaa !84
  %i.tg = fadd float %i.tf, %i.td
  store float %i.tg, ptr %i.te, align 4, !tbaa !84
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %.not.1 = icmp eq i64 %indvars.iv.next.1, %i.bg
  br i1 %.not.1, label %._crit_edge758.thread, label %.lr.ph757, !llvm.loop !430

._crit_edge769.loopexit:                          ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit235
  %i.th = ptrtoint ptr %.sroa.23.1 to i64
  br label %._crit_edge769

._crit_edge769:                                   ; preds = %._crit_edge769.loopexit, %_ZSt11min_elementIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEET_S7_S7_.exit
  %.sroa.0495.0.lcssa = phi ptr [ null, %_ZSt11min_elementIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEET_S7_S7_.exit ], [ %.sroa.0495.1, %._crit_edge769.loopexit ] ; 6 uses
  %.sroa.15.0.lcssa = phi ptr [ null, %_ZSt11min_elementIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEET_S7_S7_.exit ], [ %.sroa.15.1, %._crit_edge769.loopexit ] ; 2 uses
  %.sroa.23.0.lcssa = phi i64 [ 0, %_ZSt11min_elementIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEET_S7_S7_.exit ], [ %i.th, %._crit_edge769.loopexit ]
  br i1 %or.cond.i.i202, label %_ZN8DecGraph3minIfEEfRSt6vectorIT_SaIS2_EE.exit, label %.lr.ph.preheader.i.i.i219

.lr.ph.preheader.i.i.i219:                        ; preds = %._crit_edge769
  %.pre.i.i.i220 = load float, ptr %.sroa.0525.0, align 4, !tbaa !84
  br label %.lr.ph.i.i.i221

.lr.ph.i.i.i221:                                  ; preds = %.lr.ph.i.i.i221, %.lr.ph.preheader.i.i.i219
  %i.ti = phi float [ %i.tn, %.lr.ph.i.i.i221 ], [ %.pre.i.i.i220, %.lr.ph.preheader.i.i.i219 ] ; 2 uses
  %i.tj = phi ptr [ %i.tm, %.lr.ph.i.i.i221 ], [ %i.rb, %.lr.ph.preheader.i.i.i219 ] ; 3 uses
  %.sroa.02.010.i.i.i222 = phi ptr [ %spec.select.i.i.i223, %.lr.ph.i.i.i221 ], [ %.sroa.0525.0, %.lr.ph.preheader.i.i.i219 ]
  %i.tk = load float, ptr %i.tj, align 4, !tbaa !84 ; 2 uses
  %i.tl = fcmp olt float %i.tk, %i.ti             ; 2 uses
  %spec.select.i.i.i223 = select i1 %i.tl, ptr %i.tj, ptr %.sroa.02.010.i.i.i222 ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tj, i64 4 ; 2 uses
  %.not.i.i.i224 = icmp eq ptr %i.tm, %.0.i.i.i.i.i.i.i200
  %i.tn = select i1 %i.tl, float %i.tk, float %i.ti
  br i1 %.not.i.i.i224, label %_ZN8DecGraph3minIfEEfRSt6vectorIT_SaIS2_EE.exit, label %.lr.ph.i.i.i221, !llvm.loop !15

_ZN8DecGraph3minIfEEfRSt6vectorIT_SaIS2_EE.exit:  ; preds = %.lr.ph.i.i.i221, %._crit_edge769
  %.sroa.02.2.i.i.i225 = phi ptr [ %.sroa.0525.0, %._crit_edge769 ], [ %spec.select.i.i.i223, %.lr.ph.i.i.i221 ]
  %i.to = load float, ptr %.sroa.02.2.i.i.i225, align 4, !tbaa !84
  %i.tp = fcmp oeq float %i.to, 1.024000e+03
  br i1 %i.tp, label %bb.bt, label %bb.bu

.lr.ph768:                                        ; preds = %_ZSt11min_elementIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEET_S7_S7_.exit, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit235
  %indvars.iv820 = phi i64 [ %indvars.iv.next821, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit235 ], [ 0, %_ZSt11min_elementIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEET_S7_S7_.exit ] ; 6 uses
  %.sroa.23.0766 = phi ptr [ %.sroa.23.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit235 ], [ null, %_ZSt11min_elementIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEET_S7_S7_.exit ] ; 5 uses
  %.sroa.15.0765 = phi ptr [ %.sroa.15.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit235 ], [ null, %_ZSt11min_elementIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEET_S7_S7_.exit ] ; 5 uses
  %.sroa.0495.0764 = phi ptr [ %.sroa.0495.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit235 ], [ null, %_ZSt11min_elementIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEET_S7_S7_.exit ] ; 7 uses
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0525.0, i64 %indvars.iv820
  %i.tr = load float, ptr %i.tq, align 4, !tbaa !84
  %i.ts = fcmp oeq float %i.tr, %i.rp
  br i1 %i.ts, label %bb.bn, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit235

bb.bn:                                            ; preds = %.lr.ph768
  %i.tt = load ptr, ptr %i.ar, align 8, !tbaa !135 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.tt, null
  br i1 %.not10.i.i.i, label %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit.thread, label %.lr.ph.i.i.i226

.lr.ph.i.i.i226:                                  ; preds = %bb.bn, %.lr.ph.i.i.i226
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i226 ], [ %i.tt, %bb.bn ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i226 ], [ %i.as, %bb.bn ] ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.tv = load i32, ptr %i.tu, align 4, !tbaa !46
  %i.tw = sext i32 %i.tv to i64
  %i.tx = icmp sgt i64 %indvars.iv820, %i.tw      ; 3 uses
  %.19.i.i.i = select i1 %i.tx, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 2 uses
  %.1.in.v.i.i.i = select i1 %i.tx, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !100 ; 2 uses
  %.not.i.i.i227 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i227, label %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i, label %.lr.ph.i.i.i226, !llvm.loop !8

_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i: ; preds = %.lr.ph.i.i.i226
  %i.ty = icmp eq ptr %.19.i.i.i, %i.as
  br i1 %i.ty, label %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit.thread, label %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit

_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit:      ; preds = %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.tx, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.tz = load i32, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !46
  %i.ua = sext i32 %i.tz to i64
  %.not659 = icmp slt i64 %indvars.iv820, %i.ua
  br i1 %.not659, label %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit.thread, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit235

_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit.thread: ; preds = %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i, %bb.bn, %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit
  %.not.i228 = icmp eq ptr %.sroa.15.0765, %.sroa.23.0766
  br i1 %.not.i228, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit.thread
  %i.ub = trunc nuw nsw i64 %indvars.iv820 to i32
  store i32 %i.ub, ptr %.sroa.15.0765, align 4, !tbaa !46
  %i.uc = getelementptr inbounds nuw i8, ptr %.sroa.15.0765, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit235

bb.bp:                                            ; preds = %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit.thread
  %i.ud = ptrtoint ptr %.sroa.23.0766 to i64
  %i.ue = ptrtoint ptr %.sroa.0495.0764 to i64
  %i.uf = sub i64 %i.ud, %i.ue                    ; 6 uses
  %i.ug = icmp eq i64 %i.uf, 9223372036854775804
  br i1 %i.ug, label %bb.bq, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i229

bb.bq:                                            ; preds = %bb.bp
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #40
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i229: ; preds = %bb.bp
  %i.uh = ashr exact i64 %i.uf, 2                 ; 3 uses
  %.sroa.speculated.i.i.i230 = call i64 @llvm.umax.i64(i64 %i.uh, i64 1)
  %i.ui = add nsw i64 %.sroa.speculated.i.i.i230, %i.uh ; 2 uses
  %i.uj = icmp ult i64 %i.ui, %i.uh
  %i.uk = call i64 @llvm.umin.i64(i64 %i.ui, i64 2305843009213693951)
  %i.ul = select i1 %i.uj, i64 2305843009213693951, i64 %i.uk ; 3 uses
  %.not.i.i.i231 = icmp ne i64 %i.ul, 0
  call void @llvm.assume(i1 %.not.i.i.i231)
  %i.um = shl nuw nsw i64 %i.ul, 2
  %i.un = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.um) #37 ; 4 uses
  %i.uo = getelementptr inbounds i8, ptr %i.un, i64 %i.uf ; 2 uses
  %i.up = trunc nuw nsw i64 %indvars.iv820 to i32
  store i32 %i.up, ptr %i.uo, align 4, !tbaa !46
  %i.uq = icmp sgt i64 %i.uf, 0
  br i1 %i.uq, label %bb.br, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i232

bb.br:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i229
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.un, ptr align 4 %.sroa.0495.0764, i64 %i.uf, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i232

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i232: ; preds = %bb.br, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i229
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uo, i64 4
  %.not.i17.i.i233 = icmp eq ptr %.sroa.0495.0764, null
  br i1 %.not.i17.i.i233, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i234, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i232
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0495.0764, i64 noundef %i.uf) #35
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i234

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i234: ; preds = %bb.bs, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i232
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %i.un, i64 %i.ul
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit235

_ZNSt6vectorIiSaIiEE9push_backERKi.exit235:       ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i234, %bb.bo, %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit, %.lr.ph768
  %.sroa.0495.1 = phi ptr [ %.sroa.0495.0764, %.lr.ph768 ], [ %.sroa.0495.0764, %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit ], [ %i.un, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i234 ], [ %.sroa.0495.0764, %bb.bo ] ; 2 uses
  %.sroa.15.1 = phi ptr [ %.sroa.15.0765, %.lr.ph768 ], [ %.sroa.15.0765, %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit ], [ %i.ur, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i234 ], [ %i.uc, %bb.bo ] ; 2 uses
  %.sroa.23.1 = phi ptr [ %.sroa.23.0766, %.lr.ph768 ], [ %.sroa.23.0766, %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit ], [ %i.us, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i234 ], [ %.sroa.23.0766, %bb.bo ] ; 2 uses
  %indvars.iv.next821 = add nuw nsw i64 %indvars.iv820, 1 ; 2 uses
  %.not653 = icmp eq i64 %indvars.iv.next821, %i.bg
  br i1 %.not653, label %._crit_edge769.loopexit, label %.lr.ph768

bb.bt:                                            ; preds = %_ZN8DecGraph3minIfEEfRSt6vectorIT_SaIS2_EE.exit
  %i.ut = load ptr, ptr %3, align 8, !tbaa !67
  %i.uu = load i32, ptr %i.ut, align 4, !tbaa !46
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %_ZN8DecGraph3minIfEEfRSt6vectorIT_SaIS2_EE.exit
  %.096 = phi i32 [ %i.uu, %bb.bt ], [ %i.rm, %_ZN8DecGraph3minIfEEfRSt6vectorIT_SaIS2_EE.exit ]
  %i.uv = ptrtoint ptr %.sroa.15.0.lcssa to i64   ; 3 uses
  %i.uw = ptrtoint ptr %.sroa.0495.0.lcssa to i64 ; 4 uses
  %i.ux = sub i64 %i.uv, %i.uw                    ; 8 uses
  %i.uy = ashr exact i64 %i.ux, 2                 ; 7 uses
  %i.uz = icmp ugt i64 %i.uy, 1
  br i1 %i.uz, label %bb.bv, label %._crit_edge831

._crit_edge831:                                   ; preds = %bb.bu
  %.pre832 = load ptr, ptr %2, align 16, !tbaa !93
  %.pre833 = load ptr, ptr %i.k, align 8, !tbaa !93
  br label %bb.dl

bb.bv:                                            ; preds = %bb.bu
  %i.va = icmp ugt i64 %i.uy, 2305843009213693951
  br i1 %i.va, label %bb.bw, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.bw:                                            ; preds = %bb.bv
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #40
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.bv
  %i.vb = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ux) #37 ; 10 uses
  %i.vc = add i64 %i.uv, -4
  %i.vd = sub i64 %i.vc, %i.uw
  %i.ve = and i64 %i.vd, -4
  %i.vf = add i64 %i.ve, 4
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.vb, i8 0, i64 %i.vf, i1 false), !tbaa !84
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vb, i64 %i.ux
  %i.vh = load ptr, ptr %2, align 16, !tbaa !93   ; 3 uses
  %i.vi = load ptr, ptr %i.k, align 8, !tbaa !93  ; 3 uses
  %.not654775 = icmp eq ptr %i.vh, %i.vi
  br i1 %.not654775, label %._crit_edge778, label %.lr.ph777.preheader

.lr.ph777.preheader:                              ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.vj = add i64 %i.uv, -4
  %i.vk = sub i64 %i.vj, %i.uw                    ; 2 uses
  %i.vl = lshr i64 %i.vk, 2
  %i.vm = add nuw nsw i64 %i.vl, 1                ; 2 uses
  %min.iters.check1147 = icmp ult i64 %i.vk, 28
  %n.vec1149 = and i64 %i.vm, 9223372036854775800 ; 3 uses
  %i.vn = shl i64 %n.vec1149, 2
  %cmp.n1154 = icmp eq i64 %i.vm, %n.vec1149
  %min.iters.check = icmp ult i64 %i.uy, 8
  %n.vec = and i64 %i.uy, 2305843009213693944     ; 3 uses
  %cmp.n = icmp eq i64 %i.uy, %n.vec
  br label %.lr.ph777

._crit_edge778:                                   ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit344, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.vo = icmp eq ptr %.sroa.15.0.lcssa, %.sroa.0495.0.lcssa
  %.not9.i.i243 = icmp samesign eq i64 %i.ux, 4
  %or.cond.i.i244 = select i1 %i.vo, i1 true, i1 %.not9.i.i243
  br i1 %or.cond.i.i244, label %_ZNSt6vectorIfSaIfEED2Ev.exit254, label %.lr.ph.preheader.i.i245

.lr.ph.preheader.i.i245:                          ; preds = %._crit_edge778
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vb, i64 4
  %.pre.i.i246 = load float, ptr %i.vb, align 4, !tbaa !84
  br label %.lr.ph.i.i247

.lr.ph.i.i247:                                    ; preds = %.lr.ph.i.i247, %.lr.ph.preheader.i.i245
  %i.vq = phi float [ %i.vv, %.lr.ph.i.i247 ], [ %.pre.i.i246, %.lr.ph.preheader.i.i245 ] ; 2 uses
  %i.vr = phi ptr [ %i.vu, %.lr.ph.i.i247 ], [ %i.vp, %.lr.ph.preheader.i.i245 ] ; 3 uses
  %.sroa.02.010.i.i248 = phi ptr [ %spec.select.i.i249, %.lr.ph.i.i247 ], [ %i.vb, %.lr.ph.preheader.i.i245 ]
  %i.vs = load float, ptr %i.vr, align 4, !tbaa !84 ; 2 uses
  %i.vt = fcmp olt float %i.vs, %i.vq             ; 2 uses
  %spec.select.i.i249 = select i1 %i.vt, ptr %i.vr, ptr %.sroa.02.010.i.i248 ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vr, i64 4 ; 2 uses
  %.not.i.i250 = icmp eq ptr %i.vu, %i.vg
  %i.vv = select i1 %i.vt, float %i.vs, float %i.vq
  br i1 %.not.i.i250, label %_ZNSt6vectorIfSaIfEED2Ev.exit254, label %.lr.ph.i.i247, !llvm.loop !15

_ZNSt6vectorIfSaIfEED2Ev.exit254:                 ; preds = %.lr.ph.i.i247, %._crit_edge778
  %.sroa.02.2.i.i251 = phi ptr [ %i.vb, %._crit_edge778 ], [ %spec.select.i.i249, %.lr.ph.i.i247 ]
  %i.vw = ptrtoint ptr %.sroa.02.2.i.i251 to i64
  %i.vx = ptrtoint ptr %i.vb to i64
  %i.vy = sub i64 %i.vw, %i.vx
  %sext113 = shl i64 %i.vy, 30
  %i.vz = ashr exact i64 %sext113, 30
  %i.wa = getelementptr inbounds nuw i8, ptr %.sroa.0495.0.lcssa, i64 %i.vz
  %i.wb = load i32, ptr %i.wa, align 4, !tbaa !46
  call void @_ZdlPvm(ptr noundef nonnull %i.vb, i64 noundef %i.ux) #35
  br label %bb.dl

.lr.ph777:                                        ; preds = %.lr.ph777.preheader, %_ZNSt6vectorIfSaIfEED2Ev.exit344
  %.sroa.0477.0776 = phi ptr [ %i.ajz, %_ZNSt6vectorIfSaIfEED2Ev.exit344 ], [ %i.vh, %.lr.ph777.preheader ] ; 2 uses
  %i.wc = load i32, ptr %.sroa.0477.0776, align 4, !tbaa !46
  %i.wd = load ptr, ptr %i.s, align 8, !tbaa !124
  %i.we = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ux) #37 ; 8 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 %i.ux
  br i1 %min.iters.check1147, label %.lr.ph.i.i.i.i.i.i.i.i.i257.preheader, label %vector.ph1148

vector.ph1148:                                    ; preds = %.lr.ph777
  %i.wg = getelementptr i8, ptr %i.we, i64 %i.vn
  br label %vector.body1150

vector.body1150:                                  ; preds = %vector.body1150, %vector.ph1148
  %index1151 = phi i64 [ 0, %vector.ph1148 ], [ %index.next1152, %vector.body1150 ] ; 2 uses
  %i.wh = shl i64 %index1151, 2
  %next.gep = getelementptr i8, ptr %i.we, i64 %i.wh ; 2 uses
  %i.wi = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> splat (float 8.192000e+03), ptr %next.gep, align 4, !tbaa !84
  store <4 x float> splat (float 8.192000e+03), ptr %i.wi, align 4, !tbaa !84
  %index.next1152 = add nuw i64 %index1151, 8     ; 2 uses
  %i.wj = icmp eq i64 %index.next1152, %n.vec1149
  br i1 %i.wj, label %middle.block1153, label %vector.body1150, !llvm.loop !431

middle.block1153:                                 ; preds = %vector.body1150
  br i1 %cmp.n1154, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit262.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i257.preheader

.lr.ph.i.i.i.i.i.i.i.i.i257.preheader:            ; preds = %.lr.ph777, %middle.block1153
  %.07.i.i.i.i.i.i.i.i.i258.ph = phi ptr [ %i.we, %.lr.ph777 ], [ %i.wg, %middle.block1153 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i257

.lr.ph.i.i.i.i.i.i.i.i.i257:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i257.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i257
  %.07.i.i.i.i.i.i.i.i.i258 = phi ptr [ %i.wk, %.lr.ph.i.i.i.i.i.i.i.i.i257 ], [ %.07.i.i.i.i.i.i.i.i.i258.ph, %.lr.ph.i.i.i.i.i.i.i.i.i257.preheader ] ; 2 uses
  store float 8.192000e+03, ptr %.07.i.i.i.i.i.i.i.i.i258, align 4, !tbaa !84
  %i.wk = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i258, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i259 = icmp eq ptr %i.wk, %i.wf
  br i1 %.not.i.i.i.i.i.i.i.i.i259, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit262.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i257, !llvm.loop !432

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit262.preheader: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i257, %middle.block1153
  %i.wl = sext i32 %i.wc to i64
  %i.wm = getelementptr inbounds nuw [48 x i8], ptr %i.wd, i64 %i.wl ; 3 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 8 ; 5 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wm, i64 32 ; 3 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wm, i64 24 ; 2 uses
  br label %bb.bx

bb.bx:                                            ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit262.preheader, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit262
  %.sroa.0466.0773 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit262.preheader ], [ %i.ajr, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit262 ] ; 3 uses
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0495.0.lcssa, i64 %.sroa.0466.0773 ; 3 uses
  %i.wr = load ptr, ptr %i.ar, align 8, !tbaa !135 ; 2 uses
  %.not10.i.i.i269 = icmp eq ptr %i.wr, null
  br i1 %.not10.i.i.i269, label %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit.thread, label %.lr.ph.i.i.i270

.lr.ph.i.i.i270:                                  ; preds = %bb.bx
  %i.ws = load i32, ptr %i.wq, align 4, !tbaa !46 ; 2 uses
  br label %bb.by

bb.by:                                            ; preds = %bb.by, %.lr.ph.i.i.i270
  %.012.i.i.i271 = phi ptr [ %i.wr, %.lr.ph.i.i.i270 ], [ %.1.i.i.i276, %bb.by ] ; 4 uses
  %.0811.i.i.i272 = phi ptr [ %i.as, %.lr.ph.i.i.i270 ], [ %.19.i.i.i273, %bb.by ] ; 2 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %.012.i.i.i271, i64 32
  %i.wu = load i32, ptr %i.wt, align 4, !tbaa !46
  %i.wv = icmp slt i32 %i.wu, %i.ws               ; 3 uses
  %.19.i.i.i273 = select i1 %i.wv, ptr %.0811.i.i.i272, ptr %.012.i.i.i271 ; 2 uses
  %.1.in.v.i.i.i274 = select i1 %i.wv, i64 24, i64 16
  %.1.in.i.i.i275 = getelementptr inbounds nuw i8, ptr %.012.i.i.i271, i64 %.1.in.v.i.i.i274
  %.1.i.i.i276 = load ptr, ptr %.1.in.i.i.i275, align 8, !tbaa !100 ; 2 uses
  %.not.i.i.i277 = icmp eq ptr %.1.i.i.i276, null
  br i1 %.not.i.i.i277, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i.i, label %bb.by, !llvm.loop !16

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i.i: ; preds = %bb.by
  %i.ww = icmp eq ptr %.19.i.i.i273, %i.as
  br i1 %i.ww, label %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit.thread, label %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit

_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit:        ; preds = %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i.i
  %.19.i.i.i273.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.wv, ptr %.0811.i.i.i272, ptr %.012.i.i.i271
  %.19.i.i.i273.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i273.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.wx = load i32, ptr %.19.i.i.i273.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !46
  %i.wy = icmp slt i32 %i.ws, %i.wx
  br i1 %i.wy, label %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit.thread, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit262

_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit.thread: ; preds = %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i.i, %bb.bx, %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  %i.wz = load i32, ptr %i.wq, align 4, !tbaa !46 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !455)
  %i.xa = load ptr, ptr %i.wn, align 8, !tbaa !36, !noalias !455
  %i.xb = icmp eq ptr %i.xa, null
  %i.xc = load i64, ptr %i.wo, align 8, !noalias !455 ; 2 uses
  %i.xd = icmp eq i64 %i.xc, 0
  %i.xe = select i1 %i.xb, i1 true, i1 %i.xd
  store i64 0, ptr %i.at, align 8, !tbaa !37, !alias.scope !455
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 17, i1 false), !alias.scope !455
  br i1 %i.xe, label %_ZN8DecGraph10TruthTable8cofactorEjb.exit, label %bb.bz

bb.bz:                                            ; preds = %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit.thread
  call void @_ZN8DecGraph10TruthTable6createEm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %i.xc)
  %i.xf = load i8, ptr %i.wp, align 8, !tbaa !49, !noalias !455
  %i.xg = zext i8 %i.xf to i32                    ; 2 uses
  %.not.i280 = icmp ult i32 %i.wz, %i.xg
  br i1 %.not.i280, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.xh = load ptr, ptr @stderr, align 8, !tbaa !74, !noalias !455
  %i.xi = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.xh, ptr noundef nonnull @.str, i32 noundef %i.wz, i32 noundef %i.xg) #38, !noalias !455 ; 0 uses
  call void @exit(i32 noundef -1) #39, !noalias !455
  unreachable

bb.cb:                                            ; preds = %bb.bz
  %i.xj = load ptr, ptr %i.wn, align 8, !tbaa !36, !noalias !455 ; 6 uses
  %.not.i.i281 = icmp eq ptr %i.xj, null          ; 3 uses
  br i1 %.not.i.i281, label %_ZNK8DecGraph10TruthTable4dataEv.exit.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 8
  %i.xl = load ptr, ptr %i.xk, align 8, !tbaa !47, !noalias !455
  br label %_ZNK8DecGraph10TruthTable4dataEv.exit.i

_ZNK8DecGraph10TruthTable4dataEv.exit.i:          ; preds = %bb.cc, %bb.cb
  %.0.i.i = phi ptr [ %i.xl, %bb.cc ], [ null, %bb.cb ] ; 9 uses
  %.0.i.i1110 = ptrtoaddr ptr %.0.i.i to i64      ; 3 uses
  %i.xm = load ptr, ptr %11, align 8, !tbaa !36, !alias.scope !455 ; 2 uses
  %.not.i74.i = icmp eq ptr %i.xm, null
  br i1 %.not.i74.i, label %_ZNK8DecGraph10TruthTable4dataEv.exit76.i, label %bb.cd

bb.cd:                                            ; preds = %_ZNK8DecGraph10TruthTable4dataEv.exit.i
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 8
  %i.xo = load ptr, ptr %i.xn, align 8, !tbaa !47, !noalias !455
  br label %_ZNK8DecGraph10TruthTable4dataEv.exit76.i

_ZNK8DecGraph10TruthTable4dataEv.exit76.i:        ; preds = %bb.cd, %_ZNK8DecGraph10TruthTable4dataEv.exit.i
  %.0.i75.i = phi ptr [ %i.xo, %bb.cd ], [ null, %_ZNK8DecGraph10TruthTable4dataEv.exit.i ] ; 10 uses
  %.0.i75.i1109 = ptrtoaddr ptr %.0.i75.i to i64  ; 3 uses
  %i.xp = icmp samesign ult i32 %i.wz, 6
  br i1 %i.xp, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %_ZNK8DecGraph10TruthTable4dataEv.exit76.i
  br i1 %.not.i.i281, label %_ZN8DecGraph10TruthTable8cofactorEjb.exit, label %_ZNK8DecGraph10TruthTable6nWordsEv.exit.i

_ZNK8DecGraph10TruthTable6nWordsEv.exit.i:        ; preds = %bb.ce
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xj, i64 8
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xj, i64 16
  %i.xs = load ptr, ptr %i.xr, align 8, !tbaa !52, !noalias !455
  %i.xt = load ptr, ptr %i.xq, align 8, !tbaa !47, !noalias !455
  %i.xu = ptrtoint ptr %i.xs to i64
  %i.xv = ptrtoint ptr %i.xt to i64
  %i.xw = sub i64 %i.xu, %i.xv                    ; 3 uses
  %i.xx = and i64 %i.xw, 34359738360
  %.not132150.i = icmp eq i64 %i.xx, 0
  br i1 %.not132150.i, label %_ZN8DecGraph10TruthTable8cofactorEjb.exit, label %.lr.ph152.i

.lr.ph152.i:                                      ; preds = %_ZNK8DecGraph10TruthTable6nWordsEv.exit.i
  %i.xy = lshr exact i64 %i.xw, 3                 ; 2 uses
  %i.xz = shl nuw nsw i32 1, %i.wz
  %i.ya = zext nneg i32 %i.xz to i64              ; 4 uses
  %i.yb = zext nneg i32 %i.wz to i64
  %i.yc = getelementptr inbounds nuw [8 x i8], ptr @_ZN8DecGraphL15elementary_maskE, i64 %i.yb
  %i.yd = load i64, ptr %i.yc, align 8, !tbaa !50, !noalias !455 ; 4 uses
  %i.ye = and i64 %i.xy, 4294967295               ; 4 uses
  %min.iters.check1113 = icmp samesign ult i64 %i.ye, 4
  %i.yf = sub i64 %.0.i.i1110, %.0.i75.i1109
  %diff.check1111 = icmp ugt i64 %i.yf, -32
  %or.cond1185 = select i1 %min.iters.check1113, i1 true, i1 %diff.check1111
  br i1 %or.cond1185, label %scalar.ph1112.preheader, label %vector.ph1114

vector.ph1114:                                    ; preds = %.lr.ph152.i
  %n.vec1115 = and i64 %i.xy, 4294967292          ; 3 uses
  %broadcast.splatinsert1116 = insertelement <2 x i64> poison, i64 %i.ya, i64 0
  %broadcast.splat1117 = shufflevector <2 x i64> %broadcast.splatinsert1116, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1118 = insertelement <2 x i64> poison, i64 %i.yd, i64 0
  %broadcast.splat1119 = shufflevector <2 x i64> %broadcast.splatinsert1118, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1120
end_hunk_0
begin_hunk_1_@_ZN8DecGraph15DecisionDiagram42buildWithTheseSupportWithEntropyAndFourierERSt6vectorIiSaIiEERSt3setIiSt4lessIiES2_E:bb.a
  %i.du = select i1 %i.dt, float 0.000000e+00, float %i.ds
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0388.0, i64 %indvars.iv.ph ; 2 uses
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !84
  %i.dx = fadd float %i.dw, %i.du
  store float %i.dx, ptr %i.dv, align 4, !tbaa !84
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph501.prol.loopexit

.lr.ph501.prol.loopexit:                          ; preds = %.lr.ph501.prol, %.lr.ph501.preheader864
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph501.preheader864 ], [ %indvars.iv.next.prol, %.lr.ph501.prol ]
  %i.dy = icmp eq i64 %indvars.iv.ph, %i.at
  br i1 %i.dy, label %._crit_edge.thread, label %.lr.ph501

._crit_edge:                                      ; preds = %.lr.ph504
  %.not.i.i.i91 = icmp eq ptr %.pre577, null
  br i1 %.not.i.i.i91, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.lr.ph501.prol.loopexit, %.lr.ph501, %middle.block843, %._crit_edge
  %i.dz = load ptr, ptr %i.y, align 8, !tbaa !82
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = ptrtoint ptr %.pre577 to i64
  %i.ec = sub i64 %i.ea, %i.eb
  call void @_ZdlPvm(ptr noundef nonnull %.pre577, i64 noundef %i.ec) #35
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %._crit_edge, %._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0383.0503, i64 4 ; 2 uses
  %.not436 = icmp eq ptr %i.ed, %i.cj
  br i1 %.not436, label %._crit_edge505, label %.lr.ph504

.lr.ph501:                                        ; preds = %.lr.ph501.prol.loopexit, %.lr.ph501
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph501 ], [ %indvars.iv.unr, %.lr.ph501.prol.loopexit ] ; 4 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %.pre577, i64 %indvars.iv
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !84 ; 2 uses
  %i.eg = fcmp oeq float %i.ef, 1.024000e+03
  %i.eh = select i1 %i.eg, float 0.000000e+00, float %i.ef
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0388.0, i64 %indvars.iv ; 2 uses
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !84
  %i.ek = fadd float %i.ej, %i.eh
  store float %i.ek, ptr %i.ei, align 4, !tbaa !84
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.pre577, i64 %indvars.iv.next
  %i.em = load float, ptr %i.el, align 4, !tbaa !84 ; 2 uses
  %i.en = fcmp oeq float %i.em, 1.024000e+03
  %i.eo = select i1 %i.en, float 0.000000e+00, float %i.em
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0388.0, i64 %indvars.iv.next ; 2 uses
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !84
  %i.er = fadd float %i.eq, %i.eo
  store float %i.er, ptr %i.ep, align 4, !tbaa !84
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %.not.1 = icmp eq i64 %indvars.iv.next.1, %i.ao
  br i1 %.not.1, label %._crit_edge.thread, label %.lr.ph501, !llvm.loop !463

._crit_edge512.loopexit:                          ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.es = ptrtoint ptr %.sroa.23.1 to i64
  br label %._crit_edge512

._crit_edge512:                                   ; preds = %._crit_edge512.loopexit, %_ZSt11min_elementIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEET_S7_S7_.exit
  %.sroa.0358.0.lcssa = phi ptr [ null, %_ZSt11min_elementIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEET_S7_S7_.exit ], [ %.sroa.0358.1, %._crit_edge512.loopexit ] ; 6 uses
  %.sroa.15.0.lcssa = phi ptr [ null, %_ZSt11min_elementIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEET_S7_S7_.exit ], [ %.sroa.15.1, %._crit_edge512.loopexit ] ; 2 uses
  %.sroa.23.0.lcssa = phi i64 [ 0, %_ZSt11min_elementIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEET_S7_S7_.exit ], [ %i.es, %._crit_edge512.loopexit ]
  br i1 %or.cond.i.i, label %_ZN8DecGraph3minIfEEfRSt6vectorIT_SaIS2_EE.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %._crit_edge512
  %.pre.i.i.i = load float, ptr %.sroa.0388.0, align 4, !tbaa !84
  br label %.lr.ph.i.i.i92

.lr.ph.i.i.i92:                                   ; preds = %.lr.ph.i.i.i92, %.lr.ph.preheader.i.i.i
  %i.et = phi float [ %i.ey, %.lr.ph.i.i.i92 ], [ %.pre.i.i.i, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.eu = phi ptr [ %i.ex, %.lr.ph.i.i.i92 ], [ %i.cm, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.sroa.02.010.i.i.i = phi ptr [ %spec.select.i.i.i, %.lr.ph.i.i.i92 ], [ %.sroa.0388.0, %.lr.ph.preheader.i.i.i ]
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !84 ; 2 uses
  %i.ew = fcmp olt float %i.ev, %i.et             ; 2 uses
  %spec.select.i.i.i = select i1 %i.ew, ptr %i.eu, ptr %.sroa.02.010.i.i.i ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 4 ; 2 uses
  %.not.i.i.i93 = icmp eq ptr %i.ex, %.0.i.i.i.i.i.i.i
  %i.ey = select i1 %i.ew, float %i.ev, float %i.et
  br i1 %.not.i.i.i93, label %_ZN8DecGraph3minIfEEfRSt6vectorIT_SaIS2_EE.exit, label %.lr.ph.i.i.i92, !llvm.loop !15

_ZN8DecGraph3minIfEEfRSt6vectorIT_SaIS2_EE.exit:  ; preds = %.lr.ph.i.i.i92, %._crit_edge512
  %.sroa.02.2.i.i.i = phi ptr [ %.sroa.0388.0, %._crit_edge512 ], [ %spec.select.i.i.i, %.lr.ph.i.i.i92 ]
  %i.ez = load float, ptr %.sroa.02.2.i.i.i, align 4, !tbaa !84
  %i.fa = fcmp oeq float %i.ez, 1.024000e+03
  br i1 %i.fa, label %bb.o, label %bb.p

.lr.ph511:                                        ; preds = %_ZSt11min_elementIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEET_S7_S7_.exit, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %indvars.iv571 = phi i64 [ %indvars.iv.next572, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ 0, %_ZSt11min_elementIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEET_S7_S7_.exit ] ; 6 uses
  %.sroa.23.0509 = phi ptr [ %.sroa.23.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %_ZSt11min_elementIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEET_S7_S7_.exit ] ; 5 uses
  %.sroa.15.0508 = phi ptr [ %.sroa.15.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %_ZSt11min_elementIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEET_S7_S7_.exit ] ; 5 uses
  %.sroa.0358.0507 = phi ptr [ %.sroa.0358.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %_ZSt11min_elementIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEET_S7_S7_.exit ] ; 7 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0388.0, i64 %indvars.iv571
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !84
  %i.fd = fcmp oeq float %i.fc, %i.da
  br i1 %i.fd, label %bb.i, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.i:                                             ; preds = %.lr.ph511
  %i.fe = load ptr, ptr %i.l, align 8, !tbaa !135 ; 2 uses
  %.not10.i.i.i94 = icmp eq ptr %i.fe, null
  br i1 %.not10.i.i.i94, label %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit.thread, label %.lr.ph.i.i.i95

.lr.ph.i.i.i95:                                   ; preds = %bb.i, %.lr.ph.i.i.i95
  %.012.i.i.i96 = phi ptr [ %.1.i.i.i101, %.lr.ph.i.i.i95 ], [ %i.fe, %bb.i ] ; 4 uses
  %.0811.i.i.i97 = phi ptr [ %.19.i.i.i98, %.lr.ph.i.i.i95 ], [ %i.k, %bb.i ] ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.012.i.i.i96, i64 32
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !46
  %i.fh = sext i32 %i.fg to i64
  %i.fi = icmp sgt i64 %indvars.iv571, %i.fh      ; 3 uses
  %.19.i.i.i98 = select i1 %i.fi, ptr %.0811.i.i.i97, ptr %.012.i.i.i96 ; 2 uses
  %.1.in.v.i.i.i99 = select i1 %i.fi, i64 24, i64 16
  %.1.in.i.i.i100 = getelementptr inbounds nuw i8, ptr %.012.i.i.i96, i64 %.1.in.v.i.i.i99
  %.1.i.i.i101 = load ptr, ptr %.1.in.i.i.i100, align 8, !tbaa !100 ; 2 uses
  %.not.i.i.i102 = icmp eq ptr %.1.i.i.i101, null
  br i1 %.not.i.i.i102, label %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i, label %.lr.ph.i.i.i95, !llvm.loop !8

_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i: ; preds = %.lr.ph.i.i.i95
  %i.fj = icmp eq ptr %.19.i.i.i98, %i.k
  br i1 %i.fj, label %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit.thread, label %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit

_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit:      ; preds = %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i
  %.19.i.i.i98.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.fi, ptr %.0811.i.i.i97, ptr %.012.i.i.i96
  %.19.i.i.i98.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i98.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.fk = load i32, ptr %.19.i.i.i98.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !46
  %i.fl = sext i32 %i.fk to i64
  %.not443 = icmp slt i64 %indvars.iv571, %i.fl
  br i1 %.not443, label %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit.thread, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit.thread: ; preds = %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i, %bb.i, %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit
  %.not.i = icmp eq ptr %.sroa.15.0508, %.sroa.23.0509
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit.thread
  %i.fm = trunc nuw nsw i64 %indvars.iv571 to i32
  store i32 %i.fm, ptr %.sroa.15.0508, align 4, !tbaa !46
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.15.0508, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.k:                                             ; preds = %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit.thread
  %i.fo = ptrtoint ptr %.sroa.23.0509 to i64
  %i.fp = ptrtoint ptr %.sroa.0358.0507 to i64
  %i.fq = sub i64 %i.fo, %i.fp                    ; 6 uses
  %i.fr = icmp eq i64 %i.fq, 9223372036854775804
  br i1 %i.fr, label %bb.l, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #40
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.fs = ashr exact i64 %i.fq, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.fs, i64 1)
  %i.ft = add nsw i64 %.sroa.speculated.i.i.i, %i.fs ; 2 uses
  %i.fu = icmp ult i64 %i.ft, %i.fs
  %i.fv = call i64 @llvm.umin.i64(i64 %i.ft, i64 2305843009213693951)
  %i.fw = select i1 %i.fu, i64 2305843009213693951, i64 %i.fv ; 3 uses
  %.not.i.i.i104 = icmp ne i64 %i.fw, 0
  call void @llvm.assume(i1 %.not.i.i.i104)
  %i.fx = shl nuw nsw i64 %i.fw, 2
  %i.fy = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fx) #37 ; 4 uses
  %i.fz = getelementptr inbounds i8, ptr %i.fy, i64 %i.fq ; 2 uses
  %i.ga = trunc nuw nsw i64 %indvars.iv571 to i32
  store i32 %i.ga, ptr %i.fz, align 4, !tbaa !46
  %i.gb = icmp sgt i64 %i.fq, 0
  br i1 %i.gb, label %bb.m, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.m:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fy, ptr align 4 %.sroa.0358.0507, i64 %i.fq, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.m, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 4
  %.not.i17.i.i = icmp eq ptr %.sroa.0358.0507, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0358.0507, i64 noundef %i.fq) #35
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %i.fw
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.j, %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit, %.lr.ph511
  %.sroa.0358.1 = phi ptr [ %.sroa.0358.0507, %.lr.ph511 ], [ %.sroa.0358.0507, %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit ], [ %i.fy, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.0358.0507, %bb.j ] ; 2 uses
  %.sroa.15.1 = phi ptr [ %.sroa.15.0508, %.lr.ph511 ], [ %.sroa.15.0508, %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit ], [ %i.gc, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.fn, %bb.j ] ; 2 uses
  %.sroa.23.1 = phi ptr [ %.sroa.23.0509, %.lr.ph511 ], [ %.sroa.23.0509, %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit ], [ %i.gd, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.23.0509, %bb.j ] ; 2 uses
  %indvars.iv.next572 = add nuw nsw i64 %indvars.iv571, 1 ; 2 uses
  %.not437 = icmp eq i64 %indvars.iv.next572, %i.ao
  br i1 %.not437, label %._crit_edge512.loopexit, label %.lr.ph511

bb.o:                                             ; preds = %_ZN8DecGraph3minIfEEfRSt6vectorIT_SaIS2_EE.exit
  %i.ge = load ptr, ptr %i.z, align 8, !tbaa !104
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 32
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !46
  store i32 %i.gg, ptr %i.a, align 4, !tbaa !46
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN8DecGraph3minIfEEfRSt6vectorIT_SaIS2_EE.exit
  %i.gh = ptrtoint ptr %.sroa.15.0.lcssa to i64   ; 3 uses
  %i.gi = ptrtoint ptr %.sroa.0358.0.lcssa to i64 ; 4 uses
  %i.gj = sub i64 %i.gh, %i.gi                    ; 8 uses
  %i.gk = ashr exact i64 %i.gj, 2                 ; 7 uses
  %i.gl = icmp ugt i64 %i.gk, 1
  br i1 %i.gl, label %bb.q, label %bb.bg

bb.q:                                             ; preds = %bb.p
  %i.gm = icmp ugt i64 %i.gk, 2305843009213693951
  br i1 %i.gm, label %bb.r, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.r:                                             ; preds = %bb.q
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #40
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.q
  %i.gn = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gj) #37 ; 10 uses
  %i.go = add i64 %i.gh, -4
  %i.gp = sub i64 %i.go, %i.gi
  %i.gq = and i64 %i.gp, -4
  %i.gr = add i64 %i.gq, 4
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.gn, i8 0, i64 %i.gr, i1 false), !tbaa !84
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gj
  %i.gt = load ptr, ptr %2, align 8, !tbaa !93    ; 2 uses
  %i.gu = load ptr, ptr %i.s, align 8, !tbaa !93  ; 2 uses
  %.not438517 = icmp eq ptr %i.gt, %i.gu
  br i1 %.not438517, label %._crit_edge520, label %.lr.ph519.preheader

.lr.ph519.preheader:                              ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.gv = add i64 %i.gh, -4
  %i.gw = sub i64 %i.gv, %i.gi                    ; 2 uses
  %i.gx = lshr i64 %i.gw, 2
  %i.gy = add nuw nsw i64 %i.gx, 1                ; 2 uses
  %min.iters.check821 = icmp ult i64 %i.gw, 28
  %n.vec823 = and i64 %i.gy, 9223372036854775800  ; 3 uses
  %i.gz = shl i64 %n.vec823, 2
  %cmp.n828 = icmp eq i64 %i.gy, %n.vec823
  %min.iters.check = icmp ult i64 %i.gk, 8
  %n.vec = and i64 %i.gk, 2305843009213693944     ; 3 uses
  %cmp.n = icmp eq i64 %i.gk, %n.vec
  br label %.lr.ph519

._crit_edge520:                                   ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit204, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ha = icmp eq ptr %.sroa.15.0.lcssa, %.sroa.0358.0.lcssa
  %.not9.i.i112 = icmp samesign eq i64 %i.gj, 4
  %or.cond.i.i113 = select i1 %i.ha, i1 true, i1 %.not9.i.i112
  br i1 %or.cond.i.i113, label %_ZNSt6vectorIfSaIfEED2Ev.exit123, label %.lr.ph.preheader.i.i114

.lr.ph.preheader.i.i114:                          ; preds = %._crit_edge520
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gn, i64 4
  %.pre.i.i115 = load float, ptr %i.gn, align 4, !tbaa !84
  br label %.lr.ph.i.i116

.lr.ph.i.i116:                                    ; preds = %.lr.ph.i.i116, %.lr.ph.preheader.i.i114
  %i.hc = phi float [ %i.hh, %.lr.ph.i.i116 ], [ %.pre.i.i115, %.lr.ph.preheader.i.i114 ] ; 2 uses
  %i.hd = phi ptr [ %i.hg, %.lr.ph.i.i116 ], [ %i.hb, %.lr.ph.preheader.i.i114 ] ; 3 uses
  %.sroa.02.010.i.i117 = phi ptr [ %spec.select.i.i118, %.lr.ph.i.i116 ], [ %i.gn, %.lr.ph.preheader.i.i114 ]
  %i.he = load float, ptr %i.hd, align 4, !tbaa !84 ; 2 uses
  %i.hf = fcmp olt float %i.he, %i.hc             ; 2 uses
  %spec.select.i.i118 = select i1 %i.hf, ptr %i.hd, ptr %.sroa.02.010.i.i117 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 4 ; 2 uses
  %.not.i.i119 = icmp eq ptr %i.hg, %i.gs
  %i.hh = select i1 %i.hf, float %i.he, float %i.hc
  br i1 %.not.i.i119, label %_ZNSt6vectorIfSaIfEED2Ev.exit123, label %.lr.ph.i.i116, !llvm.loop !15

_ZNSt6vectorIfSaIfEED2Ev.exit123:                 ; preds = %.lr.ph.i.i116, %._crit_edge520
  %.sroa.02.2.i.i120 = phi ptr [ %i.gn, %._crit_edge520 ], [ %spec.select.i.i118, %.lr.ph.i.i116 ]
  %i.hi = ptrtoint ptr %.sroa.02.2.i.i120 to i64
  %i.hj = ptrtoint ptr %i.gn to i64
  %i.hk = sub i64 %i.hi, %i.hj
  %sext77 = shl i64 %i.hk, 30
  %i.hl = ashr exact i64 %sext77, 30
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.0358.0.lcssa, i64 %i.hl
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !46
  store i32 %i.hn, ptr %i.a, align 4, !tbaa !46
  call void @_ZdlPvm(ptr noundef nonnull %i.gn, i64 noundef %i.gj) #35
  br label %bb.bg

.lr.ph519:                                        ; preds = %.lr.ph519.preheader, %_ZNSt6vectorIfSaIfEED2Ev.exit204
  %.sroa.0339.0518 = phi ptr [ %i.vl, %_ZNSt6vectorIfSaIfEED2Ev.exit204 ], [ %i.gt, %.lr.ph519.preheader ] ; 2 uses
  %i.ho = load i32, ptr %.sroa.0339.0518, align 4, !tbaa !46
  %i.hp = load ptr, ptr %i.d, align 8, !tbaa !124
  %i.hq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gj) #37 ; 8 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.gj
  br i1 %min.iters.check821, label %.lr.ph.i.i.i.i.i.i.i.i.i126.preheader, label %vector.ph822

vector.ph822:                                     ; preds = %.lr.ph519
  %i.hs = getelementptr i8, ptr %i.hq, i64 %i.gz
  br label %vector.body824

vector.body824:                                   ; preds = %vector.body824, %vector.ph822
  %index825 = phi i64 [ 0, %vector.ph822 ], [ %index.next826, %vector.body824 ] ; 2 uses
  %i.ht = shl i64 %index825, 2
  %next.gep = getelementptr i8, ptr %i.hq, i64 %i.ht ; 2 uses
  %i.hu = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> splat (float 8.192000e+03), ptr %next.gep, align 4, !tbaa !84
  store <4 x float> splat (float 8.192000e+03), ptr %i.hu, align 4, !tbaa !84
  %index.next826 = add nuw i64 %index825, 8       ; 2 uses
  %i.hv = icmp eq i64 %index.next826, %n.vec823
  br i1 %i.hv, label %middle.block827, label %vector.body824, !llvm.loop !464

middle.block827:                                  ; preds = %vector.body824
  br i1 %cmp.n828, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit131.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i126.preheader

.lr.ph.i.i.i.i.i.i.i.i.i126.preheader:            ; preds = %.lr.ph519, %middle.block827
  %.07.i.i.i.i.i.i.i.i.i127.ph = phi ptr [ %i.hq, %.lr.ph519 ], [ %i.hs, %middle.block827 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i126

.lr.ph.i.i.i.i.i.i.i.i.i126:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i126.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i126
  %.07.i.i.i.i.i.i.i.i.i127 = phi ptr [ %i.hw, %.lr.ph.i.i.i.i.i.i.i.i.i126 ], [ %.07.i.i.i.i.i.i.i.i.i127.ph, %.lr.ph.i.i.i.i.i.i.i.i.i126.preheader ] ; 2 uses
  store float 8.192000e+03, ptr %.07.i.i.i.i.i.i.i.i.i127, align 4, !tbaa !84
  %i.hw = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i127, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i128 = icmp eq ptr %i.hw, %i.hr
  br i1 %.not.i.i.i.i.i.i.i.i.i128, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit131.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i126, !llvm.loop !465

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit131.preheader: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i126, %middle.block827
  %i.hx = sext i32 %i.ho to i64
  %i.hy = getelementptr inbounds nuw [48 x i8], ptr %i.hp, i64 %i.hx ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 8 ; 5 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 32 ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hy, i64 24 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit131.preheader, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit131
  %.sroa.0328.0515 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit131.preheader ], [ %i.vd, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit131 ] ; 3 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0358.0.lcssa, i64 %.sroa.0328.0515 ; 3 uses
  %i.id = load ptr, ptr %i.l, align 8, !tbaa !135 ; 2 uses
  %.not10.i.i.i137 = icmp eq ptr %i.id, null
  br i1 %.not10.i.i.i137, label %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit149.thread, label %.lr.ph.i.i.i138

.lr.ph.i.i.i138:                                  ; preds = %bb.s
  %i.ie = load i32, ptr %i.ic, align 4, !tbaa !46 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.lr.ph.i.i.i138
  %.012.i.i.i139 = phi ptr [ %i.id, %.lr.ph.i.i.i138 ], [ %.1.i.i.i144, %bb.t ] ; 4 uses
  %.0811.i.i.i140 = phi ptr [ %i.k, %.lr.ph.i.i.i138 ], [ %.19.i.i.i141, %bb.t ] ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.012.i.i.i139, i64 32
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !46
  %i.ih = icmp slt i32 %i.ig, %i.ie               ; 3 uses
  %.19.i.i.i141 = select i1 %i.ih, ptr %.0811.i.i.i140, ptr %.012.i.i.i139 ; 2 uses
  %.1.in.v.i.i.i142 = select i1 %i.ih, i64 24, i64 16
  %.1.in.i.i.i143 = getelementptr inbounds nuw i8, ptr %.012.i.i.i139, i64 %.1.in.v.i.i.i142
  %.1.i.i.i144 = load ptr, ptr %.1.in.i.i.i143, align 8, !tbaa !100 ; 2 uses
  %.not.i.i.i145 = icmp eq ptr %.1.i.i.i144, null
  br i1 %.not.i.i.i145, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i.i146, label %bb.t, !llvm.loop !16

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i.i146: ; preds = %bb.t
  %i.ii = icmp eq ptr %.19.i.i.i141, %i.k
  br i1 %i.ii, label %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit149.thread, label %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit149

_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit149:     ; preds = %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i.i146
  %.19.i.i.i141.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ih, ptr %.0811.i.i.i140, ptr %.012.i.i.i139
  %.19.i.i.i141.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i141.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.ij = load i32, ptr %.19.i.i.i141.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !46
  %i.ik = icmp slt i32 %i.ie, %i.ij
  br i1 %i.ik, label %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit149.thread, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit131

_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit149.thread: ; preds = %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i.i146, %bb.s, %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit149
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.il = load i32, ptr %i.ic, align 4, !tbaa !46 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !485)
  %i.im = load ptr, ptr %i.hz, align 8, !tbaa !36, !noalias !485
  %i.in = icmp eq ptr %i.im, null
  %i.io = load i64, ptr %i.ia, align 8, !noalias !485 ; 2 uses
  %i.ip = icmp eq i64 %i.io, 0
  %i.iq = select i1 %i.in, i1 true, i1 %i.ip
  store i64 0, ptr %i.aa, align 8, !tbaa !37, !alias.scope !485
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 17, i1 false), !alias.scope !485
  br i1 %i.iq, label %_ZN8DecGraph10TruthTable8cofactorEjb.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit149.thread
  call void @_ZN8DecGraph10TruthTable6createEm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.io)
  %i.ir = load i8, ptr %i.ib, align 8, !tbaa !49, !noalias !485
  %i.is = zext i8 %i.ir to i32                    ; 2 uses
  %.not.i150 = icmp ult i32 %i.il, %i.is
  br i1 %.not.i150, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.it = load ptr, ptr @stderr, align 8, !tbaa !74, !noalias !485
  %i.iu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.it, ptr noundef nonnull @.str, i32 noundef %i.il, i32 noundef %i.is) #38, !noalias !485 ; 0 uses
  call void @exit(i32 noundef -1) #39, !noalias !485
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.iv = load ptr, ptr %i.hz, align 8, !tbaa !36, !noalias !485 ; 6 uses
  %.not.i.i151 = icmp eq ptr %i.iv, null          ; 3 uses
  br i1 %.not.i.i151, label %_ZNK8DecGraph10TruthTable4dataEv.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !47, !noalias !485
  br label %_ZNK8DecGraph10TruthTable4dataEv.exit.i

_ZNK8DecGraph10TruthTable4dataEv.exit.i:          ; preds = %bb.x, %bb.w
  %.0.i.i = phi ptr [ %i.ix, %bb.x ], [ null, %bb.w ] ; 9 uses
  %.0.i.i784 = ptrtoaddr ptr %.0.i.i to i64       ; 3 uses
  %i.iy = load ptr, ptr %6, align 8, !tbaa !36, !alias.scope !485 ; 2 uses
  %.not.i74.i = icmp eq ptr %i.iy, null
  br i1 %.not.i74.i, label %_ZNK8DecGraph10TruthTable4dataEv.exit76.i, label %bb.y

bb.y:                                             ; preds = %_ZNK8DecGraph10TruthTable4dataEv.exit.i
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !47, !noalias !485
  br label %_ZNK8DecGraph10TruthTable4dataEv.exit76.i

_ZNK8DecGraph10TruthTable4dataEv.exit76.i:        ; preds = %bb.y, %_ZNK8DecGraph10TruthTable4dataEv.exit.i
  %.0.i75.i = phi ptr [ %i.ja, %bb.y ], [ null, %_ZNK8DecGraph10TruthTable4dataEv.exit.i ] ; 10 uses
  %.0.i75.i783 = ptrtoaddr ptr %.0.i75.i to i64   ; 3 uses
  %i.jb = icmp samesign ult i32 %i.il, 6
  br i1 %i.jb, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZNK8DecGraph10TruthTable4dataEv.exit76.i
  br i1 %.not.i.i151, label %_ZN8DecGraph10TruthTable8cofactorEjb.exit, label %_ZNK8DecGraph10TruthTable6nWordsEv.exit.i

_ZNK8DecGraph10TruthTable6nWordsEv.exit.i:        ; preds = %bb.z
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !52, !noalias !485
  %i.jf = load ptr, ptr %i.jc, align 8, !tbaa !47, !noalias !485
  %i.jg = ptrtoint ptr %i.je to i64
  %i.jh = ptrtoint ptr %i.jf to i64
  %i.ji = sub i64 %i.jg, %i.jh                    ; 3 uses
  %i.jj = and i64 %i.ji, 34359738360
  %.not132150.i = icmp eq i64 %i.jj, 0
  br i1 %.not132150.i, label %_ZN8DecGraph10TruthTable8cofactorEjb.exit, label %.lr.ph152.i

.lr.ph152.i:                                      ; preds = %_ZNK8DecGraph10TruthTable6nWordsEv.exit.i
  %i.jk = lshr exact i64 %i.ji, 3                 ; 2 uses
  %i.jl = shl nuw nsw i32 1, %i.il
  %i.jm = zext nneg i32 %i.jl to i64              ; 4 uses
  %i.jn = zext nneg i32 %i.il to i64
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr @_ZN8DecGraphL15elementary_maskE, i64 %i.jn
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !50, !noalias !485 ; 4 uses
  %i.jq = and i64 %i.jk, 4294967295               ; 4 uses
  %min.iters.check787 = icmp samesign ult i64 %i.jq, 4
  %i.jr = sub i64 %.0.i.i784, %.0.i75.i783
  %diff.check785 = icmp ugt i64 %i.jr, -32
  %or.cond = select i1 %min.iters.check787, i1 true, i1 %diff.check785
  br i1 %or.cond, label %scalar.ph786.preheader, label %vector.ph788

vector.ph788:                                     ; preds = %.lr.ph152.i
  %n.vec789 = and i64 %i.jk, 4294967292           ; 3 uses
  %broadcast.splatinsert790 = insertelement <2 x i64> poison, i64 %i.jm, i64 0
  %broadcast.splat791 = shufflevector <2 x i64> %broadcast.splatinsert790, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert792 = insertelement <2 x i64> poison, i64 %i.jp, i64 0
  %broadcast.splat793 = shufflevector <2 x i64> %broadcast.splatinsert792, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
end_hunk_1
