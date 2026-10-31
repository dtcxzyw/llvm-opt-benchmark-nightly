Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/qe_lite_tactic?download=true
inline.NumInlined: 5152
inline.NumDeleted: 1470
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 64
loop-unroll.NumUnrolled: 70
begin_hunk_0_@_ZSt22__merge_without_bufferIPSt4pairIjjElN9__gnu_cxx5__ops15_Iter_comp_iterIN3qel2fm2fm9x_cost_ltEEEEvT_SB_SB_T0_SC_T1_:bb.a

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3qel2fm2fm9x_cost_ltEEC2ERKS6_.exit88: ; preds = %bb.ak, %_ZNK6vectorIcLb0EjE8capacityEv.exit.i.i.i.i.i86, %bb.al, %bb.am, %bb.an
  invoke void @_ZSt22__merge_without_bufferIPSt4pairIjjElN9__gnu_cxx5__ops15_Iter_comp_iterIN3qel2fm2fm9x_cost_ltEEEEvT_SB_SB_T0_SC_T1_(ptr noundef %0, ptr noundef %.0108, ptr noundef %i.fu, i64 noundef %.040, i64 noundef %.039, ptr noundef nonnull align 8 %8)
          to label %bb.ao unwind label %bb.ax

bb.ao:                                            ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3qel2fm2fm9x_cost_ltEEC2ERKS6_.exit88
  %i.gl = load ptr, ptr %8, align 8, !tbaa !359   ; 2 uses
  %.not.i.i.i.i89 = icmp eq ptr %i.gl, null
  br i1 %.not.i.i.i.i89, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3qel2fm2fm9x_cost_ltEED2Ev.exit90, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gm = getelementptr inbounds i8, ptr %i.gl, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.gm)
          to label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3qel2fm2fm9x_cost_ltEED2Ev.exit90 unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gn = landingpad { ptr, i32 }
          catch ptr null
  %i.go = extractvalue { ptr, i32 } %i.gn, 0
  call void @__clang_call_terminate(ptr %i.go) #26
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3qel2fm2fm9x_cost_ltEED2Ev.exit90: ; preds = %bb.ao, %bb.ap
  %i.gp = sub nsw i64 %3, %.040
  %i.gq = sub nsw i64 %4, %.039
  store ptr null, ptr %9, align 8, !tbaa !359
  %i.gr = load ptr, ptr %5, align 8, !tbaa !359   ; 2 uses
  %.not.i.i.i.i91 = icmp eq ptr %i.gr, null
  br i1 %.not.i.i.i.i91, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3qel2fm2fm9x_cost_ltEEC2ERKS6_.exit94, label %_ZNK6vectorIcLb0EjE8capacityEv.exit.i.i.i.i.i92

_ZNK6vectorIcLb0EjE8capacityEv.exit.i.i.i.i.i92:  ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3qel2fm2fm9x_cost_ltEED2Ev.exit90
  %i.gs = getelementptr inbounds i8, ptr %i.gr, i64 -8 ; 2 uses
  %i.gt = load <2 x i32>, ptr %i.gs, align 4, !tbaa !228
  %i.gu = load i32, ptr %i.gs, align 4, !tbaa !228
  %i.gv = zext i32 %i.gu to i64
  %i.gw = add nuw nsw i64 %i.gv, 8
  %i.gx = call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.gw) ; 2 uses
  store <2 x i32> %i.gt, ptr %i.gx, align 4, !tbaa !228
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8 ; 3 uses
  store ptr %i.gy, ptr %9, align 8, !tbaa !359
  %i.gz = load ptr, ptr %5, align 8, !tbaa !359   ; 4 uses
  %i.ha = icmp eq ptr %i.gz, null
  br i1 %i.ha, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3qel2fm2fm9x_cost_ltEEC2ERKS6_.exit94, label %_ZNK6vectorIcLb0EjE3endEv.exit.i.i.i.i.i93

