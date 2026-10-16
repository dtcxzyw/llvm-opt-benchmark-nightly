Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/extract_cluster?download=true
inline.NumInlined: 417
inline.NumDeleted: 308
begin_hunk_0_@_ZN3gmx15analysismodules12_GLOBAL__N_114ExtractCluster12initAnalysisERKNS_26TrajectoryAnalysisSettingsERKNS_19TopologyInformationE:bb.a
  %i.x = load i64, ptr %i.g, align 8, !tbaa !19
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !55   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %i.z) #19
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i:  ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aa = load ptr, ptr %4, align 8, !tbaa !27    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.i
  br i1 %i.ab, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i
  %i.ac = load i64, ptr %i.i, align 8, !tbaa !19
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #18
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit

_ZNSt10filesystem7__cxx114pathD2Ev.exit:          ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.ae = load ptr, ptr %2, align 8, !tbaa !127
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !128)
  call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.af = load ptr, ptr %3, align 8, !tbaa !27, !noalias !130 ; 3 uses
  %i.ag = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !130 ; 5 uses
  store ptr %i.m, ptr %7, align 8, !tbaa !15, !alias.scope !130
  %i.ah = icmp eq ptr %i.af, null
  %i.ai = icmp ne i64 %i.ag, 0
  %or.cond.i.i.i = and i1 %i.ah, %i.ai
  br i1 %or.cond.i.i.i, label %.noexc.i, label %bb.f

.noexc.i:                                         ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.16) #20
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.f:                                             ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19, !noalias !130
  store i64 %i.ag, ptr %i.a, align 8, !tbaa !56, !noalias !130
  %i.aj = icmp ugt i64 %i.ag, 15
  br i1 %i.aj, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.f
  %i.ak = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc27 unwind label %.loopexit ; 2 uses

.noexc27:                                         ; preds = %.noexc.i.i.i
  store ptr %i.ak, ptr %7, align 8, !tbaa !27, !alias.scope !130
  %i.al = load i64, ptr %i.a, align 8, !tbaa !56, !noalias !130
  store i64 %i.al, ptr %i.m, align 8, !tbaa !19, !alias.scope !130
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc27, %bb.f
  %i.am = phi ptr [ %i.ak, %.noexc27 ], [ %i.m, %bb.f ] ; 2 uses
  switch i64 %i.ag, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.an = load i8, ptr %i.af, align 1, !tbaa !19
  store i8 %i.an, ptr %i.am, align 1, !tbaa !19
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.am, ptr align 1 %i.af, i64 %i.ag, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i.i
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !56, !noalias !130 ; 2 uses
  store i64 %i.ao, ptr %i.n, align 8, !tbaa !18, !alias.scope !130
  %i.ap = load ptr, ptr %7, align 8, !tbaa !27, !alias.scope !130
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  store i8 0, ptr %i.aq, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19, !noalias !130
  %i.ar = load i8, ptr %i.o, align 8, !tbaa !155, !range !25, !noundef !26
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @_ZNK3gmx19TopologyInformation9copyAtomsEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.71") align 8 %8, ptr noundef nonnull align 8 dereferenceable(128) %2)
          to label %bb.l unwind label %bb.x

bb.k:                                             ; preds = %bb.i
  store ptr null, ptr %8, align 8, !tbaa !156
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  invoke void @_ZNK3gmx31OutputRequirementOptionDirector7processEv(ptr dead_on_unwind nonnull writable sret(%"struct.gmx::OutputRequirements") align 4 %9, ptr noundef nonnull align 8 dereferenceable(64) %i.p)
          to label %bb.m unwind label %bb.y

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN3gmx27createTrajectoryFrameWriterEPK10gmx_mtop_tRKNS_9SelectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrI7t_atomsNS_15functor_wrapperISF_XadL_Z21done_and_delete_atomsPSF_EEEEENS_18OutputRequirementsE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.30") align 8 %6, ptr noundef %i.ae, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 %8, ptr noundef nonnull byval(%"struct.gmx::OutputRequirements") align 8 %9)
          to label %bb.n unwind label %bb.y

bb.n:                                             ; preds = %bb.m
  %i.at = load ptr, ptr %i.q, align 8, !tbaa !31  ; 6 uses
  %i.au = load ptr, ptr %i.r, align 8, !tbaa !35
  %.not.i = icmp eq ptr %i.at, %i.au
  br i1 %.not.i, label %bb.o, label %_ZNSt6vectorISt10unique_ptrIN3gmx21TrajectoryFrameWriterESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread

_ZNSt6vectorISt10unique_ptrIN3gmx21TrajectoryFrameWriterESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread: ; preds = %bb.n
  %i.av = load i64, ptr %6, align 8, !tbaa !33
  store i64 %i.av, ptr %i.at, align 8, !tbaa !33
  store ptr null, ptr %6, align 8, !tbaa !33
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.aw, ptr %i.q, align 8, !tbaa !31
  br label %_ZNSt10unique_ptrIN3gmx21TrajectoryFrameWriterESt14default_deleteIS1_EED2Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.ax = load ptr, ptr %i.j, align 8, !tbaa !30  ; 12 uses
  %i.ay = ptrtoint ptr %i.at to i64               ; 3 uses
  %i.az = ptrtoint ptr %i.ax to i64               ; 4 uses
  %i.ba = sub i64 %i.ay, %i.az                    ; 3 uses
  %i.bb = icmp eq i64 %i.ba, 9223372036854775800
  br i1 %i.bb, label %bb.p, label %_ZNKSt6vectorISt10unique_ptrIN3gmx21TrajectoryFrameWriterESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #20
          to label %.noexc47 unwind label %.loopexit.split-lp54

