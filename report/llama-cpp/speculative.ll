Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/speculative?download=true
inline.NumInlined: 5176
inline.NumDeleted: 2391
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN33common_speculative_impl_ngram_mod5draftERSt6vectorI31common_speculative_draft_paramsSaIS1_EE:bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !271
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !286, !range !187, !noundef !188
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.i = trunc nuw nsw i64 %indvars.iv to i32
  tail call void @_ZN33common_speculative_impl_ngram_mod9draft_oneEiR31common_speculative_draft_params(ptr noundef nonnull align 8 dereferenceable(224) %0, i32 noundef %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.f)
  %.pre = load i32, ptr %i.a, align 4, !tbaa !318
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.j = phi i32 [ %i.d, %.lr.ph ], [ %.pre, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.k = sext i32 %i.j to i64
  %i.l = icmp slt i64 %indvars.iv.next, %i.k
  br i1 %i.l, label %.lr.ph, label %._crit_edge, !llvm.loop !1038
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN33common_speculative_impl_ngram_mod6acceptEitb(ptr noundef nonnull align 8 dereferenceable(224) %0, i32 noundef %1, i16 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #3 comdat align 2 {
bb.a:
  br i1 %3, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = sext i32 %1 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !483
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.b ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !490  ; 2 uses
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = uitofp i16 %2 to double
  %i.h = uitofp i64 %i.f to double
  %i.i = fdiv double %i.g, %i.h
  %i.j = fcmp olt double %i.i, 2.500000e-01
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 5 uses
  br i1 %i.j, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.l = load i32, ptr %i.k, align 8, !tbaa !1039 ; 2 uses
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 8, !tbaa !1039
  %i.n = icmp sgt i32 %i.l, 3
  br i1 %i.n, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.p = load i8, ptr %i.o, align 8, !tbaa !482, !range !187, !noundef !188
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.r = tail call noundef i32 @_Z30common_log_get_verbosity_tholdv()
  %i.s = icmp sgt i32 %i.r, 3
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = tail call noundef ptr @_Z15common_log_mainv()
  %i.u = load i32, ptr %i.k, align 8, !tbaa !1039
  tail call void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.t, i32 noundef 2, ptr noundef nonnull @.str.147, i32 noundef 12, ptr noundef nonnull @__func__._ZN33common_speculative_impl_ngram_mod6acceptEitb, i32 noundef %i.u)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @_ZN16common_ngram_mod5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %i.v)
  store i32 0, ptr %i.k, align 8, !tbaa !1039
  store i64 0, ptr %i.d, align 8, !tbaa !489
  br label %bb.j

bb.i:                                             ; preds = %bb.c
  store i32 0, ptr %i.k, align 8, !tbaa !1039
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.d, %bb.h, %bb.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN33common_speculative_impl_ngram_mod8seq_infoESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !487  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !483    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !484
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 24                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 384307168202282325, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN33common_speculative_impl_ngram_mod8seq_infoEmS1_ET_S3_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPN33common_speculative_impl_ngram_mod8seq_infoEmS1_ET_S3_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %1, 24                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !487
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIN33common_speculative_impl_ngram_mod8seq_infoESaIS1_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.54) #33
  unreachable

_ZNKSt6vectorIN33common_speculative_impl_ngram_mod8seq_infoESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 384307168202282325) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 24
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #34 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = mul nuw nsw i64 %1, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN33common_speculative_impl_ngram_mod8seq_infoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN33common_speculative_impl_ngram_mod8seq_infoESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorIN33common_speculative_impl_ngram_mod8seq_infoESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN33common_speculative_impl_ngram_mod8seq_infoESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i64 24, i1 false), !tbaa.struct !1044, !alias.scope !1045
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.x, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN33common_speculative_impl_ngram_mod8seq_infoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !1043

_ZNSt6vectorIN33common_speculative_impl_ngram_mod8seq_infoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN33common_speculative_impl_ngram_mod8seq_infoESaIS1_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN33common_speculative_impl_ngram_mod8seq_infoESaIS1_EE13_M_deallocateEPS1_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN33common_speculative_impl_ngram_mod8seq_infoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.z = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.z) #32
  br label %_ZNSt12_Vector_baseIN33common_speculative_impl_ngram_mod8seq_infoESaIS1_EE13_M_deallocateEPS1_m.exit37

