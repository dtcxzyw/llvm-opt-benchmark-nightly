inline.NumInlined: 1249
inline.NumDeleted: 582
begin_hunk_0_@_ZN10duckdb_re216CharClassBuilder6NegateEv:bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i28, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i27, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i29 = icmp eq ptr %i.bf, %.sroa.16.0151
  br i1 %.not.i.i.i.i.i.i.i29, label %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i30, label %.lr.ph.i.i.i.i.i.i.i26, !llvm.loop !150

_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i30: ; preds = %.lr.ph.i.i.i.i.i.i.i26, %middle.block, %.noexc35
  %.0.lcssa.i.i.i.i.i.i.i31 = phi ptr [ %i.ap, %.noexc35 ], [ %i.ay, %middle.block ], [ %i.bg, %.lr.ph.i.i.i.i.i.i.i26 ]
  %.not.i23.i.i.i32 = icmp eq ptr %.sroa.098.0152, null
  br i1 %.not.i23.i.i.i32, label %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i33, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i30
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.098.0152) #27
  br label %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i33

_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i33: ; preds = %bb.j, %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i30
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.an
  br label %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE9push_backEOS1_.exit36

_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE9push_backEOS1_.exit36: ; preds = %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i33, %bb.g
  %.sroa.31.2 = phi ptr [ %i.bh, %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i33 ], [ %.sroa.31.0150, %bb.g ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i31.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i31, %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i33 ], [ %.sroa.16.0151, %bb.g ]
  %.sroa.098.6 = phi ptr [ %i.ap, %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i33 ], [ %.sroa.098.0152, %bb.g ] ; 2 uses
  %.sroa.16.4 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i31.pn, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.090.1149, i64 36
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !137
  %i.bk = add nsw i32 %i.bj, 1                    ; 2 uses
  %i.bl = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.090.1149) #31 ; 2 uses
  %.not136 = icmp eq ptr %i.bl, %i.t
  br i1 %.not136, label %._crit_edge, label %.lr.ph, !llvm.loop !151

.loopexit:                                        ; preds = %_ZNKSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i22
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

._crit_edge:                                      ; preds = %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE9push_backEOS1_.exit36, %bb.f
  %.sroa.31.0.lcssa = phi ptr [ %.sroa.31.1120, %bb.f ], [ %.sroa.31.2, %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE9push_backEOS1_.exit36 ] ; 4 uses
  %.sroa.16.0.lcssa = phi ptr [ %.sroa.098.4124, %bb.f ], [ %.sroa.16.4, %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE9push_backEOS1_.exit36 ] ; 4 uses
  %.sroa.098.0.lcssa = phi ptr [ %.sroa.098.4124, %bb.f ], [ %.sroa.098.6, %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE9push_backEOS1_.exit36 ] ; 10 uses
  %.113.lcssa = phi i32 [ %.012, %bb.f ], [ %i.bk, %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE9push_backEOS1_.exit36 ] ; 3 uses
  %i.bm = icmp slt i32 %.113.lcssa, 1114112
  br i1 %i.bm, label %bb.k, label %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE9push_backEOS1_.exit

bb.k:                                             ; preds = %._crit_edge
  %.not.i.i37 = icmp eq ptr %.sroa.16.0.lcssa, %.sroa.31.0.lcssa
  br i1 %.not.i.i37, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.0.0.insert.ext = zext i32 %.113.lcssa to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.0.insert.ext, 4785070309113856
  store i64 %.sroa.0.0.insert.insert, ptr %.sroa.16.0.lcssa, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.16.0.lcssa, i64 8
  br label %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE9push_backEOS1_.exit

bb.m:                                             ; preds = %bb.k
  %i.bo = ptrtoint ptr %.sroa.31.0.lcssa to i64   ; 2 uses
  %i.bp = ptrtoint ptr %.sroa.098.0.lcssa to i64  ; 3 uses
  %i.bq = sub i64 %i.bo, %i.bp                    ; 3 uses
  %i.br = icmp eq i64 %i.bq, 9223372036854775800
  br i1 %i.br, label %bb.n, label %_ZNKSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i38

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #29
          to label %.noexc50 unwind label %bb.p

.noexc50:                                         ; preds = %bb.n
  unreachable

_ZNKSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i38: ; preds = %bb.m
  %i.bs = ashr exact i64 %i.bq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i39 = tail call i64 @llvm.umax.i64(i64 %i.bs, i64 1)
  %i.bt = add nsw i64 %.sroa.speculated.i.i.i.i39, %i.bs ; 2 uses
  %i.bu = icmp ult i64 %i.bt, %i.bs
  %i.bv = tail call i64 @llvm.umin.i64(i64 %i.bt, i64 1152921504606846975)
  %i.bw = select i1 %i.bu, i64 1152921504606846975, i64 %i.bv ; 2 uses
  %.not.i.i.i.i40 = icmp ne i64 %i.bw, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i40)
  %i.bx = shl nuw nsw i64 %i.bw, 3
  %i.by = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bx) #30
          to label %.noexc51 unwind label %bb.p   ; 8 uses

.noexc51:                                         ; preds = %_ZNKSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i38
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bq
  %.sroa.0.0.insert.ext58 = zext i32 %.113.lcssa to i64
  %.sroa.0.0.insert.insert60 = or disjoint i64 %.sroa.0.0.insert.ext58, 4785070309113856
  store i64 %.sroa.0.0.insert.insert60, ptr %i.bz, align 4
  %.not10.i.i.i.i.i.i.i41 = icmp eq ptr %.sroa.098.0.lcssa, %.sroa.31.0.lcssa
  br i1 %.not10.i.i.i.i.i.i.i41, label %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i46, label %.lr.ph.i.i.i.i.i.i.i42.preheader

.lr.ph.i.i.i.i.i.i.i42.preheader:                 ; preds = %.noexc51
  %i.ca = ptrtoaddr ptr %i.by to i64
  %i.cb = add i64 %i.bo, -8
  %i.cc = sub i64 %i.cb, %i.bp                    ; 2 uses
  %i.cd = lshr i64 %i.cc, 3
  %i.ce = add nuw nsw i64 %i.cd, 1                ; 2 uses
  %min.iters.check195 = icmp ult i64 %i.cc, 56
  %i.cf = sub i64 %i.ca, %i.bp
  %diff.check193 = icmp ult i64 %i.cf, 32
  %or.cond210 = or i1 %min.iters.check195, %diff.check193
  br i1 %or.cond210, label %.lr.ph.i.i.i.i.i.i.i42.preheader211, label %vector.ph196

vector.ph196:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i42.preheader
  %n.vec198 = and i64 %i.ce, 4611686018427387900  ; 3 uses
  %i.cg = shl i64 %n.vec198, 3                    ; 2 uses
  %i.ch = getelementptr i8, ptr %i.by, i64 %i.cg  ; 2 uses
  %i.ci = getelementptr i8, ptr %.sroa.098.0.lcssa, i64 %i.cg
  br label %vector.body199

vector.body199:                                   ; preds = %vector.body199, %vector.ph196
  %index200 = phi i64 [ 0, %vector.ph196 ], [ %index.next205, %vector.body199 ] ; 2 uses
  %i.cj = shl i64 %index200, 3                    ; 2 uses
  %next.gep201 = getelementptr i8, ptr %i.by, i64 %i.cj ; 2 uses
  %next.gep202 = getelementptr i8, ptr %.sroa.098.0.lcssa, i64 %i.cj ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %i.ck = getelementptr i8, ptr %next.gep202, i64 16
  %wide.load203 = load <2 x i64>, ptr %next.gep202, align 4, !alias.scope !155, !noalias !152
  %wide.load204 = load <2 x i64>, ptr %i.ck, align 4, !alias.scope !155, !noalias !152
  %i.cl = getelementptr i8, ptr %next.gep201, i64 16
  store <2 x i64> %wide.load203, ptr %next.gep201, align 4, !alias.scope !152, !noalias !155
  store <2 x i64> %wide.load204, ptr %i.cl, align 4, !alias.scope !152, !noalias !155
  %index.next205 = add nuw i64 %index200, 4       ; 2 uses
  %i.cm = icmp eq i64 %index.next205, %n.vec198
  br i1 %i.cm, label %middle.block206, label %vector.body199, !llvm.loop !157

middle.block206:                                  ; preds = %vector.body199
  %cmp.n207 = icmp eq i64 %i.ce, %n.vec198
  br i1 %cmp.n207, label %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i46, label %.lr.ph.i.i.i.i.i.i.i42.preheader211

