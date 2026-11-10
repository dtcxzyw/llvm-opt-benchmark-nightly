Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/speculative?download=true
inline.NumInlined: 5176
inline.NumDeleted: 2391
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_Z23common_speculative_initR25common_params_speculativej:bb.a
  store ptr %i.dm, ptr %i.dg, align 8, !tbaa !232
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  invoke void @_ZNSt6vectorI25common_speculative_configSaIS0_EE17_M_realloc_insertIJR23common_speculative_typeR25common_params_speculativeEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.dh, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(1480) %0)
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %.noexc167, %bb.al, %.thread754, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.dn = load ptr, ptr %2, align 8, !tbaa !681   ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !681 ; 2 uses
  %.not759843 = icmp eq ptr %i.dn, %i.dp
  br i1 %.not759843, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ap
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 21 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 11 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.dt = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.dv = getelementptr inbounds nuw i8, ptr %6, i64 34
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.dy = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.dz = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.ea = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.eb = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.ee = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ef = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.eg = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ei = getelementptr inbounds nuw i8, ptr %5, i64 34
  %i.ej = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ek = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.el = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.em = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.en = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.eo = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.er = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.et = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.eu = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ew = getelementptr inbounds nuw i8, ptr %4, i64 34
  %i.ex = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.fb = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.fc = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.ff = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 1416
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.fi = getelementptr inbounds nuw i8, ptr %7, i64 208 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %7, i64 216
  %i.fk = getelementptr inbounds nuw i8, ptr %7, i64 224
  %i.fl = getelementptr inbounds nuw i8, ptr %7, i64 136
  %i.fm = getelementptr inbounds nuw i8, ptr %7, i64 168
  %i.fn = getelementptr inbounds nuw i8, ptr %7, i64 184 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %7, i64 152 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.fq = getelementptr inbounds nuw i8, ptr %7, i64 96
  br label %bb.ar

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrI36common_speculative_impl_draft_simpleSt14default_deleteIS0_EED2Ev.exit
  %.pre896 = load ptr, ptr %3, align 8, !tbaa !96 ; 4 uses
  %i.fr = icmp eq ptr %.pre896, %i.abl
  br i1 %i.fr, label %._crit_edge.thread, label %bb.dy

bb.aq:                                            ; preds = %bb.ao, %bb.an, %bb.ak, %bb.aj, %bb.af, %bb.ae, %bb.aa, %bb.z, %bb.v, %bb.u, %bb.r, %bb.q, %bb.n, %bb.m, %bb.j, %bb.i, %bb.f, %bb.e, %bb.b
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ga

bb.ar:                                            ; preds = %.lr.ph, %_ZNSt10unique_ptrI36common_speculative_impl_draft_simpleSt14default_deleteIS0_EED2Ev.exit
  %i.ft = phi ptr [ null, %.lr.ph ], [ %i.aba, %_ZNSt10unique_ptrI36common_speculative_impl_draft_simpleSt14default_deleteIS0_EED2Ev.exit ] ; 15 uses
  %i.fu = phi ptr [ null, %.lr.ph ], [ %i.abb, %_ZNSt10unique_ptrI36common_speculative_impl_draft_simpleSt14default_deleteIS0_EED2Ev.exit ] ; 22 uses
  %i.fv = phi ptr [ null, %.lr.ph ], [ %i.abc, %_ZNSt10unique_ptrI36common_speculative_impl_draft_simpleSt14default_deleteIS0_EED2Ev.exit ] ; 20 uses
  %i.fw = phi ptr [ null, %.lr.ph ], [ %i.abd, %_ZNSt10unique_ptrI36common_speculative_impl_draft_simpleSt14default_deleteIS0_EED2Ev.exit ] ; 18 uses
  %i.fx = phi ptr [ null, %.lr.ph ], [ %i.abe, %_ZNSt10unique_ptrI36common_speculative_impl_draft_simpleSt14default_deleteIS0_EED2Ev.exit ] ; 16 uses
  %i.fy = phi ptr [ null, %.lr.ph ], [ %i.abf, %_ZNSt10unique_ptrI36common_speculative_impl_draft_simpleSt14default_deleteIS0_EED2Ev.exit ] ; 14 uses
  %i.fz = phi ptr [ null, %.lr.ph ], [ %i.abg, %_ZNSt10unique_ptrI36common_speculative_impl_draft_simpleSt14default_deleteIS0_EED2Ev.exit ] ; 9 uses
  %i.ga = phi ptr [ null, %.lr.ph ], [ %i.abh, %_ZNSt10unique_ptrI36common_speculative_impl_draft_simpleSt14default_deleteIS0_EED2Ev.exit ] ; 8 uses
  %i.gb = phi ptr [ null, %.lr.ph ], [ %i.abi, %_ZNSt10unique_ptrI36common_speculative_impl_draft_simpleSt14default_deleteIS0_EED2Ev.exit ] ; 7 uses
  %i.gc = phi ptr [ null, %.lr.ph ], [ %i.abj, %_ZNSt10unique_ptrI36common_speculative_impl_draft_simpleSt14default_deleteIS0_EED2Ev.exit ] ; 111 uses
  %i.gd = phi ptr [ null, %.lr.ph ], [ %i.abk, %_ZNSt10unique_ptrI36common_speculative_impl_draft_simpleSt14default_deleteIS0_EED2Ev.exit ] ; 6 uses
  %i.ge = phi ptr [ null, %.lr.ph ], [ %i.abl, %_ZNSt10unique_ptrI36common_speculative_impl_draft_simpleSt14default_deleteIS0_EED2Ev.exit ] ; 31 uses
  %.sroa.0674.0844 = phi ptr [ %i.dn, %.lr.ph ], [ %i.abm, %_ZNSt10unique_ptrI36common_speculative_impl_draft_simpleSt14default_deleteIS0_EED2Ev.exit ] ; 18 uses
  %i.gf = load i32, ptr %.sroa.0674.0844, align 8, !tbaa !235
  switch i32 %i.gf, label %_ZNSt10unique_ptrI36common_speculative_impl_draft_simpleSt14default_deleteIS0_EED2Ev.exit [
    i32 10, label %bb.dk
    i32 1, label %bb.as
    i32 2, label %bb.ay
    i32 3, label %bb.be
    i32 4, label %bb.bk
    i32 5, label %bb.bq
    i32 6, label %bb.bw
    i32 7, label %bb.cg
    i32 8, label %bb.cs
    i32 9, label %bb.de
  ]

bb.as:                                            ; preds = %bb.ar
  %i.gg = invoke noalias noundef nonnull dereferenceable(1544) ptr @_Znwm(i64 noundef 1544) #34
          to label %.noexc170 unwind label %.loopexit.split-lp764.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc170:                                        ; preds = %bb.as
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.0674.0844, i64 8
  invoke void @_ZN36common_speculative_impl_draft_simpleC2ERK25common_params_speculativej(ptr noundef nonnull align 8 dereferenceable(1544) %i.gg, ptr noundef nonnull align 8 dereferenceable(1480) %i.gh, i32 noundef %1)
          to label %_ZSt11make_uniqueI36common_speculative_impl_draft_simpleJRK25common_params_speculativeRjEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.at, !noalias !682

bb.at:                                            ; preds = %.noexc170
  %i.gi = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.gg, i64 noundef 1544) #32, !noalias !682
  br label %.body

_ZSt11make_uniqueI36common_speculative_impl_draft_simpleJRK25common_params_speculativeRjEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %.noexc170
  %.not.i.i171 = icmp eq ptr %i.ge, %i.fu
  br i1 %.not.i.i171, label %bb.av, label %bb.au

bb.au:                                            ; preds = %_ZSt11make_uniqueI36common_speculative_impl_draft_simpleJRK25common_params_speculativeRjEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.gj = ptrtoint ptr %i.gg to i64
  store i64 %i.gj, ptr %i.ge, align 8, !tbaa !98
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ge, i64 8 ; 2 uses
  store ptr %i.gk, ptr %i.dq, align 8, !tbaa !237
  br label %_ZNSt10unique_ptrI36common_speculative_impl_draft_simpleSt14default_deleteIS0_EED2Ev.exit

bb.av:                                            ; preds = %_ZSt11make_uniqueI36common_speculative_impl_draft_simpleJRK25common_params_speculativeRjEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.gl = ptrtoint ptr %i.fu to i64               ; 2 uses
  %i.gm = ptrtoint ptr %i.gc to i64               ; 2 uses
  %i.gn = sub i64 %i.gl, %i.gm                    ; 4 uses
  %i.go = icmp eq i64 %i.gn, 9223372036854775800
  br i1 %i.go, label %bb.aw, label %_ZNKSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #33
          to label %.noexc406 unwind label %_ZNSt10unique_ptrI36common_speculative_impl_draft_simpleSt14default_deleteIS0_EED2Ev.exit180.loopexit.split-lp.loopexit.split-lp

.noexc406:                                        ; preds = %bb.aw
  unreachable

_ZNKSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.av
  %i.gp = ashr exact i64 %i.gn, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.gp, i64 1)
  %i.gq = add nsw i64 %.sroa.speculated.i.i, %i.gp ; 2 uses
  %i.gr = icmp ult i64 %i.gq, %i.gp
  %i.gs = call i64 @llvm.umin.i64(i64 %i.gq, i64 1152921504606846975)
  %i.gt = select i1 %i.gr, i64 1152921504606846975, i64 %i.gs ; 3 uses
  %.not.i.i400 = icmp ne i64 %i.gt, 0
  call void @llvm.assume(i1 %.not.i.i400)
  %i.gu = shl nuw nsw i64 %i.gt, 3
  %i.gv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gu) #34
          to label %.noexc407 unwind label %_ZNSt10unique_ptrI36common_speculative_impl_draft_simpleSt14default_deleteIS0_EED2Ev.exit180.loopexit.split-lp.loopexit.split-lp ; 11 uses

.noexc407:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.gn
  %i.gx = ptrtoint ptr %i.gg to i64
  store i64 %i.gx, ptr %i.gw, align 8, !tbaa !98
  %.not10.i.i.i.i401 = icmp eq ptr %i.gc, %i.fu
  br i1 %.not10.i.i.i.i401, label %_ZNSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i402.preheader

.lr.ph.i.i.i.i402.preheader:                      ; preds = %.noexc407
  %i.gy = add i64 %i.gl, -8
  %i.gz = sub i64 %i.gy, %i.gm                    ; 3 uses
  %i.ha = lshr i64 %i.gz, 3
  %i.hb = add nuw nsw i64 %i.ha, 1                ; 2 uses
  %min.iters.check1151 = icmp ult i64 %i.gz, 56
  br i1 %min.iters.check1151, label %.lr.ph.i.i.i.i402.preheader1379, label %vector.memcheck1152

vector.memcheck1152:                              ; preds = %.lr.ph.i.i.i.i402.preheader
  %i.hc = and i64 %i.gz, -8
  %i.hd = add i64 %i.hc, 8                        ; 2 uses
  %i.he = getelementptr i8, ptr %i.gv, i64 %i.hd
  %i.hf = getelementptr i8, ptr %i.gc, i64 %i.hd
  %bound01153 = icmp ult ptr %i.gv, %i.hf
  %bound11154 = icmp ult ptr %i.gc, %i.he
  %found.conflict1155 = and i1 %bound01153, %bound11154
  br i1 %found.conflict1155, label %.lr.ph.i.i.i.i402.preheader1379, label %vector.ph1156

vector.ph1156:                                    ; preds = %vector.memcheck1152
  %n.vec1157 = and i64 %i.hb, 4611686018427387900 ; 3 uses
  %i.hg = shl i64 %n.vec1157, 3                   ; 2 uses
  %i.hh = getelementptr i8, ptr %i.gv, i64 %i.hg  ; 2 uses
  %i.hi = getelementptr i8, ptr %i.gc, i64 %i.hg
  br label %vector.body1158

vector.body1158:                                  ; preds = %vector.body1158, %vector.ph1156
  %index1159 = phi i64 [ 0, %vector.ph1156 ], [ %index.next1164, %vector.body1158 ] ; 2 uses
  %i.hj = shl i64 %index1159, 3                   ; 2 uses
  %next.gep1160 = getelementptr i8, ptr %i.gv, i64 %i.hj ; 2 uses
  %next.gep1161 = getelementptr i8, ptr %i.gc, i64 %i.hj ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !683)
  call void @llvm.experimental.noalias.scope.decl(metadata !684)
  %i.hk = getelementptr i8, ptr %next.gep1161, i64 16
  %wide.load1162 = load <2 x i64>, ptr %next.gep1161, align 8, !tbaa !98, !alias.scope !685
  %wide.load1163 = load <2 x i64>, ptr %i.hk, align 8, !tbaa !98, !alias.scope !685
  %i.hl = getelementptr i8, ptr %next.gep1160, i64 16
  store <2 x i64> %wide.load1162, ptr %next.gep1160, align 8, !tbaa !98, !alias.scope !686, !noalias !687
  store <2 x i64> %wide.load1163, ptr %i.hl, align 8, !tbaa !98, !alias.scope !686, !noalias !687
  %13 = getelementptr i8, ptr %next.gep1161, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1161, align 8, !tbaa !98, !alias.scope !685
  store <2 x ptr> splat (ptr null), ptr %13, align 8, !tbaa !98, !alias.scope !685
  %index.next1164 = add nuw i64 %index1159, 4     ; 2 uses
  %i.hm = icmp eq i64 %index.next1164, %n.vec1157
  br i1 %i.hm, label %middle.block1165, label %vector.body1158, !llvm.loop !578

middle.block1165:                                 ; preds = %vector.body1158
  %cmp.n1166 = icmp eq i64 %i.hb, %n.vec1157
  br i1 %cmp.n1166, label %_ZNSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i402.preheader1379

.lr.ph.i.i.i.i402.preheader1379:                  ; preds = %vector.memcheck1152, %.lr.ph.i.i.i.i402.preheader, %middle.block1165
  %.012.i.i.i.i403.ph = phi ptr [ %i.gv, %vector.memcheck1152 ], [ %i.gv, %.lr.ph.i.i.i.i402.preheader ], [ %i.hh, %middle.block1165 ]
  %.0911.i.i.i.i404.ph = phi ptr [ %i.gc, %vector.memcheck1152 ], [ %i.gc, %.lr.ph.i.i.i.i402.preheader ], [ %i.hi, %middle.block1165 ]
  br label %.lr.ph.i.i.i.i402

.lr.ph.i.i.i.i402:                                ; preds = %.lr.ph.i.i.i.i402.preheader1379, %.lr.ph.i.i.i.i402
  %.012.i.i.i.i403 = phi ptr [ %i.hp, %.lr.ph.i.i.i.i402 ], [ %.012.i.i.i.i403.ph, %.lr.ph.i.i.i.i402.preheader1379 ] ; 2 uses
  %.0911.i.i.i.i404 = phi ptr [ %i.ho, %.lr.ph.i.i.i.i402 ], [ %.0911.i.i.i.i404.ph, %.lr.ph.i.i.i.i402.preheader1379 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !683)
  call void @llvm.experimental.noalias.scope.decl(metadata !684)
  %i.hn = load i64, ptr %.0911.i.i.i.i404, align 8, !tbaa !98, !alias.scope !684
  store i64 %i.hn, ptr %.012.i.i.i.i403, align 8, !tbaa !98, !alias.scope !683
  store ptr null, ptr %.0911.i.i.i.i404, align 8, !tbaa !98, !alias.scope !684
  %i.ho = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i404, i64 8 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i403, i64 8 ; 2 uses
  %.not.i.i.i.i405 = icmp eq ptr %i.ho, %i.fu
  br i1 %.not.i.i.i.i405, label %_ZNSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i402, !llvm.loop !579

_ZNSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i: ; preds = %.lr.ph.i.i.i.i402, %middle.block1165, %.noexc407
  %.0.lcssa.i.i.i.i = phi ptr [ %i.gv, %.noexc407 ], [ %i.hh, %middle.block1165 ], [ %i.hp, %.lr.ph.i.i.i.i402 ]
  %i.hq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i = icmp eq ptr %i.gc, null
  br i1 %.not.i23.i, label %.noexc172, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gc, i64 noundef %i.gn) #32
  br label %.noexc172

.noexc172:                                        ; preds = %bb.ax, %_ZNSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i
  store ptr %i.gv, ptr %3, align 8, !tbaa !240
  store ptr %i.hq, ptr %i.dq, align 8, !tbaa !237
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.gt ; 11 uses
  store ptr %i.hr, ptr %i.dr, align 8, !tbaa !241
  br label %_ZNSt10unique_ptrI36common_speculative_impl_draft_simpleSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI36common_speculative_impl_draft_simpleSt14default_deleteIS0_EED2Ev.exit180.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i, %bb.aw
  %lpad.loopexit.split-lp1416 = landingpad { ptr, i32 }
          cleanup
  %i.hs = load ptr, ptr %i.gg, align 8, !tbaa !243
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.hu = load ptr, ptr %i.ht, align 8
  call void %i.hu(ptr noundef nonnull align 8 dereferenceable(136) %i.gg) #31, !inline_history !580
  br label %.body

bb.ay:                                            ; preds = %bb.ar
  %i.hv = invoke noalias noundef nonnull dereferenceable(1768) ptr @_Znwm(i64 noundef 1768) #34
          to label %.noexc181 unwind label %.loopexit.split-lp764.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc181:                                        ; preds = %bb.ay
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.0674.0844, i64 8
  invoke void @_ZN36common_speculative_impl_draft_eagle3C2ERK25common_params_speculativej(ptr noundef nonnull align 8 dereferenceable(1768) %i.hv, ptr noundef nonnull align 8 dereferenceable(1480) %i.hw, i32 noundef %1)
          to label %_ZSt11make_uniqueI36common_speculative_impl_draft_eagle3JRK25common_params_speculativeRjEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.az, !noalias !688

bb.az:                                            ; preds = %.noexc181
  %i.hx = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.hv, i64 noundef 1768) #32, !noalias !688
  br label %.body

_ZSt11make_uniqueI36common_speculative_impl_draft_eagle3JRK25common_params_speculativeRjEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %.noexc181
  %.not.i.i184 = icmp eq ptr %i.ge, %i.fv
  br i1 %.not.i.i184, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %_ZSt11make_uniqueI36common_speculative_impl_draft_eagle3JRK25common_params_speculativeRjEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.hy = ptrtoint ptr %i.hv to i64
  store i64 %i.hy, ptr %i.ge, align 8, !tbaa !98
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ge, i64 8 ; 2 uses
  store ptr %i.hz, ptr %i.dq, align 8, !tbaa !237
  br label %_ZNSt10unique_ptrI36common_speculative_impl_draft_simpleSt14default_deleteIS0_EED2Ev.exit

bb.bb:                                            ; preds = %_ZSt11make_uniqueI36common_speculative_impl_draft_eagle3JRK25common_params_speculativeRjEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.ia = ptrtoint ptr %i.fv to i64               ; 2 uses
  %i.ib = ptrtoint ptr %i.gc to i64               ; 2 uses
  %i.ic = sub i64 %i.ia, %i.ib                    ; 4 uses
  %i.id = icmp eq i64 %i.ic, 9223372036854775800
  br i1 %i.id, label %bb.bc, label %_ZNKSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i408

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #33
          to label %.noexc426 unwind label %_ZNSt10unique_ptrI36common_speculative_impl_draft_eagle3St14default_deleteIS0_EED2Ev.exit196.loopexit.split-lp.loopexit.split-lp

.noexc426:                                        ; preds = %bb.bc
  unreachable

_ZNKSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i408: ; preds = %bb.bb
  %i.ie = ashr exact i64 %i.ic, 3                 ; 3 uses
  %.sroa.speculated.i.i409 = call i64 @llvm.umax.i64(i64 %i.ie, i64 1)
  %i.if = add nsw i64 %.sroa.speculated.i.i409, %i.ie ; 2 uses
  %i.ig = icmp ult i64 %i.if, %i.ie
  %i.ih = call i64 @llvm.umin.i64(i64 %i.if, i64 1152921504606846975)
  %i.ii = select i1 %i.ig, i64 1152921504606846975, i64 %i.ih ; 3 uses
  %.not.i.i410 = icmp ne i64 %i.ii, 0
  call void @llvm.assume(i1 %.not.i.i410)
  %i.ij = shl nuw nsw i64 %i.ii, 3
  %i.ik = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ij) #34
          to label %.noexc427 unwind label %_ZNSt10unique_ptrI36common_speculative_impl_draft_eagle3St14default_deleteIS0_EED2Ev.exit196.loopexit.split-lp.loopexit.split-lp ; 11 uses

.noexc427:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i408
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.ic
  %i.im = ptrtoint ptr %i.hv to i64
  store i64 %i.im, ptr %i.il, align 8, !tbaa !98
  %.not10.i.i.i.i411 = icmp eq ptr %i.gc, %i.fv
  br i1 %.not10.i.i.i.i411, label %_ZNSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i423, label %.lr.ph.i.i.i.i412.preheader

.lr.ph.i.i.i.i412.preheader:                      ; preds = %.noexc427
  %i.in = add i64 %i.ia, -8
  %i.io = sub i64 %i.in, %i.ib                    ; 3 uses
  %i.ip = lshr i64 %i.io, 3
  %i.iq = add nuw nsw i64 %i.ip, 1                ; 2 uses
  %min.iters.check1177 = icmp ult i64 %i.io, 56
  br i1 %min.iters.check1177, label %.lr.ph.i.i.i.i412.preheader1380, label %vector.memcheck1178

vector.memcheck1178:                              ; preds = %.lr.ph.i.i.i.i412.preheader
  %i.ir = and i64 %i.io, -8
  %i.is = add i64 %i.ir, 8                        ; 2 uses
  %i.it = getelementptr i8, ptr %i.ik, i64 %i.is
  %i.iu = getelementptr i8, ptr %i.gc, i64 %i.is
  %bound01179 = icmp ult ptr %i.ik, %i.iu
  %bound11180 = icmp ult ptr %i.gc, %i.it
  %found.conflict1181 = and i1 %bound01179, %bound11180
  br i1 %found.conflict1181, label %.lr.ph.i.i.i.i412.preheader1380, label %vector.ph1182

vector.ph1182:                                    ; preds = %vector.memcheck1178
  %n.vec1183 = and i64 %i.iq, 4611686018427387900 ; 3 uses
  %i.iv = shl i64 %n.vec1183, 3                   ; 2 uses
  %i.iw = getelementptr i8, ptr %i.ik, i64 %i.iv  ; 2 uses
  %i.ix = getelementptr i8, ptr %i.gc, i64 %i.iv
  br label %vector.body1184

