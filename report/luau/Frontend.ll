Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/Frontend?download=true
inline.NumInlined: 11237
inline.NumDeleted: 5660
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4Luau10HotCommentESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !409  ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !408    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !213
  %i.i = load ptr, ptr %0, align 8, !tbaa !408    ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 4 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv exact i64 %i.f, 56
  %i.o = tail call noundef ptr @_ZNSt6vectorIN4Luau10HotCommentESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.n, ptr %i.c, ptr %i.b) ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !408    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !409  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4Luau10HotCommentEEvT_S3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %_ZSt8_DestroyIN4Luau10HotCommentEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.y, %_ZSt8_DestroyIN4Luau10HotCommentEEvPT_.exit.i.i ], [ %i.p, %bb.c ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !141  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZSt8_DestroyIN4Luau10HotCommentEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.w = load i64, ptr %i.u, align 8, !tbaa !220
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #36
  br label %_ZSt8_DestroyIN4Luau10HotCommentEEvPT_.exit.i.i

_ZSt8_DestroyIN4Luau10HotCommentEEvPT_.exit.i.i:  ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 56 ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, %i.r
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4Luau10HotCommentEEvT_S3_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !14

_ZSt8_DestroyIPN4Luau10HotCommentEEvT_S3_.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN4Luau10HotCommentEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !408
  br label %_ZSt8_DestroyIPN4Luau10HotCommentEEvT_S3_.exit

_ZSt8_DestroyIPN4Luau10HotCommentEEvT_S3_.exit:   ; preds = %_ZSt8_DestroyIPN4Luau10HotCommentEEvT_S3_.exitthread-pre-split, %bb.c
  %i.z = phi ptr [ %.pr, %_ZSt8_DestroyIPN4Luau10HotCommentEEvT_S3_.exitthread-pre-split ], [ %i.p, %bb.c ] ; 3 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4Luau10HotCommentESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN4Luau10HotCommentEEvT_S3_.exit
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !213
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ad) #36
  br label %_ZNSt12_Vector_baseIN4Luau10HotCommentESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN4Luau10HotCommentESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt8_DestroyIPN4Luau10HotCommentEEvT_S3_.exit, %bb.d
  store ptr %i.o, ptr %0, align 8, !tbaa !408
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.ae, ptr %i.g, align 8, !tbaa !213
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN4Luau10HotCommentESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit

bb.e:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !409 ; 3 uses
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.ah, %i.k                     ; 4 uses
  %.not24 = icmp ult i64 %i.ai, %i.f
  br i1 %.not24, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = icmp sgt i64 %i.f, 0
  br i1 %i.aj, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau10HotCommentESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.f
  %i.ak = udiv exact i64 %i.f, 56
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %i.ak, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.0910.i.i.i.i.i, i64 20, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %i.am)
  %i.an = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 56
  %i.ao = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 56 ; 3 uses
  %i.ap = add nsw i64 %.012.i.i.i.i.i, -1
  %i.aq = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.aq, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau10HotCommentESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit.loopexit, !llvm.loop !1772

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau10HotCommentESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i
  %.pre = load ptr, ptr %i.af, align 8, !tbaa !129
  %.pre46 = ptrtoint ptr %i.ao to i64
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau10HotCommentESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau10HotCommentESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau10HotCommentESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit.loopexit, %bb.f
  %.pre-phi47 = phi i64 [ %.pre46, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau10HotCommentESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit.loopexit ], [ %i.k, %bb.f ]
  %i.ar = phi ptr [ %.pre, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau10HotCommentESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit.loopexit ], [ %i.ag, %bb.f ] ; 2 uses
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.ao, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau10HotCommentESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit.loopexit ], [ %i.i, %bb.f ]
  %.not4.i.i25 = icmp eq ptr %.08.lcssa.i.i.i.i.i, %i.ar
  br i1 %.not4.i.i25, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN4Luau10HotCommentESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, label %.lr.ph.i.i26.preheader

.lr.ph.i.i26.preheader:                           ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau10HotCommentESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit
  %i.as = sub i64 %.pre-phi47, %i.k
  %i.at = getelementptr inbounds i8, ptr %i.i, i64 %i.as
  br label %.lr.ph.i.i26

