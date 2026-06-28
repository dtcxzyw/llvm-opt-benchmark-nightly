inline.NumInlined: 1211
inline.NumDeleted: 559
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES1_b:bb.a
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 5 uses
  %4 = alloca %"class.hermes::hbc::ConsecutiveStringStorage", align 8 ; 8 uses
  %5 = alloca %"class.hermes::hbc::ConsecutiveStringStorage", align 16 ; 7 uses
  %6 = alloca %"class.std::vector.5", align 8     ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35
  %i.e = load ptr, ptr %1, align 8, !tbaa !36
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 16 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !25   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !25
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 3
  %i.t = icmp ne ptr %i.m, null
  %.neg.i.i.i = sext i1 %i.t to i64
  %i.u = add nsw i64 %i.s, %.neg.i.i.i
  %i.v = shl nsw i64 %i.u, 4
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !48
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !26
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 5
  %i.ad = add nsw i64 %i.v, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !27
  %i.ag = load ptr, ptr %i.k, align 8, !tbaa !48
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = ashr exact i64 %i.aj, 5
  %i.al = add nsw i64 %i.ad, %i.ak                ; 7 uses
  %i.am = sub i64 %i.al, %i.i                     ; 11 uses
  %i.an = icmp ugt i64 %i.am, 288230376151711743
  br i1 %i.an, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.al, %i.i                 ; 4 uses
  br i1 %.not, label %_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EE13_M_deallocateEPS3_m.exit.i

_ZNSt12_Vector_baseIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %bb.c
  %i.ao = shl nuw nsw i64 %i.am, 5
  %i.ap = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #20 ; 2 uses
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %i.ap, i64 %i.am
  br label %_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EE7reserveEm.exit

_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EE13_M_deallocateEPS3_m.exit.i
  %.sroa.0.1 = phi ptr [ %i.ap, %_ZNSt12_Vector_baseIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EE13_M_deallocateEPS3_m.exit.i ], [ null, %bb.c ] ; 4 uses
  %.sroa.24.1 = phi ptr [ %i.aq, %_ZNSt12_Vector_baseIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EE13_M_deallocateEPS3_m.exit.i ], [ null, %bb.c ] ; 2 uses
  %i.ar = icmp ult i64 %i.i, %i.al
  br i1 %i.ar, label %.lr.ph, label %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES4_bE5IndexSt6vectorIS5_SaIS5_EEEEZNS4_7toTableES4_bE3$_0EvT_SC_T0_.exit"

.lr.ph:                                           ; preds = %_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EE7reserveEm.exit
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 80
  br label %bb.k

._crit_edge:                                      ; preds = %_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EE12emplace_backIJRmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_10StringKind4KindEEEERS3_DpOT_.exit
  %i.at = icmp eq ptr %.sroa.0.2, %.sroa.17.2
  br i1 %i.at, label %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES4_bE5IndexSt6vectorIS5_SaIS5_EEEEZNS4_7toTableES4_bE3$_0EvT_SC_T0_.exit", label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.au = ptrtoint ptr %.sroa.17.2 to i64         ; 2 uses
  %i.av = ptrtoint ptr %.sroa.0.2 to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 5                 ; 2 uses
  %i.ay = add nsw i64 %i.ax, 1
  %i.az = sdiv i64 %i.ay, 2                       ; 4 uses
  %i.ba = icmp sgt i64 %i.ax, 0
  br i1 %i.ba, label %.lr.ph.i.i.i.i115, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES4_bE5IndexSt6vectorIS5_SaIS5_EEEES5_EC2ESA_l.exit.i.i

.lr.ph.i.i.i.i115:                                ; preds = %bb.d, %select.unfold.i.i.i.i
  %.011.i.i.i.i = phi i64 [ %i.bf, %select.unfold.i.i.i.i ], [ %i.az, %bb.d ] ; 5 uses
  %i.bb = shl nuw nsw i64 %.011.i.i.i.i, 5        ; 3 uses
  %i.bc = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.bb, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #24 ; 8 uses
  %.not.i.i.i.i116 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i116, label %select.unfold.i.i.i.i, label %bb.e