vector.body1184:                                  ; preds = %vector.body1184, %vector.ph1182
  %index1185 = phi i64 [ 0, %vector.ph1182 ], [ %index.next1190, %vector.body1184 ] ; 2 uses
  %i.iy = shl i64 %index1185, 3                   ; 2 uses
  %next.gep1186 = getelementptr i8, ptr %i.ik, i64 %i.iy ; 2 uses
  %next.gep1187 = getelementptr i8, ptr %i.gc, i64 %i.iy ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !689)
  call void @llvm.experimental.noalias.scope.decl(metadata !690)
  %i.iz = getelementptr i8, ptr %next.gep1187, i64 16
  %wide.load1188 = load <2 x i64>, ptr %next.gep1187, align 8, !tbaa !98, !alias.scope !691
  %wide.load1189 = load <2 x i64>, ptr %i.iz, align 8, !tbaa !98, !alias.scope !691
  %i.ja = getelementptr i8, ptr %next.gep1186, i64 16
  store <2 x i64> %wide.load1188, ptr %next.gep1186, align 8, !tbaa !98, !alias.scope !692, !noalias !693
  store <2 x i64> %wide.load1189, ptr %i.ja, align 8, !tbaa !98, !alias.scope !692, !noalias !693
  %14 = getelementptr i8, ptr %next.gep1187, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1187, align 8, !tbaa !98, !alias.scope !691
  store <2 x ptr> splat (ptr null), ptr %14, align 8, !tbaa !98, !alias.scope !691
  %index.next1190 = add nuw i64 %index1185, 4     ; 2 uses
  %i.jb = icmp eq i64 %index.next1190, %n.vec1183
  br i1 %i.jb, label %middle.block1191, label %vector.body1184, !llvm.loop !589

middle.block1191:                                 ; preds = %vector.body1184
  %cmp.n1192 = icmp eq i64 %i.iq, %n.vec1183
  br i1 %cmp.n1192, label %_ZNSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i423, label %.lr.ph.i.i.i.i412.preheader1380

.lr.ph.i.i.i.i412.preheader1380:                  ; preds = %vector.memcheck1178, %.lr.ph.i.i.i.i412.preheader, %middle.block1191
  %.012.i.i.i.i413.ph = phi ptr [ %i.ik, %vector.memcheck1178 ], [ %i.ik, %.lr.ph.i.i.i.i412.preheader ], [ %i.iw, %middle.block1191 ]
  %.0911.i.i.i.i414.ph = phi ptr [ %i.gc, %vector.memcheck1178 ], [ %i.gc, %.lr.ph.i.i.i.i412.preheader ], [ %i.ix, %middle.block1191 ]
  br label %.lr.ph.i.i.i.i412

.lr.ph.i.i.i.i412:                                ; preds = %.lr.ph.i.i.i.i412.preheader1380, %.lr.ph.i.i.i.i412
  %.012.i.i.i.i413 = phi ptr [ %i.je, %.lr.ph.i.i.i.i412 ], [ %.012.i.i.i.i413.ph, %.lr.ph.i.i.i.i412.preheader1380 ] ; 2 uses
  %.0911.i.i.i.i414 = phi ptr [ %i.jd, %.lr.ph.i.i.i.i412 ], [ %.0911.i.i.i.i414.ph, %.lr.ph.i.i.i.i412.preheader1380 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !689)
  call void @llvm.experimental.noalias.scope.decl(metadata !690)
  %i.jc = load i64, ptr %.0911.i.i.i.i414, align 8, !tbaa !98, !alias.scope !690
  store i64 %i.jc, ptr %.012.i.i.i.i413, align 8, !tbaa !98, !alias.scope !689
  store ptr null, ptr %.0911.i.i.i.i414, align 8, !tbaa !98, !alias.scope !690
  %i.jd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i414, i64 8 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i413, i64 8 ; 2 uses
  %.not.i.i.i.i415 = icmp eq ptr %i.jd, %i.fv
  br i1 %.not.i.i.i.i415, label %_ZNSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i423, label %.lr.ph.i.i.i.i412, !llvm.loop !590

_ZNSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i423: ; preds = %.lr.ph.i.i.i.i412, %middle.block1191, %.noexc427
  %.0.lcssa.i.i.i.i417 = phi ptr [ %i.ik, %.noexc427 ], [ %i.iw, %middle.block1191 ], [ %i.je, %.lr.ph.i.i.i.i412 ]
  %i.jf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i417, i64 8 ; 2 uses
  %.not.i23.i425 = icmp eq ptr %i.gc, null
  br i1 %.not.i23.i425, label %.noexc185, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i423
  call void @_ZdlPvm(ptr noundef nonnull %i.gc, i64 noundef %i.ic) #32
  br label %.noexc185

.noexc185:                                        ; preds = %bb.bd, %_ZNSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i423
  store ptr %i.ik, ptr %3, align 8, !tbaa !240
  store ptr %i.jf, ptr %i.dq, align 8, !tbaa !237
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %i.ii ; 11 uses
  store ptr %i.jg, ptr %i.dr, align 8, !tbaa !241
  br label %_ZNSt10unique_ptrI36common_speculative_impl_draft_simpleSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI36common_speculative_impl_draft_eagle3St14default_deleteIS0_EED2Ev.exit196.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i408, %bb.bc
  %lpad.loopexit.split-lp1413 = landingpad { ptr, i32 }
          cleanup
  %i.jh = load ptr, ptr %i.hv, align 8, !tbaa !243
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jj = load ptr, ptr %i.ji, align 8
  call void %i.jj(ptr noundef nonnull align 8 dereferenceable(136) %i.hv) #31, !inline_history !580
  br label %.body

bb.be:                                            ; preds = %bb.ar
  %i.jk = invoke noalias noundef nonnull dereferenceable(1752) ptr @_Znwm(i64 noundef 1752) #34
          to label %.noexc197 unwind label %.loopexit.split-lp764.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc197:                                        ; preds = %bb.be
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.0674.0844, i64 8
  invoke void @_ZN33common_speculative_impl_draft_mtpC2ERK25common_params_speculativej(ptr noundef nonnull align 8 dereferenceable(1752) %i.jk, ptr noundef nonnull align 8 dereferenceable(1480) %i.jl, i32 noundef %1)
          to label %_ZSt11make_uniqueI33common_speculative_impl_draft_mtpJRK25common_params_speculativeRjEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.bf, !noalias !694

bb.bf:                                            ; preds = %.noexc197
  %i.jm = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.jk, i64 noundef 1752) #32, !noalias !694
  br label %.body

_ZSt11make_uniqueI33common_speculative_impl_draft_mtpJRK25common_params_speculativeRjEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %.noexc197
  %.not.i.i200 = icmp eq ptr %i.ge, %i.fw
  br i1 %.not.i.i200, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %_ZSt11make_uniqueI33common_speculative_impl_draft_mtpJRK25common_params_speculativeRjEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.jn = ptrtoint ptr %i.jk to i64
  store i64 %i.jn, ptr %i.ge, align 8, !tbaa !98
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ge, i64 8 ; 2 uses
  store ptr %i.jo, ptr %i.dq, align 8, !tbaa !237
  br label %_ZNSt10unique_ptrI36common_speculative_impl_draft_simpleSt14default_deleteIS0_EED2Ev.exit

bb.bh:                                            ; preds = %_ZSt11make_uniqueI33common_speculative_impl_draft_mtpJRK25common_params_speculativeRjEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.jp = ptrtoint ptr %i.fw to i64               ; 2 uses
  %i.jq = ptrtoint ptr %i.gc to i64               ; 2 uses
  %i.jr = sub i64 %i.jp, %i.jq                    ; 4 uses
  %i.js = icmp eq i64 %i.jr, 9223372036854775800
  br i1 %i.js, label %bb.bi, label %_ZNKSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i429

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #33
          to label %.noexc447 unwind label %_ZNSt10unique_ptrI33common_speculative_impl_draft_mtpSt14default_deleteIS0_EED2Ev.exit212.loopexit.split-lp.loopexit.split-lp

.noexc447:                                        ; preds = %bb.bi
  unreachable

_ZNKSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i429: ; preds = %bb.bh
  %i.jt = ashr exact i64 %i.jr, 3                 ; 3 uses
  %.sroa.speculated.i.i430 = call i64 @llvm.umax.i64(i64 %i.jt, i64 1)
  %i.ju = add nsw i64 %.sroa.speculated.i.i430, %i.jt ; 2 uses
  %i.jv = icmp ult i64 %i.ju, %i.jt
  %i.jw = call i64 @llvm.umin.i64(i64 %i.ju, i64 1152921504606846975)
  %i.jx = select i1 %i.jv, i64 1152921504606846975, i64 %i.jw ; 3 uses
  %.not.i.i431 = icmp ne i64 %i.jx, 0
  call void @llvm.assume(i1 %.not.i.i431)
  %i.jy = shl nuw nsw i64 %i.jx, 3
  %i.jz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jy) #34
          to label %.noexc448 unwind label %_ZNSt10unique_ptrI33common_speculative_impl_draft_mtpSt14default_deleteIS0_EED2Ev.exit212.loopexit.split-lp.loopexit.split-lp ; 11 uses

.noexc448:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i429
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 %i.jr
  %i.kb = ptrtoint ptr %i.jk to i64
  store i64 %i.kb, ptr %i.ka, align 8, !tbaa !98
  %.not10.i.i.i.i432 = icmp eq ptr %i.gc, %i.fw
  br i1 %.not10.i.i.i.i432, label %_ZNSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i444, label %.lr.ph.i.i.i.i433.preheader

.lr.ph.i.i.i.i433.preheader:                      ; preds = %.noexc448
  %i.kc = add i64 %i.jp, -8
  %i.kd = sub i64 %i.kc, %i.jq                    ; 3 uses
  %i.ke = lshr i64 %i.kd, 3
  %i.kf = add nuw nsw i64 %i.ke, 1                ; 2 uses
  %min.iters.check1203 = icmp ult i64 %i.kd, 56
  br i1 %min.iters.check1203, label %.lr.ph.i.i.i.i433.preheader1381, label %vector.memcheck1204

vector.memcheck1204:                              ; preds = %.lr.ph.i.i.i.i433.preheader
  %i.kg = and i64 %i.kd, -8
  %i.kh = add i64 %i.kg, 8                        ; 2 uses
  %i.ki = getelementptr i8, ptr %i.jz, i64 %i.kh
  %i.kj = getelementptr i8, ptr %i.gc, i64 %i.kh
  %bound01205 = icmp ult ptr %i.jz, %i.kj
  %bound11206 = icmp ult ptr %i.gc, %i.ki
  %found.conflict1207 = and i1 %bound01205, %bound11206
  br i1 %found.conflict1207, label %.lr.ph.i.i.i.i433.preheader1381, label %vector.ph1208

vector.ph1208:                                    ; preds = %vector.memcheck1204
  %n.vec1209 = and i64 %i.kf, 4611686018427387900 ; 3 uses
  %i.kk = shl i64 %n.vec1209, 3                   ; 2 uses
  %i.kl = getelementptr i8, ptr %i.jz, i64 %i.kk  ; 2 uses
  %i.km = getelementptr i8, ptr %i.gc, i64 %i.kk
  br label %vector.body1210

vector.body1210:                                  ; preds = %vector.body1210, %vector.ph1208
  %index1211 = phi i64 [ 0, %vector.ph1208 ], [ %index.next1216, %vector.body1210 ] ; 2 uses
  %i.kn = shl i64 %index1211, 3                   ; 2 uses
  %next.gep1212 = getelementptr i8, ptr %i.jz, i64 %i.kn ; 2 uses
  %next.gep1213 = getelementptr i8, ptr %i.gc, i64 %i.kn ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !695)
  call void @llvm.experimental.noalias.scope.decl(metadata !696)
  %i.ko = getelementptr i8, ptr %next.gep1213, i64 16
  %wide.load1214 = load <2 x i64>, ptr %next.gep1213, align 8, !tbaa !98, !alias.scope !697
  %wide.load1215 = load <2 x i64>, ptr %i.ko, align 8, !tbaa !98, !alias.scope !697
  %i.kp = getelementptr i8, ptr %next.gep1212, i64 16
  store <2 x i64> %wide.load1214, ptr %next.gep1212, align 8, !tbaa !98, !alias.scope !698, !noalias !699
  store <2 x i64> %wide.load1215, ptr %i.kp, align 8, !tbaa !98, !alias.scope !698, !noalias !699
  %15 = getelementptr i8, ptr %next.gep1213, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1213, align 8, !tbaa !98, !alias.scope !697
  store <2 x ptr> splat (ptr null), ptr %15, align 8, !tbaa !98, !alias.scope !697
  %index.next1216 = add nuw i64 %index1211, 4     ; 2 uses
  %i.kq = icmp eq i64 %index.next1216, %n.vec1209
  br i1 %i.kq, label %middle.block1217, label %vector.body1210, !llvm.loop !599

middle.block1217:                                 ; preds = %vector.body1210
  %cmp.n1218 = icmp eq i64 %i.kf, %n.vec1209
  br i1 %cmp.n1218, label %_ZNSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i444, label %.lr.ph.i.i.i.i433.preheader1381

.lr.ph.i.i.i.i433.preheader1381:                  ; preds = %vector.memcheck1204, %.lr.ph.i.i.i.i433.preheader, %middle.block1217
  %.012.i.i.i.i434.ph = phi ptr [ %i.jz, %vector.memcheck1204 ], [ %i.jz, %.lr.ph.i.i.i.i433.preheader ], [ %i.kl, %middle.block1217 ]
  %.0911.i.i.i.i435.ph = phi ptr [ %i.gc, %vector.memcheck1204 ], [ %i.gc, %.lr.ph.i.i.i.i433.preheader ], [ %i.km, %middle.block1217 ]
  br label %.lr.ph.i.i.i.i433

.lr.ph.i.i.i.i433:                                ; preds = %.lr.ph.i.i.i.i433.preheader1381, %.lr.ph.i.i.i.i433
  %.012.i.i.i.i434 = phi ptr [ %i.kt, %.lr.ph.i.i.i.i433 ], [ %.012.i.i.i.i434.ph, %.lr.ph.i.i.i.i433.preheader1381 ] ; 2 uses
  %.0911.i.i.i.i435 = phi ptr [ %i.ks, %.lr.ph.i.i.i.i433 ], [ %.0911.i.i.i.i435.ph, %.lr.ph.i.i.i.i433.preheader1381 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !695)
  call void @llvm.experimental.noalias.scope.decl(metadata !696)
  %i.kr = load i64, ptr %.0911.i.i.i.i435, align 8, !tbaa !98, !alias.scope !696
  store i64 %i.kr, ptr %.012.i.i.i.i434, align 8, !tbaa !98, !alias.scope !695
  store ptr null, ptr %.0911.i.i.i.i435, align 8, !tbaa !98, !alias.scope !696
  %i.ks = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i435, i64 8 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i434, i64 8 ; 2 uses
  %.not.i.i.i.i436 = icmp eq ptr %i.ks, %i.fw
  br i1 %.not.i.i.i.i436, label %_ZNSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i444, label %.lr.ph.i.i.i.i433, !llvm.loop !600

_ZNSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i444: ; preds = %.lr.ph.i.i.i.i433, %middle.block1217, %.noexc448
  %.0.lcssa.i.i.i.i438 = phi ptr [ %i.jz, %.noexc448 ], [ %i.kl, %middle.block1217 ], [ %i.kt, %.lr.ph.i.i.i.i433 ]
  %i.ku = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i438, i64 8 ; 2 uses
  %.not.i23.i446 = icmp eq ptr %i.gc, null
  br i1 %.not.i23.i446, label %.noexc201, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i444
  call void @_ZdlPvm(ptr noundef nonnull %i.gc, i64 noundef %i.jr) #32
  br label %.noexc201

.noexc201:                                        ; preds = %bb.bj, %_ZNSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i444
  store ptr %i.jz, ptr %3, align 8, !tbaa !240
  store ptr %i.ku, ptr %i.dq, align 8, !tbaa !237
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %i.jx ; 11 uses
  store ptr %i.kv, ptr %i.dr, align 8, !tbaa !241
  br label %_ZNSt10unique_ptrI36common_speculative_impl_draft_simpleSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI33common_speculative_impl_draft_mtpSt14default_deleteIS0_EED2Ev.exit212.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i429, %bb.bi
  %lpad.loopexit.split-lp1410 = landingpad { ptr, i32 }
          cleanup
  %i.kw = load ptr, ptr %i.jk, align 8, !tbaa !243
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  %i.ky = load ptr, ptr %i.kx, align 8
  call void %i.ky(ptr noundef nonnull align 8 dereferenceable(136) %i.jk) #31, !inline_history !580
  br label %.body

bb.bk:                                            ; preds = %bb.ar
  %i.kz = invoke noalias noundef nonnull dereferenceable(1672) ptr @_Znwm(i64 noundef 1672) #34
          to label %.noexc213 unwind label %.loopexit.split-lp764.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc213:                                        ; preds = %bb.bk
  %i.la = getelementptr inbounds nuw i8, ptr %.sroa.0674.0844, i64 8
  invoke void @_ZN36common_speculative_impl_draft_dflashC2ERK25common_params_speculativej23common_speculative_type(ptr noundef nonnull align 8 dereferenceable(1668) %i.kz, ptr noundef nonnull align 8 dereferenceable(1480) %i.la, i32 noundef %1, i32 noundef 4)
          to label %_ZSt11make_uniqueI36common_speculative_impl_draft_dflashJRK25common_params_speculativeRjEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.bl, !noalias !700

bb.bl:                                            ; preds = %.noexc213
  %i.lb = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.kz, i64 noundef 1672) #32, !noalias !700
  br label %.body

_ZSt11make_uniqueI36common_speculative_impl_draft_dflashJRK25common_params_speculativeRjEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %.noexc213
  %.not.i.i216 = icmp eq ptr %i.ge, %i.fx
  br i1 %.not.i.i216, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %_ZSt11make_uniqueI36common_speculative_impl_draft_dflashJRK25common_params_speculativeRjEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.lc = ptrtoint ptr %i.kz to i64
  store i64 %i.lc, ptr %i.ge, align 8, !tbaa !98
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ge, i64 8 ; 2 uses
  store ptr %i.ld, ptr %i.dq, align 8, !tbaa !237
  br label %_ZNSt10unique_ptrI36common_speculative_impl_draft_simpleSt14default_deleteIS0_EED2Ev.exit

bb.bn:                                            ; preds = %_ZSt11make_uniqueI36common_speculative_impl_draft_dflashJRK25common_params_speculativeRjEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.le = ptrtoint ptr %i.fx to i64               ; 2 uses
  %i.lf = ptrtoint ptr %i.gc to i64               ; 2 uses
  %i.lg = sub i64 %i.le, %i.lf                    ; 4 uses
  %i.lh = icmp eq i64 %i.lg, 9223372036854775800
  br i1 %i.lh, label %bb.bo, label %_ZNKSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i450

bb.bo:                                            ; preds = %bb.bn
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #33
          to label %.noexc468 unwind label %_ZNSt10unique_ptrI36common_speculative_impl_draft_dflashSt14default_deleteIS0_EED2Ev.exit228.loopexit.split-lp.loopexit.split-lp

.noexc468:                                        ; preds = %bb.bo
  unreachable

_ZNKSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i450: ; preds = %bb.bn
  %i.li = ashr exact i64 %i.lg, 3                 ; 3 uses
  %.sroa.speculated.i.i451 = call i64 @llvm.umax.i64(i64 %i.li, i64 1)
  %i.lj = add nsw i64 %.sroa.speculated.i.i451, %i.li ; 2 uses
  %i.lk = icmp ult i64 %i.lj, %i.li
  %i.ll = call i64 @llvm.umin.i64(i64 %i.lj, i64 1152921504606846975)
  %i.lm = select i1 %i.lk, i64 1152921504606846975, i64 %i.ll ; 3 uses
  %.not.i.i452 = icmp ne i64 %i.lm, 0
  call void @llvm.assume(i1 %.not.i.i452)
  %i.ln = shl nuw nsw i64 %i.lm, 3
  %i.lo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ln) #34
          to label %.noexc469 unwind label %_ZNSt10unique_ptrI36common_speculative_impl_draft_dflashSt14default_deleteIS0_EED2Ev.exit228.loopexit.split-lp.loopexit.split-lp ; 11 uses

.noexc469:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i450
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.lg
  %i.lq = ptrtoint ptr %i.kz to i64
  store i64 %i.lq, ptr %i.lp, align 8, !tbaa !98
  %.not10.i.i.i.i453 = icmp eq ptr %i.gc, %i.fx
  br i1 %.not10.i.i.i.i453, label %_ZNSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i465, label %.lr.ph.i.i.i.i454.preheader

.lr.ph.i.i.i.i454.preheader:                      ; preds = %.noexc469
  %i.lr = add i64 %i.le, -8
  %i.ls = sub i64 %i.lr, %i.lf                    ; 3 uses
  %i.lt = lshr i64 %i.ls, 3
  %i.lu = add nuw nsw i64 %i.lt, 1                ; 2 uses
  %min.iters.check1229 = icmp ult i64 %i.ls, 56
  br i1 %min.iters.check1229, label %.lr.ph.i.i.i.i454.preheader1382, label %vector.memcheck1230

vector.memcheck1230:                              ; preds = %.lr.ph.i.i.i.i454.preheader
  %i.lv = and i64 %i.ls, -8
  %i.lw = add i64 %i.lv, 8                        ; 2 uses
  %i.lx = getelementptr i8, ptr %i.lo, i64 %i.lw
  %i.ly = getelementptr i8, ptr %i.gc, i64 %i.lw
  %bound01231 = icmp ult ptr %i.lo, %i.ly
  %bound11232 = icmp ult ptr %i.gc, %i.lx
  %found.conflict1233 = and i1 %bound01231, %bound11232
  br i1 %found.conflict1233, label %.lr.ph.i.i.i.i454.preheader1382, label %vector.ph1234

vector.ph1234:                                    ; preds = %vector.memcheck1230
  %n.vec1235 = and i64 %i.lu, 4611686018427387900 ; 3 uses
  %i.lz = shl i64 %n.vec1235, 3                   ; 2 uses
  %i.ma = getelementptr i8, ptr %i.lo, i64 %i.lz  ; 2 uses
  %i.mb = getelementptr i8, ptr %i.gc, i64 %i.lz
  br label %vector.body1236

