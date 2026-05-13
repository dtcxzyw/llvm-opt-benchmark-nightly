inline.NumInlined: 2118
inline.NumDeleted: 1345
begin_hunk_0_@_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS4_S6_EEEEvSB_T_SC_St20forward_iterator_tag:bb.a
  %i.cw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cv) #22
  br label %_ZNSt12_Vector_baseISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit, %bb.p
  %i.cx = phi ptr [ %i.cw, %bb.p ], [ null, %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit ] ; 7 uses
  %.not11.i.i.i.i.i59 = icmp eq ptr %i.cl, %1
  br i1 %.not11.i.i.i.i.i59, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i60.preheader

.lr.ph.i.i.i.i.i60.preheader:                     ; preds = %_ZNSt12_Vector_baseISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_M_allocateEm.exit
  %i.cy = ptrtoaddr ptr %i.cx to i64
  %i.cz = add i64 %i.a, -8
  %i.da = sub i64 %i.cz, %i.cm                    ; 2 uses
  %i.db = lshr i64 %i.da, 3
  %i.dc = add nuw nsw i64 %i.db, 1                ; 2 uses
  %min.iters.check161 = icmp ult i64 %i.da, 56
  %i.dd = sub i64 %i.cy, %i.cm
  %diff.check159 = icmp ult i64 %i.dd, 32
  %or.cond215 = or i1 %min.iters.check161, %diff.check159
  br i1 %or.cond215, label %.lr.ph.i.i.i.i.i60.preheader220, label %vector.ph162

vector.ph162:                                     ; preds = %.lr.ph.i.i.i.i.i60.preheader
  %n.vec164 = and i64 %i.dc, 4611686018427387900  ; 3 uses
  %i.de = shl i64 %n.vec164, 3                    ; 2 uses
  %i.df = getelementptr i8, ptr %i.cx, i64 %i.de  ; 2 uses
  %i.dg = getelementptr i8, ptr %i.cl, i64 %i.de
  br label %vector.body165

vector.body165:                                   ; preds = %vector.body165, %vector.ph162
  %index166 = phi i64 [ 0, %vector.ph162 ], [ %index.next171, %vector.body165 ] ; 2 uses
  %i.dh = shl i64 %index166, 3                    ; 2 uses
  %next.gep167 = getelementptr i8, ptr %i.cx, i64 %i.dh ; 2 uses
  %next.gep168 = getelementptr i8, ptr %i.cl, i64 %i.dh ; 2 uses
  %i.di = getelementptr i8, ptr %next.gep168, i64 16
  %wide.load169 = load <2 x i64>, ptr %next.gep168, align 8
  %wide.load170 = load <2 x i64>, ptr %i.di, align 8
  %i.dj = getelementptr i8, ptr %next.gep167, i64 16
  store <2 x i64> %wide.load169, ptr %next.gep167, align 8
  store <2 x i64> %wide.load170, ptr %i.dj, align 8
  %index.next171 = add nuw i64 %index166, 4       ; 2 uses
  %i.dk = icmp eq i64 %index.next171, %n.vec164
  br i1 %i.dk, label %middle.block172, label %vector.body165, !llvm.loop !524

middle.block172:                                  ; preds = %vector.body165
  %cmp.n173 = icmp eq i64 %i.dc, %n.vec164
  br i1 %cmp.n173, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i60.preheader220

.lr.ph.i.i.i.i.i60.preheader220:                  ; preds = %.lr.ph.i.i.i.i.i60.preheader, %middle.block172
  %.013.i.i.i.i.i61.ph = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i60.preheader ], [ %i.df, %middle.block172 ]
  %.sroa.08.012.i.i.i.i.i62.ph = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i60.preheader ], [ %i.dg, %middle.block172 ]
  br label %.lr.ph.i.i.i.i.i60