_ZNK6vectorIcLb0EjE3endEv.exit.i.i.i.i.i93:       ; preds = %_ZNK6vectorIcLb0EjE8capacityEv.exit.i.i.i.i.i92
  %i.hb = getelementptr inbounds i8, ptr %i.gz, i64 -4
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !228 ; 3 uses
  %i.hd = icmp ugt i32 %i.hc, 1
  br i1 %i.hd, label %bb.ar, label %bb.as, !prof !280

bb.ar:                                            ; preds = %_ZNK6vectorIcLb0EjE3endEv.exit.i.i.i.i.i93
  %i.he = zext i32 %i.hc to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gy, ptr nonnull align 4 %i.gz, i64 %i.he, i1 false)
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3qel2fm2fm9x_cost_ltEEC2ERKS6_.exit94

bb.as:                                            ; preds = %_ZNK6vectorIcLb0EjE3endEv.exit.i.i.i.i.i93
  %i.hf = icmp eq i32 %i.hc, 1
  br i1 %i.hf, label %bb.at, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3qel2fm2fm9x_cost_ltEEC2ERKS6_.exit94

bb.at:                                            ; preds = %bb.as
  %i.hg = load i8, ptr %i.gz, align 4, !tbaa !372
  store i8 %i.hg, ptr %i.gy, align 4, !tbaa !372
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3qel2fm2fm9x_cost_ltEEC2ERKS6_.exit94

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3qel2fm2fm9x_cost_ltEEC2ERKS6_.exit94: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3qel2fm2fm9x_cost_ltEED2Ev.exit90, %_ZNK6vectorIcLb0EjE8capacityEv.exit.i.i.i.i.i92, %bb.ar, %bb.as, %bb.at
  invoke void @_ZSt22__merge_without_bufferIPSt4pairIjjElN9__gnu_cxx5__ops15_Iter_comp_iterIN3qel2fm2fm9x_cost_ltEEEEvT_SB_SB_T0_SC_T1_(ptr noundef %i.fu, ptr noundef %.0, ptr noundef %2, i64 noundef %i.gp, i64 noundef %i.gq, ptr noundef nonnull align 8 %9)
          to label %bb.au unwind label %bb.ay

bb.au:                                            ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3qel2fm2fm9x_cost_ltEEC2ERKS6_.exit94
  %i.hh = load ptr, ptr %9, align 8, !tbaa !359   ; 2 uses
  %.not.i.i.i.i95 = icmp eq ptr %i.hh, null
  br i1 %.not.i.i.i.i95, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3qel2fm2fm9x_cost_ltEED2Ev.exit96, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hi = getelementptr inbounds i8, ptr %i.hh, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.hi)
          to label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3qel2fm2fm9x_cost_ltEED2Ev.exit96 unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hj = landingpad { ptr, i32 }
          catch ptr null
  %i.hk = extractvalue { ptr, i32 } %i.hj, 0
  call void @__clang_call_terminate(ptr %i.hk) #26
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3qel2fm2fm9x_cost_ltEED2Ev.exit96: ; preds = %bb.d, %bb.e, %bb.av, %bb.au, %.split, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3qel2fm2fm9x_cost_ltEEclIPSt4pairIjjESA_EEbT_T0_.exit.thread, %bb.a
  ret void

bb.ax:                                            ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3qel2fm2fm9x_cost_ltEEC2ERKS6_.exit88
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ay:                                            ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3qel2fm2fm9x_cost_ltEEC2ERKS6_.exit94
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay, %bb.aj, %bb.u
  %.sink = phi ptr [ %8, %bb.ax ], [ %9, %bb.ay ], [ %7, %bb.aj ], [ %6, %bb.u ]
  %.pn46.pn = phi { ptr, i32 } [ %i.hl, %bb.ax ], [ %i.hm, %bb.ay ], [ %i.ft, %bb.aj ], [ %i.cx, %bb.u ]
  call void @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3qel2fm2fm9x_cost_ltEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.sink) #25
  resume { ptr, i32 } %.pn46.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNSt3_V28__rotateIPSt4pairIjjEEET_S4_S4_S4_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIPSt4pairIjjES2_ET0_T_S4_S3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIPSt4pairIjjES2_ET0_T_S4_S3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 3                   ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = ashr exact i64 %i.h, 3                   ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i.preheader, label %bb.d

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.l = add i64 %i.g, -8
  %i.m = sub i64 %i.l, %i.d                       ; 3 uses
  %i.n = lshr i64 %i.m, 3
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check143 = icmp ult i64 %i.m, 56
  br i1 %min.iters.check143, label %.lr.ph.i.preheader167, label %vector.memcheck144