_ZNSt12_Vector_baseIN33common_speculative_impl_ngram_mod8seq_infoESaIS1_EE13_M_deallocateEPS1_m.exit37: ; preds = %_ZNSt6vectorIN33common_speculative_impl_ngram_mod8seq_infoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !483
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %1
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !487
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ab, ptr %i.h, align 8, !tbaa !484
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN33common_speculative_impl_ngram_mod8seq_infoEmS1_ET_S3_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN33common_speculative_impl_ngram_mod8seq_infoESaIS1_EE13_M_deallocateEPS1_m.exit37, %bb.a
  ret void
}

declare noundef i64 @_ZNK16common_ngram_mod5get_nEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #6

declare void @_ZN16common_ngram_mod3addEPKi(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #6

declare noundef i64 @_ZNK16common_ngram_mod8get_usedEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #6

declare void @_ZN16common_ngram_mod5resetEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN33common_speculative_impl_ngram_mod9draft_oneEiR31common_speculative_draft_params(ptr noundef nonnull align 8 dereferenceable(224) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = sext i32 %1 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !483
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.b ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !287  ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !290  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store i64 0, ptr %i.i, align 8, !tbaa !490
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !221
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !222
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 2                   ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.r = tail call noundef i64 @_ZNK16common_ngram_mod5get_nEv(ptr noundef nonnull align 8 dereferenceable(40) %i.q)
  %i.s = icmp ult i64 %i.p, %i.r
  br i1 %i.s, label %_ZNSt6vectorIiSaIiEE5clearEv.exit.thread.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = tail call noundef i64 @_ZNK16common_ngram_mod5get_nEv(ptr noundef nonnull align 8 dereferenceable(40) %i.q) ; 19 uses
  %i.u = sub i64 0, %i.t
  %i.v = load i64, ptr %i.d, align 8, !tbaa !489  ; 3 uses
  %i.w = add i64 %i.v, 32
  %i.x = icmp ult i64 %i.w, %i.p
  br i1 %i.x, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %i.y = sub i64 %i.p, %i.t                       ; 3 uses
  %i.z = icmp ult i64 %i.v, %i.y
  br i1 %i.z, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  store i64 %i.y, ptr %i.d, align 8, !tbaa !489
  br label %bb.c

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.06593 = phi i64 [ %i.ac, %.lr.ph ], [ %i.v, %.preheader ] ; 2 uses
  %i.aa = load ptr, ptr %i.h, align 8, !tbaa !222
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.06593
  tail call void @_ZN16common_ngram_mod3addEPKi(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef %i.ab)
  %i.ac = add nuw i64 %.06593, 1                  ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.y
  br i1 %i.ad, label %.lr.ph, label %._crit_edge, !llvm.loop !1046

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !485
  %i.ag = sext i32 %i.af to i64
  %i.ah = add i64 %i.t, %i.ag                     ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 8 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !221 ; 2 uses
  %i.ak = load ptr, ptr %i.f, align 8, !tbaa !222 ; 2 uses
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = ashr exact i64 %i.an, 2                 ; 3 uses
  %i.ap = icmp ugt i64 %i.ah, %i.ao
  br i1 %i.ap, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aq = sub nuw i64 %i.ah, %i.ao
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.aq)
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.e:                                             ; preds = %bb.c
  %i.ar = icmp ult i64 %i.ah, %i.ao
  br i1 %i.ar, label %bb.f, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ah ; 2 uses
  %.not.i.i = icmp eq ptr %i.aj, %i.as
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.f
  store ptr %i.as, ptr %i.ai, align 8, !tbaa !221
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.d, %bb.e, %bb.f, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.at = add i64 %i.t, -1                        ; 3 uses
  %.not107 = icmp eq i64 %i.at, 0
  br i1 %.not107, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.._crit_edge96_crit_edge, label %.lr.ph95

_ZNSt6vectorIiSaIiEE6resizeEm.exit.._crit_edge96_crit_edge: ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !222
  br label %._crit_edge96

.lr.ph95:                                         ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.au = add nsw i64 %i.p, 1
  %i.av = sub i64 %i.au, %i.t
  %i.aw = load ptr, ptr %i.j, align 8, !tbaa !221
  %i.ax = load ptr, ptr %i.h, align 8, !tbaa !222 ; 2 uses
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 2                 ; 2 uses
  br label %bb.g

._crit_edge96:                                    ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit, %_ZNSt6vectorIiSaIiEE6resizeEm.exit.._crit_edge96_crit_edge
  %i.bc = phi ptr [ %.pre, %_ZNSt6vectorIiSaIiEE6resizeEm.exit.._crit_edge96_crit_edge ], [ %i.bl, %_ZNKSt6vectorIiSaIiEE2atEm.exit ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !385
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.at
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !58
  %i.bg = load i32, ptr %i.ae, align 4, !tbaa !485
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %.lr.ph100, label %_ZNSt6vectorIiSaIiEE5clearEv.exit.thread

bb.g:                                             ; preds = %.lr.ph95, %_ZNKSt6vectorIiSaIiEE2atEm.exit
  %.06494 = phi i64 [ 0, %.lr.ph95 ], [ %i.bn, %_ZNKSt6vectorIiSaIiEE2atEm.exit ] ; 3 uses
  %i.bi = add nuw i64 %i.av, %.06494              ; 3 uses
  %.not.i.i72 = icmp ult i64 %i.bi, %i.bb
  br i1 %.not.i.i72, label %_ZNKSt6vectorIiSaIiEE2atEm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.94, i64 noundef %i.bi, i64 noundef %i.bb) #33
  unreachable

_ZNKSt6vectorIiSaIiEE2atEm.exit:                  ; preds = %bb.g
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !58
  %i.bl = load ptr, ptr %i.f, align 8, !tbaa !222 ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.06494
  store i32 %i.bk, ptr %i.bm, align 4, !tbaa !58
  %i.bn = add nuw i64 %.06494, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bn, %i.at
  br i1 %exitcond.not, label %._crit_edge96, label %bb.g, !llvm.loop !1047

.lr.ph100:                                        ; preds = %._crit_edge96, %bb.o
  %i.bo = phi ptr [ %i.ch, %bb.o ], [ %i.bc, %._crit_edge96 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.o ], [ 0, %._crit_edge96 ] ; 5 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv
  %i.bq = tail call noundef i32 @_ZNK16common_ngram_mod3getEPKi(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef %i.bp) ; 2 uses
  %.not = icmp eq i32 %i.bq, -1
  br i1 %.not, label %bb.i, label %bb.o

bb.i:                                             ; preds = %.lr.ph100
  %i.br = trunc nuw nsw i64 %indvars.iv to i32
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !486
  %i.bu = icmp sgt i32 %i.bt, %i.br
  %i.bv = load ptr, ptr %i.ai, align 8, !tbaa !221 ; 3 uses
  br i1 %i.bu, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bw = load ptr, ptr %i.f, align 8, !tbaa !222 ; 2 uses
  %.not.i.i73 = icmp eq ptr %i.bv, %i.bw
  br i1 %.not.i.i73, label %_ZNSt6vectorIiSaIiEE5clearEv.exit.thread.thread, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i74

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i74:      ; preds = %bb.j
  store ptr %i.bw, ptr %i.ai, align 8, !tbaa !221
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit.thread.thread

bb.k:                                             ; preds = %bb.i
  %i.bx = add i64 %i.t, %indvars.iv               ; 4 uses
  %i.by = load ptr, ptr %i.f, align 8, !tbaa !222 ; 5 uses
  %i.bz = ptrtoint ptr %i.bv to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = ashr exact i64 %i.cb, 2                 ; 3 uses
  %i.cd = icmp ugt i64 %i.bx, %i.cc
  br i1 %i.cd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ce = sub nuw i64 %i.bx, %i.cc
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.ce)
  %.pre114 = load ptr, ptr %i.f, align 8, !tbaa !222
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit.thread

