Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/EHFrameSupport?download=true
inline.NumInlined: 2784
inline.NumDeleted: 1353
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE15_M_range_insertINS0_6detail12DenseSetImplIS3_NS0_8DenseMapIS3_NS7_13DenseSetEmptyENS0_12DenseMapInfoIS3_vEENS7_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EET_SN_St20forward_iterator_tag:bb.a
.lr.ph.i.i.i.i.i.i.i.i71:                         ; preds = %.lr.ph260
  %i.ff = add i64 %i.fh, 1                        ; 2 uses
  %i.fg = icmp eq i64 %i.ff, %i.h
  br i1 %i.fg, label %_ZN4llvm6detail12DenseSetImplIPNS_7jitlink5BlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i.i63, label %.lr.ph260, !llvm.loop !0

.lr.ph260:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i71.preheader, %.lr.ph.i.i.i.i.i.i.i.i71
  %i.fh = phi i64 [ %i.ff, %.lr.ph.i.i.i.i.i.i.i.i71 ], [ %i.fd, %.lr.ph.i.i.i.i.i.i.i.i71.preheader ] ; 3 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0119.sroa.4.0.copyload, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !56 ; 2 uses
  %i.fk = icmp eq i32 %i.fj, 0
  br i1 %i.fk, label %.lr.ph.i.i.i.i.i.i.i.i71, label %._crit_edge.i.i.i.i.i.i.i.i67, !llvm.loop !0

._crit_edge.i.i.i.i.i.i.i.i67:                    ; preds = %.lr.ph260, %bb.s
  %.012.lcssa.i.i.i.i.i.i.i.i68 = phi i64 [ %i.ev, %bb.s ], [ %i.fh, %.lr.ph260 ]
  %.0.lcssa.i.i.i.i.i.i.i.i69 = phi i32 [ %i.fb, %bb.s ], [ %i.fj, %.lr.ph260 ]
  %i.fl = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i.i.i.i69, i1 true)
  %i.fm = zext nneg i32 %i.fl to i64
  %.idx.i.i.i.i.i.i.i.i70 = shl i64 %.012.lcssa.i.i.i.i.i.i.i.i68, 8
  %i.fn = getelementptr i8, ptr %.sroa.0119.sroa.3.0.copyload, i64 %.idx.i.i.i.i.i.i.i.i70
  %i.fo = getelementptr [8 x i8], ptr %i.fn, i64 %i.fm
  br label %_ZN4llvm6detail12DenseSetImplIPNS_7jitlink5BlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i.i63

_ZN4llvm6detail12DenseSetImplIPNS_7jitlink5BlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i.i63: ; preds = %.lr.ph.i.i.i.i.i.i.i.i71, %.lr.ph.i.i.i.i.i.i.i.i71.preheader, %._crit_edge.i.i.i.i.i.i.i.i67, %.lr.ph.i.i.i.i.i59
  %storemerge16.i.i.i.i.i.i.i.i64 = phi ptr [ %.sroa.0119.sroa.2.0.copyload, %.lr.ph.i.i.i.i.i59 ], [ %i.fo, %._crit_edge.i.i.i.i.i.i.i.i67 ], [ %.sroa.0119.sroa.2.0.copyload, %.lr.ph.i.i.i.i.i.i.i.i71.preheader ], [ %.sroa.0119.sroa.2.0.copyload, %.lr.ph.i.i.i.i.i.i.i.i71 ] ; 2 uses
  %.not.i.i.i.i.i65 = icmp eq ptr %storemerge16.i.i.i.i.i.i.i.i64, %.sroa.0106.0
  br i1 %.not.i.i.i.i.i65, label %_ZSt4copyIN4llvm6detail12DenseSetImplIPNS0_7jitlink5BlockENS0_8DenseMapIS5_NS1_13DenseSetEmptyENS0_12DenseMapInfoIS5_vEENS1_12DenseSetPairIS5_EEEEE16DenseSetIteratorILb0EEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEET0_T_SO_SN_.exit, label %.lr.ph.i.i.i.i.i59, !llvm.loop !860

bb.t:                                             ; preds = %_ZSt10__distanceIN4llvm6detail12DenseSetImplIPNS0_7jitlink5BlockENS0_8DenseMapIS5_NS1_13DenseSetEmptyENS0_12DenseMapInfoIS5_vEENS1_12DenseSetPairIS5_EEEEE16DenseSetIteratorILb0EEEENSt15iterator_traitsIT_E15difference_typeESH_SH_St18input_iterator_tag.exit
  %i.fp = load ptr, ptr %0, align 8, !tbaa !97    ; 5 uses
  %i.fq = ptrtoint ptr %i.fp to i64               ; 3 uses
  %i.fr = sub i64 %i.am, %i.fq
  %i.fs = ashr exact i64 %i.fr, 3                 ; 4 uses
  %i.ft = sub nsw i64 1152921504606846975, %i.fs
  %.not = icmp ugt i64 %i.ft, %.07.i
  br i1 %.not, label %_ZNKSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE12_M_check_lenEmPKc.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #22
  unreachable

_ZNKSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.t
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.fs, i64 %i.ag)
  %i.fu = add nsw i64 %.sroa.speculated.i, %i.fs  ; 2 uses
  %i.fv = icmp ult i64 %i.fu, %i.fs
  %i.fw = tail call i64 @llvm.umin.i64(i64 %i.fu, i64 1152921504606846975)
  %i.fx = select i1 %i.fv, i64 1152921504606846975, i64 %i.fw ; 3 uses
  %.not.i74 = icmp eq i64 %i.fx, 0
  br i1 %.not.i74, label %_ZNSt12_Vector_baseIPN4llvm7jitlink5BlockESaIS3_EE11_M_allocateEm.exit, label %bb.v

