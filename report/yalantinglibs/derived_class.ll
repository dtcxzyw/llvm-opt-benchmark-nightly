Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/derived_class?download=true
inline.NumInlined: 4793
inline.NumDeleted: 923
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE11deserializeISt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS8_EESaISB_EEJEEENS_8err_codeERT_DpRT0_:bb.a

.critedge10.i:                                    ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.k

bb.k:                                             ; preds = %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE22deserialize_compatibleEj.exit, %.critedge10.i
  %i.aj = lshr i8 %.0.copyload, 3
  %i.ak = and i8 %i.aj, 3                         ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.ak, ptr %i.al, align 8, !tbaa !79
  %i.am = icmp eq i8 %i.ak, 0
  br i1 %i.am, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.thread, %bb.k
  %i.an = tail call i32 @_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS8_EESaISB_EEEENS_8err_codeERT3_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ao = tail call i32 @_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS8_EESaISB_EEEENS_8err_codeERT3_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.f, %bb.g, %bb.h, %_ZN11struct_pack6detail13memory_reader9read_viewEm.exit.thread, %bb.d, %bb.a, %bb.b
  %.sroa.011.0 = phi i32 [ 2, %bb.b ], [ 1, %bb.f ], [ 1, %bb.g ], [ 1, %bb.h ], [ %.sroa.069.0.ph, %_ZN11struct_pack6detail13memory_reader9read_viewEm.exit.thread ], [ 1, %bb.d ], [ 1, %bb.a ], [ %i.ao, %bb.m ], [ %i.an, %bb.l ]
  ret i32 %.sroa.011.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local i32 @_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS8_EESaISB_EEEENS_8err_codeERT3_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !77, !nonnull !39, !align !78 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !47   ; 3 uses
  %.not36 = icmp eq ptr %i.e, %i.f
  br i1 %.not36, label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE13shrink_to_fitEv.exit, label %bb.b, !prof !80

bb.b:                                             ; preds = %bb.a
  %.0.copyload = load i8, ptr %i.f, align 1       ; 2 uses
  %.0.insert.ext = zext i8 %.0.copyload to i64    ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store ptr %i.g, ptr %i.c, align 8, !tbaa !47
  %i.h = icmp eq i8 %.0.copyload, 0
  br i1 %i.h, label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE13shrink_to_fitEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %1, align 8, !tbaa !32     ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !33   ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, %i.i
  br i1 %.not.i.i, label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.p, %_ZSt8_DestroyISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i ], [ %i.i, %bb.c ] ; 2 uses
  %i.l = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !38 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN18virtual_base_class4baseEEclEPS1_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN18virtual_base_class4baseEEclEPS1_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #18, !inline_history !5
  br label %_ZSt8_DestroyISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN18virtual_base_class4baseEEclEPS1_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, %i.k
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  store ptr %i.i, ptr %i.j, align 8, !tbaa !33
  %.pr = load ptr, ptr %1, align 8, !tbaa !32
  br label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE5clearEv.exit

_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE5clearEv.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.c
  %i.q = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i ], [ %i.i, %bb.c ] ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !34
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64                 ; 4 uses
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = ashr exact i64 %i.v, 3
  %i.x = icmp ult i64 %i.w, %.0.insert.ext
  br i1 %i.x, label %_ZNSt12_Vector_baseISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit.preheader

_ZNSt12_Vector_baseISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE5clearEv.exit
  %i.y = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.z = sub i64 %i.y, %i.u
  %i.aa = shl nuw nsw i64 %.0.insert.ext, 3
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #19 ; 9 uses
  %.not10.i.i.i.i = icmp eq ptr %i.q, %i.i
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i16.preheader

.lr.ph.i.i.i.i16.preheader:                       ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i
  %i.ac = add i64 %i.y, -8
  %i.ad = sub i64 %i.ac, %i.u                     ; 2 uses
  %i.ae = lshr i64 %i.ad, 3
  %i.af = add nuw nsw i64 %i.ae, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ad, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i16.preheader93, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i16.preheader
  %i.ag = add i64 %i.y, -8
  %i.ah = sub i64 %i.ag, %i.u
  %i.ai = and i64 %i.ah, -8
  %i.aj = add i64 %i.ai, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ab, i64 %i.aj
  %scevgep61 = getelementptr i8, ptr %i.q, i64 %i.aj
  %bound0 = icmp ult ptr %i.ab, %scevgep61
  %bound1 = icmp ult ptr %i.q, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i16.preheader93, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.af, 4611686018427387900     ; 3 uses
  %i.ak = shl i64 %n.vec, 3                       ; 2 uses
  %i.al = getelementptr i8, ptr %i.ab, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.q, i64 %i.ak
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.an = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ab, i64 %i.an ; 2 uses
  %next.gep62 = getelementptr i8, ptr %i.q, i64 %i.an ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219)
  %i.ao = getelementptr i8, ptr %next.gep62, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep62, align 8, !tbaa !38, !alias.scope !220, !noalias !218
  %wide.load63 = load <2 x i64>, ptr %i.ao, align 8, !tbaa !38, !alias.scope !220, !noalias !218
  %i.ap = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !38, !alias.scope !221, !noalias !220
  store <2 x i64> %wide.load63, ptr %i.ap, align 8, !tbaa !38, !alias.scope !221, !noalias !220
  %i.aq = getelementptr i8, ptr %next.gep62, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep62, align 8, !tbaa !38, !alias.scope !220, !noalias !218
  store <2 x ptr> splat (ptr null), ptr %i.aq, align 8, !tbaa !38, !alias.scope !220, !noalias !218
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !207

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i16.preheader93

.lr.ph.i.i.i.i16.preheader93:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i16.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.ab, %vector.memcheck ], [ %i.ab, %.lr.ph.i.i.i.i16.preheader ], [ %i.al, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.q, %vector.memcheck ], [ %i.q, %.lr.ph.i.i.i.i16.preheader ], [ %i.am, %middle.block ]
  br label %.lr.ph.i.i.i.i16

.lr.ph.i.i.i.i16:                                 ; preds = %.lr.ph.i.i.i.i16.preheader93, %.lr.ph.i.i.i.i16
  %.012.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i16 ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i16.preheader93 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i16 ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i16.preheader93 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219)
  %i.as = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !38, !alias.scope !219, !noalias !218
  store i64 %i.as, ptr %.012.i.i.i.i, align 8, !tbaa !38, !alias.scope !218, !noalias !219
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !38, !alias.scope !219, !noalias !218
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i17 = icmp eq ptr %i.at, %i.i
  br i1 %.not.i.i.i.i17, label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i16, !llvm.loop !208

_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i16, %middle.block, %_ZNSt12_Vector_baseISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.q, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #20
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.ab, ptr %1, align 8, !tbaa !32
  %i.av = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store ptr %i.av, ptr %i.j, align 8, !tbaa !33
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.0.insert.ext
  store ptr %i.aw, ptr %i.r, align 8, !tbaa !34
  br label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit.preheader

_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit.preheader: ; preds = %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE5clearEv.exit, %_ZNSt12_Vector_baseISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i
  br label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit

_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit.preheader, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread33
  %.037 = phi i64 [ %i.dl, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread33 ], [ 0, %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit.preheader ]
  %i.ax = load ptr, ptr %i.j, align 8, !tbaa !33  ; 7 uses
  %i.ay = load ptr, ptr %i.r, align 8, !tbaa !34  ; 2 uses
  %.not.i = icmp eq ptr %i.ax, %i.ay
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit
  store ptr null, ptr %i.ax, align 8, !tbaa !29
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.az, ptr %i.j, align 8, !tbaa !33
  br label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit

bb.f:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit
  %i.ba = load ptr, ptr %1, align 8, !tbaa !32    ; 10 uses
  %i.bb = ptrtoint ptr %i.ax to i64               ; 3 uses
  %i.bc = ptrtoint ptr %i.ba to i64               ; 3 uses
  %i.bd = sub i64 %i.bb, %i.bc                    ; 4 uses
  %i.be = icmp eq i64 %i.bd, 9223372036854775800
  br i1 %i.be, label %bb.g, label %_ZNKSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #21
  unreachable

_ZNKSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.bf = ashr exact i64 %i.bd, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bf, i64 1)
  %2 = add nsw i64 %.sroa.speculated.i.i.i, %i.bf ; 2 uses
  %i.bg = icmp ult i64 %2, %i.bf
  %i.bh = call i64 @llvm.umin.i64(i64 %2, i64 1152921504606846975)
  %i.bi = select i1 %i.bg, i64 1152921504606846975, i64 %i.bh ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bi, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bj = shl nuw nsw i64 %i.bi, 3
  %i.bk = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #19 ; 10 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bd
  store ptr null, ptr %i.bl, align 8, !tbaa !29
  %.not10.i.i.i.i.i = icmp eq ptr %i.ba, %i.ax
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.bm = add i64 %i.bb, -8
  %i.bn = sub i64 %i.bm, %i.bc                    ; 2 uses
  %i.bo = lshr i64 %i.bn, 3
  %i.bp = add nuw nsw i64 %i.bo, 1                ; 2 uses
  %min.iters.check74 = icmp ult i64 %i.bn, 56
  br i1 %min.iters.check74, label %.lr.ph.i.i.i.i.i.preheader88, label %vector.memcheck65

vector.memcheck65:                                ; preds = %.lr.ph.i.i.i.i.i.preheader
  %scevgep66 = getelementptr i8, ptr %i.bk, i64 8
  %i.bq = add i64 %i.bb, -8
  %i.br = sub i64 %i.bq, %i.bc
  %i.bs = and i64 %i.br, -8                       ; 2 uses
  %scevgep67 = getelementptr i8, ptr %scevgep66, i64 %i.bs
  %scevgep68 = getelementptr i8, ptr %i.ba, i64 8
  %scevgep69 = getelementptr i8, ptr %scevgep68, i64 %i.bs
  %bound070 = icmp ult ptr %i.bk, %scevgep69
  %bound171 = icmp ult ptr %i.ba, %scevgep67
  %found.conflict72 = and i1 %bound070, %bound171
  br i1 %found.conflict72, label %.lr.ph.i.i.i.i.i.preheader88, label %vector.ph75

vector.ph75:                                      ; preds = %vector.memcheck65
  %n.vec76 = and i64 %i.bp, 4611686018427387900   ; 3 uses
  %i.bt = shl i64 %n.vec76, 3                     ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bk, i64 %i.bt  ; 2 uses
  %i.bv = getelementptr i8, ptr %i.ba, i64 %i.bt
  br label %vector.body77