vector.memcheck144:                               ; preds = %.lr.ph.i.preheader
  %i.p = and i64 %i.m, -8
  %i.q = add i64 %i.p, 8                          ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 %i.q
  %i.s = getelementptr i8, ptr %1, i64 %i.q
  %bound0145 = icmp ult ptr %0, %i.s
  %bound1146 = icmp ult ptr %1, %i.r
  %found.conflict147 = and i1 %bound0145, %bound1146
  br i1 %found.conflict147, label %.lr.ph.i.preheader167, label %vector.ph148

vector.ph148:                                     ; preds = %vector.memcheck144
  %n.vec149 = and i64 %i.o, 4611686018427387902   ; 3 uses
  %i.t = shl i64 %n.vec149, 3                     ; 2 uses
  %i.u = getelementptr i8, ptr %1, i64 %i.t
  %i.v = getelementptr i8, ptr %0, i64 %i.t
  br label %vector.body150

vector.body150:                                   ; preds = %vector.body150, %vector.ph148
  %index151 = phi i64 [ 0, %vector.ph148 ], [ %index.next162, %vector.body150 ] ; 2 uses
  %i.w = shl i64 %index151, 3                     ; 2 uses
  %next.gep152 = getelementptr i8, ptr %1, i64 %i.w ; 2 uses
  %next.gep153 = getelementptr i8, ptr %0, i64 %i.w ; 2 uses
  %wide.vec154 = load <4 x i32>, ptr %next.gep153, align 4, !tbaa !228, !alias.scope !903, !noalias !904
  %wide.vec157 = load <4 x i32>, ptr %next.gep152, align 4, !tbaa !228, !alias.scope !904
  store <4 x i32> %wide.vec157, ptr %next.gep153, align 4, !tbaa !228, !alias.scope !903, !noalias !904
  store <4 x i32> %wide.vec154, ptr %next.gep152, align 4, !tbaa !228, !alias.scope !904
  %index.next162 = add nuw i64 %index151, 2       ; 2 uses
  %i.x = icmp eq i64 %index.next162, %n.vec149
  br i1 %i.x, label %middle.block163, label %vector.body150, !llvm.loop !897

middle.block163:                                  ; preds = %vector.body150
  %cmp.n164 = icmp eq i64 %i.o, %n.vec149
  br i1 %cmp.n164, label %_ZSt11swap_rangesIPSt4pairIjjES2_ET0_T_S4_S3_.exit, label %.lr.ph.i.preheader167

.lr.ph.i.preheader167:                            ; preds = %vector.memcheck144, %.lr.ph.i.preheader, %middle.block163
  %.010.i.ph = phi ptr [ %1, %vector.memcheck144 ], [ %1, %.lr.ph.i.preheader ], [ %i.u, %middle.block163 ]
  %.079.i.ph = phi ptr [ %0, %vector.memcheck144 ], [ %0, %.lr.ph.i.preheader ], [ %i.v, %middle.block163 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader167, %.lr.ph.i
  %.010.i = phi ptr [ %i.af, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader167 ] ; 4 uses
  %.079.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %.079.i.ph, %.lr.ph.i.preheader167 ] ; 4 uses
  %i.y = load i32, ptr %.079.i, align 4, !tbaa !228
  %i.z = load i32, ptr %.010.i, align 4, !tbaa !228
  store i32 %i.z, ptr %.079.i, align 4, !tbaa !228
  store i32 %i.y, ptr %.010.i, align 4, !tbaa !228
  %i.aa = getelementptr inbounds nuw i8, ptr %.079.i, i64 4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.010.i, i64 4 ; 2 uses
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !228
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !228
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !228
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !228
  %i.ae = getelementptr inbounds nuw i8, ptr %.079.i, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  %.not.i = icmp eq ptr %i.ae, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIPSt4pairIjjES2_ET0_T_S4_S3_.exit, label %.lr.ph.i, !llvm.loop !898