select.unfold.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i115
  %i.bd = icmp eq i64 %.011.i.i.i.i, 1
  %i.be = add nuw nsw i64 %.011.i.i.i.i, 1
  %i.bf = lshr i64 %i.be, 1
  br i1 %i.bd, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES4_bE5IndexSt6vectorIS5_SaIS5_EEEES5_EC2ESA_l.exit.i.i, label %.lr.ph.i.i.i.i115, !llvm.loop !81

bb.e:                                             ; preds = %.lr.ph.i.i.i.i115
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bb
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.0.2, i64 32, i1 false), !tbaa.struct !82
  %.not18.i.i.i.i.i = icmp eq i64 %.011.i.i.i.i, 1
  br i1 %.not18.i.i.i.i.i, label %_ZSt29__uninitialized_construct_bufIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEEvT_SB_T0_.exit.i.i.i, label %.lr.ph.i.i.preheader.i.i.i

.lr.ph.i.i.preheader.i.i.i:                       ; preds = %bb.e
  %.01317.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 32 ; 2 uses
  %i.bh = add nsw i64 %i.bb, -64                  ; 2 uses
  %i.bi = lshr exact i64 %i.bh, 5
  %i.bj = add nuw nsw i64 %i.bi, 1
  %xtraiter = and i64 %i.bj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.preheader.i.i.i, %.lr.ph.i.i.i.i.i.prol
  %.01320.i.i.i.i.i.prol = phi ptr [ %.013.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.prol ], [ %.01317.i.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i ] ; 2 uses
  %.019.i.i.i.i.i.prol = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.prol ], [ %i.bc, %.lr.ph.i.i.preheader.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.preheader.i.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.01320.i.i.i.i.i.prol, ptr noundef nonnull readonly align 8 dereferenceable(32) %.019.i.i.i.i.i.prol, i64 32, i1 false), !tbaa.struct !82
  %i.bk = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i.i.prol, i64 32 ; 3 uses
  %.013.i.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.01320.i.i.i.i.i.prol, i64 32 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !85

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.preheader.i.i.i
  %.lcssa349.unr = phi ptr [ poison, %.lr.ph.i.i.preheader.i.i.i ], [ %i.bk, %.lr.ph.i.i.i.i.i.prol ]
  %.01320.i.i.i.i.i.unr = phi ptr [ %.01317.i.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i ], [ %.013.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.prol ]
  %.019.i.i.i.i.i.unr = phi ptr [ %i.bc, %.lr.ph.i.i.preheader.i.i.i ], [ %i.bk, %.lr.ph.i.i.i.i.i.prol ]
  %i.bl = icmp ult i64 %i.bh, 96
  br i1 %i.bl, label %_ZSt29__uninitialized_construct_bufIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEEvT_SB_T0_.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.01320.i.i.i.i.i = phi ptr [ %.013.i.i.i.i.i.3, %.lr.ph.i.i.i.i.i ], [ %.01320.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.019.i.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i ], [ %.019.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.01320.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %.019.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !82
  %i.bm = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i.i, i64 32
  %.013.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.01320.i.i.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.013.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.bm, i64 32, i1 false), !tbaa.struct !82
  %i.bn = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i.i, i64 64
  %.013.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.01320.i.i.i.i.i, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.013.i.i.i.i.i.1, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.bn, i64 32, i1 false), !tbaa.struct !82
  %i.bo = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i.i, i64 96
  %.013.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.01320.i.i.i.i.i, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.013.i.i.i.i.i.2, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.bo, i64 32, i1 false), !tbaa.struct !82
  %i.bp = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i.i, i64 128 ; 2 uses
  %.013.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.01320.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq ptr %.013.i.i.i.i.i.3, %i.bg
  br i1 %.not.i.i.i.i.i.3, label %_ZSt29__uninitialized_construct_bufIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEEvT_SB_T0_.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !87