vector.body1236:                                  ; preds = %vector.body1236, %vector.ph1234
  %index1237 = phi i64 [ 0, %vector.ph1234 ], [ %index.next1242, %vector.body1236 ] ; 2 uses
  %i.mc = shl i64 %index1237, 3                   ; 2 uses
  %next.gep1238 = getelementptr i8, ptr %i.lo, i64 %i.mc ; 2 uses
  %next.gep1239 = getelementptr i8, ptr %i.gc, i64 %i.mc ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !701)
  call void @llvm.experimental.noalias.scope.decl(metadata !702)
  %i.md = getelementptr i8, ptr %next.gep1239, i64 16
  %wide.load1240 = load <2 x i64>, ptr %next.gep1239, align 8, !tbaa !98, !alias.scope !703
  %wide.load1241 = load <2 x i64>, ptr %i.md, align 8, !tbaa !98, !alias.scope !703
  %i.me = getelementptr i8, ptr %next.gep1238, i64 16
  store <2 x i64> %wide.load1240, ptr %next.gep1238, align 8, !tbaa !98, !alias.scope !704, !noalias !705
  store <2 x i64> %wide.load1241, ptr %i.me, align 8, !tbaa !98, !alias.scope !704, !noalias !705
  %16 = getelementptr i8, ptr %next.gep1239, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1239, align 8, !tbaa !98, !alias.scope !703
  store <2 x ptr> splat (ptr null), ptr %16, align 8, !tbaa !98, !alias.scope !703
  %index.next1242 = add nuw i64 %index1237, 4     ; 2 uses
  %i.mf = icmp eq i64 %index.next1242, %n.vec1235
  br i1 %i.mf, label %middle.block1243, label %vector.body1236, !llvm.loop !609

middle.block1243:                                 ; preds = %vector.body1236
  %cmp.n1244 = icmp eq i64 %i.lu, %n.vec1235
  br i1 %cmp.n1244, label %_ZNSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i465, label %.lr.ph.i.i.i.i454.preheader1382

.lr.ph.i.i.i.i454.preheader1382:                  ; preds = %vector.memcheck1230, %.lr.ph.i.i.i.i454.preheader, %middle.block1243
  %.012.i.i.i.i455.ph = phi ptr [ %i.lo, %vector.memcheck1230 ], [ %i.lo, %.lr.ph.i.i.i.i454.preheader ], [ %i.ma, %middle.block1243 ]
  %.0911.i.i.i.i456.ph = phi ptr [ %i.gc, %vector.memcheck1230 ], [ %i.gc, %.lr.ph.i.i.i.i454.preheader ], [ %i.mb, %middle.block1243 ]
  br label %.lr.ph.i.i.i.i454

.lr.ph.i.i.i.i454:                                ; preds = %.lr.ph.i.i.i.i454.preheader1382, %.lr.ph.i.i.i.i454
  %.012.i.i.i.i455 = phi ptr [ %i.mi, %.lr.ph.i.i.i.i454 ], [ %.012.i.i.i.i455.ph, %.lr.ph.i.i.i.i454.preheader1382 ] ; 2 uses
  %.0911.i.i.i.i456 = phi ptr [ %i.mh, %.lr.ph.i.i.i.i454 ], [ %.0911.i.i.i.i456.ph, %.lr.ph.i.i.i.i454.preheader1382 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !701)
  call void @llvm.experimental.noalias.scope.decl(metadata !702)
  %i.mg = load i64, ptr %.0911.i.i.i.i456, align 8, !tbaa !98, !alias.scope !702
  store i64 %i.mg, ptr %.012.i.i.i.i455, align 8, !tbaa !98, !alias.scope !701
  store ptr null, ptr %.0911.i.i.i.i456, align 8, !tbaa !98, !alias.scope !702
  %i.mh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i456, i64 8 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i455, i64 8 ; 2 uses
  %.not.i.i.i.i457 = icmp eq ptr %i.mh, %i.fx
  br i1 %.not.i.i.i.i457, label %_ZNSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i465, label %.lr.ph.i.i.i.i454, !llvm.loop !610

_ZNSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i465: ; preds = %.lr.ph.i.i.i.i454, %middle.block1243, %.noexc469
  %.0.lcssa.i.i.i.i459 = phi ptr [ %i.lo, %.noexc469 ], [ %i.ma, %middle.block1243 ], [ %i.mi, %.lr.ph.i.i.i.i454 ]
  %i.mj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i459, i64 8 ; 2 uses
  %.not.i23.i467 = icmp eq ptr %i.gc, null
  br i1 %.not.i23.i467, label %.noexc217, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i465
  call void @_ZdlPvm(ptr noundef nonnull %i.gc, i64 noundef %i.lg) #32
  br label %.noexc217

.noexc217:                                        ; preds = %bb.bp, %_ZNSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i465
  store ptr %i.lo, ptr %3, align 8, !tbaa !240
  store ptr %i.mj, ptr %i.dq, align 8, !tbaa !237
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %i.lm ; 11 uses
  store ptr %i.mk, ptr %i.dr, align 8, !tbaa !241
  br label %_ZNSt10unique_ptrI36common_speculative_impl_draft_simpleSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI36common_speculative_impl_draft_dflashSt14default_deleteIS0_EED2Ev.exit228.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i450, %bb.bo
  %lpad.loopexit.split-lp1407 = landingpad { ptr, i32 }
          cleanup
  %i.ml = load ptr, ptr %i.kz, align 8, !tbaa !243
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 8
  %i.mn = load ptr, ptr %i.mm, align 8
  call void %i.mn(ptr noundef nonnull align 8 dereferenceable(136) %i.kz) #31, !inline_history !580
  br label %.body

bb.bq:                                            ; preds = %bb.ar
  %i.mo = invoke noalias noundef nonnull dereferenceable(1672) ptr @_Znwm(i64 noundef 1672) #34
          to label %.noexc229 unwind label %.loopexit.split-lp764.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc229:                                        ; preds = %bb.bq
  %i.mp = getelementptr inbounds nuw i8, ptr %.sroa.0674.0844, i64 8
  invoke void @_ZN36common_speculative_impl_draft_dflashC2ERK25common_params_speculativej23common_speculative_type(ptr noundef nonnull align 8 dereferenceable(1668) %i.mo, ptr noundef nonnull align 8 dereferenceable(1480) %i.mp, i32 noundef %1, i32 noundef 5)
          to label %_ZSt11make_uniqueI36common_speculative_impl_draft_dflashJRK25common_params_speculativeRj23common_speculative_typeEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.br, !noalias !706

bb.br:                                            ; preds = %.noexc229
  %i.mq = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.mo, i64 noundef 1672) #32, !noalias !706
  br label %.body

_ZSt11make_uniqueI36common_speculative_impl_draft_dflashJRK25common_params_speculativeRj23common_speculative_typeEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %.noexc229
  %.not.i.i232 = icmp eq ptr %i.ge, %i.fy
  br i1 %.not.i.i232, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %_ZSt11make_uniqueI36common_speculative_impl_draft_dflashJRK25common_params_speculativeRj23common_speculative_typeEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.mr = ptrtoint ptr %i.mo to i64
  store i64 %i.mr, ptr %i.ge, align 8, !tbaa !98
  %i.ms = getelementptr inbounds nuw i8, ptr %i.ge, i64 8 ; 2 uses
  store ptr %i.ms, ptr %i.dq, align 8, !tbaa !237
  br label %_ZNSt10unique_ptrI36common_speculative_impl_draft_simpleSt14default_deleteIS0_EED2Ev.exit

bb.bt:                                            ; preds = %_ZSt11make_uniqueI36common_speculative_impl_draft_dflashJRK25common_params_speculativeRj23common_speculative_typeEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.mt = ptrtoint ptr %i.fy to i64               ; 2 uses
  %i.mu = ptrtoint ptr %i.gc to i64               ; 2 uses
  %i.mv = sub i64 %i.mt, %i.mu                    ; 4 uses
  %i.mw = icmp eq i64 %i.mv, 9223372036854775800
  br i1 %i.mw, label %bb.bu, label %_ZNKSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i471

bb.bu:                                            ; preds = %bb.bt
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #33
          to label %.noexc489 unwind label %_ZNSt10unique_ptrI36common_speculative_impl_draft_dflashSt14default_deleteIS0_EED2Ev.exit246.loopexit.split-lp.loopexit.split-lp

.noexc489:                                        ; preds = %bb.bu
  unreachable

_ZNKSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i471: ; preds = %bb.bt
  %i.mx = ashr exact i64 %i.mv, 3                 ; 3 uses
  %.sroa.speculated.i.i472 = call i64 @llvm.umax.i64(i64 %i.mx, i64 1)
  %i.my = add nsw i64 %.sroa.speculated.i.i472, %i.mx ; 2 uses
  %i.mz = icmp ult i64 %i.my, %i.mx
  %i.na = call i64 @llvm.umin.i64(i64 %i.my, i64 1152921504606846975)
  %i.nb = select i1 %i.mz, i64 1152921504606846975, i64 %i.na ; 3 uses
  %.not.i.i473 = icmp ne i64 %i.nb, 0
  call void @llvm.assume(i1 %.not.i.i473)
  %i.nc = shl nuw nsw i64 %i.nb, 3
  %i.nd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nc) #34
          to label %.noexc490 unwind label %_ZNSt10unique_ptrI36common_speculative_impl_draft_dflashSt14default_deleteIS0_EED2Ev.exit246.loopexit.split-lp.loopexit.split-lp ; 11 uses

.noexc490:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i471
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 %i.mv
  %i.nf = ptrtoint ptr %i.mo to i64
  store i64 %i.nf, ptr %i.ne, align 8, !tbaa !98
  %.not10.i.i.i.i474 = icmp eq ptr %i.gc, %i.fy
  br i1 %.not10.i.i.i.i474, label %_ZNSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i486, label %.lr.ph.i.i.i.i475.preheader

.lr.ph.i.i.i.i475.preheader:                      ; preds = %.noexc490
  %i.ng = add i64 %i.mt, -8
  %i.nh = sub i64 %i.ng, %i.mu                    ; 3 uses
  %i.ni = lshr i64 %i.nh, 3
  %i.nj = add nuw nsw i64 %i.ni, 1                ; 2 uses
  %min.iters.check1255 = icmp ult i64 %i.nh, 56
  br i1 %min.iters.check1255, label %.lr.ph.i.i.i.i475.preheader1383, label %vector.memcheck1256

vector.memcheck1256:                              ; preds = %.lr.ph.i.i.i.i475.preheader
  %i.nk = and i64 %i.nh, -8
  %i.nl = add i64 %i.nk, 8                        ; 2 uses
  %i.nm = getelementptr i8, ptr %i.nd, i64 %i.nl
  %i.nn = getelementptr i8, ptr %i.gc, i64 %i.nl
  %bound01257 = icmp ult ptr %i.nd, %i.nn
  %bound11258 = icmp ult ptr %i.gc, %i.nm
  %found.conflict1259 = and i1 %bound01257, %bound11258
  br i1 %found.conflict1259, label %.lr.ph.i.i.i.i475.preheader1383, label %vector.ph1260

vector.ph1260:                                    ; preds = %vector.memcheck1256
  %n.vec1261 = and i64 %i.nj, 4611686018427387900 ; 3 uses
  %i.no = shl i64 %n.vec1261, 3                   ; 2 uses
  %i.np = getelementptr i8, ptr %i.nd, i64 %i.no  ; 2 uses
  %i.nq = getelementptr i8, ptr %i.gc, i64 %i.no
  br label %vector.body1262

vector.body1262:                                  ; preds = %vector.body1262, %vector.ph1260
  %index1263 = phi i64 [ 0, %vector.ph1260 ], [ %index.next1268, %vector.body1262 ] ; 2 uses
  %i.nr = shl i64 %index1263, 3                   ; 2 uses
  %next.gep1264 = getelementptr i8, ptr %i.nd, i64 %i.nr ; 2 uses
  %next.gep1265 = getelementptr i8, ptr %i.gc, i64 %i.nr ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !707)
  call void @llvm.experimental.noalias.scope.decl(metadata !708)
  %i.ns = getelementptr i8, ptr %next.gep1265, i64 16
  %wide.load1266 = load <2 x i64>, ptr %next.gep1265, align 8, !tbaa !98, !alias.scope !709
  %wide.load1267 = load <2 x i64>, ptr %i.ns, align 8, !tbaa !98, !alias.scope !709
  %i.nt = getelementptr i8, ptr %next.gep1264, i64 16
  store <2 x i64> %wide.load1266, ptr %next.gep1264, align 8, !tbaa !98, !alias.scope !710, !noalias !711
  store <2 x i64> %wide.load1267, ptr %i.nt, align 8, !tbaa !98, !alias.scope !710, !noalias !711
  %17 = getelementptr i8, ptr %next.gep1265, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1265, align 8, !tbaa !98, !alias.scope !709
  store <2 x ptr> splat (ptr null), ptr %17, align 8, !tbaa !98, !alias.scope !709
  %index.next1268 = add nuw i64 %index1263, 4     ; 2 uses
  %i.nu = icmp eq i64 %index.next1268, %n.vec1261
  br i1 %i.nu, label %middle.block1269, label %vector.body1262, !llvm.loop !619

middle.block1269:                                 ; preds = %vector.body1262
  %cmp.n1270 = icmp eq i64 %i.nj, %n.vec1261
  br i1 %cmp.n1270, label %_ZNSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i486, label %.lr.ph.i.i.i.i475.preheader1383

.lr.ph.i.i.i.i475.preheader1383:                  ; preds = %vector.memcheck1256, %.lr.ph.i.i.i.i475.preheader, %middle.block1269
  %.012.i.i.i.i476.ph = phi ptr [ %i.nd, %vector.memcheck1256 ], [ %i.nd, %.lr.ph.i.i.i.i475.preheader ], [ %i.np, %middle.block1269 ]
  %.0911.i.i.i.i477.ph = phi ptr [ %i.gc, %vector.memcheck1256 ], [ %i.gc, %.lr.ph.i.i.i.i475.preheader ], [ %i.nq, %middle.block1269 ]
  br label %.lr.ph.i.i.i.i475

.lr.ph.i.i.i.i475:                                ; preds = %.lr.ph.i.i.i.i475.preheader1383, %.lr.ph.i.i.i.i475
  %.012.i.i.i.i476 = phi ptr [ %i.nx, %.lr.ph.i.i.i.i475 ], [ %.012.i.i.i.i476.ph, %.lr.ph.i.i.i.i475.preheader1383 ] ; 2 uses
  %.0911.i.i.i.i477 = phi ptr [ %i.nw, %.lr.ph.i.i.i.i475 ], [ %.0911.i.i.i.i477.ph, %.lr.ph.i.i.i.i475.preheader1383 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !707)
  call void @llvm.experimental.noalias.scope.decl(metadata !708)
  %i.nv = load i64, ptr %.0911.i.i.i.i477, align 8, !tbaa !98, !alias.scope !708
  store i64 %i.nv, ptr %.012.i.i.i.i476, align 8, !tbaa !98, !alias.scope !707
  store ptr null, ptr %.0911.i.i.i.i477, align 8, !tbaa !98, !alias.scope !708
  %i.nw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i477, i64 8 ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i476, i64 8 ; 2 uses
  %.not.i.i.i.i478 = icmp eq ptr %i.nw, %i.fy
  br i1 %.not.i.i.i.i478, label %_ZNSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i486, label %.lr.ph.i.i.i.i475, !llvm.loop !620

_ZNSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i486: ; preds = %.lr.ph.i.i.i.i475, %middle.block1269, %.noexc490
  %.0.lcssa.i.i.i.i480 = phi ptr [ %i.nd, %.noexc490 ], [ %i.np, %middle.block1269 ], [ %i.nx, %.lr.ph.i.i.i.i475 ]
  %i.ny = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i480, i64 8 ; 2 uses
  %.not.i23.i488 = icmp eq ptr %i.gc, null
  br i1 %.not.i23.i488, label %.noexc233, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i486
  call void @_ZdlPvm(ptr noundef nonnull %i.gc, i64 noundef %i.mv) #32
  br label %.noexc233

.noexc233:                                        ; preds = %bb.bv, %_ZNSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i486
  store ptr %i.nd, ptr %3, align 8, !tbaa !240
  store ptr %i.ny, ptr %i.dq, align 8, !tbaa !237
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %i.nd, i64 %i.nb ; 11 uses
  store ptr %i.nz, ptr %i.dr, align 8, !tbaa !241
  br label %_ZNSt10unique_ptrI36common_speculative_impl_draft_simpleSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI36common_speculative_impl_draft_dflashSt14default_deleteIS0_EED2Ev.exit246.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i471, %bb.bu
  %lpad.loopexit.split-lp1404 = landingpad { ptr, i32 }
          cleanup
  %i.oa = load ptr, ptr %i.mo, align 8, !tbaa !243
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 8
  %i.oc = load ptr, ptr %i.ob, align 8
  call void %i.oc(ptr noundef nonnull align 8 dereferenceable(136) %i.mo) #31, !inline_history !580
  br label %.body

bb.bw:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.od = getelementptr inbounds nuw i8, ptr %.sroa.0674.0844, i64 1404
  call void @llvm.experimental.noalias.scope.decl(metadata !712)
  %i.oe = load i32, ptr %i.od, align 4, !noalias !712 ; 3 uses
  %i.of = trunc i32 %i.oe to i16
  %i.og = lshr i32 %i.oe, 16
  %i.oh = trunc nuw i32 %i.og to i16
  %i.oi = getelementptr inbounds nuw i8, ptr %.sroa.0674.0844, i64 1408
  %i.oj = load i16, ptr %i.oi, align 8, !tbaa !713, !noalias !712
  store i16 %i.of, ptr %4, align 8, !tbaa !254, !alias.scope !712
  store i16 %i.oh, ptr %i.es, align 2, !tbaa !255, !alias.scope !712
  store i8 0, ptr %i.et, align 4, !tbaa !256, !alias.scope !712
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eu, i8 0, i64 24, i1 false), !alias.scope !712
  store i16 %i.oj, ptr %i.ev, align 8, !tbaa !257, !alias.scope !712
  store i8 0, ptr %i.ew, align 2, !tbaa !714, !alias.scope !712
  store i64 0, ptr %i.ex, align 8, !tbaa !715, !alias.scope !712
  store i8 0, ptr %i.ey, align 8, !tbaa !716, !alias.scope !712
  store i64 0, ptr %i.ez, align 8, !tbaa !717, !alias.scope !712
  store i16 0, ptr %i.fa, align 8, !tbaa !718, !alias.scope !712
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.fb, i8 0, i64 36, i1 false), !alias.scope !712
  %i.ok = invoke noalias noundef nonnull dereferenceable(1048576) ptr @_Znwm(i64 noundef 1048576) #34
          to label %bb.bx unwind label %bb.cd     ; 5 uses

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1048576) %i.ok, i8 0, i64 1048576, i1 false), !noalias !712
  store ptr %i.ok, ptr %i.fc, align 8, !tbaa !258, !alias.scope !712
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 1048576 ; 2 uses
  store ptr %i.ol, ptr %i.fe, align 8, !tbaa !259, !alias.scope !712
  store ptr %i.ol, ptr %i.fd, align 8, !tbaa !260, !alias.scope !712
  %i.om = invoke noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #34
          to label %.noexc248 unwind label %bb.ce ; 6 uses

.noexc248:                                        ; preds = %bb.bx
  %i.on = getelementptr inbounds nuw i8, ptr %.sroa.0674.0844, i64 8
  invoke void @_ZN36common_speculative_impl_ngram_simpleC2ERK25common_params_speculativej26common_ngram_simple_config(ptr noundef nonnull align 8 dereferenceable(146) %i.om, ptr noundef nonnull align 8 dereferenceable(1480) %i.on, i32 noundef %1, i32 %i.oe)
          to label %_ZSt11make_uniqueI36common_speculative_impl_ngram_simpleJRK25common_params_speculativeRjR26common_ngram_simple_configEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.by, !noalias !719

bb.by:                                            ; preds = %.noexc248
  %i.oo = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.om, i64 noundef 152) #32, !noalias !719
  br label %.body249

_ZSt11make_uniqueI36common_speculative_impl_ngram_simpleJRK25common_params_speculativeRjR26common_ngram_simple_configEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %.noexc248
  %.not.i.i251 = icmp eq ptr %i.ge, %i.fz
  br i1 %.not.i.i251, label %bb.bz, label %_ZNSt10unique_ptrI36common_speculative_impl_ngram_simpleSt14default_deleteIS0_EED2Ev.exit.thread

_ZNSt10unique_ptrI36common_speculative_impl_ngram_simpleSt14default_deleteIS0_EED2Ev.exit.thread: ; preds = %_ZSt11make_uniqueI36common_speculative_impl_ngram_simpleJRK25common_params_speculativeRjR26common_ngram_simple_configEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.op = ptrtoint ptr %i.om to i64
  store i64 %i.op, ptr %i.ge, align 8, !tbaa !98
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ge, i64 8 ; 2 uses
  store ptr %i.oq, ptr %i.dq, align 8, !tbaa !237
  br label %bb.cb

bb.bz:                                            ; preds = %_ZSt11make_uniqueI36common_speculative_impl_ngram_simpleJRK25common_params_speculativeRjR26common_ngram_simple_configEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.or = ptrtoint ptr %i.fz to i64               ; 2 uses
  %i.os = ptrtoint ptr %i.gc to i64               ; 2 uses
  %i.ot = sub i64 %i.or, %i.os                    ; 4 uses
  %i.ou = icmp eq i64 %i.ot, 9223372036854775800
  br i1 %i.ou, label %bb.ca, label %_ZNKSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i492

bb.ca:                                            ; preds = %bb.bz
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #33
          to label %.noexc510 unwind label %_ZNSt10unique_ptrI36common_speculative_impl_ngram_simpleSt14default_deleteIS0_EED2Ev.exit263.loopexit.split-lp.loopexit.split-lp

.noexc510:                                        ; preds = %bb.ca
  unreachable

_ZNKSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i492: ; preds = %bb.bz
  %i.ov = ashr exact i64 %i.ot, 3                 ; 3 uses
  %.sroa.speculated.i.i493 = call i64 @llvm.umax.i64(i64 %i.ov, i64 1)
  %i.ow = add nsw i64 %.sroa.speculated.i.i493, %i.ov ; 2 uses
  %i.ox = icmp ult i64 %i.ow, %i.ov
  %i.oy = call i64 @llvm.umin.i64(i64 %i.ow, i64 1152921504606846975)
  %i.oz = select i1 %i.ox, i64 1152921504606846975, i64 %i.oy ; 4 uses
  %.not.i.i494 = icmp ne i64 %i.oz, 0
  call void @llvm.assume(i1 %.not.i.i494)
  %i.pa = shl nuw nsw i64 %i.oz, 3
  %i.pb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pa) #34
          to label %.noexc511 unwind label %_ZNSt10unique_ptrI36common_speculative_impl_ngram_simpleSt14default_deleteIS0_EED2Ev.exit263.loopexit.split-lp.loopexit.split-lp ; 15 uses