bb.d:                                             ; preds = %bb.c
  %i.ag = sub i64 %i.c, %i.g
  %i.ah = getelementptr inbounds i8, ptr %0, i64 %i.ag ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.070 = phi i64 [ %i.f, %bb.d ], [ %.070.be, %.backedge ] ; 7 uses
  %.066 = phi i64 [ %i.i, %bb.d ], [ %.066.be, %.backedge ] ; 14 uses
  %.041 = phi ptr [ %0, %bb.d ], [ %.041.be, %.backedge ] ; 16 uses
  %i.ai = sub nsw i64 %.070, %.066                ; 9 uses
  %i.aj = icmp slt i64 %.066, %i.ai
  br i1 %i.aj, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ak = icmp sgt i64 %i.ai, 0
  br i1 %i.ak, label %.lr.ph89.preheader, label %._crit_edge90

.lr.ph89.preheader:                               ; preds = %bb.f
  %i.al = getelementptr [8 x i8], ptr %.041, i64 %.066 ; 7 uses
  %min.iters.check = icmp ult i64 %i.ai, 14
  br i1 %min.iters.check, label %.lr.ph89.preheader168, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph89.preheader
  %scevgep = getelementptr i8, ptr %.041, i64 -4  ; 2 uses
  %i.am = shl i64 %.070, 3                        ; 3 uses
  %i.an = shl i64 %.066, 3                        ; 2 uses
  %i.ao = sub i64 %i.am, %i.an                    ; 2 uses
  %scevgep103 = getelementptr i8, ptr %scevgep, i64 %i.ao ; 3 uses
  %scevgep104 = getelementptr i8, ptr %scevgep, i64 %i.am ; 3 uses
  %scevgep105 = getelementptr i8, ptr %.041, i64 4 ; 4 uses
  %scevgep106 = getelementptr i8, ptr %.041, i64 %i.ao ; 3 uses
  %scevgep107 = getelementptr i8, ptr %scevgep105, i64 %i.an ; 3 uses
  %scevgep108 = getelementptr i8, ptr %.041, i64 %i.am ; 3 uses
  %bound0 = icmp ult ptr %.041, %scevgep104
  %bound1 = icmp ult ptr %i.al, %scevgep103
  %found.conflict = and i1 %bound0, %bound1
  %bound0109 = icmp ult ptr %.041, %scevgep106
  %bound1110 = icmp ult ptr %scevgep105, %scevgep103
  %found.conflict111 = and i1 %bound0109, %bound1110
  %conflict.rdx = or i1 %found.conflict, %found.conflict111
  %bound0112 = icmp ult ptr %.041, %scevgep108
  %bound1113 = icmp ult ptr %scevgep107, %scevgep103
  %found.conflict114 = and i1 %bound0112, %bound1113
  %conflict.rdx115 = or i1 %conflict.rdx, %found.conflict114
  %bound0116 = icmp ult ptr %i.al, %scevgep106
  %bound1117 = icmp ult ptr %scevgep105, %scevgep104
  %found.conflict118 = and i1 %bound0116, %bound1117
  %conflict.rdx119 = or i1 %conflict.rdx115, %found.conflict118
  %bound0120 = icmp ult ptr %i.al, %scevgep108
  %bound1121 = icmp ult ptr %scevgep107, %scevgep104
  %found.conflict122 = and i1 %bound0120, %bound1121
  %conflict.rdx123 = or i1 %conflict.rdx119, %found.conflict122
  %bound0124 = icmp ult ptr %scevgep105, %scevgep108
  %bound1125 = icmp ult ptr %scevgep107, %scevgep106
  %found.conflict126 = and i1 %bound0124, %bound1125
  %conflict.rdx127 = or i1 %conflict.rdx123, %found.conflict126
  br i1 %conflict.rdx127, label %.lr.ph89.preheader168, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ai, 9223372036854775806     ; 4 uses
  %i.ap = shl i64 %n.vec, 3                       ; 2 uses
  %i.aq = getelementptr i8, ptr %i.al, i64 %i.ap
  %i.ar = getelementptr i8, ptr %.041, i64 %i.ap  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.as ; 2 uses
  %next.gep128 = getelementptr i8, ptr %.041, i64 %i.as ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep128, align 4, !tbaa !228
  %wide.vec130 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !228
  store <4 x i32> %wide.vec130, ptr %next.gep128, align 4, !tbaa !228
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !228
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !899

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br i1 %cmp.n, label %._crit_edge90, label %.lr.ph89.preheader168

