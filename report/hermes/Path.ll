inline.NumInlined: 1790
inline.NumDeleted: 565
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4llvh9ErrorList4joinENS_5ErrorES1_:bb.a
  %i.dy = sub i64 %i.dx, %i.dn
  %i.dz = ashr exact i64 %i.dy, 3                 ; 2 uses
  %i.ea = icmp sgt i64 %i.dz, 0
  br i1 %i.ea, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZSt13move_backwardIPSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.r, %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i
  %.010.i.i.i.i.i.i.i.i = phi i64 [ %i.ei, %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i ], [ %i.dz, %bb.r ] ; 2 uses
  %.069.i.i.i.i.i.i.i.i = phi ptr [ %i.ec, %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i ], [ %i.dp, %bb.r ]
  %.078.i.i.i.i.i.i.i.i = phi ptr [ %i.eb, %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i ], [ %i.du, %bb.r ]
  %i.eb = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.ec = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.ed = load ptr, ptr %i.eb, align 8, !tbaa !206
  store ptr null, ptr %i.eb, align 8, !tbaa !206
  %i.ee = load ptr, ptr %i.ec, align 8, !tbaa !206 ; 3 uses
  store ptr %i.ed, ptr %i.ec, align 8, !tbaa !206
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvh13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvh13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !223
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8
  tail call void %i.eh(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ee) #30, !inline_history !314
  br label %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvh13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.ei = add nsw i64 %.010.i.i.i.i.i.i.i.i, -1
  %i.ej = icmp sgt i64 %.010.i.i.i.i.i.i.i.i, 1
  br i1 %i.ej, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZSt13move_backwardIPSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit.i.i.i, !llvm.loop !315

_ZSt13move_backwardIPSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit.i.i.i: ; preds = %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i, %bb.r
  %i.ek = load ptr, ptr %i.di, align 8, !tbaa !206 ; 3 uses
  store ptr %i.dm, ptr %i.di, align 8, !tbaa !206
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ek, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit21, label %_ZNKSt14default_deleteIN4llvh13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvh13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i.i.i.i: ; preds = %_ZSt13move_backwardIPSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit.i.i.i
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !223
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load ptr, ptr %i.em, align 8
  tail call void %i.en(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ek) #30, !inline_history !316
  br label %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit21

bb.s:                                             ; preds = %bb.o
  %i.eo = ptrtoint ptr %i.dp to i64               ; 3 uses
  %i.ep = sub i64 %i.eo, %i.dn                    ; 3 uses
  %i.eq = icmp eq i64 %i.ep, 9223372036854775800
  br i1 %i.eq, label %bb.t, label %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i41

bb.t:                                             ; preds = %bb.s
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #34
  unreachable

_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i41: ; preds = %bb.s
  %i.er = ashr exact i64 %i.ep, 3                 ; 3 uses
  %.sroa.speculated.i.i34 = tail call i64 @llvm.umax.i64(i64 %i.er, i64 1)
  %i.es = add nsw i64 %.sroa.speculated.i.i34, %i.er ; 2 uses
  %i.et = icmp ult i64 %i.es, %i.er
  %i.eu = tail call i64 @llvm.umin.i64(i64 %i.es, i64 1152921504606846975)
  %i.ev = select i1 %i.et, i64 1152921504606846975, i64 %i.eu ; 3 uses
  %.not.i.i35 = icmp ne i64 %i.ev, 0
  tail call void @llvm.assume(i1 %.not.i.i35)
  %i.ew = shl nuw nsw i64 %i.ev, 3
  %i.ex = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ew) #32 ; 5 uses
  store i64 %i.dl, ptr %i.ex, align 8, !tbaa !206
  %i.ey = getelementptr i8, ptr %i.ex, i64 8      ; 6 uses
  %.not10.i.i.i16.i43 = icmp eq ptr %i.di, %i.dp
  br i1 %.not10.i.i.i16.i43, label %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i48, label %.lr.ph.i.i.i17.i44.preheader

.lr.ph.i.i.i17.i44.preheader:                     ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i41
  %i.ez = sub i64 %i.eo, %i.dn
  %i.fa = add i64 %i.ez, -8                       ; 2 uses
  %i.fb = lshr i64 %i.fa, 3
  %i.fc = add nuw nsw i64 %i.fb, 1                ; 2 uses
  %min.iters.check151 = icmp ult i64 %i.fa, 184
  br i1 %min.iters.check151, label %.lr.ph.i.i.i17.i44.preheader166, label %vector.memcheck144

