inline.NumInlined: 690
inline.NumDeleted: 333
begin_hunk_0_@_ZNK4absl12lts_2024011616strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS8_SaIS8_EES8_Lb0EEclERKS9_:bb.a
.critedge:                                        ; preds = %_ZN4absl12lts_2024011616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit, %_ZN4absl12lts_2024011616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit.thread
  %i.az = phi i64 [ %i.ag, %_ZN4absl12lts_2024011616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit.thread ], [ %i.ax, %_ZN4absl12lts_2024011616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit ]
  %i.ba = load ptr, ptr %i.w, align 8, !tbaa !163
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.az
  %i.bc = load ptr, ptr %0, align 8, !tbaa !163   ; 2 uses
  %i.bd = ptrtoint ptr %i.ba to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = getelementptr inbounds i8, ptr %i.bc, i64 %i.bf
  invoke void @_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE15_M_range_insertIPZNK4absl12lts_2024011616strings_internal8SplitterINS8_6ByCharENS8_10AllowEmptyES3_E18ConvertToContainerIS5_S3_Lb0EEclERKSD_E8raw_viewEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EET_SO_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.bg, ptr noundef nonnull %3, ptr noundef nonnull %i.bb)
          to label %bb.g unwind label %bb.n, !llvm.loop !187

.loopexit:                                        ; preds = %bb.j
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp:                               ; preds = %bb.m
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %.critedge
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.n, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.z, %bb.i ], [ %i.bh, %bb.n ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.bi = load ptr, ptr %0, align 8, !tbaa !165   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !167
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bi to i64
  %i.bn = sub i64 %i.bl, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bn) #19
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit: ; preds = %bb.o, %bb.p
  resume { ptr, i32 } %.pn.pn
}

declare { i64, ptr } @_ZNK4absl12lts_202401166ByChar4FindESt17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef nonnull align 1 dereferenceable(1), i64, ptr, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE15_M_range_insertIPZNK4absl12lts_2024011616strings_internal8SplitterINS8_6ByCharENS8_10AllowEmptyES3_E18ConvertToContainerIS5_S3_Lb0EEclERKSD_E8raw_viewEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EET_SO_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %2, %3
  br i1 %.not, label %_ZSt4copyIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 5 uses
  %i.b = ptrtoint ptr %2 to i64                   ; 5 uses
  %i.c = sub i64 %i.a, %i.b                       ; 6 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !167
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !188  ; 19 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 6 uses
  %i.k = sub i64 %i.i, %i.j
  %.not54 = icmp ult i64 %i.k, %i.c
  br i1 %.not54, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.m = sub i64 %i.j, %i.l                       ; 6 uses
  %i.n = ashr exact i64 %i.m, 4                   ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewlEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %.idx = sub i64 0, %i.c
  %i.p = getelementptr inbounds i8, ptr %i.h, i64 %.idx ; 2 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i ], [ %i.h, %bb.d ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.p, %bb.d ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.08.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.07.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !189
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16
  %i.s = icmp eq ptr %i.q, %i.h
  br i1 %i.s, label %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !190

_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !188
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.c
  store ptr %i.u, ptr %i.g, align 8, !tbaa !188
  %i.v = ptrtoint ptr %i.p to i64
  %i.w = sub i64 %i.v, %i.l                       ; 3 uses
  %i.x = ashr exact i64 %i.w, 4                   ; 2 uses
  %i.y = icmp sgt i64 %i.x, 1
  br i1 %i.y, label %bb.e, label %bb.f, !prof !159

bb.e:                                             ; preds = %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %i.z = sub nsw i64 0, %i.x
  %i.aa = getelementptr inbounds [16 x i8], ptr %i.h, i64 %i.z
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aa, ptr align 8 %1, i64 %i.w, i1 false)
  br label %_ZSt13move_backwardIPSt17basic_string_viewIcSt11char_traitsIcEES4_ET0_T_S6_S5_.exit

bb.f:                                             ; preds = %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %i.ab = icmp eq i64 %i.w, 16
  br i1 %i.ab, label %bb.g, label %_ZSt13move_backwardIPSt17basic_string_viewIcSt11char_traitsIcEES4_ET0_T_S6_S5_.exit

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds i8, ptr %i.h, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !189
  br label %_ZSt13move_backwardIPSt17basic_string_viewIcSt11char_traitsIcEES4_ET0_T_S6_S5_.exit