.lr.ph.i.i.i.i.i.i.i42.preheader211:              ; preds = %.lr.ph.i.i.i.i.i.i.i42.preheader, %middle.block206
  %.012.i.i.i.i.i.i.i43.ph = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i.i.i42.preheader ], [ %i.ch, %middle.block206 ]
  %.0911.i.i.i.i.i.i.i44.ph = phi ptr [ %.sroa.098.0.lcssa, %.lr.ph.i.i.i.i.i.i.i42.preheader ], [ %i.ci, %middle.block206 ]
  br label %.lr.ph.i.i.i.i.i.i.i42

.lr.ph.i.i.i.i.i.i.i42:                           ; preds = %.lr.ph.i.i.i.i.i.i.i42.preheader211, %.lr.ph.i.i.i.i.i.i.i42
  %.012.i.i.i.i.i.i.i43 = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i.i.i42 ], [ %.012.i.i.i.i.i.i.i43.ph, %.lr.ph.i.i.i.i.i.i.i42.preheader211 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i44 = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i.i.i42 ], [ %.0911.i.i.i.i.i.i.i44.ph, %.lr.ph.i.i.i.i.i.i.i42.preheader211 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %i.cn = load i64, ptr %.0911.i.i.i.i.i.i.i44, align 4, !alias.scope !155, !noalias !152
  store i64 %i.cn, ptr %.012.i.i.i.i.i.i.i43, align 4, !alias.scope !152, !noalias !155
  %i.co = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i44, i64 8 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i43, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i45 = icmp eq ptr %i.co, %.sroa.31.0.lcssa
  br i1 %.not.i.i.i.i.i.i.i45, label %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i46, label %.lr.ph.i.i.i.i.i.i.i42, !llvm.loop !158

_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i46: ; preds = %.lr.ph.i.i.i.i.i.i.i42, %middle.block206, %.noexc51
  %.0.lcssa.i.i.i.i.i.i.i47 = phi ptr [ %i.by, %.noexc51 ], [ %i.ch, %middle.block206 ], [ %i.cp, %.lr.ph.i.i.i.i.i.i.i42 ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i47, i64 8 ; 2 uses
  %.not.i23.i.i.i48 = icmp eq ptr %.sroa.098.0.lcssa, null
  br i1 %.not.i23.i.i.i48, label %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE9push_backEOS1_.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i46
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.098.0.lcssa) #27
  br label %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE9push_backEOS1_.exit

bb.p:                                             ; preds = %_ZNKSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i38, %bb.n
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNKSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i46, %bb.o, %bb.l, %bb.c, %._crit_edge
  %.sroa.16.1 = phi ptr [ %.sroa.16.0.lcssa, %._crit_edge ], [ %i.s, %_ZNKSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.q, %bb.c ], [ %i.cq, %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i46 ], [ %i.bn, %bb.l ], [ %i.cq, %bb.o ] ; 2 uses
  %.sroa.098.1 = phi ptr [ %.sroa.098.0.lcssa, %._crit_edge ], [ %i.r, %_ZNKSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.g, %bb.c ], [ %i.by, %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i46 ], [ %.sroa.098.0.lcssa, %bb.l ], [ %i.by, %bb.o ] ; 6 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !34
  invoke void @_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.ct)
          to label %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE5clearEv.exit unwind label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE9push_backEOS1_.exit
  %i.cu = landingpad { ptr, i32 }
          catch ptr null
  %i.cv = extractvalue { ptr, i32 } %i.cu, 0
  tail call void @__clang_call_terminate(ptr %i.cv) #28
  unreachable

_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE5clearEv.exit: ; preds = %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE9push_backEOS1_.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store ptr null, ptr %i.cs, align 8, !tbaa !34
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !126
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.cw, ptr %i.cy, align 8, !tbaa !127
  store i64 0, ptr %i.b, align 8, !tbaa !49
  %.not160 = icmp eq ptr %.sroa.16.1, %.sroa.098.1
  br i1 %.not160, label %._crit_edge159, label %.lr.ph158.preheader

.lr.ph158.preheader:                              ; preds = %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE5clearEv.exit
  %i.cz = ptrtoint ptr %.sroa.16.1 to i64
  %i.da = ptrtoint ptr %.sroa.098.1 to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = ashr exact i64 %i.db, 3
  br label %.lr.ph158