.noexc511:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i492
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 %i.ot
  %i.pd = ptrtoint ptr %i.om to i64
  store i64 %i.pd, ptr %i.pc, align 8, !tbaa !98
  %.not10.i.i.i.i495 = icmp eq ptr %i.gc, %i.fz
  br i1 %.not10.i.i.i.i495, label %_ZNSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i507, label %.lr.ph.i.i.i.i496.preheader

.lr.ph.i.i.i.i496.preheader:                      ; preds = %.noexc511
  %i.pe = add i64 %i.or, -8
  %i.pf = sub i64 %i.pe, %i.os                    ; 3 uses
  %i.pg = lshr i64 %i.pf, 3
  %i.ph = add nuw nsw i64 %i.pg, 1                ; 2 uses
  %min.iters.check1281 = icmp ult i64 %i.pf, 56
  br i1 %min.iters.check1281, label %.lr.ph.i.i.i.i496.preheader1384, label %vector.memcheck1282

vector.memcheck1282:                              ; preds = %.lr.ph.i.i.i.i496.preheader
  %i.pi = and i64 %i.pf, -8
  %i.pj = add i64 %i.pi, 8                        ; 2 uses
  %i.pk = getelementptr i8, ptr %i.pb, i64 %i.pj
  %i.pl = getelementptr i8, ptr %i.gc, i64 %i.pj
  %bound01283 = icmp ult ptr %i.pb, %i.pl
  %bound11284 = icmp ult ptr %i.gc, %i.pk
  %found.conflict1285 = and i1 %bound01283, %bound11284
  br i1 %found.conflict1285, label %.lr.ph.i.i.i.i496.preheader1384, label %vector.ph1286

vector.ph1286:                                    ; preds = %vector.memcheck1282
  %n.vec1287 = and i64 %i.ph, 4611686018427387900 ; 3 uses
  %i.pm = shl i64 %n.vec1287, 3                   ; 2 uses
  %i.pn = getelementptr i8, ptr %i.pb, i64 %i.pm  ; 2 uses
  %i.po = getelementptr i8, ptr %i.gc, i64 %i.pm
  br label %vector.body1288

vector.body1288:                                  ; preds = %vector.body1288, %vector.ph1286
  %index1289 = phi i64 [ 0, %vector.ph1286 ], [ %index.next1294, %vector.body1288 ] ; 2 uses
  %i.pp = shl i64 %index1289, 3                   ; 2 uses
  %next.gep1290 = getelementptr i8, ptr %i.pb, i64 %i.pp ; 2 uses
  %next.gep1291 = getelementptr i8, ptr %i.gc, i64 %i.pp ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !720)
  call void @llvm.experimental.noalias.scope.decl(metadata !721)
  %i.pq = getelementptr i8, ptr %next.gep1291, i64 16
  %wide.load1292 = load <2 x i64>, ptr %next.gep1291, align 8, !tbaa !98, !alias.scope !722
  %wide.load1293 = load <2 x i64>, ptr %i.pq, align 8, !tbaa !98, !alias.scope !722
  %i.pr = getelementptr i8, ptr %next.gep1290, i64 16
  store <2 x i64> %wide.load1292, ptr %next.gep1290, align 8, !tbaa !98, !alias.scope !723, !noalias !724
  store <2 x i64> %wide.load1293, ptr %i.pr, align 8, !tbaa !98, !alias.scope !723, !noalias !724
  %18 = getelementptr i8, ptr %next.gep1291, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1291, align 8, !tbaa !98, !alias.scope !722
  store <2 x ptr> splat (ptr null), ptr %18, align 8, !tbaa !98, !alias.scope !722
  %index.next1294 = add nuw i64 %index1289, 4     ; 2 uses
  %i.ps = icmp eq i64 %index.next1294, %n.vec1287
  br i1 %i.ps, label %middle.block1295, label %vector.body1288, !llvm.loop !631

middle.block1295:                                 ; preds = %vector.body1288
  %cmp.n1296 = icmp eq i64 %i.ph, %n.vec1287
  br i1 %cmp.n1296, label %_ZNSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i507, label %.lr.ph.i.i.i.i496.preheader1384

.lr.ph.i.i.i.i496.preheader1384:                  ; preds = %vector.memcheck1282, %.lr.ph.i.i.i.i496.preheader, %middle.block1295
  %.012.i.i.i.i497.ph = phi ptr [ %i.pb, %vector.memcheck1282 ], [ %i.pb, %.lr.ph.i.i.i.i496.preheader ], [ %i.pn, %middle.block1295 ]
  %.0911.i.i.i.i498.ph = phi ptr [ %i.gc, %vector.memcheck1282 ], [ %i.gc, %.lr.ph.i.i.i.i496.preheader ], [ %i.po, %middle.block1295 ]
  br label %.lr.ph.i.i.i.i496

.lr.ph.i.i.i.i496:                                ; preds = %.lr.ph.i.i.i.i496.preheader1384, %.lr.ph.i.i.i.i496
  %.012.i.i.i.i497 = phi ptr [ %i.pv, %.lr.ph.i.i.i.i496 ], [ %.012.i.i.i.i497.ph, %.lr.ph.i.i.i.i496.preheader1384 ] ; 2 uses
  %.0911.i.i.i.i498 = phi ptr [ %i.pu, %.lr.ph.i.i.i.i496 ], [ %.0911.i.i.i.i498.ph, %.lr.ph.i.i.i.i496.preheader1384 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !720)
  call void @llvm.experimental.noalias.scope.decl(metadata !721)
  %i.pt = load i64, ptr %.0911.i.i.i.i498, align 8, !tbaa !98, !alias.scope !721
  store i64 %i.pt, ptr %.012.i.i.i.i497, align 8, !tbaa !98, !alias.scope !720
  store ptr null, ptr %.0911.i.i.i.i498, align 8, !tbaa !98, !alias.scope !721
  %i.pu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i498, i64 8 ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i497, i64 8 ; 2 uses
  %.not.i.i.i.i499 = icmp eq ptr %i.pu, %i.fz
  br i1 %.not.i.i.i.i499, label %_ZNSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i507, label %.lr.ph.i.i.i.i496, !llvm.loop !632

_ZNSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i507: ; preds = %.lr.ph.i.i.i.i496, %middle.block1295, %.noexc511
  %.0.lcssa.i.i.i.i501 = phi ptr [ %i.pb, %.noexc511 ], [ %i.pn, %middle.block1295 ], [ %i.pv, %.lr.ph.i.i.i.i496 ]
  %i.pw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i501, i64 8 ; 5 uses
  %.not.i23.i509 = icmp eq ptr %i.gc, null
  br i1 %.not.i23.i509, label %_ZNSt10unique_ptrI36common_speculative_impl_ngram_simpleSt14default_deleteIS0_EED2Ev.exit.thread1033, label %_ZNSt10unique_ptrI36common_speculative_impl_ngram_simpleSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI36common_speculative_impl_ngram_simpleSt14default_deleteIS0_EED2Ev.exit.thread1033: ; preds = %_ZNSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i507
  store ptr %i.pb, ptr %3, align 8, !tbaa !240
  store ptr %i.pw, ptr %i.dq, align 8, !tbaa !237
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %i.pb, i64 %i.oz ; 8 uses
  store ptr %i.px, ptr %i.dr, align 8, !tbaa !241
  br label %bb.cb

_ZNSt10unique_ptrI36common_speculative_impl_ngram_simpleSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i507
  call void @_ZdlPvm(ptr noundef nonnull %i.gc, i64 noundef %i.ot) #32
  %.pre.pre = load ptr, ptr %i.fc, align 8, !tbaa !258 ; 2 uses
  store ptr %i.pb, ptr %3, align 8, !tbaa !240
  store ptr %i.pw, ptr %i.dq, align 8, !tbaa !237
  %i.py = getelementptr inbounds nuw [8 x i8], ptr %i.pb, i64 %i.oz ; 15 uses
  store ptr %i.py, ptr %i.dr, align 8, !tbaa !241
  %.not.i.i.i.i = icmp eq ptr %.pre.pre, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i, label %bb.cb

bb.cb:                                            ; preds = %_ZNSt10unique_ptrI36common_speculative_impl_ngram_simpleSt14default_deleteIS0_EED2Ev.exit.thread1033, %_ZNSt10unique_ptrI36common_speculative_impl_ngram_simpleSt14default_deleteIS0_EED2Ev.exit.thread, %_ZNSt10unique_ptrI36common_speculative_impl_ngram_simpleSt14default_deleteIS0_EED2Ev.exit
  %i.pz = phi ptr [ %i.oq, %_ZNSt10unique_ptrI36common_speculative_impl_ngram_simpleSt14default_deleteIS0_EED2Ev.exit.thread ], [ %i.pw, %_ZNSt10unique_ptrI36common_speculative_impl_ngram_simpleSt14default_deleteIS0_EED2Ev.exit ], [ %i.pw, %_ZNSt10unique_ptrI36common_speculative_impl_ngram_simpleSt14default_deleteIS0_EED2Ev.exit.thread1033 ]
  %i.qa = phi ptr [ %i.gc, %_ZNSt10unique_ptrI36common_speculative_impl_ngram_simpleSt14default_deleteIS0_EED2Ev.exit.thread ], [ %i.pb, %_ZNSt10unique_ptrI36common_speculative_impl_ngram_simpleSt14default_deleteIS0_EED2Ev.exit ], [ %i.pb, %_ZNSt10unique_ptrI36common_speculative_impl_ngram_simpleSt14default_deleteIS0_EED2Ev.exit.thread1033 ]
  %i.qb = phi ptr [ %i.fz, %_ZNSt10unique_ptrI36common_speculative_impl_ngram_simpleSt14default_deleteIS0_EED2Ev.exit.thread ], [ %i.py, %_ZNSt10unique_ptrI36common_speculative_impl_ngram_simpleSt14default_deleteIS0_EED2Ev.exit ], [ %i.px, %_ZNSt10unique_ptrI36common_speculative_impl_ngram_simpleSt14default_deleteIS0_EED2Ev.exit.thread1033 ]
  %i.qc = phi ptr [ %i.ok, %_ZNSt10unique_ptrI36common_speculative_impl_ngram_simpleSt14default_deleteIS0_EED2Ev.exit.thread ], [ %.pre.pre, %_ZNSt10unique_ptrI36common_speculative_impl_ngram_simpleSt14default_deleteIS0_EED2Ev.exit ], [ %i.ok, %_ZNSt10unique_ptrI36common_speculative_impl_ngram_simpleSt14default_deleteIS0_EED2Ev.exit.thread1033 ] ; 2 uses
  %i.qd = phi ptr [ %i.fy, %_ZNSt10unique_ptrI36common_speculative_impl_ngram_simpleSt14default_deleteIS0_EED2Ev.exit.thread ], [ %i.py, %_ZNSt10unique_ptrI36common_speculative_impl_ngram_simpleSt14default_deleteIS0_EED2Ev.exit ], [ %i.px, %_ZNSt10unique_ptrI36common_speculative_impl_ngram_simpleSt14default_deleteIS0_EED2Ev.exit.thread1033 ]
  %i.qe = phi ptr [ %i.fx, %_ZNSt10unique_ptrI36common_speculative_impl_ngram_simpleSt14default_deleteIS0_EED2Ev.exit.thread ], [ %i.py, %_ZNSt10unique_ptrI36common_speculative_impl_ngram_simpleSt14default_deleteIS0_EED2Ev.exit ], [ %i.px, %_ZNSt10unique_ptrI36common_speculative_impl_ngram_simpleSt14default_deleteIS0_EED2Ev.exit.thread1033 ]
  %i.qf = phi ptr [ %i.fw, %_ZNSt10unique_ptrI36common_speculative_impl_ngram_simpleSt14default_deleteIS0_EED2Ev.exit.thread ], [ %i.py, %_ZNSt10unique_ptrI36common_speculative_impl_ngram_simpleSt14default_deleteIS0_EED2Ev.exit ], [ %i.px, %_ZNSt10unique_ptrI36common_speculative_impl_ngram_simpleSt14default_deleteIS0_EED2Ev.exit.thread1033 ]
  %i.qg = phi ptr [ %i.fv, %_ZNSt10unique_ptrI36common_speculative_impl_ngram_simpleSt14default_deleteIS0_EED2Ev.exit.thread ], [ %i.py, %_ZNSt10unique_ptrI36common_speculative_impl_ngram_simpleSt14default_deleteIS0_EED2Ev.exit ], [ %i.px, %_ZNSt10unique_ptrI36common_speculative_impl_ngram_simpleSt14default_deleteIS0_EED2Ev.exit.thread1033 ]
  %i.qh = phi ptr [ %i.fu, %_ZNSt10unique_ptrI36common_speculative_impl_ngram_simpleSt14default_deleteIS0_EED2Ev.exit.thread ], [ %i.py, %_ZNSt10unique_ptrI36common_speculative_impl_ngram_simpleSt14default_deleteIS0_EED2Ev.exit ], [ %i.px, %_ZNSt10unique_ptrI36common_speculative_impl_ngram_simpleSt14default_deleteIS0_EED2Ev.exit.thread1033 ]
  %i.qi = phi ptr [ %i.ft, %_ZNSt10unique_ptrI36common_speculative_impl_ngram_simpleSt14default_deleteIS0_EED2Ev.exit.thread ], [ %i.py, %_ZNSt10unique_ptrI36common_speculative_impl_ngram_simpleSt14default_deleteIS0_EED2Ev.exit ], [ %i.px, %_ZNSt10unique_ptrI36common_speculative_impl_ngram_simpleSt14default_deleteIS0_EED2Ev.exit.thread1033 ]
  %i.qj = load ptr, ptr %i.fd, align 8, !tbaa !260
  %i.qk = ptrtoint ptr %i.qj to i64
  %i.ql = ptrtoint ptr %i.qc to i64
  %i.qm = sub i64 %i.qk, %i.ql
  call void @_ZdlPvm(ptr noundef nonnull %i.qc, i64 noundef %i.qm) #32
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i:                  ; preds = %bb.cb, %_ZNSt10unique_ptrI36common_speculative_impl_ngram_simpleSt14default_deleteIS0_EED2Ev.exit
  %i.qn = phi ptr [ %i.pz, %bb.cb ], [ %i.pw, %_ZNSt10unique_ptrI36common_speculative_impl_ngram_simpleSt14default_deleteIS0_EED2Ev.exit ]
  %i.qo = phi ptr [ %i.qa, %bb.cb ], [ %i.pb, %_ZNSt10unique_ptrI36common_speculative_impl_ngram_simpleSt14default_deleteIS0_EED2Ev.exit ]
  %i.qp = phi ptr [ %i.qb, %bb.cb ], [ %i.py, %_ZNSt10unique_ptrI36common_speculative_impl_ngram_simpleSt14default_deleteIS0_EED2Ev.exit ] ; 4 uses
  %i.qq = phi ptr [ %i.qd, %bb.cb ], [ %i.py, %_ZNSt10unique_ptrI36common_speculative_impl_ngram_simpleSt14default_deleteIS0_EED2Ev.exit ]
  %i.qr = phi ptr [ %i.qe, %bb.cb ], [ %i.py, %_ZNSt10unique_ptrI36common_speculative_impl_ngram_simpleSt14default_deleteIS0_EED2Ev.exit ]
  %i.qs = phi ptr [ %i.qf, %bb.cb ], [ %i.py, %_ZNSt10unique_ptrI36common_speculative_impl_ngram_simpleSt14default_deleteIS0_EED2Ev.exit ]
  %i.qt = phi ptr [ %i.qg, %bb.cb ], [ %i.py, %_ZNSt10unique_ptrI36common_speculative_impl_ngram_simpleSt14default_deleteIS0_EED2Ev.exit ]
  %i.qu = phi ptr [ %i.qh, %bb.cb ], [ %i.py, %_ZNSt10unique_ptrI36common_speculative_impl_ngram_simpleSt14default_deleteIS0_EED2Ev.exit ]
  %i.qv = phi ptr [ %i.qi, %bb.cb ], [ %i.py, %_ZNSt10unique_ptrI36common_speculative_impl_ngram_simpleSt14default_deleteIS0_EED2Ev.exit ]
  %i.qw = load ptr, ptr %i.eu, align 8, !tbaa !261 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.qw, null
  br i1 %.not.i.i.i1.i, label %_ZN16common_ngram_mapD2Ev.exit, label %bb.cc

bb.cc:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i
  %i.qx = load ptr, ptr %i.ff, align 8, !tbaa !262
  %i.qy = ptrtoint ptr %i.qx to i64
  %i.qz = ptrtoint ptr %i.qw to i64
  %i.ra = sub i64 %i.qy, %i.qz
  call void @_ZdlPvm(ptr noundef nonnull %i.qw, i64 noundef %i.ra) #32
  br label %_ZN16common_ngram_mapD2Ev.exit

_ZN16common_ngram_mapD2Ev.exit:                   ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %_ZNSt10unique_ptrI36common_speculative_impl_draft_simpleSt14default_deleteIS0_EED2Ev.exit

bb.cd:                                            ; preds = %bb.bw
  %i.rb = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.ce:                                            ; preds = %bb.bx
  %i.rc = landingpad { ptr, i32 }
          cleanup
  br label %.body249

_ZNSt10unique_ptrI36common_speculative_impl_ngram_simpleSt14default_deleteIS0_EED2Ev.exit263.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i492, %bb.ca
  %lpad.loopexit.split-lp1401 = landingpad { ptr, i32 }
          cleanup
  %i.rd = load ptr, ptr %i.om, align 8, !tbaa !243
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 8
  %i.rf = load ptr, ptr %i.re, align 8
  call void %i.rf(ptr noundef nonnull align 8 dereferenceable(136) %i.om) #31, !inline_history !580
  br label %.body249

.body249:                                         ; preds = %bb.ce, %bb.by, %_ZNSt10unique_ptrI36common_speculative_impl_ngram_simpleSt14default_deleteIS0_EED2Ev.exit263.loopexit.split-lp.loopexit.split-lp
  %.pn103 = phi { ptr, i32 } [ %lpad.loopexit.split-lp1401, %_ZNSt10unique_ptrI36common_speculative_impl_ngram_simpleSt14default_deleteIS0_EED2Ev.exit263.loopexit.split-lp.loopexit.split-lp ], [ %i.rc, %bb.ce ], [ %i.oo, %bb.by ]
  call void @_ZN16common_ngram_mapD2Ev(ptr noundef nonnull align 8 dead_on_return(108) dereferenceable(108) %4) #31
  br label %bb.cf

bb.cf:                                            ; preds = %.body249, %bb.cd
  %.pn103.pn = phi { ptr, i32 } [ %.pn103, %.body249 ], [ %i.rb, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %.body

bb.cg:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.rg = load i32, ptr %.sroa.0674.0844, align 8, !tbaa !235
  %i.rh = getelementptr inbounds nuw i8, ptr %.sroa.0674.0844, i64 1410
  call void @llvm.experimental.noalias.scope.decl(metadata !725)
  %i.ri = icmp eq i32 %i.rg, 7
  %i.rj = getelementptr inbounds nuw i8, ptr %.sroa.0674.0844, i64 1414
  %i.rk = load i16, ptr %i.rj, align 2, !tbaa !713, !noalias !725
  %i.rl = zext i1 %i.ri to i8
  %i.rm = load <2 x i16>, ptr %i.rh, align 2, !tbaa !263, !noalias !725
  store <2 x i16> %i.rm, ptr %5, align 8, !tbaa !263, !alias.scope !725
  store i8 %i.rl, ptr %i.ef, align 4, !tbaa !256, !alias.scope !725
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eg, i8 0, i64 24, i1 false), !alias.scope !725
  store i16 %i.rk, ptr %i.eh, align 8, !tbaa !257, !alias.scope !725
  store i8 0, ptr %i.ei, align 2, !tbaa !714, !alias.scope !725
  store i64 0, ptr %i.ej, align 8, !tbaa !715, !alias.scope !725
  store i8 0, ptr %i.ek, align 8, !tbaa !716, !alias.scope !725
  store i64 0, ptr %i.el, align 8, !tbaa !717, !alias.scope !725
  store i16 0, ptr %i.em, align 8, !tbaa !718, !alias.scope !725
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.en, i8 0, i64 36, i1 false), !alias.scope !725
  %i.rn = invoke noalias noundef nonnull dereferenceable(1048576) ptr @_Znwm(i64 noundef 1048576) #34
          to label %bb.ch unwind label %bb.cp     ; 3 uses

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1048576) %i.rn, i8 0, i64 1048576, i1 false), !noalias !725
  store ptr %i.rn, ptr %i.eo, align 8, !tbaa !258, !alias.scope !725
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 1048576 ; 2 uses
  store ptr %i.ro, ptr %i.eq, align 8, !tbaa !259, !alias.scope !725
  store ptr %i.ro, ptr %i.ep, align 8, !tbaa !260, !alias.scope !725
  %i.rp = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #34
          to label %.noexc266 unwind label %bb.cq ; 6 uses

.noexc266:                                        ; preds = %bb.ch
  invoke void @_ZN35common_speculative_impl_ngram_map_kC2ERK16common_ngram_mapj(ptr noundef nonnull align 8 dereferenceable(160) %i.rp, ptr noundef nonnull align 8 dereferenceable(108) %5, i32 noundef %1)
          to label %_ZSt11make_uniqueI35common_speculative_impl_ngram_map_kJ16common_ngram_mapRjEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.ci, !noalias !726

bb.ci:                                            ; preds = %.noexc266
  %i.rq = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.rp, i64 noundef 160) #32, !noalias !726
  br label %.body267

_ZSt11make_uniqueI35common_speculative_impl_ngram_map_kJ16common_ngram_mapRjEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %.noexc266
  %.not.i.i269 = icmp eq ptr %i.ge, %i.ga
  br i1 %.not.i.i269, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %_ZSt11make_uniqueI35common_speculative_impl_ngram_map_kJ16common_ngram_mapRjEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.rr = ptrtoint ptr %i.rp to i64
  store i64 %i.rr, ptr %i.ge, align 8, !tbaa !98
  %i.rs = getelementptr inbounds nuw i8, ptr %i.ge, i64 8 ; 2 uses
  store ptr %i.rs, ptr %i.dq, align 8, !tbaa !237
  br label %_ZNSt10unique_ptrI35common_speculative_impl_ngram_map_kSt14default_deleteIS0_EED2Ev.exit