_ZSt13move_backwardIPSt17basic_string_viewIcSt11char_traitsIcEES4_ET0_T_S6_S5_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.ad = icmp sgt i64 %i.d, 0
  br i1 %i.ad, label %.lr.ph.i.i.i.i.i55.preheader, label %_ZSt4copyIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit

.lr.ph.i.i.i.i.i55.preheader:                     ; preds = %_ZSt13move_backwardIPSt17basic_string_viewIcSt11char_traitsIcEES4_ET0_T_S6_S5_.exit
  %min.iters.check185 = icmp ult i64 %i.d, 16
  br i1 %min.iters.check185, label %.lr.ph.i.i.i.i.i55.preheader241, label %vector.memcheck170

vector.memcheck170:                               ; preds = %.lr.ph.i.i.i.i.i55.preheader
  %i.ae = add i64 %i.c, -8                        ; 2 uses
  %scevgep171 = getelementptr i8, ptr %1, i64 %i.ae
  %scevgep172 = getelementptr i8, ptr %2, i64 8
  %scevgep174 = getelementptr i8, ptr %1, i64 8
  %scevgep175 = getelementptr i8, ptr %1, i64 %i.c
  %scevgep176 = getelementptr i8, ptr %2, i64 %i.ae
  %bound0177 = icmp ult ptr %1, %3
  %bound1178 = icmp ult ptr %scevgep172, %scevgep171
  %found.conflict179 = and i1 %bound0177, %bound1178
  %bound0180 = icmp ult ptr %scevgep174, %scevgep176
  %bound1181 = icmp ult ptr %2, %scevgep175
  %found.conflict182 = and i1 %bound0180, %bound1181
  %conflict.rdx183 = or i1 %found.conflict179, %found.conflict182
  br i1 %conflict.rdx183, label %.lr.ph.i.i.i.i.i55.preheader241, label %vector.ph186

vector.ph186:                                     ; preds = %vector.memcheck170
  %n.vec188 = and i64 %i.d, 9223372036854775800   ; 3 uses
  %i.af = shl i64 %n.vec188, 4                    ; 2 uses
  %i.ag = getelementptr i8, ptr %2, i64 %i.af
  %i.ah = getelementptr i8, ptr %1, i64 %i.af
  %i.ai = and i64 %i.d, 7
  br label %vector.body189

vector.body189:                                   ; preds = %vector.body189, %vector.ph186
  %index190 = phi i64 [ 0, %vector.ph186 ], [ %index.next203, %vector.body189 ] ; 2 uses
  %i.aj = shl i64 %index190, 4                    ; 3 uses
  %i.ak = or disjoint i64 %i.aj, 64               ; 2 uses
  %next.gep191 = getelementptr i8, ptr %2, i64 %i.aj
  %next.gep192 = getelementptr i8, ptr %2, i64 %i.ak
  %next.gep193 = getelementptr i8, ptr %1, i64 %i.aj
  %next.gep194 = getelementptr i8, ptr %1, i64 %i.ak
  %wide.vec195 = load <8 x ptr>, ptr %next.gep191, align 8, !tbaa !7
  %wide.vec198 = load <8 x ptr>, ptr %next.gep192, align 8, !tbaa !7
  %interleaved.vec201 = shufflevector <8 x ptr> %wide.vec195, <8 x ptr> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  store <8 x ptr> %interleaved.vec201, ptr %next.gep193, align 8, !tbaa !7
  %interleaved.vec202 = shufflevector <8 x ptr> %wide.vec198, <8 x ptr> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  store <8 x ptr> %interleaved.vec202, ptr %next.gep194, align 8, !tbaa !7
  %index.next203 = add nuw i64 %index190, 8       ; 2 uses
  %i.al = icmp eq i64 %index.next203, %n.vec188
  br i1 %i.al, label %middle.block204, label %vector.body189, !llvm.loop !191

middle.block204:                                  ; preds = %vector.body189
  %cmp.n205 = icmp eq i64 %i.d, %n.vec188
  br i1 %cmp.n205, label %_ZSt4copyIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit, label %.lr.ph.i.i.i.i.i55.preheader241