vector.memcheck144:                               ; preds = %.lr.ph.i.i.i17.i44.preheader
  %i.fd = add i64 %i.eo, -8
  %i.fe = sub i64 %i.fd, %i.dn
  %i.ff = and i64 %i.fe, -8                       ; 2 uses
  %i.fg = getelementptr i8, ptr %i.ex, i64 %i.ff
  %scevgep145 = getelementptr i8, ptr %i.fg, i64 16
  %i.fh = getelementptr i8, ptr %i.di, i64 %i.ff
  %scevgep146 = getelementptr i8, ptr %i.fh, i64 8
  %bound0147 = icmp ult ptr %i.ey, %scevgep146
  %bound1148 = icmp ult ptr %i.di, %scevgep145
  %found.conflict149 = and i1 %bound0147, %bound1148
  br i1 %found.conflict149, label %.lr.ph.i.i.i17.i44.preheader166, label %vector.ph152

vector.ph152:                                     ; preds = %vector.memcheck144
  %n.vec154 = and i64 %i.fc, 4611686018427387900  ; 3 uses
  %i.fi = shl i64 %n.vec154, 3                    ; 2 uses
  %i.fj = getelementptr i8, ptr %i.ey, i64 %i.fi  ; 2 uses
  %i.fk = getelementptr i8, ptr %i.di, i64 %i.fi
  br label %vector.body155

vector.body155:                                   ; preds = %vector.body155, %vector.ph152
  %index156 = phi i64 [ 0, %vector.ph152 ], [ %index.next161, %vector.body155 ] ; 2 uses
  %i.fl = shl i64 %index156, 3                    ; 2 uses
  %next.gep157 = getelementptr i8, ptr %i.ey, i64 %i.fl ; 2 uses
  %next.gep158 = getelementptr i8, ptr %i.di, i64 %i.fl ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !320)
  %i.fm = getelementptr i8, ptr %next.gep158, i64 16
  %wide.load159 = load <2 x i64>, ptr %next.gep158, align 8, !tbaa !206, !alias.scope !322, !noalias !317
  %wide.load160 = load <2 x i64>, ptr %i.fm, align 8, !tbaa !206, !alias.scope !322, !noalias !317
  %i.fn = getelementptr i8, ptr %next.gep157, i64 16
  store <2 x i64> %wide.load159, ptr %next.gep157, align 8, !tbaa !206, !alias.scope !325, !noalias !322
  store <2 x i64> %wide.load160, ptr %i.fn, align 8, !tbaa !206, !alias.scope !325, !noalias !322
  %i.fo = getelementptr i8, ptr %next.gep158, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep158, align 8, !tbaa !206, !alias.scope !322, !noalias !317
  store <2 x ptr> splat (ptr null), ptr %i.fo, align 8, !tbaa !206, !alias.scope !322, !noalias !317
  %index.next161 = add nuw i64 %index156, 4       ; 2 uses
  %i.fp = icmp eq i64 %index.next161, %n.vec154
  br i1 %i.fp, label %middle.block162, label %vector.body155, !llvm.loop !327

middle.block162:                                  ; preds = %vector.body155
  %cmp.n163 = icmp eq i64 %i.fc, %n.vec154
  br i1 %cmp.n163, label %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i48, label %.lr.ph.i.i.i17.i44.preheader166

.lr.ph.i.i.i17.i44.preheader166:                  ; preds = %vector.memcheck144, %.lr.ph.i.i.i17.i44.preheader, %middle.block162
  %.012.i.i.i18.i45.ph = phi ptr [ %i.ey, %vector.memcheck144 ], [ %i.ey, %.lr.ph.i.i.i17.i44.preheader ], [ %i.fj, %middle.block162 ]
  %.0911.i.i.i19.i46.ph = phi ptr [ %i.di, %vector.memcheck144 ], [ %i.di, %.lr.ph.i.i.i17.i44.preheader ], [ %i.fk, %middle.block162 ]
  br label %.lr.ph.i.i.i17.i44