bb.ck:                                            ; preds = %_ZSt11make_uniqueI35common_speculative_impl_ngram_map_kJ16common_ngram_mapRjEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.rt = ptrtoint ptr %i.ga to i64               ; 2 uses
  %i.ru = ptrtoint ptr %i.gc to i64               ; 2 uses
  %i.rv = sub i64 %i.rt, %i.ru                    ; 4 uses
  %i.rw = icmp eq i64 %i.rv, 9223372036854775800
  br i1 %i.rw, label %bb.cl, label %_ZNKSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i513

bb.cl:                                            ; preds = %bb.ck
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #33
          to label %.noexc531 unwind label %_ZNSt10unique_ptrI35common_speculative_impl_ngram_map_kSt14default_deleteIS0_EED2Ev.exit285.loopexit.split-lp.loopexit.split-lp

.noexc531:                                        ; preds = %bb.cl
  unreachable

_ZNKSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i513: ; preds = %bb.ck
  %i.rx = ashr exact i64 %i.rv, 3                 ; 3 uses
  %.sroa.speculated.i.i514 = call i64 @llvm.umax.i64(i64 %i.rx, i64 1)
  %i.ry = add nsw i64 %.sroa.speculated.i.i514, %i.rx ; 2 uses
  %i.rz = icmp ult i64 %i.ry, %i.rx
  %i.sa = call i64 @llvm.umin.i64(i64 %i.ry, i64 1152921504606846975)
  %i.sb = select i1 %i.rz, i64 1152921504606846975, i64 %i.sa ; 3 uses
  %.not.i.i515 = icmp ne i64 %i.sb, 0
  call void @llvm.assume(i1 %.not.i.i515)
  %i.sc = shl nuw nsw i64 %i.sb, 3
  %i.sd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.sc) #34
          to label %.noexc532 unwind label %_ZNSt10unique_ptrI35common_speculative_impl_ngram_map_kSt14default_deleteIS0_EED2Ev.exit285.loopexit.split-lp.loopexit.split-lp ; 11 uses

.noexc532:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i513
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 %i.rv
  %i.sf = ptrtoint ptr %i.rp to i64
  store i64 %i.sf, ptr %i.se, align 8, !tbaa !98
  %.not10.i.i.i.i516 = icmp eq ptr %i.gc, %i.ga
  br i1 %.not10.i.i.i.i516, label %_ZNSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i528, label %.lr.ph.i.i.i.i517.preheader

.lr.ph.i.i.i.i517.preheader:                      ; preds = %.noexc532
  %i.sg = add i64 %i.rt, -8
  %i.sh = sub i64 %i.sg, %i.ru                    ; 3 uses
  %i.si = lshr i64 %i.sh, 3
  %i.sj = add nuw nsw i64 %i.si, 1                ; 2 uses
  %min.iters.check1307 = icmp ult i64 %i.sh, 56
  br i1 %min.iters.check1307, label %.lr.ph.i.i.i.i517.preheader1385, label %vector.memcheck1308

vector.memcheck1308:                              ; preds = %.lr.ph.i.i.i.i517.preheader
  %i.sk = and i64 %i.sh, -8
  %i.sl = add i64 %i.sk, 8                        ; 2 uses
  %i.sm = getelementptr i8, ptr %i.sd, i64 %i.sl
  %i.sn = getelementptr i8, ptr %i.gc, i64 %i.sl
  %bound01309 = icmp ult ptr %i.sd, %i.sn
  %bound11310 = icmp ult ptr %i.gc, %i.sm
  %found.conflict1311 = and i1 %bound01309, %bound11310
  br i1 %found.conflict1311, label %.lr.ph.i.i.i.i517.preheader1385, label %vector.ph1312

vector.ph1312:                                    ; preds = %vector.memcheck1308
  %n.vec1313 = and i64 %i.sj, 4611686018427387900 ; 3 uses
  %i.so = shl i64 %n.vec1313, 3                   ; 2 uses
  %i.sp = getelementptr i8, ptr %i.sd, i64 %i.so  ; 2 uses
  %i.sq = getelementptr i8, ptr %i.gc, i64 %i.so
  br label %vector.body1314

vector.body1314:                                  ; preds = %vector.body1314, %vector.ph1312
  %index1315 = phi i64 [ 0, %vector.ph1312 ], [ %index.next1320, %vector.body1314 ] ; 2 uses
  %i.sr = shl i64 %index1315, 3                   ; 2 uses
  %next.gep1316 = getelementptr i8, ptr %i.sd, i64 %i.sr ; 2 uses
  %next.gep1317 = getelementptr i8, ptr %i.gc, i64 %i.sr ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !727)
  call void @llvm.experimental.noalias.scope.decl(metadata !728)
  %i.ss = getelementptr i8, ptr %next.gep1317, i64 16
  %wide.load1318 = load <2 x i64>, ptr %next.gep1317, align 8, !tbaa !98, !alias.scope !729
  %wide.load1319 = load <2 x i64>, ptr %i.ss, align 8, !tbaa !98, !alias.scope !729
  %i.st = getelementptr i8, ptr %next.gep1316, i64 16
  store <2 x i64> %wide.load1318, ptr %next.gep1316, align 8, !tbaa !98, !alias.scope !730, !noalias !731
  store <2 x i64> %wide.load1319, ptr %i.st, align 8, !tbaa !98, !alias.scope !730, !noalias !731
  %19 = getelementptr i8, ptr %next.gep1317, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1317, align 8, !tbaa !98, !alias.scope !729
  store <2 x ptr> splat (ptr null), ptr %19, align 8, !tbaa !98, !alias.scope !729
  %index.next1320 = add nuw i64 %index1315, 4     ; 2 uses
  %i.su = icmp eq i64 %index.next1320, %n.vec1313
  br i1 %i.su, label %middle.block1321, label %vector.body1314, !llvm.loop !643

middle.block1321:                                 ; preds = %vector.body1314
  %cmp.n1322 = icmp eq i64 %i.sj, %n.vec1313
  br i1 %cmp.n1322, label %_ZNSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i528, label %.lr.ph.i.i.i.i517.preheader1385

.lr.ph.i.i.i.i517.preheader1385:                  ; preds = %vector.memcheck1308, %.lr.ph.i.i.i.i517.preheader, %middle.block1321
  %.012.i.i.i.i518.ph = phi ptr [ %i.sd, %vector.memcheck1308 ], [ %i.sd, %.lr.ph.i.i.i.i517.preheader ], [ %i.sp, %middle.block1321 ]
  %.0911.i.i.i.i519.ph = phi ptr [ %i.gc, %vector.memcheck1308 ], [ %i.gc, %.lr.ph.i.i.i.i517.preheader ], [ %i.sq, %middle.block1321 ]
  br label %.lr.ph.i.i.i.i517

.lr.ph.i.i.i.i517:                                ; preds = %.lr.ph.i.i.i.i517.preheader1385, %.lr.ph.i.i.i.i517
  %.012.i.i.i.i518 = phi ptr [ %i.sx, %.lr.ph.i.i.i.i517 ], [ %.012.i.i.i.i518.ph, %.lr.ph.i.i.i.i517.preheader1385 ] ; 2 uses
  %.0911.i.i.i.i519 = phi ptr [ %i.sw, %.lr.ph.i.i.i.i517 ], [ %.0911.i.i.i.i519.ph, %.lr.ph.i.i.i.i517.preheader1385 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !727)
  call void @llvm.experimental.noalias.scope.decl(metadata !728)
  %i.sv = load i64, ptr %.0911.i.i.i.i519, align 8, !tbaa !98, !alias.scope !728
  store i64 %i.sv, ptr %.012.i.i.i.i518, align 8, !tbaa !98, !alias.scope !727
  store ptr null, ptr %.0911.i.i.i.i519, align 8, !tbaa !98, !alias.scope !728
  %i.sw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i519, i64 8 ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i518, i64 8 ; 2 uses
  %.not.i.i.i.i520 = icmp eq ptr %i.sw, %i.ga
  br i1 %.not.i.i.i.i520, label %_ZNSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i528, label %.lr.ph.i.i.i.i517, !llvm.loop !644

_ZNSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i528: ; preds = %.lr.ph.i.i.i.i517, %middle.block1321, %.noexc532
  %.0.lcssa.i.i.i.i522 = phi ptr [ %i.sd, %.noexc532 ], [ %i.sp, %middle.block1321 ], [ %i.sx, %.lr.ph.i.i.i.i517 ]
  %i.sy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i522, i64 8 ; 2 uses
  %.not.i23.i530 = icmp eq ptr %i.gc, null
  br i1 %.not.i23.i530, label %.noexc270, label %bb.cm

bb.cm:                                            ; preds = %_ZNSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i528
  call void @_ZdlPvm(ptr noundef nonnull %i.gc, i64 noundef %i.rv) #32
  br label %.noexc270

.noexc270:                                        ; preds = %bb.cm, %_ZNSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i528
  store ptr %i.sd, ptr %3, align 8, !tbaa !240
  store ptr %i.sy, ptr %i.dq, align 8, !tbaa !237
  %i.sz = getelementptr inbounds nuw [8 x i8], ptr %i.sd, i64 %i.sb ; 9 uses
  store ptr %i.sz, ptr %i.dr, align 8, !tbaa !241
  br label %_ZNSt10unique_ptrI35common_speculative_impl_ngram_map_kSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI35common_speculative_impl_ngram_map_kSt14default_deleteIS0_EED2Ev.exit: ; preds = %.noexc270, %bb.cj
  %i.ta = phi ptr [ %i.sz, %.noexc270 ], [ %i.ft, %bb.cj ]
  %i.tb = phi ptr [ %i.sz, %.noexc270 ], [ %i.fu, %bb.cj ]
  %i.tc = phi ptr [ %i.sz, %.noexc270 ], [ %i.fv, %bb.cj ]
  %i.td = phi ptr [ %i.sz, %.noexc270 ], [ %i.fw, %bb.cj ]
  %i.te = phi ptr [ %i.sz, %.noexc270 ], [ %i.fx, %bb.cj ]
  %i.tf = phi ptr [ %i.sz, %.noexc270 ], [ %i.fy, %bb.cj ]
  %i.tg = phi ptr [ %i.sz, %.noexc270 ], [ %i.fz, %bb.cj ]
  %i.th = phi ptr [ %i.sz, %.noexc270 ], [ %i.ga, %bb.cj ] ; 3 uses
  %i.ti = phi ptr [ %i.sd, %.noexc270 ], [ %i.gc, %bb.cj ]
  %i.tj = phi ptr [ %i.sy, %.noexc270 ], [ %i.rs, %bb.cj ]
  %i.tk = load ptr, ptr %i.eo, align 8, !tbaa !258 ; 3 uses
  %.not.i.i.i.i276 = icmp eq ptr %i.tk, null
  br i1 %.not.i.i.i.i276, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i277, label %bb.cn

bb.cn:                                            ; preds = %_ZNSt10unique_ptrI35common_speculative_impl_ngram_map_kSt14default_deleteIS0_EED2Ev.exit
  %i.tl = load ptr, ptr %i.ep, align 8, !tbaa !260
  %i.tm = ptrtoint ptr %i.tl to i64
  %i.tn = ptrtoint ptr %i.tk to i64
  %i.to = sub i64 %i.tm, %i.tn
  call void @_ZdlPvm(ptr noundef nonnull %i.tk, i64 noundef %i.to) #32
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i277

_ZNSt6vectorIjSaIjEED2Ev.exit.i277:               ; preds = %bb.cn, %_ZNSt10unique_ptrI35common_speculative_impl_ngram_map_kSt14default_deleteIS0_EED2Ev.exit
  %i.tp = load ptr, ptr %i.eg, align 8, !tbaa !261 ; 3 uses
  %.not.i.i.i1.i278 = icmp eq ptr %i.tp, null
  br i1 %.not.i.i.i1.i278, label %_ZN16common_ngram_mapD2Ev.exit279, label %bb.co

bb.co:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i277
  %i.tq = load ptr, ptr %i.er, align 8, !tbaa !262
  %i.tr = ptrtoint ptr %i.tq to i64
  %i.ts = ptrtoint ptr %i.tp to i64
  %i.tt = sub i64 %i.tr, %i.ts
  call void @_ZdlPvm(ptr noundef nonnull %i.tp, i64 noundef %i.tt) #32
  br label %_ZN16common_ngram_mapD2Ev.exit279

_ZN16common_ngram_mapD2Ev.exit279:                ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i277, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %_ZNSt10unique_ptrI36common_speculative_impl_draft_simpleSt14default_deleteIS0_EED2Ev.exit

bb.cp:                                            ; preds = %bb.cg
  %i.tu = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

bb.cq:                                            ; preds = %bb.ch
  %i.tv = landingpad { ptr, i32 }
          cleanup
  br label %.body267

_ZNSt10unique_ptrI35common_speculative_impl_ngram_map_kSt14default_deleteIS0_EED2Ev.exit285.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i513, %bb.cl
  %lpad.loopexit.split-lp1398 = landingpad { ptr, i32 }
          cleanup
  %i.tw = load ptr, ptr %i.rp, align 8, !tbaa !243
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 8
  %i.ty = load ptr, ptr %i.tx, align 8
  call void %i.ty(ptr noundef nonnull align 8 dereferenceable(136) %i.rp) #31, !inline_history !580
  br label %.body267

.body267:                                         ; preds = %bb.cq, %bb.ci, %_ZNSt10unique_ptrI35common_speculative_impl_ngram_map_kSt14default_deleteIS0_EED2Ev.exit285.loopexit.split-lp.loopexit.split-lp
  %.pn100 = phi { ptr, i32 } [ %lpad.loopexit.split-lp1398, %_ZNSt10unique_ptrI35common_speculative_impl_ngram_map_kSt14default_deleteIS0_EED2Ev.exit285.loopexit.split-lp.loopexit.split-lp ], [ %i.tv, %bb.cq ], [ %i.rq, %bb.ci ]
  call void @_ZN16common_ngram_mapD2Ev(ptr noundef nonnull align 8 dead_on_return(108) dereferenceable(108) %5) #31
  br label %bb.cr

bb.cr:                                            ; preds = %.body267, %bb.cp
  %.pn100.pn = phi { ptr, i32 } [ %.pn100, %.body267 ], [ %i.tu, %bb.cp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %.body

bb.cs:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.tz = load i32, ptr %.sroa.0674.0844, align 8, !tbaa !235
  %i.ua = getelementptr inbounds nuw i8, ptr %.sroa.0674.0844, i64 1416
  call void @llvm.experimental.noalias.scope.decl(metadata !732)
  %i.ub = icmp eq i32 %i.tz, 7
  %i.uc = getelementptr inbounds nuw i8, ptr %.sroa.0674.0844, i64 1420
  %i.ud = load i16, ptr %i.uc, align 4, !tbaa !713, !noalias !732
  %i.ue = zext i1 %i.ub to i8
  %i.uf = load <2 x i16>, ptr %i.ua, align 8, !tbaa !263, !noalias !732
  store <2 x i16> %i.uf, ptr %6, align 8, !tbaa !263, !alias.scope !732
  store i8 %i.ue, ptr %i.ds, align 4, !tbaa !256, !alias.scope !732
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dt, i8 0, i64 24, i1 false), !alias.scope !732
  store i16 %i.ud, ptr %i.du, align 8, !tbaa !257, !alias.scope !732
  store i8 0, ptr %i.dv, align 2, !tbaa !714, !alias.scope !732
  store i64 0, ptr %i.dw, align 8, !tbaa !715, !alias.scope !732
  store i8 0, ptr %i.dx, align 8, !tbaa !716, !alias.scope !732
  store i64 0, ptr %i.dy, align 8, !tbaa !717, !alias.scope !732
  store i16 0, ptr %i.dz, align 8, !tbaa !718, !alias.scope !732
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ea, i8 0, i64 36, i1 false), !alias.scope !732
  %i.ug = invoke noalias noundef nonnull dereferenceable(1048576) ptr @_Znwm(i64 noundef 1048576) #34
          to label %bb.ct unwind label %bb.db     ; 3 uses

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1048576) %i.ug, i8 0, i64 1048576, i1 false), !noalias !732
  store ptr %i.ug, ptr %i.eb, align 8, !tbaa !258, !alias.scope !732
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 1048576 ; 2 uses
  store ptr %i.uh, ptr %i.ed, align 8, !tbaa !259, !alias.scope !732
  store ptr %i.uh, ptr %i.ec, align 8, !tbaa !260, !alias.scope !732
  %i.ui = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #34
          to label %.noexc288 unwind label %bb.dc ; 6 uses

.noexc288:                                        ; preds = %bb.ct
  invoke void @_ZN35common_speculative_impl_ngram_map_kC2ERK16common_ngram_mapj(ptr noundef nonnull align 8 dereferenceable(160) %i.ui, ptr noundef nonnull align 8 dereferenceable(108) %6, i32 noundef %1)
          to label %_ZSt11make_uniqueI35common_speculative_impl_ngram_map_kJ16common_ngram_mapRjEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit291 unwind label %bb.cu, !noalias !733

bb.cu:                                            ; preds = %.noexc288
  %i.uj = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ui, i64 noundef 160) #32, !noalias !733
  br label %.body289

_ZSt11make_uniqueI35common_speculative_impl_ngram_map_kJ16common_ngram_mapRjEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit291: ; preds = %.noexc288
  %.not.i.i292 = icmp eq ptr %i.ge, %i.gb
  br i1 %.not.i.i292, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %_ZSt11make_uniqueI35common_speculative_impl_ngram_map_kJ16common_ngram_mapRjEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit291
  %i.uk = ptrtoint ptr %i.ui to i64
  store i64 %i.uk, ptr %i.ge, align 8, !tbaa !98
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ge, i64 8 ; 2 uses
  store ptr %i.ul, ptr %i.dq, align 8, !tbaa !237
  br label %_ZNSt10unique_ptrI35common_speculative_impl_ngram_map_kSt14default_deleteIS0_EED2Ev.exit300

bb.cw:                                            ; preds = %_ZSt11make_uniqueI35common_speculative_impl_ngram_map_kJ16common_ngram_mapRjEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit291
  %i.um = ptrtoint ptr %i.gb to i64               ; 2 uses
  %i.un = ptrtoint ptr %i.gc to i64               ; 2 uses
  %i.uo = sub i64 %i.um, %i.un                    ; 4 uses
  %i.up = icmp eq i64 %i.uo, 9223372036854775800
  br i1 %i.up, label %bb.cx, label %_ZNKSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i534

bb.cx:                                            ; preds = %bb.cw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #33
          to label %.noexc552 unwind label %_ZNSt10unique_ptrI35common_speculative_impl_ngram_map_kSt14default_deleteIS0_EED2Ev.exit310.loopexit.split-lp.loopexit.split-lp

.noexc552:                                        ; preds = %bb.cx
  unreachable

_ZNKSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i534: ; preds = %bb.cw
  %i.uq = ashr exact i64 %i.uo, 3                 ; 3 uses
  %.sroa.speculated.i.i535 = call i64 @llvm.umax.i64(i64 %i.uq, i64 1)
  %i.ur = add nsw i64 %.sroa.speculated.i.i535, %i.uq ; 2 uses
  %i.us = icmp ult i64 %i.ur, %i.uq
  %i.ut = call i64 @llvm.umin.i64(i64 %i.ur, i64 1152921504606846975)
  %i.uu = select i1 %i.us, i64 1152921504606846975, i64 %i.ut ; 3 uses
  %.not.i.i536 = icmp ne i64 %i.uu, 0
  call void @llvm.assume(i1 %.not.i.i536)
  %i.uv = shl nuw nsw i64 %i.uu, 3
  %i.uw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.uv) #34
          to label %.noexc553 unwind label %_ZNSt10unique_ptrI35common_speculative_impl_ngram_map_kSt14default_deleteIS0_EED2Ev.exit310.loopexit.split-lp.loopexit.split-lp ; 11 uses

.noexc553:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i534
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 %i.uo
  %i.uy = ptrtoint ptr %i.ui to i64
  store i64 %i.uy, ptr %i.ux, align 8, !tbaa !98
  %.not10.i.i.i.i537 = icmp eq ptr %i.gc, %i.gb
  br i1 %.not10.i.i.i.i537, label %_ZNSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i549, label %.lr.ph.i.i.i.i538.preheader

.lr.ph.i.i.i.i538.preheader:                      ; preds = %.noexc553
  %i.uz = add i64 %i.um, -8
  %i.va = sub i64 %i.uz, %i.un                    ; 3 uses
  %i.vb = lshr i64 %i.va, 3
  %i.vc = add nuw nsw i64 %i.vb, 1                ; 2 uses
  %min.iters.check1333 = icmp ult i64 %i.va, 56
  br i1 %min.iters.check1333, label %.lr.ph.i.i.i.i538.preheader1386, label %vector.memcheck1334

vector.memcheck1334:                              ; preds = %.lr.ph.i.i.i.i538.preheader
  %i.vd = and i64 %i.va, -8
  %i.ve = add i64 %i.vd, 8                        ; 2 uses
  %i.vf = getelementptr i8, ptr %i.uw, i64 %i.ve
  %i.vg = getelementptr i8, ptr %i.gc, i64 %i.ve
  %bound01335 = icmp ult ptr %i.uw, %i.vg
  %bound11336 = icmp ult ptr %i.gc, %i.vf
  %found.conflict1337 = and i1 %bound01335, %bound11336
  br i1 %found.conflict1337, label %.lr.ph.i.i.i.i538.preheader1386, label %vector.ph1338

vector.ph1338:                                    ; preds = %vector.memcheck1334
  %n.vec1339 = and i64 %i.vc, 4611686018427387900 ; 3 uses
  %i.vh = shl i64 %n.vec1339, 3                   ; 2 uses
  %i.vi = getelementptr i8, ptr %i.uw, i64 %i.vh  ; 2 uses
  %i.vj = getelementptr i8, ptr %i.gc, i64 %i.vh
  br label %vector.body1340