.lr.ph.i.i.i.i.i60:                               ; preds = %.lr.ph.i.i.i.i.i60.preheader220, %.lr.ph.i.i.i.i.i60
  %.013.i.i.i.i.i61 = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i60 ], [ %.013.i.i.i.i.i61.ph, %.lr.ph.i.i.i.i.i60.preheader220 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i62 = phi ptr [ %i.dm, %.lr.ph.i.i.i.i.i60 ], [ %.sroa.08.012.i.i.i.i.i62.ph, %.lr.ph.i.i.i.i.i60.preheader220 ] ; 2 uses
  %i.dl = load i64, ptr %.sroa.08.012.i.i.i.i.i62, align 8
  store i64 %i.dl, ptr %.013.i.i.i.i.i61, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i62, i64 8 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i61, i64 8 ; 2 uses
  %.not.i.i.i.i.i63 = icmp eq ptr %i.dm, %1
  br i1 %.not.i.i.i.i.i63, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i60, !llvm.loop !525

_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i60, %middle.block172, %_ZNSt12_Vector_baseISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_M_allocateEm.exit
  %.0.lcssa.i.i.i.i.i64 = phi ptr [ %i.cx, %_ZNSt12_Vector_baseISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_M_allocateEm.exit ], [ %i.df, %middle.block172 ], [ %i.dn, %.lr.ph.i.i.i.i.i60 ] ; 4 uses
  %i.do = add i64 %i.b, -8
  %i.dp = sub i64 %i.do, %i.c                     ; 2 uses
  %i.dq = lshr i64 %i.dp, 3
  %i.dr = add nuw nsw i64 %i.dq, 1                ; 2 uses
  %min.iters.check180 = icmp ult i64 %i.dp, 56
  %.0.lcssa.i.i.i.i.i64177 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i64 to i64
  %i.ds = sub i64 %.0.lcssa.i.i.i.i.i64177, %i.c
  %diff.check178 = icmp ult i64 %i.ds, 32
  %or.cond216 = select i1 %min.iters.check180, i1 true, i1 %diff.check178
  br i1 %or.cond216, label %.lr.ph.i.i.i.i66.preheader, label %vector.ph181

vector.ph181:                                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit
  %n.vec183 = and i64 %i.dr, 4611686018427387900  ; 3 uses
  %i.dt = shl i64 %n.vec183, 3                    ; 2 uses
  %i.du = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i64, i64 %i.dt ; 2 uses
  %i.dv = getelementptr i8, ptr %2, i64 %i.dt
  br label %vector.body184

vector.body184:                                   ; preds = %vector.body184, %vector.ph181
  %index185 = phi i64 [ 0, %vector.ph181 ], [ %index.next190, %vector.body184 ] ; 2 uses
  %i.dw = shl i64 %index185, 3                    ; 2 uses
  %next.gep186 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i64, i64 %i.dw ; 2 uses
  %next.gep187 = getelementptr i8, ptr %2, i64 %i.dw ; 2 uses
  %i.dx = getelementptr i8, ptr %next.gep187, i64 16
  %wide.load188 = load <2 x i64>, ptr %next.gep187, align 8
  %wide.load189 = load <2 x i64>, ptr %i.dx, align 8
  %i.dy = getelementptr i8, ptr %next.gep186, i64 16
  store <2 x i64> %wide.load188, ptr %next.gep186, align 8
  store <2 x i64> %wide.load189, ptr %i.dy, align 8
  %index.next190 = add nuw i64 %index185, 4       ; 2 uses
  %i.dz = icmp eq i64 %index.next190, %n.vec183
  br i1 %i.dz, label %middle.block191, label %vector.body184, !llvm.loop !526

middle.block191:                                  ; preds = %vector.body184
  %cmp.n192 = icmp eq i64 %i.dr, %n.vec183
  br i1 %cmp.n192, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEES7_S6_ET0_T_SD_SC_RSaIT1_E.exit71, label %.lr.ph.i.i.i.i66.preheader

.lr.ph.i.i.i.i66.preheader:                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, %middle.block191
  %.09.i.i.i.i67.ph = phi ptr [ %.0.lcssa.i.i.i.i.i64, %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit ], [ %i.du, %middle.block191 ]
  %.sroa.04.08.i.i.i.i68.ph = phi ptr [ %2, %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit ], [ %i.dv, %middle.block191 ]
  br label %.lr.ph.i.i.i.i66

.lr.ph.i.i.i.i66:                                 ; preds = %.lr.ph.i.i.i.i66.preheader, %.lr.ph.i.i.i.i66
  %.09.i.i.i.i67 = phi ptr [ %i.ec, %.lr.ph.i.i.i.i66 ], [ %.09.i.i.i.i67.ph, %.lr.ph.i.i.i.i66.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i68 = phi ptr [ %i.eb, %.lr.ph.i.i.i.i66 ], [ %.sroa.04.08.i.i.i.i68.ph, %.lr.ph.i.i.i.i66.preheader ] ; 2 uses
  %i.ea = load i64, ptr %.sroa.04.08.i.i.i.i68, align 8
  store i64 %i.ea, ptr %.09.i.i.i.i67, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i68, i64 8 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i67, i64 8 ; 2 uses
  %.not.i.i.i.i69 = icmp eq ptr %i.eb, %3
  br i1 %.not.i.i.i.i69, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEES7_S6_ET0_T_SD_SC_RSaIT1_E.exit71, label %.lr.ph.i.i.i.i66, !llvm.loop !527

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEES7_S6_ET0_T_SD_SC_RSaIT1_E.exit71: ; preds = %.lr.ph.i.i.i.i66, %middle.block191
  %.lcssa117 = phi ptr [ %i.du, %middle.block191 ], [ %i.ec, %.lr.ph.i.i.i.i66 ] ; 5 uses
  %.not11.i.i.i.i.i72 = icmp eq ptr %1, %i.i
  br i1 %.not11.i.i.i.i.i72, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit78, label %.lr.ph.i.i.i.i.i73.preheader

.lr.ph.i.i.i.i.i73.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEES7_S6_ET0_T_SD_SC_RSaIT1_E.exit71
  %.lcssa117196 = ptrtoaddr ptr %.lcssa117 to i64
  %i.ed = add i64 %i.k, -8
  %i.ee = sub i64 %i.ed, %i.a                     ; 2 uses
  %i.ef = lshr i64 %i.ee, 3
  %i.eg = add nuw nsw i64 %i.ef, 1                ; 2 uses
  %min.iters.check199 = icmp ult i64 %i.ee, 56
  %i.eh = sub i64 %.lcssa117196, %i.a
  %diff.check197 = icmp ult i64 %i.eh, 32
  %or.cond217 = select i1 %min.iters.check199, i1 true, i1 %diff.check197
  br i1 %or.cond217, label %.lr.ph.i.i.i.i.i73.preheader218, label %vector.ph200

vector.ph200:                                     ; preds = %.lr.ph.i.i.i.i.i73.preheader
  %n.vec202 = and i64 %i.eg, 4611686018427387900  ; 3 uses
  %i.ei = shl i64 %n.vec202, 3                    ; 2 uses
  %i.ej = getelementptr i8, ptr %.lcssa117, i64 %i.ei ; 2 uses
  %i.ek = getelementptr i8, ptr %1, i64 %i.ei
  br label %vector.body203

vector.body203:                                   ; preds = %vector.body203, %vector.ph200
  %index204 = phi i64 [ 0, %vector.ph200 ], [ %index.next209, %vector.body203 ] ; 2 uses
  %i.el = shl i64 %index204, 3                    ; 2 uses
  %next.gep205 = getelementptr i8, ptr %.lcssa117, i64 %i.el ; 2 uses
  %next.gep206 = getelementptr i8, ptr %1, i64 %i.el ; 2 uses
  %i.em = getelementptr i8, ptr %next.gep206, i64 16
  %wide.load207 = load <2 x i64>, ptr %next.gep206, align 8
  %wide.load208 = load <2 x i64>, ptr %i.em, align 8
  %i.en = getelementptr i8, ptr %next.gep205, i64 16
  store <2 x i64> %wide.load207, ptr %next.gep205, align 8
  store <2 x i64> %wide.load208, ptr %i.en, align 8
  %index.next209 = add nuw i64 %index204, 4       ; 2 uses
  %i.eo = icmp eq i64 %index.next209, %n.vec202
  br i1 %i.eo, label %middle.block210, label %vector.body203, !llvm.loop !528

middle.block210:                                  ; preds = %vector.body203
  %cmp.n211 = icmp eq i64 %i.eg, %n.vec202
  br i1 %cmp.n211, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit78, label %.lr.ph.i.i.i.i.i73.preheader218

.lr.ph.i.i.i.i.i73.preheader218:                  ; preds = %.lr.ph.i.i.i.i.i73.preheader, %middle.block210
  %.013.i.i.i.i.i74.ph = phi ptr [ %.lcssa117, %.lr.ph.i.i.i.i.i73.preheader ], [ %i.ej, %middle.block210 ]
  %.sroa.08.012.i.i.i.i.i75.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i73.preheader ], [ %i.ek, %middle.block210 ]
  br label %.lr.ph.i.i.i.i.i73

.lr.ph.i.i.i.i.i73:                               ; preds = %.lr.ph.i.i.i.i.i73.preheader218, %.lr.ph.i.i.i.i.i73
  %.013.i.i.i.i.i74 = phi ptr [ %i.er, %.lr.ph.i.i.i.i.i73 ], [ %.013.i.i.i.i.i74.ph, %.lr.ph.i.i.i.i.i73.preheader218 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i75 = phi ptr [ %i.eq, %.lr.ph.i.i.i.i.i73 ], [ %.sroa.08.012.i.i.i.i.i75.ph, %.lr.ph.i.i.i.i.i73.preheader218 ] ; 2 uses
  %i.ep = load i64, ptr %.sroa.08.012.i.i.i.i.i75, align 8
  store i64 %i.ep, ptr %.013.i.i.i.i.i74, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i75, i64 8 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i74, i64 8 ; 2 uses
  %.not.i.i.i.i.i76 = icmp eq ptr %i.eq, %i.i
  br i1 %.not.i.i.i.i.i76, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit78, label %.lr.ph.i.i.i.i.i73, !llvm.loop !529

_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit78: ; preds = %.lr.ph.i.i.i.i.i73, %middle.block210, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEES7_S6_ET0_T_SD_SC_RSaIT1_E.exit71
  %.0.lcssa.i.i.i.i.i77 = phi ptr [ %.lcssa117, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEES7_S6_ET0_T_SD_SC_RSaIT1_E.exit71 ], [ %i.ej, %middle.block210 ], [ %i.er, %.lr.ph.i.i.i.i.i73 ]
  %.not.i79 = icmp eq ptr %i.cl, null
  br i1 %.not.i79, label %_ZNSt12_Vector_baseISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit78
  tail call void @_ZdlPv(ptr noundef nonnull %i.cl) #20
  br label %_ZNSt12_Vector_baseISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit78, %bb.q
  store ptr %i.cx, ptr %0, align 8, !tbaa !126
  store ptr %.0.lcssa.i.i.i.i.i77, ptr %i.h, align 8, !tbaa !373
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.cu
  store ptr %i.es, ptr %i.f, align 8, !tbaa !374
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE13_M_deallocateEPS4_m.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17RecursiveCTEStateC2ERNS_13ClientContextERKNS_20PhysicalRecursiveCTEE(ptr noundef nonnull align 8 dereferenceable(992) %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(360) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::vector", align 8    ; 6 uses
  %4 = alloca %"class.duckdb::vector.757", align 8 ; 10 uses
  %5 = alloca %"class.duckdb::unique_ptr.263", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.a, align 8, !tbaa !423
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, i8 0, i64 64, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.c, align 8, !tbaa !530
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb17RecursiveCTEStateE, i64 16), ptr %0, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i8 0, i64 48, i1 false)
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit unwind label %bb.h

_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit: ; preds = %bb.a
  invoke void @_ZN6duckdb20ColumnDataCollectionC1ERNS_13ClientContextENS_6vectorINS_11LogicalTypeELb1ESaIS4_EEENS_23ColumnDataAllocatorTypeENS_28ColumnDataCollectionLifetimeE(ptr noundef nonnull align 8 dereferenceable(112) %i.e, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull %3, i8 noundef zeroext 0, i32 noundef 0)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit
  %i.g = load ptr, ptr %3, align 8, !tbaa !12     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !13   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i ], [ %i.g, %bb.b ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i) #19
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.i
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !14

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !12
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.b
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.g, %bb.b ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.k) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.l, i8 0, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 312
  store ptr %i.n, ptr %i.m, align 8, !tbaa !316
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i64 1, ptr %i.o, align 8, !tbaa !317
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 296
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.q, align 8, !tbaa !318
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.r, i8 0, i64 17, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %i.s, i8 0, i64 26, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 noundef 2048)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.u) #19
  br label %.body