.lr.ph.i.i.i17.i44:                               ; preds = %.lr.ph.i.i.i17.i44.preheader166, %.lr.ph.i.i.i17.i44
  %.012.i.i.i18.i45 = phi ptr [ %i.fs, %.lr.ph.i.i.i17.i44 ], [ %.012.i.i.i18.i45.ph, %.lr.ph.i.i.i17.i44.preheader166 ] ; 2 uses
  %.0911.i.i.i19.i46 = phi ptr [ %i.fr, %.lr.ph.i.i.i17.i44 ], [ %.0911.i.i.i19.i46.ph, %.lr.ph.i.i.i17.i44.preheader166 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !320)
  %i.fq = load i64, ptr %.0911.i.i.i19.i46, align 8, !tbaa !206, !alias.scope !320, !noalias !317
  store i64 %i.fq, ptr %.012.i.i.i18.i45, align 8, !tbaa !206, !alias.scope !317, !noalias !320
  store ptr null, ptr %.0911.i.i.i19.i46, align 8, !tbaa !206, !alias.scope !320, !noalias !317
  %i.fr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19.i46, i64 8 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.012.i.i.i18.i45, i64 8 ; 2 uses
  %.not.i.i.i20.i47 = icmp eq ptr %i.fr, %i.dp
  br i1 %.not.i.i.i20.i47, label %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i48, label %.lr.ph.i.i.i17.i44, !llvm.loop !328

_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i48: ; preds = %.lr.ph.i.i.i17.i44, %middle.block162, %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i41
  %.0.lcssa.i.i.i21.i49 = phi ptr [ %i.ey, %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i41 ], [ %i.fj, %middle.block162 ], [ %i.fs, %.lr.ph.i.i.i17.i44 ]
  %.not.i23.i50 = icmp eq ptr %i.di, null
  br i1 %.not.i23.i50, label %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit51, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i48
  tail call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef %i.ep) #33
  br label %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit51

_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit51: ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i48, %bb.u
  store ptr %i.ex, ptr %i.dh, align 8, !tbaa !298
  store ptr %.0.lcssa.i.i.i21.i49, ptr %i.do, align 8, !tbaa !292
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.ev
  store ptr %i.ft, ptr %i.dq, align 8, !tbaa !294
  br label %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit21

_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit21: ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit51, %_ZNKSt14default_deleteIN4llvh13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i.i.i.i, %_ZSt13move_backwardIPSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit.i.i.i, %bb.q
  %i.fu = load ptr, ptr %2, align 8, !tbaa !203
  %i.fv = ptrtoint ptr %i.fu to i64
  %i.fw = or i64 %i.fv, 1
  %i.fx = inttoptr i64 %i.fw to ptr
  store ptr %i.fx, ptr %0, align 8, !tbaa !203
  store ptr null, ptr %2, align 8, !tbaa !203
  br label %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit31

_ZNK4llvh5Error3isAINS_9ErrorListEEEbv.exit17.thread: ; preds = %_ZNK4llvh5Error3isAINS_9ErrorListEEEbv.exit.thread, %_ZNK4llvh5Error3isAINS_9ErrorListEEEbv.exit17
  %i.fy = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #32 ; 5 uses
  %i.fz = load ptr, ptr %1, align 8, !tbaa !203, !noalias !329
  store ptr null, ptr %1, align 8, !tbaa !203, !noalias !329
  %i.ga = load ptr, ptr %2, align 8, !tbaa !203, !noalias !332
  store ptr null, ptr %2, align 8, !tbaa !203, !noalias !332
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvh9ErrorListE, i64 16), ptr %i.fy, align 8, !tbaa !223
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  %i.ge = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #32 ; 3 uses
  %i.gf = insertelement <2 x ptr> poison, ptr %i.fz, i64 0
  %i.gg = insertelement <2 x ptr> %i.gf, ptr %i.ga, i64 1
  %i.gh = ptrtoint <2 x ptr> %i.gg to <2 x i64>
  %i.gi = and <2 x i64> %i.gh, splat (i64 -2)
  store <2 x i64> %i.gi, ptr %i.ge, align 8, !tbaa !206
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ge, i64 16 ; 2 uses
  store ptr %i.ge, ptr %i.gb, align 8, !tbaa !298
  store ptr %i.gj, ptr %i.gc, align 8, !tbaa !292
  store ptr %i.gj, ptr %i.gd, align 8, !tbaa !294
  %i.gk = ptrtoint ptr %i.fy to i64
  %i.gl = or i64 %i.gk, 1
  %i.gm = inttoptr i64 %i.gl to ptr
  store ptr %i.gm, ptr %0, align 8, !tbaa !203
  br label %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit31