vector.body77:                                    ; preds = %vector.body77, %vector.ph75
  %index78 = phi i64 [ 0, %vector.ph75 ], [ %index.next83, %vector.body77 ] ; 2 uses
  %i.bw = shl i64 %index78, 3                     ; 2 uses
  %next.gep79 = getelementptr i8, ptr %i.bk, i64 %i.bw ; 2 uses
  %next.gep80 = getelementptr i8, ptr %i.ba, i64 %i.bw ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !222)
  call void @llvm.experimental.noalias.scope.decl(metadata !223)
  %i.bx = getelementptr i8, ptr %next.gep80, i64 16
  %wide.load81 = load <2 x i64>, ptr %next.gep80, align 8, !tbaa !38, !alias.scope !224, !noalias !222
  %wide.load82 = load <2 x i64>, ptr %i.bx, align 8, !tbaa !38, !alias.scope !224, !noalias !222
  %i.by = getelementptr i8, ptr %next.gep79, i64 16
  store <2 x i64> %wide.load81, ptr %next.gep79, align 8, !tbaa !38, !alias.scope !225, !noalias !224
  store <2 x i64> %wide.load82, ptr %i.by, align 8, !tbaa !38, !alias.scope !225, !noalias !224
  %i.bz = getelementptr i8, ptr %next.gep80, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep80, align 8, !tbaa !38, !alias.scope !224, !noalias !222
  store <2 x ptr> splat (ptr null), ptr %i.bz, align 8, !tbaa !38, !alias.scope !224, !noalias !222
  %index.next83 = add nuw i64 %index78, 4         ; 2 uses
  %i.ca = icmp eq i64 %index.next83, %n.vec76
  br i1 %i.ca, label %middle.block84, label %vector.body77, !llvm.loop !215

middle.block84:                                   ; preds = %vector.body77
  %cmp.n85 = icmp eq i64 %i.bp, %n.vec76
  br i1 %cmp.n85, label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i, label %.lr.ph.i.i.i.i.i.preheader88

.lr.ph.i.i.i.i.i.preheader88:                     ; preds = %vector.memcheck65, %.lr.ph.i.i.i.i.i.preheader, %middle.block84
  %.012.i.i.i.i.i.ph = phi ptr [ %i.bk, %vector.memcheck65 ], [ %i.bk, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bu, %middle.block84 ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.ba, %vector.memcheck65 ], [ %i.ba, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bv, %middle.block84 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader88, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader88 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.cc, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader88 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !222)
  call void @llvm.experimental.noalias.scope.decl(metadata !223)
  %i.cb = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !38, !alias.scope !223, !noalias !222
  store i64 %i.cb, ptr %.012.i.i.i.i.i, align 8, !tbaa !38, !alias.scope !222, !noalias !223
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !38, !alias.scope !223, !noalias !222
  %i.cc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cc, %i.ax
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !216

_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block84, %_ZNKSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bk, %_ZNKSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bu, %middle.block84 ], [ %i.cd, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i22.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i22.i.i, label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.bd) #20
  br label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i
  store ptr %i.bk, ptr %1, align 8, !tbaa !32
  store ptr %i.ce, ptr %i.j, align 8, !tbaa !33
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bi ; 2 uses
  store ptr %i.cf, ptr %i.r, align 8, !tbaa !34
  br label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i
  %i.cg = phi ptr [ %i.ay, %bb.e ], [ %i.cf, %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ] ; 3 uses
  %i.ch = phi ptr [ %i.ax, %bb.e ], [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ]
  %i.ci = load ptr, ptr %i.b, align 8, !tbaa !77, !nonnull !39, !align !78 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !48 ; 2 uses
  %i.cl = load ptr, ptr %i.ci, align 8, !tbaa !47 ; 4 uses
  %i.cm = ptrtoint ptr %i.ck to i64
  %.not.i18 = icmp eq ptr %i.ck, %i.cl
  br i1 %.not.i18, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread, label %bb.i, !prof !80

bb.i:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit
  %.0.copyload5.i = load i8, ptr %i.cl, align 1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 1 ; 3 uses
  store ptr %i.cn, ptr %i.ci, align 8, !tbaa !47
  %i.co = trunc nuw i8 %.0.copyload5.i to i1
  br i1 %i.co, label %bb.j, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread33

bb.j:                                             ; preds = %bb.i
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.cm, %i.cp
  %i.cr = icmp ugt i64 %i.cq, 3
  br i1 %i.cr, label %bb.k, label %_ZN11struct_pack6detail13memory_reader4readEPcm.exit2.i, !prof !51

bb.k:                                             ; preds = %bb.j
  %.0.copyload.i = load i32, ptr %i.cn, align 1
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 5
  store ptr %i.cs, ptr %i.ci, align 8, !tbaa !47
  br label %_ZN11struct_pack6detail13memory_reader4readEPcm.exit2.i

_ZN11struct_pack6detail13memory_reader4readEPcm.exit2.i: ; preds = %bb.k, %bb.j
  %.07.i = phi i32 [ %.0.copyload.i, %bb.k ], [ 0, %bb.j ] ; 2 uses
  br label %_ZSt9__advanceIPKN11struct_pack6detail8MD5_pairElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i

_ZSt9__advanceIPKN11struct_pack6detail8MD5_pairElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i: ; preds = %_ZSt9__advanceIPKN11struct_pack6detail8MD5_pairElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit2.i
  %.017.i.i.i.i = phi i64 [ 3, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit2.i ], [ %.1.i.i.i.i, %_ZSt9__advanceIPKN11struct_pack6detail8MD5_pairElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i = phi ptr [ @_ZN11struct_pack6detail7MD5_setISt5tupleIJN18virtual_base_class4obj1ENS3_4obj2ENS3_4obj3EEEE5valueE, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit2.i ], [ %.112.i.i.i.i, %_ZSt9__advanceIPKN11struct_pack6detail8MD5_pairElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ] ; 2 uses
  %i.ct = lshr i64 %.017.i.i.i.i, 1               ; 3 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %.01116.i.i.i.i, i64 %i.ct ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !84
  %i.cw = icmp ult i32 %i.cv, %.07.i              ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cy = xor i64 %i.ct, -1
  %i.cz = add nsw i64 %.017.i.i.i.i, %i.cy
  %.112.i.i.i.i = select i1 %i.cw, ptr %i.cx, ptr %.01116.i.i.i.i ; 4 uses
  %.1.i.i.i.i = select i1 %i.cw, i64 %i.cz, i64 %i.ct ; 2 uses
  %i.da = icmp sgt i64 %.1.i.i.i.i, 0
  br i1 %i.da, label %_ZSt9__advanceIPKN11struct_pack6detail8MD5_pairElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, label %_ZSt11lower_boundIPKN11struct_pack6detail8MD5_pairES2_ET_S5_S5_RKT0_.exit.i.i, !llvm.loop !6

_ZSt11lower_boundIPKN11struct_pack6detail8MD5_pairES2_ET_S5_S5_RKT0_.exit.i.i: ; preds = %_ZSt9__advanceIPKN11struct_pack6detail8MD5_pairElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i
  %.not.i.i19 = icmp eq ptr %.112.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN11struct_pack6detail7MD5_setISt5tupleIJN18virtual_base_class4obj1ENS3_4obj2ENS3_4obj3EEEE5valueE, i64 24)
  br i1 %.not.i.i19, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZSt11lower_boundIPKN11struct_pack6detail8MD5_pairES2_ET_S5_S5_RKT0_.exit.i.i
  %i.db = load i32, ptr %.112.i.i.i.i, align 4, !tbaa !84
  %i.dc = icmp eq i32 %i.db, %.07.i
  br i1 %i.dc, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread

_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit: ; preds = %bb.l
  %i.dd = getelementptr inbounds nuw i8, ptr %.112.i.i.i.i, i64 4
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !85
  %i.df = zext i32 %i.de to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr %0, ptr %i.a, align 8, !tbaa !87
  %i.dg = call i32 @_ZN3ylt10reflection15template_switchIN11struct_pack6detail36deserialize_one_derived_class_helperISt5tupleIJN18virtual_base_class4obj1ENS6_4obj2ENS6_4obj3EEESt17integral_constantImLm1EESB_ImLm18446744073709551615EESC_EEJPNS3_8unpackerINS3_13memory_readerELm0ELb0EEERSt10unique_ptrINS6_4baseESt14default_deleteISK_EEEEEDcmDpOT0_(i64 noundef %i.df, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.ch) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %.not = icmp eq i32 %i.dg, 0
  br i1 %.not, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread33, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit._ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread_crit_edge, !prof !88

_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit._ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread_crit_edge: ; preds = %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit
  %.pre = load ptr, ptr %i.r, align 8, !tbaa !34
  br label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread

_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread: ; preds = %_ZSt11lower_boundIPKN11struct_pack6detail8MD5_pairES2_ET_S5_S5_RKT0_.exit.i.i, %bb.l, %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit._ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread_crit_edge
  %i.dh = phi ptr [ %.pre, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit._ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread_crit_edge ], [ %i.cg, %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit ], [ %i.cg, %bb.l ], [ %i.cg, %_ZSt11lower_boundIPKN11struct_pack6detail8MD5_pairES2_ET_S5_S5_RKT0_.exit.i.i ]
  %.sroa.06.1.i32 = phi i32 [ %i.dg, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit._ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread_crit_edge ], [ 2, %_ZSt11lower_boundIPKN11struct_pack6detail8MD5_pairES2_ET_S5_S5_RKT0_.exit.i.i ], [ 2, %bb.l ], [ 1, %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit ] ; 2 uses
  %i.di = load ptr, ptr %i.j, align 8, !tbaa !33
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE13shrink_to_fitEv.exit, label %bb.m

bb.m:                                             ; preds = %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread
  %i.dk = call noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS3_EESaIS6_EELb1EE8_S_do_itERS8_(ptr noundef nonnull align 8 dereferenceable(24) %1) #18 ; 0 uses
  br label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE13shrink_to_fitEv.exit

_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread33: ; preds = %bb.i, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit
  %i.dl = add nuw nsw i64 %.037, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.dl, %.0.insert.ext
  br i1 %exitcond.not, label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE13shrink_to_fitEv.exit, label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit, !llvm.loop !217