.noexc47:                                         ; preds = %bb.p
  unreachable

_ZNKSt6vectorISt10unique_ptrIN3gmx21TrajectoryFrameWriterESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.o
  %i.bc = ashr exact i64 %i.ba, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.bc, i64 1)
  %i.bd = add nsw i64 %.sroa.speculated.i.i, %i.bc ; 2 uses
  %i.be = icmp ult i64 %i.bd, %i.bc
  %i.bf = call i64 @llvm.umin.i64(i64 %i.bd, i64 1152921504606846975)
  %i.bg = select i1 %i.be, i64 1152921504606846975, i64 %i.bf ; 3 uses
  %.not.i.i = icmp ne i64 %i.bg, 0
  call void @llvm.assume(i1 %.not.i.i)
  %i.bh = shl nuw nsw i64 %i.bg, 3
  %i.bi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #17
          to label %.noexc48 unwind label %.loopexit53 ; 12 uses

.noexc48:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN3gmx21TrajectoryFrameWriterESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.ba
  %i.bk = load i64, ptr %6, align 8, !tbaa !33
  store i64 %i.bk, ptr %i.bj, align 8, !tbaa !33
  store ptr null, ptr %6, align 8, !tbaa !33
  %.not10.i.i.i.i = icmp eq ptr %i.ax, %i.at
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN3gmx21TrajectoryFrameWriterESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %iter.check

iter.check:                                       ; preds = %.noexc48
  %i.bl = add i64 %i.ay, -8
  %i.bm = sub i64 %i.bl, %i.az                    ; 3 uses
  %i.bn = lshr i64 %i.bm, 3
  %i.bo = add nuw nsw i64 %i.bn, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.bm, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %i.bi, i64 8
  %i.bp = add i64 %i.ay, -8
  %i.bq = sub i64 %i.bp, %i.az
  %i.br = and i64 %i.bq, -8                       ; 2 uses
  %scevgep93 = getelementptr i8, ptr %scevgep, i64 %i.br
  %scevgep94 = getelementptr i8, ptr %i.ax, i64 8
  %scevgep95 = getelementptr i8, ptr %scevgep94, i64 %i.br
  %bound0 = icmp ult ptr %i.bi, %scevgep95
  %bound1 = icmp ult ptr %i.ax, %scevgep93
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check96 = icmp ult i64 %i.bm, 120
  br i1 %min.iters.check96, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bs = and i64 %i.bo, 12
  %n.vec = and i64 %i.bo, 4611686018427387888     ; 4 uses
  %i.bt = shl i64 %n.vec, 3                       ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bi, i64 %i.bt  ; 2 uses
  %i.bv = getelementptr i8, ptr %i.ax, i64 %i.bt
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bw = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bi, i64 %i.bw ; 4 uses
  %next.gep97 = getelementptr i8, ptr %i.ax, i64 %i.bw ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !157)
  call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %i.bx = getelementptr i8, ptr %next.gep97, i64 32
  %i.by = getelementptr i8, ptr %next.gep97, i64 64
  %i.bz = getelementptr i8, ptr %next.gep97, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep97, align 8, !tbaa !33, !alias.scope !159, !noalias !157
  %wide.load98 = load <4 x i64>, ptr %i.bx, align 8, !tbaa !33, !alias.scope !159, !noalias !157
  %wide.load99 = load <4 x i64>, ptr %i.by, align 8, !tbaa !33, !alias.scope !159, !noalias !157
  %wide.load100 = load <4 x i64>, ptr %i.bz, align 8, !tbaa !33, !alias.scope !159, !noalias !157
  %i.ca = getelementptr i8, ptr %next.gep, i64 32
  %i.cb = getelementptr i8, ptr %next.gep, i64 64
  %i.cc = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !33, !alias.scope !160, !noalias !159
  store <4 x i64> %wide.load98, ptr %i.ca, align 8, !tbaa !33, !alias.scope !160, !noalias !159
  store <4 x i64> %wide.load99, ptr %i.cb, align 8, !tbaa !33, !alias.scope !160, !noalias !159
  store <4 x i64> %wide.load100, ptr %i.cc, align 8, !tbaa !33, !alias.scope !160, !noalias !159
  %i.cd = getelementptr i8, ptr %next.gep97, i64 32
  %i.ce = getelementptr i8, ptr %next.gep97, i64 64
  %i.cf = getelementptr i8, ptr %next.gep97, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep97, align 8, !tbaa !33, !alias.scope !159, !noalias !157
  store <4 x ptr> splat (ptr null), ptr %i.cd, align 8, !tbaa !33, !alias.scope !159, !noalias !157
  store <4 x ptr> splat (ptr null), ptr %i.ce, align 8, !tbaa !33, !alias.scope !159, !noalias !157
  store <4 x ptr> splat (ptr null), ptr %i.cf, align 8, !tbaa !33, !alias.scope !159, !noalias !157
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cg = icmp eq i64 %index.next, %n.vec
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !123

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bo, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN3gmx21TrajectoryFrameWriterESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bs, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !163

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec102 = and i64 %i.bo, 4611686018427387900  ; 3 uses
  %i.ch = shl i64 %n.vec102, 3                    ; 2 uses
  %i.ci = getelementptr i8, ptr %i.bi, i64 %i.ch  ; 2 uses
  %i.cj = getelementptr i8, ptr %i.ax, i64 %i.ch
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index103 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next107, %vec.epilog.vector.body ] ; 2 uses
  %i.ck = shl i64 %index103, 3                    ; 2 uses
  %next.gep104 = getelementptr i8, ptr %i.bi, i64 %i.ck
  %next.gep105 = getelementptr i8, ptr %i.ax, i64 %i.ck ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !157)
  call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %wide.load106 = load <4 x i64>, ptr %next.gep105, align 8, !tbaa !33, !alias.scope !159, !noalias !157
  store <4 x i64> %wide.load106, ptr %next.gep104, align 8, !tbaa !33, !alias.scope !160, !noalias !159
  store <4 x ptr> splat (ptr null), ptr %next.gep105, align 8, !tbaa !33, !alias.scope !159, !noalias !157
  %index.next107 = add nuw i64 %index103, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next107, %n.vec102
  br i1 %i.cl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !124

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n108 = icmp eq i64 %i.bo, %n.vec102
  br i1 %cmp.n108, label %_ZNSt6vectorISt10unique_ptrIN3gmx21TrajectoryFrameWriterESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.bi, %iter.check ], [ %i.bi, %vector.memcheck ], [ %i.bu, %vec.epilog.iter.check ], [ %i.ci, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ax, %iter.check ], [ %i.ax, %vector.memcheck ], [ %i.bv, %vec.epilog.iter.check ], [ %i.cj, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !157)
  call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %i.cm = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !33, !alias.scope !158, !noalias !157
  store i64 %i.cm, ptr %.012.i.i.i.i, align 8, !tbaa !33, !alias.scope !157, !noalias !158
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !33, !alias.scope !158, !noalias !157
  %i.cn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cn, %i.at
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN3gmx21TrajectoryFrameWriterESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !125