bb.v:                                             ; preds = %_ZNKSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE12_M_check_lenEmPKc.exit
  %i.fy = shl nuw nsw i64 %i.fx, 3
  %i.fz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fy) #20
  br label %_ZNSt12_Vector_baseIPN4llvm7jitlink5BlockESaIS3_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIPN4llvm7jitlink5BlockESaIS3_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE12_M_check_lenEmPKc.exit, %bb.v
  %i.ga = phi ptr [ %i.fz, %bb.v ], [ null, %_ZNKSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.gb = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.gc = sub i64 %i.gb, %i.fq                    ; 4 uses
  %i.gd = icmp sgt i64 %i.gc, 8
  br i1 %i.gd, label %bb.w, label %bb.x, !prof !90

bb.w:                                             ; preds = %_ZNSt12_Vector_baseIPN4llvm7jitlink5BlockESaIS3_EE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ga, ptr align 8 %i.fp, i64 %i.gc, i1 false)
  br label %.lr.ph.i.i.i.i.i.i.i.i84

bb.x:                                             ; preds = %_ZNSt12_Vector_baseIPN4llvm7jitlink5BlockESaIS3_EE11_M_allocateEm.exit
  %i.ge = icmp eq i64 %i.gc, 8
  br i1 %i.ge, label %bb.y, label %.lr.ph.i.i.i.i.i.i.i.i84

bb.y:                                             ; preds = %bb.x
  %i.gf = load ptr, ptr %i.fp, align 8, !tbaa !73
  store ptr %i.gf, ptr %i.ga, align 8, !tbaa !73
  br label %.lr.ph.i.i.i.i.i.i.i.i84

.lr.ph.i.i.i.i.i.i.i.i84:                         ; preds = %bb.y, %bb.x, %bb.w
  %i.gg = getelementptr inbounds i8, ptr %i.ga, i64 %i.gc
  br label %bb.z

bb.z:                                             ; preds = %_ZN4llvm6detail12DenseSetImplIPNS_7jitlink5BlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i.i.i.i.i88, %.lr.ph.i.i.i.i.i.i.i.i84
  %.08.i.i.i.i.i.i.i.i85 = phi ptr [ %i.gg, %.lr.ph.i.i.i.i.i.i.i.i84 ], [ %i.gi, %_ZN4llvm6detail12DenseSetImplIPNS_7jitlink5BlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i.i.i.i.i88 ] ; 2 uses
  %storemerge16.i.i.i57.i.i.i.i.i.i.i.i86 = phi ptr [ %i.a, %.lr.ph.i.i.i.i.i.i.i.i84 ], [ %storemerge16.i.i.i.i.i.i.i.i.i.i.i89, %_ZN4llvm6detail12DenseSetImplIPNS_7jitlink5BlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i.i.i.i.i88 ] ; 2 uses
  %i.gh = load ptr, ptr %storemerge16.i.i.i57.i.i.i.i.i.i.i.i86, align 8, !tbaa !73
  store ptr %i.gh, ptr %.08.i.i.i.i.i.i.i.i85, align 8, !tbaa !73
  %i.gi = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i85, i64 8 ; 4 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %storemerge16.i.i.i57.i.i.i.i.i.i.i.i86, i64 8
  %i.gk = ptrtoint ptr %i.gj to i64
  %i.gl = sub i64 %i.gk, %i.d
  %i.gm = ashr exact i64 %i.gl, 3                 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i87 = icmp ult i64 %i.gm, %i.f
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i87, label %bb.aa, label %_ZN4llvm6detail12DenseSetImplIPNS_7jitlink5BlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i.i.i.i.i88

bb.aa:                                            ; preds = %bb.z
  %i.gn = lshr i64 %i.gm, 5                       ; 3 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0119.sroa.4.0.copyload, i64 %i.gn
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !56
  %i.gq = trunc i64 %i.gm to i32
  %i.gr = and i32 %i.gq, 31
  %i.gs = shl nsw i32 -1, %i.gr
  %i.gt = and i32 %i.gp, %i.gs                    ; 2 uses
  %i.gu = icmp eq i32 %i.gt, 0
  br i1 %i.gu, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i96.preheader, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i92

.lr.ph.i.i.i.i.i.i.i.i.i.i.i96.preheader:         ; preds = %bb.aa
  %i.gv = add nuw nsw i64 %i.gn, 1                ; 2 uses
  %i.gw = icmp eq i64 %i.gv, %i.h
  br i1 %i.gw, label %_ZN4llvm6detail12DenseSetImplIPNS_7jitlink5BlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i.i.i.i.i88, label %.lr.ph257

.lr.ph.i.i.i.i.i.i.i.i.i.i.i96:                   ; preds = %.lr.ph257
  %i.gx = add i64 %i.gz, 1                        ; 2 uses
  %i.gy = icmp eq i64 %i.gx, %i.h
  br i1 %i.gy, label %_ZN4llvm6detail12DenseSetImplIPNS_7jitlink5BlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i.i.i.i.i88, label %.lr.ph257, !llvm.loop !0

.lr.ph257:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i96.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i96
  %i.gz = phi i64 [ %i.gx, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i96 ], [ %i.gv, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i96.preheader ] ; 3 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0119.sroa.4.0.copyload, i64 %i.gz
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !56 ; 2 uses
  %i.hc = icmp eq i32 %i.hb, 0
  br i1 %i.hc, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i96, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i92, !llvm.loop !0

._crit_edge.i.i.i.i.i.i.i.i.i.i.i92:              ; preds = %.lr.ph257, %bb.aa
  %.012.lcssa.i.i.i.i.i.i.i.i.i.i.i93 = phi i64 [ %i.gn, %bb.aa ], [ %i.gz, %.lr.ph257 ]
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i94 = phi i32 [ %i.gt, %bb.aa ], [ %i.hb, %.lr.ph257 ]
  %i.hd = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i94, i1 true)
  %i.he = zext nneg i32 %i.hd to i64
  %.idx.i.i.i.i.i.i.i.i.i.i.i95 = shl i64 %.012.lcssa.i.i.i.i.i.i.i.i.i.i.i93, 8
  %i.hf = getelementptr i8, ptr %.sroa.0119.sroa.3.0.copyload, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i95
  %i.hg = getelementptr [8 x i8], ptr %i.hf, i64 %i.he
  br label %_ZN4llvm6detail12DenseSetImplIPNS_7jitlink5BlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i.i.i.i.i88