_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE13shrink_to_fitEv.exit: ; preds = %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread33, %bb.a, %bb.b, %bb.m, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread
  %.sroa.027.1 = phi i32 [ 0, %bb.b ], [ %.sroa.06.1.i32, %bb.m ], [ %.sroa.06.1.i32, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread ], [ 1, %bb.a ], [ 0, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread33 ]
  ret i32 %.sroa.027.1
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local i32 @_ZN3ylt10reflection15template_switchIN11struct_pack6detail36deserialize_one_derived_class_helperISt5tupleIJN18virtual_base_class4obj1ENS6_4obj2ENS6_4obj3EEESt17integral_constantImLm1EESB_ImLm18446744073709551615EESC_EEJPNS3_8unpackerINS3_13memory_readerELm0ELb0EEERSt10unique_ptrINS6_4baseESt14default_deleteISK_EEEEEDcmDpOT0_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !87     ; 3 uses
  switch i64 %0, label %bb.u [
    i64 0, label %bb.b
    i64 1, label %bb.i
    i64 2, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #19, !noalias !232 ; 6 uses
end_hunk_0
begin_hunk_1_@_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS8_EESaISB_EEEENS_8err_codeERT3_:bb.a
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  switch i8 %i.c, label %bb.e [
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %i.k, 1
  br i1 %i.l, label %_ZN11struct_pack6detail13memory_reader4readEPcm.exit.thread, label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE13shrink_to_fitEv.exit, !prof !51

_ZN11struct_pack6detail13memory_reader4readEPcm.exit.thread: ; preds = %bb.b
  %.0.copyload30 = load i16, ptr %i.h, align 1
  %.0.insert.ext32 = zext i16 %.0.copyload30 to i64
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %i.k, 3
  br i1 %i.m, label %_ZN11struct_pack6detail13memory_reader4readEPcm.exit18.thread, label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE13shrink_to_fitEv.exit, !prof !51

_ZN11struct_pack6detail13memory_reader4readEPcm.exit18.thread: ; preds = %bb.c
  %.0.copyload29 = load i32, ptr %i.h, align 1
  %.0.insert.ext = zext i32 %.0.copyload29 to i64
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.n = icmp ugt i64 %i.k, 7
  br i1 %i.n, label %_ZN11struct_pack6detail13memory_reader4readEPcm.exit19.thread, label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE13shrink_to_fitEv.exit, !prof !51

_ZN11struct_pack6detail13memory_reader4readEPcm.exit19.thread: ; preds = %bb.d
  %.0.copyload = load i64, ptr %i.h, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  unreachable

bb.f:                                             ; preds = %_ZN11struct_pack6detail13memory_reader4readEPcm.exit19.thread, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit18.thread, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit.thread
  %.sink66 = phi i64 [ 8, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit19.thread ], [ 4, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit18.thread ], [ 2, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit.thread ]
  %.038 = phi i64 [ %.0.copyload, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit19.thread ], [ %.0.insert.ext, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit18.thread ], [ %.0.insert.ext32, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit.thread ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sink66
  store ptr %i.o, ptr %i.e, align 8, !tbaa !47
  %i.p = icmp eq i64 %.038, 0
  br i1 %i.p, label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE13shrink_to_fitEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %1, align 8, !tbaa !32     ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !33   ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, %i.q
  br i1 %.not.i.i, label %bb.h, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %_ZSt8_DestroyISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.x, %_ZSt8_DestroyISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i ], [ %i.q, %bb.g ] ; 2 uses
  %i.t = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !38 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN18virtual_base_class4baseEEclEPS1_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN18virtual_base_class4baseEEclEPS1_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !25
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #18, !inline_history !5
  br label %_ZSt8_DestroyISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN18virtual_base_class4baseEEclEPS1_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.x, %i.s
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  store ptr %i.q, ptr %i.r, align 8, !tbaa !33
  %.pr = load ptr, ptr %1, align 8, !tbaa !32
  br label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.g
  %i.y = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i ], [ %i.q, %bb.g ] ; 10 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %.038, i64 131072) ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !34
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64                ; 4 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = ashr exact i64 %i.ad, 3
  %i.af = icmp ult i64 %i.ae, %.sroa.speculated
  br i1 %i.af, label %_ZNSt12_Vector_baseISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit

_ZNSt12_Vector_baseISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.h
  %i.ag = ptrtoint ptr %i.q to i64                ; 3 uses
  %i.ah = sub i64 %i.ag, %i.ac
  %i.ai = shl nuw nsw i64 %.sroa.speculated, 3
  %i.aj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #19 ; 9 uses
  %.not10.i.i.i.i = icmp eq ptr %i.y, %i.q
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i20.preheader

.lr.ph.i.i.i.i20.preheader:                       ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i
  %i.ak = add i64 %i.ag, -8
  %i.al = sub i64 %i.ak, %i.ac                    ; 2 uses
  %i.am = lshr i64 %i.al, 3
  %i.an = add nuw nsw i64 %i.am, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.al, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i20.preheader103, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i20.preheader
  %i.ao = add i64 %i.ag, -8
  %i.ap = sub i64 %i.ao, %i.ac
  %i.aq = and i64 %i.ap, -8
  %i.ar = add i64 %i.aq, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.aj, i64 %i.ar
  %scevgep71 = getelementptr i8, ptr %i.y, i64 %i.ar
  %bound0 = icmp ult ptr %i.aj, %scevgep71
  %bound1 = icmp ult ptr %i.y, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i20.preheader103, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.an, 4611686018427387900     ; 3 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.aj, i64 %i.as
  %i.au = getelementptr i8, ptr %i.y, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aj, i64 %i.av ; 2 uses
  %next.gep72 = getelementptr i8, ptr %i.y, i64 %i.av ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !260)
  %i.aw = getelementptr i8, ptr %next.gep72, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep72, align 8, !tbaa !38, !alias.scope !261, !noalias !259
  %wide.load73 = load <2 x i64>, ptr %i.aw, align 8, !tbaa !38, !alias.scope !261, !noalias !259
  %i.ax = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !38, !alias.scope !262, !noalias !261
  store <2 x i64> %wide.load73, ptr %i.ax, align 8, !tbaa !38, !alias.scope !262, !noalias !261
  %i.ay = getelementptr i8, ptr %next.gep72, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep72, align 8, !tbaa !38, !alias.scope !261, !noalias !259
  store <2 x ptr> splat (ptr null), ptr %i.ay, align 8, !tbaa !38, !alias.scope !261, !noalias !259
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !248

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i20.preheader103

.lr.ph.i.i.i.i20.preheader103:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i20.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.aj, %vector.memcheck ], [ %i.aj, %.lr.ph.i.i.i.i20.preheader ], [ %i.at, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph.i.i.i.i20.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i20

.lr.ph.i.i.i.i20:                                 ; preds = %.lr.ph.i.i.i.i20.preheader103, %.lr.ph.i.i.i.i20
  %.012.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i20 ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i20.preheader103 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i20 ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i20.preheader103 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !260)
  %i.ba = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !38, !alias.scope !260, !noalias !259
  store i64 %i.ba, ptr %.012.i.i.i.i, align 8, !tbaa !38, !alias.scope !259, !noalias !260
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !38, !alias.scope !260, !noalias !259
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i21 = icmp eq ptr %i.bb, %i.q
  br i1 %.not.i.i.i.i21, label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i20, !llvm.loop !249

_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i20, %middle.block, %_ZNSt12_Vector_baseISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.y, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #20
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i: ; preds = %bb.i, %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.aj, ptr %1, align 8, !tbaa !32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  store ptr %i.bd, ptr %i.r, align 8, !tbaa !33
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.sroa.speculated
  store ptr %i.be, ptr %i.z, align 8, !tbaa !34
  br label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit

_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit: ; preds = %bb.h, %_ZNSt12_Vector_baseISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread44
  %.047 = phi i64 [ 0, %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit ], [ %i.du, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread44 ]
  %i.bg = load ptr, ptr %i.r, align 8, !tbaa !33  ; 7 uses
  %i.bh = load ptr, ptr %i.z, align 8, !tbaa !34  ; 2 uses
  %.not.i = icmp eq ptr %i.bg, %i.bh
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr null, ptr %i.bg, align 8, !tbaa !29
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.bi, ptr %i.r, align 8, !tbaa !33
  br label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit

bb.l:                                             ; preds = %bb.j
  %i.bj = load ptr, ptr %1, align 8, !tbaa !32    ; 10 uses
  %i.bk = ptrtoint ptr %i.bg to i64               ; 3 uses
  %i.bl = ptrtoint ptr %i.bj to i64               ; 3 uses
  %i.bm = sub i64 %i.bk, %i.bl                    ; 4 uses
  %i.bn = icmp eq i64 %i.bm, 9223372036854775800
  br i1 %i.bn, label %bb.m, label %_ZNKSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.l
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #21
  unreachable

_ZNKSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %i.bo = ashr exact i64 %i.bm, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bo, i64 1)
  %2 = add nsw i64 %.sroa.speculated.i.i.i, %i.bo ; 2 uses
  %i.bp = icmp ult i64 %2, %i.bo
  %i.bq = call i64 @llvm.umin.i64(i64 %2, i64 1152921504606846975)
  %i.br = select i1 %i.bp, i64 1152921504606846975, i64 %i.bq ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.br, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bs = shl nuw nsw i64 %i.br, 3
  %i.bt = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bs) #19 ; 10 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bm
  store ptr null, ptr %i.bu, align 8, !tbaa !29
  %.not10.i.i.i.i.i = icmp eq ptr %i.bj, %i.bg
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.bv = add i64 %i.bk, -8
  %i.bw = sub i64 %i.bv, %i.bl                    ; 2 uses
  %i.bx = lshr i64 %i.bw, 3
  %i.by = add nuw nsw i64 %i.bx, 1                ; 2 uses
  %min.iters.check84 = icmp ult i64 %i.bw, 56
  br i1 %min.iters.check84, label %.lr.ph.i.i.i.i.i.preheader98, label %vector.memcheck75

vector.memcheck75:                                ; preds = %.lr.ph.i.i.i.i.i.preheader
  %scevgep76 = getelementptr i8, ptr %i.bt, i64 8
  %i.bz = add i64 %i.bk, -8
  %i.ca = sub i64 %i.bz, %i.bl
  %i.cb = and i64 %i.ca, -8                       ; 2 uses
  %scevgep77 = getelementptr i8, ptr %scevgep76, i64 %i.cb
  %scevgep78 = getelementptr i8, ptr %i.bj, i64 8
  %scevgep79 = getelementptr i8, ptr %scevgep78, i64 %i.cb
  %bound080 = icmp ult ptr %i.bt, %scevgep79
  %bound181 = icmp ult ptr %i.bj, %scevgep77
  %found.conflict82 = and i1 %bound080, %bound181
  br i1 %found.conflict82, label %.lr.ph.i.i.i.i.i.preheader98, label %vector.ph85

vector.ph85:                                      ; preds = %vector.memcheck75
  %n.vec86 = and i64 %i.by, 4611686018427387900   ; 3 uses
  %i.cc = shl i64 %n.vec86, 3                     ; 2 uses
  %i.cd = getelementptr i8, ptr %i.bt, i64 %i.cc  ; 2 uses
  %i.ce = getelementptr i8, ptr %i.bj, i64 %i.cc
  br label %vector.body87

vector.body87:                                    ; preds = %vector.body87, %vector.ph85
  %index88 = phi i64 [ 0, %vector.ph85 ], [ %index.next93, %vector.body87 ] ; 2 uses
  %i.cf = shl i64 %index88, 3                     ; 2 uses
  %next.gep89 = getelementptr i8, ptr %i.bt, i64 %i.cf ; 2 uses
  %next.gep90 = getelementptr i8, ptr %i.bj, i64 %i.cf ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !263)
  call void @llvm.experimental.noalias.scope.decl(metadata !264)
  %i.cg = getelementptr i8, ptr %next.gep90, i64 16
  %wide.load91 = load <2 x i64>, ptr %next.gep90, align 8, !tbaa !38, !alias.scope !265, !noalias !263
  %wide.load92 = load <2 x i64>, ptr %i.cg, align 8, !tbaa !38, !alias.scope !265, !noalias !263
  %i.ch = getelementptr i8, ptr %next.gep89, i64 16
  store <2 x i64> %wide.load91, ptr %next.gep89, align 8, !tbaa !38, !alias.scope !266, !noalias !265
  store <2 x i64> %wide.load92, ptr %i.ch, align 8, !tbaa !38, !alias.scope !266, !noalias !265
  %i.ci = getelementptr i8, ptr %next.gep90, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep90, align 8, !tbaa !38, !alias.scope !265, !noalias !263
  store <2 x ptr> splat (ptr null), ptr %i.ci, align 8, !tbaa !38, !alias.scope !265, !noalias !263
  %index.next93 = add nuw i64 %index88, 4         ; 2 uses
  %i.cj = icmp eq i64 %index.next93, %n.vec86
  br i1 %i.cj, label %middle.block94, label %vector.body87, !llvm.loop !256

