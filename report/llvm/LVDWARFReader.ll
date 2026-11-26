Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LVDWARFReader?download=true
inline.NumInlined: 4097
inline.NumDeleted: 2320
begin_hunk_0_@_ZN4llvm9ErrorList4joinENS_5ErrorES1_:bb.a
_ZNK4llvm5Error3isAINS_9ErrorListEEEbv.exit17:    ; preds = %bb.n
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !133
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = tail call noundef zeroext i1 %i.bu(ptr noundef nonnull align 8 dereferenceable(8) %i.br, ptr noundef nonnull @_ZN4llvm9ErrorList2IDE) #23, !inline_history !1000
  br i1 %i.bv, label %bb.o, label %_ZNK4llvm5Error3isAINS_9ErrorListEEEbv.exit17.thread

bb.o:                                             ; preds = %_ZNK4llvm5Error3isAINS_9ErrorListEEEbv.exit17
  %i.bw = load ptr, ptr %2, align 8, !tbaa !260   ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !619 ; 10 uses
  %i.bz = load ptr, ptr %1, align 8, !tbaa !260, !noalias !1031 ; 3 uses
  store ptr null, ptr %1, align 8, !tbaa !260, !noalias !1031
  %i.ca = ptrtoint ptr %i.by to i64               ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 4 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !621 ; 11 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 24 ; 3 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !622
  %.not.i.i18 = icmp eq ptr %i.cc, %i.ce
  br i1 %.not.i.i18, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cf = icmp eq ptr %i.by, %i.cc
  br i1 %i.cf, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cg = ptrtoint ptr %i.bz to i64
  store i64 %i.cg, ptr %i.cc, align 8, !tbaa !258
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store ptr %i.ch, ptr %i.cb, align 8, !tbaa !621
  br label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit21

bb.r:                                             ; preds = %bb.p
  %i.ci = getelementptr inbounds i8, ptr %i.cc, i64 -8 ; 4 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !258
  store i64 %i.cj, ptr %i.cc, align 8, !tbaa !258
  store ptr null, ptr %i.ci, align 8, !tbaa !258
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store ptr %i.ck, ptr %i.cb, align 8, !tbaa !621
  %i.cl = ptrtoint ptr %i.ci to i64
  %i.cm = sub i64 %i.cl, %i.ca
  %i.cn = ashr exact i64 %i.cm, 3                 ; 2 uses
  %i.co = icmp sgt i64 %i.cn, 0
  br i1 %i.co, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZSt13move_backwardIPSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.r, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i
  %.010.i.i.i.i.i.i.i.i = phi i64 [ %i.cw, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i ], [ %i.cn, %bb.r ] ; 2 uses
  %.069.i.i.i.i.i.i.i.i = phi ptr [ %i.cq, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i ], [ %i.cc, %bb.r ]
  %.078.i.i.i.i.i.i.i.i = phi ptr [ %i.cp, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i ], [ %i.ci, %bb.r ]
  %i.cp = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.cq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.cr = load ptr, ptr %i.cp, align 8, !tbaa !258
  store ptr null, ptr %i.cp, align 8, !tbaa !258
  %i.cs = load ptr, ptr %i.cq, align 8, !tbaa !258 ; 3 uses
  store ptr %i.cr, ptr %i.cq, align 8, !tbaa !258
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !133
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8
  tail call void %i.cv(ptr noundef nonnull align 8 dereferenceable(8) %i.cs) #23, !inline_history !1012
  br label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.cw = add nsw i64 %.010.i.i.i.i.i.i.i.i, -1
  %i.cx = icmp sgt i64 %.010.i.i.i.i.i.i.i.i, 1
  br i1 %i.cx, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZSt13move_backwardIPSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit.i.i.i, !llvm.loop !1013

_ZSt13move_backwardIPSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit.i.i.i: ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i, %bb.r
  %i.cy = load ptr, ptr %i.by, align 8, !tbaa !258 ; 3 uses
  store ptr %i.bz, ptr %i.by, align 8, !tbaa !258
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit21, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i.i.i.i: ; preds = %_ZSt13move_backwardIPSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit.i.i.i
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !133
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load ptr, ptr %i.da, align 8
  tail call void %i.db(ptr noundef nonnull align 8 dereferenceable(8) %i.cy) #23, !inline_history !1014
  br label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit21

bb.s:                                             ; preds = %bb.o
  %i.dc = ptrtoint ptr %i.cc to i64               ; 2 uses
  %i.dd = sub i64 %i.dc, %i.ca                    ; 2 uses
  %i.de = icmp eq i64 %i.dd, 9223372036854775800
  br i1 %i.de, label %bb.t, label %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i41