.lr.ph.i.i.i.i.i55.preheader241:                  ; preds = %vector.memcheck170, %.lr.ph.i.i.i.i.i55.preheader, %middle.block204
  %.012.i.i.i.i.i.ph = phi ptr [ %2, %vector.memcheck170 ], [ %2, %.lr.ph.i.i.i.i.i55.preheader ], [ %i.ag, %middle.block204 ]
  %.0811.i.i.i.i.i.ph = phi ptr [ %1, %vector.memcheck170 ], [ %1, %.lr.ph.i.i.i.i.i55.preheader ], [ %i.ah, %middle.block204 ]
  %.0910.i.i.i.i.i.ph = phi i64 [ %i.d, %vector.memcheck170 ], [ %i.d, %.lr.ph.i.i.i.i.i55.preheader ], [ %i.ai, %middle.block204 ]
  br label %.lr.ph.i.i.i.i.i55

.lr.ph.i.i.i.i.i55:                               ; preds = %.lr.ph.i.i.i.i.i55.preheader241, %.lr.ph.i.i.i.i.i55
  %.012.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i55 ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i55.preheader241 ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i55 ], [ %.0811.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i55.preheader241 ] ; 3 uses
  %.0910.i.i.i.i.i = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i55 ], [ %.0910.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i55.preheader241 ] ; 2 uses
  %i.am = load ptr, ptr %.012.i.i.i.i.i, align 8, !tbaa !183
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !185
  store i64 %i.ao, ptr %.0811.i.i.i.i.i, align 8, !tbaa !42
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  store ptr %i.am, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !95
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  %i.ar = add nsw i64 %.0910.i.i.i.i.i, -1
  %i.as = icmp samesign ugt i64 %.0910.i.i.i.i.i, 1
  br i1 %i.as, label %.lr.ph.i.i.i.i.i55, label %_ZSt4copyIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit, !llvm.loop !194

_ZSt9__advanceIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewlEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.at = getelementptr inbounds i8, ptr %2, i64 %i.m ; 7 uses
  %.not9.i.i.i.i = icmp eq ptr %i.at, %3
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt9__advanceIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewlEvRT_T0_St26random_access_iterator_tag.exit
  %i.au = add i64 %i.a, %i.l
  %i.av = add i64 %i.au, -16
  %4 = add i64 %i.j, %i.b
  %5 = sub i64 %i.av, %4                          ; 2 uses
  %i.aw = lshr i64 %5, 4
  %i.ax = add nuw nsw i64 %i.aw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %5, 432
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader244, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ay = add i64 %i.a, %i.l
  %i.az = add i64 %i.ay, -16
  %i.ba = add i64 %i.j, %i.b
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = and i64 %i.bb, -16                      ; 2 uses
  %i.bd = getelementptr i8, ptr %i.h, i64 %i.bc
  %scevgep = getelementptr i8, ptr %i.bd, i64 16
  %i.be = add i64 %i.bc, %i.j
  %i.bf = add i64 %i.be, 16
  %i.bg = sub i64 %i.bf, %i.l
  %scevgep122 = getelementptr i8, ptr %2, i64 %i.bg
  %bound0 = icmp ult ptr %i.h, %scevgep122
  %bound1 = icmp ult ptr %i.at, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader244, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ax, 2305843009213693944     ; 3 uses
  %i.bh = shl i64 %n.vec, 4                       ; 2 uses
  %i.bi = getelementptr i8, ptr %i.h, i64 %i.bh
  %i.bj = getelementptr i8, ptr %i.at, i64 %i.bh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bk = shl i64 %index, 4                       ; 3 uses
  %i.bl = or disjoint i64 %i.bk, 64               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.bk
  %next.gep123 = getelementptr i8, ptr %i.h, i64 %i.bl
  %next.gep124 = getelementptr i8, ptr %i.at, i64 %i.bk
  %next.gep125 = getelementptr i8, ptr %i.at, i64 %i.bl
  %wide.vec = load <8 x ptr>, ptr %next.gep124, align 8, !tbaa !7, !alias.scope !195
  %wide.vec127 = load <8 x ptr>, ptr %next.gep125, align 8, !tbaa !7, !alias.scope !195
  %interleaved.vec = shufflevector <8 x ptr> %wide.vec, <8 x ptr> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  store <8 x ptr> %interleaved.vec, ptr %next.gep, align 8, !alias.scope !198, !noalias !195
  %interleaved.vec130 = shufflevector <8 x ptr> %wide.vec127, <8 x ptr> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  store <8 x ptr> %interleaved.vec130, ptr %next.gep123, align 8, !alias.scope !198, !noalias !195
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !200

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ax, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i.preheader244