middle.block94:                                   ; preds = %vector.body87
  %cmp.n95 = icmp eq i64 %i.by, %n.vec86
  br i1 %cmp.n95, label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i, label %.lr.ph.i.i.i.i.i.preheader98

.lr.ph.i.i.i.i.i.preheader98:                     ; preds = %vector.memcheck75, %.lr.ph.i.i.i.i.i.preheader, %middle.block94
  %.012.i.i.i.i.i.ph = phi ptr [ %i.bt, %vector.memcheck75 ], [ %i.bt, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cd, %middle.block94 ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.bj, %vector.memcheck75 ], [ %i.bj, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ce, %middle.block94 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader98, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader98 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader98 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !263)
  call void @llvm.experimental.noalias.scope.decl(metadata !264)
  %i.ck = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !38, !alias.scope !264, !noalias !263
  store i64 %i.ck, ptr %.012.i.i.i.i.i, align 8, !tbaa !38, !alias.scope !263, !noalias !264
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !38, !alias.scope !264, !noalias !263
  %i.cl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cl, %i.bg
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !257

_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block94, %_ZNKSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bt, %_ZNKSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.cd, %middle.block94 ], [ %i.cm, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i22.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i22.i.i, label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bm) #20
  br label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i
  store ptr %i.bt, ptr %1, align 8, !tbaa !32
  store ptr %i.cn, ptr %i.r, align 8, !tbaa !33
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.br ; 2 uses
  store ptr %i.co, ptr %i.z, align 8, !tbaa !34
  br label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit: ; preds = %bb.k, %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i
  %i.cp = phi ptr [ %i.bh, %bb.k ], [ %i.co, %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ] ; 3 uses
  %i.cq = phi ptr [ %i.bg, %bb.k ], [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ]
  %i.cr = load ptr, ptr %i.bf, align 8, !tbaa !77, !nonnull !39, !align !78 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !48 ; 2 uses
  %i.cu = load ptr, ptr %i.cr, align 8, !tbaa !47 ; 4 uses
  %i.cv = ptrtoint ptr %i.ct to i64
  %.not.i22 = icmp eq ptr %i.ct, %i.cu
  br i1 %.not.i22, label %.critedge, label %bb.o, !prof !80

bb.o:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit
  %.0.copyload5.i = load i8, ptr %i.cu, align 1
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 1 ; 3 uses
  store ptr %i.cw, ptr %i.cr, align 8, !tbaa !47
  %i.cx = trunc nuw i8 %.0.copyload5.i to i1
  br i1 %i.cx, label %bb.p, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread44

bb.p:                                             ; preds = %bb.o
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cv, %i.cy
  %i.da = icmp ugt i64 %i.cz, 3
  br i1 %i.da, label %bb.q, label %_ZN11struct_pack6detail13memory_reader4readEPcm.exit2.i, !prof !51

bb.q:                                             ; preds = %bb.p
  %.0.copyload.i = load i32, ptr %i.cw, align 1
  %i.db = getelementptr inbounds nuw i8, ptr %i.cu, i64 5
  store ptr %i.db, ptr %i.cr, align 8, !tbaa !47
  br label %_ZN11struct_pack6detail13memory_reader4readEPcm.exit2.i

_ZN11struct_pack6detail13memory_reader4readEPcm.exit2.i: ; preds = %bb.q, %bb.p
  %.07.i = phi i32 [ %.0.copyload.i, %bb.q ], [ 0, %bb.p ] ; 2 uses
  br label %_ZSt9__advanceIPKN11struct_pack6detail8MD5_pairElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i

_ZSt9__advanceIPKN11struct_pack6detail8MD5_pairElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i: ; preds = %_ZSt9__advanceIPKN11struct_pack6detail8MD5_pairElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit2.i
  %.017.i.i.i.i = phi i64 [ 3, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit2.i ], [ %.1.i.i.i.i, %_ZSt9__advanceIPKN11struct_pack6detail8MD5_pairElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i = phi ptr [ @_ZN11struct_pack6detail7MD5_setISt5tupleIJN18virtual_base_class4obj1ENS3_4obj2ENS3_4obj3EEEE5valueE, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit2.i ], [ %.112.i.i.i.i, %_ZSt9__advanceIPKN11struct_pack6detail8MD5_pairElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ] ; 2 uses
  %i.dc = lshr i64 %.017.i.i.i.i, 1               ; 3 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.01116.i.i.i.i, i64 %i.dc ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !84
  %i.df = icmp ult i32 %i.de, %.07.i              ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dh = xor i64 %i.dc, -1
  %i.di = add nsw i64 %.017.i.i.i.i, %i.dh
  %.112.i.i.i.i = select i1 %i.df, ptr %i.dg, ptr %.01116.i.i.i.i ; 4 uses
  %.1.i.i.i.i = select i1 %i.df, i64 %i.di, i64 %i.dc ; 2 uses
  %i.dj = icmp sgt i64 %.1.i.i.i.i, 0
  br i1 %i.dj, label %_ZSt9__advanceIPKN11struct_pack6detail8MD5_pairElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, label %_ZSt11lower_boundIPKN11struct_pack6detail8MD5_pairES2_ET_S5_S5_RKT0_.exit.i.i, !llvm.loop !6

_ZSt11lower_boundIPKN11struct_pack6detail8MD5_pairES2_ET_S5_S5_RKT0_.exit.i.i: ; preds = %_ZSt9__advanceIPKN11struct_pack6detail8MD5_pairElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i
  %.not.i.i23 = icmp eq ptr %.112.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN11struct_pack6detail7MD5_setISt5tupleIJN18virtual_base_class4obj1ENS3_4obj2ENS3_4obj3EEEE5valueE, i64 24)
  br i1 %.not.i.i23, label %.critedge, label %bb.r

bb.r:                                             ; preds = %_ZSt11lower_boundIPKN11struct_pack6detail8MD5_pairES2_ET_S5_S5_RKT0_.exit.i.i
  %i.dk = load i32, ptr %.112.i.i.i.i, align 4, !tbaa !84
  %i.dl = icmp eq i32 %i.dk, %.07.i
  br i1 %i.dl, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit, label %.critedge

_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit: ; preds = %bb.r
  %i.dm = getelementptr inbounds nuw i8, ptr %.112.i.i.i.i, i64 4
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !85
  %i.do = zext i32 %i.dn to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr %0, ptr %i.a, align 8, !tbaa !87
  %i.dp = call i32 @_ZN3ylt10reflection15template_switchIN11struct_pack6detail36deserialize_one_derived_class_helperISt5tupleIJN18virtual_base_class4obj1ENS6_4obj2ENS6_4obj3EEESt17integral_constantImLm2EESB_ImLm18446744073709551615EESB_ImLm1EEEEJPNS3_8unpackerINS3_13memory_readerELm0ELb0EEERSt10unique_ptrINS6_4baseESt14default_deleteISL_EEEEEDcmDpOT0_(i64 noundef %i.do, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.cq) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %.not = icmp eq i32 %i.dp, 0
  br i1 %.not, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread44, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit..critedge_crit_edge, !prof !88

_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit..critedge_crit_edge: ; preds = %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit
  %.pre = load ptr, ptr %i.z, align 8, !tbaa !34
  br label %.critedge

.critedge:                                        ; preds = %_ZSt11lower_boundIPKN11struct_pack6detail8MD5_pairES2_ET_S5_S5_RKT0_.exit.i.i, %bb.r, %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit..critedge_crit_edge
  %i.dq = phi ptr [ %.pre, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit..critedge_crit_edge ], [ %i.cp, %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit ], [ %i.cp, %bb.r ], [ %i.cp, %_ZSt11lower_boundIPKN11struct_pack6detail8MD5_pairES2_ET_S5_S5_RKT0_.exit.i.i ]
  %.sroa.06.1.i43 = phi i32 [ %i.dp, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit..critedge_crit_edge ], [ 2, %_ZSt11lower_boundIPKN11struct_pack6detail8MD5_pairES2_ET_S5_S5_RKT0_.exit.i.i ], [ 2, %bb.r ], [ 1, %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit ] ; 2 uses
  %i.dr = load ptr, ptr %i.r, align 8, !tbaa !33
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE13shrink_to_fitEv.exit, label %bb.s

bb.s:                                             ; preds = %.critedge
  %i.dt = call noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS3_EESaIS6_EELb1EE8_S_do_itERS8_(ptr noundef nonnull align 8 dereferenceable(24) %1) #18 ; 0 uses
  br label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE13shrink_to_fitEv.exit

_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread44: ; preds = %bb.o, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit
  %i.du = add nuw i64 %.047, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.du, %.038
  br i1 %exitcond.not, label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE13shrink_to_fitEv.exit, label %bb.j, !llvm.loop !258

_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE13shrink_to_fitEv.exit: ; preds = %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread44, %bb.b, %bb.c, %bb.d, %bb.f, %bb.s, %.critedge
  %.sroa.037.1 = phi i32 [ 0, %bb.f ], [ %.sroa.06.1.i43, %bb.s ], [ %.sroa.06.1.i43, %.critedge ], [ 1, %bb.d ], [ 1, %bb.c ], [ 1, %bb.b ], [ 0, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread44 ]
  ret i32 %.sroa.037.1
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local i32 @_ZN3ylt10reflection15template_switchIN11struct_pack6detail36deserialize_one_derived_class_helperISt5tupleIJN18virtual_base_class4obj1ENS6_4obj2ENS6_4obj3EEESt17integral_constantImLm2EESB_ImLm18446744073709551615EESB_ImLm1EEEEJPNS3_8unpackerINS3_13memory_readerELm0ELb0EEERSt10unique_ptrINS6_4baseESt14default_deleteISL_EEEEEDcmDpOT0_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.123, align 8            ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !87     ; 4 uses
  switch i64 %0, label %bb.q [
    i64 0, label %bb.b
    i64 1, label %bb.m
    i64 2, label %bb.p
  ]