.lr.ph.i.i26:                                     ; preds = %.lr.ph.i.i26.preheader, %_ZSt8_DestroyIN4Luau10HotCommentEEvPT_.exit.i.i28
  %.sroa.01.05.i.i = phi ptr [ %i.ba, %_ZSt8_DestroyIN4Luau10HotCommentEEvPT_.exit.i.i28 ], [ %i.at, %.lr.ph.i.i26.preheader ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !141 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 40 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZSt8_DestroyIN4Luau10HotCommentEEvPT_.exit.i.i28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i27: ; preds = %.lr.ph.i.i26
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !220
  %i.az = add i64 %i.ay, 1
  tail call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #36
  br label %_ZSt8_DestroyIN4Luau10HotCommentEEvPT_.exit.i.i28

_ZSt8_DestroyIN4Luau10HotCommentEEvPT_.exit.i.i28: ; preds = %.lr.ph.i.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i27
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 56 ; 2 uses
  %.not.i.i29 = icmp eq ptr %i.ba, %i.ar
  br i1 %.not.i.i29, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN4Luau10HotCommentESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, label %.lr.ph.i.i26, !llvm.loop !1773

bb.g:                                             ; preds = %bb.e
  %i.bb = icmp sgt i64 %i.ai, 0
  br i1 %i.bb, label %.lr.ph.preheader.i.i.i.i.i32, label %_ZSt4copyIPN4Luau10HotCommentES2_ET0_T_S4_S3_.exit

.lr.ph.preheader.i.i.i.i.i32:                     ; preds = %bb.g
  %i.bc = udiv exact i64 %i.ai, 56
  br label %.lr.ph.i.i.i.i.i33

.lr.ph.i.i.i.i.i33:                               ; preds = %.lr.ph.i.i.i.i.i33, %.lr.ph.preheader.i.i.i.i.i32
  %.012.i.i.i.i.i34 = phi i64 [ %i.bh, %.lr.ph.i.i.i.i.i33 ], [ %i.bc, %.lr.ph.preheader.i.i.i.i.i32 ] ; 2 uses
  %.0811.i.i.i.i.i35 = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i33 ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i32 ] ; 3 uses
  %.0910.i.i.i.i.i36 = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i33 ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i32 ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.0811.i.i.i.i.i35, ptr noundef nonnull align 8 dereferenceable(56) %.0910.i.i.i.i.i36, i64 20, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i35, i64 24
  %i.be = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i36, i64 24
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bd, ptr noundef nonnull align 8 dereferenceable(32) %i.be)
  %i.bf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i36, i64 56
  %i.bg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i35, i64 56
  %i.bh = add nsw i64 %.012.i.i.i.i.i34, -1
  %i.bi = icmp samesign ugt i64 %.012.i.i.i.i.i34, 1
  br i1 %i.bi, label %.lr.ph.i.i.i.i.i33, label %_ZSt4copyIPN4Luau10HotCommentES2_ET0_T_S4_S3_.exit.loopexit, !llvm.loop !1774

_ZSt4copyIPN4Luau10HotCommentES2_ET0_T_S4_S3_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i33
  %.pre37 = load ptr, ptr %1, align 8, !tbaa !408
  %.pre38 = load ptr, ptr %i.af, align 8, !tbaa !409 ; 2 uses
  %.pre39 = load ptr, ptr %0, align 8, !tbaa !408
  %.pre40 = load ptr, ptr %i.a, align 8, !tbaa !409
  %.pre41 = ptrtoint ptr %.pre38 to i64
  %.pre42 = ptrtoint ptr %.pre39 to i64
  %.pre44 = sub i64 %.pre41, %.pre42
  br label %_ZSt4copyIPN4Luau10HotCommentES2_ET0_T_S4_S3_.exit

