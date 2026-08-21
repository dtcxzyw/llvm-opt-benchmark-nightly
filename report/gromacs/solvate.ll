inline.NumInlined: 828
inline.NumDeleted: 373
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE13_M_assign_auxIPA3_fEEvT_S8_St20forward_iterator_tag:bb.a
vector.body58:                                    ; preds = %vector.body58, %vector.ph56
  %index59 = phi i64 [ 0, %vector.ph56 ], [ %index.next67, %vector.body58 ] ; 2 uses
  %i.bq = mul i64 %index59, 12                    ; 2 uses
  %next.gep60 = getelementptr i8, ptr %i.f, i64 %i.bq
  %next.gep61 = getelementptr i8, ptr %1, i64 %i.bq
  %wide.vec62 = load <24 x float>, ptr %next.gep61, align 4, !tbaa !23, !alias.scope !270
  store <24 x float> %wide.vec62, ptr %next.gep60, align 4, !alias.scope !273, !noalias !270
  %index.next67 = add nuw i64 %index59, 8         ; 2 uses
  %i.br = icmp eq i64 %index.next67, %n.vec57
  br i1 %i.br, label %middle.block68, label %vector.body58, !llvm.loop !275

middle.block68:                                   ; preds = %vector.body58
  %cmp.n69 = icmp eq i64 %i.bi, %n.vec57
  br i1 %cmp.n69, label %_ZSt4copyIPA3_fPN3gmx11BasicVectorIfEEET0_T_S7_S6_.exit26.loopexit, label %.lr.ph.i.i.i.i.i20.preheader

.lr.ph.i.i.i.i.i20.preheader:                     ; preds = %vector.memcheck47, %.lr.ph.preheader.i.i.i.i.i19, %middle.block68
  %.012.i.i.i.i.i21.ph = phi i64 [ %i.bf, %vector.memcheck47 ], [ %i.bf, %.lr.ph.preheader.i.i.i.i.i19 ], [ %i.bm, %middle.block68 ]
  %.0811.i.i.i.i.i22.ph = phi ptr [ %i.f, %vector.memcheck47 ], [ %i.f, %.lr.ph.preheader.i.i.i.i.i19 ], [ %i.bo, %middle.block68 ]
  %.0910.i.i.i.i.i23.ph = phi ptr [ %1, %vector.memcheck47 ], [ %1, %.lr.ph.preheader.i.i.i.i.i19 ], [ %i.bp, %middle.block68 ]
  br label %.lr.ph.i.i.i.i.i20