vector.body1340:                                  ; preds = %vector.body1340, %vector.ph1338
  %index1341 = phi i64 [ 0, %vector.ph1338 ], [ %index.next1346, %vector.body1340 ] ; 2 uses
  %i.vk = shl i64 %index1341, 3                   ; 2 uses
  %next.gep1342 = getelementptr i8, ptr %i.uw, i64 %i.vk ; 2 uses
  %next.gep1343 = getelementptr i8, ptr %i.gc, i64 %i.vk ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !734)
  call void @llvm.experimental.noalias.scope.decl(metadata !735)
  %i.vl = getelementptr i8, ptr %next.gep1343, i64 16
  %wide.load1344 = load <2 x i64>, ptr %next.gep1343, align 8, !tbaa !98, !alias.scope !736
  %wide.load1345 = load <2 x i64>, ptr %i.vl, align 8, !tbaa !98, !alias.scope !736
  %i.vm = getelementptr i8, ptr %next.gep1342, i64 16
  store <2 x i64> %wide.load1344, ptr %next.gep1342, align 8, !tbaa !98, !alias.scope !737, !noalias !738
  store <2 x i64> %wide.load1345, ptr %i.vm, align 8, !tbaa !98, !alias.scope !737, !noalias !738
  %20 = getelementptr i8, ptr %next.gep1343, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1343, align 8, !tbaa !98, !alias.scope !736
  store <2 x ptr> splat (ptr null), ptr %20, align 8, !tbaa !98, !alias.scope !736
  %index.next1346 = add nuw i64 %index1341, 4     ; 2 uses
  %i.vn = icmp eq i64 %index.next1346, %n.vec1339
  br i1 %i.vn, label %middle.block1347, label %vector.body1340, !llvm.loop !655

middle.block1347:                                 ; preds = %vector.body1340
  %cmp.n1348 = icmp eq i64 %i.vc, %n.vec1339
  br i1 %cmp.n1348, label %_ZNSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i549, label %.lr.ph.i.i.i.i538.preheader1386

.lr.ph.i.i.i.i538.preheader1386:                  ; preds = %vector.memcheck1334, %.lr.ph.i.i.i.i538.preheader, %middle.block1347
  %.012.i.i.i.i539.ph = phi ptr [ %i.uw, %vector.memcheck1334 ], [ %i.uw, %.lr.ph.i.i.i.i538.preheader ], [ %i.vi, %middle.block1347 ]
  %.0911.i.i.i.i540.ph = phi ptr [ %i.gc, %vector.memcheck1334 ], [ %i.gc, %.lr.ph.i.i.i.i538.preheader ], [ %i.vj, %middle.block1347 ]
  br label %.lr.ph.i.i.i.i538

.lr.ph.i.i.i.i538:                                ; preds = %.lr.ph.i.i.i.i538.preheader1386, %.lr.ph.i.i.i.i538
  %.012.i.i.i.i539 = phi ptr [ %i.vq, %.lr.ph.i.i.i.i538 ], [ %.012.i.i.i.i539.ph, %.lr.ph.i.i.i.i538.preheader1386 ] ; 2 uses
  %.0911.i.i.i.i540 = phi ptr [ %i.vp, %.lr.ph.i.i.i.i538 ], [ %.0911.i.i.i.i540.ph, %.lr.ph.i.i.i.i538.preheader1386 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !734)
  call void @llvm.experimental.noalias.scope.decl(metadata !735)
  %i.vo = load i64, ptr %.0911.i.i.i.i540, align 8, !tbaa !98, !alias.scope !735
  store i64 %i.vo, ptr %.012.i.i.i.i539, align 8, !tbaa !98, !alias.scope !734
  store ptr null, ptr %.0911.i.i.i.i540, align 8, !tbaa !98, !alias.scope !735
  %i.vp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i540, i64 8 ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i539, i64 8 ; 2 uses
  %.not.i.i.i.i541 = icmp eq ptr %i.vp, %i.gb
  br i1 %.not.i.i.i.i541, label %_ZNSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i549, label %.lr.ph.i.i.i.i538, !llvm.loop !656

_ZNSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i549: ; preds = %.lr.ph.i.i.i.i538, %middle.block1347, %.noexc553
  %.0.lcssa.i.i.i.i543 = phi ptr [ %i.uw, %.noexc553 ], [ %i.vi, %middle.block1347 ], [ %i.vq, %.lr.ph.i.i.i.i538 ]
  %i.vr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i543, i64 8 ; 2 uses
  %.not.i23.i551 = icmp eq ptr %i.gc, null
  br i1 %.not.i23.i551, label %.noexc293, label %bb.cy

bb.cy:                                            ; preds = %_ZNSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i549
  call void @_ZdlPvm(ptr noundef nonnull %i.gc, i64 noundef %i.uo) #32
  br label %.noexc293

.noexc293:                                        ; preds = %bb.cy, %_ZNSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i549
  store ptr %i.uw, ptr %3, align 8, !tbaa !240
  store ptr %i.vr, ptr %i.dq, align 8, !tbaa !237
  %i.vs = getelementptr inbounds nuw [8 x i8], ptr %i.uw, i64 %i.uu ; 10 uses
  store ptr %i.vs, ptr %i.dr, align 8, !tbaa !241
  br label %_ZNSt10unique_ptrI35common_speculative_impl_ngram_map_kSt14default_deleteIS0_EED2Ev.exit300

_ZNSt10unique_ptrI35common_speculative_impl_ngram_map_kSt14default_deleteIS0_EED2Ev.exit300: ; preds = %.noexc293, %bb.cv
  %i.vt = phi ptr [ %i.vs, %.noexc293 ], [ %i.ft, %bb.cv ]
  %i.vu = phi ptr [ %i.vs, %.noexc293 ], [ %i.fu, %bb.cv ]
  %i.vv = phi ptr [ %i.vs, %.noexc293 ], [ %i.fv, %bb.cv ]
  %i.vw = phi ptr [ %i.vs, %.noexc293 ], [ %i.fw, %bb.cv ]
  %i.vx = phi ptr [ %i.vs, %.noexc293 ], [ %i.fx, %bb.cv ]
  %i.vy = phi ptr [ %i.vs, %.noexc293 ], [ %i.fy, %bb.cv ]
  %i.vz = phi ptr [ %i.vs, %.noexc293 ], [ %i.fz, %bb.cv ]
  %i.wa = phi ptr [ %i.vs, %.noexc293 ], [ %i.ga, %bb.cv ]
  %i.wb = phi ptr [ %i.vs, %.noexc293 ], [ %i.gb, %bb.cv ] ; 2 uses
  %i.wc = phi ptr [ %i.uw, %.noexc293 ], [ %i.gc, %bb.cv ]
  %i.wd = phi ptr [ %i.vr, %.noexc293 ], [ %i.ul, %bb.cv ]
  %i.we = load ptr, ptr %i.eb, align 8, !tbaa !258 ; 3 uses
  %.not.i.i.i.i301 = icmp eq ptr %i.we, null
  br i1 %.not.i.i.i.i301, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i302, label %bb.cz

bb.cz:                                            ; preds = %_ZNSt10unique_ptrI35common_speculative_impl_ngram_map_kSt14default_deleteIS0_EED2Ev.exit300
  %i.wf = load ptr, ptr %i.ec, align 8, !tbaa !260
  %i.wg = ptrtoint ptr %i.wf to i64
  %i.wh = ptrtoint ptr %i.we to i64
  %i.wi = sub i64 %i.wg, %i.wh
  call void @_ZdlPvm(ptr noundef nonnull %i.we, i64 noundef %i.wi) #32
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i302

_ZNSt6vectorIjSaIjEED2Ev.exit.i302:               ; preds = %bb.cz, %_ZNSt10unique_ptrI35common_speculative_impl_ngram_map_kSt14default_deleteIS0_EED2Ev.exit300
  %i.wj = load ptr, ptr %i.dt, align 8, !tbaa !261 ; 3 uses
  %.not.i.i.i1.i303 = icmp eq ptr %i.wj, null
  br i1 %.not.i.i.i1.i303, label %_ZN16common_ngram_mapD2Ev.exit304, label %bb.da

bb.da:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i302
  %i.wk = load ptr, ptr %i.ee, align 8, !tbaa !262
  %i.wl = ptrtoint ptr %i.wk to i64
  %i.wm = ptrtoint ptr %i.wj to i64
  %i.wn = sub i64 %i.wl, %i.wm
  call void @_ZdlPvm(ptr noundef nonnull %i.wj, i64 noundef %i.wn) #32
  br label %_ZN16common_ngram_mapD2Ev.exit304

_ZN16common_ngram_mapD2Ev.exit304:                ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i302, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %_ZNSt10unique_ptrI36common_speculative_impl_draft_simpleSt14default_deleteIS0_EED2Ev.exit

bb.db:                                            ; preds = %bb.cs
  %i.wo = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.dc:                                            ; preds = %bb.ct
  %i.wp = landingpad { ptr, i32 }
          cleanup
  br label %.body289

_ZNSt10unique_ptrI35common_speculative_impl_ngram_map_kSt14default_deleteIS0_EED2Ev.exit310.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i534, %bb.cx
  %lpad.loopexit.split-lp1395 = landingpad { ptr, i32 }
          cleanup
  %i.wq = load ptr, ptr %i.ui, align 8, !tbaa !243
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 8
  %i.ws = load ptr, ptr %i.wr, align 8
  call void %i.ws(ptr noundef nonnull align 8 dereferenceable(136) %i.ui) #31, !inline_history !580
  br label %.body289

.body289:                                         ; preds = %bb.dc, %bb.cu, %_ZNSt10unique_ptrI35common_speculative_impl_ngram_map_kSt14default_deleteIS0_EED2Ev.exit310.loopexit.split-lp.loopexit.split-lp
  %.pn97 = phi { ptr, i32 } [ %lpad.loopexit.split-lp1395, %_ZNSt10unique_ptrI35common_speculative_impl_ngram_map_kSt14default_deleteIS0_EED2Ev.exit310.loopexit.split-lp.loopexit.split-lp ], [ %i.wp, %bb.dc ], [ %i.uj, %bb.cu ]
  call void @_ZN16common_ngram_mapD2Ev(ptr noundef nonnull align 8 dead_on_return(108) dereferenceable(108) %6) #31
  br label %bb.dd

bb.dd:                                            ; preds = %.body289, %bb.db
  %.pn97.pn = phi { ptr, i32 } [ %.pn97, %.body289 ], [ %i.wo, %bb.db ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %.body

bb.de:                                            ; preds = %bb.ar
  %i.wt = invoke noalias noundef nonnull dereferenceable(224) ptr @_Znwm(i64 noundef 224) #34
          to label %.noexc311 unwind label %.loopexit.split-lp764.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc311:                                        ; preds = %bb.de
  %i.wu = getelementptr inbounds nuw i8, ptr %.sroa.0674.0844, i64 8
  invoke void @_ZN33common_speculative_impl_ngram_modC2ERK25common_params_speculativej(ptr noundef nonnull align 8 dereferenceable(224) %i.wt, ptr noundef nonnull align 8 dereferenceable(1480) %i.wu, i32 noundef %1)
          to label %_ZSt11make_uniqueI33common_speculative_impl_ngram_modJRK25common_params_speculativeRjEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.df, !noalias !739

bb.df:                                            ; preds = %.noexc311
  %i.wv = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.wt, i64 noundef 224) #32, !noalias !739
  br label %.body

_ZSt11make_uniqueI33common_speculative_impl_ngram_modJRK25common_params_speculativeRjEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %.noexc311
  %.not.i.i314 = icmp eq ptr %i.ge, %i.gd
  br i1 %.not.i.i314, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %_ZSt11make_uniqueI33common_speculative_impl_ngram_modJRK25common_params_speculativeRjEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.ww = ptrtoint ptr %i.wt to i64
  store i64 %i.ww, ptr %i.ge, align 8, !tbaa !98
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ge, i64 8 ; 2 uses
  store ptr %i.wx, ptr %i.dq, align 8, !tbaa !237
  br label %_ZNSt10unique_ptrI36common_speculative_impl_draft_simpleSt14default_deleteIS0_EED2Ev.exit

bb.dh:                                            ; preds = %_ZSt11make_uniqueI33common_speculative_impl_ngram_modJRK25common_params_speculativeRjEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.wy = ptrtoint ptr %i.gd to i64               ; 2 uses
  %i.wz = ptrtoint ptr %i.gc to i64               ; 2 uses
  %i.xa = sub i64 %i.wy, %i.wz                    ; 4 uses
  %i.xb = icmp eq i64 %i.xa, 9223372036854775800
  br i1 %i.xb, label %bb.di, label %_ZNKSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i555

bb.di:                                            ; preds = %bb.dh
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #33
          to label %.noexc573 unwind label %_ZNSt10unique_ptrI33common_speculative_impl_ngram_modSt14default_deleteIS0_EED2Ev.exit326.loopexit.split-lp.loopexit.split-lp

.noexc573:                                        ; preds = %bb.di
  unreachable

_ZNKSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i555: ; preds = %bb.dh
  %i.xc = ashr exact i64 %i.xa, 3                 ; 3 uses
  %.sroa.speculated.i.i556 = call i64 @llvm.umax.i64(i64 %i.xc, i64 1)
  %i.xd = add nsw i64 %.sroa.speculated.i.i556, %i.xc ; 2 uses
  %i.xe = icmp ult i64 %i.xd, %i.xc
  %i.xf = call i64 @llvm.umin.i64(i64 %i.xd, i64 1152921504606846975)
  %i.xg = select i1 %i.xe, i64 1152921504606846975, i64 %i.xf ; 3 uses
  %.not.i.i557 = icmp ne i64 %i.xg, 0
  call void @llvm.assume(i1 %.not.i.i557)
  %i.xh = shl nuw nsw i64 %i.xg, 3
  %i.xi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.xh) #34
          to label %.noexc574 unwind label %_ZNSt10unique_ptrI33common_speculative_impl_ngram_modSt14default_deleteIS0_EED2Ev.exit326.loopexit.split-lp.loopexit.split-lp ; 11 uses

.noexc574:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i555
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 %i.xa
  %i.xk = ptrtoint ptr %i.wt to i64
  store i64 %i.xk, ptr %i.xj, align 8, !tbaa !98
  %.not10.i.i.i.i558 = icmp eq ptr %i.gc, %i.gd
  br i1 %.not10.i.i.i.i558, label %_ZNSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i570, label %.lr.ph.i.i.i.i559.preheader

.lr.ph.i.i.i.i559.preheader:                      ; preds = %.noexc574
  %i.xl = add i64 %i.wy, -8
  %i.xm = sub i64 %i.xl, %i.wz                    ; 3 uses
  %i.xn = lshr i64 %i.xm, 3
  %i.xo = add nuw nsw i64 %i.xn, 1                ; 2 uses
  %min.iters.check1359 = icmp ult i64 %i.xm, 56
  br i1 %min.iters.check1359, label %.lr.ph.i.i.i.i559.preheader1387, label %vector.memcheck1360

vector.memcheck1360:                              ; preds = %.lr.ph.i.i.i.i559.preheader
  %i.xp = and i64 %i.xm, -8
  %i.xq = add i64 %i.xp, 8                        ; 2 uses
  %i.xr = getelementptr i8, ptr %i.xi, i64 %i.xq
  %i.xs = getelementptr i8, ptr %i.gc, i64 %i.xq
  %bound01361 = icmp ult ptr %i.xi, %i.xs
  %bound11362 = icmp ult ptr %i.gc, %i.xr
  %found.conflict1363 = and i1 %bound01361, %bound11362
  br i1 %found.conflict1363, label %.lr.ph.i.i.i.i559.preheader1387, label %vector.ph1364

vector.ph1364:                                    ; preds = %vector.memcheck1360
  %n.vec1365 = and i64 %i.xo, 4611686018427387900 ; 3 uses
  %i.xt = shl i64 %n.vec1365, 3                   ; 2 uses
  %i.xu = getelementptr i8, ptr %i.xi, i64 %i.xt  ; 2 uses
  %i.xv = getelementptr i8, ptr %i.gc, i64 %i.xt
  br label %vector.body1366

vector.body1366:                                  ; preds = %vector.body1366, %vector.ph1364
  %index1367 = phi i64 [ 0, %vector.ph1364 ], [ %index.next1372, %vector.body1366 ] ; 2 uses
  %i.xw = shl i64 %index1367, 3                   ; 2 uses
  %next.gep1368 = getelementptr i8, ptr %i.xi, i64 %i.xw ; 2 uses
  %next.gep1369 = getelementptr i8, ptr %i.gc, i64 %i.xw ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !740)
  call void @llvm.experimental.noalias.scope.decl(metadata !741)
  %i.xx = getelementptr i8, ptr %next.gep1369, i64 16
  %wide.load1370 = load <2 x i64>, ptr %next.gep1369, align 8, !tbaa !98, !alias.scope !742
  %wide.load1371 = load <2 x i64>, ptr %i.xx, align 8, !tbaa !98, !alias.scope !742
  %i.xy = getelementptr i8, ptr %next.gep1368, i64 16
  store <2 x i64> %wide.load1370, ptr %next.gep1368, align 8, !tbaa !98, !alias.scope !743, !noalias !744
  store <2 x i64> %wide.load1371, ptr %i.xy, align 8, !tbaa !98, !alias.scope !743, !noalias !744
  %21 = getelementptr i8, ptr %next.gep1369, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1369, align 8, !tbaa !98, !alias.scope !742
  store <2 x ptr> splat (ptr null), ptr %21, align 8, !tbaa !98, !alias.scope !742
  %index.next1372 = add nuw i64 %index1367, 4     ; 2 uses
  %i.xz = icmp eq i64 %index.next1372, %n.vec1365
  br i1 %i.xz, label %middle.block1373, label %vector.body1366, !llvm.loop !665

middle.block1373:                                 ; preds = %vector.body1366
  %cmp.n1374 = icmp eq i64 %i.xo, %n.vec1365
  br i1 %cmp.n1374, label %_ZNSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i570, label %.lr.ph.i.i.i.i559.preheader1387

.lr.ph.i.i.i.i559.preheader1387:                  ; preds = %vector.memcheck1360, %.lr.ph.i.i.i.i559.preheader, %middle.block1373
  %.012.i.i.i.i560.ph = phi ptr [ %i.xi, %vector.memcheck1360 ], [ %i.xi, %.lr.ph.i.i.i.i559.preheader ], [ %i.xu, %middle.block1373 ]
  %.0911.i.i.i.i561.ph = phi ptr [ %i.gc, %vector.memcheck1360 ], [ %i.gc, %.lr.ph.i.i.i.i559.preheader ], [ %i.xv, %middle.block1373 ]
  br label %.lr.ph.i.i.i.i559

.lr.ph.i.i.i.i559:                                ; preds = %.lr.ph.i.i.i.i559.preheader1387, %.lr.ph.i.i.i.i559
  %.012.i.i.i.i560 = phi ptr [ %i.yc, %.lr.ph.i.i.i.i559 ], [ %.012.i.i.i.i560.ph, %.lr.ph.i.i.i.i559.preheader1387 ] ; 2 uses
  %.0911.i.i.i.i561 = phi ptr [ %i.yb, %.lr.ph.i.i.i.i559 ], [ %.0911.i.i.i.i561.ph, %.lr.ph.i.i.i.i559.preheader1387 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !740)
  call void @llvm.experimental.noalias.scope.decl(metadata !741)
  %i.ya = load i64, ptr %.0911.i.i.i.i561, align 8, !tbaa !98, !alias.scope !741
  store i64 %i.ya, ptr %.012.i.i.i.i560, align 8, !tbaa !98, !alias.scope !740
  store ptr null, ptr %.0911.i.i.i.i561, align 8, !tbaa !98, !alias.scope !741
  %i.yb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i561, i64 8 ; 2 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i560, i64 8 ; 2 uses
  %.not.i.i.i.i562 = icmp eq ptr %i.yb, %i.gd
  br i1 %.not.i.i.i.i562, label %_ZNSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i570, label %.lr.ph.i.i.i.i559, !llvm.loop !666

_ZNSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i570: ; preds = %.lr.ph.i.i.i.i559, %middle.block1373, %.noexc574
  %.0.lcssa.i.i.i.i564 = phi ptr [ %i.xi, %.noexc574 ], [ %i.xu, %middle.block1373 ], [ %i.yc, %.lr.ph.i.i.i.i559 ]
  %i.yd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i564, i64 8 ; 2 uses
  %.not.i23.i572 = icmp eq ptr %i.gc, null
  br i1 %.not.i23.i572, label %.noexc315, label %bb.dj

bb.dj:                                            ; preds = %_ZNSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i570
  call void @_ZdlPvm(ptr noundef nonnull %i.gc, i64 noundef %i.xa) #32
  br label %.noexc315

.noexc315:                                        ; preds = %bb.dj, %_ZNSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i570
  store ptr %i.xi, ptr %3, align 8, !tbaa !240
  store ptr %i.yd, ptr %i.dq, align 8, !tbaa !237
  %i.ye = getelementptr inbounds nuw [8 x i8], ptr %i.xi, i64 %i.xg ; 11 uses
  store ptr %i.ye, ptr %i.dr, align 8, !tbaa !241
  br label %_ZNSt10unique_ptrI36common_speculative_impl_draft_simpleSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI33common_speculative_impl_ngram_modSt14default_deleteIS0_EED2Ev.exit326.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i555, %bb.di
  %lpad.loopexit.split-lp1392 = landingpad { ptr, i32 }
          cleanup
  %i.yf = load ptr, ptr %i.wt, align 8, !tbaa !243
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 8
  %i.yh = load ptr, ptr %i.yg, align 8
  call void %i.yh(ptr noundef nonnull align 8 dereferenceable(136) %i.wt) #31, !inline_history !580
  br label %.body

bb.dk:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.yi = getelementptr inbounds nuw i8, ptr %.sroa.0674.0844, i64 8
  invoke void @_ZN35common_speculative_impl_ngram_cacheC2ERK25common_params_speculativejtRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_bb(ptr noundef nonnull align 8 dereferenceable(232) %7, ptr noundef nonnull align 8 dereferenceable(1480) %i.yi, i32 noundef %1, i16 noundef zeroext 8, ptr noundef nonnull align 8 dereferenceable(32) %i.fg, ptr noundef nonnull align 8 dereferenceable(32) %i.fh, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %_ZL24create_state_ngram_cacheRK25common_speculative_configjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit unwind label %bb.ds

_ZL24create_state_ngram_cacheRK25common_speculative_configjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit: ; preds = %bb.dk
  %i.yj = invoke noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #34
          to label %.noexc328 unwind label %bb.dt ; 6 uses

.noexc328:                                        ; preds = %_ZL24create_state_ngram_cacheRK25common_speculative_configjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit
  invoke void @_ZN35common_speculative_impl_ngram_cacheC2ERKS_(ptr noundef nonnull align 8 dereferenceable(232) %i.yj, ptr noundef nonnull align 8 dereferenceable(232) %7)
          to label %_ZSt11make_uniqueI35common_speculative_impl_ngram_cacheJRS0_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.dl, !noalias !745

bb.dl:                                            ; preds = %.noexc328
  %i.yk = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.yj, i64 noundef 232) #32, !noalias !745
  br label %.body329