_ZNSt6vectorISt10unique_ptrIN3gmx21TrajectoryFrameWriterESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc48
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bi, %.noexc48 ], [ %i.ci, %vec.epilog.middle.block ], [ %i.bu, %middle.block ], [ %i.co, %.lr.ph.i.i.i.i ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.ax, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN3gmx21TrajectoryFrameWriterESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN3gmx21TrajectoryFrameWriterESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.cq = load ptr, ptr %i.r, align 8, !tbaa !35
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = sub i64 %i.cr, %i.az
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.cs) #18
  br label %_ZNSt6vectorISt10unique_ptrIN3gmx21TrajectoryFrameWriterESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN3gmx21TrajectoryFrameWriterESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN3gmx21TrajectoryFrameWriterESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, %bb.q
  store ptr %i.bi, ptr %i.j, align 8, !tbaa !30
  store ptr %i.cp, ptr %i.q, align 8, !tbaa !31
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bg
  store ptr %i.ct, ptr %i.r, align 8, !tbaa !35
  %.pr = load ptr, ptr %6, align 8, !tbaa !33     ; 2 uses
  %.not.i29 = icmp eq ptr %.pr, null
  br i1 %.not.i29, label %_ZNSt10unique_ptrIN3gmx21TrajectoryFrameWriterESt14default_deleteIS1_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN3gmx21TrajectoryFrameWriterESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit
  call void @_ZNKSt14default_deleteIN3gmx21TrajectoryFrameWriterEEclEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %.pr)
  br label %_ZNSt10unique_ptrIN3gmx21TrajectoryFrameWriterESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx21TrajectoryFrameWriterESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN3gmx21TrajectoryFrameWriterESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread, %_ZNSt6vectorISt10unique_ptrIN3gmx21TrajectoryFrameWriterESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit, %bb.r
  %i.cu = load ptr, ptr %8, align 8, !tbaa !60    ; 2 uses
  %.not.i30 = icmp eq ptr %i.cu, null
  br i1 %.not.i30, label %_ZNSt10unique_ptrI7t_atomsN3gmx15functor_wrapperIS0_XadL_Z21done_and_delete_atomsPS0_EEEEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt10unique_ptrIN3gmx21TrajectoryFrameWriterESt14default_deleteIS1_EED2Ev.exit
  invoke void @_Z21done_and_delete_atomsP7t_atoms(ptr noundef nonnull %i.cu)
          to label %_ZNSt10unique_ptrI7t_atomsN3gmx15functor_wrapperIS0_XadL_Z21done_and_delete_atomsPS0_EEEEED2Ev.exit unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cv = landingpad { ptr, i32 }
          catch ptr null
  %i.cw = extractvalue { ptr, i32 } %i.cv, 0
  call void @__clang_call_terminate(ptr %i.cw) #21
  unreachable

_ZNSt10unique_ptrI7t_atomsN3gmx15functor_wrapperIS0_XadL_Z21done_and_delete_atomsPS0_EEEEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN3gmx21TrajectoryFrameWriterESt14default_deleteIS1_EED2Ev.exit, %bb.s
  %i.cx = load ptr, ptr %7, align 8, !tbaa !27    ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.m
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %_ZNSt10unique_ptrI7t_atomsN3gmx15functor_wrapperIS0_XadL_Z21done_and_delete_atomsPS0_EEEEED2Ev.exit
  %i.cz = load i64, ptr %i.m, align 8, !tbaa !19
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %_ZNSt10unique_ptrI7t_atomsN3gmx15functor_wrapperIS0_XadL_Z21done_and_delete_atomsPS0_EEEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.db = load ptr, ptr %i.s, align 8, !tbaa !55  ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i34, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i35, label %bb.u

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull %i.db) #19
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i35

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i35: ; preds = %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %i.dc = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.t
  br i1 %i.dd, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i35
  %i.de = load i64, ptr %i.t, align 8, !tbaa !19
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.df) #18
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit38