_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit31: ; preds = %_ZNK4llvh5Error3isAINS_9ErrorListEEEbv.exit17.thread, %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit21, %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit, %bb.d, %bb.b
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !292  ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !298    ; 10 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775800
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #34
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 1152921504606846975)
  %i.m = select i1 %i.k, i64 1152921504606846975, i64 %i.l ; 3 uses
  %i.n = ptrtoint ptr %1 to i64
  %i.o = sub i64 %i.n, %i.f
  %.not.i = icmp ne i64 %i.m, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.p = shl nuw nsw i64 %i.m, 3
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #32 ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  %i.s = load i64, ptr %2, align 8, !tbaa !206
  store i64 %i.s, ptr %i.r, align 8, !tbaa !206
  store ptr null, ptr %2, align 8, !tbaa !206
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit
  %3 = add i64 %i.a, -8
  %i.t = sub i64 %3, %i.f                         ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader62, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.w = add i64 %i.a, -8
  %i.x = sub i64 %i.w, %i.f
  %i.y = and i64 %i.x, -8
  %i.z = add i64 %i.y, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.z
  %scevgep35 = getelementptr i8, ptr %i.d, i64 %i.z
  %bound0 = icmp ult ptr %i.q, %scevgep35
  %bound1 = icmp ult ptr %i.d, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader62, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.aa = shl i64 %n.vec, 3                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.q, i64 %i.aa   ; 2 uses
  %i.ac = getelementptr i8, ptr %i.d, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.q, i64 %i.ad ; 2 uses
  %next.gep36 = getelementptr i8, ptr %i.d, i64 %i.ad ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  %i.ae = getelementptr i8, ptr %next.gep36, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep36, align 8, !tbaa !206, !alias.scope !340, !noalias !335
  %wide.load37 = load <2 x i64>, ptr %i.ae, align 8, !tbaa !206, !alias.scope !340, !noalias !335
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !206, !alias.scope !343, !noalias !340
  store <2 x i64> %wide.load37, ptr %i.af, align 8, !tbaa !206, !alias.scope !343, !noalias !340
  %i.ag = getelementptr i8, ptr %next.gep36, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep36, align 8, !tbaa !206, !alias.scope !340, !noalias !335
  store <2 x ptr> splat (ptr null), ptr %i.ag, align 8, !tbaa !206, !alias.scope !340, !noalias !335
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !345

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.preheader62

.lr.ph.i.i.i.preheader62:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.q, %vector.memcheck ], [ %i.q, %.lr.ph.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.d, %vector.memcheck ], [ %i.d, %.lr.ph.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader62, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader62 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader62 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  %i.ai = load i64, ptr %.0911.i.i.i, align 8, !tbaa !206, !alias.scope !338, !noalias !335
  store i64 %i.ai, ptr %.012.i.i.i, align 8, !tbaa !206, !alias.scope !335, !noalias !338
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !206, !alias.scope !338, !noalias !335
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aj, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !346

_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %_ZNKSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit ], [ %i.ab, %middle.block ], [ %i.ak, %.lr.ph.i.i.i ] ; 2 uses
  %i.al = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %4 = add i64 %i.e, -8
  %i.am = sub i64 %4, %i.a                        ; 2 uses
  %i.an = lshr i64 %i.am, 3
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check46 = icmp ult i64 %i.am, 184
  br i1 %min.iters.check46, label %.lr.ph.i.i.i17.preheader61, label %vector.memcheck39

vector.memcheck39:                                ; preds = %.lr.ph.i.i.i17.preheader
  %i.ap = add i64 %i.e, -8
  %i.aq = sub i64 %i.ap, %i.a
  %i.ar = and i64 %i.aq, -8                       ; 2 uses
  %i.as = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.ar
  %scevgep40 = getelementptr i8, ptr %i.as, i64 16
  %i.at = getelementptr i8, ptr %1, i64 %i.ar
  %scevgep41 = getelementptr i8, ptr %i.at, i64 8
  %bound042 = icmp ult ptr %i.al, %scevgep41
  %bound143 = icmp ult ptr %1, %scevgep40
  %found.conflict44 = and i1 %bound042, %bound143
  br i1 %found.conflict44, label %.lr.ph.i.i.i17.preheader61, label %vector.ph47