bb.b:                                             ; preds = %bb.a
end_hunk_1
begin_hunk_2_@_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE11deserializeISt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS8_EESaISB_EEJEEENS_8err_codeERT_DpRT0_:bb.a
  %i.am = icmp ne i32 %i.al, 0
  %i.an = zext i1 %i.am to i32
  %.not4.i = icmp eq i32 %i.an, 0
  br i1 %.not4.i, label %bb.k, label %_ZN11struct_pack6detail13memory_reader9read_viewEm.exit.thread, !prof !51

bb.k:                                             ; preds = %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE22deserialize_compatibleEj.exit.i, %bb.j
  %i.ao = lshr i8 %.0.copyload, 3
  %i.ap = and i8 %i.ao, 3                         ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.ap, ptr %i.aq, align 8, !tbaa !79
  %i.ar = icmp eq i8 %i.ap, 0
  br i1 %i.ar, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.thread, %bb.k
  %i.as = tail call i32 @_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS8_EESaISB_EEEENS_8err_codeERT3_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZN11struct_pack6detail13memory_reader9read_viewEm.exit.thread

bb.m:                                             ; preds = %bb.k
  %i.at = tail call i32 @_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS8_EESaISB_EEEENS_8err_codeERT3_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZN11struct_pack6detail13memory_reader9read_viewEm.exit.thread

_ZN11struct_pack6detail13memory_reader9read_viewEm.exit.thread: ; preds = %bb.j, %bb.i, %bb.l, %bb.m, %bb.f, %bb.g, %bb.h, %bb.d, %bb.a, %bb.b
  %.sroa.011.0 = phi i32 [ 2, %bb.b ], [ 1, %bb.f ], [ 1, %bb.g ], [ 1, %bb.h ], [ %i.as, %bb.l ], [ 1, %bb.d ], [ 1, %bb.a ], [ %i.at, %bb.m ], [ 3, %bb.j ], [ 1, %bb.i ]
  ret i32 %.sroa.011.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local i32 @_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS8_EESaISB_EEEENS_8err_codeERT3_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !77, !nonnull !39, !align !78 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !47   ; 3 uses
  %.not36 = icmp eq ptr %i.e, %i.f
  br i1 %.not36, label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE13shrink_to_fitEv.exit, label %bb.b, !prof !80

bb.b:                                             ; preds = %bb.a
  %.0.copyload = load i8, ptr %i.f, align 1       ; 2 uses
  %.0.insert.ext = zext i8 %.0.copyload to i64    ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store ptr %i.g, ptr %i.c, align 8, !tbaa !47
  %i.h = icmp eq i8 %.0.copyload, 0
  br i1 %i.h, label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE13shrink_to_fitEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %1, align 8, !tbaa !62     ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !63   ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, %i.i
  br i1 %.not.i.i, label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.p, %_ZSt8_DestroyISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i ], [ %i.i, %bb.c ] ; 2 uses
  %i.l = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !65 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN10base_class4baseEEclEPS1_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN10base_class4baseEEclEPS1_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #18, !inline_history !10
  br label %_ZSt8_DestroyISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN10base_class4baseEEclEPS1_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, %i.k
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  store ptr %i.i, ptr %i.j, align 8, !tbaa !63
  %.pr = load ptr, ptr %1, align 8, !tbaa !62
  br label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE5clearEv.exit

_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE5clearEv.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.c
  %i.q = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i ], [ %i.i, %bb.c ] ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !64
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64                 ; 4 uses
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = ashr exact i64 %i.v, 3
  %i.x = icmp ult i64 %i.w, %.0.insert.ext
  br i1 %i.x, label %_ZNSt12_Vector_baseISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit.preheader

_ZNSt12_Vector_baseISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE5clearEv.exit
  %i.y = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.z = sub i64 %i.y, %i.u
  %i.aa = shl nuw nsw i64 %.0.insert.ext, 3
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #19 ; 9 uses
  %.not10.i.i.i.i = icmp eq ptr %i.q, %i.i
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i16.preheader

.lr.ph.i.i.i.i16.preheader:                       ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i
  %i.ac = add i64 %i.y, -8
  %i.ad = sub i64 %i.ac, %i.u                     ; 2 uses
  %i.ae = lshr i64 %i.ad, 3
  %i.af = add nuw nsw i64 %i.ae, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ad, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i16.preheader93, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i16.preheader
  %i.ag = add i64 %i.y, -8
  %i.ah = sub i64 %i.ag, %i.u
  %i.ai = and i64 %i.ah, -8
  %i.aj = add i64 %i.ai, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ab, i64 %i.aj
  %scevgep61 = getelementptr i8, ptr %i.q, i64 %i.aj
  %bound0 = icmp ult ptr %i.ab, %scevgep61
  %bound1 = icmp ult ptr %i.q, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i16.preheader93, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.af, 4611686018427387900     ; 3 uses
  %i.ak = shl i64 %n.vec, 3                       ; 2 uses
  %i.al = getelementptr i8, ptr %i.ab, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.q, i64 %i.ak
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.an = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ab, i64 %i.an ; 2 uses
  %next.gep62 = getelementptr i8, ptr %i.q, i64 %i.an ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !294)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !295)
  %i.ao = getelementptr i8, ptr %next.gep62, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep62, align 8, !tbaa !65, !alias.scope !296, !noalias !294
  %wide.load63 = load <2 x i64>, ptr %i.ao, align 8, !tbaa !65, !alias.scope !296, !noalias !294
  %i.ap = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !65, !alias.scope !297, !noalias !296
  store <2 x i64> %wide.load63, ptr %i.ap, align 8, !tbaa !65, !alias.scope !297, !noalias !296
  %i.aq = getelementptr i8, ptr %next.gep62, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep62, align 8, !tbaa !65, !alias.scope !296, !noalias !294
  store <2 x ptr> splat (ptr null), ptr %i.aq, align 8, !tbaa !65, !alias.scope !296, !noalias !294
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !283

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i16.preheader93

.lr.ph.i.i.i.i16.preheader93:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i16.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.ab, %vector.memcheck ], [ %i.ab, %.lr.ph.i.i.i.i16.preheader ], [ %i.al, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.q, %vector.memcheck ], [ %i.q, %.lr.ph.i.i.i.i16.preheader ], [ %i.am, %middle.block ]
  br label %.lr.ph.i.i.i.i16

.lr.ph.i.i.i.i16:                                 ; preds = %.lr.ph.i.i.i.i16.preheader93, %.lr.ph.i.i.i.i16
  %.012.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i16 ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i16.preheader93 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i16 ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i16.preheader93 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !294)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !295)
  %i.as = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !65, !alias.scope !295, !noalias !294
  store i64 %i.as, ptr %.012.i.i.i.i, align 8, !tbaa !65, !alias.scope !294, !noalias !295
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !65, !alias.scope !295, !noalias !294
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i17 = icmp eq ptr %i.at, %i.i
  br i1 %.not.i.i.i.i17, label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i16, !llvm.loop !284

_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i16, %middle.block, %_ZNSt12_Vector_baseISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.q, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #20
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.ab, ptr %1, align 8, !tbaa !62
  %i.av = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store ptr %i.av, ptr %i.j, align 8, !tbaa !63
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.0.insert.ext
  store ptr %i.aw, ptr %i.r, align 8, !tbaa !64
  br label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit.preheader

_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit.preheader: ; preds = %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE5clearEv.exit, %_ZNSt12_Vector_baseISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i
  br label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit

_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit.preheader, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread33
  %.037 = phi i64 [ %i.dl, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread33 ], [ 0, %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit.preheader ]
  %i.ax = load ptr, ptr %i.j, align 8, !tbaa !63  ; 7 uses
  %i.ay = load ptr, ptr %i.r, align 8, !tbaa !64  ; 2 uses
  %.not.i = icmp eq ptr %i.ax, %i.ay
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit
  store ptr null, ptr %i.ax, align 8, !tbaa !59
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.az, ptr %i.j, align 8, !tbaa !63
  br label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit

bb.f:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit
  %i.ba = load ptr, ptr %1, align 8, !tbaa !62    ; 10 uses
  %i.bb = ptrtoint ptr %i.ax to i64               ; 3 uses
  %i.bc = ptrtoint ptr %i.ba to i64               ; 3 uses
  %i.bd = sub i64 %i.bb, %i.bc                    ; 4 uses
  %i.be = icmp eq i64 %i.bd, 9223372036854775800
  br i1 %i.be, label %bb.g, label %_ZNKSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #21
  unreachable

_ZNKSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.bf = ashr exact i64 %i.bd, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bf, i64 1)
  %2 = add nsw i64 %.sroa.speculated.i.i.i, %i.bf ; 2 uses
  %i.bg = icmp ult i64 %2, %i.bf
  %i.bh = call i64 @llvm.umin.i64(i64 %2, i64 1152921504606846975)
  %i.bi = select i1 %i.bg, i64 1152921504606846975, i64 %i.bh ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bi, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bj = shl nuw nsw i64 %i.bi, 3
  %i.bk = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #19 ; 10 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bd
  store ptr null, ptr %i.bl, align 8, !tbaa !59
  %.not10.i.i.i.i.i = icmp eq ptr %i.ba, %i.ax
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.bm = add i64 %i.bb, -8
  %i.bn = sub i64 %i.bm, %i.bc                    ; 2 uses
  %i.bo = lshr i64 %i.bn, 3
  %i.bp = add nuw nsw i64 %i.bo, 1                ; 2 uses
  %min.iters.check74 = icmp ult i64 %i.bn, 56
  br i1 %min.iters.check74, label %.lr.ph.i.i.i.i.i.preheader88, label %vector.memcheck65

vector.memcheck65:                                ; preds = %.lr.ph.i.i.i.i.i.preheader
  %scevgep66 = getelementptr i8, ptr %i.bk, i64 8
  %i.bq = add i64 %i.bb, -8
  %i.br = sub i64 %i.bq, %i.bc
  %i.bs = and i64 %i.br, -8                       ; 2 uses
  %scevgep67 = getelementptr i8, ptr %scevgep66, i64 %i.bs
  %scevgep68 = getelementptr i8, ptr %i.ba, i64 8
  %scevgep69 = getelementptr i8, ptr %scevgep68, i64 %i.bs
  %bound070 = icmp ult ptr %i.bk, %scevgep69
  %bound171 = icmp ult ptr %i.ba, %scevgep67
  %found.conflict72 = and i1 %bound070, %bound171
  br i1 %found.conflict72, label %.lr.ph.i.i.i.i.i.preheader88, label %vector.ph75

vector.ph75:                                      ; preds = %vector.memcheck65
  %n.vec76 = and i64 %i.bp, 4611686018427387900   ; 3 uses
  %i.bt = shl i64 %n.vec76, 3                     ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bk, i64 %i.bt  ; 2 uses
  %i.bv = getelementptr i8, ptr %i.ba, i64 %i.bt
  br label %vector.body77