_ZN4llvm6detail12DenseSetImplIPNS_7jitlink5BlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i.i.i.i.i88: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i96, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i96.preheader, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i92, %bb.z
  %storemerge16.i.i.i.i.i.i.i.i.i.i.i89 = phi ptr [ %.sroa.0119.sroa.2.0.copyload, %bb.z ], [ %i.hg, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i92 ], [ %.sroa.0119.sroa.2.0.copyload, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i96.preheader ], [ %.sroa.0119.sroa.2.0.copyload, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i96 ] ; 2 uses
  %.not.i.i.i.i.i.i.i.i90 = icmp eq ptr %storemerge16.i.i.i.i.i.i.i.i.i.i.i89, %i.b
  br i1 %.not.i.i.i.i.i.i.i.i90, label %_ZSt22__uninitialized_copy_aIN4llvm6detail12DenseSetImplIPNS0_7jitlink5BlockENS0_8DenseMapIS5_NS1_13DenseSetEmptyENS0_12DenseMapInfoIS5_vEENS1_12DenseSetPairIS5_EEEEE16DenseSetIteratorILb0EEEPS5_S5_ET0_T_SI_SH_RSaIT1_E.exit98, label %bb.z, !llvm.loop !860

_ZSt22__uninitialized_copy_aIN4llvm6detail12DenseSetImplIPNS0_7jitlink5BlockENS0_8DenseMapIS5_NS1_13DenseSetEmptyENS0_12DenseMapInfoIS5_vEENS1_12DenseSetPairIS5_EEEEE16DenseSetIteratorILb0EEEPS5_S5_ET0_T_SI_SH_RSaIT1_E.exit98: ; preds = %_ZN4llvm6detail12DenseSetImplIPNS_7jitlink5BlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i.i.i.i.i88
  %i.hh = sub i64 %i.am, %i.gb                    ; 4 uses
  %i.hi = icmp sgt i64 %i.hh, 8
  br i1 %i.hi, label %bb.ab, label %bb.ac, !prof !90

bb.ab:                                            ; preds = %_ZSt22__uninitialized_copy_aIN4llvm6detail12DenseSetImplIPNS0_7jitlink5BlockENS0_8DenseMapIS5_NS1_13DenseSetEmptyENS0_12DenseMapInfoIS5_vEENS1_12DenseSetPairIS5_EEEEE16DenseSetIteratorILb0EEEPS5_S5_ET0_T_SI_SH_RSaIT1_E.exit98
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gi, ptr align 8 %1, i64 %i.hh, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPPN4llvm7jitlink5BlockES4_SaIS3_EET0_T_S7_S6_RT1_.exit99

bb.ac:                                            ; preds = %_ZSt22__uninitialized_copy_aIN4llvm6detail12DenseSetImplIPNS0_7jitlink5BlockENS0_8DenseMapIS5_NS1_13DenseSetEmptyENS0_12DenseMapInfoIS5_vEENS1_12DenseSetPairIS5_EEEEE16DenseSetIteratorILb0EEEPS5_S5_ET0_T_SI_SH_RSaIT1_E.exit98
  %i.hj = icmp eq i64 %i.hh, 8
  br i1 %i.hj, label %bb.ad, label %_ZSt34__uninitialized_move_if_noexcept_aIPPN4llvm7jitlink5BlockES4_SaIS3_EET0_T_S7_S6_RT1_.exit99

bb.ad:                                            ; preds = %bb.ac
  %i.hk = load ptr, ptr %1, align 8, !tbaa !73
  store ptr %i.hk, ptr %i.gi, align 8, !tbaa !73
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPPN4llvm7jitlink5BlockES4_SaIS3_EET0_T_S7_S6_RT1_.exit99

_ZSt34__uninitialized_move_if_noexcept_aIPPN4llvm7jitlink5BlockES4_SaIS3_EET0_T_S7_S6_RT1_.exit99: ; preds = %bb.ab, %bb.ac, %bb.ad
  %i.hl = getelementptr inbounds i8, ptr %i.gi, i64 %i.hh
  %.not.i100 = icmp eq ptr %i.fp, null
  br i1 %.not.i100, label %_ZNSt12_Vector_baseIPN4llvm7jitlink5BlockESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPPN4llvm7jitlink5BlockES4_SaIS3_EET0_T_S7_S6_RT1_.exit99
  %i.hm = load ptr, ptr %i.ah, align 8, !tbaa !98
  %i.hn = ptrtoint ptr %i.hm to i64
  %i.ho = sub i64 %i.hn, %i.fq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fp, i64 noundef %i.ho) #21
  br label %_ZNSt12_Vector_baseIPN4llvm7jitlink5BlockESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIPN4llvm7jitlink5BlockESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPPN4llvm7jitlink5BlockES4_SaIS3_EET0_T_S7_S6_RT1_.exit99, %bb.ae
  store ptr %i.ga, ptr %0, align 8, !tbaa !97
  store ptr %i.hl, ptr %i.aj, align 8, !tbaa !864
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %i.fx
  store ptr %i.hp, ptr %i.ah, align 8, !tbaa !98
  br label %_ZSt4copyIN4llvm6detail12DenseSetImplIPNS0_7jitlink5BlockENS0_8DenseMapIS5_NS1_13DenseSetEmptyENS0_12DenseMapInfoIS5_vEENS1_12DenseSetPairIS5_EEEEE16DenseSetIteratorILb0EEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEET0_T_SO_SN_.exit