bb.t:                                             ; preds = %bb.s
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #26
  unreachable

_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i41: ; preds = %bb.s
  %i.df = ashr exact i64 %i.dd, 3                 ; 3 uses
  %.sroa.speculated.i.i34 = tail call i64 @llvm.umax.i64(i64 %i.df, i64 1)
  %i.dg = add nsw i64 %.sroa.speculated.i.i34, %i.df ; 2 uses
  %i.dh = icmp ult i64 %i.dg, %i.df
  %i.di = tail call i64 @llvm.umin.i64(i64 %i.dg, i64 1152921504606846975)
  %i.dj = select i1 %i.dh, i64 1152921504606846975, i64 %i.di ; 3 uses
  %.not.i.i35 = icmp ne i64 %i.dj, 0
  tail call void @llvm.assume(i1 %.not.i.i35)
  %i.dk = shl nuw nsw i64 %i.dj, 3
  %i.dl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dk) #27 ; 4 uses
  %i.dm = ptrtoint ptr %i.bz to i64
  store i64 %i.dm, ptr %i.dl, align 8, !tbaa !258
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 4 uses
  %.not10.i.i.i16.i43 = icmp eq ptr %i.by, %i.cc
  br i1 %.not10.i.i.i16.i43, label %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i48, label %.lr.ph.i.i.i17.i44.preheader

.lr.ph.i.i.i17.i44.preheader:                     ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i41
  %i.do = add i64 %i.dc, -8
  %i.dp = sub i64 %i.do, %i.ca                    ; 2 uses
  %i.dq = lshr i64 %i.dp, 3
  %i.dr = add nuw nsw i64 %i.dq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dp, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i17.i44.preheader157, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i17.i44.preheader
  %n.vec = and i64 %i.dr, 4611686018427387900     ; 3 uses
  %i.ds = shl i64 %n.vec, 3                       ; 2 uses
  %i.dt = getelementptr i8, ptr %i.dn, i64 %i.ds  ; 2 uses
  %i.du = getelementptr i8, ptr %i.by, i64 %i.ds
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dv = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dn, i64 %i.dv ; 2 uses
  %next.gep138 = getelementptr i8, ptr %i.by, i64 %i.dv ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1032)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1033)
  %i.dw = getelementptr i8, ptr %next.gep138, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep138, align 8, !tbaa !258, !alias.scope !1033
  %wide.load139 = load <2 x i64>, ptr %i.dw, align 8, !tbaa !258, !alias.scope !1033
  %i.dx = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !258, !alias.scope !1032
  store <2 x i64> %wide.load139, ptr %i.dx, align 8, !tbaa !258, !alias.scope !1032
  store <2 x ptr> splat (ptr null), ptr %next.gep138, align 8, !tbaa !258, !alias.scope !1033
  store <2 x ptr> splat (ptr null), ptr %i.dw, align 8, !tbaa !258, !alias.scope !1033
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dy = icmp eq i64 %index.next, %n.vec
  br i1 %i.dy, label %middle.block, label %vector.body, !llvm.loop !1018

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dr, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i48, label %.lr.ph.i.i.i17.i44.preheader157

.lr.ph.i.i.i17.i44.preheader157:                  ; preds = %.lr.ph.i.i.i17.i44.preheader, %middle.block
  %.012.i.i.i18.i45.ph = phi ptr [ %i.dn, %.lr.ph.i.i.i17.i44.preheader ], [ %i.dt, %middle.block ]
  %.0911.i.i.i19.i46.ph = phi ptr [ %i.by, %.lr.ph.i.i.i17.i44.preheader ], [ %i.du, %middle.block ]
  br label %.lr.ph.i.i.i17.i44

.lr.ph.i.i.i17.i44:                               ; preds = %.lr.ph.i.i.i17.i44.preheader157, %.lr.ph.i.i.i17.i44
  %.012.i.i.i18.i45 = phi ptr [ %i.eb, %.lr.ph.i.i.i17.i44 ], [ %.012.i.i.i18.i45.ph, %.lr.ph.i.i.i17.i44.preheader157 ] ; 2 uses
  %.0911.i.i.i19.i46 = phi ptr [ %i.ea, %.lr.ph.i.i.i17.i44 ], [ %.0911.i.i.i19.i46.ph, %.lr.ph.i.i.i17.i44.preheader157 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1032)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1033)
  %i.dz = load i64, ptr %.0911.i.i.i19.i46, align 8, !tbaa !258, !alias.scope !1033
  store i64 %i.dz, ptr %.012.i.i.i18.i45, align 8, !tbaa !258, !alias.scope !1032
  store ptr null, ptr %.0911.i.i.i19.i46, align 8, !tbaa !258, !alias.scope !1033
  %i.ea = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19.i46, i64 8 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.012.i.i.i18.i45, i64 8 ; 2 uses
  %.not.i.i.i20.i47 = icmp eq ptr %i.ea, %i.cc
  br i1 %.not.i.i.i20.i47, label %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i48, label %.lr.ph.i.i.i17.i44, !llvm.loop !1019