_ZN6duckdb15SelectionVectorC2Em.exit:             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 488
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(568) %i.w, i8 0, i64 57, i1 false)
  invoke void @_ZN6duckdb19TupleDataChunkStateC2Ev(ptr noundef nonnull align 8 dereferenceable(488) %i.x)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 432
  call void @_ZN6duckdb17TupleDataPinStateD2Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(560) %i.z) #19
  br label %.body27

bb.g:                                             ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 976
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 -1, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 336 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 344 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !147
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !146
  %.not = icmp eq ptr %i.ad, %i.ae
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.j

._crit_edge:                                      ; preds = %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE9push_backEOS2_.exit, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.ah = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %1)
          to label %bb.r unwind label %bb.u

bb.h:                                             ; preds = %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.i:                                             ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  br label %bb.x

bb.j:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE9push_backEOS2_.exit
  %6 = phi ptr [ null, %.lr.ph ], [ %9, %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE9push_backEOS2_.exit ] ; 8 uses
  %7 = phi ptr [ null, %.lr.ph ], [ %10, %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE9push_backEOS2_.exit ] ; 3 uses
  %8 = phi ptr [ null, %.lr.ph ], [ %11, %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE9push_backEOS2_.exit ] ; 3 uses
  %.01438 = phi i64 [ 0, %.lr.ph ], [ %i.bc, %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE9push_backEOS2_.exit ] ; 2 uses
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_24BoundAggregateExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 noundef %.01438)
          to label %bb.k unwind label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !148 ; 2 uses
  %.not.i.i = icmp eq ptr %8, %7
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %i.al, ptr %8, align 8, !tbaa !148
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.af, align 8, !tbaa !531
  br label %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE9push_backEOS2_.exit

bb.m:                                             ; preds = %bb.k
  %i.an = ptrtoint ptr %7 to i64
  %i.ao = ptrtoint ptr %6 to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 5 uses
  %i.aq = icmp eq i64 %i.ap, 9223372036854775800
  br i1 %i.aq, label %bb.n, label %_ZNKSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #21
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.n
  unreachable

_ZNKSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.m
  %i.ar = ashr exact i64 %i.ap, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.as = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ar ; 2 uses
  %i.at = icmp ult i64 %i.as, %i.ar
  %i.au = call i64 @llvm.umin.i64(i64 %i.as, i64 1152921504606846975)
  %i.av = select i1 %i.at, i64 1152921504606846975, i64 %i.au ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.av, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.aw = shl nuw nsw i64 %i.av, 3
  %i.ax = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #22
          to label %.noexc29 unwind label %.loopexit ; 5 uses

.noexc29:                                         ; preds = %_ZNKSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 %i.ap ; 2 uses
  store ptr %i.al, ptr %i.ay, align 8, !tbaa !148
  %i.az = icmp sgt i64 %i.ap, 0
  br i1 %i.az, label %bb.o, label %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.o:                                             ; preds = %.noexc29
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ax, ptr align 8 %6, i64 %i.ap, i1 false)
  br label %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.o, %.noexc29
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %6, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %6) #20
  br label %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.p, %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.ax, ptr %4, align 8, !tbaa !534
  store ptr %i.ba, ptr %i.af, align 8, !tbaa !531
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.av ; 2 uses
  store ptr %i.bb, ptr %i.ag, align 8, !tbaa !535
  br label %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.l
  %9 = phi ptr [ %i.ax, %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %6, %bb.l ]
  %10 = phi ptr [ %i.bb, %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %7, %bb.l ]
  %11 = phi ptr [ %i.ba, %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.am, %bb.l ]
  %i.bc = add nuw i64 %.01438, 1                  ; 2 uses
  %i.bd = load ptr, ptr %i.ac, align 8, !tbaa !147
  %i.be = load ptr, ptr %i.ab, align 8, !tbaa !146
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 3
  %i.bj = icmp ult i64 %i.bc, %i.bi
  br i1 %i.bj, label %bb.j, label %._crit_edge, !llvm.loop !536

bb.q:                                             ; preds = %bb.j
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.loopexit:                                        ; preds = %_ZNKSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.loopexit.split-lp:                               ; preds = %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.r:                                             ; preds = %._crit_edge
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 240
  invoke void @_ZN6duckdb9make_uniqINS_25GroupedAggregateHashTableEJRNS_13ClientContextERNS_9AllocatorERKNS_6vectorINS_11LogicalTypeELb1ESaIS7_EEESB_RNS6_IPNS_24BoundAggregateExpressionELb1ESaISD_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.263") align 8 %5, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.bn = load ptr, ptr %5, align 8, !tbaa !163
  store ptr null, ptr %5, align 8, !tbaa !163
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !163 ; 3 uses
  store ptr %i.bn, ptr %i.d, align 8, !tbaa !163
  %.not.i.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb25GroupedAggregateHashTableESt14default_deleteIS1_EED2Ev.exit, label %_ZN6duckdb10unique_ptrINS_25GroupedAggregateHashTableESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_25GroupedAggregateHashTableESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.s
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(2912) %i.bo) #19, !inline_history !537
  %.pr = load ptr, ptr %5, align 8, !tbaa !163    ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb25GroupedAggregateHashTableESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb25GroupedAggregateHashTableEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb25GroupedAggregateHashTableEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_25GroupedAggregateHashTableESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.bs = load ptr, ptr %.pr, align 8, !tbaa !16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(2912) %.pr) #19, !inline_history !538
  br label %_ZNSt10unique_ptrIN6duckdb25GroupedAggregateHashTableESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb25GroupedAggregateHashTableESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.s, %_ZN6duckdb10unique_ptrINS_25GroupedAggregateHashTableESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb25GroupedAggregateHashTableEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.bv = load ptr, ptr %4, align 8, !tbaa !534   ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i30, label %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb25GroupedAggregateHashTableESt14default_deleteIS1_EED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.bv) #20
  br label %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EED2Ev.exit

_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb25GroupedAggregateHashTableESt14default_deleteIS1_EED2Ev.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret void

bb.u:                                             ; preds = %bb.r, %._crit_edge
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %.pre = load ptr, ptr %4, align 8, !tbaa !534
  br label %bb.v

bb.v:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.q, %bb.u
  %12 = phi ptr [ %.pre, %bb.u ], [ %6, %bb.q ], [ %6, %.loopexit ], [ %6, %.loopexit.split-lp ] ; 2 uses
  %.pn.pn = phi { ptr, i32 } [ %i.bw, %bb.u ], [ %i.bk, %bb.q ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i31 = icmp eq ptr %12, null
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EED2Ev.exit32, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZdlPv(ptr noundef nonnull %12) #20
  br label %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EED2Ev.exit32

_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EED2Ev.exit32: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @_ZN6duckdb20AggregateHTScanStateD2Ev(ptr noundef nonnull align 8 dead_on_return(568) dereferenceable(568) %i.w) #19
  br label %.body27

.body27:                                          ; preds = %bb.f, %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EED2Ev.exit32
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EED2Ev.exit32 ], [ %i.y, %bb.f ]
  call void @_ZN6duckdb15SelectionVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.t) #19
  br label %.body

.body:                                            ; preds = %bb.e, %.body27
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body27 ], [ %i.v, %bb.e ]
  call void @_ZN6duckdb19ColumnDataScanStateD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.l) #19
  call void @_ZN6duckdb20ColumnDataCollectionD1Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %i.e) #19
  br label %bb.x

bb.x:                                             ; preds = %.body, %bb.i, %bb.h
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %.body ], [ %i.aj, %bb.i ], [ %i.ai, %bb.h ]
  %i.bx = load ptr, ptr %i.d, align 8, !tbaa !163 ; 3 uses
  %.not.i33 = icmp eq ptr %i.bx, null
  br i1 %.not.i33, label %_ZNSt10unique_ptrIN6duckdb25GroupedAggregateHashTableESt14default_deleteIS1_EED2Ev.exit35, label %_ZNKSt14default_deleteIN6duckdb25GroupedAggregateHashTableEEclEPS1_.exit.i34

_ZNKSt14default_deleteIN6duckdb25GroupedAggregateHashTableEEclEPS1_.exit.i34: ; preds = %bb.x
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(2912) %i.bx) #19, !inline_history !538
  br label %_ZNSt10unique_ptrIN6duckdb25GroupedAggregateHashTableESt14default_deleteIS1_EED2Ev.exit35