_ZSt4copyIN4llvm6detail12DenseSetImplIPNS0_7jitlink5BlockENS0_8DenseMapIS5_NS1_13DenseSetEmptyENS0_12DenseMapInfoIS5_vEENS1_12DenseSetPairIS5_EEEEE16DenseSetIteratorILb0EEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEET0_T_SO_SN_.exit: ; preds = %_ZN4llvm6detail12DenseSetImplIPNS_7jitlink5BlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i.i63, %_ZN4llvm6detail12DenseSetImplIPNS_7jitlink5BlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i.i, %_ZSt22__uninitialized_move_aIPPN4llvm7jitlink5BlockES4_SaIS3_EET0_T_S7_S6_RT1_.exit49, %_ZNSt12_Vector_baseIPN4llvm7jitlink5BlockESaIS3_EE13_M_deallocateEPS3_m.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_16EHFrameEdgeFixerclERNS3_9LinkGraphEE3$_0EEEvT_SI_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #13 {
bb.a:
  %.fr30 = freeze ptr %1                          ; 3 uses
  %.fr29 = freeze ptr %0                          ; 42 uses
  %i.a = ptrtoint ptr %.fr29 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr30 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16EHFrameEdgeFixerclERNS3_9LinkGraphEE3$_0EEEvT_SI_SI_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr29, i64 8 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph54

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16EHFrameEdgeFixerclERNS3_9LinkGraphEE3$_0EEET_SI_SI_T0_.exit"
  %i.h = icmp eq i64 %i.cz, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph54, !llvm.loop !865

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i.i28.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.dx, %bb.b ] ; 3 uses
  %storemerge26.lcssa = phi ptr [ %.fr30, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.i = lshr i64 %.fr.i.i.i28.lcssa, 3           ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 4 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 4 uses
  %i.n = and i64 %.fr.i.i.i28.lcssa, 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.split.preheader.i.i.i, label %.split.us.i.i.i

.split.preheader.i.i.i:                           ; preds = %._crit_edge
  %i.p = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.p
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.k
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %._crit_edge, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_16EHFrameEdgeFixerclERNS3_9LinkGraphEE3$_0EEEvT_T0_SJ_T1_T2_.exit.us.i.i.i"
  %.09.us.i.i.i = phi i64 [ %i.an, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_16EHFrameEdgeFixerclERNS3_9LinkGraphEE3$_0EEEvT_T0_SJ_T1_T2_.exit.us.i.i.i" ], [ %i.k, %._crit_edge ] ; 7 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.09.us.i.i.i
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !73   ; 2 uses
  %i.u = icmp slt i64 %.09.us.i.i.i, %i.m
  br i1 %i.u, label %.lr.ph.i.us.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_16EHFrameEdgeFixerclERNS3_9LinkGraphEE3$_0EEEvT_T0_SJ_T1_T2_.exit.us.i.i.i"

.lr.ph.i.us.i.i.i:                                ; preds = %.split.us.i.i.i, %.lr.ph.i.us.i.i.i
  %.034.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ], [ %.09.us.i.i.i, %.split.us.i.i.i ] ; 2 uses
  %i.v = shl i64 %.034.i.us.i.i.i, 1              ; 2 uses
  %i.w = add i64 %i.v, 2                          ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.w
  %i.y = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.y
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !73
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !73
  %.val.i.i.us.i.i.i = load i64, ptr %i.aa, align 8, !tbaa !23
  %.val1.i.i.us.i.i.i = load i64, ptr %i.ab, align 8, !tbaa !23
  %i.ac = icmp ult i64 %.val.i.i.us.i.i.i, %.val1.i.i.us.i.i.i
  %spec.select.i.us.i.i.i = select i1 %i.ac, i64 %i.y, i64 %i.w ; 4 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %spec.select.i.us.i.i.i
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !73
  %i.af = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.034.i.us.i.i.i
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !73
  %i.ag = icmp slt i64 %spec.select.i.us.i.i.i, %i.m
  br i1 %i.ag, label %.lr.ph.i.us.i.i.i, label %._crit_edge.i.us.i.i.i, !llvm.loop !866

._crit_edge.i.us.i.i.i:                           ; preds = %.lr.ph.i.us.i.i.i
  %.val.val.i.i.us.i.i.i = load i64, ptr %i.t, align 8, !tbaa !23
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %._crit_edge.i.us.i.i.i
  %.010.i.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %._crit_edge.i.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.d ] ; 3 uses
  %.0911.in.i.i.us.i.i.i = add nsw i64 %.010.i.i.us.i.i.i, -1
  %.0911.i.i.us.i.i.i = sdiv i64 %.0911.in.i.i.us.i.i.i, 2 ; 4 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0911.i.i.us.i.i.i
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !73 ; 2 uses
  %.val.i.i.i.us.i.i.i = load i64, ptr %i.ai, align 8, !tbaa !23
  %i.aj = icmp ult i64 %.val.i.i.i.us.i.i.i, %.val.val.i.i.us.i.i.i
  br i1 %i.aj, label %bb.d, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_16EHFrameEdgeFixerclERNS3_9LinkGraphEE3$_0EEEvT_T0_SJ_T1_T2_.exit.us.i.i.i"

bb.d:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.010.i.i.us.i.i.i
  store ptr %i.ai, ptr %i.ak, align 8, !tbaa !73
  %i.al = icmp sgt i64 %.0911.i.i.us.i.i.i, %.09.us.i.i.i
  br i1 %i.al, label %bb.c, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_16EHFrameEdgeFixerclERNS3_9LinkGraphEE3$_0EEEvT_T0_SJ_T1_T2_.exit.us.i.i.i", !llvm.loop !867

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_16EHFrameEdgeFixerclERNS3_9LinkGraphEE3$_0EEEvT_T0_SJ_T1_T2_.exit.us.i.i.i": ; preds = %bb.d, %bb.c, %.split.us.i.i.i
  %.0.lcssa.i.i.us.i.i.i = phi i64 [ %.09.us.i.i.i, %.split.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.d ], [ %.010.i.i.us.i.i.i, %bb.c ]
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.us.i.i.i
  store ptr %i.t, ptr %i.am, align 8, !tbaa !73
  %.not.us.i.i.i = icmp eq i64 %.09.us.i.i.i, 0
  %i.an = add nsw i64 %.09.us.i.i.i, -1
  br i1 %.not.us.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16EHFrameEdgeFixerclERNS3_9LinkGraphEE3$_0EEEvT_SI_RT0_.exit.i.i", label %.split.us.i.i.i, !llvm.loop !868