_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i48: ; preds = %.lr.ph.i.i.i17.i44, %middle.block, %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i41
  %.0.lcssa.i.i.i21.i49 = phi ptr [ %i.dn, %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i41 ], [ %i.dt, %middle.block ], [ %i.eb, %.lr.ph.i.i.i17.i44 ]
  %.not.i23.i50 = icmp eq ptr %i.by, null
  br i1 %.not.i23.i50, label %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit51, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i48
  %i.ec = load ptr, ptr %i.cd, align 8, !tbaa !622
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = sub i64 %i.ed, %i.ca
  tail call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.ee) #24
  br label %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit51

_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit51: ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i48, %bb.u
  store ptr %i.dl, ptr %i.bx, align 8, !tbaa !623
  store ptr %.0.lcssa.i.i.i21.i49, ptr %i.cb, align 8, !tbaa !621
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dj
  store ptr %i.ef, ptr %i.cd, align 8, !tbaa !622
  br label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit21

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit21: ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit51, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i.i.i.i, %_ZSt13move_backwardIPSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit.i.i.i, %bb.q
  %i.eg = load ptr, ptr %2, align 8, !tbaa !260
  store ptr %i.eg, ptr %0, align 8, !tbaa !260
  store ptr null, ptr %2, align 8, !tbaa !260
  br label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit31

_ZNK4llvm5Error3isAINS_9ErrorListEEEbv.exit17.thread: ; preds = %bb.n, %_ZNK4llvm5Error3isAINS_9ErrorListEEEbv.exit17
  %i.eh = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27 ; 5 uses
  %i.ei = load ptr, ptr %1, align 8, !tbaa !260, !noalias !1034
  store ptr null, ptr %1, align 8, !tbaa !260, !noalias !1034
  %i.ej = load ptr, ptr %2, align 8, !tbaa !260, !noalias !1035
  store ptr null, ptr %2, align 8, !tbaa !260, !noalias !1035
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm9ErrorListE, i64 16), ptr %i.eh, align 8, !tbaa !133
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.em = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #27 ; 4 uses
  %i.en = ptrtoint ptr %i.ei to i64
  store i64 %i.en, ptr %i.em, align 8, !tbaa !258
  %i.eo = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.ep = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #27 ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = ptrtoint ptr %i.ej to i64
  store i64 %i.er, ptr %i.eq, align 8, !tbaa !258
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1036)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1037)
  %i.es = load i64, ptr %i.em, align 8, !tbaa !258, !alias.scope !1037
  store i64 %i.es, ptr %i.ep, align 8, !tbaa !258, !alias.scope !1036
  store ptr null, ptr %i.em, align 8, !tbaa !258, !alias.scope !1037
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 16 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.em, i64 noundef 8) #24
  store ptr %i.ep, ptr %i.ek, align 8, !tbaa !623
  store ptr %i.et, ptr %i.el, align 8, !tbaa !621
  store ptr %i.et, ptr %i.eo, align 8, !tbaa !622
  store ptr %i.eh, ptr %0, align 8, !tbaa !260
  br label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit31

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit31: ; preds = %_ZNK4llvm5Error3isAINS_9ErrorListEEEbv.exit17.thread, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit21, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !621  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !623    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #26
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #27 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load i64, ptr %2, align 8, !tbaa !258
  store i64 %i.r, ptr %i.q, align 8, !tbaa !258
  store ptr null, ptr %2, align 8, !tbaa !258
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit
  %i.s = add i64 %i.m, -8
  %i.t = sub i64 %i.s, %i.e                       ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader55, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.w = shl i64 %n.vec, 3                        ; 2 uses
  %i.x = getelementptr i8, ptr %i.p, i64 %i.w     ; 2 uses
  %i.y = getelementptr i8, ptr %i.c, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.z = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.z ; 2 uses
  %next.gep35 = getelementptr i8, ptr %i.c, i64 %i.z ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1051)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  %i.aa = getelementptr i8, ptr %next.gep35, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep35, align 8, !tbaa !258, !alias.scope !1052
  %wide.load36 = load <2 x i64>, ptr %i.aa, align 8, !tbaa !258, !alias.scope !1052
  %i.ab = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !258, !alias.scope !1051
  store <2 x i64> %wide.load36, ptr %i.ab, align 8, !tbaa !258, !alias.scope !1051
  store <2 x ptr> splat (ptr null), ptr %next.gep35, align 8, !tbaa !258, !alias.scope !1052
  store <2 x ptr> splat (ptr null), ptr %i.aa, align 8, !tbaa !258, !alias.scope !1052
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !1041

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.preheader55