.lr.ph89.preheader168:                            ; preds = %vector.memcheck, %.lr.ph89.preheader, %middle.block
  %.03987.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph89.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.04086.ph = phi ptr [ %i.al, %vector.memcheck ], [ %i.al, %.lr.ph89.preheader ], [ %i.aq, %middle.block ] ; 5 uses
  %.185.ph = phi ptr [ %.041, %vector.memcheck ], [ %.041, %.lr.ph89.preheader ], [ %i.ar, %middle.block ] ; 5 uses
  %i.au = sub i64 %.070, %.066
  %i.av = xor i64 %.03987.ph, -1
  %i.aw = add i64 %.070, %i.av
  %xtraiter171 = and i64 %i.au, 1
  %lcmp.mod172.not = icmp eq i64 %xtraiter171, 0
  br i1 %lcmp.mod172.not, label %.lr.ph89.prol.loopexit, label %.lr.ph89.prol

.lr.ph89.prol:                                    ; preds = %.lr.ph89.preheader168
  %i.ax = load i32, ptr %.185.ph, align 4, !tbaa !228
  %i.ay = load i32, ptr %.04086.ph, align 4, !tbaa !228
  store i32 %i.ay, ptr %.185.ph, align 4, !tbaa !228
  store i32 %i.ax, ptr %.04086.ph, align 4, !tbaa !228
  %i.az = getelementptr inbounds nuw i8, ptr %.185.ph, i64 4 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.04086.ph, i64 4 ; 2 uses
  %i.bb = load i32, ptr %i.az, align 4, !tbaa !228
  %i.bc = load i32, ptr %i.ba, align 4, !tbaa !228
  store i32 %i.bc, ptr %i.az, align 4, !tbaa !228
  store i32 %i.bb, ptr %i.ba, align 4, !tbaa !228
  %i.bd = getelementptr inbounds nuw i8, ptr %.185.ph, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.04086.ph, i64 8
  %i.bf = or disjoint i64 %.03987.ph, 1
  br label %.lr.ph89.prol.loopexit

.lr.ph89.prol.loopexit:                           ; preds = %.lr.ph89.prol, %.lr.ph89.preheader168
  %.lcssa.unr = phi ptr [ poison, %.lr.ph89.preheader168 ], [ %i.bd, %.lr.ph89.prol ]
  %.03987.unr = phi i64 [ %.03987.ph, %.lr.ph89.preheader168 ], [ %i.bf, %.lr.ph89.prol ]
  %.04086.unr = phi ptr [ %.04086.ph, %.lr.ph89.preheader168 ], [ %i.be, %.lr.ph89.prol ]
  %.185.unr = phi ptr [ %.185.ph, %.lr.ph89.preheader168 ], [ %i.bd, %.lr.ph89.prol ]
  %i.bg = icmp eq i64 %i.aw, %.066
  br i1 %i.bg, label %._crit_edge90, label %.lr.ph89

._crit_edge90:                                    ; preds = %.lr.ph89.prol.loopexit, %.lr.ph89, %middle.block, %bb.f
  %.1.lcssa = phi ptr [ %.041, %bb.f ], [ %i.ar, %middle.block ], [ %.lcssa.unr, %.lr.ph89.prol.loopexit ], [ %i.bw, %.lr.ph89 ]
  %i.bh = srem i64 %.070, %.066                   ; 2 uses
  %.not53 = icmp eq i64 %i.bh, 0
  br i1 %.not53, label %_ZSt11swap_rangesIPSt4pairIjjES2_ET0_T_S4_S3_.exit, label %bb.g