_ZSt29__uninitialized_construct_bufIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEEvT_SB_T0_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bc, %bb.e ], [ %.lcssa349.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.bp, %.lr.ph.i.i.i.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.0.2, ptr noundef nonnull align 8 dereferenceable(28) %.0.lcssa.i.i.i.i.i, i64 28, i1 false), !tbaa.struct !82
  br label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES4_bE5IndexSt6vectorIS5_SaIS5_EEEES5_EC2ESA_l.exit.i.i

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES4_bE5IndexSt6vectorIS5_SaIS5_EEEES5_EC2ESA_l.exit.i.i: ; preds = %select.unfold.i.i.i.i, %_ZSt29__uninitialized_construct_bufIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEEvT_SB_T0_.exit.i.i.i, %bb.d
  %.sroa.10.0.i.i = phi ptr [ null, %bb.d ], [ %i.bc, %_ZSt29__uninitialized_construct_bufIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEEvT_SB_T0_.exit.i.i.i ], [ null, %select.unfold.i.i.i.i ] ; 6 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.d ], [ %.011.i.i.i.i, %_ZSt29__uninitialized_construct_bufIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEEvT_SB_T0_.exit.i.i.i ], [ 0, %select.unfold.i.i.i.i ] ; 3 uses
  %i.bq = icmp eq i64 %i.az, %.sroa.4.0.i.i
  br i1 %i.bq, label %bb.f, label %bb.g, !prof !88