.lr.ph.i.i.i.i.preheader244:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.011.i.i.i.i.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i.i.i.i.preheader ], [ %i.bi, %middle.block ]
  %.0810.i.i.i.i.ph = phi ptr [ %i.at, %vector.memcheck ], [ %i.at, %.lr.ph.i.i.i.i.preheader ], [ %i.bj, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader244, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader244 ] ; 3 uses
  %.0810.i.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i.i ], [ %.0810.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader244 ] ; 3 uses
  %i.bn = load ptr, ptr %.0810.i.i.i.i, align 8, !tbaa !183
  %i.bo = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !185
  store i64 %i.bp, ptr %.011.i.i.i.i, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  store ptr %i.bn, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.br, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !201

_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i, %middle.block
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !188
  br label %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit: ; preds = %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit.loopexit, %_ZSt9__advanceIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewlEvRT_T0_St26random_access_iterator_tag.exit
  %i.bt = phi ptr [ %.pre, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit.loopexit ], [ %i.h, %_ZSt9__advanceIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewlEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.bu = sub nuw nsw i64 %i.d, %i.n
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bt, i64 %i.bu ; 3 uses
  store ptr %i.bv, ptr %i.g, align 8, !tbaa !188
  %i.bw = icmp eq ptr %1, %i.h
  br i1 %i.bw, label %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit60, label %.lr.ph.i.i.i.i.i56

.lr.ph.i.i.i.i.i56:                               ; preds = %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit, %.lr.ph.i.i.i.i.i56
  %.08.i.i.i.i.i57 = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i56 ], [ %i.bv, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i58 = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i56 ], [ %1, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.08.i.i.i.i.i57, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.07.i.i.i.i.i58, i64 16, i1 false), !tbaa.struct !189
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i58, i64 16 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i57, i64 16
  %i.bz = icmp eq ptr %i.bx, %i.h
  br i1 %i.bz, label %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit60.loopexit, label %.lr.ph.i.i.i.i.i56, !llvm.loop !190

_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit60.loopexit: ; preds = %.lr.ph.i.i.i.i.i56
  %.pre101 = load ptr, ptr %i.g, align 8, !tbaa !188
  br label %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit60