.lr.ph89:                                         ; preds = %.lr.ph89.prol.loopexit, %.lr.ph89
  %.03987 = phi i64 [ %i.by, %.lr.ph89 ], [ %.03987.unr, %.lr.ph89.prol.loopexit ]
  %.04086 = phi ptr [ %i.bx, %.lr.ph89 ], [ %.04086.unr, %.lr.ph89.prol.loopexit ] ; 6 uses
  %.185 = phi ptr [ %i.bw, %.lr.ph89 ], [ %.185.unr, %.lr.ph89.prol.loopexit ] ; 6 uses
  %i.bi = load i32, ptr %.185, align 4, !tbaa !228
  %i.bj = load i32, ptr %.04086, align 4, !tbaa !228
  store i32 %i.bj, ptr %.185, align 4, !tbaa !228
  store i32 %i.bi, ptr %.04086, align 4, !tbaa !228
  %i.bk = getelementptr inbounds nuw i8, ptr %.185, i64 4 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.04086, i64 4 ; 2 uses
  %i.bm = load i32, ptr %i.bk, align 4, !tbaa !228
  %i.bn = load i32, ptr %i.bl, align 4, !tbaa !228
  store i32 %i.bn, ptr %i.bk, align 4, !tbaa !228
  store i32 %i.bm, ptr %i.bl, align 4, !tbaa !228
  %i.bo = getelementptr inbounds nuw i8, ptr %.185, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.04086, i64 8 ; 2 uses
  %i.bq = load i32, ptr %i.bo, align 4, !tbaa !228
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !228
  store i32 %i.br, ptr %i.bo, align 4, !tbaa !228
  store i32 %i.bq, ptr %i.bp, align 4, !tbaa !228
  %i.bs = getelementptr inbounds nuw i8, ptr %.185, i64 12 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.04086, i64 12 ; 2 uses
  %i.bu = load i32, ptr %i.bs, align 4, !tbaa !228
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !228
  store i32 %i.bv, ptr %i.bs, align 4, !tbaa !228
  store i32 %i.bu, ptr %i.bt, align 4, !tbaa !228
  %i.bw = getelementptr inbounds nuw i8, ptr %.185, i64 16 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.04086, i64 16
  %i.by = add nuw nsw i64 %.03987, 2              ; 2 uses
  %exitcond94.not.1 = icmp eq i64 %i.by, %i.ai
  br i1 %exitcond94.not.1, label %._crit_edge90, label %.lr.ph89, !llvm.loop !900

bb.g:                                             ; preds = %._crit_edge90
  %i.bz = sub nsw i64 %.066, %i.bh
  br label %.backedge