.lr.ph.i.i.i.preheader55:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.x, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.y, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader55, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader55 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader55 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1051)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  %i.ad = load i64, ptr %.0911.i.i.i, align 8, !tbaa !258, !alias.scope !1052
  store i64 %i.ad, ptr %.012.i.i.i, align 8, !tbaa !258, !alias.scope !1051
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !258, !alias.scope !1052
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ae, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !1042

_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit ], [ %i.x, %middle.block ], [ %i.af, %.lr.ph.i.i.i ] ; 2 uses
  %i.ag = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %i.ah = add i64 %i.d, -8
  %i.ai = sub i64 %i.ah, %i.m                     ; 3 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check40 = icmp ult i64 %i.ai, 152
  br i1 %min.iters.check40, label %.lr.ph.i.i.i17.preheader54, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i17.preheader
  %i.al = and i64 %i.ai, -8                       ; 2 uses
  %i.am = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 16
  %i.ao = getelementptr i8, ptr %1, i64 %i.al
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  %bound0 = icmp ult ptr %i.ag, %i.ap
  %bound1 = icmp ult ptr %1, %i.an
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i17.preheader54, label %vector.ph41

vector.ph41:                                      ; preds = %vector.memcheck
  %n.vec42 = and i64 %i.ak, 4611686018427387900   ; 3 uses
  %i.aq = shl i64 %n.vec42, 3                     ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ag, i64 %i.aq  ; 2 uses
  %i.as = getelementptr i8, ptr %1, i64 %i.aq
  br label %vector.body43

vector.body43:                                    ; preds = %vector.body43, %vector.ph41
  %index44 = phi i64 [ 0, %vector.ph41 ], [ %index.next49, %vector.body43 ] ; 2 uses
  %i.at = shl i64 %index44, 3                     ; 2 uses
  %next.gep45 = getelementptr i8, ptr %i.ag, i64 %i.at ; 2 uses
  %next.gep46 = getelementptr i8, ptr %1, i64 %i.at ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1053)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1054)
  %i.au = getelementptr i8, ptr %next.gep46, i64 16 ; 2 uses
  %wide.load47 = load <2 x i64>, ptr %next.gep46, align 8, !tbaa !258, !alias.scope !1055
  %wide.load48 = load <2 x i64>, ptr %i.au, align 8, !tbaa !258, !alias.scope !1055
  %i.av = getelementptr i8, ptr %next.gep45, i64 16
  store <2 x i64> %wide.load47, ptr %next.gep45, align 8, !tbaa !258, !alias.scope !1056, !noalias !1057
  store <2 x i64> %wide.load48, ptr %i.av, align 8, !tbaa !258, !alias.scope !1056, !noalias !1057
  store <2 x ptr> splat (ptr null), ptr %next.gep46, align 8, !tbaa !258, !alias.scope !1055
  store <2 x ptr> splat (ptr null), ptr %i.au, align 8, !tbaa !258, !alias.scope !1055
  %index.next49 = add nuw i64 %index44, 4         ; 2 uses
  %i.aw = icmp eq i64 %index.next49, %n.vec42
  br i1 %i.aw, label %middle.block50, label %vector.body43, !llvm.loop !1049

middle.block50:                                   ; preds = %vector.body43
  %cmp.n51 = icmp eq i64 %i.ak, %n.vec42
  br i1 %cmp.n51, label %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17.preheader54

.lr.ph.i.i.i17.preheader54:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i17.preheader, %middle.block50
  %.012.i.i.i18.ph = phi ptr [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.i.i.i17.preheader ], [ %i.ar, %middle.block50 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.as, %middle.block50 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader54, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.az, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader54 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.ay, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader54 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1053)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1054)
  %i.ax = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !258, !alias.scope !1054
  store i64 %i.ax, ptr %.012.i.i.i18, align 8, !tbaa !258, !alias.scope !1053
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !258, !alias.scope !1054
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ay, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !1050

_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block50, %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ag, %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.ar, %middle.block50 ], [ %i.az, %.lr.ph.i.i.i17 ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !622
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bd) #24
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !623
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !621
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.be, ptr %i.ba, align 8, !tbaa !622
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNSt3mapImPN4llvm11logicalview18LVScopeCompileUnitESt4lessImESaISt4pairIKmS3_EEE7emplaceIJRmRS3_EEES6_ISt17_Rb_tree_iteratorIS8_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
end_hunk_0