.lr.ph.i.i.i.i.i20:                               ; preds = %.lr.ph.i.i.i.i.i20.preheader, %.lr.ph.i.i.i.i.i20
  %.012.i.i.i.i.i21 = phi i64 [ %i.bx, %.lr.ph.i.i.i.i.i20 ], [ %.012.i.i.i.i.i21.ph, %.lr.ph.i.i.i.i.i20.preheader ] ; 2 uses
  %.0811.i.i.i.i.i22 = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i20 ], [ %.0811.i.i.i.i.i22.ph, %.lr.ph.i.i.i.i.i20.preheader ] ; 3 uses
  %.0910.i.i.i.i.i23 = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i20 ], [ %.0910.i.i.i.i.i23.ph, %.lr.ph.i.i.i.i.i20.preheader ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23, i64 8
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !23
  %i.bu = load <2 x float>, ptr %.0910.i.i.i.i.i23, align 4, !tbaa !23
  store <2 x float> %i.bu, ptr %.0811.i.i.i.i.i22, align 4
  %.sroa.5.0..08.sroa_idx.i.i.i.i.i25 = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22, i64 8
  store float %i.bt, ptr %.sroa.5.0..08.sroa_idx.i.i.i.i.i25, align 4, !tbaa !31
  %i.bv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23, i64 12
  %i.bw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22, i64 12
  %i.bx = add nsw i64 %.012.i.i.i.i.i21, -1
  %i.by = icmp samesign ugt i64 %.012.i.i.i.i.i21, 1
  br i1 %i.by, label %.lr.ph.i.i.i.i.i20, label %_ZSt4copyIPA3_fPN3gmx11BasicVectorIfEEET0_T_S7_S6_.exit26.loopexit, !llvm.loop !276

_ZSt4copyIPA3_fPN3gmx11BasicVectorIfEEET0_T_S7_S6_.exit26.loopexit: ; preds = %.lr.ph.i.i.i.i.i20, %middle.block68
  %.pre32 = load ptr, ptr %i.ae, align 8, !tbaa !212
  br label %_ZSt4copyIPA3_fPN3gmx11BasicVectorIfEEET0_T_S7_S6_.exit26

_ZSt4copyIPA3_fPN3gmx11BasicVectorIfEEET0_T_S7_S6_.exit26: ; preds = %_ZSt4copyIPA3_fPN3gmx11BasicVectorIfEEET0_T_S7_S6_.exit26.loopexit, %_ZSt9__advanceIPA3_flEvRT_T0_St26random_access_iterator_tag.exit
  %i.bz = phi ptr [ %.pre32, %_ZSt4copyIPA3_fPN3gmx11BasicVectorIfEEET0_T_S7_S6_.exit26.loopexit ], [ %i.af, %_ZSt9__advanceIPA3_flEvRT_T0_St26random_access_iterator_tag.exit ] ; 7 uses
  %.not13.i.i.i.i = icmp eq ptr %.sink.i, %2
  br i1 %.not13.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPA3_fPN3gmx11BasicVectorIfEES4_ET0_T_S7_S6_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt4copyIPA3_fPN3gmx11BasicVectorIfEEET0_T_S7_S6_.exit26
  %i.ca = add i64 %i.h, %i.a
  %i.cb = add i64 %i.ca, -12
  %i.cc = add i64 %i.ag, %i.b
  %i.cd = sub i64 %i.cb, %i.cc                    ; 2 uses
  %i.ce = udiv i64 %i.cd, 12
  %i.cf = add nuw nsw i64 %i.ce, 1                ; 2 uses
  %min.iters.check80 = icmp ult i64 %i.cd, 372
  br i1 %min.iters.check80, label %.lr.ph.i.i.i.i.preheader120, label %vector.memcheck73

vector.memcheck73:                                ; preds = %.lr.ph.i.i.i.i.preheader
  %i.cg = add i64 %i.h, %i.a
  %i.ch = add i64 %i.cg, -12
  %i.ci = add i64 %i.ag, %i.b
  %i.cj = sub i64 %i.ch, %i.ci
  %.fr = freeze i64 %i.cj                         ; 2 uses
  %i.ck = urem i64 %.fr, 12
  %i.cl = sub nuw i64 %.fr, %i.ck                 ; 2 uses
  %i.cm = getelementptr i8, ptr %i.bz, i64 %i.cl
  %scevgep74 = getelementptr i8, ptr %i.cm, i64 12
  %i.cn = add i64 %i.cl, %i.ag
  %i.co = add i64 %i.cn, 12
  %i.cp = sub i64 %i.co, %i.h
  %scevgep75 = getelementptr i8, ptr %1, i64 %i.cp
  %bound076 = icmp ult ptr %i.bz, %scevgep75
  %bound177 = icmp ult ptr %.sink.i, %scevgep74
  %found.conflict78 = and i1 %bound076, %bound177
  br i1 %found.conflict78, label %.lr.ph.i.i.i.i.preheader120, label %vector.ph81

vector.ph81:                                      ; preds = %vector.memcheck73
  %n.vec82 = and i64 %i.cf, 4611686018427387896   ; 3 uses
  %i.cq = mul i64 %n.vec82, 12                    ; 2 uses
  %i.cr = getelementptr i8, ptr %i.bz, i64 %i.cq  ; 2 uses
  %i.cs = getelementptr i8, ptr %.sink.i, i64 %i.cq
  br label %vector.body83

vector.body83:                                    ; preds = %vector.body83, %vector.ph81
  %index84 = phi i64 [ 0, %vector.ph81 ], [ %index.next92, %vector.body83 ] ; 2 uses
  %i.ct = mul i64 %index84, 12                    ; 2 uses
  %next.gep85 = getelementptr i8, ptr %i.bz, i64 %i.ct
  %next.gep86 = getelementptr i8, ptr %.sink.i, i64 %i.ct
  %wide.vec87 = load <24 x float>, ptr %next.gep86, align 4, !tbaa !23, !alias.scope !277
  store <24 x float> %wide.vec87, ptr %next.gep85, align 4, !tbaa !23, !alias.scope !280, !noalias !277
  %index.next92 = add nuw i64 %index84, 8         ; 2 uses
  %i.cu = icmp eq i64 %index.next92, %n.vec82
  br i1 %i.cu, label %middle.block93, label %vector.body83, !llvm.loop !282

middle.block93:                                   ; preds = %vector.body83
  %cmp.n94 = icmp eq i64 %i.cf, %n.vec82
  br i1 %cmp.n94, label %_ZSt22__uninitialized_copy_aIPA3_fPN3gmx11BasicVectorIfEES4_ET0_T_S7_S6_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader120

.lr.ph.i.i.i.i.preheader120:                      ; preds = %vector.memcheck73, %.lr.ph.i.i.i.i.preheader, %middle.block93
  %.015.i.i.i.i.ph = phi ptr [ %i.bz, %vector.memcheck73 ], [ %i.bz, %.lr.ph.i.i.i.i.preheader ], [ %i.cr, %middle.block93 ]
  %.01214.i.i.i.i.ph = phi ptr [ %.sink.i, %vector.memcheck73 ], [ %.sink.i, %.lr.ph.i.i.i.i.preheader ], [ %i.cs, %middle.block93 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader120, %.lr.ph.i.i.i.i
  %.015.i.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i.i ], [ %.015.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader120 ] ; 4 uses
  %.01214.i.i.i.i = phi ptr [ %i.dc, %.lr.ph.i.i.i.i ], [ %.01214.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader120 ] ; 4 uses
  %i.cv = load float, ptr %.01214.i.i.i.i, align 4, !tbaa !23
  store float %i.cv, ptr %.015.i.i.i.i, align 4, !tbaa !23
  %i.cw = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i, i64 4
  %i.cx = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 4
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !23
  store float %i.cy, ptr %i.cw, align 4, !tbaa !23
  %i.cz = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 8
  %i.db = load float, ptr %i.da, align 4, !tbaa !23
  store float %i.db, ptr %i.cz, align 4, !tbaa !23
  %i.dc = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 12 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dc, %2
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPA3_fPN3gmx11BasicVectorIfEES4_ET0_T_S7_S6_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !283

_ZSt22__uninitialized_copy_aIPA3_fPN3gmx11BasicVectorIfEES4_ET0_T_S7_S6_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block93, %_ZSt4copyIPA3_fPN3gmx11BasicVectorIfEEET0_T_S7_S6_.exit26
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bz, %_ZSt4copyIPA3_fPN3gmx11BasicVectorIfEEET0_T_S7_S6_.exit26 ], [ %i.cr, %middle.block93 ], [ %i.dd, %.lr.ph.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.ae, align 8, !tbaa !212
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE15_M_erase_at_endEPS2_.exit

_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE15_M_erase_at_endEPS2_.exit: ; preds = %_ZSt8_DestroyIPN3gmx11BasicVectorIfEES2_EvT_S4_RSaIT0_E.exit.i, %_ZSt4copyIPA3_fPN3gmx11BasicVectorIfEEET0_T_S7_S6_.exit, %_ZSt22__uninitialized_copy_aIPA3_fPN3gmx11BasicVectorIfEES4_ET0_T_S7_S6_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE13_M_deallocateEPS2_m.exit
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

declare void @_Z9save_freePKcS0_iPv(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #13

declare void @_ZN3gmx15findLibraryFileERKNSt10filesystem7__cxx114pathEbb(ptr dead_on_unwind writable sret(%"class.std::filesystem::__cxx11::path") align 8, ptr noundef nonnull align 8 dereferenceable(40), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN3gmx9boxIsZeroEPA3_Kf(ptr noundef) local_unnamed_addr #3

declare void @_Z22makeExclusionDistancesPK7t_atomsP14AtomPropertiesff(ptr dead_on_unwind writable sret(%"class.std::vector.73") align 8, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @_Z7set_pbcP5t_pbc7PbcTypePA3_Kf(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN3gmx13boxesAreEqualEPA3_KfS2_(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define internal fastcc void @_ZL13sort_moleculePP7t_atomsS1_PSt6vectorIN3gmx11BasicVectorIfEESaIS5_EES8_(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::vector.94", align 8    ; 11 uses
  %5 = alloca %struct.MoleculeType, align 8       ; 17 uses
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !36
  %i.c = tail call i64 @fwrite(ptr nonnull @.str.98, i64 22, i64 1, ptr %i.b) #26 ; 0 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !259    ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.e = load i32, ptr %i.d, align 8, !tbaa !114  ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph224, label %._crit_edge

.lr.ph224:                                        ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.d, i64 8        ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.i = getelementptr i8, ptr %i.d, i64 48       ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 17 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.aa
  %.pre276 = load ptr, ptr %4, align 8, !tbaa !284
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.pr.i = phi ptr [ %.pre276, %._crit_edge.loopexit ], [ null, %bb.a ] ; 7 uses
  %i.o = phi ptr [ %i.hf, %._crit_edge.loopexit ], [ null, %bb.a ] ; 5 uses
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !36
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %.pr.i to i64               ; 2 uses
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %i.t = sdiv exact i64 %i.s, 40                  ; 2 uses
  %i.u = icmp eq i64 %i.s, 40                     ; 2 uses
  %i.v = select i1 %i.u, ptr @.str.20, ptr @.str.100
  %i.w = select i1 %i.u, ptr @.str.20, ptr @.str.101
  %i.x = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.99, i64 noundef %i.t, ptr noundef nonnull %i.v, ptr noundef nonnull %i.w) #24 ; 0 uses
  %.not188225 = icmp eq ptr %.pr.i, %i.o
  br i1 %.not188225, label %_ZSt8_DestroyIP12MoleculeTypeS0_EvT_S2_RSaIT0_E.exit.i, label %.lr.ph228

bb.b:                                             ; preds = %.lr.ph224, %bb.aa
  %i.y = phi i32 [ %i.e, %.lr.ph224 ], [ %i.he, %bb.aa ] ; 4 uses
  %i.z = phi ptr [ null, %.lr.ph224 ], [ %i.hf, %bb.aa ] ; 13 uses
  %i.aa = phi ptr [ null, %.lr.ph224 ], [ %i.hg, %bb.aa ] ; 8 uses
  %indvars.iv260 = phi i64 [ 0, %.lr.ph224 ], [ %indvars.iv.next261, %bb.aa ] ; 11 uses
  %indvars.iv257 = phi i32 [ 0, %.lr.ph224 ], [ -1, %bb.aa ]
  %i.ab = icmp eq i64 %indvars.iv260, 0
  br i1 %i.ab, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !123
  %i.ad = getelementptr inbounds nuw [36 x i8], ptr %i.ac, i64 %indvars.iv260 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !124
  %i.ag = getelementptr i8, ptr %i.ad, i64 -12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !124
  %.not = icmp eq i32 %i.af, %i.ah
  br i1 %.not, label %bb.aa, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ai = ptrtoint ptr %i.z to i64                ; 3 uses
  %i.aj = ptrtoint ptr %i.aa to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 2 uses
  %i.al = sdiv exact i64 %i.ak, 40
  %i.am = ashr i64 %i.al, 2                       ; 4 uses
  %i.an = icmp sgt i64 %i.am, 0
  br i1 %i.an, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d
  %.val27.val.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !123
  %.val27.val29.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !122
  %i.ao = getelementptr inbounds nuw [36 x i8], ptr %.val27.val.i.i.i, i64 %indvars.iv260
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !124
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [32 x i8], ptr %.val27.val29.i.i.i, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !128
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !35 ; 5 uses
  %i.av = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.au) #22 ; 11 uses
  %i.aw = mul nuw nsw i64 %i.am, 160
  %scevgep.i.i.i = getelementptr i8, ptr %i.aa, i64 %i.aw ; 2 uses
  %i.ax = icmp eq i64 %i.av, 0
  br i1 %i.ax, label %.lr.ph.i.split.us.i.i, label %.lr.ph.i.split.split.i.i

.lr.ph.i.split.us.i.i:                            ; preds = %.lr.ph.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL13sort_moleculePP7t_atomsS4_PSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_E3$_0EclINS_17__normal_iteratorIP12MoleculeTypeS5_ISG_SaISG_EEEEEEbT_.exit47.thread81.i.us.i.i"
  %.0107.i.us.i.i = phi i64 [ %i.bj, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL13sort_moleculePP7t_atomsS4_PSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_E3$_0EclINS_17__normal_iteratorIP12MoleculeTypeS5_ISG_SaISG_EEEEEEbT_.exit47.thread81.i.us.i.i" ], [ %i.am, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.069.0106.i.us.i.i = phi ptr [ %i.bi, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL13sort_moleculePP7t_atomsS4_PSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_E3$_0EclINS_17__normal_iteratorIP12MoleculeTypeS5_ISG_SaISG_EEEEEEbT_.exit47.thread81.i.us.i.i" ], [ %i.aa, %.lr.ph.i.i.i ] ; 9 uses
  %i.ay = getelementptr i8, ptr %.sroa.069.0106.i.us.i.i, i64 8
  %.val3.i.i.us.i.i = load i64, ptr %i.ay, align 8, !tbaa !132
  %i.az = icmp eq i64 %.val3.i.i.us.i.i, 0
  br i1 %i.az, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIP12MoleculeTypeSt6vectorIS2_SaIS2_EEEEZL13sort_moleculePP7t_atomsSA_PS4_IN3gmx11BasicVectorIfEESaISD_EESG_E3$_0ET_SI_SI_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL13sort_moleculePP7t_atomsS4_PSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_E3$_0EclINS_17__normal_iteratorIP12MoleculeTypeS5_ISG_SaISG_EEEEEEbT_.exit.thread78.i.us.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL13sort_moleculePP7t_atomsS4_PSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_E3$_0EclINS_17__normal_iteratorIP12MoleculeTypeS5_ISG_SaISG_EEEEEEbT_.exit.thread78.i.us.i.i": ; preds = %.lr.ph.i.split.us.i.i
  %i.ba = getelementptr i8, ptr %.sroa.069.0106.i.us.i.i, i64 48
  %.val3.i37.i.us.i.i = load i64, ptr %i.ba, align 8, !tbaa !132
  %i.bb = icmp eq i64 %.val3.i37.i.us.i.i, 0
  br i1 %i.bb, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIP12MoleculeTypeSt6vectorIS2_SaIS2_EEEENS0_5__ops10_Iter_predIZL13sort_moleculePP7t_atomsSC_PS4_IN3gmx11BasicVectorIfEESaISF_EESI_E3$_0EEET_SL_SL_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit26.split.us.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL13sort_moleculePP7t_atomsS4_PSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_E3$_0EclINS_17__normal_iteratorIP12MoleculeTypeS5_ISG_SaISG_EEEEEEbT_.exit39.thread79.i.us.i.i"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIP12MoleculeTypeSt6vectorIS2_SaIS2_EEEENS0_5__ops10_Iter_predIZL13sort_moleculePP7t_atomsSC_PS4_IN3gmx11BasicVectorIfEESaISF_EESI_E3$_0EEET_SL_SL_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit26.split.us.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL13sort_moleculePP7t_atomsS4_PSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_E3$_0EclINS_17__normal_iteratorIP12MoleculeTypeS5_ISG_SaISG_EEEEEEbT_.exit.thread78.i.us.i.i"
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.069.0106.i.us.i.i, i64 40
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIP12MoleculeTypeSt6vectorIS2_SaIS2_EEEEZL13sort_moleculePP7t_atomsSA_PS4_IN3gmx11BasicVectorIfEESaISD_EESG_E3$_0ET_SI_SI_T0_.exit"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL13sort_moleculePP7t_atomsS4_PSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_E3$_0EclINS_17__normal_iteratorIP12MoleculeTypeS5_ISG_SaISG_EEEEEEbT_.exit39.thread79.i.us.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL13sort_moleculePP7t_atomsS4_PSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_E3$_0EclINS_17__normal_iteratorIP12MoleculeTypeS5_ISG_SaISG_EEEEEEbT_.exit.thread78.i.us.i.i"
  %i.bd = getelementptr i8, ptr %.sroa.069.0106.i.us.i.i, i64 88
  %.val3.i41.i.us.i.i = load i64, ptr %i.bd, align 8, !tbaa !132
  %i.be = icmp eq i64 %.val3.i41.i.us.i.i, 0
  br i1 %i.be, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIP12MoleculeTypeSt6vectorIS2_SaIS2_EEEENS0_5__ops10_Iter_predIZL13sort_moleculePP7t_atomsSC_PS4_IN3gmx11BasicVectorIfEESaISF_EESI_E3$_0EEET_SL_SL_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit28.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL13sort_moleculePP7t_atomsS4_PSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_E3$_0EclINS_17__normal_iteratorIP12MoleculeTypeS5_ISG_SaISG_EEEEEEbT_.exit43.thread80.i.us.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL13sort_moleculePP7t_atomsS4_PSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_E3$_0EclINS_17__normal_iteratorIP12MoleculeTypeS5_ISG_SaISG_EEEEEEbT_.exit43.thread80.i.us.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL13sort_moleculePP7t_atomsS4_PSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_E3$_0EclINS_17__normal_iteratorIP12MoleculeTypeS5_ISG_SaISG_EEEEEEbT_.exit39.thread79.i.us.i.i"
  %i.bf = getelementptr i8, ptr %.sroa.069.0106.i.us.i.i, i64 128
  %.val3.i45.i.us.i.i = load i64, ptr %i.bf, align 8, !tbaa !132
  %i.bg = icmp eq i64 %.val3.i45.i.us.i.i, 0
  br i1 %i.bg, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIP12MoleculeTypeSt6vectorIS2_SaIS2_EEEENS0_5__ops10_Iter_predIZL13sort_moleculePP7t_atomsSC_PS4_IN3gmx11BasicVectorIfEESaISF_EESI_E3$_0EEET_SL_SL_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit30.split.us.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL13sort_moleculePP7t_atomsS4_PSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_E3$_0EclINS_17__normal_iteratorIP12MoleculeTypeS5_ISG_SaISG_EEEEEEbT_.exit47.thread81.i.us.i.i"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIP12MoleculeTypeSt6vectorIS2_SaIS2_EEEENS0_5__ops10_Iter_predIZL13sort_moleculePP7t_atomsSC_PS4_IN3gmx11BasicVectorIfEESaISF_EESI_E3$_0EEET_SL_SL_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit30.split.us.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL13sort_moleculePP7t_atomsS4_PSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_E3$_0EclINS_17__normal_iteratorIP12MoleculeTypeS5_ISG_SaISG_EEEEEEbT_.exit43.thread80.i.us.i.i"
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.069.0106.i.us.i.i, i64 120
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIP12MoleculeTypeSt6vectorIS2_SaIS2_EEEEZL13sort_moleculePP7t_atomsSA_PS4_IN3gmx11BasicVectorIfEESaISD_EESG_E3$_0ET_SI_SI_T0_.exit"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL13sort_moleculePP7t_atomsS4_PSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_E3$_0EclINS_17__normal_iteratorIP12MoleculeTypeS5_ISG_SaISG_EEEEEEbT_.exit47.thread81.i.us.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL13sort_moleculePP7t_atomsS4_PSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_E3$_0EclINS_17__normal_iteratorIP12MoleculeTypeS5_ISG_SaISG_EEEEEEbT_.exit43.thread80.i.us.i.i"
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.069.0106.i.us.i.i, i64 160
  %i.bj = add nsw i64 %.0107.i.us.i.i, -1
  %i.bk = icmp sgt i64 %.0107.i.us.i.i, 1
  br i1 %i.bk, label %.lr.ph.i.split.us.i.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !287

.lr.ph.i.split.split.i.i:                         ; preds = %.lr.ph.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL13sort_moleculePP7t_atomsS4_PSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_E3$_0EclINS_17__normal_iteratorIP12MoleculeTypeS5_ISG_SaISG_EEEEEEbT_.exit47.thread81.i.i.i"
  %.0107.i.i.i = phi i64 [ %i.cf, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL13sort_moleculePP7t_atomsS4_PSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_E3$_0EclINS_17__normal_iteratorIP12MoleculeTypeS5_ISG_SaISG_EEEEEEbT_.exit47.thread81.i.i.i" ], [ %i.am, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.069.0106.i.i.i = phi ptr [ %i.ce, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL13sort_moleculePP7t_atomsS4_PSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_E3$_0EclINS_17__normal_iteratorIP12MoleculeTypeS5_ISG_SaISG_EEEEEEbT_.exit47.thread81.i.i.i" ], [ %i.aa, %.lr.ph.i.i.i ] ; 15 uses
  %i.bl = getelementptr i8, ptr %.sroa.069.0106.i.i.i, i64 8
  %.val3.i.i.i.i = load i64, ptr %i.bl, align 8, !tbaa !132
  %i.bm = icmp eq i64 %.val3.i.i.i.i, %i.av
  br i1 %i.bm, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL13sort_moleculePP7t_atomsS4_PSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_E3$_0EclINS_17__normal_iteratorIP12MoleculeTypeS5_ISG_SaISG_EEEEEEbT_.exit.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL13sort_moleculePP7t_atomsS4_PSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_E3$_0EclINS_17__normal_iteratorIP12MoleculeTypeS5_ISG_SaISG_EEEEEEbT_.exit.thread78.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL13sort_moleculePP7t_atomsS4_PSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_E3$_0EclINS_17__normal_iteratorIP12MoleculeTypeS5_ISG_SaISG_EEEEEEbT_.exit.i.i.i": ; preds = %.lr.ph.i.split.split.i.i
  %.val2.i.i.i.i = load ptr, ptr %.sroa.069.0106.i.i.i, align 8
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr readonly %.val2.i.i.i.i, ptr nonnull %i.au, i64 %i.av)
  %i.bn = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.bn, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIP12MoleculeTypeSt6vectorIS2_SaIS2_EEEEZL13sort_moleculePP7t_atomsSA_PS4_IN3gmx11BasicVectorIfEESaISD_EESG_E3$_0ET_SI_SI_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL13sort_moleculePP7t_atomsS4_PSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_E3$_0EclINS_17__normal_iteratorIP12MoleculeTypeS5_ISG_SaISG_EEEEEEbT_.exit.thread78.i.thread.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL13sort_moleculePP7t_atomsS4_PSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_E3$_0EclINS_17__normal_iteratorIP12MoleculeTypeS5_ISG_SaISG_EEEEEEbT_.exit.thread78.i.i.i": ; preds = %.lr.ph.i.split.split.i.i
  %i.bo = getelementptr i8, ptr %.sroa.069.0106.i.i.i, i64 48
  %.val3.i37.i.i.i = load i64, ptr %i.bo, align 8, !tbaa !132
  %i.bp = icmp eq i64 %.val3.i37.i.i.i, %i.av
  br i1 %i.bp, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL13sort_moleculePP7t_atomsS4_PSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_E3$_0EclINS_17__normal_iteratorIP12MoleculeTypeS5_ISG_SaISG_EEEEEEbT_.exit39.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL13sort_moleculePP7t_atomsS4_PSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_E3$_0EclINS_17__normal_iteratorIP12MoleculeTypeS5_ISG_SaISG_EEEEEEbT_.exit39.thread79.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL13sort_moleculePP7t_atomsS4_PSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_E3$_0EclINS_17__normal_iteratorIP12MoleculeTypeS5_ISG_SaISG_EEEEEEbT_.exit.thread78.i.thread.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL13sort_moleculePP7t_atomsS4_PSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_E3$_0EclINS_17__normal_iteratorIP12MoleculeTypeS5_ISG_SaISG_EEEEEEbT_.exit.i.i.i"
  %i.bq = getelementptr i8, ptr %.sroa.069.0106.i.i.i, i64 48
  %.val3.i37.i8.i.i = load i64, ptr %i.bq, align 8, !tbaa !132
  %i.br = icmp eq i64 %.val3.i37.i8.i.i, %i.av
  br i1 %i.br, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL13sort_moleculePP7t_atomsS4_PSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_E3$_0EclINS_17__normal_iteratorIP12MoleculeTypeS5_ISG_SaISG_EEEEEEbT_.exit39.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL13sort_moleculePP7t_atomsS4_PSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_E3$_0EclINS_17__normal_iteratorIP12MoleculeTypeS5_ISG_SaISG_EEEEEEbT_.exit39.thread79.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL13sort_moleculePP7t_atomsS4_PSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_E3$_0EclINS_17__normal_iteratorIP12MoleculeTypeS5_ISG_SaISG_EEEEEEbT_.exit39.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL13sort_moleculePP7t_atomsS4_PSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_E3$_0EclINS_17__normal_iteratorIP12MoleculeTypeS5_ISG_SaISG_EEEEEEbT_.exit.thread78.i.thread.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZL13sort_moleculePP7t_atomsS4_PSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_E3$_0EclINS_17__normal_iteratorIP12MoleculeTypeS5_ISG_SaISG_EEEEEEbT_.exit.thread78.i.i.i"
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.069.0106.i.i.i, i64 40
  %.val2.i36.i911.i.i = load ptr, ptr %i.bs, align 8
  %bcmp.i.i.i38.i.i.i = call i32 @bcmp(ptr readonly %.val2.i36.i911.i.i, ptr nonnull %i.au, i64 %i.av)
  %i.bt = icmp eq i32 %bcmp.i.i.i38.i.i.i, 0
  br i1 %i.bt, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIP12MoleculeTypeSt6vectorIS2_SaIS2_EEEEZL13sort_moleculePP7t_atomsSA_PS4_IN3gmx11BasicVectorIfEESaISD_EESG_E3$_0ET_SI_SI_T0_.exit.loopexit320.split.loop.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL13sort_moleculePP7t_atomsS4_PSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_E3$_0EclINS_17__normal_iteratorIP12MoleculeTypeS5_ISG_SaISG_EEEEEEbT_.exit39.thread79.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL13sort_moleculePP7t_atomsS4_PSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_E3$_0EclINS_17__normal_iteratorIP12MoleculeTypeS5_ISG_SaISG_EEEEEEbT_.exit39.thread79.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL13sort_moleculePP7t_atomsS4_PSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_E3$_0EclINS_17__normal_iteratorIP12MoleculeTypeS5_ISG_SaISG_EEEEEEbT_.exit39.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZL13sort_moleculePP7t_atomsS4_PSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_E3$_0EclINS_17__normal_iteratorIP12MoleculeTypeS5_ISG_SaISG_EEEEEEbT_.exit.thread78.i.thread.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZL13sort_moleculePP7t_atomsS4_PSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_E3$_0EclINS_17__normal_iteratorIP12MoleculeTypeS5_ISG_SaISG_EEEEEEbT_.exit.thread78.i.i.i"
  %i.bu = getelementptr i8, ptr %.sroa.069.0106.i.i.i, i64 88
  %.val3.i41.i.i.i = load i64, ptr %i.bu, align 8, !tbaa !132
  %i.bv = icmp eq i64 %.val3.i41.i.i.i, %i.av
  br i1 %i.bv, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL13sort_moleculePP7t_atomsS4_PSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_E3$_0EclINS_17__normal_iteratorIP12MoleculeTypeS5_ISG_SaISG_EEEEEEbT_.exit43.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL13sort_moleculePP7t_atomsS4_PSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_E3$_0EclINS_17__normal_iteratorIP12MoleculeTypeS5_ISG_SaISG_EEEEEEbT_.exit43.thread80.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL13sort_moleculePP7t_atomsS4_PSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_E3$_0EclINS_17__normal_iteratorIP12MoleculeTypeS5_ISG_SaISG_EEEEEEbT_.exit43.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL13sort_moleculePP7t_atomsS4_PSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_E3$_0EclINS_17__normal_iteratorIP12MoleculeTypeS5_ISG_SaISG_EEEEEEbT_.exit39.thread79.i.i.i"
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.069.0106.i.i.i, i64 80
  %.val2.i40.i.i.i = load ptr, ptr %i.bw, align 8
  %bcmp.i.i.i42.i.i.i = call i32 @bcmp(ptr readonly %.val2.i40.i.i.i, ptr nonnull %i.au, i64 %i.av)
  %i.bx = icmp eq i32 %bcmp.i.i.i42.i.i.i, 0
  br i1 %i.bx, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIP12MoleculeTypeSt6vectorIS2_SaIS2_EEEEZL13sort_moleculePP7t_atomsSA_PS4_IN3gmx11BasicVectorIfEESaISD_EESG_E3$_0ET_SI_SI_T0_.exit.loopexit320.split.loop.exit333", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL13sort_moleculePP7t_atomsS4_PSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_E3$_0EclINS_17__normal_iteratorIP12MoleculeTypeS5_ISG_SaISG_EEEEEEbT_.exit43.thread80.i.thread.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL13sort_moleculePP7t_atomsS4_PSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_E3$_0EclINS_17__normal_iteratorIP12MoleculeTypeS5_ISG_SaISG_EEEEEEbT_.exit43.thread80.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL13sort_moleculePP7t_atomsS4_PSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_E3$_0EclINS_17__normal_iteratorIP12MoleculeTypeS5_ISG_SaISG_EEEEEEbT_.exit39.thread79.i.i.i"
  %i.by = getelementptr i8, ptr %.sroa.069.0106.i.i.i, i64 128
  %.val3.i45.i.i.i = load i64, ptr %i.by, align 8, !tbaa !132
  %i.bz = icmp eq i64 %.val3.i45.i.i.i, %i.av
  br i1 %i.bz, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL13sort_moleculePP7t_atomsS4_PSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_E3$_0EclINS_17__normal_iteratorIP12MoleculeTypeS5_ISG_SaISG_EEEEEEbT_.exit47.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL13sort_moleculePP7t_atomsS4_PSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_E3$_0EclINS_17__normal_iteratorIP12MoleculeTypeS5_ISG_SaISG_EEEEEEbT_.exit47.thread81.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL13sort_moleculePP7t_atomsS4_PSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_E3$_0EclINS_17__normal_iteratorIP12MoleculeTypeS5_ISG_SaISG_EEEEEEbT_.exit43.thread80.i.thread.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL13sort_moleculePP7t_atomsS4_PSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_E3$_0EclINS_17__normal_iteratorIP12MoleculeTypeS5_ISG_SaISG_EEEEEEbT_.exit43.i.i.i"
  %i.ca = getelementptr i8, ptr %.sroa.069.0106.i.i.i, i64 128
  %.val3.i45.i13.i.i = load i64, ptr %i.ca, align 8, !tbaa !132
  %i.cb = icmp eq i64 %.val3.i45.i13.i.i, %i.av
  br i1 %i.cb, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL13sort_moleculePP7t_atomsS4_PSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_E3$_0EclINS_17__normal_iteratorIP12MoleculeTypeS5_ISG_SaISG_EEEEEEbT_.exit47.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL13sort_moleculePP7t_atomsS4_PSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_E3$_0EclINS_17__normal_iteratorIP12MoleculeTypeS5_ISG_SaISG_EEEEEEbT_.exit47.thread81.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL13sort_moleculePP7t_atomsS4_PSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_E3$_0EclINS_17__normal_iteratorIP12MoleculeTypeS5_ISG_SaISG_EEEEEEbT_.exit47.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL13sort_moleculePP7t_atomsS4_PSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_E3$_0EclINS_17__normal_iteratorIP12MoleculeTypeS5_ISG_SaISG_EEEEEEbT_.exit43.thread80.i.thread.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZL13sort_moleculePP7t_atomsS4_PSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_E3$_0EclINS_17__normal_iteratorIP12MoleculeTypeS5_ISG_SaISG_EEEEEEbT_.exit43.thread80.i.i.i"
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.069.0106.i.i.i, i64 120
  %.val2.i44.i1417.i.i = load ptr, ptr %i.cc, align 8
  %bcmp.i.i.i46.i.i.i = call i32 @bcmp(ptr readonly %.val2.i44.i1417.i.i, ptr nonnull %i.au, i64 %i.av)
  %i.cd = icmp eq i32 %bcmp.i.i.i46.i.i.i, 0
  br i1 %i.cd, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIP12MoleculeTypeSt6vectorIS2_SaIS2_EEEEZL13sort_moleculePP7t_atomsSA_PS4_IN3gmx11BasicVectorIfEESaISD_EESG_E3$_0ET_SI_SI_T0_.exit.loopexit320.split.loop.exit331", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL13sort_moleculePP7t_atomsS4_PSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_E3$_0EclINS_17__normal_iteratorIP12MoleculeTypeS5_ISG_SaISG_EEEEEEbT_.exit47.thread81.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL13sort_moleculePP7t_atomsS4_PSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_E3$_0EclINS_17__normal_iteratorIP12MoleculeTypeS5_ISG_SaISG_EEEEEEbT_.exit47.thread81.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL13sort_moleculePP7t_atomsS4_PSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_E3$_0EclINS_17__normal_iteratorIP12MoleculeTypeS5_ISG_SaISG_EEEEEEbT_.exit47.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZL13sort_moleculePP7t_atomsS4_PSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_E3$_0EclINS_17__normal_iteratorIP12MoleculeTypeS5_ISG_SaISG_EEEEEEbT_.exit43.thread80.i.thread.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZL13sort_moleculePP7t_atomsS4_PSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_E3$_0EclINS_17__normal_iteratorIP12MoleculeTypeS5_ISG_SaISG_EEEEEEbT_.exit43.thread80.i.i.i"
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.069.0106.i.i.i, i64 160
  %i.cf = add nsw i64 %.0107.i.i.i, -1
  %i.cg = icmp sgt i64 %.0107.i.i.i, 1
  br i1 %i.cg, label %.lr.ph.i.split.split.i.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !287

._crit_edge.loopexit.i.i.i:                       ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL13sort_moleculePP7t_atomsS4_PSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_E3$_0EclINS_17__normal_iteratorIP12MoleculeTypeS5_ISG_SaISG_EEEEEEbT_.exit47.thread81.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZL13sort_moleculePP7t_atomsS4_PSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_E3$_0EclINS_17__normal_iteratorIP12MoleculeTypeS5_ISG_SaISG_EEEEEEbT_.exit47.thread81.i.us.i.i"
  %.pre.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre123.i.i.i = sub i64 %i.ai, %.pre.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.d
  %.pre-phi124.i.i.i = phi i64 [ %.pre123.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.ak, %bb.d ]
  %.sroa.069.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.aa, %bb.d ] ; 7 uses
  %i.ch = sdiv exact i64 %.pre-phi124.i.i.i, 40
  switch i64 %i.ch, label %.preheader191 [
    i64 3, label %bb.e
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge118.i.i.i
  ]

._crit_edge._crit_edge118.i.i.i:                  ; preds = %._crit_edge.i.i.i
  %.val.val.pre.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !123
  %.val.val35.pre.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !122
  %.phi.trans.insert59.i.i = getelementptr inbounds nuw [36 x i8], ptr %.val.val.pre.i.i.i, i64 %indvars.iv260
  %.phi.trans.insert60.i.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert59.i.i, i64 24
  %.pre61.i.i = load i32, ptr %.phi.trans.insert60.i.i, align 4, !tbaa !124
  %.phi.trans.insert62.i.i = sext i32 %.pre61.i.i to i64
  %.phi.trans.insert63.i.i = getelementptr inbounds [32 x i8], ptr %.val.val35.pre.i.i.i, i64 %.phi.trans.insert62.i.i
  %.pre64.i.i = load ptr, ptr %.phi.trans.insert63.i.i, align 8, !tbaa !128
  %.pre65.i.i = load ptr, ptr %.pre64.i.i, align 8, !tbaa !35
  br label %bb.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i
  %.val17.val.pre.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !123
  %.val17.val34.pre.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !122
  %.phi.trans.insert.i.i = getelementptr inbounds nuw [36 x i8], ptr %.val17.val.pre.i.i.i, i64 %indvars.iv260
  %.phi.trans.insert54.i.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i.i, i64 24
  %.pre.i.i = load i32, ptr %.phi.trans.insert54.i.i, align 4, !tbaa !124
  %.phi.trans.insert55.i.i = sext i32 %.pre.i.i to i64
  %.phi.trans.insert56.i.i = getelementptr inbounds [32 x i8], ptr %.val17.val34.pre.i.i.i, i64 %.phi.trans.insert55.i.i
  %.pre57.i.i = load ptr, ptr %.phi.trans.insert56.i.i, align 8, !tbaa !128
  %.pre58.i.i = load ptr, ptr %.pre57.i.i, align 8, !tbaa !35
  br label %bb.g

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %.val19.val.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !123
  %.val19.val33.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !122
  %.val2.i48.i.i.i = load ptr, ptr %.sroa.069.0.lcssa.i.i.i, align 8
  %i.ci = getelementptr i8, ptr %.sroa.069.0.lcssa.i.i.i, i64 8
  %.val3.i49.i.i.i = load i64, ptr %i.ci, align 8, !tbaa !132 ; 3 uses
  %i.cj = getelementptr inbounds nuw [36 x i8], ptr %.val19.val.i.i.i, i64 %indvars.iv260
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !124
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [32 x i8], ptr %.val19.val33.i.i.i, i64 %i.cm
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !128
end_hunk_0
begin_hunk_1_@_ZL13sort_moleculePP7t_atomsS1_PSt6vectorIN3gmx11BasicVectorIfEESaIS5_EES8_:bb.a
  store i8 0, ptr %i.j, align 8, !tbaa !31
  %i.ez = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.fa = load i64, ptr %i.l, align 8
  store i64 %i.fa, ptr %i.ez, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.z, i64 40 ; 2 uses
  store ptr %i.fb, ptr %i.h, align 8, !tbaa !293
  br label %_ZN12MoleculeTypeD2Ev.exit

bb.t:                                             ; preds = %bb.q
  %i.fc = load ptr, ptr %4, align 8, !tbaa !284   ; 5 uses
  %i.fd = ptrtoint ptr %i.fc to i64
  %i.fe = sub i64 %i.ai, %i.fd                    ; 4 uses
  %i.ff = icmp eq i64 %i.fe, 9223372036854775800
  br i1 %i.ff, label %bb.u, label %_ZNKSt6vectorI12MoleculeTypeSaIS0_EE12_M_check_lenEmPKc.exit.i

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.105) #23
          to label %.noexc159 unwind label %.loopexit.split-lp195

.noexc159:                                        ; preds = %bb.u
  unreachable

_ZNKSt6vectorI12MoleculeTypeSaIS0_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.t
  %i.fg = sdiv exact i64 %i.fe, 40                ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.fg, i64 1)
  %i.fh = add nsw i64 %.sroa.speculated.i.i, %i.fg ; 2 uses
  %i.fi = icmp ult i64 %i.fh, %i.fg
  %i.fj = call i64 @llvm.umin.i64(i64 %i.fh, i64 230584300921369395)
  %i.fk = select i1 %i.fi, i64 230584300921369395, i64 %i.fj ; 3 uses
  %.not.i.i = icmp ne i64 %i.fk, 0
  call void @llvm.assume(i1 %.not.i.i)
  %i.fl = mul nuw nsw i64 %i.fk, 40
  %i.fm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fl) #28
          to label %.noexc160 unwind label %.loopexit194 ; 7 uses