.split.i.i.i:                                     ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_16EHFrameEdgeFixerclERNS3_9LinkGraphEE3$_0EEEvT_T0_SJ_T1_T2_.exit.i.i.i", %.split.preheader.i.i.i
  %.09.i.i.i = phi i64 [ %i.bm, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_16EHFrameEdgeFixerclERNS3_9LinkGraphEE3$_0EEEvT_T0_SJ_T1_T2_.exit.i.i.i" ], [ %i.k, %.split.preheader.i.i.i ] ; 8 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.09.i.i.i
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !73 ; 2 uses
  %i.aq = icmp slt i64 %.09.i.i.i, %i.m
  br i1 %i.aq, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i.i, %.lr.ph.i.i.i.i
  %.034.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.09.i.i.i, %.split.i.i.i ] ; 2 uses
  %i.ar = shl i64 %.034.i.i.i.i, 1                ; 2 uses
  %i.as = add i64 %i.ar, 2                        ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.as
  %i.au = or disjoint i64 %i.ar, 1                ; 2 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.au
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !73
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !73
  %.val.i.i.i.i.i = load i64, ptr %i.aw, align 8, !tbaa !23
  %.val1.i.i.i.i.i = load i64, ptr %i.ax, align 8, !tbaa !23
  %i.ay = icmp ult i64 %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.ay, i64 %i.au, i64 %i.as ; 4 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %spec.select.i.i.i.i
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !73
  %i.bb = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.034.i.i.i.i
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !73
  %i.bc = icmp slt i64 %spec.select.i.i.i.i, %i.m
  br i1 %i.bc, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !866

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.split.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.09.i.i.i, %.split.i.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.bd = icmp eq i64 %.0.lcssa.i.i.i.i, %i.k
  br i1 %i.bd, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.be = load ptr, ptr %i.q, align 8, !tbaa !73
  store ptr %i.be, ptr %i.r, align 8, !tbaa !73
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.p, %bb.e ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.bf = icmp sgt i64 %.1.i.i.i.i, %.09.i.i.i
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_16EHFrameEdgeFixerclERNS3_9LinkGraphEE3$_0EEEvT_T0_SJ_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f
  %.val.val.i.i.i.i.i = load i64, ptr %i.ap, align 8, !tbaa !23
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.h ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0911.i.i.i.i.i
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !73 ; 2 uses
  %.val.i.i.i.i.i.i = load i64, ptr %i.bh, align 8, !tbaa !23
  %i.bi = icmp ult i64 %.val.i.i.i.i.i.i, %.val.val.i.i.i.i.i
  br i1 %i.bi, label %bb.h, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_16EHFrameEdgeFixerclERNS3_9LinkGraphEE3$_0EEEvT_T0_SJ_T1_T2_.exit.i.i.i"