bb.m:                                             ; preds = %bb.k
  %i.cf = icmp ult i64 %i.bx, %i.cc
  br i1 %i.cf, label %bb.n, label %_ZNSt6vectorIiSaIiEE5clearEv.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.bx ; 2 uses
  %.not.i.i75 = icmp eq ptr %i.bv, %i.cg
  br i1 %.not.i.i75, label %_ZNSt6vectorIiSaIiEE5clearEv.exit.thread, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i76

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i76:      ; preds = %bb.n
  store ptr %i.cg, ptr %i.ai, align 8, !tbaa !221
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit.thread

bb.o:                                             ; preds = %.lr.ph100
  %i.ch = load ptr, ptr %i.f, align 8, !tbaa !222 ; 3 uses
  %i.ci = getelementptr [4 x i8], ptr %i.ch, i64 %i.t
  %i.cj = getelementptr [4 x i8], ptr %i.ci, i64 %indvars.iv
  store i32 %i.bq, ptr %i.cj, align 4, !tbaa !58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ck = load i32, ptr %i.ae, align 4, !tbaa !485
  %i.cl = sext i32 %i.ck to i64
  %i.cm = icmp slt i64 %indvars.iv.next, %i.cl
  br i1 %i.cm, label %.lr.ph100, label %_ZNSt6vectorIiSaIiEE5clearEv.exit.thread, !llvm.loop !1048