_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit60: ; preds = %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit60.loopexit, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit
  %i.ca = phi ptr [ %.pre101, %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit60.loopexit ], [ %i.bv, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.m
  store ptr %i.cb, ptr %i.g, align 8, !tbaa !188
  %i.cc = ashr exact i64 %i.m, 4                  ; 7 uses
  %i.cd = icmp sgt i64 %i.cc, 0
  br i1 %i.cd, label %.lr.ph.i.i.i.i.i62.preheader, label %_ZSt4copyIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit

.lr.ph.i.i.i.i.i62.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit60
  %min.iters.check146 = icmp ult i64 %i.cc, 16
  br i1 %min.iters.check146, label %.lr.ph.i.i.i.i.i62.preheader242, label %vector.memcheck132

vector.memcheck132:                               ; preds = %.lr.ph.i.i.i.i.i62.preheader
  %i.ce = add i64 %i.m, -8                        ; 2 uses
  %scevgep133 = getelementptr i8, ptr %1, i64 %i.ce
  %scevgep134 = getelementptr i8, ptr %2, i64 8
  %scevgep135 = getelementptr i8, ptr %2, i64 %i.m
  %scevgep136 = getelementptr i8, ptr %1, i64 8
  %scevgep138 = getelementptr i8, ptr %2, i64 %i.ce
  %bound0139 = icmp ult ptr %1, %scevgep135
  %bound1140 = icmp ult ptr %scevgep134, %scevgep133
  %found.conflict141 = and i1 %bound0139, %bound1140
  %bound0142 = icmp ult ptr %scevgep136, %scevgep138
  %bound1143 = icmp ult ptr %2, %i.h
  %found.conflict144 = and i1 %bound0142, %bound1143
  %conflict.rdx = or i1 %found.conflict141, %found.conflict144
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i.i62.preheader242, label %vector.ph147

vector.ph147:                                     ; preds = %vector.memcheck132
  %n.vec149 = and i64 %i.cc, 9223372036854775800  ; 3 uses
  %i.cf = shl i64 %n.vec149, 4                    ; 2 uses
  %i.cg = getelementptr i8, ptr %2, i64 %i.cf
  %i.ch = getelementptr i8, ptr %1, i64 %i.cf
  %i.ci = and i64 %i.cc, 7
  br label %vector.body150

vector.body150:                                   ; preds = %vector.body150, %vector.ph147
  %index151 = phi i64 [ 0, %vector.ph147 ], [ %index.next164, %vector.body150 ] ; 2 uses
  %i.cj = shl i64 %index151, 4                    ; 3 uses
  %i.ck = or disjoint i64 %i.cj, 64               ; 2 uses
  %next.gep152 = getelementptr i8, ptr %2, i64 %i.cj
  %next.gep153 = getelementptr i8, ptr %2, i64 %i.ck
  %next.gep154 = getelementptr i8, ptr %1, i64 %i.cj
  %next.gep155 = getelementptr i8, ptr %1, i64 %i.ck
  %wide.vec156 = load <8 x ptr>, ptr %next.gep152, align 8, !tbaa !7
  %wide.vec159 = load <8 x ptr>, ptr %next.gep153, align 8, !tbaa !7
  %interleaved.vec162 = shufflevector <8 x ptr> %wide.vec156, <8 x ptr> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  store <8 x ptr> %interleaved.vec162, ptr %next.gep154, align 8, !tbaa !7
  %interleaved.vec163 = shufflevector <8 x ptr> %wide.vec159, <8 x ptr> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  store <8 x ptr> %interleaved.vec163, ptr %next.gep155, align 8, !tbaa !7
  %index.next164 = add nuw i64 %index151, 8       ; 2 uses
  %i.cl = icmp eq i64 %index.next164, %n.vec149
  br i1 %i.cl, label %middle.block165, label %vector.body150, !llvm.loop !202

middle.block165:                                  ; preds = %vector.body150
  %cmp.n166 = icmp eq i64 %i.cc, %n.vec149
  br i1 %cmp.n166, label %_ZSt4copyIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit, label %.lr.ph.i.i.i.i.i62.preheader242

.lr.ph.i.i.i.i.i62.preheader242:                  ; preds = %vector.memcheck132, %.lr.ph.i.i.i.i.i62.preheader, %middle.block165
  %.012.i.i.i.i.i63.ph = phi ptr [ %2, %vector.memcheck132 ], [ %2, %.lr.ph.i.i.i.i.i62.preheader ], [ %i.cg, %middle.block165 ]
  %.0811.i.i.i.i.i64.ph = phi ptr [ %1, %vector.memcheck132 ], [ %1, %.lr.ph.i.i.i.i.i62.preheader ], [ %i.ch, %middle.block165 ]
  %.0910.i.i.i.i.i65.ph = phi i64 [ %i.cc, %vector.memcheck132 ], [ %i.cc, %.lr.ph.i.i.i.i.i62.preheader ], [ %i.ci, %middle.block165 ]
  br label %.lr.ph.i.i.i.i.i62

.lr.ph.i.i.i.i.i62:                               ; preds = %.lr.ph.i.i.i.i.i62.preheader242, %.lr.ph.i.i.i.i.i62
  %.012.i.i.i.i.i63 = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i62 ], [ %.012.i.i.i.i.i63.ph, %.lr.ph.i.i.i.i.i62.preheader242 ] ; 3 uses
  %.0811.i.i.i.i.i64 = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i62 ], [ %.0811.i.i.i.i.i64.ph, %.lr.ph.i.i.i.i.i62.preheader242 ] ; 3 uses
  %.0910.i.i.i.i.i65 = phi i64 [ %i.cr, %.lr.ph.i.i.i.i.i62 ], [ %.0910.i.i.i.i.i65.ph, %.lr.ph.i.i.i.i.i62.preheader242 ] ; 2 uses
  %i.cm = load ptr, ptr %.012.i.i.i.i.i63, align 8, !tbaa !183
  %i.cn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i63, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !185
  store i64 %i.co, ptr %.0811.i.i.i.i.i64, align 8, !tbaa !42
  %.sroa.4.0..sroa_idx.i.i.i.i.i66 = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i64, i64 8
  store ptr %i.cm, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i66, align 8, !tbaa !95
  %i.cp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i63, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i64, i64 16
  %i.cr = add nsw i64 %.0910.i.i.i.i.i65, -1
  %i.cs = icmp samesign ugt i64 %.0910.i.i.i.i.i65, 1
  br i1 %i.cs, label %.lr.ph.i.i.i.i.i62, label %_ZSt4copyIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit, !llvm.loop !203