_ZSt4copyIPN4Luau10HotCommentES2_ET0_T_S4_S3_.exit: ; preds = %_ZSt4copyIPN4Luau10HotCommentES2_ET0_T_S4_S3_.exit.loopexit, %bb.g
  %.pre-phi45 = phi i64 [ %.pre44, %_ZSt4copyIPN4Luau10HotCommentES2_ET0_T_S4_S3_.exit.loopexit ], [ %i.ai, %bb.g ]
  %i.bj = phi ptr [ %.pre40, %_ZSt4copyIPN4Luau10HotCommentES2_ET0_T_S4_S3_.exit.loopexit ], [ %i.b, %bb.g ]
  %i.bk = phi ptr [ %.pre38, %_ZSt4copyIPN4Luau10HotCommentES2_ET0_T_S4_S3_.exit.loopexit ], [ %i.ag, %bb.g ]
  %i.bl = phi ptr [ %.pre37, %_ZSt4copyIPN4Luau10HotCommentES2_ET0_T_S4_S3_.exit.loopexit ], [ %i.c, %bb.g ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.pre-phi45
  %i.bn = tail call noundef ptr @_ZSt16__do_uninit_copyIPN4Luau10HotCommentES2_ET0_T_S4_S3_(ptr noundef %i.bm, ptr noundef %i.bj, ptr noundef %i.bk) ; 0 uses
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN4Luau10HotCommentESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit

_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN4Luau10HotCommentESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit: ; preds = %_ZSt8_DestroyIN4Luau10HotCommentEEvPT_.exit.i.i28, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau10HotCommentESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, %_ZSt4copyIPN4Luau10HotCommentES2_ET0_T_S4_S3_.exit, %_ZNSt12_Vector_baseIN4Luau10HotCommentESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.bo = load ptr, ptr %0, align 8, !tbaa !408
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.f
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !409
  br label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN4Luau10HotCommentESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4Luau7CommentESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !252  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !215    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !253
  %i.i = load ptr, ptr %0, align 8, !tbaa !215    ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv exact i64 %i.f, 20
  %i.o = icmp ugt i64 %i.n, 461168601842738790
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseIN4Luau7CommentESaIS1_EE11_M_allocateEm.exit.i, !prof !120

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #37
  unreachable

_ZNSt12_Vector_baseIN4Luau7CommentESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #38 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN4Luau7CommentESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseIN4Luau7CommentESaIS1_EE11_M_allocateEm.exit.i
  %i.p = add i64 %i.d, -20
  %i.q = sub i64 %i.p, %i.e
  %.fr.i = freeze i64 %i.q                        ; 2 uses
  %i.r = urem i64 %.fr.i, 20
  %i.s = add i64 %.fr.i, 20
  %i.t = sub i64 %i.s, %i.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2, ptr align 4 %i.c, i64 %i.t, i1 false)
  br label %_ZNSt6vectorIN4Luau7CommentESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit

_ZNSt6vectorIN4Luau7CommentESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit: ; preds = %_ZNSt12_Vector_baseIN4Luau7CommentESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %3 = load ptr, ptr %0, align 8, !tbaa !215      ; 3 uses
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4Luau7CommentESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4Luau7CommentESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !253
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %3 to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %3, i64 noundef %i.x) #36
  br label %_ZNSt12_Vector_baseIN4Luau7CommentESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN4Luau7CommentESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN4Luau7CommentESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, %bb.e
  store ptr %2, ptr %0, align 8, !tbaa !215
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.y, ptr %i.g, align 8, !tbaa !253
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau7CommentESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.f:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !252
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.k                     ; 4 uses
  %.not24 = icmp ult i64 %i.ac, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = icmp sgt i64 %i.f, 20
  br i1 %i.ad, label %bb.h, label %bb.i, !prof !519

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau7CommentESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.i:                                             ; preds = %bb.g
  %i.ae = icmp eq i64 %i.f, 20
  br i1 %i.ae, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau7CommentESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.i, ptr noundef nonnull align 4 dereferenceable(20) %i.c, i64 20, i1 false), !tbaa.struct !1777
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau7CommentESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.k:                                             ; preds = %bb.f
  %i.af = icmp sgt i64 %i.ac, 20
  br i1 %i.af, label %bb.l, label %bb.m, !prof !519

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.ac, i1 false)
  br label %_ZSt4copyIPN4Luau7CommentES2_ET0_T_S4_S3_.exit

bb.m:                                             ; preds = %bb.k
  %i.ag = icmp eq i64 %i.ac, 20
  br i1 %i.ag, label %bb.n, label %_ZSt4copyIPN4Luau7CommentES2_ET0_T_S4_S3_.exit

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.i, ptr noundef nonnull align 4 dereferenceable(20) %i.c, i64 20, i1 false), !tbaa.struct !1777
  br label %_ZSt4copyIPN4Luau7CommentES2_ET0_T_S4_S3_.exit