_ZNSt10filesystem7__cxx114pathD2Ev.exit38:        ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.049.071, i64 56 ; 2 uses
  %.not = icmp eq ptr %i.dg, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b

bb.v:                                             ; preds = %bb.b
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

bb.w:                                             ; preds = %bb.c
  %i.di = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dj = load ptr, ptr %5, align 8, !tbaa !27    ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.g
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.w
  %i.dl = load i64, ptr %i.g, align 8, !tbaa !19
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39, %bb.v
  %.pn = phi { ptr, i32 } [ %i.dh, %bb.v ], [ %i.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39 ], [ %i.di, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.ac

.loopexit:                                        ; preds = %.noexc.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

.loopexit.split-lp:                               ; preds = %.noexc.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

bb.x:                                             ; preds = %bb.j
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.y:                                             ; preds = %bb.m, %bb.l
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN3gmx21TrajectoryFrameWriterESt14default_deleteIS1_EED2Ev.exit43

.loopexit53:                                      ; preds = %_ZNKSt6vectorISt10unique_ptrIN3gmx21TrajectoryFrameWriterESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit55 = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.loopexit.split-lp54:                             ; preds = %bb.p
  %lpad.loopexit.split-lp56 = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %.loopexit.split-lp54, %.loopexit53
  %lpad.phi57 = phi { ptr, i32 } [ %lpad.loopexit55, %.loopexit53 ], [ %lpad.loopexit.split-lp56, %.loopexit.split-lp54 ] ; 2 uses
  %i.dp = load ptr, ptr %6, align 8, !tbaa !33    ; 2 uses
  %.not.i42 = icmp eq ptr %i.dp, null
  br i1 %.not.i42, label %_ZNSt10unique_ptrIN3gmx21TrajectoryFrameWriterESt14default_deleteIS1_EED2Ev.exit43, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_ZNKSt14default_deleteIN3gmx21TrajectoryFrameWriterEEclEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %i.dp)
  br label %_ZNSt10unique_ptrIN3gmx21TrajectoryFrameWriterESt14default_deleteIS1_EED2Ev.exit43

_ZNSt10unique_ptrIN3gmx21TrajectoryFrameWriterESt14default_deleteIS1_EED2Ev.exit43: ; preds = %bb.aa, %bb.z, %bb.y
  %.pn20 = phi { ptr, i32 } [ %i.do, %bb.y ], [ %lpad.phi57, %bb.z ], [ %lpad.phi57, %bb.aa ]
  call void @_ZNSt10unique_ptrI7t_atomsN3gmx15functor_wrapperIS0_XadL_Z21done_and_delete_atomsPS0_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #19
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt10unique_ptrIN3gmx21TrajectoryFrameWriterESt14default_deleteIS1_EED2Ev.exit43, %bb.x
  %.pn20.pn = phi { ptr, i32 } [ %i.dn, %bb.x ], [ %.pn20, %_ZNSt10unique_ptrIN3gmx21TrajectoryFrameWriterESt14default_deleteIS1_EED2Ev.exit43 ] ; 2 uses
  %i.dq = load ptr, ptr %7, align 8, !tbaa !27    ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.m
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %bb.ab
  %i.ds = load i64, ptr %i.m, align 8, !tbaa !19
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.dt) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %bb.ab, %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44
  %.pn20.pn.pn = phi { ptr, i32 } [ %.pn20.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %.pn20.pn, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #19
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %.pn20.pn.pn.pn = phi { ptr, i32 } [ %.pn20.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %.pn20.pn.pn.pn
}

declare void @_ZN3gmx24TrajectoryAnalysisModule19initAfterFirstFrameERKNS_26TrajectoryAnalysisSettingsERK10t_trxframe(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 1) unnamed_addr #3

declare void @_ZN3gmx24TrajectoryAnalysisModule11startFramesERKNS_27AnalysisDataParallelOptionsERKNS_19SelectionCollectionE() unnamed_addr

; Function Attrs: mustprogress uwtable
define internal void @_ZN3gmx15analysismodules12_GLOBAL__N_114ExtractCluster12analyzeFrameEiRK10t_trxframeP5t_pbcPNS_28TrajectoryAnalysisModuleDataE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(240) %0, i32 noundef %1, ptr noundef nonnull align 1 %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load i32, ptr %i.a, align 8, !tbaa !47
  %.not = icmp sgt i32 %1, %i.b
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.d = sext i32 %1 to i64
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !52
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.d
  %i.g = load i32, ptr %i.f, align 4, !tbaa !164  ; 2 uses
  %.not11 = icmp eq i32 %i.g, -1
  br i1 %.not11, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !48
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = sdiv exact i64 %i.o, 56
  %i.q = icmp sgt i64 %i.p, %i.h
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !30
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.h
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !33
  tail call void @_ZN3gmx21TrajectoryFrameWriter20prepareAndWriteFrameEiRK10t_trxframe(ptr noundef nonnull align 8 dereferenceable(4272) %i.u, i32 noundef %1, ptr noundef nonnull align 1 %2)
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.v = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %1) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a
  ret void
}