_ZSt11make_uniqueI35common_speculative_impl_ngram_cacheJRS0_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %.noexc328
  %.not.i.i331 = icmp eq ptr %i.ge, %i.ft
  br i1 %.not.i.i331, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %_ZSt11make_uniqueI35common_speculative_impl_ngram_cacheJRS0_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.yl = ptrtoint ptr %i.yj to i64
  store i64 %i.yl, ptr %i.ge, align 8, !tbaa !98
  %i.ym = getelementptr inbounds nuw i8, ptr %i.ge, i64 8 ; 2 uses
  store ptr %i.ym, ptr %i.dq, align 8, !tbaa !237
  br label %_ZNSt10unique_ptrI35common_speculative_impl_ngram_cacheSt14default_deleteIS0_EED2Ev.exit

bb.dn:                                            ; preds = %_ZSt11make_uniqueI35common_speculative_impl_ngram_cacheJRS0_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.yn = ptrtoint ptr %i.ft to i64               ; 2 uses
  %i.yo = ptrtoint ptr %i.gc to i64               ; 2 uses
  %i.yp = sub i64 %i.yn, %i.yo                    ; 4 uses
  %i.yq = icmp eq i64 %i.yp, 9223372036854775800
  br i1 %i.yq, label %bb.do, label %_ZNKSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i576

bb.do:                                            ; preds = %bb.dn
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #33
          to label %.noexc594 unwind label %_ZNSt10unique_ptrI35common_speculative_impl_ngram_cacheSt14default_deleteIS0_EED2Ev.exit344.loopexit.split-lp.loopexit.split-lp

.noexc594:                                        ; preds = %bb.do
  unreachable

_ZNKSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i576: ; preds = %bb.dn
  %i.yr = ashr exact i64 %i.yp, 3                 ; 3 uses
  %.sroa.speculated.i.i577 = call i64 @llvm.umax.i64(i64 %i.yr, i64 1)
  %i.ys = add nsw i64 %.sroa.speculated.i.i577, %i.yr ; 2 uses
  %i.yt = icmp ult i64 %i.ys, %i.yr
  %i.yu = call i64 @llvm.umin.i64(i64 %i.ys, i64 1152921504606846975)
  %i.yv = select i1 %i.yt, i64 1152921504606846975, i64 %i.yu ; 3 uses
  %.not.i.i578 = icmp ne i64 %i.yv, 0
  call void @llvm.assume(i1 %.not.i.i578)
  %i.yw = shl nuw nsw i64 %i.yv, 3
  %i.yx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yw) #34
          to label %.noexc595 unwind label %_ZNSt10unique_ptrI35common_speculative_impl_ngram_cacheSt14default_deleteIS0_EED2Ev.exit344.loopexit.split-lp.loopexit.split-lp ; 11 uses

.noexc595:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i576
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 %i.yp
  %i.yz = ptrtoint ptr %i.yj to i64
  store i64 %i.yz, ptr %i.yy, align 8, !tbaa !98
  %.not10.i.i.i.i579 = icmp eq ptr %i.gc, %i.ft
  br i1 %.not10.i.i.i.i579, label %_ZNSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i591, label %.lr.ph.i.i.i.i580.preheader

.lr.ph.i.i.i.i580.preheader:                      ; preds = %.noexc595
  %i.za = add i64 %i.yn, -8
  %i.zb = sub i64 %i.za, %i.yo                    ; 3 uses
  %i.zc = lshr i64 %i.zb, 3
  %i.zd = add nuw nsw i64 %i.zc, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.zb, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i580.preheader1378, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i580.preheader
  %i.ze = and i64 %i.zb, -8
  %i.zf = add i64 %i.ze, 8                        ; 2 uses
  %i.zg = getelementptr i8, ptr %i.yx, i64 %i.zf
  %i.zh = getelementptr i8, ptr %i.gc, i64 %i.zf
  %bound0 = icmp ult ptr %i.yx, %i.zh
  %bound1 = icmp ult ptr %i.gc, %i.zg
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i580.preheader1378, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.zd, 4611686018427387900     ; 3 uses
  %i.zi = shl i64 %n.vec, 3                       ; 2 uses
  %i.zj = getelementptr i8, ptr %i.yx, i64 %i.zi  ; 2 uses
  %i.zk = getelementptr i8, ptr %i.gc, i64 %i.zi
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.zl = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.yx, i64 %i.zl ; 2 uses
  %next.gep1140 = getelementptr i8, ptr %i.gc, i64 %i.zl ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !746)
  call void @llvm.experimental.noalias.scope.decl(metadata !747)
  %i.zm = getelementptr i8, ptr %next.gep1140, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep1140, align 8, !tbaa !98, !alias.scope !748
  %wide.load1141 = load <2 x i64>, ptr %i.zm, align 8, !tbaa !98, !alias.scope !748
  %i.zn = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !98, !alias.scope !749, !noalias !750
  store <2 x i64> %wide.load1141, ptr %i.zn, align 8, !tbaa !98, !alias.scope !749, !noalias !750
  %22 = getelementptr i8, ptr %next.gep1140, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1140, align 8, !tbaa !98, !alias.scope !748
  store <2 x ptr> splat (ptr null), ptr %22, align 8, !tbaa !98, !alias.scope !748
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.zo = icmp eq i64 %index.next, %n.vec
  br i1 %i.zo, label %middle.block, label %vector.body, !llvm.loop !675

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.zd, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i591, label %.lr.ph.i.i.i.i580.preheader1378

.lr.ph.i.i.i.i580.preheader1378:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i580.preheader, %middle.block
  %.012.i.i.i.i581.ph = phi ptr [ %i.yx, %vector.memcheck ], [ %i.yx, %.lr.ph.i.i.i.i580.preheader ], [ %i.zj, %middle.block ]
  %.0911.i.i.i.i582.ph = phi ptr [ %i.gc, %vector.memcheck ], [ %i.gc, %.lr.ph.i.i.i.i580.preheader ], [ %i.zk, %middle.block ]
  br label %.lr.ph.i.i.i.i580

.lr.ph.i.i.i.i580:                                ; preds = %.lr.ph.i.i.i.i580.preheader1378, %.lr.ph.i.i.i.i580
  %.012.i.i.i.i581 = phi ptr [ %i.zr, %.lr.ph.i.i.i.i580 ], [ %.012.i.i.i.i581.ph, %.lr.ph.i.i.i.i580.preheader1378 ] ; 2 uses
  %.0911.i.i.i.i582 = phi ptr [ %i.zq, %.lr.ph.i.i.i.i580 ], [ %.0911.i.i.i.i582.ph, %.lr.ph.i.i.i.i580.preheader1378 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !746)
  call void @llvm.experimental.noalias.scope.decl(metadata !747)
  %i.zp = load i64, ptr %.0911.i.i.i.i582, align 8, !tbaa !98, !alias.scope !747
  store i64 %i.zp, ptr %.012.i.i.i.i581, align 8, !tbaa !98, !alias.scope !746
  store ptr null, ptr %.0911.i.i.i.i582, align 8, !tbaa !98, !alias.scope !747
  %i.zq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i582, i64 8 ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i581, i64 8 ; 2 uses
  %.not.i.i.i.i583 = icmp eq ptr %i.zq, %i.ft
  br i1 %.not.i.i.i.i583, label %_ZNSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i591, label %.lr.ph.i.i.i.i580, !llvm.loop !676

_ZNSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i591: ; preds = %.lr.ph.i.i.i.i580, %middle.block, %.noexc595
  %.0.lcssa.i.i.i.i585 = phi ptr [ %i.yx, %.noexc595 ], [ %i.zj, %middle.block ], [ %i.zr, %.lr.ph.i.i.i.i580 ]
  %i.zs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i585, i64 8 ; 2 uses
  %.not.i23.i593 = icmp eq ptr %i.gc, null
  br i1 %.not.i23.i593, label %.noexc332, label %bb.dp

bb.dp:                                            ; preds = %_ZNSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i591
  call void @_ZdlPvm(ptr noundef nonnull %i.gc, i64 noundef %i.yp) #32
  br label %.noexc332

.noexc332:                                        ; preds = %bb.dp, %_ZNSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i591
  store ptr %i.yx, ptr %3, align 8, !tbaa !240
  store ptr %i.zs, ptr %i.dq, align 8, !tbaa !237
  %i.zt = getelementptr inbounds nuw [8 x i8], ptr %i.yx, i64 %i.yv ; 2 uses
  store ptr %i.zt, ptr %i.dr, align 8, !tbaa !241
  br label %_ZNSt10unique_ptrI35common_speculative_impl_ngram_cacheSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI35common_speculative_impl_ngram_cacheSt14default_deleteIS0_EED2Ev.exit: ; preds = %.noexc332, %bb.dm
  %i.zu = phi ptr [ %i.zt, %.noexc332 ], [ %i.ft, %bb.dm ] ; 10 uses
  %i.zv = phi ptr [ %i.yx, %.noexc332 ], [ %i.gc, %bb.dm ]
  %i.zw = phi ptr [ %i.zs, %.noexc332 ], [ %i.ym, %bb.dm ]
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV35common_speculative_impl_ngram_cache, i64 16), ptr %7, align 8, !tbaa !243
  %i.zx = load ptr, ptr %i.fi, align 8, !tbaa !266 ; 3 uses
  %i.zy = load ptr, ptr %i.fj, align 8, !tbaa !267 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.zx, %i.zy
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN35common_speculative_impl_ngram_cache8seq_infoES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt10unique_ptrI35common_speculative_impl_ngram_cacheSt14default_deleteIS0_EED2Ev.exit, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.aac, %.lr.ph.i.i.i.i ], [ %i.zx, %_ZNSt10unique_ptrI35common_speculative_impl_ngram_cacheSt14default_deleteIS0_EED2Ev.exit ] ; 4 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 120
  call void @_ZNSt10_HashtableI12common_ngramSt4pairIKS0_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS1_IKiiEEEESaISC_ENSt8__detail10_Select1stES6_IS0_E26common_ngram_hash_functionNSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.zz) #31, !inline_history !751
  %i.aaa = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64
  call void @_ZNSt10_HashtableI12common_ngramSt4pairIKS0_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS1_IKiiEEEESaISC_ENSt8__detail10_Select1stES6_IS0_E26common_ngram_hash_functionNSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.aaa) #31, !inline_history !751
  %i.aab = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  call void @_ZNSt10_HashtableI12common_ngramSt4pairIKS0_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS1_IKiiEEEESaISC_ENSt8__detail10_Select1stES6_IS0_E26common_ngram_hash_functionNSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.aab) #31, !inline_history !751
  %i.aac = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 176 ; 2 uses
  %.not.i.i.i.i338 = icmp eq ptr %i.aac, %i.zy
  br i1 %.not.i.i.i.i338, label %_ZSt8_DestroyIPN35common_speculative_impl_ngram_cache8seq_infoES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !7

_ZSt8_DestroyIPN35common_speculative_impl_ngram_cache8seq_infoES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.fi, align 8, !tbaa !266
  br label %_ZSt8_DestroyIPN35common_speculative_impl_ngram_cache8seq_infoES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN35common_speculative_impl_ngram_cache8seq_infoES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN35common_speculative_impl_ngram_cache8seq_infoES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt10unique_ptrI35common_speculative_impl_ngram_cacheSt14default_deleteIS0_EED2Ev.exit
  %i.aad = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN35common_speculative_impl_ngram_cache8seq_infoES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.zx, %_ZNSt10unique_ptrI35common_speculative_impl_ngram_cacheSt14default_deleteIS0_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.aad, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN35common_speculative_impl_ngram_cache8seq_infoESaIS1_EED2Ev.exit.i, label %bb.dq

bb.dq:                                            ; preds = %_ZSt8_DestroyIPN35common_speculative_impl_ngram_cache8seq_infoES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.aae = load ptr, ptr %i.fk, align 8, !tbaa !268
  %i.aaf = ptrtoint ptr %i.aae to i64
  %i.aag = ptrtoint ptr %i.aad to i64
  %i.aah = sub i64 %i.aaf, %i.aag
  call void @_ZdlPvm(ptr noundef nonnull %i.aad, i64 noundef %i.aah) #32, !inline_history !751
  br label %_ZNSt6vectorIN35common_speculative_impl_ngram_cache8seq_infoESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN35common_speculative_impl_ngram_cache8seq_infoESaIS1_EED2Ev.exit.i: ; preds = %bb.dq, %_ZSt8_DestroyIPN35common_speculative_impl_ngram_cache8seq_infoES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.aai = load ptr, ptr %i.fm, align 8, !tbaa !43 ; 2 uses
  %i.aaj = icmp eq ptr %i.aai, %i.fn
  br i1 %i.aaj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN35common_speculative_impl_ngram_cache8seq_infoESaIS1_EED2Ev.exit.i
  %i.aak = load i64, ptr %i.fn, align 8, !tbaa !37
  %i.aal = add i64 %i.aak, 1
  call void @_ZdlPvm(ptr noundef %i.aai, i64 noundef %i.aal) #32, !inline_history !751
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt6vectorIN35common_speculative_impl_ngram_cache8seq_infoESaIS1_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.aam = load ptr, ptr %i.fl, align 8, !tbaa !43 ; 2 uses
  %i.aan = icmp eq ptr %i.aam, %i.fo
  br i1 %i.aan, label %_ZN37common_params_speculative_ngram_cacheD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.aao = load i64, ptr %i.fo, align 8, !tbaa !37
  %i.aap = add i64 %i.aao, 1
  call void @_ZdlPvm(ptr noundef %i.aam, i64 noundef %i.aap) #32, !inline_history !751
  br label %_ZN37common_params_speculative_ngram_cacheD2Ev.exit.i

_ZN37common_params_speculative_ngram_cacheD2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV23common_speculative_impl, i64 16), ptr %7, align 8, !tbaa !243
  %i.aaq = load ptr, ptr %i.fp, align 8, !tbaa !195 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aaq, null
  br i1 %.not.i.i.i.i.i, label %_ZN35common_speculative_impl_ngram_cacheD2Ev.exit, label %bb.dr

bb.dr:                                            ; preds = %_ZN37common_params_speculative_ngram_cacheD2Ev.exit.i
  %i.aar = load ptr, ptr %i.fq, align 8, !tbaa !196
  %i.aas = ptrtoint ptr %i.aar to i64
  %i.aat = ptrtoint ptr %i.aaq to i64
  %i.aau = sub i64 %i.aas, %i.aat
  call void @_ZdlPvm(ptr noundef nonnull %i.aaq, i64 noundef %i.aau) #32, !inline_history !752
  br label %_ZN35common_speculative_impl_ngram_cacheD2Ev.exit

_ZN35common_speculative_impl_ngram_cacheD2Ev.exit: ; preds = %_ZN37common_params_speculative_ngram_cacheD2Ev.exit.i, %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %_ZNSt10unique_ptrI36common_speculative_impl_draft_simpleSt14default_deleteIS0_EED2Ev.exit

bb.ds:                                            ; preds = %bb.dk
  %i.aav = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

bb.dt:                                            ; preds = %_ZL24create_state_ngram_cacheRK25common_speculative_configjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit
  %i.aaw = landingpad { ptr, i32 }
          cleanup
  br label %.body329

_ZNSt10unique_ptrI35common_speculative_impl_ngram_cacheSt14default_deleteIS0_EED2Ev.exit344.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorISt10unique_ptrI23common_speculative_implSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i576, %bb.do
  %lpad.loopexit.split-lp1419 = landingpad { ptr, i32 }
          cleanup
  %i.aax = load ptr, ptr %i.yj, align 8, !tbaa !243
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aax, i64 8
  %i.aaz = load ptr, ptr %i.aay, align 8
  call void %i.aaz(ptr noundef nonnull align 8 dereferenceable(136) %i.yj) #31, !inline_history !580
  br label %.body329

.body329:                                         ; preds = %bb.dt, %bb.dl, %_ZNSt10unique_ptrI35common_speculative_impl_ngram_cacheSt14default_deleteIS0_EED2Ev.exit344.loopexit.split-lp.loopexit.split-lp
  %.pn116 = phi { ptr, i32 } [ %lpad.loopexit.split-lp1419, %_ZNSt10unique_ptrI35common_speculative_impl_ngram_cacheSt14default_deleteIS0_EED2Ev.exit344.loopexit.split-lp.loopexit.split-lp ], [ %i.aaw, %bb.dt ], [ %i.yk, %bb.dl ]
  call void @_ZN35common_speculative_impl_ngram_cacheD2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(232) %7) #31
  br label %bb.du