.noexc160:                                        ; preds = %_ZNKSt6vectorI12MoleculeTypeSaIS0_EE12_M_check_lenEmPKc.exit.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fe ; 5 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16 ; 3 uses
  store ptr %i.fo, ptr %i.fn, align 8, !tbaa !130
  %i.fp = load ptr, ptr %5, align 8, !tbaa !44    ; 2 uses
  %i.fq = icmp eq ptr %i.fp, %i.j
  br i1 %i.fq, label %bb.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i154

bb.v:                                             ; preds = %.noexc160
  %i.fr = load i64, ptr %i.k, align 8, !tbaa !132 ; 3 uses
  %i.fs = icmp ult i64 %i.fr, 16
  call void @llvm.assume(i1 %i.fs)
  %i.ft = add nuw nsw i64 %i.fr, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fo, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.ft, i1 false)
  br label %_ZN12MoleculeTypeC2EOS_.exit.i156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i154: ; preds = %.noexc160
  store ptr %i.fp, ptr %i.fn, align 8, !tbaa !44
  %i.fu = load i64, ptr %i.j, align 8, !tbaa !31
  store i64 %i.fu, ptr %i.fo, align 8, !tbaa !31
  %.pre.i155 = load i64, ptr %i.k, align 8, !tbaa !132
  br label %_ZN12MoleculeTypeC2EOS_.exit.i156