declare void @_ZN3gmx24TrajectoryAnalysisModule12finishFramesEPNS_28TrajectoryAnalysisModuleDataE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZN3gmx15analysismodules12_GLOBAL__N_114ExtractCluster14finishAnalysisEi(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1) unnamed_addr #6 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZN3gmx15analysismodules12_GLOBAL__N_114ExtractCluster11writeOutputEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #19 ; 0 uses
  tail call void @_ZSt9terminatev() #21
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNKSt14default_deleteIN3gmx21TrajectoryFrameWriterEEclEPS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4248
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4264
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !53
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4224
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !166  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4240
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !167
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #18
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit.i: ; preds = %bb.d, %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4200
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !166  ; 3 uses
  %.not.i.i.i2.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i2.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit3.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4216
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !167
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #18
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit3.i

_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit3.i: ; preds = %bb.e, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 4176
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !166  ; 3 uses
  %.not.i.i.i4.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i4.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit5.i.preheader, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit3.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 4192
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !167
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #18
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit5.i.preheader

_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit5.i.preheader: ; preds = %bb.f, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit3.i
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit5.i

_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit5.i: ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit5.i.preheader, %_ZNSt10unique_ptrIN3gmx14IOutputAdapterESt14default_deleteIS1_EED2Ev.exit.i.i.i
  %.idx.i = phi i64 [ %.add.i, %_ZNSt10unique_ptrIN3gmx14IOutputAdapterESt14default_deleteIS1_EED2Ev.exit.i.i.i ], [ 4168, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit5.i.preheader ]
  %.add.i = add nsw i64 %.idx.i, -8               ; 3 uses
  %.ptr7.i = getelementptr inbounds i8, ptr %1, i64 %.add.i
  %i.ad = load ptr, ptr %.ptr7.i, align 8, !tbaa !169 ; 3 uses
  %.not.i.i.i6.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i6.i, label %_ZNSt10unique_ptrIN3gmx14IOutputAdapterESt14default_deleteIS1_EED2Ev.exit.i.i.i, label %_ZNKSt14default_deleteIN3gmx14IOutputAdapterEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN3gmx14IOutputAdapterEEclEPS1_.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit5.i
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !11
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ad) #19, !inline_history !165
  br label %_ZNSt10unique_ptrIN3gmx14IOutputAdapterESt14default_deleteIS1_EED2Ev.exit.i.i.i

_ZNSt10unique_ptrIN3gmx14IOutputAdapterESt14default_deleteIS1_EED2Ev.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN3gmx14IOutputAdapterEEclEPS1_.exit.i.i.i.i, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit5.i
  %i.ah = icmp eq i64 %.add.i, 64
  br i1 %i.ah, label %_ZN3gmx21TrajectoryFrameWriterD2Ev.exit, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit5.i

_ZN3gmx21TrajectoryFrameWriterD2Ev.exit:          ; preds = %_ZNSt10unique_ptrIN3gmx14IOutputAdapterESt14default_deleteIS1_EED2Ev.exit.i.i.i
  tail call void @_ZN3gmx20TrajectoryFileOpenerD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(4272) %1) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 4272) #18
  br label %bb.g

bb.g:                                             ; preds = %_ZN3gmx21TrajectoryFrameWriterD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZN3gmx20TrajectoryFileOpenerD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt22_Optional_payload_baseI13t_cluster_ndxE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(57) %0) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %i.a, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !53
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !48   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !49   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.j, %i.l
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIP10IndexGroupS0_EvT_S2_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i, %_ZSt8_DestroyI10IndexGroupEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.y, %_ZSt8_DestroyI10IndexGroupEvPT_.exit.i.i.i.i ], [ %i.j, %_ZNSt6vectorIiSaIiEED2Ev.exit.i ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !52   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !53
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i.i.i:        ; preds = %bb.c, %.lr.ph.i.i.i.i
  %i.t = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !27 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZSt8_DestroyI10IndexGroupEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i.i.i
  %i.w = load i64, ptr %i.u, align 8, !tbaa !19
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #18
  br label %_ZSt8_DestroyI10IndexGroupEvPT_.exit.i.i.i.i

_ZSt8_DestroyI10IndexGroupEvPT_.exit.i.i.i.i:     ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.y, %i.l
  br i1 %.not.i.i.i1.i, label %_ZSt8_DestroyIP10IndexGroupS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIP10IndexGroupS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyI10IndexGroupEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.i, align 8, !tbaa !48
  br label %_ZSt8_DestroyIP10IndexGroupS0_EvT_S2_RSaIT0_E.exit.i.i

_ZSt8_DestroyIP10IndexGroupS0_EvT_S2_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIP10IndexGroupS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.z = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIP10IndexGroupS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.j, %_ZNSt6vectorIiSaIiEED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i1.i.i, label %_ZN13t_cluster_ndxD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIP10IndexGroupS0_EvT_S2_RSaIT0_E.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !50
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #18
  br label %_ZN13t_cluster_ndxD2Ev.exit

_ZN13t_cluster_ndxD2Ev.exit:                      ; preds = %_ZSt8_DestroyIP10IndexGroupS0_EvT_S2_RSaIT0_E.exit.i.i, %bb.d
  ret void
}