bb.h:                                             ; preds = %bb.g
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.010.i.i.i.i.i
  store ptr %i.bh, ptr %i.bj, align 8, !tbaa !73
  %i.bk = icmp sgt i64 %.0911.i.i.i.i.i, %.09.i.i.i
  br i1 %i.bk, label %bb.g, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_16EHFrameEdgeFixerclERNS3_9LinkGraphEE3$_0EEEvT_T0_SJ_T1_T2_.exit.i.i.i", !llvm.loop !867

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_16EHFrameEdgeFixerclERNS3_9LinkGraphEE3$_0EEEvT_T0_SJ_T1_T2_.exit.i.i.i": ; preds = %bb.h, %bb.g, %bb.f
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.f ], [ %.010.i.i.i.i.i, %bb.g ], [ %.0911.i.i.i.i.i, %bb.h ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.i.i.i
  store ptr %i.ap, ptr %i.bl, align 8, !tbaa !73
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.bm = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16EHFrameEdgeFixerclERNS3_9LinkGraphEE3$_0EEEvT_SI_RT0_.exit.i.i", label %.split.i.i.i, !llvm.loop !868

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16EHFrameEdgeFixerclERNS3_9LinkGraphEE3$_0EEEvT_SI_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_16EHFrameEdgeFixerclERNS3_9LinkGraphEE3$_0EEEvT_T0_SJ_T1_T2_.exit.us.i.i.i", %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_16EHFrameEdgeFixerclERNS3_9LinkGraphEE3$_0EEEvT_T0_SJ_T1_T2_.exit.i.i.i"
  %3 = icmp sgt i64 %.fr.i.i.i28.lcssa, 8
  br i1 %3, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16EHFrameEdgeFixerclERNS3_9LinkGraphEE3$_0EEEvT_SI_SI_T0_.exit"

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16EHFrameEdgeFixerclERNS3_9LinkGraphEE3$_0EEEvT_SI_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16EHFrameEdgeFixerclERNS3_9LinkGraphEE3$_0EEEvT_SI_SI_RT0_.exit.i.i"
  %.sroa.0.03.i.i = phi ptr [ %i.bn, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16EHFrameEdgeFixerclERNS3_9LinkGraphEE3$_0EEEvT_SI_SI_RT0_.exit.i.i" ], [ %storemerge26.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16EHFrameEdgeFixerclERNS3_9LinkGraphEE3$_0EEEvT_SI_RT0_.exit.i.i" ]
  %i.bn = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !73 ; 2 uses
  %i.bp = load ptr, ptr %.fr29, align 8, !tbaa !73
  store ptr %i.bp, ptr %i.bn, align 8, !tbaa !73
  %i.bq = ptrtoint ptr %i.bn to i64
  %i.br = sub i64 %i.bq, %i.a                     ; 3 uses
  %i.bs = ashr exact i64 %i.br, 3                 ; 3 uses
  %i.bt = add nsw i64 %i.bs, -1
  %i.bu = lshr i64 %i.bt, 1
  %i.bv = icmp sgt i64 %i.bs, 2
  br i1 %i.bv, label %.lr.ph.i.i.i19.i, label %._crit_edge.i.i.i10.i

.lr.ph.i.i.i19.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i19.i
  %.034.i.i.i20.i = phi i64 [ %spec.select.i.i.i23.i, %.lr.ph.i.i.i19.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.bw = shl i64 %.034.i.i.i20.i, 1              ; 2 uses
  %i.bx = add i64 %i.bw, 2                        ; 2 uses
  %i.by = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.bx
  %i.bz = or disjoint i64 %i.bw, 1                ; 2 uses
  %i.ca = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.bz
  %i.cb = load ptr, ptr %i.by, align 8, !tbaa !73
  %i.cc = load ptr, ptr %i.ca, align 8, !tbaa !73
  %.val.i.i.i.i21.i = load i64, ptr %i.cb, align 8, !tbaa !23
  %.val1.i.i.i.i22.i = load i64, ptr %i.cc, align 8, !tbaa !23
  %i.cd = icmp ult i64 %.val.i.i.i.i21.i, %.val1.i.i.i.i22.i
  %spec.select.i.i.i23.i = select i1 %i.cd, i64 %i.bz, i64 %i.bx ; 4 uses
  %i.ce = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %spec.select.i.i.i23.i
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !73
  %i.cg = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.034.i.i.i20.i
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !73
  %i.ch = icmp slt i64 %spec.select.i.i.i23.i, %i.bu
  br i1 %i.ch, label %.lr.ph.i.i.i19.i, label %._crit_edge.i.i.i10.i, !llvm.loop !866

._crit_edge.i.i.i10.i:                            ; preds = %.lr.ph.i.i.i19.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i11.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i23.i, %.lr.ph.i.i.i19.i ] ; 5 uses
  %i.ci = and i64 %i.br, 8
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i10.i
  %i.ck = add nsw i64 %i.bs, -2
  %i.cl = ashr exact i64 %i.ck, 1
  %i.cm = icmp eq i64 %.0.lcssa.i.i.i11.i, %i.cl
  br i1 %i.cm, label %.thread.i.i.i, label %bb.j

.thread.i.i.i:                                    ; preds = %bb.i
  %i.cn = shl nuw nsw i64 %.0.lcssa.i.i.i11.i, 1
  %i.co = or disjoint i64 %i.cn, 1                ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.co
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !73
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.i11.i
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !73
  br label %.lr.ph.i.i.i.i13.i

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i10.i
  %.not.i.i12.i = icmp eq i64 %.0.lcssa.i.i.i11.i, 0
  br i1 %.not.i.i12.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16EHFrameEdgeFixerclERNS3_9LinkGraphEE3$_0EEEvT_SI_SI_RT0_.exit.i.i", label %.lr.ph.i.i.i.i13.i

.lr.ph.i.i.i.i13.i:                               ; preds = %bb.j, %.thread.i.i.i
  %.1.i6.i.i.i = phi i64 [ %i.co, %.thread.i.i.i ], [ %.0.lcssa.i.i.i11.i, %bb.j ]
  %.val.val.i.i.i.i14.i = load i64, ptr %i.bo, align 8, !tbaa !23
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i.i.i.i13.i
  %.010.i.i.i.i15.i = phi i64 [ %.1.i6.i.i.i, %.lr.ph.i.i.i.i13.i ], [ %.0911.i.i78.i.i.i, %bb.l ] ; 3 uses
  %.0911.in.i.i.i.i16.i = add nsw i64 %.010.i.i.i.i15.i, -1
  %.0911.i.i78.i.i.i = lshr i64 %.0911.in.i.i.i.i16.i, 1 ; 3 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0911.i.i78.i.i.i
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !73 ; 2 uses
  %.val.i.i.i.i.i17.i = load i64, ptr %i.ct, align 8, !tbaa !23
  %i.cu = icmp ult i64 %.val.i.i.i.i.i17.i, %.val.val.i.i.i.i14.i
  br i1 %i.cu, label %bb.l, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16EHFrameEdgeFixerclERNS3_9LinkGraphEE3$_0EEEvT_SI_SI_RT0_.exit.i.i"

bb.l:                                             ; preds = %bb.k
  %i.cv = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.010.i.i.i.i15.i
  store ptr %i.ct, ptr %i.cv, align 8, !tbaa !73
  %.not9.i.i.i = icmp eq i64 %.0911.i.i78.i.i.i, 0
  br i1 %.not9.i.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16EHFrameEdgeFixerclERNS3_9LinkGraphEE3$_0EEEvT_SI_SI_RT0_.exit.i.i", label %bb.k, !llvm.loop !867

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16EHFrameEdgeFixerclERNS3_9LinkGraphEE3$_0EEEvT_SI_SI_RT0_.exit.i.i": ; preds = %bb.l, %bb.k, %bb.j
  %.0.lcssa.i.i.i.i18.i = phi i64 [ 0, %bb.j ], [ %.010.i.i.i.i15.i, %bb.k ], [ 0, %bb.l ]
  %i.cw = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.i.i18.i
  store ptr %i.bo, ptr %i.cw, align 8, !tbaa !73
  %i.cx = icmp sgt i64 %i.br, 8
  br i1 %i.cx, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16EHFrameEdgeFixerclERNS3_9LinkGraphEE3$_0EEEvT_SI_SI_T0_.exit", !llvm.loop !869

.lr.ph54:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2653 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %.fr30, %.lr.ph ] ; 3 uses
  %.02752 = phi i64 [ %i.cz, %bb.b ], [ %2, %.lr.ph ]
  %i.cy = phi i64 [ %i.dy, %bb.b ], [ %i.d, %.lr.ph ]
  %i.cz = add nsw i64 %.02752, -1                 ; 3 uses
  %i.da = lshr i64 %i.cy, 1
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.da ; 3 uses
  %i.dc = getelementptr inbounds i8, ptr %storemerge2653, i64 -8 ; 3 uses
  %i.dd = load ptr, ptr %i.f, align 8, !tbaa !73  ; 3 uses
  %i.de = load ptr, ptr %i.db, align 8, !tbaa !73 ; 3 uses
  %.val.i.i.i = load i64, ptr %i.dd, align 8, !tbaa !23 ; 3 uses
  %.val1.i.i.i = load i64, ptr %i.de, align 8, !tbaa !23 ; 3 uses
  %i.df = icmp ult i64 %.val.i.i.i, %.val1.i.i.i
  %i.dg = load ptr, ptr %i.dc, align 8, !tbaa !73 ; 3 uses
  %.val1.i27.i.i = load i64, ptr %i.dg, align 8, !tbaa !23 ; 4 uses
  br i1 %i.df, label %bb.m, label %bb.r

bb.m:                                             ; preds = %.lr.ph54
  %i.dh = icmp ult i64 %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.dh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.di = load ptr, ptr %.fr29, align 8, !tbaa !73
  store ptr %i.de, ptr %.fr29, align 8, !tbaa !73
  store ptr %i.di, ptr %i.db, align 8, !tbaa !73
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16EHFrameEdgeFixerclERNS3_9LinkGraphEE3$_0EEEvT_SI_SI_SI_T0_.exit.i.preheader"