_ZN12MoleculeTypeC2EOS_.exit.i156:                ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i154, %bb.v
  %i.fv = phi i64 [ %i.fr, %bb.v ], [ %.pre.i155, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i154 ]
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  store i64 %i.fv, ptr %i.fw, align 8, !tbaa !132
  store ptr %i.j, ptr %5, align 8, !tbaa !44
  store i64 0, ptr %i.k, align 8, !tbaa !132
  store i8 0, ptr %i.j, align 8, !tbaa !31
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  %i.fy = load i64, ptr %i.l, align 8
  store i64 %i.fy, ptr %i.fx, align 8
  %.not10.i.i.i.i = icmp eq ptr %i.fc, %i.z
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorI12MoleculeTypeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit26.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN12MoleculeTypeC2EOS_.exit.i156, %_ZSt19__relocate_object_aI12MoleculeTypeS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.gp, %_ZSt19__relocate_object_aI12MoleculeTypeS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.fm, %_ZN12MoleculeTypeC2EOS_.exit.i156 ] ; 6 uses
  %.0911.i.i.i.i = phi ptr [ %i.go, %_ZSt19__relocate_object_aI12MoleculeTypeS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.fc, %_ZN12MoleculeTypeC2EOS_.exit.i156 ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !294)
  call void @llvm.experimental.noalias.scope.decl(metadata !297)
  %i.fz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.fz, ptr %.012.i.i.i.i, align 8, !tbaa !130, !alias.scope !294, !noalias !297
  %i.ga = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !44, !alias.scope !297, !noalias !294 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 5 uses
  %i.gc = icmp eq ptr %i.ga, %i.gb
  br i1 %i.gc, label %bb.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i157