vector.body77:                                    ; preds = %vector.body77, %vector.ph75
  %index78 = phi i64 [ 0, %vector.ph75 ], [ %index.next83, %vector.body77 ] ; 2 uses
  %i.bw = shl i64 %index78, 3                     ; 2 uses
  %next.gep79 = getelementptr i8, ptr %i.bk, i64 %i.bw ; 2 uses
  %next.gep80 = getelementptr i8, ptr %i.ba, i64 %i.bw ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !298)
  call void @llvm.experimental.noalias.scope.decl(metadata !299)
  %i.bx = getelementptr i8, ptr %next.gep80, i64 16
  %wide.load81 = load <2 x i64>, ptr %next.gep80, align 8, !tbaa !65, !alias.scope !300, !noalias !298
  %wide.load82 = load <2 x i64>, ptr %i.bx, align 8, !tbaa !65, !alias.scope !300, !noalias !298
  %i.by = getelementptr i8, ptr %next.gep79, i64 16
  store <2 x i64> %wide.load81, ptr %next.gep79, align 8, !tbaa !65, !alias.scope !301, !noalias !300
  store <2 x i64> %wide.load82, ptr %i.by, align 8, !tbaa !65, !alias.scope !301, !noalias !300
  %i.bz = getelementptr i8, ptr %next.gep80, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep80, align 8, !tbaa !65, !alias.scope !300, !noalias !298
  store <2 x ptr> splat (ptr null), ptr %i.bz, align 8, !tbaa !65, !alias.scope !300, !noalias !298
  %index.next83 = add nuw i64 %index78, 4         ; 2 uses
  %i.ca = icmp eq i64 %index.next83, %n.vec76
  br i1 %i.ca, label %middle.block84, label %vector.body77, !llvm.loop !291

middle.block84:                                   ; preds = %vector.body77
  %cmp.n85 = icmp eq i64 %i.bp, %n.vec76
  br i1 %cmp.n85, label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i, label %.lr.ph.i.i.i.i.i.preheader88

.lr.ph.i.i.i.i.i.preheader88:                     ; preds = %vector.memcheck65, %.lr.ph.i.i.i.i.i.preheader, %middle.block84
  %.012.i.i.i.i.i.ph = phi ptr [ %i.bk, %vector.memcheck65 ], [ %i.bk, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bu, %middle.block84 ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.ba, %vector.memcheck65 ], [ %i.ba, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bv, %middle.block84 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader88, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader88 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.cc, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader88 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !298)
  call void @llvm.experimental.noalias.scope.decl(metadata !299)
  %i.cb = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !65, !alias.scope !299, !noalias !298
  store i64 %i.cb, ptr %.012.i.i.i.i.i, align 8, !tbaa !65, !alias.scope !298, !noalias !299
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !65, !alias.scope !299, !noalias !298
  %i.cc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cc, %i.ax
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !292

_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block84, %_ZNKSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bk, %_ZNKSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bu, %middle.block84 ], [ %i.cd, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i22.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i22.i.i, label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.bd) #20
  br label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i
  store ptr %i.bk, ptr %1, align 8, !tbaa !62
  store ptr %i.ce, ptr %i.j, align 8, !tbaa !63
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bi ; 2 uses
  store ptr %i.cf, ptr %i.r, align 8, !tbaa !64
  br label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i
  %i.cg = phi ptr [ %i.ay, %bb.e ], [ %i.cf, %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ] ; 3 uses
  %i.ch = phi ptr [ %i.ax, %bb.e ], [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ]
  %i.ci = load ptr, ptr %i.b, align 8, !tbaa !77, !nonnull !39, !align !78 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !48 ; 2 uses
  %i.cl = load ptr, ptr %i.ci, align 8, !tbaa !47 ; 4 uses
  %i.cm = ptrtoint ptr %i.ck to i64
  %.not.i18 = icmp eq ptr %i.ck, %i.cl
  br i1 %.not.i18, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread, label %bb.i, !prof !80

bb.i:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit
  %.0.copyload5.i = load i8, ptr %i.cl, align 1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 1 ; 3 uses
  store ptr %i.cn, ptr %i.ci, align 8, !tbaa !47
  %i.co = trunc nuw i8 %.0.copyload5.i to i1
  br i1 %i.co, label %bb.j, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread33

bb.j:                                             ; preds = %bb.i
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.cm, %i.cp
  %i.cr = icmp ugt i64 %i.cq, 3
  br i1 %i.cr, label %bb.k, label %_ZN11struct_pack6detail13memory_reader4readEPcm.exit2.i, !prof !51

bb.k:                                             ; preds = %bb.j
  %.0.copyload.i = load i32, ptr %i.cn, align 1
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 5
  store ptr %i.cs, ptr %i.ci, align 8, !tbaa !47
  br label %_ZN11struct_pack6detail13memory_reader4readEPcm.exit2.i

_ZN11struct_pack6detail13memory_reader4readEPcm.exit2.i: ; preds = %bb.k, %bb.j
  %.07.i = phi i32 [ %.0.copyload.i, %bb.k ], [ 0, %bb.j ] ; 2 uses
  br label %_ZSt9__advanceIPKN11struct_pack6detail8MD5_pairElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i

_ZSt9__advanceIPKN11struct_pack6detail8MD5_pairElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i: ; preds = %_ZSt9__advanceIPKN11struct_pack6detail8MD5_pairElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit2.i
  %.017.i.i.i.i = phi i64 [ 4, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit2.i ], [ %.1.i.i.i.i, %_ZSt9__advanceIPKN11struct_pack6detail8MD5_pairElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i = phi ptr [ @_ZN11struct_pack6detail7MD5_setISt5tupleIJN10base_class4baseENS3_4obj1ENS3_4obj2ENS3_4obj3EEEE5valueE, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit2.i ], [ %.112.i.i.i.i, %_ZSt9__advanceIPKN11struct_pack6detail8MD5_pairElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ] ; 2 uses
  %i.ct = lshr i64 %.017.i.i.i.i, 1               ; 3 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %.01116.i.i.i.i, i64 %i.ct ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !84
  %i.cw = icmp ult i32 %i.cv, %.07.i              ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cy = xor i64 %i.ct, -1
  %i.cz = add nsw i64 %.017.i.i.i.i, %i.cy
  %.112.i.i.i.i = select i1 %i.cw, ptr %i.cx, ptr %.01116.i.i.i.i ; 4 uses
  %.1.i.i.i.i = select i1 %i.cw, i64 %i.cz, i64 %i.ct ; 2 uses
  %i.da = icmp sgt i64 %.1.i.i.i.i, 0
  br i1 %i.da, label %_ZSt9__advanceIPKN11struct_pack6detail8MD5_pairElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, label %_ZSt11lower_boundIPKN11struct_pack6detail8MD5_pairES2_ET_S5_S5_RKT0_.exit.i.i, !llvm.loop !6

_ZSt11lower_boundIPKN11struct_pack6detail8MD5_pairES2_ET_S5_S5_RKT0_.exit.i.i: ; preds = %_ZSt9__advanceIPKN11struct_pack6detail8MD5_pairElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i
  %.not.i.i19 = icmp eq ptr %.112.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN11struct_pack6detail7MD5_setISt5tupleIJN10base_class4baseENS3_4obj1ENS3_4obj2ENS3_4obj3EEEE5valueE, i64 32)
  br i1 %.not.i.i19, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZSt11lower_boundIPKN11struct_pack6detail8MD5_pairES2_ET_S5_S5_RKT0_.exit.i.i
  %i.db = load i32, ptr %.112.i.i.i.i, align 4, !tbaa !84
  %i.dc = icmp eq i32 %i.db, %.07.i
  br i1 %i.dc, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread

_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit: ; preds = %bb.l
  %i.dd = getelementptr inbounds nuw i8, ptr %.112.i.i.i.i, i64 4
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !85
  %i.df = zext i32 %i.de to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr %0, ptr %i.a, align 8, !tbaa !87
  %i.dg = call i32 @_ZN3ylt10reflection15template_switchIN11struct_pack6detail36deserialize_one_derived_class_helperISt5tupleIJN10base_class4baseENS6_4obj1ENS6_4obj2ENS6_4obj3EEESt17integral_constantImLm1EESC_ImLm18446744073709551615EESD_EEJPNS3_8unpackerINS3_13memory_readerELm0ELb0EEERSt10unique_ptrIS7_St14default_deleteIS7_EEEEEDcmDpOT0_(i64 noundef %i.df, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.ch) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %.not = icmp eq i32 %i.dg, 0
  br i1 %.not, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread33, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit._ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread_crit_edge, !prof !88

_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit._ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread_crit_edge: ; preds = %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit
  %.pre = load ptr, ptr %i.r, align 8, !tbaa !64
  br label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread

_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread: ; preds = %_ZSt11lower_boundIPKN11struct_pack6detail8MD5_pairES2_ET_S5_S5_RKT0_.exit.i.i, %bb.l, %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit._ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread_crit_edge
  %i.dh = phi ptr [ %.pre, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit._ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread_crit_edge ], [ %i.cg, %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit ], [ %i.cg, %bb.l ], [ %i.cg, %_ZSt11lower_boundIPKN11struct_pack6detail8MD5_pairES2_ET_S5_S5_RKT0_.exit.i.i ]
  %.sroa.06.1.i32 = phi i32 [ %i.dg, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit._ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread_crit_edge ], [ 2, %_ZSt11lower_boundIPKN11struct_pack6detail8MD5_pairES2_ET_S5_S5_RKT0_.exit.i.i ], [ 2, %bb.l ], [ 1, %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit ] ; 2 uses
  %i.di = load ptr, ptr %i.j, align 8, !tbaa !63
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE13shrink_to_fitEv.exit, label %bb.m

bb.m:                                             ; preds = %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread
  %i.dk = call noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS3_EESaIS6_EELb1EE8_S_do_itERS8_(ptr noundef nonnull align 8 dereferenceable(24) %1) #18 ; 0 uses
  br label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE13shrink_to_fitEv.exit

_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread33: ; preds = %bb.i, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit
  %i.dl = add nuw nsw i64 %.037, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.dl, %.0.insert.ext
  br i1 %exitcond.not, label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE13shrink_to_fitEv.exit, label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit, !llvm.loop !293

_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE13shrink_to_fitEv.exit: ; preds = %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread33, %bb.a, %bb.b, %bb.m, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread
  %.sroa.027.1 = phi i32 [ 0, %bb.b ], [ %.sroa.06.1.i32, %bb.m ], [ %.sroa.06.1.i32, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread ], [ 1, %bb.a ], [ 0, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread33 ]
  ret i32 %.sroa.027.1
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local i32 @_ZN3ylt10reflection15template_switchIN11struct_pack6detail36deserialize_one_derived_class_helperISt5tupleIJN10base_class4baseENS6_4obj1ENS6_4obj2ENS6_4obj3EEESt17integral_constantImLm1EESC_ImLm18446744073709551615EESD_EEJPNS3_8unpackerINS3_13memory_readerELm0ELb0EEERSt10unique_ptrIS7_St14default_deleteIS7_EEEEEDcmDpOT0_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !87     ; 4 uses
  switch i64 %0, label %bb.u [
    i64 0, label %bb.b
    i64 1, label %bb.d
    i64 2, label %bb.k
    i64 3, label %bb.n
  ]