_ZNSt6vectorIiSaIiEE5clearEv.exit.thread:         ; preds = %bb.o, %._crit_edge96, %bb.l, %bb.m, %bb.n, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i76
  %i.cn = phi ptr [ %i.by, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i76 ], [ %i.bc, %._crit_edge96 ], [ %.pre114, %bb.l ], [ %i.by, %bb.m ], [ %i.by, %bb.n ], [ %i.ch, %bb.o ] ; 8 uses
  %i.co = load ptr, ptr %i.ai, align 8, !tbaa !221 ; 4 uses
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = ptrtoint ptr %i.cn to i64               ; 4 uses
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = ashr exact i64 %i.cr, 2                 ; 6 uses
  %i.ct = icmp ult i64 %i.t, %i.cs
  %i.cu = sub i64 %i.cs, %i.t                     ; 6 uses
  br i1 %i.ct, label %.lr.ph102.preheader, label %._crit_edge103

.lr.ph102.preheader:                              ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit.thread
  %min.iters.check = icmp ult i64 %i.cu, 12
  %i.cv = shl i64 %i.t, 2
  %diff.check = icmp ugt i64 %i.cv, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph102.preheader154, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph102.preheader
  %n.vec = and i64 %i.cu, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cw = getelementptr [4 x i8], ptr %i.cn, i64 %index ; 3 uses
  %i.cx = getelementptr [4 x i8], ptr %i.cw, i64 %i.t ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cx, i64 16
  %wide.load = load <4 x i32>, ptr %i.cx, align 4, !tbaa !58
  %wide.load153 = load <4 x i32>, ptr %i.cy, align 4, !tbaa !58
  %i.cz = getelementptr i8, ptr %i.cw, i64 16
  store <4 x i32> %wide.load, ptr %i.cw, align 4, !tbaa !58
  store <4 x i32> %wide.load153, ptr %i.cz, align 4, !tbaa !58
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.da = icmp eq i64 %index.next, %n.vec
  br i1 %i.da, label %middle.block, label %vector.body, !llvm.loop !1049

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cu, %n.vec
  br i1 %cmp.n, label %._crit_edge103, label %.lr.ph102.preheader154

.lr.ph102.preheader154:                           ; preds = %.lr.ph102.preheader, %middle.block
  %.0101.ph = phi i64 [ 0, %.lr.ph102.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %i.db = sub i64 %i.cs, %i.t
  %xtraiter = and i64 %i.db, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph102.prol.loopexit, label %.lr.ph102.prol

.lr.ph102.prol:                                   ; preds = %.lr.ph102.preheader154, %.lr.ph102.prol
  %.0101.prol = phi i64 [ %i.df, %.lr.ph102.prol ], [ %.0101.ph, %.lr.ph102.preheader154 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph102.prol ], [ 0, %.lr.ph102.preheader154 ]
  %i.dc = getelementptr [4 x i8], ptr %i.cn, i64 %.0101.prol ; 2 uses
  %i.dd = getelementptr [4 x i8], ptr %i.dc, i64 %i.t
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !58
  store i32 %i.de, ptr %i.dc, align 4, !tbaa !58
  %i.df = add i64 %.0101.prol, 1                  ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph102.prol.loopexit, label %.lr.ph102.prol, !llvm.loop !1050

.lr.ph102.prol.loopexit:                          ; preds = %.lr.ph102.prol, %.lr.ph102.preheader154
  %.0101.unr = phi i64 [ %.0101.ph, %.lr.ph102.preheader154 ], [ %i.df, %.lr.ph102.prol ]
  %i.dg = sub i64 %i.t, %i.cs
  %i.dh = add i64 %i.dg, %.0101.ph
  %i.di = icmp ugt i64 %i.dh, -4
  br i1 %i.di, label %._crit_edge103, label %.lr.ph102

._crit_edge103:                                   ; preds = %.lr.ph102.prol.loopexit, %.lr.ph102, %middle.block, %_ZNSt6vectorIiSaIiEE5clearEv.exit.thread
  %i.dj = icmp ugt i64 %i.t, %i.cs
  br i1 %i.dj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %._crit_edge103
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.u)
  %.pre115 = load ptr, ptr %i.ai, align 8, !tbaa !221
  %.pre116 = load ptr, ptr %i.f, align 8, !tbaa !222
  %.pre117 = ptrtoint ptr %.pre116 to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit80