bb.h:                                             ; preds = %bb.e
  %i.ca = getelementptr inbounds [8 x i8], ptr %.041, i64 %.070 ; 3 uses
  %i.cb = sub i64 0, %i.ai
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.cb ; 3 uses
  %i.cd = icmp sgt i64 %.066, 0
  br i1 %i.cd, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.h
  %xtraiter = and i64 %.066, 1
  %i.ce = icmp eq i64 %.066, 1
  br i1 %i.ce, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %.066, 9223372036854775806
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.03883.epil.init = phi ptr [ %i.ca, %.lr.ph.preheader ], [ %i.cx, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.282.epil.init = phi ptr [ %i.cc, %.lr.ph.preheader ], [ %i.cw, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod170 = trunc i64 %.066 to i1
  tail call void @llvm.assume(i1 %lcmp.mod170)
  %i.cf = getelementptr inbounds i8, ptr %.282.epil.init, i64 -8 ; 2 uses
  %i.cg = getelementptr inbounds i8, ptr %.03883.epil.init, i64 -8 ; 2 uses
  %i.ch = load i32, ptr %i.cf, align 4, !tbaa !228
  %i.ci = load i32, ptr %i.cg, align 4, !tbaa !228
  store i32 %i.ci, ptr %i.cf, align 4, !tbaa !228
  store i32 %i.ch, ptr %i.cg, align 4, !tbaa !228
  %i.cj = getelementptr inbounds i8, ptr %.282.epil.init, i64 -4 ; 2 uses
  %i.ck = getelementptr inbounds i8, ptr %.03883.epil.init, i64 -4 ; 2 uses
  %i.cl = load i32, ptr %i.cj, align 4, !tbaa !228
  %i.cm = load i32, ptr %i.ck, align 4, !tbaa !228
  store i32 %i.cm, ptr %i.cj, align 4, !tbaa !228
  store i32 %i.cl, ptr %i.ck, align 4, !tbaa !228
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.h
  %.2.lcssa = phi ptr [ %i.cc, %bb.h ], [ %.041, %._crit_edge.loopexit.unr-lcssa ], [ %.041, %.lr.ph.epil.preheader ]
  %i.cn = srem i64 %.070, %i.ai                   ; 2 uses
  %.not = icmp eq i64 %i.cn, 0
  br i1 %.not, label %_ZSt11swap_rangesIPSt4pairIjjES2_ET0_T_S4_S3_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.g
  %.070.be = phi i64 [ %.066, %bb.g ], [ %i.ai, %._crit_edge ]
  %.066.be = phi i64 [ %i.bz, %bb.g ], [ %i.cn, %._crit_edge ]
  %.041.be = phi ptr [ %.1.lcssa, %bb.g ], [ %.2.lcssa, %._crit_edge ]
  br label %bb.e, !llvm.loop !901

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.03883 = phi ptr [ %i.ca, %.lr.ph.preheader.new ], [ %i.cx, %.lr.ph ] ; 4 uses
  %.282 = phi ptr [ %i.cc, %.lr.ph.preheader.new ], [ %i.cw, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.co = getelementptr inbounds i8, ptr %.282, i64 -8 ; 2 uses
  %i.cp = getelementptr inbounds i8, ptr %.03883, i64 -8 ; 2 uses
  %i.cq = load i32, ptr %i.co, align 4, !tbaa !228
  %i.cr = load i32, ptr %i.cp, align 4, !tbaa !228
  store i32 %i.cr, ptr %i.co, align 4, !tbaa !228
  store i32 %i.cq, ptr %i.cp, align 4, !tbaa !228
  %i.cs = getelementptr inbounds i8, ptr %.282, i64 -4 ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %.03883, i64 -4 ; 2 uses
  %i.cu = load i32, ptr %i.cs, align 4, !tbaa !228
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !228
  store i32 %i.cv, ptr %i.cs, align 4, !tbaa !228
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !228
  %i.cw = getelementptr inbounds i8, ptr %.282, i64 -16 ; 4 uses
  %i.cx = getelementptr inbounds i8, ptr %.03883, i64 -16 ; 4 uses
  %i.cy = load i32, ptr %i.cw, align 4, !tbaa !228
  %i.cz = load i32, ptr %i.cx, align 4, !tbaa !228
  store i32 %i.cz, ptr %i.cw, align 4, !tbaa !228
  store i32 %i.cy, ptr %i.cx, align 4, !tbaa !228
  %i.da = getelementptr inbounds i8, ptr %.282, i64 -12 ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %.03883, i64 -12 ; 2 uses
  %i.dc = load i32, ptr %i.da, align 4, !tbaa !228
  %i.dd = load i32, ptr %i.db, align 4, !tbaa !228
  store i32 %i.dd, ptr %i.da, align 4, !tbaa !228
  store i32 %i.dc, ptr %i.db, align 4, !tbaa !228
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !902

_ZSt11swap_rangesIPSt4pairIjjES2_ET0_T_S4_S3_.exit: ; preds = %._crit_edge, %._crit_edge90, %.lr.ph.i, %middle.block163, %bb.b, %bb.a
  %.6 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %1, %middle.block163 ], [ %1, %.lr.ph.i ], [ %i.ah, %._crit_edge90 ], [ %i.ah, %._crit_edge ]
  ret ptr %.6
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt23__merge_adaptive_resizeIPSt4pairIjjElS2_N9__gnu_cxx5__ops15_Iter_comp_iterIN3qel2fm2fm9x_cost_ltEEEEvT_SB_SB_T0_SC_T1_SC_T2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef align 8 %7) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 5 uses
  %9 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 3 uses
  %10 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 3 uses
  %11 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 5 uses
end_hunk_0