_ZSt4copyIPN4Luau7CommentES2_ET0_T_S4_S3_.exit:   ; preds = %bb.l, %bb.m, %bb.n
  %i.ah = load ptr, ptr %1, align 8, !tbaa !215
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !252 ; 2 uses
  %i.aj = load ptr, ptr %0, align 8, !tbaa !215
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.am ; 2 uses
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !252 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.an, %i.ao
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau7CommentESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN4Luau7CommentES2_ET0_T_S4_S3_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i ], [ %i.ai, %_ZSt4copyIPN4Luau7CommentES2_ET0_T_S4_S3_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i ], [ %i.an, %_ZSt4copyIPN4Luau7CommentES2_ET0_T_S4_S3_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.011.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.0810.i.i.i.i, i64 20, i1 false), !tbaa.struct !1777
  %i.ap = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 20 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 20
  %.not.i.i.i.i = icmp eq ptr %i.ap, %i.ao
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau7CommentESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1775

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau7CommentESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIPN4Luau7CommentES2_ET0_T_S4_S3_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN4Luau7CommentESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.ar = load ptr, ptr %0, align 8, !tbaa !215
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.f
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %i.at, align 8, !tbaa !252
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau7CommentESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIN4Luau10HotCommentESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr %2, ptr %3) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4Luau10HotCommentESaIS1_EE11_M_allocateEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ugt i64 %1, 164703072086692425
  br i1 %i.a, label %bb.c, label %_ZNSt15__new_allocatorIN4Luau10HotCommentEE8allocateEmPKv.exit.i, !prof !120

bb.c:                                             ; preds = %bb.b
  %i.b = icmp ugt i64 %1, 329406144173384850
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #37
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #37
  unreachable

_ZNSt15__new_allocatorIN4Luau10HotCommentEE8allocateEmPKv.exit.i: ; preds = %bb.b
  %i.c = mul nuw nsw i64 %1, 56
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #38
  br label %_ZNSt12_Vector_baseIN4Luau10HotCommentESaIS1_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN4Luau10HotCommentESaIS1_EE11_M_allocateEm.exit: ; preds = %bb.a, %_ZNSt15__new_allocatorIN4Luau10HotCommentEE8allocateEmPKv.exit.i
  %i.e = phi ptr [ %i.d, %_ZNSt15__new_allocatorIN4Luau10HotCommentEE8allocateEmPKv.exit.i ], [ null, %bb.a ] ; 4 uses
  %i.f = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau10HotCommentESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(ptr %2, ptr %3, ptr noundef %i.e)
          to label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN4Luau10HotCommentESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit unwind label %bb.f ; 0 uses

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN4Luau10HotCommentESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit: ; preds = %_ZNSt12_Vector_baseIN4Luau10HotCommentESaIS1_EE11_M_allocateEm.exit
  ret ptr %i.e

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIN4Luau10HotCommentESaIS1_EE11_M_allocateEm.exit
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  %i.i = tail call ptr @__cxa_begin_catch(ptr %i.h) #34 ; 0 uses
  %.not.i11 = icmp eq ptr %i.e, null
  br i1 %.not.i11, label %_ZNSt12_Vector_baseIN4Luau10HotCommentESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = mul nuw nsw i64 %1, 56
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #36
  br label %_ZNSt12_Vector_baseIN4Luau10HotCommentESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN4Luau10HotCommentESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %bb.g, %bb.f
  invoke void @__cxa_rethrow() #37
          to label %bb.k unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt12_Vector_baseIN4Luau10HotCommentESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.k

bb.j:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #35
  unreachable

bb.k:                                             ; preds = %_ZNSt12_Vector_baseIN4Luau10HotCommentESaIS1_EE13_M_deallocateEPS1_m.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau10HotCommentESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not12 = icmp eq ptr %0, %1
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.014 = phi ptr [ %i.r, %bb.d ], [ %2, %bb.a ]  ; 6 uses
  %.sroa.08.013 = phi ptr [ %i.q, %bb.d ], [ %0, %bb.a ] ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.014, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.08.013, i64 20, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %.014, i64 24 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %.014, i64 40 ; 3 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !219
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !141  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !140  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 %i.g, ptr %i.a, align 8, !tbaa !218
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %.lr.ph
  %i.i = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.i, ptr %i.b, align 8, !tbaa !141
  %i.j = load i64, ptr %i.a, align 8, !tbaa !218
  store i64 %i.j, ptr %i.d, align 8, !tbaa !220
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %.lr.ph
  %i.k = phi ptr [ %i.i, %.noexc ], [ %i.d, %.lr.ph ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !220
  store i8 %i.l, ptr %i.k, align 1, !tbaa !220
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.m = load i64, ptr %i.a, align 8, !tbaa !218  ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau7TypeFunEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev:bb.a
  ret void
}