bb.q:                                             ; preds = %._crit_edge103
  %3 = icmp ult i64 %i.cu, %i.cs
  br i1 %3, label %bb.r, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit80

bb.r:                                             ; preds = %bb.q
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.cu ; 3 uses
  %.not.i.i78 = icmp eq ptr %i.co, %i.dk
  br i1 %.not.i.i78, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit80, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i79

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i79:      ; preds = %bb.r
  store ptr %i.dk, ptr %i.ai, align 8, !tbaa !221
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit80

_ZNSt6vectorIiSaIiEE6resizeEm.exit80:             ; preds = %bb.p, %bb.q, %bb.r, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i79
  %.pre-phi = phi i64 [ %.pre117, %bb.p ], [ %i.cq, %bb.q ], [ %i.cq, %bb.r ], [ %i.cq, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i79 ]
  %i.dl = phi ptr [ %.pre115, %bb.p ], [ %i.co, %bb.q ], [ %i.co, %bb.r ], [ %i.dk, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i79 ]
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = sub i64 %i.dm, %.pre-phi
  %i.do = ashr exact i64 %i.dn, 2
  store i64 %i.do, ptr %i.i, align 8, !tbaa !490
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit.thread.thread

.lr.ph102:                                        ; preds = %.lr.ph102.prol.loopexit, %.lr.ph102
  %.0101 = phi i64 [ %i.ee, %.lr.ph102 ], [ %.0101.unr, %.lr.ph102.prol.loopexit ] ; 5 uses
  %i.dp = getelementptr [4 x i8], ptr %i.cn, i64 %.0101 ; 2 uses
  %i.dq = getelementptr [4 x i8], ptr %i.dp, i64 %i.t
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !58
  store i32 %i.dr, ptr %i.dp, align 4, !tbaa !58
  %i.ds = getelementptr [4 x i8], ptr %i.cn, i64 %.0101
  %i.dt = getelementptr i8, ptr %i.ds, i64 4      ; 2 uses
  %i.du = getelementptr [4 x i8], ptr %i.dt, i64 %i.t
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !58
  store i32 %i.dv, ptr %i.dt, align 4, !tbaa !58
  %i.dw = getelementptr [4 x i8], ptr %i.cn, i64 %.0101
  %i.dx = getelementptr i8, ptr %i.dw, i64 8      ; 2 uses
  %i.dy = getelementptr [4 x i8], ptr %i.dx, i64 %i.t
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !58
  store i32 %i.dz, ptr %i.dx, align 4, !tbaa !58
  %i.ea = getelementptr [4 x i8], ptr %i.cn, i64 %.0101
  %i.eb = getelementptr i8, ptr %i.ea, i64 12     ; 2 uses
  %i.ec = getelementptr [4 x i8], ptr %i.eb, i64 %i.t
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !58
  store i32 %i.ed, ptr %i.eb, align 4, !tbaa !58
  %i.ee = add i64 %.0101, 4                       ; 2 uses
  %exitcond113.not.3 = icmp eq i64 %i.ee, %i.cu
  br i1 %exitcond113.not.3, label %._crit_edge103, label %.lr.ph102, !llvm.loop !1051