bb.w:                                             ; preds = %.lr.ph.i.i.i.i
  %i.gd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !132, !alias.scope !297, !noalias !294 ; 3 uses
  %i.gf = icmp ult i64 %i.ge, 16
  call void @llvm.assume(i1 %i.gf)
  %i.gg = add nuw nsw i64 %i.ge, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fz, ptr noundef nonnull align 8 dereferenceable(1) %i.gb, i64 %i.gg, i1 false), !alias.scope !299
  br label %_ZSt19__relocate_object_aI12MoleculeTypeS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i157: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.ga, ptr %.012.i.i.i.i, align 8, !tbaa !44, !alias.scope !294, !noalias !297
  %i.gh = load i64, ptr %i.gb, align 8, !tbaa !31, !alias.scope !297, !noalias !294
  store i64 %i.gh, ptr %i.fz, align 8, !tbaa !31, !alias.scope !294, !noalias !297
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !132, !alias.scope !297, !noalias !294
  br label %_ZSt19__relocate_object_aI12MoleculeTypeS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aI12MoleculeTypeS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i157, %bb.w
  %i.gi = phi i64 [ %i.ge, %bb.w ], [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i157 ]
  %i.gj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.gk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  store i64 %i.gi, ptr %i.gk, align 8, !tbaa !132, !alias.scope !294, !noalias !297
  store ptr %i.gb, ptr %.0911.i.i.i.i, align 8, !tbaa !44, !alias.scope !297, !noalias !294
  store i64 0, ptr %i.gj, align 8, !tbaa !132, !alias.scope !297, !noalias !294
  store i8 0, ptr %i.gb, align 8, !tbaa !31, !alias.scope !297, !noalias !294
  %i.gl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.gm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32
  %i.gn = load i64, ptr %i.gm, align 8, !alias.scope !297, !noalias !294
  store i64 %i.gn, ptr %i.gl, align 8, !alias.scope !294, !noalias !297
  %i.go = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i158 = icmp eq ptr %i.go, %i.z
  br i1 %.not.i.i.i.i158, label %_ZNSt6vectorI12MoleculeTypeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit26.i, label %.lr.ph.i.i.i.i, !llvm.loop !300