declare noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau7TypeFunEELb1EEEEE16_M_allocate_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS9_EESK_IJEEEEEPSD_DpOT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #38 ; 7 uses
  store ptr null, ptr %i.b, align 8, !tbaa !274
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load i64, ptr %2, align 8, !tbaa !510
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  store ptr %i.f, ptr %i.c, align 8, !tbaa !219
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !141  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !140  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 %i.i, ptr %i.a, align 8, !tbaa !218
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.k = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(112) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.k, ptr %i.c, align 8, !tbaa !141
  %i.l = load i64, ptr %i.a, align 8, !tbaa !218
  store i64 %i.l, ptr %i.f, align 8, !tbaa !220
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %bb.a
  %i.m = phi ptr [ %i.k, %.noexc ], [ %i.f, %bb.a ] ; 2 uses
  switch i64 %i.i, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.n = load i8, ptr %i.g, align 1, !tbaa !220
  store i8 %i.n, ptr %i.m, align 1, !tbaa !220
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.o = load i64, ptr %i.a, align 8, !tbaa !218  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.o, ptr %i.p, align 8, !tbaa !140
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !141
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.s, i8 0, i64 80, i1 false)
  ret ptr %i.b

bb.e:                                             ; preds = %.noexc.i.i.i
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  %i.v = call ptr @__cxa_begin_catch(ptr %i.u) #34 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 128) #36
  invoke void @__cxa_rethrow() #37
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.w

bb.h:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #35
  unreachable

bb.i:                                             ; preds = %bb.e
  unreachable
}

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau7TypeFunEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !120

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !1783
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau7TypeFunEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau7TypeFunEELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !120

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #37
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #37
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau7TypeFunEELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #38 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau7TypeFunEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau7TypeFunEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau7TypeFunEELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau7TypeFunEELb1EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1144 ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !1144
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau7TypeFunEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau7TypeFunEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau7TypeFunEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !274 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 120
  %i.k = load i64, ptr %i.j, align 8, !tbaa !531
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !529  ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !1144
  store ptr %i.o, ptr %.02530, align 8, !tbaa !274
  store ptr %.02530, ptr %i.g, align 8, !tbaa !1144
  store ptr %i.g, ptr %i.m, align 8, !tbaa !529
  %i.p = load ptr, ptr %.02530, align 8, !tbaa !274
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.q, align 8, !tbaa !529
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !274
  store ptr %i.r, ptr %.02530, align 8, !tbaa !274
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !529
  store ptr %.02530, ptr %i.s, align 8, !tbaa !274
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.031, %bb.g ], [ %i.l, %bb.f ], [ %i.l, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1782

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau7TypeFunEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !1024   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau7TypeFunEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !1025
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #36
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau7TypeFunEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau7TypeFunEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8, !tbaa !1025
  store ptr %.0.i, ptr %0, align 8, !tbaa !1024
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4Luau21GenericTypeDefinitionESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1145 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !301    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !302
  %i.i = load ptr, ptr %0, align 8, !tbaa !301    ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv exact i64 %i.f, 24
  %i.o = icmp ugt i64 %i.n, 384307168202282325
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseIN4Luau21GenericTypeDefinitionESaIS1_EE11_M_allocateEm.exit.i, !prof !120

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #37
  unreachable

_ZNSt12_Vector_baseIN4Luau21GenericTypeDefinitionESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #38 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN4Luau21GenericTypeDefinitionESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseIN4Luau21GenericTypeDefinitionESaIS1_EE11_M_allocateEm.exit.i
  %i.p = add i64 %i.d, -24
  %i.q = sub i64 %i.p, %i.e
  %.fr.i = freeze i64 %i.q                        ; 2 uses
  %i.r = urem i64 %.fr.i, 24
  %i.s = add i64 %.fr.i, 24
  %i.t = sub i64 %i.s, %i.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr align 8 %i.c, i64 %i.t, i1 false)
  br label %_ZNSt6vectorIN4Luau21GenericTypeDefinitionESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit

_ZNSt6vectorIN4Luau21GenericTypeDefinitionESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit: ; preds = %_ZNSt12_Vector_baseIN4Luau21GenericTypeDefinitionESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %3 = load ptr, ptr %0, align 8, !tbaa !301      ; 3 uses
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4Luau21GenericTypeDefinitionESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4Luau21GenericTypeDefinitionESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !302
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %3 to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %3, i64 noundef %i.x) #36
  br label %_ZNSt12_Vector_baseIN4Luau21GenericTypeDefinitionESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN4Luau21GenericTypeDefinitionESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN4Luau21GenericTypeDefinitionESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, %bb.e
  store ptr %2, ptr %0, align 8, !tbaa !301
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.y, ptr %i.g, align 8, !tbaa !302
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau21GenericTypeDefinitionESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.f:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1145
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.k                     ; 4 uses
  %.not24 = icmp ult i64 %i.ac, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = icmp sgt i64 %i.f, 24
  br i1 %i.ad, label %bb.h, label %bb.i, !prof !519

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau21GenericTypeDefinitionESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.i:                                             ; preds = %bb.g
  %i.ae = icmp eq i64 %i.f, 24
  br i1 %i.ae, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau21GenericTypeDefinitionESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau21GenericTypeDefinitionESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.k:                                             ; preds = %bb.f
  %i.af = icmp sgt i64 %i.ac, 24
  br i1 %i.af, label %bb.l, label %bb.m, !prof !519

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.ac, i1 false)
  br label %_ZSt4copyIPN4Luau21GenericTypeDefinitionES2_ET0_T_S4_S3_.exit

bb.m:                                             ; preds = %bb.k
  %i.ag = icmp eq i64 %i.ac, 24
  br i1 %i.ag, label %bb.n, label %_ZSt4copyIPN4Luau21GenericTypeDefinitionES2_ET0_T_S4_S3_.exit

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %_ZSt4copyIPN4Luau21GenericTypeDefinitionES2_ET0_T_S4_S3_.exit

_ZSt4copyIPN4Luau21GenericTypeDefinitionES2_ET0_T_S4_S3_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.ah = load ptr, ptr %1, align 8, !tbaa !301
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !1145 ; 2 uses
  %i.aj = load ptr, ptr %0, align 8, !tbaa !301
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.am ; 2 uses
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !1145 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.an, %i.ao
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau21GenericTypeDefinitionESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN4Luau21GenericTypeDefinitionES2_ET0_T_S4_S3_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i ], [ %i.ai, %_ZSt4copyIPN4Luau21GenericTypeDefinitionES2_ET0_T_S4_S3_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i ], [ %i.an, %_ZSt4copyIPN4Luau21GenericTypeDefinitionES2_ET0_T_S4_S3_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0810.i.i.i.i, i64 24, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 24 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 24
  %.not.i.i.i.i = icmp eq ptr %i.ap, %i.ao
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau21GenericTypeDefinitionESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1784

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau21GenericTypeDefinitionESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIPN4Luau21GenericTypeDefinitionES2_ET0_T_S4_S3_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN4Luau21GenericTypeDefinitionESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.ar = load ptr, ptr %0, align 8, !tbaa !301
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.f
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %i.at, align 8, !tbaa !1145
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau21GenericTypeDefinitionESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1146 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !299    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !300
  %i.i = load ptr, ptr %0, align 8, !tbaa !299    ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv exact i64 %i.f, 24
  %i.o = icmp ugt i64 %i.n, 384307168202282325
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseIN4Luau25GenericTypePackDefinitionESaIS1_EE11_M_allocateEm.exit.i, !prof !120

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #37
  unreachable

_ZNSt12_Vector_baseIN4Luau25GenericTypePackDefinitionESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #38 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseIN4Luau25GenericTypePackDefinitionESaIS1_EE11_M_allocateEm.exit.i
  %i.p = add i64 %i.d, -24
  %i.q = sub i64 %i.p, %i.e
  %.fr.i = freeze i64 %i.q                        ; 2 uses
  %i.r = urem i64 %.fr.i, 24
  %i.s = add i64 %.fr.i, 24
  %i.t = sub i64 %i.s, %i.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr align 8 %i.c, i64 %i.t, i1 false)
  br label %_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit

_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit: ; preds = %_ZNSt12_Vector_baseIN4Luau25GenericTypePackDefinitionESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %3 = load ptr, ptr %0, align 8, !tbaa !299      ; 3 uses
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4Luau25GenericTypePackDefinitionESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !300
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %3 to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %3, i64 noundef %i.x) #36
  br label %_ZNSt12_Vector_baseIN4Luau25GenericTypePackDefinitionESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN4Luau25GenericTypePackDefinitionESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, %bb.e
  store ptr %2, ptr %0, align 8, !tbaa !299
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.y, ptr %i.g, align 8, !tbaa !300
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau25GenericTypePackDefinitionESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.f:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1146
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.k                     ; 4 uses
  %.not24 = icmp ult i64 %i.ac, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = icmp sgt i64 %i.f, 24
  br i1 %i.ad, label %bb.h, label %bb.i, !prof !519

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau25GenericTypePackDefinitionESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.i:                                             ; preds = %bb.g
  %i.ae = icmp eq i64 %i.f, 24
  br i1 %i.ae, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau25GenericTypePackDefinitionESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau25GenericTypePackDefinitionESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.k:                                             ; preds = %bb.f
  %i.af = icmp sgt i64 %i.ac, 24
  br i1 %i.af, label %bb.l, label %bb.m, !prof !519

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.ac, i1 false)
  br label %_ZSt4copyIPN4Luau25GenericTypePackDefinitionES2_ET0_T_S4_S3_.exit

bb.m:                                             ; preds = %bb.k
  %i.ag = icmp eq i64 %i.ac, 24
  br i1 %i.ag, label %bb.n, label %_ZSt4copyIPN4Luau25GenericTypePackDefinitionES2_ET0_T_S4_S3_.exit

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %_ZSt4copyIPN4Luau25GenericTypePackDefinitionES2_ET0_T_S4_S3_.exit

_ZSt4copyIPN4Luau25GenericTypePackDefinitionES2_ET0_T_S4_S3_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.ah = load ptr, ptr %1, align 8, !tbaa !299
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !1146 ; 2 uses
  %i.aj = load ptr, ptr %0, align 8, !tbaa !299
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.am ; 2 uses
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !1146 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.an, %i.ao
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau25GenericTypePackDefinitionESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN4Luau25GenericTypePackDefinitionES2_ET0_T_S4_S3_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i ], [ %i.ai, %_ZSt4copyIPN4Luau25GenericTypePackDefinitionES2_ET0_T_S4_S3_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i ], [ %i.an, %_ZSt4copyIPN4Luau25GenericTypePackDefinitionES2_ET0_T_S4_S3_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0810.i.i.i.i, i64 24, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 24 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 24
  %.not.i.i.i.i = icmp eq ptr %i.ap, %i.ao
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau25GenericTypePackDefinitionESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1785

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau25GenericTypePackDefinitionESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIPN4Luau25GenericTypePackDefinitionES2_ET0_T_S4_S3_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN4Luau25GenericTypePackDefinitionESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.ar = load ptr, ptr %0, align 8, !tbaa !299
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.f
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %i.at, align 8, !tbaa !1146
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau25GenericTypePackDefinitionESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau18RequireTraceResultEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !625  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !624  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8LocationEES9_EvT_SB_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8LocationEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8LocationEEEvPT_.exit.i.i.i.i ], [ %i.c, %bb.a ] ; 3 uses
  %i.f = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !141 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8LocationEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !220
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #36
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8LocationEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8LocationEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.e
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8LocationEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !44

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8LocationEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8LocationEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.b, align 8, !tbaa !625
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8LocationEES9_EvT_SB_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8LocationEES9_EvT_SB_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8LocationEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.l = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8LocationEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.c, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8LocationEESaIS9_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8LocationEES9_EvT_SB_RSaIT0_E.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !728
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #36
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8LocationEESaIS9_EED2Ev.exit.i

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8LocationEESaIS9_EED2Ev.exit.i: ; preds = %bb.b, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8LocationEES9_EvT_SB_RSaIT0_E.exit.i.i
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !739  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %_ZN4Luau18RequireTraceResultD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8LocationEESaIS9_EED2Ev.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load i64, ptr %i.s, align 8, !tbaa !740  ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4Luau6detail14DenseHashTableIPKNS_7AstNodeESt4pairIS4_NS_10ModuleInfoEES5_IKS4_S6_ENS0_16ItemInterfaceMapIS4_S6_EENS_16DenseHashPointerESt8equal_toIS4_EE7destroyEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %_ZN4Luau10ModuleInfoD2Ev.exit.i.i.i.i.i
  %.04.i.i.i.i.i = phi i64 [ %i.ab, %_ZN4Luau10ModuleInfoD2Ev.exit.i.i.i.i.i ], [ 0, %bb.c ] ; 2 uses
  %i.u = getelementptr inbounds nuw [48 x i8], ptr %i.r, i64 %.04.i.i.i.i.i ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !141  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZN4Luau10ModuleInfoD2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.z = load i64, ptr %i.x, align 8, !tbaa !220
  %i.aa = add i64 %i.z, 1
  tail call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #36
  br label %_ZN4Luau10ModuleInfoD2Ev.exit.i.i.i.i.i