bb.f:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES4_bE5IndexSt6vectorIS5_SaIS5_EEEES5_EC2ESA_l.exit.i.i
  %i.br = getelementptr inbounds [32 x i8], ptr %.sroa.0.2, i64 %i.az ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  tail call fastcc void @"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES4_bE5IndexSt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIZNS4_7toTableES4_bE3$_0EEEvT_SF_T0_T1_"(ptr %.sroa.0.2, ptr %i.br, ptr noundef %.sroa.10.0.i.i, ptr nonnull %i.b, i64 %i.i)
  tail call fastcc void @"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES4_bE5IndexSt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIZNS4_7toTableES4_bE3$_0EEEvT_SF_T0_T1_"(ptr %i.br, ptr nonnull %.sroa.17.2, ptr noundef %.sroa.10.0.i.i, ptr nonnull %i.b, i64 %i.i)
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = sub i64 %i.au, %i.bs
  %i.bu = ashr exact i64 %i.bt, 5
  store ptr %i.b, ptr %3, align 8, !tbaa !89
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !52
  tail call fastcc void @"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES4_bE5IndexSt6vectorIS5_SaIS5_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS4_7toTableES4_bE3$_0EEEvT_SF_SF_T0_SG_T1_T2_"(ptr %.sroa.0.2, ptr %i.br, ptr nonnull %.sroa.17.2, i64 noundef %i.az, i64 noundef %i.bu, ptr noundef %.sroa.10.0.i.i, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.j

bb.g:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES4_bE5IndexSt6vectorIS5_SaIS5_EEEES5_EC2ESA_l.exit.i.i
  %i.bv = icmp eq ptr %.sroa.10.0.i.i, null
  br i1 %i.bv, label %bb.h, label %bb.i, !prof !91

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @"_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES4_bE5IndexSt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_7toTableES4_bE3$_0EEEvT_SF_T0_"(ptr %.sroa.0.2, ptr nonnull %.sroa.17.2, ptr nonnull %i.b, i64 %i.i)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  tail call fastcc void @"_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES4_bE5IndexSt6vectorIS5_SaIS5_EEEES6_lNS0_5__ops15_Iter_comp_iterIZNS4_7toTableES4_bE3$_0EEEvT_SF_T0_T1_T2_"(ptr %.sroa.0.2, ptr nonnull %.sroa.17.2, ptr noundef nonnull %.sroa.10.0.i.i, i64 noundef %.sroa.4.0.i.i, ptr nonnull %i.b, i64 %i.i)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f
  %i.bw = shl i64 %.sroa.4.0.i.i, 5
  tail call void @_ZdlPvm(ptr noundef %.sroa.10.0.i.i, i64 noundef %i.bw) #21
  br label %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES4_bE5IndexSt6vectorIS5_SaIS5_EEEEZNS4_7toTableES4_bE3$_0EvT_SC_T0_.exit"

"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES4_bE5IndexSt6vectorIS5_SaIS5_EEEEZNS4_7toTableES4_bE3$_0EvT_SC_T0_.exit": ; preds = %_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EE7reserveEm.exit, %._crit_edge, %bb.j
  %i.bx = phi i1 [ false, %bb.j ], [ true, %._crit_edge ], [ true, %_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EE7reserveEm.exit ]
  %.sroa.24.0.lcssa329 = phi ptr [ %.sroa.24.2, %bb.j ], [ %.sroa.24.2, %._crit_edge ], [ %.sroa.24.1, %_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EE7reserveEm.exit ]
  %.sroa.17.0.lcssa328 = phi ptr [ %.sroa.17.2, %bb.j ], [ %.sroa.17.2, %._crit_edge ], [ %.sroa.0.1, %_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EE7reserveEm.exit ]
  %.sroa.0.0.lcssa327 = phi ptr [ %.sroa.0.2, %bb.j ], [ %.sroa.0.2, %._crit_edge ], [ %.sroa.0.1, %_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EE7reserveEm.exit ] ; 9 uses
  %i.by = tail call i64 @llvm.usub.sat.i64(i64 %i.i, i64 %i.al)
  %i.bz = sub i64 0, %i.by                        ; 2 uses
  %i.ca = getelementptr inbounds [32 x i8], ptr %.sroa.0.0.lcssa327, i64 %i.bz
  %.sroa.speculated5.i.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 range(i64 -1, 65536) 255)
  %.sroa.speculated.i.i117 = tail call i64 @llvm.umin.i64(i64 %i.al, i64 %.sroa.speculated5.i.i)
  %i.cb = sub i64 %.sroa.speculated.i.i117, %i.i  ; 2 uses
  %i.cc = getelementptr inbounds [32 x i8], ptr %.sroa.0.0.lcssa327, i64 %i.cb ; 2 uses
  tail call fastcc void @_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES4_bE5IndexSt6vectorIS5_SaIS5_EEEEEvT_SB_(ptr %i.ca, ptr %i.cc)
  %.sroa.speculated5.i.i120 = tail call i64 @llvm.umax.i64(i64 %i.i, i64 range(i64 -1, 65536) 65535)
  %.sroa.speculated.i.i121 = tail call i64 @llvm.umin.i64(i64 %i.al, i64 %.sroa.speculated5.i.i120)
  %i.cd = sub i64 %.sroa.speculated.i.i121, %i.i  ; 2 uses
  %i.ce = getelementptr inbounds [32 x i8], ptr %.sroa.0.0.lcssa327, i64 %i.cd ; 2 uses
  tail call fastcc void @_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES4_bE5IndexSt6vectorIS5_SaIS5_EEEEEvT_SB_(ptr %i.cc, ptr %i.ce)
  %i.cf = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.lcssa327, i64 %i.am
  tail call fastcc void @_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES4_bE5IndexSt6vectorIS5_SaIS5_EEEEEvT_SB_(ptr %i.ce, ptr %i.cf)
  br i1 %.not, label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN4llvh9StringRefESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIN4llvh9StringRefESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES4_bE5IndexSt6vectorIS5_SaIS5_EEEEZNS4_7toTableES4_bE3$_0EvT_SC_T0_.exit"
  %i.cg = shl nuw nsw i64 %i.am, 4
  %i.ch = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cg) #20 ; 2 uses
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.ch, i64 %i.am
  br label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE7reserveEm.exit