vector.ph47:                                      ; preds = %vector.memcheck39
  %n.vec49 = and i64 %i.ao, 4611686018427387900   ; 3 uses
  %i.au = shl i64 %n.vec49, 3                     ; 2 uses
  %i.av = getelementptr i8, ptr %i.al, i64 %i.au  ; 2 uses
  %i.aw = getelementptr i8, ptr %1, i64 %i.au
  br label %vector.body50

vector.body50:                                    ; preds = %vector.body50, %vector.ph47
  %index51 = phi i64 [ 0, %vector.ph47 ], [ %index.next56, %vector.body50 ] ; 2 uses
  %i.ax = shl i64 %index51, 3                     ; 2 uses
  %next.gep52 = getelementptr i8, ptr %i.al, i64 %i.ax ; 2 uses
  %next.gep53 = getelementptr i8, ptr %1, i64 %i.ax ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !350)
  %i.ay = getelementptr i8, ptr %next.gep53, i64 16
  %wide.load54 = load <2 x i64>, ptr %next.gep53, align 8, !tbaa !206, !alias.scope !352, !noalias !347
  %wide.load55 = load <2 x i64>, ptr %i.ay, align 8, !tbaa !206, !alias.scope !352, !noalias !347
  %i.az = getelementptr i8, ptr %next.gep52, i64 16
  store <2 x i64> %wide.load54, ptr %next.gep52, align 8, !tbaa !206, !alias.scope !355, !noalias !352
  store <2 x i64> %wide.load55, ptr %i.az, align 8, !tbaa !206, !alias.scope !355, !noalias !352
  %i.ba = getelementptr i8, ptr %next.gep53, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep53, align 8, !tbaa !206, !alias.scope !352, !noalias !347
  store <2 x ptr> splat (ptr null), ptr %i.ba, align 8, !tbaa !206, !alias.scope !352, !noalias !347
  %index.next56 = add nuw i64 %index51, 4         ; 2 uses
  %i.bb = icmp eq i64 %index.next56, %n.vec49
  br i1 %i.bb, label %middle.block57, label %vector.body50, !llvm.loop !357

middle.block57:                                   ; preds = %vector.body50
  %cmp.n58 = icmp eq i64 %i.ao, %n.vec49
  br i1 %cmp.n58, label %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17.preheader61

.lr.ph.i.i.i17.preheader61:                       ; preds = %vector.memcheck39, %.lr.ph.i.i.i17.preheader, %middle.block57
  %.012.i.i.i18.ph = phi ptr [ %i.al, %vector.memcheck39 ], [ %i.al, %.lr.ph.i.i.i17.preheader ], [ %i.av, %middle.block57 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck39 ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.aw, %middle.block57 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader61, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.be, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader61 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.bd, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader61 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !350)
  %i.bc = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !206, !alias.scope !350, !noalias !347
  store i64 %i.bc, ptr %.012.i.i.i18, align 8, !tbaa !206, !alias.scope !347, !noalias !350
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !206, !alias.scope !350, !noalias !347
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.bd, %i.c
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !358

_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block57, %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.al, %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.av, %middle.block57 ], [ %i.be, %.lr.ph.i.i.i17 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.d, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !294
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.bh, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bi) #33
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, %bb.c
  store ptr %i.q, ptr %0, align 8, !tbaa !298
  store ptr %.0.lcssa.i.i.i21, ptr %i.b, align 8, !tbaa !292
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.m
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !294
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #23

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #20

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh3sys2fs18directory_iteratorC2ERKNS_5TwineERSt10error_codeb(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(18) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext %3) unnamed_addr #0 comdat align 2 {
_ZNSt12__shared_ptrIN4llvh3sys2fs6detail12DirIterStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit:
  %4 = alloca %"class.llvh::SmallString.11", align 8 ; 9 uses
  %i.a = zext i1 %3 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i8 %i.a, ptr %i.b, align 8, !tbaa !359
  %i.c = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #32, !noalias !362 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 1, ptr %i.d, align 8, !tbaa !220, !noalias !367
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 1, ptr %i.e, align 4, !tbaa !222, !noalias !367
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN4llvh3sys2fs6detail12DirIterStateESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.c, align 8, !tbaa !223, !noalias !367
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, i8 0, i64 48, i1 false), !noalias !367
  store ptr %i.h, ptr %i.g, align 8, !tbaa !71, !noalias !367
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, i8 0, i64 36, i1 false), !noalias !367
  store i32 65535, ptr %i.j, align 4, !tbaa !198, !noalias !367
  store ptr %i.f, ptr %0, align 8, !tbaa !368
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.k, align 8, !tbaa !219
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 17
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.l, ptr %4, align 8, !tbaa !36
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 0, ptr %i.m, align 8, !tbaa !38
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 128, ptr %i.n, align 4, !tbaa !39
  %.not.i.i5 = icmp eq i8 %.pre, 1
  br i1 %.not.i.i5, label %bb.a, label %bb.g