bb.o:                                             ; preds = %bb.m
  %i.dj = icmp ult i64 %.val.i.i.i, %.val1.i27.i.i
  %i.dk = load ptr, ptr %.fr29, align 8, !tbaa !73 ; 2 uses
  br i1 %i.dj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store ptr %i.dg, ptr %.fr29, align 8, !tbaa !73
  store ptr %i.dk, ptr %i.dc, align 8, !tbaa !73
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16EHFrameEdgeFixerclERNS3_9LinkGraphEE3$_0EEEvT_SI_SI_SI_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  store ptr %i.dd, ptr %.fr29, align 8, !tbaa !73
  store ptr %i.dk, ptr %i.f, align 8, !tbaa !73
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16EHFrameEdgeFixerclERNS3_9LinkGraphEE3$_0EEEvT_SI_SI_SI_T0_.exit.i.preheader"

bb.r:                                             ; preds = %.lr.ph54
  %i.dl = icmp ult i64 %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.dl, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dm = load ptr, ptr %.fr29, align 8, !tbaa !73
  store ptr %i.dd, ptr %.fr29, align 8, !tbaa !73
  store ptr %i.dm, ptr %i.f, align 8, !tbaa !73
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16EHFrameEdgeFixerclERNS3_9LinkGraphEE3$_0EEEvT_SI_SI_SI_T0_.exit.i.preheader"

bb.t:                                             ; preds = %bb.r
  %i.dn = icmp ult i64 %.val1.i.i.i, %.val1.i27.i.i
  %i.do = load ptr, ptr %.fr29, align 8, !tbaa !73 ; 2 uses
  br i1 %i.dn, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store ptr %i.dg, ptr %.fr29, align 8, !tbaa !73
  store ptr %i.do, ptr %i.dc, align 8, !tbaa !73
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16EHFrameEdgeFixerclERNS3_9LinkGraphEE3$_0EEEvT_SI_SI_SI_T0_.exit.i.preheader"

bb.v:                                             ; preds = %bb.t
  store ptr %i.de, ptr %.fr29, align 8, !tbaa !73
  store ptr %i.do, ptr %i.db, align 8, !tbaa !73
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16EHFrameEdgeFixerclERNS3_9LinkGraphEE3$_0EEEvT_SI_SI_SI_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16EHFrameEdgeFixerclERNS3_9LinkGraphEE3$_0EEEvT_SI_SI_SI_T0_.exit.i.preheader": ; preds = %bb.v, %bb.u, %bb.s, %bb.q, %bb.p, %bb.n
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16EHFrameEdgeFixerclERNS3_9LinkGraphEE3$_0EEEvT_SI_SI_SI_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16EHFrameEdgeFixerclERNS3_9LinkGraphEE3$_0EEEvT_SI_SI_SI_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16EHFrameEdgeFixerclERNS3_9LinkGraphEE3$_0EEEvT_SI_SI_SI_T0_.exit.i.preheader", %bb.y
  %.sroa.012.0.i.i = phi ptr [ %i.ds, %bb.y ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16EHFrameEdgeFixerclERNS3_9LinkGraphEE3$_0EEEvT_SI_SI_SI_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.y ], [ %storemerge2653, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16EHFrameEdgeFixerclERNS3_9LinkGraphEE3$_0EEEvT_SI_SI_SI_T0_.exit.i.preheader" ]
  %i.dp = load ptr, ptr %.fr29, align 8, !tbaa !73
  %.val1.i.i13.i = load i64, ptr %i.dp, align 8, !tbaa !23 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16EHFrameEdgeFixerclERNS3_9LinkGraphEE3$_0EEEvT_SI_SI_SI_T0_.exit.i"
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16EHFrameEdgeFixerclERNS3_9LinkGraphEE3$_0EEEvT_SI_SI_SI_T0_.exit.i" ], [ %i.ds, %bb.w ] ; 8 uses
  %i.dq = load ptr, ptr %.sroa.012.1.i.i, align 8, !tbaa !73 ; 2 uses
  %.val.i.i14.i = load i64, ptr %i.dq, align 8, !tbaa !23
  %i.dr = icmp ult i64 %.val.i.i14.i, %.val1.i.i13.i
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  br i1 %i.dr, label %bb.w, label %.preheader.i.i, !llvm.loop !870

.preheader.i.i:                                   ; preds = %bb.w, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.w ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 5 uses
  %i.dt = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !73 ; 2 uses
  %.val1.i9.i.i = load i64, ptr %i.dt, align 8, !tbaa !23
  %i.du = icmp ult i64 %.val1.i.i13.i, %.val1.i9.i.i
  br i1 %i.du, label %.preheader.i.i, label %bb.x, !llvm.loop !871

bb.x:                                             ; preds = %.preheader.i.i
  %i.dv = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.dv, label %bb.y, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16EHFrameEdgeFixerclERNS3_9LinkGraphEE3$_0EEET_SI_SI_T0_.exit"

bb.y:                                             ; preds = %bb.x
  store ptr %i.dt, ptr %.sroa.012.1.i.i, align 8, !tbaa !73
  store ptr %i.dq, ptr %.sroa.0.1.i.i, align 8, !tbaa !73
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16EHFrameEdgeFixerclERNS3_9LinkGraphEE3$_0EEEvT_SI_SI_SI_T0_.exit.i", !llvm.loop !872

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16EHFrameEdgeFixerclERNS3_9LinkGraphEE3$_0EEET_SI_SI_T0_.exit": ; preds = %bb.x
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_16EHFrameEdgeFixerclERNS3_9LinkGraphEE3$_0EEEvT_SI_T0_T1_"(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2653, i64 noundef %i.cz)
  %i.dw = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.dx = sub i64 %i.dw, %i.a                     ; 2 uses
  %i.dy = ashr exact i64 %i.dx, 3                 ; 2 uses
  %i.dz = icmp sgt i64 %i.dy, 16
  br i1 %i.dz, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16EHFrameEdgeFixerclERNS3_9LinkGraphEE3$_0EEEvT_SI_SI_T0_.exit", !llvm.loop !865

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16EHFrameEdgeFixerclERNS3_9LinkGraphEE3$_0EEEvT_SI_SI_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16EHFrameEdgeFixerclERNS3_9LinkGraphEE3$_0EEET_SI_SI_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16EHFrameEdgeFixerclERNS3_9LinkGraphEE3$_0EEEvT_SI_SI_RT0_.exit.i.i", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink5BlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16EHFrameEdgeFixerclERNS3_9LinkGraphEE3$_0EEEvT_SI_RT0_.exit.i.i"
  ret void
}