bb.du:                                            ; preds = %.body329, %bb.ds
  %.pn116.pn = phi { ptr, i32 } [ %.pn116, %.body329 ], [ %i.aav, %bb.ds ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %.body

_ZNSt10unique_ptrI36common_speculative_impl_draft_simpleSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.dg, %.noexc315, %bb.bs, %.noexc233, %bb.bm, %.noexc217, %bb.bg, %.noexc201, %bb.ba, %.noexc185, %bb.au, %.noexc172, %bb.ar, %_ZN35common_speculative_impl_ngram_cacheD2Ev.exit, %_ZN16common_ngram_mapD2Ev.exit304, %_ZN16common_ngram_mapD2Ev.exit279, %_ZN16common_ngram_mapD2Ev.exit
  %i.aba = phi ptr [ %i.ft, %bb.dg ], [ %i.ye, %.noexc315 ], [ %i.ft, %bb.bs ], [ %i.nz, %.noexc233 ], [ %i.ft, %bb.bm ], [ %i.mk, %.noexc217 ], [ %i.ft, %bb.bg ], [ %i.kv, %.noexc201 ], [ %i.ft, %bb.ba ], [ %i.jg, %.noexc185 ], [ %i.ft, %bb.au ], [ %i.hr, %.noexc172 ], [ %i.ft, %bb.ar ], [ %i.zu, %_ZN35common_speculative_impl_ngram_cacheD2Ev.exit ], [ %i.vt, %_ZN16common_ngram_mapD2Ev.exit304 ], [ %i.ta, %_ZN16common_ngram_mapD2Ev.exit279 ], [ %i.qv, %_ZN16common_ngram_mapD2Ev.exit ] ; 3 uses
  %i.abb = phi ptr [ %i.fu, %bb.dg ], [ %i.ye, %.noexc315 ], [ %i.fu, %bb.bs ], [ %i.nz, %.noexc233 ], [ %i.fu, %bb.bm ], [ %i.mk, %.noexc217 ], [ %i.fu, %bb.bg ], [ %i.kv, %.noexc201 ], [ %i.fu, %bb.ba ], [ %i.jg, %.noexc185 ], [ %i.fu, %bb.au ], [ %i.hr, %.noexc172 ], [ %i.fu, %bb.ar ], [ %i.zu, %_ZN35common_speculative_impl_ngram_cacheD2Ev.exit ], [ %i.vu, %_ZN16common_ngram_mapD2Ev.exit304 ], [ %i.tb, %_ZN16common_ngram_mapD2Ev.exit279 ], [ %i.qu, %_ZN16common_ngram_mapD2Ev.exit ]
  %i.abc = phi ptr [ %i.fv, %bb.dg ], [ %i.ye, %.noexc315 ], [ %i.fv, %bb.bs ], [ %i.nz, %.noexc233 ], [ %i.fv, %bb.bm ], [ %i.mk, %.noexc217 ], [ %i.fv, %bb.bg ], [ %i.kv, %.noexc201 ], [ %i.fv, %bb.ba ], [ %i.jg, %.noexc185 ], [ %i.fu, %bb.au ], [ %i.hr, %.noexc172 ], [ %i.fv, %bb.ar ], [ %i.zu, %_ZN35common_speculative_impl_ngram_cacheD2Ev.exit ], [ %i.vv, %_ZN16common_ngram_mapD2Ev.exit304 ], [ %i.tc, %_ZN16common_ngram_mapD2Ev.exit279 ], [ %i.qt, %_ZN16common_ngram_mapD2Ev.exit ]
  %i.abd = phi ptr [ %i.fw, %bb.dg ], [ %i.ye, %.noexc315 ], [ %i.fw, %bb.bs ], [ %i.nz, %.noexc233 ], [ %i.fw, %bb.bm ], [ %i.mk, %.noexc217 ], [ %i.fw, %bb.bg ], [ %i.kv, %.noexc201 ], [ %i.fv, %bb.ba ], [ %i.jg, %.noexc185 ], [ %i.fu, %bb.au ], [ %i.hr, %.noexc172 ], [ %i.fw, %bb.ar ], [ %i.zu, %_ZN35common_speculative_impl_ngram_cacheD2Ev.exit ], [ %i.vw, %_ZN16common_ngram_mapD2Ev.exit304 ], [ %i.td, %_ZN16common_ngram_mapD2Ev.exit279 ], [ %i.qs, %_ZN16common_ngram_mapD2Ev.exit ]
  %i.abe = phi ptr [ %i.fx, %bb.dg ], [ %i.ye, %.noexc315 ], [ %i.fx, %bb.bs ], [ %i.nz, %.noexc233 ], [ %i.fx, %bb.bm ], [ %i.mk, %.noexc217 ], [ %i.fw, %bb.bg ], [ %i.kv, %.noexc201 ], [ %i.fv, %bb.ba ], [ %i.jg, %.noexc185 ], [ %i.fu, %bb.au ], [ %i.hr, %.noexc172 ], [ %i.fx, %bb.ar ], [ %i.zu, %_ZN35common_speculative_impl_ngram_cacheD2Ev.exit ], [ %i.vx, %_ZN16common_ngram_mapD2Ev.exit304 ], [ %i.te, %_ZN16common_ngram_mapD2Ev.exit279 ], [ %i.qr, %_ZN16common_ngram_mapD2Ev.exit ]
  %i.abf = phi ptr [ %i.fy, %bb.dg ], [ %i.ye, %.noexc315 ], [ %i.fy, %bb.bs ], [ %i.nz, %.noexc233 ], [ %i.fx, %bb.bm ], [ %i.mk, %.noexc217 ], [ %i.fw, %bb.bg ], [ %i.kv, %.noexc201 ], [ %i.fv, %bb.ba ], [ %i.jg, %.noexc185 ], [ %i.fu, %bb.au ], [ %i.hr, %.noexc172 ], [ %i.fy, %bb.ar ], [ %i.zu, %_ZN35common_speculative_impl_ngram_cacheD2Ev.exit ], [ %i.vy, %_ZN16common_ngram_mapD2Ev.exit304 ], [ %i.tf, %_ZN16common_ngram_mapD2Ev.exit279 ], [ %i.qq, %_ZN16common_ngram_mapD2Ev.exit ]
  %i.abg = phi ptr [ %i.fz, %bb.dg ], [ %i.ye, %.noexc315 ], [ %i.fy, %bb.bs ], [ %i.nz, %.noexc233 ], [ %i.fx, %bb.bm ], [ %i.mk, %.noexc217 ], [ %i.fw, %bb.bg ], [ %i.kv, %.noexc201 ], [ %i.fv, %bb.ba ], [ %i.jg, %.noexc185 ], [ %i.fu, %bb.au ], [ %i.hr, %.noexc172 ], [ %i.fz, %bb.ar ], [ %i.zu, %_ZN35common_speculative_impl_ngram_cacheD2Ev.exit ], [ %i.vz, %_ZN16common_ngram_mapD2Ev.exit304 ], [ %i.tg, %_ZN16common_ngram_mapD2Ev.exit279 ], [ %i.qp, %_ZN16common_ngram_mapD2Ev.exit ]
  %i.abh = phi ptr [ %i.ga, %bb.dg ], [ %i.ye, %.noexc315 ], [ %i.fy, %bb.bs ], [ %i.nz, %.noexc233 ], [ %i.fx, %bb.bm ], [ %i.mk, %.noexc217 ], [ %i.fw, %bb.bg ], [ %i.kv, %.noexc201 ], [ %i.fv, %bb.ba ], [ %i.jg, %.noexc185 ], [ %i.fu, %bb.au ], [ %i.hr, %.noexc172 ], [ %i.ga, %bb.ar ], [ %i.zu, %_ZN35common_speculative_impl_ngram_cacheD2Ev.exit ], [ %i.wa, %_ZN16common_ngram_mapD2Ev.exit304 ], [ %i.th, %_ZN16common_ngram_mapD2Ev.exit279 ], [ %i.qp, %_ZN16common_ngram_mapD2Ev.exit ]
  %i.abi = phi ptr [ %i.gb, %bb.dg ], [ %i.ye, %.noexc315 ], [ %i.fy, %bb.bs ], [ %i.nz, %.noexc233 ], [ %i.fx, %bb.bm ], [ %i.mk, %.noexc217 ], [ %i.fw, %bb.bg ], [ %i.kv, %.noexc201 ], [ %i.fv, %bb.ba ], [ %i.jg, %.noexc185 ], [ %i.fu, %bb.au ], [ %i.hr, %.noexc172 ], [ %i.gb, %bb.ar ], [ %i.zu, %_ZN35common_speculative_impl_ngram_cacheD2Ev.exit ], [ %i.wb, %_ZN16common_ngram_mapD2Ev.exit304 ], [ %i.th, %_ZN16common_ngram_mapD2Ev.exit279 ], [ %i.qp, %_ZN16common_ngram_mapD2Ev.exit ]
  %i.abj = phi ptr [ %i.gc, %bb.dg ], [ %i.xi, %.noexc315 ], [ %i.gc, %bb.bs ], [ %i.nd, %.noexc233 ], [ %i.gc, %bb.bm ], [ %i.lo, %.noexc217 ], [ %i.gc, %bb.bg ], [ %i.jz, %.noexc201 ], [ %i.gc, %bb.ba ], [ %i.ik, %.noexc185 ], [ %i.gc, %bb.au ], [ %i.gv, %.noexc172 ], [ %i.gc, %bb.ar ], [ %i.zv, %_ZN35common_speculative_impl_ngram_cacheD2Ev.exit ], [ %i.wc, %_ZN16common_ngram_mapD2Ev.exit304 ], [ %i.ti, %_ZN16common_ngram_mapD2Ev.exit279 ], [ %i.qo, %_ZN16common_ngram_mapD2Ev.exit ]
  %i.abk = phi ptr [ %i.gd, %bb.dg ], [ %i.ye, %.noexc315 ], [ %i.fy, %bb.bs ], [ %i.nz, %.noexc233 ], [ %i.fx, %bb.bm ], [ %i.mk, %.noexc217 ], [ %i.fw, %bb.bg ], [ %i.kv, %.noexc201 ], [ %i.fv, %bb.ba ], [ %i.jg, %.noexc185 ], [ %i.fu, %bb.au ], [ %i.hr, %.noexc172 ], [ %i.gd, %bb.ar ], [ %i.zu, %_ZN35common_speculative_impl_ngram_cacheD2Ev.exit ], [ %i.wb, %_ZN16common_ngram_mapD2Ev.exit304 ], [ %i.th, %_ZN16common_ngram_mapD2Ev.exit279 ], [ %i.qp, %_ZN16common_ngram_mapD2Ev.exit ]
  %i.abl = phi ptr [ %i.wx, %bb.dg ], [ %i.yd, %.noexc315 ], [ %i.ms, %bb.bs ], [ %i.ny, %.noexc233 ], [ %i.ld, %bb.bm ], [ %i.mj, %.noexc217 ], [ %i.jo, %bb.bg ], [ %i.ku, %.noexc201 ], [ %i.hz, %bb.ba ], [ %i.jf, %.noexc185 ], [ %i.gk, %bb.au ], [ %i.hq, %.noexc172 ], [ %i.ge, %bb.ar ], [ %i.zw, %_ZN35common_speculative_impl_ngram_cacheD2Ev.exit ], [ %i.wd, %_ZN16common_ngram_mapD2Ev.exit304 ], [ %i.tj, %_ZN16common_ngram_mapD2Ev.exit279 ], [ %i.qn, %_ZN16common_ngram_mapD2Ev.exit ] ; 5 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %.sroa.0674.0844, i64 1488 ; 2 uses
  %.not759 = icmp eq ptr %i.abm, %i.dp
  br i1 %.not759, label %._crit_edge, label %bb.ar

._crit_edge.thread:                               ; preds = %bb.ap, %._crit_edge
  %i.abn = phi ptr [ %.pre896, %._crit_edge ], [ null, %bb.ap ] ; 5 uses
  %i.abo = phi ptr [ %i.abl, %._crit_edge ], [ null, %bb.ap ] ; 2 uses
  %i.abp = phi ptr [ %i.aba, %._crit_edge ], [ null, %bb.ap ]
  %i.abq = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.dv unwind label %.loopexit.split-lp764.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dv:                                            ; preds = %._crit_edge.thread
  %i.abr = icmp sgt i32 %i.abq, 3
  br i1 %i.abr, label %bb.dw, label %bb.fw

bb.dw:                                            ; preds = %bb.dv
  %i.abs = invoke noundef ptr @_Z15common_log_mainv()
          to label %bb.dx unwind label %.loopexit.split-lp764.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dx:                                            ; preds = %bb.dw
  invoke void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.abs, i32 noundef 2, ptr noundef nonnull @.str.34, i32 noundef 12, ptr noundef nonnull @__func__._Z23common_speculative_initR25common_params_speculativej, ptr noundef nonnull @.str.35)
          to label %bb.fw unwind label %.loopexit.split-lp764.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dy:                                            ; preds = %._crit_edge
  %i.abt = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #34
          to label %bb.dz unwind label %.loopexit.split-lp764.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 20 uses

bb.dz:                                            ; preds = %bb.dy
  %i.abu = zext i32 %1 to i64                     ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.abt, i8 0, i64 24, i1 false)
  %.not.i.i.i.i345 = icmp eq i32 %1, 0            ; 2 uses
  br i1 %.not.i.i.i.i345, label %.loopexit762, label %_ZNSt12_Vector_baseI31common_speculative_draft_paramsSaIS0_EEC2EmRKS1_.exit.i

_ZNSt12_Vector_baseI31common_speculative_draft_paramsSaIS0_EEC2EmRKS1_.exit.i: ; preds = %bb.dz
  %i.abv = shl nuw nsw i64 %i.abu, 5
  %i.abw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.abv) #34
end_hunk_0
begin_hunk_1_@_ZN36common_speculative_impl_draft_simple5draftERSt6vectorI31common_speculative_draft_paramsSaIS1_EE:bb.a

_ZNSt6vectorIiSaIiEED2Ev.exit155:                 ; preds = %bb.av, %bb.au, %bb.at
  %.pn = phi { ptr, i32 } [ %i.gd, %bb.at ], [ %i.ge, %bb.au ], [ %i.ge, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %.loopexit.split-lp

bb.aw:                                            ; preds = %._crit_edge260
  %i.gk = load ptr, ptr %i.b, align 8, !tbaa !229
  %i.gl = invoke i32 @llama_decode(ptr noundef %i.gk, ptr noundef nonnull byval(%struct.llama_batch) align 8 %i.c)
          to label %bb.ax unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ax:                                            ; preds = %bb.aw
  %.not104 = icmp eq i32 %i.gl, 0
  br i1 %.not104, label %bb.bc, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gm = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.az unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.az:                                            ; preds = %bb.ay
  %i.gn = icmp sgt i32 %i.gm, 0
  br i1 %i.gn, label %bb.ba, label %.thread

bb.ba:                                            ; preds = %bb.az
  %i.go = invoke noundef ptr @_Z15common_log_mainv()
          to label %bb.bb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bb:                                            ; preds = %bb.ba
  invoke void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.go, i32 noundef 4, ptr noundef nonnull @.str.93, i32 noundef 12, ptr noundef nonnull @__func__._ZN36common_speculative_impl_draft_simple5draftERSt6vectorI31common_speculative_draft_paramsSaIS1_EE, i32 noundef %.075262, i32 noundef %i.gl)
          to label %.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bc:                                            ; preds = %bb.ax
  %i.gp = add nuw nsw i32 %.075262, 1
  %i.gq = icmp sgt i32 %.3.lcssa, 0
  br i1 %i.gq, label %bb.q, label %.thread

.thread:                                          ; preds = %bb.bc, %._crit_edge260, %.preheader209, %bb.az, %bb.bb
  %i.gr = load ptr, ptr %1, align 8, !tbaa !285   ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !285 ; 2 uses
  %.not202266 = icmp eq ptr %i.gr, %i.gt
  br i1 %.not202266, label %.loopexit, label %.lr.ph268

.lr.ph268:                                        ; preds = %.thread
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 140
  br label %bb.bd

bb.bd:                                            ; preds = %.lr.ph268, %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %.sroa.0160.0267 = phi ptr [ %i.gr, %.lr.ph268 ], [ %i.hj, %_ZNSt6vectorIiSaIiEE5clearEv.exit ] ; 3 uses
  %i.gv = load i8, ptr %.sroa.0160.0267, align 8, !tbaa !286, !range !187, !noundef !188
  %i.gw = trunc nuw i8 %i.gv to i1
  br i1 %i.gw, label %bb.be, label %_ZNSt6vectorIiSaIiEE5clearEv.exit

bb.be:                                            ; preds = %bb.bd
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.0160.0267, i64 24
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !287 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8 ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !221 ; 2 uses
  %i.hb = load ptr, ptr %i.gy, align 8, !tbaa !222 ; 3 uses
  %i.hc = ptrtoint ptr %i.ha to i64
  %i.hd = ptrtoint ptr %i.hb to i64
  %i.he = sub i64 %i.hc, %i.hd
  %i.hf = ashr exact i64 %i.he, 2
  %i.hg = load i32, ptr %i.gu, align 4, !tbaa !372
  %i.hh = sext i32 %i.hg to i64
  %i.hi = icmp uge i64 %i.hf, %i.hh
  %.not.i.i156 = icmp eq ptr %i.ha, %i.hb
  %or.cond201 = or i1 %.not.i.i156, %i.hi
  br i1 %or.cond201, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.be
  store ptr %i.hb, ptr %i.gz, align 8, !tbaa !221
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i, %bb.be, %bb.bd
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.0160.0267, i64 32 ; 2 uses
  %.not202 = icmp eq ptr %i.hj, %i.gt
  br i1 %.not202, label %.loopexit, label %bb.bd

.loopexit:                                        ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit, %.thread, %bb.n, %bb.p
  %.not.i.i157 = icmp eq ptr %.sroa.0181.0336, null
  br i1 %.not.i.i157, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.bf

bb.bf:                                            ; preds = %.loopexit
  %i.hk = ptrtoint ptr %.sroa.17188.0346 to i64
  %i.hl = ptrtoint ptr %.sroa.0181.0336 to i64
  %i.hm = sub i64 %i.hk, %i.hl                    ; 2 uses
  %i.hn = ashr exact i64 %i.hm, 3
  %i.ho = sub nsw i64 0, %i.hn
  %i.hp = getelementptr inbounds [8 x i8], ptr %.sroa.17188.0346, i64 %i.ho
  call void @_ZdlPvm(ptr noundef %i.hp, i64 noundef %i.hm) #32
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %.loopexit, %bb.bf
  ret void

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt6vectorIiSaIiEED2Ev.exit155, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137
  %.pn122.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit155 ], [ %.pn113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137 ], [ %lpad.loopexit.split-lp406, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.not.i.i158 = icmp eq ptr %.sroa.0181.0336, null
  br i1 %.not.i.i158, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit159, label %bb.bg

bb.bg:                                            ; preds = %.loopexit.split-lp.thread, %.thread192, %.loopexit.split-lp
  %.sroa.17188.0340 = phi ptr [ %i.l, %.thread192 ], [ %.sroa.17188.0346, %.loopexit.split-lp ], [ %i.l, %.loopexit.split-lp.thread ] ; 2 uses
  %.sroa.0181.0337 = phi ptr [ %i.j, %.thread192 ], [ %.sroa.0181.0336, %.loopexit.split-lp ], [ %i.j, %.loopexit.split-lp.thread ]
  %.pn122.pn.pn195 = phi { ptr, i32 } [ %.pn122, %.thread192 ], [ %.pn122.pn.pn, %.loopexit.split-lp ], [ %lpad.loopexit274, %.loopexit.split-lp.thread ]
  %i.hq = ptrtoint ptr %.sroa.17188.0340 to i64
  %i.hr = ptrtoint ptr %.sroa.0181.0337 to i64
  %i.hs = sub i64 %i.hq, %i.hr                    ; 2 uses
  %i.ht = ashr exact i64 %i.hs, 3
  %i.hu = sub nsw i64 0, %i.ht
  %i.hv = getelementptr inbounds [8 x i8], ptr %.sroa.17188.0340, i64 %i.hu
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hs) #32
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit159

_ZNSt13_Bvector_baseISaIbEED2Ev.exit159:          ; preds = %bb.bg, %.loopexit.split-lp
  %.pn122.pn.pn.pn = phi { ptr, i32 } [ %.pn122.pn.pn195, %bb.bg ], [ %.pn122.pn.pn, %.loopexit.split-lp ]
  resume { ptr, i32 } %.pn122.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN36common_speculative_impl_draft_simple6acceptEitb(ptr noundef nonnull align 8 dereferenceable(1544) %0, i32 noundef %1, i16 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #1 comdat align 2 {
bb.a:
  ret void
}

declare ptr @ggml_backend_dev_name(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10unique_ptrI14common_sampler22common_sampler_deleterESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !377  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !378    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !384
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPSt10unique_ptrI14common_sampler22common_sampler_deleterEmS3_ET_S5_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPSt10unique_ptrI14common_sampler22common_sampler_deleterEmS3_ET_S5_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = shl nuw nsw i64 %1, 3                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false), !tbaa !900
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !377
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrI14common_sampler22common_sampler_deleterESaIS3_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.54) #33
  unreachable

_ZNKSt6vectorISt10unique_ptrI14common_sampler22common_sampler_deleterESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975) ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #34 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = shl nuw nsw i64 %1, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false), !tbaa !900
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrI14common_sampler22common_sampler_deleterESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10unique_ptrI14common_sampler22common_sampler_deleterESaIS3_EE12_M_check_lenEmPKc.exit
  %i.x = add i64 %i.d, -8
  %i.y = sub i64 %i.x, %i.e                       ; 2 uses
  %i.z = lshr i64 %i.y, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.y, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader43, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.ab = shl i64 %n.vec, 3                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.u, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.c, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ae ; 2 uses
  %next.gep40 = getelementptr i8, ptr %i.c, i64 %i.ae ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !901)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !902)
  %i.af = getelementptr i8, ptr %next.gep40, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep40, align 8, !tbaa !381, !alias.scope !902
  %wide.load41 = load <2 x i64>, ptr %i.af, align 8, !tbaa !381, !alias.scope !902
  %i.ag = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !381, !alias.scope !901
  store <2 x i64> %wide.load41, ptr %i.ag, align 8, !tbaa !381, !alias.scope !901
  %2 = getelementptr i8, ptr %next.gep40, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep40, align 8, !tbaa !381, !alias.scope !902
  store <2 x ptr> splat (ptr null), ptr %2, align 8, !tbaa !381, !alias.scope !902
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !897

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrI14common_sampler22common_sampler_deleterESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i.preheader43

.lr.ph.i.i.i.preheader43:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.u, %.lr.ph.i.i.i.preheader ], [ %i.ac, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader43, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader43 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader43 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !901)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !902)
  %i.ai = load i64, ptr %.0911.i.i.i, align 8, !tbaa !381, !alias.scope !902
  store i64 %i.ai, ptr %.012.i.i.i, align 8, !tbaa !381, !alias.scope !901
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !381, !alias.scope !902
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %.not.i.i.i = icmp eq ptr %i.aj, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrI14common_sampler22common_sampler_deleterESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !898

_ZNSt6vectorISt10unique_ptrI14common_sampler22common_sampler_deleterESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrI14common_sampler22common_sampler_deleterESaIS3_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt10unique_ptrI14common_sampler22common_sampler_deleterESaIS3_EE13_M_deallocateEPS3_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrI14common_sampler22common_sampler_deleterESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %i.al = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.al) #32
  br label %_ZNSt12_Vector_baseISt10unique_ptrI14common_sampler22common_sampler_deleterESaIS3_EE13_M_deallocateEPS3_m.exit37

_ZNSt12_Vector_baseISt10unique_ptrI14common_sampler22common_sampler_deleterESaIS3_EE13_M_deallocateEPS3_m.exit37: ; preds = %_ZNSt6vectorISt10unique_ptrI14common_sampler22common_sampler_deleterESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !378
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %1
  store ptr %i.am, ptr %i.a, align 8, !tbaa !377
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.an, ptr %i.h, align 8, !tbaa !384
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPSt10unique_ptrI14common_sampler22common_sampler_deleterEmS3_ET_S5_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt10unique_ptrI14common_sampler22common_sampler_deleterESaIS3_EE13_M_deallocateEPS3_m.exit37, %bb.a
  ret void
}

declare void @_Z19common_sampler_freeP14common_sampler(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not14 = icmp eq ptr %0, %1
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.016 = phi ptr [ %i.p, %bb.d ], [ %2, %bb.a ]  ; 8 uses
  %.01215 = phi ptr [ %i.o, %bb.d ], [ %0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.016, i64 16 ; 3 uses
  store ptr %i.b, ptr %.016, align 8, !tbaa !34
  %i.c = load ptr, ptr %.01215, align 8, !tbaa !43 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.01215, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !36   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 %i.e, ptr %i.a, align 8, !tbaa !56
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.lr.ph
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.016, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.g, ptr %.016, align 8, !tbaa !43
  %i.h = load i64, ptr %i.a, align 8, !tbaa !56
  store i64 %i.h, ptr %i.b, align 8, !tbaa !37
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %.lr.ph
  %i.i = phi ptr [ %i.g, %.noexc ], [ %i.b, %.lr.ph ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !37
  store i8 %i.j, ptr %i.i, align 1, !tbaa !37
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !56   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.016, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !36
  %i.m = load ptr, ptr %.016, align 8, !tbaa !43
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.o = getelementptr inbounds nuw i8, ptr %.01215, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.016, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.o, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !903

bb.e:                                             ; preds = %.noexc.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = call ptr @__cxa_begin_catch(ptr %i.r) #31 ; 0 uses
  invoke void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %2, ptr noundef nonnull %.016)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #33
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.p, %bb.d ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.t

bb.i:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #30
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

declare ptr @llama_model_get_vocab(ptr noundef) local_unnamed_addr #6

declare i32 @llama_vocab_type(ptr noundef) local_unnamed_addr #6

declare zeroext i1 @llama_vocab_get_add_bos(ptr noundef) local_unnamed_addr #6

declare i32 @llama_vocab_bos(ptr noundef) local_unnamed_addr #6

declare zeroext i1 @llama_vocab_get_add_eos(ptr noundef) local_unnamed_addr #6

declare i32 @llama_vocab_eos(ptr noundef) local_unnamed_addr #6

declare i32 @llama_vocab_n_tokens(ptr noundef) local_unnamed_addr #6

declare ptr @llama_vocab_get_text(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #20

declare void @_Z21common_token_to_pieceB5cxx11PK11llama_vocabib(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #6

declare void @llama_batch_free(ptr noundef byval(%struct.llama_batch) align 8) local_unnamed_addr #6

declare i32 @llama_decode(ptr noundef, ptr noundef byval(%struct.llama_batch) align 8) local_unnamed_addr #6

declare void @_Z18common_batch_clearR11llama_batch(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #6

declare void @_Z20common_sampler_resetP14common_sampler(ptr noundef) local_unnamed_addr #6

declare void @_Z16common_batch_addR11llama_batchiiRKSt6vectorIiSaIiEEb(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) local_unnamed_addr #6

declare noundef i32 @_Z21common_sampler_sampleP14common_samplerP13llama_contextib(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #6

declare noundef ptr @_Z29common_sampler_get_candidatesP14common_samplerb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

declare void @_Z21common_token_to_pieceB5cxx11PK13llama_contextib(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #6

declare void @_Z21common_sampler_acceptP14common_samplerib(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN36common_speculative_impl_draft_eagle3C2ERK25common_params_speculativej(ptr noundef nonnull align 8 dereferenceable(1768) %0, ptr noundef nonnull align 8 dereferenceable(1480) %1, i32 noundef %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %struct.llama_batch, align 8        ; 5 uses
  %7 = alloca %struct.common_params_sampling, align 8 ; 12 uses
  %i.a = alloca [1 x i32], align 4                ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %8 = alloca %"class.std::vector.359", align 8   ; 12 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %9 = alloca %"class.std::vector.359", align 8   ; 9 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !360
end_hunk_1