bb.a:                                             ; preds = %_ZNSt12__shared_ptrIN4llvh3sys2fs6detail12DirIterStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i8, ptr %i.o, align 8, !tbaa !40
  switch i8 %i.p, label %bb.g [
    i8 1, label %_ZNK4llvh5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit
    i8 3, label %bb.b
    i8 4, label %bb.d
    i8 5, label %bb.e
    i8 6, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %1, align 8, !tbaa !12     ; 3 uses
  %.not.i.i.i6 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i6, label %_ZNK4llvh5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.q) #29
  br label %_ZNK4llvh5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit

bb.d:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %1, align 8, !tbaa !12     ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !44
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !47
  br label %_ZNK4llvh5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit

bb.e:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %1, align 8, !tbaa !12     ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.w, align 8, !tbaa !7
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !tbaa !10
  br label %_ZNK4llvh5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit

bb.f:                                             ; preds = %bb.a
  %i.x = load ptr, ptr %1, align 8, !tbaa !12     ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !36
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !38
  %i.ab = zext i32 %i.aa to i64
  br label %_ZNK4llvh5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit

bb.g:                                             ; preds = %bb.a, %_ZNSt12__shared_ptrIN4llvh3sys2fs6detail12DirIterStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @_ZNK4llvh5Twine8toVectorERNS_15SmallVectorImplIcEE(ptr noundef nonnull align 8 dereferenceable(18) %1, ptr noundef nonnull align 8 dereferenceable(16) %4) #30
  %i.ac = load ptr, ptr %4, align 8, !tbaa !36
  %i.ad = load i32, ptr %i.m, align 8, !tbaa !38
  %i.ae = zext i32 %i.ad to i64
  %.pre8 = load i8, ptr %i.b, align 8, !tbaa !359, !range !145
  %i.af = trunc nuw i8 %.pre8 to i1
  br label %_ZNK4llvh5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit

_ZNK4llvh5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %i.ag = phi i1 [ %i.af, %bb.g ], [ %3, %bb.f ], [ %3, %bb.a ], [ %3, %bb.d ], [ %3, %bb.e ], [ %3, %bb.b ], [ %3, %bb.c ]
  %.sroa.3.0.i = phi i64 [ %i.ae, %bb.g ], [ %i.ab, %bb.f ], [ 0, %bb.a ], [ %i.v, %bb.d ], [ %.sroa.7.0.copyload.i.i, %bb.e ], [ 0, %bb.b ], [ %i.r, %bb.c ]
  %.sroa.0.0.i = phi ptr [ %i.ac, %bb.g ], [ %i.y, %bb.f ], [ null, %bb.a ], [ %i.t, %bb.d ], [ %.sroa.0.0.copyload.i.i, %bb.e ], [ null, %bb.b ], [ %i.q, %bb.c ]
  %i.ah = call { i32, ptr } @_ZN4llvh3sys2fs6detail28directory_iterator_constructERNS2_12DirIterStateENS_9StringRefEb(ptr noundef nonnull align 8 dereferenceable(88) %i.f, ptr %.sroa.0.0.i, i64 %.sroa.3.0.i, i1 noundef zeroext %i.ag) ; 2 uses
  %i.ai = extractvalue { i32, ptr } %i.ah, 0
  %i.aj = extractvalue { i32, ptr } %i.ah, 1
  store i32 %i.ai, ptr %2, align 8, !tbaa !3
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.aj, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !149
  %i.ak = load ptr, ptr %4, align 8, !tbaa !36    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.l
  br i1 %i.al, label %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK4llvh5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit
  call void @free(ptr noundef %i.ak) #30
end_hunk_0