_ZN4Luau10ModuleInfoD2Ev.exit.i.i.i.i.i:          ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1.i
  %i.ab = add nuw i64 %.04.i.i.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.ab, %i.t
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN4Luau6detail16ItemInterfaceMapIPKNS_7AstNodeENS_10ModuleInfoEE7destroyEPSt4pairIS4_S5_Em.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !45

_ZN4Luau6detail16ItemInterfaceMapIPKNS_7AstNodeENS_10ModuleInfoEE7destroyEPSt4pairIS4_S5_Em.exit.loopexit.i.i.i.i: ; preds = %_ZN4Luau10ModuleInfoD2Ev.exit.i.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !739
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_7AstNodeESt4pairIS4_NS_10ModuleInfoEES5_IKS4_S6_ENS0_16ItemInterfaceMapIS4_S6_EENS_16DenseHashPointerESt8equal_toIS4_EE7destroyEv.exit.i.i.i

_ZN4Luau6detail14DenseHashTableIPKNS_7AstNodeESt4pairIS4_NS_10ModuleInfoEES5_IKS4_S6_ENS0_16ItemInterfaceMapIS4_S6_EENS_16DenseHashPointerESt8equal_toIS4_EE7destroyEv.exit.i.i.i: ; preds = %_ZN4Luau6detail16ItemInterfaceMapIPKNS_7AstNodeENS_10ModuleInfoEE7destroyEPSt4pairIS4_S5_Em.exit.loopexit.i.i.i.i, %bb.c
  %i.ac = phi ptr [ %.pre.i.i.i.i, %_ZN4Luau6detail16ItemInterfaceMapIPKNS_7AstNodeENS_10ModuleInfoEE7destroyEPSt4pairIS4_S5_Em.exit.loopexit.i.i.i.i ], [ %i.r, %bb.c ]
  tail call void @_ZdlPv(ptr noundef %i.ac) #34
  br label %_ZN4Luau18RequireTraceResultD2Ev.exit

_ZN4Luau18RequireTraceResultD2Ev.exit:            ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8LocationEESaIS9_EED2Ev.exit.i, %_ZN4Luau6detail14DenseHashTableIPKNS_7AstNodeESt4pairIS4_NS_10ModuleInfoEES5_IKS4_S6_ENS0_16ItemInterfaceMapIS4_S6_EENS_16DenseHashPointerESt8equal_toIS4_EE7destroyEv.exit.i.i.i
  %i.ad = load ptr, ptr %0, align 8, !tbaa !141   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4Luau18RequireTraceResultD2Ev.exit
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !220
  %i.ah = add i64 %i.ag, 1
  tail call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4Luau18RequireTraceResultD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN4Luau12SourceModuleEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1147 ; 2 uses
  %.not5.i = icmp eq ptr %i.b, null
  br i1 %.not5.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN4Luau12SourceModuleEEELb1EEEEE19_M_deallocate_nodesEPSF_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN4Luau12SourceModuleEEELb1EEEEE18_M_deallocate_nodeEPSF_.exit.i
  %.06.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN4Luau12SourceModuleEEELb1EEEEE18_M_deallocate_nodeEPSF_.exit.i ], [ %i.b, %bb.a ] ; 5 uses
  %i.c = load ptr, ptr %.06.i, align 8, !tbaa !274 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !231  ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt12__shared_ptrIN4Luau12SourceModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
end_hunk_1