declare void @_ZN3gmx31OutputRequirementOptionDirector11initOptionsEPNS_17IOptionsContainerE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #3

declare void @_ZN3gmx26TrajectoryAnalysisSettings11setHelpTextERKNS_8ArrayRefIKPKcEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare void @_ZN3gmx26TrajectoryAnalysisSettings13setFrameFlagsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

declare void @_Z13cluster_indexP8_IO_FILEPKc(ptr dead_on_unwind writable sret(%struct.t_cluster_ndx) align 8, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN3gmx26concatenateBeforeExtensionERKNSt10filesystem7__cxx114pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::filesystem::__cxx11::path") align 8, ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef zeroext %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !27     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !18   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !15
  %i.f = icmp eq ptr %i.b, null
  %i.g = icmp ne i64 %i.d, 0
  %or.cond.i.i.i = and i1 %i.f, %i.g
  br i1 %or.cond.i.i.i, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.16) #20
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.d, ptr %i.a, align 8, !tbaa !56
  %i.h = icmp ugt i64 %i.d, 15
  br i1 %i.h, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.b
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !27
  %i.j = load i64, ptr %i.a, align 8, !tbaa !56
  store i64 %i.j, ptr %i.e, align 8, !tbaa !19
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.b
  %i.k = phi ptr [ %i.i, %.noexc.i.i.i ], [ %i.e, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.l = load i8, ptr %i.b, align 1, !tbaa !19
  store i8 %i.l, ptr %i.k, align 1, !tbaa !19
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.b, i64 %i.d, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i.i
  %i.m = load i64, ptr %i.a, align 8, !tbaa !56   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !18
  %i.o = load ptr, ptr %0, align 8, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  ret void

bb.h:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

bb.i:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !55   ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull %i.t) #19
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.j, %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.r, %bb.h ], [ %i.s, %bb.i ], [ %i.s, %bb.j ]
  %i.u = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.e
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.w = load i64, ptr %i.e, align 8, !tbaa !19
end_hunk_0
begin_hunk_1_@_ZNSt10unique_ptrI7t_atomsN3gmx15functor_wrapperIS0_XadL_Z21done_and_delete_atomsPS0_EEEEED2Ev:bb.a
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !60     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN3gmx15functor_wrapperI7t_atomsXadL_Z21done_and_delete_atomsPS1_EEEclES2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21done_and_delete_atomsP7t_atoms(ptr noundef nonnull %i.a)
          to label %_ZN3gmx15functor_wrapperI7t_atomsXadL_Z21done_and_delete_atomsPS1_EEEclES2_.exit unwind label %bb.c

_ZN3gmx15functor_wrapperI7t_atomsXadL_Z21done_and_delete_atomsPS1_EEEclES2_.exit: ; preds = %bb.b, %bb.a
  ret void

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #21
  unreachable
}

declare void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

declare void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #11

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

declare void @_Z21done_and_delete_atomsP7t_atoms(ptr noundef) local_unnamed_addr #3