bb.b:                                             ; preds = %bb.a
end_hunk_2
begin_hunk_3_@_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS8_EESaISB_EEEENS_8err_codeERT3_:bb.a
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  switch i8 %i.c, label %bb.e [
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %i.k, 1
  br i1 %i.l, label %_ZN11struct_pack6detail13memory_reader4readEPcm.exit.thread, label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE13shrink_to_fitEv.exit, !prof !51

_ZN11struct_pack6detail13memory_reader4readEPcm.exit.thread: ; preds = %bb.b
  %.0.copyload30 = load i16, ptr %i.h, align 1
  %.0.insert.ext32 = zext i16 %.0.copyload30 to i64
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %i.k, 3
  br i1 %i.m, label %_ZN11struct_pack6detail13memory_reader4readEPcm.exit18.thread, label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE13shrink_to_fitEv.exit, !prof !51

_ZN11struct_pack6detail13memory_reader4readEPcm.exit18.thread: ; preds = %bb.c
  %.0.copyload29 = load i32, ptr %i.h, align 1
  %.0.insert.ext = zext i32 %.0.copyload29 to i64
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.n = icmp ugt i64 %i.k, 7
  br i1 %i.n, label %_ZN11struct_pack6detail13memory_reader4readEPcm.exit19.thread, label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE13shrink_to_fitEv.exit, !prof !51

_ZN11struct_pack6detail13memory_reader4readEPcm.exit19.thread: ; preds = %bb.d
  %.0.copyload = load i64, ptr %i.h, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  unreachable

bb.f:                                             ; preds = %_ZN11struct_pack6detail13memory_reader4readEPcm.exit19.thread, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit18.thread, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit.thread
  %.sink66 = phi i64 [ 8, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit19.thread ], [ 4, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit18.thread ], [ 2, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit.thread ]
  %.038 = phi i64 [ %.0.copyload, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit19.thread ], [ %.0.insert.ext, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit18.thread ], [ %.0.insert.ext32, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit.thread ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sink66
  store ptr %i.o, ptr %i.e, align 8, !tbaa !47
  %i.p = icmp eq i64 %.038, 0
  br i1 %i.p, label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE13shrink_to_fitEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %1, align 8, !tbaa !62     ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !63   ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, %i.q
  br i1 %.not.i.i, label %bb.h, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %_ZSt8_DestroyISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.x, %_ZSt8_DestroyISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i ], [ %i.q, %bb.g ] ; 2 uses
  %i.t = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !65 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN10base_class4baseEEclEPS1_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN10base_class4baseEEclEPS1_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !25
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #18, !inline_history !10
  br label %_ZSt8_DestroyISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN10base_class4baseEEclEPS1_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.x, %i.s
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  store ptr %i.q, ptr %i.r, align 8, !tbaa !63
  %.pr = load ptr, ptr %1, align 8, !tbaa !62
  br label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.g
  %i.y = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i ], [ %i.q, %bb.g ] ; 10 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %.038, i64 131072) ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !64
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64                ; 4 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = ashr exact i64 %i.ad, 3
  %i.af = icmp ult i64 %i.ae, %.sroa.speculated
  br i1 %i.af, label %_ZNSt12_Vector_baseISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit

_ZNSt12_Vector_baseISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.h
  %i.ag = ptrtoint ptr %i.q to i64                ; 3 uses
  %i.ah = sub i64 %i.ag, %i.ac
  %i.ai = shl nuw nsw i64 %.sroa.speculated, 3
  %i.aj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #19 ; 9 uses
  %.not10.i.i.i.i = icmp eq ptr %i.y, %i.q
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i20.preheader

.lr.ph.i.i.i.i20.preheader:                       ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i
  %i.ak = add i64 %i.ag, -8
  %i.al = sub i64 %i.ak, %i.ac                    ; 2 uses
  %i.am = lshr i64 %i.al, 3
  %i.an = add nuw nsw i64 %i.am, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.al, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i20.preheader103, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i20.preheader
  %i.ao = add i64 %i.ag, -8
  %i.ap = sub i64 %i.ao, %i.ac
  %i.aq = and i64 %i.ap, -8
  %i.ar = add i64 %i.aq, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.aj, i64 %i.ar
  %scevgep71 = getelementptr i8, ptr %i.y, i64 %i.ar
  %bound0 = icmp ult ptr %i.aj, %scevgep71
  %bound1 = icmp ult ptr %i.y, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i20.preheader103, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.an, 4611686018427387900     ; 3 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.aj, i64 %i.as
  %i.au = getelementptr i8, ptr %i.y, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aj, i64 %i.av ; 2 uses
  %next.gep72 = getelementptr i8, ptr %i.y, i64 %i.av ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  %i.aw = getelementptr i8, ptr %next.gep72, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep72, align 8, !tbaa !65, !alias.scope !340, !noalias !338
  %wide.load73 = load <2 x i64>, ptr %i.aw, align 8, !tbaa !65, !alias.scope !340, !noalias !338
  %i.ax = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !65, !alias.scope !341, !noalias !340
  store <2 x i64> %wide.load73, ptr %i.ax, align 8, !tbaa !65, !alias.scope !341, !noalias !340
  %i.ay = getelementptr i8, ptr %next.gep72, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep72, align 8, !tbaa !65, !alias.scope !340, !noalias !338
  store <2 x ptr> splat (ptr null), ptr %i.ay, align 8, !tbaa !65, !alias.scope !340, !noalias !338
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !327

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i20.preheader103

.lr.ph.i.i.i.i20.preheader103:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i20.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.aj, %vector.memcheck ], [ %i.aj, %.lr.ph.i.i.i.i20.preheader ], [ %i.at, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph.i.i.i.i20.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i20

.lr.ph.i.i.i.i20:                                 ; preds = %.lr.ph.i.i.i.i20.preheader103, %.lr.ph.i.i.i.i20
  %.012.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i20 ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i20.preheader103 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i20 ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i20.preheader103 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  %i.ba = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !65, !alias.scope !339, !noalias !338
  store i64 %i.ba, ptr %.012.i.i.i.i, align 8, !tbaa !65, !alias.scope !338, !noalias !339
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !65, !alias.scope !339, !noalias !338
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i21 = icmp eq ptr %i.bb, %i.q
  br i1 %.not.i.i.i.i21, label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i20, !llvm.loop !328

_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i20, %middle.block, %_ZNSt12_Vector_baseISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.y, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #20
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i: ; preds = %bb.i, %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.aj, ptr %1, align 8, !tbaa !62
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  store ptr %i.bd, ptr %i.r, align 8, !tbaa !63
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.sroa.speculated
  store ptr %i.be, ptr %i.z, align 8, !tbaa !64
  br label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit

_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit: ; preds = %bb.h, %_ZNSt12_Vector_baseISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread44
  %.047 = phi i64 [ 0, %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit ], [ %i.du, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread44 ]
  %i.bg = load ptr, ptr %i.r, align 8, !tbaa !63  ; 7 uses
  %i.bh = load ptr, ptr %i.z, align 8, !tbaa !64  ; 2 uses
  %.not.i = icmp eq ptr %i.bg, %i.bh
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr null, ptr %i.bg, align 8, !tbaa !59
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.bi, ptr %i.r, align 8, !tbaa !63
  br label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit

bb.l:                                             ; preds = %bb.j
  %i.bj = load ptr, ptr %1, align 8, !tbaa !62    ; 10 uses
  %i.bk = ptrtoint ptr %i.bg to i64               ; 3 uses
  %i.bl = ptrtoint ptr %i.bj to i64               ; 3 uses
  %i.bm = sub i64 %i.bk, %i.bl                    ; 4 uses
  %i.bn = icmp eq i64 %i.bm, 9223372036854775800
  br i1 %i.bn, label %bb.m, label %_ZNKSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.l
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #21
  unreachable

_ZNKSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %i.bo = ashr exact i64 %i.bm, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bo, i64 1)
  %2 = add nsw i64 %.sroa.speculated.i.i.i, %i.bo ; 2 uses
  %i.bp = icmp ult i64 %2, %i.bo
  %i.bq = call i64 @llvm.umin.i64(i64 %2, i64 1152921504606846975)
  %i.br = select i1 %i.bp, i64 1152921504606846975, i64 %i.bq ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.br, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bs = shl nuw nsw i64 %i.br, 3
  %i.bt = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bs) #19 ; 10 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bm
  store ptr null, ptr %i.bu, align 8, !tbaa !59
  %.not10.i.i.i.i.i = icmp eq ptr %i.bj, %i.bg
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.bv = add i64 %i.bk, -8
  %i.bw = sub i64 %i.bv, %i.bl                    ; 2 uses
  %i.bx = lshr i64 %i.bw, 3
  %i.by = add nuw nsw i64 %i.bx, 1                ; 2 uses
  %min.iters.check84 = icmp ult i64 %i.bw, 56
  br i1 %min.iters.check84, label %.lr.ph.i.i.i.i.i.preheader98, label %vector.memcheck75

vector.memcheck75:                                ; preds = %.lr.ph.i.i.i.i.i.preheader
  %scevgep76 = getelementptr i8, ptr %i.bt, i64 8
  %i.bz = add i64 %i.bk, -8
  %i.ca = sub i64 %i.bz, %i.bl
  %i.cb = and i64 %i.ca, -8                       ; 2 uses
  %scevgep77 = getelementptr i8, ptr %scevgep76, i64 %i.cb
  %scevgep78 = getelementptr i8, ptr %i.bj, i64 8
  %scevgep79 = getelementptr i8, ptr %scevgep78, i64 %i.cb
  %bound080 = icmp ult ptr %i.bt, %scevgep79
  %bound181 = icmp ult ptr %i.bj, %scevgep77
  %found.conflict82 = and i1 %bound080, %bound181
  br i1 %found.conflict82, label %.lr.ph.i.i.i.i.i.preheader98, label %vector.ph85

vector.ph85:                                      ; preds = %vector.memcheck75
  %n.vec86 = and i64 %i.by, 4611686018427387900   ; 3 uses
  %i.cc = shl i64 %n.vec86, 3                     ; 2 uses
  %i.cd = getelementptr i8, ptr %i.bt, i64 %i.cc  ; 2 uses
  %i.ce = getelementptr i8, ptr %i.bj, i64 %i.cc
  br label %vector.body87