_ZNSt6vectorIN4llvh9StringRefESaIS1_EE7reserveEm.exit: ; preds = %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES4_bE5IndexSt6vectorIS5_SaIS5_EEEEZNS4_7toTableES4_bE3$_0EvT_SC_T0_.exit", %_ZNSt12_Vector_baseIN4llvh9StringRefESaIS1_EE13_M_deallocateEPS1_m.exit.i
  %.sroa.16.1 = phi ptr [ %i.ci, %_ZNSt12_Vector_baseIN4llvh9StringRefESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ null, %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES4_bE5IndexSt6vectorIS5_SaIS5_EEEEZNS4_7toTableES4_bE3$_0EvT_SC_T0_.exit" ] ; 2 uses
  %.sroa.9193.1 = phi ptr [ %i.ch, %_ZNSt12_Vector_baseIN4llvh9StringRefESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ null, %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES4_bE5IndexSt6vectorIS5_SaIS5_EEEEZNS4_7toTableES4_bE3$_0EvT_SC_T0_.exit" ] ; 4 uses
  br i1 %i.bx, label %._crit_edge274, label %.lr.ph273

bb.k:                                             ; preds = %.lr.ph, %_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EE12emplace_backIJRmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_10StringKind4KindEEEERS3_DpOT_.exit
  %storemerge265 = phi i64 [ %i.i, %.lr.ph ], [ %i.ei, %_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EE12emplace_backIJRmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_10StringKind4KindEEEERS3_DpOT_.exit ] ; 8 uses
  %.sroa.24.0264 = phi ptr [ %.sroa.24.1, %.lr.ph ], [ %.sroa.24.2, %_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EE12emplace_backIJRmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_10StringKind4KindEEEERS3_DpOT_.exit ] ; 5 uses
  %.sroa.17.0263 = phi ptr [ %.sroa.0.1, %.lr.ph ], [ %.sroa.17.2, %_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EE12emplace_backIJRmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_10StringKind4KindEEEERS3_DpOT_.exit ] ; 6 uses
  %.sroa.0.0262 = phi ptr [ %.sroa.0.1, %.lr.ph ], [ %.sroa.0.2, %_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EE12emplace_backIJRmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_10StringKind4KindEEEERS3_DpOT_.exit ] ; 6 uses
  %i.cj = load ptr, ptr %i.k, align 8, !tbaa !48, !noalias !92 ; 2 uses
  %i.ck = load ptr, ptr %i.as, align 8, !tbaa !26, !noalias !92
  %i.cl = load ptr, ptr %i.n, align 8, !tbaa !25, !noalias !92 ; 2 uses
  %i.cm = ptrtoint ptr %i.cj to i64
  %i.cn = ptrtoint ptr %i.ck to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = ashr exact i64 %i.co, 5
  %i.cq = add nsw i64 %i.cp, %storemerge265       ; 6 uses
  %i.cr = icmp sgt i64 %i.cq, -1
  br i1 %i.cr, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.cs = icmp samesign ult i64 %i.cq, 16
  br i1 %i.cs, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ct = getelementptr inbounds [32 x i8], ptr %i.cj, i64 %storemerge265
  br label %_ZNK6hermes15StringSetVectorixB5cxx11Em.exit129

bb.n:                                             ; preds = %bb.l
  %i.cu = lshr i64 %i.cq, 4
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cu
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !24, !noalias !92
  %i.cx = and i64 %i.cq, 15
  %i.cy = getelementptr inbounds nuw [32 x i8], ptr %i.cw, i64 %i.cx
  br label %_ZNK6hermes15StringSetVectorixB5cxx11Em.exit129

bb.o:                                             ; preds = %bb.k
  %i.cz = ashr i64 %i.cq, 4
  %i.da = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !24, !noalias !92
  %i.dc = and i64 %i.cq, 15
  %i.dd = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %i.dc
  br label %_ZNK6hermes15StringSetVectorixB5cxx11Em.exit129

_ZNK6hermes15StringSetVectorixB5cxx11Em.exit129:  ; preds = %bb.n, %bb.o, %bb.m
  %storemerge.i.i.i.i.i236 = phi ptr [ %i.ct, %bb.m ], [ %i.cy, %bb.n ], [ %i.dd, %bb.o ] ; 2 uses
  %i.de = load ptr, ptr %i.a, align 8, !tbaa !65
  %i.df = sdiv i64 %storemerge265, 64
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.de, i64 %i.df
  %i.dh = and i64 %storemerge265, -9223372036854775745
  %i.di = icmp ugt i64 %i.dh, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.di, i64 -8, i64 0
  %storemerge.i.i.i.i.i130 = getelementptr inbounds i8, ptr %i.dg, i64 %storemerge.idx.i.i.i.i.i
  %i.dj = and i64 %storemerge265, 63
  %i.dk = shl nuw i64 1, %i.dj
  %i.dl = load i64, ptr %storemerge.i.i.i.i.i130, align 8, !tbaa !52
  %i.dm = and i64 %i.dl, %i.dk
  %.not245 = icmp eq i64 %i.dm, 0
  %..i = select i1 %.not245, i32 0, i32 -2147483648 ; 2 uses
  %.val85 = load ptr, ptr %storemerge.i.i.i.i.i236, align 8 ; 2 uses
  %i.dn = getelementptr i8, ptr %storemerge.i.i.i.i.i236, i64 8
  %.val86 = load i64, ptr %i.dn, align 8          ; 2 uses
  %.not.i = icmp eq ptr %.sroa.17.0263, %.sroa.24.0264
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNK6hermes15StringSetVectorixB5cxx11Em.exit129
  store i64 %storemerge265, ptr %.sroa.17.0263, align 8, !tbaa !95
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.17.0263, i64 8
  store ptr %.val85, ptr %i.do, align 8, !tbaa !12
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.17.0263, i64 16
  store i64 %.val86, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !52
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.17.0263, i64 24
  store i32 %..i, ptr %i.dp, align 8, !tbaa !97
  br label %_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EE12emplace_backIJRmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_10StringKind4KindEEEERS3_DpOT_.exit

bb.q:                                             ; preds = %_ZNK6hermes15StringSetVectorixB5cxx11Em.exit129
  %i.dq = ptrtoint ptr %.sroa.24.0264 to i64
  %i.dr = ptrtoint ptr %.sroa.0.0262 to i64
  %i.ds = sub i64 %i.dq, %i.dr                    ; 4 uses
  %i.dt = icmp eq i64 %i.ds, 9223372036854775776
  br i1 %i.dt, label %bb.r, label %_ZNKSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #23
  unreachable

_ZNKSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.q
  %i.du = ashr exact i64 %i.ds, 5                 ; 3 uses
  %i.dv = icmp eq ptr %.sroa.24.0264, %.sroa.0.0262 ; 2 uses
  %.sroa.speculated.i.i.i = select i1 %i.dv, i64 1, i64 %i.du
  %i.dw = add nsw i64 %.sroa.speculated.i.i.i, %i.du ; 2 uses
  %i.dx = icmp ult i64 %i.dw, %i.du
  %i.dy = tail call i64 @llvm.umin.i64(i64 %i.dw, i64 288230376151711743)
  %i.dz = select i1 %i.dx, i64 288230376151711743, i64 %i.dy ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dz, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ea = shl nuw nsw i64 %i.dz, 5
  %i.eb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ea) #20 ; 5 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.ds ; 4 uses
  store i64 %storemerge265, ptr %i.ec, align 8, !tbaa !95
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store ptr %.val85, ptr %i.ed, align 8, !tbaa !12
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store i64 %.val86, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !52
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  store i32 %..i, ptr %i.ee, align 8, !tbaa !97
  br i1 %i.dv, label %_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit28.i.i, label %.lr.ph.i.i.i.i.i131

.lr.ph.i.i.i.i.i131:                              ; preds = %_ZNKSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i131
  %.03.i.i.i.i.i = phi ptr [ %i.eg, %.lr.ph.i.i.i.i.i131 ], [ %i.eb, %_ZNKSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.092.i.i.i.i.i = phi ptr [ %i.ef, %.lr.ph.i.i.i.i.i131 ], [ %.sroa.0.0262, %_ZNKSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.03.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %.092.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !82, !alias.scope !98
  %i.ef = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 32 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i132 = icmp eq ptr %i.ef, %.sroa.24.0264
  br i1 %.not.i.i.i.i.i132, label %_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit28.i.i, label %.lr.ph.i.i.i.i.i131, !llvm.loop !102

_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit28.i.i: ; preds = %.lr.ph.i.i.i.i.i131, %_ZNKSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i133 = phi ptr [ %i.eb, %_ZNKSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.eg, %.lr.ph.i.i.i.i.i131 ]
  %.not.i29.i.i = icmp eq ptr %.sroa.0.0262, null
  br i1 %.not.i29.i.i, label %_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EE17_M_realloc_insertIJRmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_10StringKind4KindEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit28.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0262, i64 noundef %i.ds) #22
  br label %_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EE17_M_realloc_insertIJRmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_10StringKind4KindEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EE17_M_realloc_insertIJRmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_10StringKind4KindEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.s, %_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit28.i.i
  %i.eh = getelementptr inbounds nuw [32 x i8], ptr %i.eb, i64 %i.dz
  br label %_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EE12emplace_backIJRmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_10StringKind4KindEEEERS3_DpOT_.exit

_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EE12emplace_backIJRmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_10StringKind4KindEEEERS3_DpOT_.exit: ; preds = %bb.p, %_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EE17_M_realloc_insertIJRmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_10StringKind4KindEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  %.sroa.0.2 = phi ptr [ %i.eb, %_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EE17_M_realloc_insertIJRmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_10StringKind4KindEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.0.0262, %bb.p ] ; 12 uses
  %.0.lcssa.i.i.i.i.i133.pn = phi ptr [ %.0.lcssa.i.i.i.i.i133, %_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EE17_M_realloc_insertIJRmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_10StringKind4KindEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.17.0263, %bb.p ]
  %.sroa.24.2 = phi ptr [ %i.eh, %_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EE17_M_realloc_insertIJRmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_10StringKind4KindEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.24.0264, %bb.p ] ; 3 uses
  %.sroa.17.2 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i133.pn, i64 32 ; 9 uses
  %i.ei = add nuw i64 %storemerge265, 1           ; 2 uses
  %i.ej = icmp ult i64 %i.ei, %i.al
  br i1 %i.ej, label %bb.k, label %._crit_edge, !llvm.loop !103

._crit_edge274:                                   ; preds = %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE7reserveEm.exit
  %.sroa.16.0.lcssa = phi ptr [ %.sroa.16.1, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE7reserveEm.exit ], [ %.sroa.16.2, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit ]
  %.sroa.9193.0.lcssa = phi ptr [ %.sroa.9193.1, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE7reserveEm.exit ], [ %.sroa.9193.2, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit ]
  %.sroa.0189.0.lcssa = phi ptr [ %.sroa.9193.1, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE7reserveEm.exit ], [ %.sroa.0189.2, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.ek = ptrtoint ptr %.sroa.9193.0.lcssa to i64
  %i.el = ptrtoint ptr %.sroa.0189.0.lcssa to i64 ; 2 uses
  %i.em = sub i64 %i.ek, %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.0189.0.lcssa, i64 %i.em
  call void @_ZN6hermes3hbc24ConsecutiveStringStorageC2IPKN4llvh9StringRefESt17integral_constantIbLb0EEEET_S9_T0_b(ptr noundef nonnull align 8 dereferenceable(50) %4, ptr noundef %.sroa.0189.0.lcssa, ptr noundef %i.en, i1 noundef zeroext %2) #21
  call void @_ZN6hermes3hbc24ConsecutiveStringStorage13appendStorageEOS1_(ptr noundef nonnull align 8 dereferenceable(50) %1, ptr noundef nonnull align 8 dereferenceable(50) %4) #21
  %i.eo = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !104 ; 3 uses
  %.not.i.i.i.i134 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i.i.i134, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i, label %bb.t

bb.t:                                             ; preds = %._crit_edge274
  %i.eq = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !14
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = ptrtoint ptr %i.ep to i64
  %i.eu = sub i64 %i.es, %i.et
  call void @_ZdlPvm(ptr noundef nonnull %i.ep, i64 noundef %i.eu) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i

_ZNSt6vectorIhSaIhEED2Ev.exit.i:                  ; preds = %bb.t, %._crit_edge274
  %i.ev = load ptr, ptr %4, align 8, !tbaa !36    ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ev, null
  br i1 %.not.i.i.i1.i, label %_ZN6hermes3hbc24ConsecutiveStringStorageD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i
  %i.ew = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !10
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = ptrtoint ptr %i.ev to i64
  %i.fa = sub i64 %i.ey, %i.ez
  call void @_ZdlPvm(ptr noundef nonnull %i.ev, i64 noundef %i.fa) #22
  br label %_ZN6hermes3hbc24ConsecutiveStringStorageD2Ev.exit

_ZN6hermes3hbc24ConsecutiveStringStorageD2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %.not.i.i.i135 = icmp eq ptr %.sroa.0189.0.lcssa, null
  br i1 %.not.i.i.i135, label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZN6hermes3hbc24ConsecutiveStringStorageD2Ev.exit
  %i.fb = ptrtoint ptr %.sroa.16.0.lcssa to i64
end_hunk_0