_ZNSt10unique_ptrIN6duckdb25GroupedAggregateHashTableESt14default_deleteIS1_EED2Ev.exit35: ; preds = %bb.x, %_ZNKSt14default_deleteIN6duckdb25GroupedAggregateHashTableEEclEPS1_.exit.i34
  call void @_ZN6duckdb15GlobalSinkStateD2Ev(ptr noundef nonnull align 8 dereferenceable(81) %0) #19
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn
}

declare void @_ZN6duckdb20ColumnDataCollectionC1ERNS_13ClientContextENS_6vectorINS_11LogicalTypeELb1ESaIS4_EEENS_23ColumnDataAllocatorTypeENS_28ColumnDataCollectionLifetimeE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(512), ptr noundef, i8 noundef zeroext, i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_24BoundAggregateExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.148", align 1 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !147
  %i.e = load ptr, ptr %0, align 8, !tbaa !146    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !121
  store i64 %i.i, ptr %i.b, align 8, !tbaa !121
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZNK6duckdb6vectorINS_10unique_ptrINS_24BoundAggregateExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERKS5_m.exit, label %bb.b, !prof !122

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !117    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZNK6duckdb6vectorINS_10unique_ptrINS_24BoundAggregateExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERKS5_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9make_uniqINS_25GroupedAggregateHashTableEJRNS_13ClientContextERNS_9AllocatorERKNS_6vectorINS_11LogicalTypeELb1ESaIS7_EEESB_RNS6_IPNS_24BoundAggregateExpressionELb1ESaISD_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.263") align 8 %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.duckdb::vector", align 8    ; 6 uses
  %7 = alloca %"class.duckdb::vector", align 8    ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(2912) ptr @_Znwm(i64 noundef 2912) #22 ; 3 uses
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit unwind label %bb.f

_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit: ; preds = %bb.a
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit11 unwind label %bb.g

_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit11: ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit
  %i.b = invoke noundef i64 @_ZN6duckdb25GroupedAggregateHashTable15InitialCapacityEv()
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit11
  invoke void @_ZN6duckdb25GroupedAggregateHashTableC1ERNS_13ClientContextERNS_9AllocatorENS_6vectorINS_11LogicalTypeELb1ESaIS6_EEES8_RKNS5_IPNS_24BoundAggregateExpressionELb1ESaISA_EEEmmNS_21TupleDataValidityTypeE(ptr noundef nonnull align 8 dereferenceable(2912) %i.a, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.b, i64 noundef 0, i8 noundef zeroext 0)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  store ptr %i.a, ptr %0, align 8, !tbaa !163
  %i.c = load ptr, ptr %7, align 8, !tbaa !12     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.f, %.lr.ph.i.i.i ], [ %i.c, %bb.c ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i) #19
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, %i.e
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !14

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %7, align 8, !tbaa !12
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.c
  %i.g = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.c, %bb.c ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.g) #20
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.d
  %i.h = load ptr, ptr %6, align 8, !tbaa !12     ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !13   ; 2 uses
  %.not4.i.i.i12 = icmp eq ptr %i.h, %i.j
  br i1 %.not4.i.i.i12, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i18, label %.lr.ph.i.i.i13