declare void @_ZN4llvm18BinaryStreamReader9readBytesERNS_8ArrayRefIhEEj(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8, ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_7jitlink16EHFrameEdgeFixer10EdgeTargetENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E24lookupOrInsertIntoBucketIjJRNS2_4EdgeEEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(25) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !167, !noalias !877 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !189, !noalias !877 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !166, !noalias !877 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load i32, ptr %1, align 4, !tbaa !56     ; 2 uses
  %i.j = mul i32 %i.i, 37
  %.024.i = and i32 %i.j, %i.h                    ; 3 uses
  %i.k = zext i32 %.024.i to i64                  ; 2 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.k ; 2 uses
  %i.m = lshr i64 %i.k, 5
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !56
  %i.p = and i32 %.024.i, 31
  %i.q = lshr i32 %i.o, %i.p
  %i.r = trunc i32 %i.q to i1
  br i1 %i.r, label %.lr.ph.i, label %.loopexit, !prof !87

bb.c:                                             ; preds = %.lr.ph.i
  %i.s = add nuw i32 %.025.i, 1
  %.0.i = and i32 %i.s, %i.h                      ; 3 uses
  %i.t = zext i32 %.0.i to i64                    ; 2 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !56
  %i.y = and i32 %.0.i, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i, label %.loopexit, !prof !91, !llvm.loop !8

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.u, %bb.c ], [ %i.l, %bb.b ] ; 2 uses
  %.025.i = phi i32 [ %.0.i, %bb.c ], [ %.024.i, %bb.b ]
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !56
  %i.ad = icmp eq i32 %i.i, %i.ac
  br i1 %i.ad, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_7jitlink16EHFrameEdgeFixer10EdgeTargetENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_.exit, label %bb.c, !prof !90

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa30.sink.i.ph = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ], [ %i.u, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !218
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !219
  %i.ag = shl i32 %i.af, 2
  %i.ah = add i32 %i.ag, 4
  %i.ai = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ah, %i.ai
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_7jitlink16EHFrameEdgeFixer10EdgeTargetENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E22findBucketForInsertionIjEEPS9_RKT_SD_.exit, label %bb.d, !prof !90

bb.d:                                             ; preds = %.loopexit
  %i.aj = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_7jitlink16EHFrameEdgeFixer10EdgeTargetENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.aj)
  %i.ak = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_7jitlink16EHFrameEdgeFixer10EdgeTargetENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !218
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !189
  %.pre16 = load ptr, ptr %0, align 8, !tbaa !167
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_7jitlink16EHFrameEdgeFixer10EdgeTargetENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E22findBucketForInsertionIjEEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_7jitlink16EHFrameEdgeFixer10EdgeTargetENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E22findBucketForInsertionIjEEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.al = phi ptr [ %.pre16, %bb.d ], [ %i.b, %.loopexit ]
  %i.am = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.an = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 5 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = sdiv exact i64 %i.aq, 24                ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i32 %i.as, 31
  %i.au = shl nuw i32 1, %i.at
  %i.av = lshr i64 %i.ar, 5
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !56
  %i.ay = or i32 %i.au, %i.ax
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !56
  %i.az = load i32, ptr %i.ae, align 8, !tbaa !219
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.ae, align 8, !tbaa !219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bb = load i32, ptr %1, align 4, !tbaa !56
  store i32 %i.bb, ptr %i.an, align 4, !tbaa !56
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.bd = load ptr, ptr %2, align 8, !tbaa !878
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !196
  %i.be = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !879
  store i64 %i.bg, ptr %i.be, align 8, !tbaa !195
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_7jitlink16EHFrameEdgeFixer10EdgeTargetENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_7jitlink16EHFrameEdgeFixer10EdgeTargetENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_7jitlink16EHFrameEdgeFixer10EdgeTargetENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E22findBucketForInsertionIjEEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.an, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_7jitlink16EHFrameEdgeFixer10EdgeTargetENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E22findBucketForInsertionIjEEPS9_RKT_SD_.exit ], [ %i.ab, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_7jitlink16EHFrameEdgeFixer10EdgeTargetENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E22findBucketForInsertionIjEEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_7jitlink16EHFrameEdgeFixer10EdgeTargetENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !167, !noalias !884 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !189, !noalias !884 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !166, !noalias !884 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i32, ptr %1, align 4, !tbaa !56     ; 2 uses
  %i.i = mul i32 %i.h, 37
  %.024 = and i32 %i.i, %i.g                      ; 3 uses
  %i.j = zext i32 %.024 to i64                    ; 2 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.j ; 2 uses
  %i.l = lshr i64 %i.j, 5
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !56
  %i.o = and i32 %.024, 31
  %i.p = lshr i32 %i.n, %i.o
  %i.q = trunc i32 %i.p to i1
  br i1 %i.q, label %.lr.ph, label %.thread, !prof !87

bb.c:                                             ; preds = %.lr.ph
  %i.r = add nuw i32 %.025, 1
  %.0 = and i32 %i.r, %i.g                        ; 3 uses
  %i.s = zext i32 %.0 to i64                      ; 2 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !56
  %i.x = and i32 %.0, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph, label %.thread, !prof !91, !llvm.loop !8

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.t, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !56
  %i.ac = icmp eq i32 %i.h, %i.ab                 ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !90

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ], [ %i.t, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !218
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_7jitlink16EHFrameEdgeFixer10EdgeTargetENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.51", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !166
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 24                 ; 2 uses
end_hunk_0