_ZNSt6vectorI12MoleculeTypeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit26.i: ; preds = %_ZSt19__relocate_object_aI12MoleculeTypeS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i.i, %_ZN12MoleculeTypeC2EOS_.exit.i156
  %.0.lcssa.i.i.i.i = phi ptr [ %i.fm, %_ZN12MoleculeTypeC2EOS_.exit.i156 ], [ %i.gp, %_ZSt19__relocate_object_aI12MoleculeTypeS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.gq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 40 ; 3 uses
  %.not.i27.i = icmp eq ptr %i.fc, null
  br i1 %.not.i27.i, label %_ZNSt6vectorI12MoleculeTypeSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorI12MoleculeTypeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit26.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fc, i64 noundef %i.fe) #25
  br label %_ZNSt6vectorI12MoleculeTypeSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit

_ZNSt6vectorI12MoleculeTypeSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit: ; preds = %_ZNSt6vectorI12MoleculeTypeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit26.i, %bb.x
  store ptr %i.fm, ptr %4, align 8, !tbaa !284
  store ptr %i.gq, ptr %i.h, align 8, !tbaa !293
  %i.gr = getelementptr inbounds nuw [40 x i8], ptr %i.fm, i64 %i.fk
  store ptr %i.gr, ptr %i.n, align 8, !tbaa !292
  %.pre274 = load ptr, ptr %5, align 8, !tbaa !44 ; 2 uses
  %i.gs = icmp eq ptr %.pre274, %i.j
  br i1 %i.gs, label %_ZN12MoleculeTypeD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i130: ; preds = %_ZNSt6vectorI12MoleculeTypeSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit
  %i.gt = load i64, ptr %i.j, align 8, !tbaa !31
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %.pre274, i64 noundef %i.gu) #25
  br label %_ZN12MoleculeTypeD2Ev.exit