declare void @_ZN3gmx21TrajectoryFrameWriter20prepareAndWriteFrameEiRK10t_trxframe(ptr noundef nonnull align 8 dereferenceable(4272), i32 noundef, ptr noundef nonnull align 1) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { builtin allocsize(0) }
attributes #18 = { builtin nounwind }
attributes #19 = { nounwind }
attributes #20 = { noreturn }
attributes #21 = { noreturn nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !34}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"vtable pointer", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!"long", !6, i64 0}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !14, i64 0, !16, i64 8, !6, i64 16}
!18 = !{!17, !16, i64 8}
!19 = !{!6, !6, i64 0}
!20 = !{!"bool", !6, i64 0}
!21 = !{!"p1 float", !12, i64 0}
!22 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !21, i64 0, !21, i64 8, !21, i64 16}
!23 = !{!"_ZTSSt22_Optional_payload_baseI13t_cluster_ndxE", !6, i64 0, !20, i64 56}
!24 = !{!23, !20, i64 56}
!25 = !{i8 0, i8 2}
!26 = !{}
!27 = !{!17, !13, i64 0}
!28 = !{!"p1 _ZTSSt10unique_ptrIN3gmx21TrajectoryFrameWriterESt14default_deleteIS1_EE", !12, i64 0}
!29 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN3gmx21TrajectoryFrameWriterESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !28, i64 0, !28, i64 8, !28, i64 16}
!30 = !{!29, !28, i64 0}
!31 = !{!29, !28, i64 8}
!32 = !{!"p1 _ZTSN3gmx21TrajectoryFrameWriterE", !12, i64 0}
!33 = !{!32, !32, i64 0}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!29, !28, i64 16}
!36 = !{!"p1 int", !12, i64 0}
!37 = !{!"p1 _ZTS10IndexGroup", !12, i64 0}
!38 = !{!"_ZTSNSt12_Vector_baseI10IndexGroupSaIS0_EE17_Vector_impl_dataE", !37, i64 0, !37, i64 8, !37, i64 16}
!39 = !{!"_ZTSNSt12_Vector_baseI10IndexGroupSaIS0_EE12_Vector_implE", !38, i64 0}
!40 = !{!"_ZTSSt12_Vector_baseI10IndexGroupSaIS0_EE", !39, i64 0}
!41 = !{!"_ZTSSt6vectorI10IndexGroupSaIS0_EE", !40, i64 0}
!42 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !36, i64 0, !36, i64 8, !36, i64 16}
!43 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !42, i64 0}
!44 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !43, i64 0}
!45 = !{!"_ZTSSt6vectorIiSaIiEE", !44, i64 0}
!46 = !{!"_ZTS13t_cluster_ndx", !7, i64 0, !41, i64 8, !45, i64 32}
!47 = !{!46, !7, i64 0}
!48 = !{!38, !37, i64 0}
!49 = !{!38, !37, i64 8}
!50 = !{!38, !37, i64 16}
!51 = !{!37, !37, i64 0}
!52 = !{!42, !36, i64 0}
!53 = !{!42, !36, i64 16}
!54 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !12, i64 0}
!55 = !{!54, !54, i64 0}
!56 = !{!16, !16, i64 0}
!57 = !{!"p1 _ZTS7t_atoms", !12, i64 0}
!58 = !{!"p1 _ZTSN3gmx11BasicVectorIfEE", !12, i64 0}
!59 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE17_Vector_impl_dataE", !58, i64 0, !58, i64 8, !58, i64 16}
!60 = !{!57, !57, i64 0}
!61 = !{!"_ZTSN3gmx17ChangeSettingTypeE", !6, i64 0}
!62 = !{!"float", !6, i64 0}
!63 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !22, i64 0}
!64 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !63, i64 0}
!65 = !{!"_ZTSSt6vectorIfSaIfEE", !64, i64 0}
!66 = !{!"_ZTSN3gmx15ChangeAtomsTypeE", !6, i64 0}
!67 = !{!"_ZTSN3gmx31OutputRequirementOptionDirectorE", !61, i64 0, !61, i64 4, !7, i64 8, !20, i64 12, !62, i64 16, !62, i64 20, !20, i64 24, !20, i64 25, !65, i64 32, !20, i64 56, !66, i64 60}
!68 = !{!67, !61, i64 0}
!69 = !{!67, !61, i64 4}
!70 = !{!67, !7, i64 8}
!71 = !{!67, !20, i64 12}
!72 = !{!67, !66, i64 60}
!73 = !{!"p1 _ZTSN3gmx24TrajectoryAnalysisModuleE", !12, i64 0}
!74 = !{!73, !73, i64 0}
!75 = distinct !{!75, !34}
!76 = !{!22, !21, i64 0}
!77 = !{!22, !21, i64 16}
!78 = distinct !{null}
!79 = distinct !{null}
!80 = !{!"_ZTSN3gmx13FlagsTemplateINS_10OptionFlagEEE", !16, i64 0}
!81 = !{!"p1 bool", !12, i64 0}
!82 = !{!"_ZTSN3gmx14AbstractOptionE", !7, i64 8, !7, i64 12, !13, i64 16, !13, i64 24, !80, i64 32, !81, i64 40}
!83 = !{!82, !7, i64 8}
!84 = !{!82, !7, i64 12}
!85 = !{!82, !13, i64 16}
!86 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0}
!87 = !{!"p1 _ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !12, i64 0}
!88 = !{!"_ZTSN3gmx14OptionTemplateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_14FileNameOptionEEE", !82, i64 0, !86, i64 48, !86, i64 56, !86, i64 64, !36, i64 72, !87, i64 80}
!89 = !{!"_ZTSN3gmx14OptionFileTypeE", !6, i64 0}
!90 = !{!"_ZTSN3gmx14FileNameOptionE", !88, i64 0, !89, i64 88, !7, i64 92, !13, i64 96, !7, i64 104, !20, i64 108, !20, i64 109, !20, i64 110, !20, i64 111, !20, i64 112}
!91 = !{!90, !7, i64 92}
!92 = !{!90, !7, i64 104}
!93 = !{!90, !89, i64 88}
!94 = !{!90, !20, i64 109}
!95 = !{!80, !16, i64 0}
!96 = !{!88, !86, i64 64}
!97 = !{!90, !13, i64 96}
!98 = !{!82, !13, i64 24}
!99 = !{!"p1 _ZTSN3gmx9SelectionE", !12, i64 0}
!100 = !{!"p1 _ZTSSt6vectorIN3gmx9SelectionESaIS1_EE", !12, i64 0}
!101 = !{!"_ZTSN3gmx14OptionTemplateINS_9SelectionENS_15SelectionOptionEEE", !82, i64 0, !99, i64 48, !99, i64 56, !99, i64 64, !36, i64 72, !100, i64 80}
!102 = !{!"_ZTSN3gmx13FlagsTemplateINS_13SelectionFlagEEE", !16, i64 0}
!103 = !{!"_ZTSN3gmx15SelectionOptionE", !101, i64 0, !13, i64 88, !102, i64 96}
!104 = !{!103, !13, i64 88}
!105 = !{!101, !99, i64 64}
!106 = !{!102, !16, i64 0}
!107 = !{!90, !20, i64 110}
!108 = !{!"any p2 pointer", !12, i64 0}
!109 = !{!"p2 omnipotent char", !108, i64 0}
!110 = !{!"_ZTSN3gmx12ArrayRefIterIKPKcEE", !109, i64 0}
!111 = !{!110, !109, i64 0}
!112 = !{!36, !36, i64 0}
!113 = distinct !{!113, i1 false, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!114 = distinct !{!114, !113, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!115 = distinct !{!115, i1 false, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!116 = distinct !{!116, !115, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!117 = distinct !{!117, i1 false, !"_ZSt19__relocate_object_aISt10unique_ptrIN3gmx21TrajectoryFrameWriterESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_"}
!118 = distinct !{!118, !117, !"_ZSt19__relocate_object_aISt10unique_ptrIN3gmx21TrajectoryFrameWriterESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!119 = distinct !{!119, !117, !"_ZSt19__relocate_object_aISt10unique_ptrIN3gmx21TrajectoryFrameWriterESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!120 = distinct !{!120, i1 false, !"LVerDomain"}
!121 = distinct !{!121, !120}
!122 = distinct !{!122, !120}
!123 = distinct !{!123, !34, !161, !162}
!124 = distinct !{!124, !34, !161, !162}
!125 = distinct !{!125, !34, !161}
!126 = !{!"p1 _ZTS10gmx_mtop_t", !12, i64 0}
!127 = !{!126, !126, i64 0}
!128 = !{!114}
!129 = !{!116}
!130 = !{!116, !114}
!131 = !{!"_ZTSSt10_Head_baseILm0EP10gmx_mtop_tLb0EE", !126, i64 0}
!132 = !{!"_ZTSSt11_Tuple_implILm0EJP10gmx_mtop_tSt14default_deleteIS0_EEE", !131, i64 0}
!133 = !{!"_ZTSSt5tupleIJP10gmx_mtop_tSt14default_deleteIS0_EEE", !132, i64 0}
!134 = !{!"_ZTSSt15__uniq_ptr_implI10gmx_mtop_tSt14default_deleteIS0_EE", !133, i64 0}
!135 = !{!"_ZTSSt15__uniq_ptr_dataI10gmx_mtop_tSt14default_deleteIS0_ELb1ELb1EE", !134, i64 0}
!136 = !{!"_ZTSSt10unique_ptrI10gmx_mtop_tSt14default_deleteIS0_EE", !135, i64 0}
!137 = !{!"p1 _ZTS14gmx_localtop_t", !12, i64 0}
!138 = !{!"_ZTSSt10_Head_baseILm0EP14gmx_localtop_tLb0EE", !137, i64 0}
!139 = !{!"_ZTSSt11_Tuple_implILm0EJP14gmx_localtop_tSt14default_deleteIS0_EEE", !138, i64 0}
!140 = !{!"_ZTSSt5tupleIJP14gmx_localtop_tSt14default_deleteIS0_EEE", !139, i64 0}
!141 = !{!"_ZTSSt15__uniq_ptr_implI14gmx_localtop_tSt14default_deleteIS0_EE", !140, i64 0}
!142 = !{!"_ZTSSt15__uniq_ptr_dataI14gmx_localtop_tSt14default_deleteIS0_ELb1ELb1EE", !141, i64 0}
!143 = !{!"_ZTSSt10unique_ptrI14gmx_localtop_tSt14default_deleteIS0_EE", !142, i64 0}
!144 = !{!"_ZTSSt10_Head_baseILm0EP7t_atomsLb0EE", !57, i64 0}
!145 = !{!"_ZTSSt11_Tuple_implILm0EJP7t_atomsN3gmx15functor_wrapperIS0_XadL_Z21done_and_delete_atomsS1_EEEEEE", !144, i64 0}
!146 = !{!"_ZTSSt5tupleIJP7t_atomsN3gmx15functor_wrapperIS0_XadL_Z21done_and_delete_atomsS1_EEEEEE", !145, i64 0}
!147 = !{!"_ZTSSt15__uniq_ptr_implI7t_atomsN3gmx15functor_wrapperIS0_XadL_Z21done_and_delete_atomsPS0_EEEEE", !146, i64 0}
!148 = !{!"_ZTSSt15__uniq_ptr_dataI7t_atomsN3gmx15functor_wrapperIS0_XadL_Z21done_and_delete_atomsPS0_EEEELb1ELb1EE", !147, i64 0}
!149 = !{!"_ZTSSt10unique_ptrI7t_atomsN3gmx15functor_wrapperIS0_XadL_Z21done_and_delete_atomsPS0_EEEEE", !148, i64 0}
!150 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE12_Vector_implE", !59, i64 0}
!151 = !{!"_ZTSSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE", !150, i64 0}
!152 = !{!"_ZTSSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE", !151, i64 0}
!153 = !{!"_ZTS7PbcType", !6, i64 0}
!154 = !{!"_ZTSN3gmx19TopologyInformationE", !136, i64 0, !20, i64 8, !143, i64 16, !149, i64 24, !20, i64 32, !152, i64 40, !152, i64 64, !6, i64 88, !153, i64 124}
!155 = !{!154, !20, i64 8}
!156 = !{!144, !57, i64 0}
!157 = !{!118}
!158 = !{!119}
!159 = !{!119, !121}
!160 = !{!118, !122}
!161 = !{!"llvm.loop.isvectorized", i32 1}
!162 = !{!"llvm.loop.unroll.runtime.disable"}
!163 = !{!"branch_weights", i32 4, i32 12}
!164 = !{!7, !7, i64 0}
!165 = distinct !{null, null, null, null, null}
!166 = !{!59, !58, i64 0}
!167 = !{!59, !58, i64 16}
!168 = !{!"p1 _ZTSN3gmx14IOutputAdapterE", !12, i64 0}
!169 = !{!168, !168, i64 0}
end_hunk_1