_ZNSt6vectorIiSaIiEE5clearEv.exit.thread.thread:  ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i74, %bb.j, %_ZNSt6vectorIiSaIiEE6resizeEm.exit80, %bb.a
  ret void
}

declare noundef i32 @_ZNK16common_ngram_mod3getEPKi(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN35common_speculative_impl_ngram_cacheC2ERKS_(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(232) %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV23common_speculative_impl, i64 16), ptr %0, align 8, !tbaa !243
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !194  ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !195  ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ugt i64 %i.j, 9223372036854775800
  br i1 %i.k, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i, !prof !104

.noexc.i.i.i:                                     ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #33
  unreachable

_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #34
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i, %bb.a
  %i.m = phi ptr [ null, %bb.a ], [ %i.l, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i ] ; 6 uses
  store ptr %i.m, ptr %i.c, align 8, !tbaa !195
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !194
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.j
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !196
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !197  ; 3 uses
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !197
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t                       ; 4 uses
  %i.v = icmp sgt i64 %i.u, 8
  br i1 %i.v, label %bb.d, label %bb.e, !prof !106

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.m, ptr align 8 %i.q, i64 %i.u, i1 false)
  br label %_ZN23common_speculative_implC2ERKS_.exit

bb.e:                                             ; preds = %bb.c
  %i.w = icmp eq i64 %i.u, 8
  br i1 %i.w, label %bb.f, label %_ZN23common_speculative_implC2ERKS_.exit

bb.f:                                             ; preds = %bb.e
  %i.x = load i64, ptr %i.q, align 8, !tbaa !56
  store i64 %i.x, ptr %i.m, align 8, !tbaa !56
  br label %_ZN23common_speculative_implC2ERKS_.exit

_ZN23common_speculative_implC2ERKS_.exit:         ; preds = %bb.d, %bb.e, %bb.f
  %i.y = getelementptr inbounds i8, ptr %i.m, i64 %i.u
  store ptr %i.y, ptr %i.n, align 8, !tbaa !194
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV35common_speculative_impl_ngram_cache, i64 16), ptr %0, align 8, !tbaa !243
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 136
  invoke void @_ZN37common_params_speculative_ngram_cacheC2ERKS_(ptr noundef nonnull align 8 dereferenceable(64) %i.ab, ptr noundef nonnull align 8 dereferenceable(64) %i.ac)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %_ZN23common_speculative_implC2ERKS_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.af = load i32, ptr %i.ae, align 8
  store i32 %i.af, ptr %i.ad, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 208
  invoke void @_ZNSt6vectorIN35common_speculative_impl_ngram_cache8seq_infoESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  ret void

bb.i:                                             ; preds = %_ZN23common_speculative_implC2ERKS_.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN37common_params_speculative_ngram_cacheD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.ab) #31
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.j ], [ %i.ai, %bb.i ]
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV23common_speculative_impl, i64 16), ptr %0, align 8, !tbaa !243
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !195 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i, label %_ZN23common_speculative_implD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = load ptr, ptr %i.p, align 8, !tbaa !196
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = sub i64 %i.am, %i.an
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ao) #32, !inline_history !281
  br label %_ZN23common_speculative_implD2Ev.exit

_ZN23common_speculative_implD2Ev.exit:            ; preds = %bb.k, %bb.l
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN35common_speculative_impl_ngram_cache8seq_infoESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !267  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !266    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv exact i64 %i.f, 176
  %i.h = icmp ugt i64 %i.g, 52405522936674862
  br i1 %i.h, label %.noexc.i, label %_ZNSt15__new_allocatorIN35common_speculative_impl_ngram_cache8seq_infoEE8allocateEmPKv.exit.i.i.i, !prof !104

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #33
  unreachable

_ZNSt15__new_allocatorIN35common_speculative_impl_ngram_cache8seq_infoEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #34
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN35common_speculative_impl_ngram_cache8seq_infoEE8allocateEmPKv.exit.i.i.i, %bb.a
  %i.j = phi ptr [ null, %bb.a ], [ %i.i, %_ZNSt15__new_allocatorIN35common_speculative_impl_ngram_cache8seq_infoEE8allocateEmPKv.exit.i.i.i ] ; 6 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !266
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !267
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !268
  %i.n = load ptr, ptr %1, align 8, !tbaa !325    ; 2 uses
end_hunk_0