_ZN12MoleculeTypeD2Ev.exit:                       ; preds = %_ZNSt6vectorI12MoleculeTypeSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit, %_ZNSt6vectorI12MoleculeTypeSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i130
  %i.gv = phi ptr [ %i.fm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i130 ], [ %i.aa, %_ZNSt6vectorI12MoleculeTypeSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit.thread ], [ %i.fm, %_ZNSt6vectorI12MoleculeTypeSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit ]
  %i.gw = phi ptr [ %i.gq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i130 ], [ %i.fb, %_ZNSt6vectorI12MoleculeTypeSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit.thread ], [ %i.gq, %_ZNSt6vectorI12MoleculeTypeSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %.pre275 = load i32, ptr %i.d, align 8, !tbaa !114
  br label %bb.aa

.loopexit:                                        ; preds = %.noexc.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZN12MoleculeTypeD2Ev.exit133

.loopexit.split-lp:                               ; preds = %bb.m
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN12MoleculeTypeD2Ev.exit133

.loopexit194:                                     ; preds = %_ZNKSt6vectorI12MoleculeTypeSaIS0_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit196 = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp195:                            ; preds = %bb.u
  %lpad.loopexit.split-lp197 = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %.loopexit.split-lp195, %.loopexit194
  %lpad.phi198 = phi { ptr, i32 } [ %lpad.loopexit196, %.loopexit194 ], [ %lpad.loopexit.split-lp197, %.loopexit.split-lp195 ] ; 2 uses
  %i.gx = load ptr, ptr %5, align 8, !tbaa !44    ; 2 uses
  %i.gy = icmp eq ptr %i.gx, %i.j
  br i1 %i.gy, label %_ZN12MoleculeTypeD2Ev.exit133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i131: ; preds = %bb.y
  %i.gz = load i64, ptr %i.j, align 8, !tbaa !31
  %i.ha = add i64 %i.gz, 1
  call void @_ZdlPvm(ptr noundef %i.gx, i64 noundef %i.ha) #25
  br label %_ZN12MoleculeTypeD2Ev.exit133

_ZN12MoleculeTypeD2Ev.exit133:                    ; preds = %bb.y, %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i131
  %.pn124 = phi { ptr, i32 } [ %lpad.phi198, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i131 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %lpad.phi198, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit151

bb.z:                                             ; preds = %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIP12MoleculeTypeSt6vectorIS2_SaIS2_EEEEZL13sort_moleculePP7t_atomsSA_PS4_IN3gmx11BasicVectorIfEESaISD_EESG_E3$_0ET_SI_SI_T0_.exit"
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i, i64 36 ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !291
  %i.hd = add nsw i32 %i.hc, 1
  store i32 %i.hd, ptr %i.hb, align 4, !tbaa !291
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN12MoleculeTypeD2Ev.exit, %bb.z, %bb.c
  %i.he = phi i32 [ %.pre275, %_ZN12MoleculeTypeD2Ev.exit ], [ %i.y, %bb.z ], [ %i.y, %bb.c ] ; 2 uses
  %i.hf = phi ptr [ %i.gw, %_ZN12MoleculeTypeD2Ev.exit ], [ %i.z, %bb.z ], [ %i.z, %bb.c ] ; 2 uses
  %i.hg = phi ptr [ %i.gv, %_ZN12MoleculeTypeD2Ev.exit ], [ %i.aa, %bb.z ], [ %i.aa, %bb.c ]
  %indvars.iv.next261 = add nuw nsw i64 %indvars.iv260, 1 ; 2 uses
  %i.hh = sext i32 %i.he to i64
  %i.hi = icmp slt i64 %indvars.iv.next261, %i.hh
  br i1 %i.hi, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !301

._crit_edge229:                                   ; preds = %.lr.ph228
  %i.hj = icmp ugt i64 %i.t, 1
  br i1 %i.hj, label %bb.ab, label %.lr.ph.i.i.i152.preheader

.lr.ph.i.i.i152.preheader:                        ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit, %bb.at, %._crit_edge229
  br label %.lr.ph.i.i.i152

.lr.ph228:                                        ; preds = %._crit_edge, %.lr.ph228
  %.sroa.0181.0226 = phi ptr [ %i.hr, %.lr.ph228 ], [ %.pr.i, %._crit_edge ] ; 4 uses
  %i.hk = load ptr, ptr @stderr, align 8, !tbaa !36
  %i.hl = load ptr, ptr %.sroa.0181.0226, align 8, !tbaa !44
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.0181.0226, i64 32
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !289
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.0181.0226, i64 36
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !291
  %i.hq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hk, ptr noundef nonnull @.str.102, ptr noundef %i.hl, i32 noundef %i.hn, i32 noundef %i.hp) #24 ; 0 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.0181.0226, i64 40 ; 2 uses
  %.not188 = icmp eq ptr %i.hr, %i.o
  br i1 %.not188, label %._crit_edge229, label %.lr.ph228

bb.ab:                                            ; preds = %._crit_edge229
  %i.hs = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.63, i32 noundef 147, i64 noundef 1, i64 noundef 72)
          to label %bb.ac unwind label %bb.ai     ; 2 uses

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.hs, ptr %1, align 8, !tbaa !259
  %i.ht = load i32, ptr %i.d, align 8, !tbaa !114
  invoke void @_Z12init_t_atomsP7t_atomsib(ptr noundef %i.hs, i32 noundef %i.ht, i1 noundef zeroext false)
          to label %bb.ad unwind label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  %i.hu = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !116 ; 2 uses
  %i.hw = load ptr, ptr %1, align 8, !tbaa !259   ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 40
  store i32 %i.hv, ptr %i.hx, align 8, !tbaa !116
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 48 ; 2 uses
  %i.hz = sext i32 %i.hv to i64
  %i.ia = load ptr, ptr %i.hy, align 8, !tbaa !54
  %i.ib = invoke noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.63, i32 noundef 150, ptr noundef %i.ia, i64 noundef range(i64 -2147483648, 2147483648) %i.hz, i64 noundef 32)
          to label %bb.ae unwind label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  store ptr %i.ib, ptr %i.hy, align 8, !tbaa !54
  %i.ic = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !212 ; 2 uses
  %i.ie = load ptr, ptr %2, align 8, !tbaa !118   ; 2 uses
  %i.if = ptrtoint ptr %i.id to i64
  %i.ig = ptrtoint ptr %i.ie to i64
  %i.ih = sub i64 %i.if, %i.ig                    ; 5 uses
  %i.ii = sdiv exact i64 %i.ih, 12
  %i.ij = icmp ugt i64 %i.ii, 768614336404564650
  br i1 %i.ij, label %bb.af, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #23
          to label %.noexc136 unwind label %bb.aj