bb.h:                                             ; preds = %bb.b
  %i.ct = load ptr, ptr %0, align 8, !tbaa !165   ; 5 uses
  %i.cu = ptrtoint ptr %i.ct to i64               ; 2 uses
  %i.cv = sub i64 %i.j, %i.cu
  %i.cw = ashr exact i64 %i.cv, 4                 ; 4 uses
  %i.cx = sub nsw i64 576460752303423487, %i.cw
  %i.cy = icmp ult i64 %i.cx, %i.d
  br i1 %i.cy, label %bb.i, label %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #20
  unreachable

_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.h
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.cw, i64 %i.d)
  %i.cz = add nsw i64 %.sroa.speculated.i, %i.cw  ; 2 uses
  %i.da = icmp ult i64 %i.cz, %i.cw
  %i.db = tail call i64 @llvm.umin.i64(i64 %i.cz, i64 576460752303423487)
  %i.dc = select i1 %i.da, i64 576460752303423487, i64 %i.db ; 3 uses
  %.not.i = icmp eq i64 %i.dc, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit, label %bb.j

bb.j:                                             ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit
  %i.dd = shl nuw nsw i64 %i.dc, 4
  %i.de = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dd) #21
  br label %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit, %bb.j
  %i.df = phi ptr [ %i.de, %bb.j ], [ null, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %i.dg = icmp eq ptr %i.ct, %1
  br i1 %i.dg, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i68

.lr.ph.i.i.i.i.i68:                               ; preds = %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit, %.lr.ph.i.i.i.i.i68
  %.08.i.i.i.i.i69 = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i68 ], [ %i.df, %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i70 = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i68 ], [ %i.ct, %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.08.i.i.i.i.i69, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.07.i.i.i.i.i70, i64 16, i1 false), !tbaa.struct !189
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i70, i64 16 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i69, i64 16 ; 2 uses
  %i.dj = icmp eq ptr %i.dh, %1
  br i1 %i.dj, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i68, !llvm.loop !190

_ZSt34__uninitialized_move_if_noexcept_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i68, %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit
  %.0.lcssa.i.i.i.i.i71 = phi ptr [ %i.df, %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit ], [ %i.di, %.lr.ph.i.i.i.i.i68 ] ; 7 uses
  %6 = add i64 %i.a, -16
  %7 = sub i64 %6, %i.b                           ; 2 uses
  %i.dk = lshr i64 %7, 4
  %i.dl = add nuw nsw i64 %i.dk, 1                ; 2 uses
  %min.iters.check216 = icmp ult i64 %7, 240
  br i1 %min.iters.check216, label %.lr.ph.i.i.i.i73.preheader, label %vector.memcheck209

vector.memcheck209:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %i.dm = add i64 %i.a, -16
  %i.dn = sub i64 %i.dm, %i.b
  %i.do = and i64 %i.dn, -16
  %i.dp = add i64 %i.do, 16                       ; 2 uses
  %scevgep210 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i71, i64 %i.dp
  %scevgep211 = getelementptr i8, ptr %2, i64 %i.dp
  %bound0212 = icmp ult ptr %.0.lcssa.i.i.i.i.i71, %scevgep211
  %bound1213 = icmp ult ptr %2, %scevgep210
  %found.conflict214 = and i1 %bound0212, %bound1213
  br i1 %found.conflict214, label %.lr.ph.i.i.i.i73.preheader, label %vector.ph217

vector.ph217:                                     ; preds = %vector.memcheck209
  %n.vec219 = and i64 %i.dl, 2305843009213693944  ; 3 uses
  %i.dq = shl i64 %n.vec219, 4                    ; 2 uses
  %i.dr = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i71, i64 %i.dq ; 2 uses
  %i.ds = getelementptr i8, ptr %2, i64 %i.dq
  br label %vector.body220