._crit_edge159:                                   ; preds = %bb.w, %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE5clearEv.exit
  %1 = load <3 x i32>, ptr %0, align 8, !tbaa !3  ; 2 uses
  %2 = and <3 x i32> %1, <i32 67108863, i32 67108863, i32 poison>
  %3 = sub nsw <3 x i32> <i32 poison, i32 poison, i32 1114112>, %1
  %4 = shufflevector <3 x i32> %2, <3 x i32> %3, <3 x i32> <i32 0, i32 1, i32 5>
  %5 = xor <3 x i32> %4, <i32 67108863, i32 67108863, i32 0>
  store <3 x i32> %5, ptr %0, align 8, !tbaa !3
  %.not.i.i.i = icmp eq ptr %.sroa.098.1, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %._crit_edge159
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.098.1) #27
  br label %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EED2Ev.exit

_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EED2Ev.exit: ; preds = %._crit_edge159, %bb.r
  ret void

.lr.ph158:                                        ; preds = %.lr.ph158.preheader, %bb.w
  %.011157 = phi i64 [ %i.ec, %bb.w ], [ 0, %.lr.ph158.preheader ] ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.098.1, i64 %.011157 ; 4 uses
  %.02022.i.i.i = load ptr, ptr %i.cs, align 8, !tbaa !43 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph158
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.df = load i32, ptr %i.de, align 4, !tbaa !137
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph.i.i.i
  %.02024.i.i.i = phi ptr [ %.02022.i.i.i, %.lr.ph.i.i.i ], [ %.020.i.i.i, %bb.s ] ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !140
  %i.di = icmp slt i32 %i.df, %i.dh               ; 2 uses
  %.in.v.i.i.i = select i1 %i.di, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !43 ; 2 uses
  %.not.i.i.i53 = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i53, label %._crit_edge.i.i.i, label %bb.s, !llvm.loop !141

._crit_edge.i.i.i:                                ; preds = %bb.s
  br i1 %i.di, label %._crit_edge.thread.i.i.i, label %bb.u

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %.lr.ph158
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.cw, %.lr.ph158 ] ; 4 uses
  %i.dj = load ptr, ptr %i.cx, align 8, !tbaa !126
  %i.dk = icmp eq ptr %.019.lcssa29.i.i.i, %i.dj
  br i1 %i.dk, label %select.unfold.i.i, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.dl = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #31
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i.i.i
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.t ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %.sroa.05.0.i.i.i = phi ptr [ %i.dl, %bb.t ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i.i, i64 36
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !137
  %i.do = load i32, ptr %i.dd, align 4, !tbaa !140
  %i.dp = icmp slt i32 %i.dn, %i.do
  br i1 %i.dp, label %select.unfold.i.i, label %bb.w

select.unfold.i.i:                                ; preds = %bb.u, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.u ] ; 3 uses
  %i.dq = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.cw
  br i1 %i.dq, label %_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE10_M_insert_IRKS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i, label %bb.v

bb.v:                                             ; preds = %select.unfold.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !137
  %i.du = load i32, ptr %i.dr, align 4, !tbaa !140
  %i.dv = icmp slt i32 %i.dt, %i.du
  br label %_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE10_M_insert_IRKS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE10_M_insert_IRKS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i: ; preds = %bb.v, %select.unfold.i.i
  %i.dw = phi i1 [ %i.dv, %bb.v ], [ true, %select.unfold.i.i ]
  %i.dx = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30
          to label %.noexc54 unwind label %bb.x   ; 2 uses

.noexc54:                                         ; preds = %_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE10_M_insert_IRKS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 32
  %i.dz = load i64, ptr %i.dd, align 4
  store i64 %i.dz, ptr %i.dy, align 4
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.dw, ptr noundef nonnull %i.dx, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.cw) #26
  %i.ea = load i64, ptr %i.b, align 8, !tbaa !49
  %i.eb = add i64 %i.ea, 1
  store i64 %i.eb, ptr %i.b, align 8, !tbaa !49
  br label %bb.w

bb.w:                                             ; preds = %.noexc54, %bb.u
  %i.ec = add nuw i64 %.011157, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ec, %i.dc
  br i1 %exitcond.not, label %._crit_edge159, label %.lr.ph158, !llvm.loop !159

bb.x:                                             ; preds = %_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE10_M_insert_IRKS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.x, %bb.p
  %.sroa.098.3 = phi ptr [ %.sroa.098.0.lcssa, %bb.p ], [ %.sroa.098.0152, %.loopexit.split-lp ], [ %.sroa.098.1, %bb.x ], [ %.sroa.098.0152, %.loopexit ] ; 2 uses
  %.pn15.pn = phi { ptr, i32 } [ %i.cr, %bb.p ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.ed, %bb.x ], [ %lpad.loopexit, %.loopexit ]
  %.not.i.i.i55 = icmp eq ptr %.sroa.098.3, null
  br i1 %.not.i.i.i55, label %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EED2Ev.exit56, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.098.3) #27
  br label %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EED2Ev.exit56