.noexc136:                                        ; preds = %bb.af
  unreachable

_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.ae
  %.not.i.i.i.i = icmp eq ptr %i.id, %i.ie
  br i1 %.not.i.i.i.i, label %bb.ag, label %_ZNSt15__new_allocatorIN3gmx11BasicVectorIfEEE8allocateEmPKv.exit.i.i.i.i

_ZNSt15__new_allocatorIN3gmx11BasicVectorIfEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.ik = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ih) #28
          to label %bb.ag unwind label %bb.aj

bb.ag:                                            ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i, %_ZNSt15__new_allocatorIN3gmx11BasicVectorIfEEE8allocateEmPKv.exit.i.i.i.i
  %i.il = phi ptr [ null, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ], [ %i.ik, %_ZNSt15__new_allocatorIN3gmx11BasicVectorIfEEE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.ih
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.il, i64 %i.ih
  %i.in = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !212 ; 2 uses
  %i.ip = load ptr, ptr %3, align 8, !tbaa !118   ; 2 uses
  %i.iq = ptrtoint ptr %i.io to i64
  %i.ir = ptrtoint ptr %i.ip to i64
  %i.is = sub i64 %i.iq, %i.ir                    ; 5 uses
  %i.it = sdiv exact i64 %i.is, 12
  %i.iu = icmp ugt i64 %i.it, 768614336404564650
  br i1 %i.iu, label %bb.ah, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i138

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #23
          to label %.noexc143 unwind label %bb.ak

.noexc143:                                        ; preds = %bb.ah
  unreachable

_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i138: ; preds = %bb.ag
  %.not.i.i.i.i139 = icmp eq ptr %i.io, %i.ip
  br i1 %.not.i.i.i.i139, label %.preheader.lr.ph, label %_ZNSt15__new_allocatorIN3gmx11BasicVectorIfEEE8allocateEmPKv.exit.i.i.i.i140

_ZNSt15__new_allocatorIN3gmx11BasicVectorIfEEE8allocateEmPKv.exit.i.i.i.i140: ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i138
  %i.iv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.is) #28
          to label %.preheader.lr.ph unwind label %bb.ak

.preheader.lr.ph:                                 ; preds = %_ZNSt15__new_allocatorIN3gmx11BasicVectorIfEEE8allocateEmPKv.exit.i.i.i.i140, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i138
  %i.iw = phi ptr [ null, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i138 ], [ %i.iv, %_ZNSt15__new_allocatorIN3gmx11BasicVectorIfEEE8allocateEmPKv.exit.i.i.i.i140 ] ; 6 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 %i.is
  %scevgep.i.i.i.i.i142 = getelementptr i8, ptr %i.iw, i64 %i.is
  %i.iy = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.ja = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.jb = load i32, ptr %i.d, align 8, !tbaa !114 ; 3 uses
  %i.jc = icmp sgt i32 %i.jb, 0
  br i1 %i.jc, label %.preheader, label %._crit_edge241

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge234
  %i.jd = phi i32 [ %i.mu, %._crit_edge234 ], [ %i.jb, %.preheader.lr.ph ] ; 2 uses
  %i.je = phi i32 [ %i.mv, %._crit_edge234 ], [ %i.jb, %.preheader.lr.ph ] ; 3 uses
  %.098240 = phi i32 [ %.199.lcssa, %._crit_edge234 ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %.0102239 = phi i32 [ %.1103.lcssa, %._crit_edge234 ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %.sroa.0161.0238 = phi ptr [ %i.mw, %._crit_edge234 ], [ %.pr.i, %.preheader.lr.ph ] ; 3 uses
  %i.jf = icmp sgt i32 %i.je, 0
  br i1 %i.jf, label %.lr.ph233, label %._crit_edge234

.lr.ph233:                                        ; preds = %.preheader
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.0161.0238, i64 8
  br label %bb.al

._crit_edge241:                                   ; preds = %._crit_edge234, %.preheader.lr.ph
  invoke void @_Z9done_atomP7t_atoms(ptr noundef nonnull %i.d)
          to label %bb.ar unwind label %bb.au

bb.ai:                                            ; preds = %bb.ad, %bb.ab, %bb.ac
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit151

bb.aj:                                            ; preds = %_ZNSt15__new_allocatorIN3gmx11BasicVectorIfEEE8allocateEmPKv.exit.i.i.i.i, %bb.af
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit151

bb.ak:                                            ; preds = %_ZNSt15__new_allocatorIN3gmx11BasicVectorIfEEE8allocateEmPKv.exit.i.i.i.i140, %bb.ah
  %i.jj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit149

bb.al:                                            ; preds = %.lr.ph233, %.critedge4
  %i.jk = phi i32 [ %i.jd, %.lr.ph233 ], [ %i.ms, %.critedge4 ] ; 3 uses
  %i.jl = phi i32 [ %i.je, %.lr.ph233 ], [ %i.ms, %.critedge4 ] ; 2 uses
  %.0232 = phi i32 [ 0, %.lr.ph233 ], [ %.3, %.critedge4 ] ; 2 uses
  %.199231 = phi i32 [ %.098240, %.lr.ph233 ], [ %.3101, %.critedge4 ] ; 4 uses
  %.1103230 = phi i32 [ %.0102239, %.lr.ph233 ], [ %.2104, %.critedge4 ] ; 6 uses
  %i.jm = load ptr, ptr %i.iy, align 8, !tbaa !123 ; 2 uses
  %i.jn = sext i32 %.0232 to i64                  ; 3 uses
  %i.jo = getelementptr inbounds [36 x i8], ptr %i.jm, i64 %i.jn
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 24
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !124 ; 3 uses
  %i.jr = load ptr, ptr %i.iz, align 8, !tbaa !122
  %i.js = sext i32 %i.jq to i64
  %i.jt = getelementptr inbounds [32 x i8], ptr %i.jr, i64 %i.js ; 2 uses
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !128
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !35 ; 2 uses
  %i.jw = load i64, ptr %i.jg, align 8, !tbaa !132 ; 3 uses
  %i.jx = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.jv) #22
  %i.jy = icmp eq i64 %i.jw, %i.jx
  br i1 %i.jy, label %bb.am, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader: ; preds = %.split, %bb.al
  %i.jz = sext i32 %i.jl to i64                   ; 2 uses
  %i.ka = add nsw i32 %.0232, 1
  %smax = call i32 @llvm.smax.i32(i32 %i.jl, i32 %i.ka) ; 2 uses
  %indvars.iv.next264359 = add nsw i64 %i.jn, 1   ; 2 uses
  %i.kb = icmp slt i64 %indvars.iv.next264359, %i.jz
  br i1 %i.kb, label %.lr.ph361, label %.critedge4

bb.am:                                            ; preds = %bb.al
  %i.kc = icmp eq i64 %i.jw, 0
  br i1 %i.kc, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.split

.split:                                           ; preds = %bb.am
  %i.kd = load ptr, ptr %.sroa.0161.0238, align 8, !tbaa !44
  %bcmp.i = call i32 @bcmp(ptr %i.kd, ptr nonnull %i.jv, i64 %i.jw)
  %i.ke = icmp eq i32 %bcmp.i, 0
  br i1 %i.ke, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.am, %.split
  %i.kf = load ptr, ptr %1, align 8, !tbaa !259
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 48
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !122
  %i.ki = sext i32 %.1103230 to i64               ; 2 uses
  %i.kj = getelementptr inbounds [32 x i8], ptr %i.kh, i64 %i.ki
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.kj, ptr noundef nonnull align 8 dereferenceable(32) %i.jt, i64 32, i1 false), !tbaa.struct !302
  %i.kk = add nsw i32 %.1103230, 1                ; 2 uses
  %i.kl = load ptr, ptr %1, align 8, !tbaa !259   ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 48
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !122
  %i.ko = getelementptr inbounds [32 x i8], ptr %i.kn, i64 %i.ki
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  store i32 %i.kk, ptr %i.kp, align 8, !tbaa !303
  %i.kq = sext i32 %.199231 to i64
  %.pre277 = load ptr, ptr %i.iy, align 8, !tbaa !123
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %.pre278 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !123
end_hunk_1