vector.body220:                                   ; preds = %vector.body220, %vector.ph217
  %index221 = phi i64 [ 0, %vector.ph217 ], [ %index.next234, %vector.body220 ] ; 2 uses
  %i.dt = shl i64 %index221, 4                    ; 3 uses
  %i.du = or disjoint i64 %i.dt, 64               ; 2 uses
  %next.gep222 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i71, i64 %i.dt
  %next.gep223 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i71, i64 %i.du
  %next.gep224 = getelementptr i8, ptr %2, i64 %i.dt
  %next.gep225 = getelementptr i8, ptr %2, i64 %i.du
  %wide.vec226 = load <8 x ptr>, ptr %next.gep224, align 8, !tbaa !7, !alias.scope !204
  %wide.vec229 = load <8 x ptr>, ptr %next.gep225, align 8, !tbaa !7, !alias.scope !204
  %interleaved.vec232 = shufflevector <8 x ptr> %wide.vec226, <8 x ptr> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  store <8 x ptr> %interleaved.vec232, ptr %next.gep222, align 8, !alias.scope !207, !noalias !204
  %interleaved.vec233 = shufflevector <8 x ptr> %wide.vec229, <8 x ptr> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  store <8 x ptr> %interleaved.vec233, ptr %next.gep223, align 8, !alias.scope !207, !noalias !204
  %index.next234 = add nuw i64 %index221, 8       ; 2 uses
  %i.dv = icmp eq i64 %index.next234, %n.vec219
  br i1 %i.dv, label %middle.block235, label %vector.body220, !llvm.loop !209

middle.block235:                                  ; preds = %vector.body220
  %cmp.n236 = icmp eq i64 %i.dl, %n.vec219
  br i1 %cmp.n236, label %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit78, label %.lr.ph.i.i.i.i73.preheader

.lr.ph.i.i.i.i73.preheader:                       ; preds = %vector.memcheck209, %_ZSt34__uninitialized_move_if_noexcept_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, %middle.block235
  %.011.i.i.i.i74.ph = phi ptr [ %.0.lcssa.i.i.i.i.i71, %vector.memcheck209 ], [ %.0.lcssa.i.i.i.i.i71, %_ZSt34__uninitialized_move_if_noexcept_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit ], [ %i.dr, %middle.block235 ]
  %.0810.i.i.i.i75.ph = phi ptr [ %2, %vector.memcheck209 ], [ %2, %_ZSt34__uninitialized_move_if_noexcept_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit ], [ %i.ds, %middle.block235 ]
  br label %.lr.ph.i.i.i.i73

.lr.ph.i.i.i.i73:                                 ; preds = %.lr.ph.i.i.i.i73.preheader, %.lr.ph.i.i.i.i73
  %.011.i.i.i.i74 = phi ptr [ %i.eb, %.lr.ph.i.i.i.i73 ], [ %.011.i.i.i.i74.ph, %.lr.ph.i.i.i.i73.preheader ] ; 3 uses
  %.0810.i.i.i.i75 = phi ptr [ %i.ea, %.lr.ph.i.i.i.i73 ], [ %.0810.i.i.i.i75.ph, %.lr.ph.i.i.i.i73.preheader ] ; 3 uses
  %i.dw = load ptr, ptr %.0810.i.i.i.i75, align 8, !tbaa !183
  %i.dx = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i75, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !185
  store i64 %i.dy, ptr %.011.i.i.i.i74, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i74, i64 8
  store ptr %i.dw, ptr %i.dz, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i75, i64 16 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i74, i64 16 ; 2 uses
  %.not.i.i.i.i76 = icmp eq ptr %i.ea, %3
  br i1 %.not.i.i.i.i76, label %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit78, label %.lr.ph.i.i.i.i73, !llvm.loop !210

_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit78: ; preds = %.lr.ph.i.i.i.i73, %middle.block235
  %.lcssa120 = phi ptr [ %i.dr, %middle.block235 ], [ %i.eb, %.lr.ph.i.i.i.i73 ] ; 2 uses
  %i.ec = icmp eq ptr %1, %i.h
  br i1 %i.ec, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit83, label %.lr.ph.i.i.i.i.i79