_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EED2Ev.exit56: ; preds = %bb.y, %bb.z
  resume { ptr, i32 } %.pn15.pn
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull ptr @_ZN10duckdb_re29CharClass3NewEm(i64 noundef %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = shl i64 %0, 3
  %i.b = add i64 %i.a, 24
  %i.c = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.b) #30 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.d, ptr %i.e, align 8, !tbaa !73
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 0, ptr %i.f, align 8, !tbaa !72
  store i8 0, ptr %i.c, align 8, !tbaa !160
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.g, align 4, !tbaa !69
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull ptr @_ZN10duckdb_re29CharClass6NegateEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !72   ; 3 uses
  %i.c = add nsw i32 %i.b, 1
  %i.d = sext i32 %i.c to i64
  %i.e = shl nsw i64 %i.d, 3
  %i.f = add nsw i64 %i.e, 24
  %i.g = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.f) #30 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !73
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.k = load i8, ptr %0, align 8, !tbaa !160, !range !161, !noundef !162
  store i8 %i.k, ptr %i.g, align 8, !tbaa !160
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !69
  %i.n = sub nsw i32 1114112, %i.m
  store i32 %i.n, ptr %i.j, align 4, !tbaa !69
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not24 = icmp eq i32 %i.b, 0
  br i1 %.not24, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !73   ; 2 uses
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.c
  %i.q = icmp slt i32 %.1.in, 1114111
  br i1 %i.q, label %._crit_edge.thread, label %bb.d

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %i.r = phi i32 [ %i.aa, %bb.c ], [ %i.b, %.lr.ph.preheader ]
  %i.s = phi ptr [ %i.ab, %bb.c ], [ %i.p, %.lr.ph.preheader ]
  %.027 = phi ptr [ %i.ac, %bb.c ], [ %i.p, %.lr.ph.preheader ] ; 3 uses
  %.01926 = phi i32 [ %.1, %bb.c ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.02025 = phi i32 [ %.121, %bb.c ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.t = load i32, ptr %.027, align 4, !tbaa !140 ; 2 uses
  %i.u = icmp eq i32 %i.t, %.01926
  br i1 %i.u, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.v = add nsw i32 %i.t, -1
  %i.w = load ptr, ptr %i.i, align 8, !tbaa !73
  %i.x = add nsw i32 %.02025, 1
  %i.y = sext i32 %.02025 to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.y
  %.sroa.423.0.insert.ext = zext i32 %i.v to i64
  %.sroa.423.0.insert.shift = shl nuw i64 %.sroa.423.0.insert.ext, 32
  %.sroa.022.0.insert.ext = zext i32 %.01926 to i64
  %.sroa.022.0.insert.insert = or disjoint i64 %.sroa.423.0.insert.shift, %.sroa.022.0.insert.ext
  store i64 %.sroa.022.0.insert.insert, ptr %i.z, align 4
  %.pre = load ptr, ptr %i.o, align 8, !tbaa !73
  %.pre29 = load i32, ptr %i.a, align 8, !tbaa !72
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.aa = phi i32 [ %.pre29, %bb.b ], [ %i.r, %.lr.ph ] ; 2 uses
  %i.ab = phi ptr [ %.pre, %bb.b ], [ %i.s, %.lr.ph ] ; 2 uses
  %.121 = phi i32 [ %i.x, %bb.b ], [ %.02025, %.lr.ph ] ; 3 uses
  %.1.in.in = getelementptr inbounds nuw i8, ptr %.027, i64 4
  %.1.in = load i32, ptr %.1.in.in, align 4, !tbaa !137 ; 2 uses
  %.1 = add nsw i32 %.1.in, 1                     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.027, i64 8 ; 2 uses
  %i.ad = sext i32 %i.aa to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ad
  %.not = icmp eq ptr %i.ac, %i.ae
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !163

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.019.lcssa35 = phi i32 [ %.1, %._crit_edge ], [ 0, %bb.a ]
  %.020.lcssa34 = phi i32 [ %.121, %._crit_edge ], [ 0, %bb.a ] ; 2 uses
  %i.af = load ptr, ptr %i.i, align 8, !tbaa !73
  %i.ag = add nsw i32 %.020.lcssa34, 1
  %i.ah = sext i32 %.020.lcssa34 to i64
end_hunk_0