vector.body87:                                    ; preds = %vector.body87, %vector.ph85
  %index88 = phi i64 [ 0, %vector.ph85 ], [ %index.next93, %vector.body87 ] ; 2 uses
  %i.cf = shl i64 %index88, 3                     ; 2 uses
  %next.gep89 = getelementptr i8, ptr %i.bt, i64 %i.cf ; 2 uses
  %next.gep90 = getelementptr i8, ptr %i.bj, i64 %i.cf ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !342)
  call void @llvm.experimental.noalias.scope.decl(metadata !343)
  %i.cg = getelementptr i8, ptr %next.gep90, i64 16
  %wide.load91 = load <2 x i64>, ptr %next.gep90, align 8, !tbaa !65, !alias.scope !344, !noalias !342
  %wide.load92 = load <2 x i64>, ptr %i.cg, align 8, !tbaa !65, !alias.scope !344, !noalias !342
  %i.ch = getelementptr i8, ptr %next.gep89, i64 16
  store <2 x i64> %wide.load91, ptr %next.gep89, align 8, !tbaa !65, !alias.scope !345, !noalias !344
  store <2 x i64> %wide.load92, ptr %i.ch, align 8, !tbaa !65, !alias.scope !345, !noalias !344
  %i.ci = getelementptr i8, ptr %next.gep90, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep90, align 8, !tbaa !65, !alias.scope !344, !noalias !342
  store <2 x ptr> splat (ptr null), ptr %i.ci, align 8, !tbaa !65, !alias.scope !344, !noalias !342
  %index.next93 = add nuw i64 %index88, 4         ; 2 uses
  %i.cj = icmp eq i64 %index.next93, %n.vec86
  br i1 %i.cj, label %middle.block94, label %vector.body87, !llvm.loop !335

middle.block94:                                   ; preds = %vector.body87
  %cmp.n95 = icmp eq i64 %i.by, %n.vec86
  br i1 %cmp.n95, label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i, label %.lr.ph.i.i.i.i.i.preheader98

.lr.ph.i.i.i.i.i.preheader98:                     ; preds = %vector.memcheck75, %.lr.ph.i.i.i.i.i.preheader, %middle.block94
  %.012.i.i.i.i.i.ph = phi ptr [ %i.bt, %vector.memcheck75 ], [ %i.bt, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cd, %middle.block94 ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.bj, %vector.memcheck75 ], [ %i.bj, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ce, %middle.block94 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader98, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader98 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader98 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !342)
  call void @llvm.experimental.noalias.scope.decl(metadata !343)
  %i.ck = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !65, !alias.scope !343, !noalias !342
  store i64 %i.ck, ptr %.012.i.i.i.i.i, align 8, !tbaa !65, !alias.scope !342, !noalias !343
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !65, !alias.scope !343, !noalias !342
  %i.cl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cl, %i.bg
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !336

_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block94, %_ZNKSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bt, %_ZNKSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.cd, %middle.block94 ], [ %i.cm, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i22.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i22.i.i, label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bm) #20
  br label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i
  store ptr %i.bt, ptr %1, align 8, !tbaa !62
  store ptr %i.cn, ptr %i.r, align 8, !tbaa !63
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.br ; 2 uses
  store ptr %i.co, ptr %i.z, align 8, !tbaa !64
  br label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit: ; preds = %bb.k, %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i
  %i.cp = phi ptr [ %i.bh, %bb.k ], [ %i.co, %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ] ; 3 uses
  %i.cq = phi ptr [ %i.bg, %bb.k ], [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ]
  %i.cr = load ptr, ptr %i.bf, align 8, !tbaa !77, !nonnull !39, !align !78 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !48 ; 2 uses
  %i.cu = load ptr, ptr %i.cr, align 8, !tbaa !47 ; 4 uses
  %i.cv = ptrtoint ptr %i.ct to i64
  %.not.i22 = icmp eq ptr %i.ct, %i.cu
  br i1 %.not.i22, label %.critedge, label %bb.o, !prof !80

bb.o:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit
  %.0.copyload5.i = load i8, ptr %i.cu, align 1
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 1 ; 3 uses
  store ptr %i.cw, ptr %i.cr, align 8, !tbaa !47
  %i.cx = trunc nuw i8 %.0.copyload5.i to i1
  br i1 %i.cx, label %bb.p, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread44

bb.p:                                             ; preds = %bb.o
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cv, %i.cy
  %i.da = icmp ugt i64 %i.cz, 3
  br i1 %i.da, label %bb.q, label %_ZN11struct_pack6detail13memory_reader4readEPcm.exit2.i, !prof !51

bb.q:                                             ; preds = %bb.p
  %.0.copyload.i = load i32, ptr %i.cw, align 1
  %i.db = getelementptr inbounds nuw i8, ptr %i.cu, i64 5
  store ptr %i.db, ptr %i.cr, align 8, !tbaa !47
  br label %_ZN11struct_pack6detail13memory_reader4readEPcm.exit2.i

_ZN11struct_pack6detail13memory_reader4readEPcm.exit2.i: ; preds = %bb.q, %bb.p
  %.07.i = phi i32 [ %.0.copyload.i, %bb.q ], [ 0, %bb.p ] ; 2 uses
  br label %_ZSt9__advanceIPKN11struct_pack6detail8MD5_pairElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i

_ZSt9__advanceIPKN11struct_pack6detail8MD5_pairElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i: ; preds = %_ZSt9__advanceIPKN11struct_pack6detail8MD5_pairElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit2.i
  %.017.i.i.i.i = phi i64 [ 4, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit2.i ], [ %.1.i.i.i.i, %_ZSt9__advanceIPKN11struct_pack6detail8MD5_pairElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i = phi ptr [ @_ZN11struct_pack6detail7MD5_setISt5tupleIJN10base_class4baseENS3_4obj1ENS3_4obj2ENS3_4obj3EEEE5valueE, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit2.i ], [ %.112.i.i.i.i, %_ZSt9__advanceIPKN11struct_pack6detail8MD5_pairElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ] ; 2 uses
  %i.dc = lshr i64 %.017.i.i.i.i, 1               ; 3 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.01116.i.i.i.i, i64 %i.dc ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !84
  %i.df = icmp ult i32 %i.de, %.07.i              ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dh = xor i64 %i.dc, -1
  %i.di = add nsw i64 %.017.i.i.i.i, %i.dh
  %.112.i.i.i.i = select i1 %i.df, ptr %i.dg, ptr %.01116.i.i.i.i ; 4 uses
  %.1.i.i.i.i = select i1 %i.df, i64 %i.di, i64 %i.dc ; 2 uses
  %i.dj = icmp sgt i64 %.1.i.i.i.i, 0
  br i1 %i.dj, label %_ZSt9__advanceIPKN11struct_pack6detail8MD5_pairElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, label %_ZSt11lower_boundIPKN11struct_pack6detail8MD5_pairES2_ET_S5_S5_RKT0_.exit.i.i, !llvm.loop !6

_ZSt11lower_boundIPKN11struct_pack6detail8MD5_pairES2_ET_S5_S5_RKT0_.exit.i.i: ; preds = %_ZSt9__advanceIPKN11struct_pack6detail8MD5_pairElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i
  %.not.i.i23 = icmp eq ptr %.112.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN11struct_pack6detail7MD5_setISt5tupleIJN10base_class4baseENS3_4obj1ENS3_4obj2ENS3_4obj3EEEE5valueE, i64 32)
  br i1 %.not.i.i23, label %.critedge, label %bb.r

bb.r:                                             ; preds = %_ZSt11lower_boundIPKN11struct_pack6detail8MD5_pairES2_ET_S5_S5_RKT0_.exit.i.i
  %i.dk = load i32, ptr %.112.i.i.i.i, align 4, !tbaa !84
  %i.dl = icmp eq i32 %i.dk, %.07.i
  br i1 %i.dl, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit, label %.critedge

_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit: ; preds = %bb.r
  %i.dm = getelementptr inbounds nuw i8, ptr %.112.i.i.i.i, i64 4
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !85
  %i.do = zext i32 %i.dn to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr %0, ptr %i.a, align 8, !tbaa !87
  %i.dp = call i32 @_ZN3ylt10reflection15template_switchIN11struct_pack6detail36deserialize_one_derived_class_helperISt5tupleIJN10base_class4baseENS6_4obj1ENS6_4obj2ENS6_4obj3EEESt17integral_constantImLm2EESC_ImLm18446744073709551615EESC_ImLm1EEEEJPNS3_8unpackerINS3_13memory_readerELm0ELb0EEERSt10unique_ptrIS7_St14default_deleteIS7_EEEEEDcmDpOT0_(i64 noundef %i.do, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.cq) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %.not = icmp eq i32 %i.dp, 0
  br i1 %.not, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread44, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit..critedge_crit_edge, !prof !88

_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit..critedge_crit_edge: ; preds = %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit
  %.pre = load ptr, ptr %i.z, align 8, !tbaa !64
  br label %.critedge

.critedge:                                        ; preds = %_ZSt11lower_boundIPKN11struct_pack6detail8MD5_pairES2_ET_S5_S5_RKT0_.exit.i.i, %bb.r, %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit..critedge_crit_edge
  %i.dq = phi ptr [ %.pre, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit..critedge_crit_edge ], [ %i.cp, %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit ], [ %i.cp, %bb.r ], [ %i.cp, %_ZSt11lower_boundIPKN11struct_pack6detail8MD5_pairES2_ET_S5_S5_RKT0_.exit.i.i ]
  %.sroa.06.1.i43 = phi i32 [ %i.dp, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit..critedge_crit_edge ], [ 2, %_ZSt11lower_boundIPKN11struct_pack6detail8MD5_pairES2_ET_S5_S5_RKT0_.exit.i.i ], [ 2, %bb.r ], [ 1, %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit ] ; 2 uses
  %i.dr = load ptr, ptr %i.r, align 8, !tbaa !63
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE13shrink_to_fitEv.exit, label %bb.s

bb.s:                                             ; preds = %.critedge
  %i.dt = call noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS3_EESaIS6_EELb1EE8_S_do_itERS8_(ptr noundef nonnull align 8 dereferenceable(24) %1) #18 ; 0 uses
  br label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE13shrink_to_fitEv.exit

_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread44: ; preds = %bb.o, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit
  %i.du = add nuw i64 %.047, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.du, %.038
  br i1 %exitcond.not, label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE13shrink_to_fitEv.exit, label %bb.j, !llvm.loop !337

_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE13shrink_to_fitEv.exit: ; preds = %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread44, %bb.b, %bb.c, %bb.d, %bb.f, %bb.s, %.critedge
  %.sroa.037.1 = phi i32 [ 0, %bb.f ], [ %.sroa.06.1.i43, %bb.s ], [ %.sroa.06.1.i43, %.critedge ], [ 1, %bb.d ], [ 1, %bb.c ], [ 1, %bb.b ], [ 0, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread44 ]
  ret i32 %.sroa.037.1
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local i32 @_ZN3ylt10reflection15template_switchIN11struct_pack6detail36deserialize_one_derived_class_helperISt5tupleIJN10base_class4baseENS6_4obj1ENS6_4obj2ENS6_4obj3EEESt17integral_constantImLm2EESC_ImLm18446744073709551615EESC_ImLm1EEEEJPNS3_8unpackerINS3_13memory_readerELm0ELb0EEERSt10unique_ptrIS7_St14default_deleteIS7_EEEEEDcmDpOT0_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !87     ; 6 uses
  switch i64 %0, label %bb.ac [
    i64 0, label %bb.b
    i64 1, label %bb.d
    i64 2, label %bb.o
    i64 3, label %bb.r
  ]

bb.b:                                             ; preds = %bb.a
end_hunk_3