.lr.ph.i.i.i.i.i79:                               ; preds = %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit78, %.lr.ph.i.i.i.i.i79
  %.08.i.i.i.i.i80 = phi ptr [ %i.ee, %.lr.ph.i.i.i.i.i79 ], [ %.lcssa120, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit78 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i81 = phi ptr [ %i.ed, %.lr.ph.i.i.i.i.i79 ], [ %1, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit78 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.08.i.i.i.i.i80, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.07.i.i.i.i.i81, i64 16, i1 false), !tbaa.struct !189
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i81, i64 16 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i80, i64 16 ; 2 uses
  %i.ef = icmp eq ptr %i.ed, %i.h
  br i1 %i.ef, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit83, label %.lr.ph.i.i.i.i.i79, !llvm.loop !190

_ZSt34__uninitialized_move_if_noexcept_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit83: ; preds = %.lr.ph.i.i.i.i.i79, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit78
  %.0.lcssa.i.i.i.i.i82 = phi ptr [ %.lcssa120, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit78 ], [ %i.ee, %.lr.ph.i.i.i.i.i79 ]
  %.not.i84 = icmp eq ptr %i.ct, null
  br i1 %.not.i84, label %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit83
  %i.eg = load ptr, ptr %i.e, align 8, !tbaa !167
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = sub i64 %i.eh, %i.cu
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.ei) #19
  br label %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit83, %bb.k
  store ptr %i.df, ptr %0, align 8, !tbaa !165
  store ptr %.0.lcssa.i.i.i.i.i82, ptr %i.g, align 8, !tbaa !188
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %i.df, i64 %i.dc
  store ptr %i.ej, ptr %i.e, align 8, !tbaa !167
  br label %_ZSt4copyIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit

_ZSt4copyIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit: ; preds = %.lr.ph.i.i.i.i.i62, %.lr.ph.i.i.i.i.i55, %middle.block165, %middle.block204, %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit60, %_ZSt13move_backwardIPSt17basic_string_viewIcSt11char_traitsIcEES4_ET0_T_S6_S5_.exit, %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_m.exit, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS5_SaIS5_EEEEPNSt7__cxx1112basic_stringIcS4_SaIcEEEET0_T_SI_SH_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.g
  %.021 = phi ptr [ %i.o, %bb.g ], [ %2, %bb.a ]  ; 6 uses
  %.sroa.011.020 = phi ptr [ %i.n, %bb.g ], [ %0, %bb.a ] ; 3 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %.sroa.011.020, align 8, !tbaa !42 ; 9 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.011.020, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !95 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.021, i64 16 ; 3 uses
  store ptr %i.b, ptr %.021, align 8, !tbaa !101
  %i.c = icmp eq ptr %.sroa.2.0.copyload.i.i, null
  %i.d = icmp ne i64 %.sroa.0.0.copyload.i.i, 0
  %or.cond.i.i.i.i = and i1 %i.d, %i.c
  br i1 %or.cond.i.i.i.i, label %.noexc.i, label %bb.b

.noexc.i:                                         ; preds = %.lr.ph
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.23) #20
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.b:                                             ; preds = %.lr.ph
  %i.e = icmp ugt i64 %.sroa.0.0.copyload.i.i, 15
  br i1 %i.e, label %bb.c, label %._crit_edge.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.f = icmp slt i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %i.f, label %.noexc.i.i.i.i, label %bb.d

.noexc.i.i.i.i:                                   ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #20
          to label %.noexc8 unwind label %.loopexit.split-lp

.noexc8:                                          ; preds = %.noexc.i.i.i.i
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.g = add nuw i64 %.sroa.0.0.copyload.i.i, 1   ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %.noexc9.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, !prof !143

.noexc9.i.i.i.i:                                  ; preds = %bb.d
  invoke void @_ZSt17__throw_bad_allocv() #20
          to label %.noexc9 unwind label %.loopexit.split-lp

.noexc9:                                          ; preds = %.noexc9.i.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i: ; preds = %bb.d
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #21
          to label %.noexc10 unwind label %.loopexit ; 2 uses

.noexc10:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i
  store ptr %i.i, ptr %.021, align 8, !tbaa !90
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.b, align 8, !tbaa !7
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc10, %bb.b
  %i.j = phi ptr [ %i.i, %.noexc10 ], [ %i.b, %bb.b ] ; 3 uses
  switch i64 %.sroa.0.0.copyload.i.i, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.k = load i8, ptr %.sroa.2.0.copyload.i.i, align 1, !tbaa !7
  store i8 %i.k, ptr %i.j, align 1, !tbaa !7
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %.sroa.2.0.copyload.i.i, i64 %.sroa.0.0.copyload.i.i, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.021, i64 8
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.l, align 8, !tbaa !81
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.0.0.copyload.i.i
  store i8 0, ptr %i.m, align 1, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.011.020, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.021, i64 32 ; 2 uses
  %i.p = icmp eq ptr %i.n, %1
  br i1 %i.p, label %._crit_edge, label %.lr.ph, !llvm.loop !211

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

.loopexit.split-lp:                               ; preds = %.noexc.i, %.noexc.i.i.i.i, %.noexc9.i.i.i.i
end_hunk_0