.lr.ph.i.i.i13:                                   ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, %.lr.ph.i.i.i13
  %.05.i.i.i14 = phi ptr [ %i.k, %.lr.ph.i.i.i13 ], [ %i.h, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i14) #19
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i14, i64 24 ; 2 uses
  %.not.i.i.i15 = icmp eq ptr %i.k, %i.j
  br i1 %.not.i.i.i15, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i16, label %.lr.ph.i.i.i13, !llvm.loop !14

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i16: ; preds = %.lr.ph.i.i.i13
  %.pr.i17 = load ptr, ptr %6, align 8, !tbaa !12
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i18

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i18: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i16, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  %i.l = phi ptr [ %.pr.i17, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i16 ], [ %i.h, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i19 = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i19, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit20, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i18
  call void @_ZdlPv(ptr noundef nonnull %i.l) #20
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit20

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit20: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i18, %bb.e
  ret void

bb.f:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@llvm.umin.i64
!334 = !{!335, !336, i64 0}
!335 = !{!"_ZTSSt12__shared_ptrIN6duckdb5EventELN9__gnu_cxx12_Lock_policyE2EE", !336, i64 0, !105, i64 8}
!336 = !{!"p1 _ZTSN6duckdb5EventE", !9, i64 0}
!337 = !{!338, !333, i64 0}
!338 = !{!"_ZTSNSt12_Vector_baseIN6duckdb10shared_ptrINS0_5EventELb1EEESaIS3_EE17_Vector_impl_dataE", !333, i64 0, !333, i64 8, !333, i64 16}
!339 = !{!338, !333, i64 8}
!340 = distinct !{ptr @_ZNSt6vectorIN6duckdb10shared_ptrINS0_5EventELb1EEESaIS3_EED2Ev, null, null, null, null, null, null, null}
!341 = distinct !{!341, !15}
!342 = !{!343, !344, i64 0}
!343 = !{!"_ZTSNSt12_Vector_baseIN6duckdb10shared_ptrINS0_12MetaPipelineELb1EEESaIS3_EE17_Vector_impl_dataE", !344, i64 0, !344, i64 8, !344, i64 16}
!344 = !{!"p1 _ZTSN6duckdb10shared_ptrINS_12MetaPipelineELb1EEE", !9, i64 0}
!345 = !{!343, !344, i64 8}
!346 = distinct !{ptr @_ZNSt6vectorIN6duckdb10shared_ptrINS0_12MetaPipelineELb1EEESaIS3_EED2Ev, null, null, null, ptr @_ZN6duckdb10shared_ptrINS_12MetaPipelineELb1EED2Ev, null, null, null}
!347 = distinct !{!347, !15}
!348 = !{!349, !94, i64 0}
!349 = !{!"_ZTSSt12__shared_ptrIN6duckdb8PipelineELN9__gnu_cxx12_Lock_policyE2EE", !94, i64 0, !105, i64 8}
!350 = distinct !{null, null, null, null, null, null, null}
!351 = distinct !{null, null, null, ptr @_ZN6duckdb10shared_ptrINS_12MetaPipelineELb1EED2Ev, null, null, null}
!352 = distinct !{null, null, null, null, null}
!353 = !{!354, !354, i64 0}
!354 = !{!"p1 _ZTSN6duckdb20PhysicalRecursiveCTEE", !9, i64 0}
!355 = !{!9, !9, i64 0}
!356 = distinct !{null, ptr @_ZN6duckdb10shared_ptrINS_12MetaPipelineELb1EED2Ev, null, null, null}
!357 = !{!358, !24, i64 24}
!358 = !{!"_ZTSSt10_HashtableISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt4pairIKS4_S0_INS1_8PipelineEEESaIS9_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS3_EENS1_21ReferenceHashFunctionIS3_EENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE", !234, i64 0, !24, i64 8, !236, i64 16, !24, i64 24, !238, i64 32, !237, i64 48}
!359 = !{!360, !56, i64 0}
!360 = !{!"_ZTSSt17reference_wrapperIKN6duckdb16PhysicalOperatorEE", !56, i64 0}
!361 = distinct !{!361, !15}
!362 = !{!358, !24, i64 8}
!363 = !{!358, !234, i64 0}
!364 = !{!237, !237, i64 0}
!365 = !{!366, !24, i64 0}
!366 = !{!"_ZTSNSt8__detail21_Hash_node_code_cacheILb1EEE", !24, i64 0}
!367 = distinct !{!367, !15}
!368 = distinct !{ptr @_ZN6duckdb10shared_ptrINS_8PipelineELb1EED2Ev, null, null, null}
!369 = !{!370}
!370 = distinct !{!370, !371, !"_ZSt11make_sharedIN6duckdb12MetaPipelineEJRNS0_8ExecutorERNS0_18PipelineBuildStateEPNS0_20PhysicalRecursiveCTEEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_: argument 0"}
!371 = distinct !{!371, !"_ZSt11make_sharedIN6duckdb12MetaPipelineEJRNS0_8ExecutorERNS0_18PipelineBuildStateEPNS0_20PhysicalRecursiveCTEEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_"}
!372 = !{!20, !25, i64 40}
!373 = !{!127, !125, i64 8}
!374 = !{!127, !125, i64 16}
!375 = !{!376}
!376 = distinct !{!376, !377, !"_ZSt19__relocate_object_aISt17reference_wrapperIKN6duckdb16PhysicalOperatorEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!377 = distinct !{!377, !"_ZSt19__relocate_object_aISt17reference_wrapperIKN6duckdb16PhysicalOperatorEES4_SaIS4_EEvPT_PT0_RT1_"}
!378 = !{!379}
!379 = distinct !{!379, !377, !"_ZSt19__relocate_object_aISt17reference_wrapperIKN6duckdb16PhysicalOperatorEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!380 = distinct !{!380, !15, !87, !88}
!381 = distinct !{!381, !15, !87}
!382 = !{!383, !94, i64 0}
!383 = !{!"_ZTSSt10__weak_ptrIN6duckdb8PipelineELN9__gnu_cxx12_Lock_policyE2EE", !94, i64 0, !384, i64 8}
!384 = !{!"_ZTSSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EE", !106, i64 0}
!385 = !{!384, !106, i64 0}
!386 = distinct !{!386, !15}
!387 = distinct !{null, null, null, null}
!388 = distinct !{null, null, null}
!389 = !{!390, !234, i64 0}
!390 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !234, i64 0, !24, i64 8, !236, i64 16, !24, i64 24, !238, i64 32, !237, i64 48}
!391 = !{!390, !24, i64 8}
!392 = !{!393}
!393 = distinct !{!393, !394, !"_ZN6duckdb10StringUtil6FormatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_DpT_: argument 0"}
!394 = distinct !{!394, !"_ZN6duckdb10StringUtil6FormatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_DpT_"}
!395 = !{!396, !393}
!396 = distinct !{!396, !397, !"_ZN6duckdb9Exception16ConstructMessageIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_: argument 0"}
!397 = distinct !{!397, !"_ZN6duckdb9Exception16ConstructMessageIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_"}
!398 = !{!399, !400, i64 0}
!399 = !{!"_ZTSNSt12_Vector_baseIN6duckdb20ExceptionFormatValueESaIS1_EE17_Vector_impl_dataE", !400, i64 0, !400, i64 8, !400, i64 16}
!400 = !{!"p1 _ZTSN6duckdb20ExceptionFormatValueE", !9, i64 0}
!401 = !{!399, !400, i64 8}
!402 = distinct !{!402, !15}
!403 = !{!20, !24, i64 72}
!404 = !{!390, !24, i64 24}
!405 = distinct !{!405, !15}
!406 = distinct !{!406, !15}
!407 = !{!390, !237, i64 16}
!408 = distinct !{!408, !15}
!409 = !{!410, !411, i64 0}
!410 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_Vector_impl_dataE", !411, i64 0, !411, i64 8, !411, i64 16}
!411 = !{!"p1 _ZTSSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_E", !9, i64 0}
!412 = !{!410, !411, i64 8}
!413 = distinct !{!413, !15}
!414 = !{!415, !24, i64 176}
!415 = !{!"_ZTSN6duckdb11PhysicalCTEE", !20, i64 0, !416, i64 136, !132, i64 160, !24, i64 176, !118, i64 184}
!416 = !{!"_ZTSN6duckdb6vectorISt17reference_wrapperIKNS_16PhysicalOperatorEELb1ESaIS4_EEE", !417, i64 0}
!417 = !{!"_ZTSSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE", !418, i64 0}
!418 = !{!"_ZTSSt12_Vector_baseISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE", !419, i64 0}
!419 = !{!"_ZTSNSt12_Vector_baseISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_Vector_implE", !127, i64 0}
!420 = !{!421}
!421 = distinct !{!421, !422, !"_ZN6duckdb9make_uniqINS_14CTEGlobalStateEJRNS_13ClientContextERKNS_11PhysicalCTEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!422 = distinct !{!422, !"_ZN6duckdb9make_uniqINS_14CTEGlobalStateEJRNS_13ClientContextERKNS_11PhysicalCTEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!423 = !{!194, !48, i64 0}
!424 = !{!425, !135, i64 0}
!425 = !{!"_ZTSN6duckdb12optional_ptrINS_20ColumnDataCollectionELb1EEE", !135, i64 0}
!426 = !{!427, !428, i64 0}
!427 = !{!"_ZTSN6duckdb16ExecutionContextE", !428, i64 0, !429, i64 8, !430, i64 16}
!428 = !{!"p1 _ZTSN6duckdb13ClientContextE", !9, i64 0}
!429 = !{!"p1 _ZTSN6duckdb13ThreadContextE", !9, i64 0}
!430 = !{!"_ZTSN6duckdb12optional_ptrINS_8PipelineELb1EEE", !94, i64 0}
!431 = !{!432}
!432 = distinct !{!432, !433, !"_ZN6duckdb9make_uniqINS_13CTELocalStateEJRNS_13ClientContextERKNS_11PhysicalCTEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!433 = distinct !{!433, !"_ZN6duckdb9make_uniqINS_13CTELocalStateEJRNS_13ClientContextERKNS_11PhysicalCTEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!434 = !{!435, !186, i64 0}
!435 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb14LocalSinkStateELb0EE", !186, i64 0}
!436 = !{!185, !186, i64 8}
!437 = !{!438, !186, i64 8}
!438 = !{!"_ZTSN6duckdb24OperatorSinkCombineInputE", !37, i64 0, !186, i64 8, !187, i64 16}
!439 = !{!438, !37, i64 0}
!440 = !{!441}
!441 = distinct !{!441, !442, !"_ZN6duckdb10StringUtil6FormatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_DpT_: argument 0"}
!442 = distinct !{!442, !"_ZN6duckdb10StringUtil6FormatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_DpT_"}
!443 = !{!444, !441}
!444 = distinct !{!444, !445, !"_ZN6duckdb9Exception16ConstructMessageIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_: argument 0"}
!445 = distinct !{!445, !"_ZN6duckdb9Exception16ConstructMessageIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_"}
!446 = distinct !{null, null}
!447 = distinct !{null, null}
!448 = !{i64 0, i64 8, !449, i64 8, i64 8, !449, i64 16, i64 1, !451}
!449 = !{!450, !450, i64 0}
!450 = !{!"double", !5, i64 0}
!451 = !{!48, !48, i64 0}
!452 = !{!453}
!453 = distinct !{!453, !454, !"_ZN6duckdb21OperatorPartitionInfo15NoPartitionInfoEv: argument 0"}
!454 = distinct !{!454, !"_ZN6duckdb21OperatorPartitionInfo15NoPartitionInfoEv"}
!455 = distinct !{null}
!456 = !{!284, !285, i64 0}
!457 = !{!263, !264, i64 0}
!458 = !{!263, !264, i64 8}
!459 = distinct !{null, null, null}
!460 = distinct !{!460, !15}
!461 = !{!462, !464}
!462 = distinct !{!462, !463, !"_ZSt11make_sharedIN6duckdb13SelectionDataEJRmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_: argument 0"}
!463 = distinct !{!463, !"_ZSt11make_sharedIN6duckdb13SelectionDataEJRmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_"}
!464 = distinct !{!464, !465, !"_ZN6duckdb15make_shared_ptrINS_13SelectionDataEJRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_: argument 0"}
!465 = distinct !{!465, !"_ZN6duckdb15make_shared_ptrINS_13SelectionDataEJRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_"}
!466 = !{!464}
!467 = distinct !{null, null, null, null}
!468 = !{!246, !246, i64 0}
!469 = distinct !{null, ptr @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev, null, null, null}
!470 = !{!471, !120, i64 8}
!471 = !{!"_ZTSN6duckdb13AllocatedDataE", !472, i64 0, !120, i64 8, !24, i64 16}
!472 = !{!"_ZTSN6duckdb12optional_ptrINS_9AllocatorELb1EEE", !473, i64 0}
!473 = !{!"p1 _ZTSN6duckdb9AllocatorE", !9, i64 0}
!474 = !{!241, !242, i64 0}
!475 = distinct !{null, null, null}
!476 = !{!245, !246, i64 0}
!477 = !{!478, !120, i64 8}
!478 = !{!"_ZTSSt9type_info", !120, i64 8}
!479 = !{!480, !480, i64 0}
!480 = !{!"p1 _ZTSN6duckdb12list_entry_tE", !9, i64 0}
!481 = !{!482, !482, i64 0}
!482 = !{!"p1 _ZTSN6duckdb16CombinedListDataE", !9, i64 0}
!483 = distinct !{null, ptr @_ZNSt6vectorIN6duckdb21TupleDataVectorFormatESaIS1_EED2Ev, null, null}
!484 = !{ptr @_ZNSt6vectorIN6duckdb21TupleDataVectorFormatESaIS1_EED2Ev}
!485 = distinct !{null, ptr @_ZN6duckdb15SelectionVectorD2Ev, ptr @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev, null, null, null}
!486 = distinct !{null, null, null, null, null, null}
!487 = distinct !{ptr @_ZN6duckdb15SelectionVectorD2Ev, ptr @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev, null, null, null}
!488 = distinct !{ptr @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev, null, null, null}
!489 = !{!308, !309, i64 0}
!490 = !{!302, !303, i64 0}
!491 = !{!290, !291, i64 0}
!492 = !{!290, !291, i64 8}
!493 = !{!175, !175, i64 0}
!494 = distinct !{!494, !15}
!495 = distinct !{ptr @_ZNSt6vectorIN6duckdb21TupleDataVectorFormatESaIS1_EED2Ev, null, null, null}
!496 = !{!296, !297, i64 0}
!497 = !{!296, !297, i64 8}
!498 = !{!181, !181, i64 0}
!499 = distinct !{null, null, null, null, null, null, null, null, null, null}
!500 = distinct !{!500, !15}
!501 = !{!502}
!502 = distinct !{!502, !503, !"_ZN6duckdb9Exception16ConstructMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_: argument 0"}
!503 = distinct !{!503, !"_ZN6duckdb9Exception16ConstructMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_"}
!504 = !{!399, !400, i64 16}
!505 = !{!506}
!506 = distinct !{!506, !507, !"_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!507 = distinct !{!507, !"_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_"}
!508 = !{!509}
!509 = distinct !{!509, !507, !"_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!510 = !{!506, !509}
!511 = distinct !{!511, !15}
!512 = !{!513}
!513 = distinct !{!513, !514, !"_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!514 = distinct !{!514, !"_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_"}
!515 = !{!516}
!516 = distinct !{!516, !514, !"_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!517 = !{!513, !516}
!518 = distinct !{!518, !15, !87, !88}
!519 = distinct !{!519, !15, !87}
!520 = distinct !{!520, !15, !87, !88}
!521 = distinct !{!521, !15, !87}
!522 = distinct !{!522, !15, !87, !88}
!523 = distinct !{!523, !15, !87}
!524 = distinct !{!524, !15, !87, !88}
!525 = distinct !{!525, !15, !87}
!526 = distinct !{!526, !15, !87, !88}
!527 = distinct !{!527, !15, !87}
!528 = distinct !{!528, !15, !87, !88}
!529 = distinct !{!529, !15, !87}
!530 = !{!191, !200, i64 80}
!531 = !{!532, !533, i64 8}
!532 = !{!"_ZTSNSt12_Vector_baseIPN6duckdb24BoundAggregateExpressionESaIS2_EE17_Vector_impl_dataE", !533, i64 0, !533, i64 8, !533, i64 16}
!533 = !{!"p2 _ZTSN6duckdb24BoundAggregateExpressionE", !235, i64 0}
!534 = !{!532, !533, i64 0}
!535 = !{!532, !533, i64 16}
!536 = distinct !{!536, !15}
!537 = distinct !{null, null, null, null, null, null}
!538 = distinct !{null, null}
!539 = !{!199, !187, i64 0}
!540 = !{!199, !187, i64 8}
!541 = distinct !{ptr @_ZN6duckdb15GlobalSinkStateD2Ev, null, null, null, null, null, null, null, null, null, null}
!542 = distinct !{ptr @_ZN6duckdb15GlobalSinkStateD2Ev, null, null, null, null, null, null, null, null, null, null}
!543 = distinct !{!543, !15}
!544 = distinct !{!544, !15}
!545 = !{!546, !237, i64 16}
!546 = !{!"_ZTSSt10_HashtableISt17reference_wrapperIN6duckdb8PipelineEESt4pairIKS3_RS2_ESaIS7_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE", !234, i64 0, !24, i64 8, !236, i64 16, !24, i64 24, !238, i64 32, !237, i64 48}
!547 = distinct !{!547, !15}
!548 = !{!546, !234, i64 0}
!549 = !{!546, !24, i64 8}
!550 = !{!551, !237, i64 16}
!551 = !{!"_ZTSSt10_HashtableISt17reference_wrapperIN6duckdb8PipelineEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE", !234, i64 0, !24, i64 8, !236, i64 16, !24, i64 24, !238, i64 32, !237, i64 48}
!552 = distinct !{!552, !15}
!553 = !{!551, !234, i64 0}
!554 = !{!551, !24, i64 8}
!555 = !{!556, !237, i64 16}
!556 = !{!"_ZTSSt10_HashtableISt17reference_wrapperIN6duckdb8PipelineEESt4pairIKS3_NS1_6vectorIS3_Lb1ESaIS3_EEEESaIS9_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE", !234, i64 0, !24, i64 8, !236, i64 16, !24, i64 24, !238, i64 32, !237, i64 48}
!557 = distinct !{!557, !15}
!558 = !{!556, !234, i64 0}
!559 = !{!556, !24, i64 8}
!560 = distinct !{null, null, null, null, null}
!561 = !{!562, !97, i64 0}
!562 = !{!"_ZTSSt10__weak_ptrIN6duckdb12MetaPipelineELN9__gnu_cxx12_Lock_policyE2EE", !97, i64 0, !384, i64 8}
!563 = distinct !{null, null, null, null, null}
!564 = !{!410, !411, i64 16}
!565 = !{!566}
!566 = distinct !{!566, !567, !"_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_: argument 0"}
!567 = distinct !{!567, !"_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_"}
!568 = !{!569}
!569 = distinct !{!569, !567, !"_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_: argument 1"}
!570 = !{!566, !569}
!571 = distinct !{!571, !15}
!572 = !{!573}
!573 = distinct !{!573, !574, !"_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_: argument 0"}
!574 = distinct !{!574, !"_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_"}
!575 = !{!576}
!576 = distinct !{!576, !574, !"_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_: argument 1"}
!577 = !{!573, !576}
!578 = !{!579, !579, i64 0}
!579 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !9, i64 0}
!580 = !{!581, !582, i64 0}
!581 = !{!"_ZTSNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeE", !582, i64 0, !583, i64 8}
!582 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEEE", !9, i64 0}
!583 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEE", !9, i64 0}
!584 = !{!581, !583, i64 8}
!585 = !{!238, !24, i64 8}
!586 = !{!587, !24, i64 32}
!587 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmE", !118, i64 0, !24, i64 32}
!588 = !{!390, !237, i64 48}
!589 = distinct !{!589, !15}
!590 = distinct !{null, null, null, null, null, null, null, null, null, null}
!591 = distinct !{null, null, null, null, null, null, null, null, null, null}
!592 = !{!186, !186, i64 0}
!593 = distinct !{null, null}
!594 = !{!595, !596, i64 0}
!595 = !{!"_ZTSNSt12_Vector_baseIN6duckdb19UnifiedVectorFormatESaIS1_EE17_Vector_impl_dataE", !596, i64 0, !596, i64 8, !596, i64 16}
!596 = !{!"p1 _ZTSN6duckdb19UnifiedVectorFormatE", !9, i64 0}
!597 = !{!595, !596, i64 8}
!598 = !{!599, !600, i64 0}
!599 = !{!"_ZTSNSt12_Vector_baseIN6duckdb19ColumnPartitionDataESaIS1_EE17_Vector_impl_dataE", !600, i64 0, !600, i64 8, !600, i64 16}
!600 = !{!"p1 _ZTSN6duckdb19ColumnPartitionDataE", !9, i64 0}
!601 = !{!599, !600, i64 8}
!602 = !{ptr @_ZN6duckdb14LocalSinkStateD2Ev}
!603 = distinct !{!603, !15}
!604 = distinct !{null, null, ptr @_ZN6duckdb15SelectionVectorD2Ev, ptr @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev, null, null, null}
!605 = distinct !{null, null, null, null, null, null, null}
!606 = distinct !{!606, !15}
!607 = !{!608, !56, i64 0}
!608 = !{!"_ZTSSt4pairIRKN6duckdb16PhysicalOperatorERNS0_8PipelineEE", !56, i64 0, !94, i64 8}
!609 = distinct !{!609, !15}
!610 = !{!358, !237, i64 16}
!611 = !{!358, !237, i64 48}
!612 = distinct !{!612, !15}
end_hunk_1
