Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/gradient_index_page_source?download=true
inline.NumInlined: 6283
inline.NumDeleted: 2313
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 51
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm:bb.a
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit
  %i.aw = icmp eq i64 %i.k, 8
  br i1 %i.aw, label %bb.p, label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.ax = load i64, ptr %1, align 8, !tbaa !149
  store i64 %i.ax, ptr %.0.i.i.i.i.i, align 8, !tbaa !149
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.ay = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.k
  store ptr %i.az, ptr %i.c, align 8, !tbaa !167
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.ba, %.lr.ph.i.i.i71 ], [ %1, %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69 ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i72, align 8, !tbaa !149
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 8 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.ba, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !1148

bb.q:                                             ; preds = %bb.b
  %i.bb = load ptr, ptr %0, align 8, !tbaa !168   ; 5 uses
  %i.bc = ptrtoint ptr %i.bb to i64               ; 3 uses
  %i.bd = sub i64 %i.f, %i.bc
  %i.be = ashr exact i64 %i.bd, 3                 ; 4 uses
  %i.bf = sub nsw i64 1152921504606846975, %i.be
  %i.bg = icmp ult i64 %i.bf, %2
  br i1 %i.bg, label %bb.r, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.84) #32
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit:    ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.be, i64 %2)
  %i.bh = add nsw i64 %.sroa.speculated.i, %i.be  ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %i.be
  %i.bj = tail call i64 @llvm.umin.i64(i64 %i.bh, i64 1152921504606846975)
  %i.bk = select i1 %i.bi, i64 1152921504606846975, i64 %i.bj ; 3 uses
  %i.bl = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bm = sub i64 %i.bl, %i.bc                    ; 4 uses
  %.not.i = icmp eq i64 %i.bk, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit
  %i.bn = shl nuw nsw i64 %i.bk, 3
  %i.bo = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #31
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit
  %i.bp = phi ptr [ %i.bo, %bb.s ], [ null, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 %i.bm ; 4 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 3       ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx.i.i.i.i.i75
  %i.bs = load i64, ptr %3, align 8, !tbaa !149   ; 9 uses
  %i.bt = add nsw i64 %.idx.i.i.i.i.i75, -8       ; 2 uses
  %i.bu = lshr exact i64 %i.bt, 3
  %i.bv = add nuw nsw i64 %i.bu, 1
  %xtraiter114 = and i64 %i.bv, 7                 ; 2 uses
  %lcmp.mod115.not = icmp eq i64 %xtraiter114, 0
  br i1 %lcmp.mod115.not, label %.lr.ph.i.i.i.i.i.i.i76.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i76.prol

.lr.ph.i.i.i.i.i.i.i76.prol:                      ; preds = %bb.t, %.lr.ph.i.i.i.i.i.i.i76.prol
  %.06.i.i.i.i.i.i.i77.prol = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.i.i76.prol ], [ %i.bq, %bb.t ] ; 2 uses
  %prol.iter116 = phi i64 [ %prol.iter116.next, %.lr.ph.i.i.i.i.i.i.i76.prol ], [ 0, %bb.t ]
  store i64 %i.bs, ptr %.06.i.i.i.i.i.i.i77.prol, align 8, !tbaa !149
  %i.bw = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77.prol, i64 8 ; 2 uses
  %prol.iter116.next = add i64 %prol.iter116, 1   ; 2 uses
  %prol.iter116.cmp.not = icmp eq i64 %prol.iter116.next, %xtraiter114
  br i1 %prol.iter116.cmp.not, label %.lr.ph.i.i.i.i.i.i.i76.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i76.prol, !llvm.loop !1149

.lr.ph.i.i.i.i.i.i.i76.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i76.prol, %bb.t
  %.06.i.i.i.i.i.i.i77.unr = phi ptr [ %i.bq, %bb.t ], [ %i.bw, %.lr.ph.i.i.i.i.i.i.i76.prol ]
  %i.bx = icmp ult i64 %i.bt, 56
  br i1 %i.bx, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.unr, %.lr.ph.i.i.i.i.i.i.i76.prol.loopexit ] ; 9 uses
  store i64 %i.bs, ptr %.06.i.i.i.i.i.i.i77, align 8, !tbaa !149
  %i.by = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 8
  store i64 %i.bs, ptr %i.by, align 8, !tbaa !149
  %i.bz = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 16
  store i64 %i.bs, ptr %i.bz, align 8, !tbaa !149
  %i.ca = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 24
  store i64 %i.bs, ptr %i.ca, align 8, !tbaa !149
  %i.cb = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 32
  store i64 %i.bs, ptr %i.cb, align 8, !tbaa !149
  %i.cc = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 40
  store i64 %i.bs, ptr %i.cc, align 8, !tbaa !149
  %i.cd = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 48
  store i64 %i.bs, ptr %i.cd, align 8, !tbaa !149
  %i.ce = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 56
  store i64 %i.bs, ptr %i.ce, align 8, !tbaa !149
  %i.cf = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i78.7 = icmp eq ptr %i.cf, %i.br
  br i1 %.not.i.i.i.i.i.i.i78.7, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !1148

_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %.lr.ph.i.i.i.i.i.i.i76.prol.loopexit
  %i.cg = icmp sgt i64 %i.bm, 8
  br i1 %i.cg, label %bb.u, label %bb.v, !prof !219

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bp, ptr align 8 %i.bb, i64 %i.bm, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.ch = icmp eq i64 %i.bm, 8
  br i1 %i.ch, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.ci = load i64, ptr %i.bb, align 8, !tbaa !149
  store i64 %i.ci, ptr %i.bp, align 8, !tbaa !149
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %2 ; 3 uses
  %i.ck = sub i64 %i.f, %i.bl                     ; 4 uses
  %i.cl = icmp sgt i64 %i.ck, 8
  br i1 %i.cl, label %bb.x, label %bb.y, !prof !219

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cj, ptr align 8 %1, i64 %i.ck, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit
  %i.cm = icmp eq i64 %i.ck, 8
  br i1 %i.cm, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cn = load i64, ptr %1, align 8, !tbaa !149
  store i64 %i.cn, ptr %i.cj, align 8, !tbaa !149
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.co = getelementptr inbounds i8, ptr %i.cj, i64 %i.ck
  %.not.i82 = icmp eq ptr %i.bb, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cp = load ptr, ptr %i.a, align 8, !tbaa !203
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = sub i64 %i.cq, %i.bc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.cr) #33
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.bp, ptr %0, align 8, !tbaa !168
  store ptr %i.co, ptr %i.c, align 8, !tbaa !167
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bk
  store ptr %i.cs, ptr %i.a, align 8, !tbaa !203
  br label %_ZSt4fillIPmmEvT_S1_RKT0_.exit

_ZSt4fillIPmmEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common11ParallelForImZNS_16GHistIndexMatrix12GetRowCountsINS_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_EEvS6_iNS0_5SchedEOT0_(i64 noundef %0, i32 noundef %1, i32 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.std::unique_ptr.41", align 8 ; 8 uses
  %6 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.c = icmp eq i32 %1, 1
  br i1 %i.c, label %.preheader, label %bb.h

.preheader:                                       ; preds = %bb.a
  %.not160 = icmp eq i64 %0, 0
  br i1 %.not160, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph153.a

.lr.ph153.a:                                      ; preds = %.preheader
  %i.d = load ptr, ptr %4, align 8, !tbaa !1189, !nonnull !126, !align !197 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !464, !noalias !1190
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !126, !align !465 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.j = load i64, ptr %i.f, align 8, !tbaa !466, !noalias !1190 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph153.split.a

.lr.ph153.splitthread-pre-split.a:                ; preds = %_ZZN7xgboost16GHistIndexMatrix12GetRowCountsINS_4data17DenseAdapterBatchEEEDaRKT_fiENKUlmE_clEm.exit
  %.pr204 = load i64, ptr %i.f, align 8, !tbaa !466, !noalias !1190
  br label %.lr.ph153.split.a

.lr.ph153.split.a:                                ; preds = %.lr.ph153.a, %.lr.ph153.splitthread-pre-split.a
  %i.l = phi i64 [ %.pr204, %.lr.ph153.splitthread-pre-split.a ], [ %i.j, %.lr.ph153.a ] ; 6 uses
  %.049152 = phi i64 [ %i.at, %.lr.ph153.splitthread-pre-split.a ], [ 0, %.lr.ph153.a ] ; 5 uses
  %i.m = mul i64 %i.l, %.049152
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.m ; 3 uses
  %.not.i55 = icmp eq i64 %i.l, 0
  br i1 %.not.i55, label %_ZZN7xgboost16GHistIndexMatrix12GetRowCountsINS_4data17DenseAdapterBatchEEEDaRKT_fiENKUlmE_clEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph153.split.a
  %i.o = load ptr, ptr %i.i, align 8, !nonnull !126, !align !197 ; 3 uses
  %.pre9.i = load float, ptr %i.h, align 4        ; 2 uses
  %xtraiter255 = and i64 %i.l, 1
  %i.p = icmp eq i64 %i.l, 1
  br i1 %i.p, label %.epil.preheader.a, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter258 = and i64 %i.l, -2
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i.new
  %7 = phi float [ %.pre9.i, %.lr.ph.i.new ], [ %9, %bb.f ] ; 2 uses
  %.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.aj, %bb.f ] ; 3 uses
  %niter259 = phi i64 [ 0, %.lr.ph.i.new ], [ %niter259.next.1, %bb.f ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.08.i
  %i.r = load float, ptr %i.q, align 4, !tbaa !413, !noalias !1191 ; 2 uses
  %i.s = fcmp ord float %i.r, 0.000000e+00
  %i.t = fcmp une float %i.r, %7
  %i.u = select i1 %i.s, i1 %i.t, i1 false
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !168
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.049152 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !149
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.w, align 8, !tbaa !149
  %.pre.i = load float, ptr %i.h, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %8 = phi float [ %.pre.i, %bb.c ], [ %7, %bb.b ] ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.08.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !413, !noalias !1191 ; 2 uses
  %i.ac = fcmp ord float %i.ab, 0.000000e+00
  %i.ad = fcmp une float %i.ab, %8
  %i.ae = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.af = load ptr, ptr %i.o, align 8, !tbaa !168
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.049152 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !149
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !149
  %.pre.i.1 = load float, ptr %i.h, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %9 = phi float [ %.pre.i.1, %bb.e ], [ %8, %bb.d ] ; 2 uses
  %i.aj = add nuw i64 %.08.i, 2                   ; 2 uses
  %niter259.next.1 = add nuw i64 %niter259, 2     ; 2 uses
  %niter259.ncmp.1 = icmp eq i64 %niter259.next.1, %unroll_iter258
  br i1 %niter259.ncmp.1, label %_ZZN7xgboost16GHistIndexMatrix12GetRowCountsINS_4data17DenseAdapterBatchEEEDaRKT_fiENKUlmE_clEm.exit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !1154

_ZZN7xgboost16GHistIndexMatrix12GetRowCountsINS_4data17DenseAdapterBatchEEEDaRKT_fiENKUlmE_clEm.exit.loopexit.unr-lcssa: ; preds = %bb.f
  %lcmp.mod256.not = icmp eq i64 %xtraiter255, 0
  br i1 %lcmp.mod256.not, label %_ZZN7xgboost16GHistIndexMatrix12GetRowCountsINS_4data17DenseAdapterBatchEEEDaRKT_fiENKUlmE_clEm.exit, label %.epil.preheader.a

.epil.preheader.a:                                ; preds = %_ZZN7xgboost16GHistIndexMatrix12GetRowCountsINS_4data17DenseAdapterBatchEEEDaRKT_fiENKUlmE_clEm.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.epil.init283 = phi float [ %.pre9.i, %.lr.ph.i ], [ %9, %_ZZN7xgboost16GHistIndexMatrix12GetRowCountsINS_4data17DenseAdapterBatchEEEDaRKT_fiENKUlmE_clEm.exit.loopexit.unr-lcssa ]
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.aj, %_ZZN7xgboost16GHistIndexMatrix12GetRowCountsINS_4data17DenseAdapterBatchEEEDaRKT_fiENKUlmE_clEm.exit.loopexit.unr-lcssa ]
  %lcmp.mod257 = trunc i64 %i.l to i1
  tail call void @llvm.assume(i1 %lcmp.mod257)
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.08.i.epil.init
  %i.al = load float, ptr %i.ak, align 4, !tbaa !413, !noalias !1191 ; 2 uses
  %i.am = fcmp ord float %i.al, 0.000000e+00
  %i.an = fcmp une float %i.al, %.epil.init283
  %i.ao = select i1 %i.am, i1 %i.an, i1 false
  br i1 %i.ao, label %bb.g, label %_ZZN7xgboost16GHistIndexMatrix12GetRowCountsINS_4data17DenseAdapterBatchEEEDaRKT_fiENKUlmE_clEm.exit

bb.g:                                             ; preds = %.epil.preheader.a
  %i.ap = load ptr, ptr %i.o, align 8, !tbaa !168
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.049152 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !149
  %i.as = add i64 %i.ar, 1
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !149
  br label %_ZZN7xgboost16GHistIndexMatrix12GetRowCountsINS_4data17DenseAdapterBatchEEEDaRKT_fiENKUlmE_clEm.exit

_ZZN7xgboost16GHistIndexMatrix12GetRowCountsINS_4data17DenseAdapterBatchEEEDaRKT_fiENKUlmE_clEm.exit: ; preds = %_ZZN7xgboost16GHistIndexMatrix12GetRowCountsINS_4data17DenseAdapterBatchEEEDaRKT_fiENKUlmE_clEm.exit.loopexit.unr-lcssa, %bb.g, %.epil.preheader.a, %.lr.ph153.split.a
  %i.at = add nuw i64 %.049152, 1                 ; 2 uses
  %exitcond179.not = icmp eq i64 %i.at, %0
  br i1 %exitcond179.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph153.splitthread-pre-split.a, !llvm.loop !1155

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %1, ptr %i.a, align 4, !tbaa !128, !noalias !1192
  store i32 1, ptr %i.b, align 4, !tbaa !128, !noalias !1192
  %.not.i = icmp slt i32 %1, 1
  br i1 %.not.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.h
  call void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.41") align 8 %5, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %.pr = load ptr, ptr %5, align 8, !tbaa !143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.au = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.i
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.au, ptr noundef nonnull @.str.85, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.j

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.av = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.k ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.aw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull @.str.2, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull @.str.86, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ay = load ptr, ptr %5, align 8, !tbaa !143   ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !111
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !113
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef %i.az, i64 noundef %i.bb)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.k

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull @.str.4, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.m unwind label %bb.j

bb.j:                                             ; preds = %.noexc, %bb.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.l unwind label %bb.ao

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.be, %bb.j ], [ %i.bf, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %.pn

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %.pr127 = load ptr, ptr %5, align 8, !tbaa !143 ; 4 uses
  %.not.i64 = icmp eq ptr %.pr127, null
  br i1 %.not.i64, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = load ptr, ptr %.pr127, align 8, !tbaa !111 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.pr127, i64 16 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.n
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !112
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #33
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr127, i64 noundef 32) #33
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.m, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  switch i32 %2, label %_ZN4dmlc12OMPExceptionD2Ev.exit [
    i32 0, label %.preheader129
    i32 1, label %bb.s
    i32 2, label %bb.ab
    i32 3, label %.preheader139.a
  ]

.preheader139.a:                                  ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %.not154 = icmp eq i64 %0, 0
  br i1 %.not154, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader139.a
  %.sroa.0124.0.copyload = load ptr, ptr %4, align 8, !tbaa !428 ; 2 uses
  %.sroa.2125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2125.0.copyload = load ptr, ptr %.sroa.2125.0..sroa_idx, align 8, !tbaa !430 ; 3 uses
  %.sroa.3126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.3126.0.copyload = load ptr, ptr %.sroa.3126.0..sroa_idx, align 8, !tbaa !432 ; 3 uses
  %i.bl = load ptr, ptr %.sroa.0124.0.copyload, align 8, !tbaa !464, !noalias !1193
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0124.0.copyload, i64 16 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !466, !noalias !1193 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph.split

.preheader129:                                    ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %.not159 = icmp eq i64 %0, 0
  br i1 %.not159, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph151

.lr.ph151:                                        ; preds = %.preheader129
  %.sroa.096.0.copyload = load ptr, ptr %4, align 8, !tbaa !428 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !430 ; 3 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !432 ; 3 uses
  %i.bp = load ptr, ptr %.sroa.096.0.copyload, align 8, !tbaa !464, !noalias !1194
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.096.0.copyload, i64 16 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !466, !noalias !1194 ; 2 uses
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph151.split

.lr.ph151.splitthread-pre-split:                  ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit
  %.pr205 = load i64, ptr %i.bq, align 8, !tbaa !466, !noalias !1194
  br label %.lr.ph151.split

.lr.ph151.split:                                  ; preds = %.lr.ph151, %.lr.ph151.splitthread-pre-split
  %i.bt = phi i64 [ %.pr205, %.lr.ph151.splitthread-pre-split ], [ %i.br, %.lr.ph151 ] ; 6 uses
  %.044150 = phi i64 [ %i.da, %.lr.ph151.splitthread-pre-split ], [ 0, %.lr.ph151 ] ; 5 uses
  %i.bu = mul i64 %i.bt, %.044150
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bu ; 3 uses
  %.not.i.i = icmp eq i64 %i.bt, 0
  br i1 %.not.i.i, label %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph151.split
  %.pre9.i.i = load float, ptr %.sroa.2.0.copyload, align 4 ; 2 uses
  %xtraiter250 = and i64 %i.bt, 1
  %i.bw = icmp eq i64 %i.bt, 1
  br i1 %i.bw, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter253 = and i64 %i.bt, -2
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.q, %.lr.ph.i.i.preheader.new
  %10 = phi float [ %.pre9.i.i, %.lr.ph.i.i.preheader.new ], [ %12, %bb.q ] ; 2 uses
  %.08.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.cq, %bb.q ] ; 3 uses
  %niter254 = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter254.next.1, %bb.q ]
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %.08.i.i
  %i.by = load float, ptr %i.bx, align 4, !tbaa !413, !noalias !1195 ; 2 uses
  %i.bz = fcmp ord float %i.by, 0.000000e+00
  %i.ca = fcmp une float %i.by, %10
  %i.cb = select i1 %i.bz, i1 %i.ca, i1 false
  br i1 %i.cb, label %bb.o, label %.lr.ph.i.i.1

bb.o:                                             ; preds = %.lr.ph.i.i
  %i.cc = load ptr, ptr %.sroa.3.0.copyload, align 8, !tbaa !168
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %.044150 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !149
  %i.cf = add i64 %i.ce, 1
  store i64 %i.cf, ptr %i.cd, align 8, !tbaa !149
  %.pre.i.i = load float, ptr %.sroa.2.0.copyload, align 4
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.o, %.lr.ph.i.i
  %11 = phi float [ %.pre.i.i, %bb.o ], [ %10, %.lr.ph.i.i ] ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %.08.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !413, !noalias !1195 ; 2 uses
  %i.cj = fcmp ord float %i.ci, 0.000000e+00
  %i.ck = fcmp une float %i.ci, %11
  %i.cl = select i1 %i.cj, i1 %i.ck, i1 false
  br i1 %i.cl, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph.i.i.1
  %i.cm = load ptr, ptr %.sroa.3.0.copyload, align 8, !tbaa !168
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %.044150 ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !149
  %i.cp = add i64 %i.co, 1
  store i64 %i.cp, ptr %i.cn, align 8, !tbaa !149
  %.pre.i.i.1 = load float, ptr %.sroa.2.0.copyload, align 4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.i.i.1
  %12 = phi float [ %.pre.i.i.1, %bb.p ], [ %11, %.lr.ph.i.i.1 ] ; 2 uses
  %i.cq = add nuw i64 %.08.i.i, 2                 ; 2 uses
  %niter254.next.1 = add nuw i64 %niter254, 2     ; 2 uses
  %niter254.ncmp.1 = icmp eq i64 %niter254.next.1, %unroll_iter253
  br i1 %niter254.ncmp.1, label %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !1154

_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit.loopexit.unr-lcssa: ; preds = %bb.q
  %lcmp.mod251.not = icmp eq i64 %xtraiter250, 0
  br i1 %lcmp.mod251.not, label %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.epil.init275 = phi float [ %.pre9.i.i, %.lr.ph.i.i.preheader ], [ %12, %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit.loopexit.unr-lcssa ]
  %.08.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.cq, %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit.loopexit.unr-lcssa ]
  %lcmp.mod252 = trunc i64 %i.bt to i1
  call void @llvm.assume(i1 %lcmp.mod252)
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %.08.i.i.epil.init
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !413, !noalias !1195 ; 2 uses
  %i.ct = fcmp ord float %i.cs, 0.000000e+00
  %i.cu = fcmp une float %i.cs, %.epil.init275
  %i.cv = select i1 %i.ct, i1 %i.cu, i1 false
  br i1 %i.cv, label %bb.r, label %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit

bb.r:                                             ; preds = %.lr.ph.i.i.epil.preheader
  %i.cw = load ptr, ptr %.sroa.3.0.copyload, align 8, !tbaa !168
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %.044150 ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !149
  %i.cz = add i64 %i.cy, 1
  store i64 %i.cz, ptr %i.cx, align 8, !tbaa !149
  br label %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit

_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit: ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit.loopexit.unr-lcssa, %bb.r, %.lr.ph.i.i.epil.preheader, %.lr.ph151.split
  %i.da = add nuw i64 %.044150, 1                 ; 2 uses
  %exitcond178.not = icmp eq i64 %i.da, %0
  br i1 %exitcond178.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph151.splitthread-pre-split, !llvm.loop !1164

bb.s:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.db = icmp eq i64 %3, 0
  %.not158 = icmp eq i64 %0, 0                    ; 2 uses
  br i1 %i.db, label %.preheader131, label %.preheader133

.preheader133:                                    ; preds = %bb.s
  br i1 %.not158, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph147

.lr.ph147:                                        ; preds = %.preheader133
  %.sroa.0106.0.copyload = load ptr, ptr %4, align 8, !tbaa !428 ; 2 uses
  %.sroa.2107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2107.0.copyload = load ptr, ptr %.sroa.2107.0..sroa_idx, align 8, !tbaa !430 ; 3 uses
  %.sroa.3108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.3108.0.copyload = load ptr, ptr %.sroa.3108.0..sroa_idx, align 8, !tbaa !432 ; 3 uses
  %i.dc = load ptr, ptr %.sroa.0106.0.copyload, align 8, !tbaa !464, !noalias !1196
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0106.0.copyload, i64 16 ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !466, !noalias !1196 ; 2 uses
  %i.df = icmp eq i64 %i.de, 0
  br i1 %i.df, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph147.split

.preheader131:                                    ; preds = %bb.s
  br i1 %.not158, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph149

.lr.ph149:                                        ; preds = %.preheader131
  %.sroa.0100.0.copyload = load ptr, ptr %4, align 8, !tbaa !428 ; 2 uses
  %.sroa.2101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2101.0.copyload = load ptr, ptr %.sroa.2101.0..sroa_idx, align 8, !tbaa !430 ; 3 uses
  %.sroa.3102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.3102.0.copyload = load ptr, ptr %.sroa.3102.0..sroa_idx, align 8, !tbaa !432 ; 3 uses
  %i.dg = load ptr, ptr %.sroa.0100.0.copyload, align 8, !tbaa !464, !noalias !1197
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0100.0.copyload, i64 16 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !466, !noalias !1197 ; 2 uses
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph149.split

.lr.ph149.splitthread-pre-split:                  ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit69
  %.pr206 = load i64, ptr %i.dh, align 8, !tbaa !466, !noalias !1197
  br label %.lr.ph149.split

.lr.ph149.split:                                  ; preds = %.lr.ph149, %.lr.ph149.splitthread-pre-split
  %i.dk = phi i64 [ %.pr206, %.lr.ph149.splitthread-pre-split ], [ %i.di, %.lr.ph149 ] ; 6 uses
  %.043148 = phi i64 [ %i.er, %.lr.ph149.splitthread-pre-split ], [ 0, %.lr.ph149 ] ; 5 uses
  %i.dl = mul i64 %i.dk, %.043148
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.dl ; 3 uses
  %.not.i.i65 = icmp eq i64 %i.dk, 0
  br i1 %.not.i.i65, label %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit69, label %.lr.ph.i.i66.preheader

.lr.ph.i.i66.preheader:                           ; preds = %.lr.ph149.split
  %.pre9.i.i67 = load float, ptr %.sroa.2101.0.copyload, align 4 ; 2 uses
  %xtraiter245 = and i64 %i.dk, 1
  %i.dn = icmp eq i64 %i.dk, 1
  br i1 %i.dn, label %.lr.ph.i.i66.epil.preheader, label %.lr.ph.i.i66.preheader.new

.lr.ph.i.i66.preheader.new:                       ; preds = %.lr.ph.i.i66.preheader
  %unroll_iter248 = and i64 %i.dk, -2
  br label %.lr.ph.i.i66

.lr.ph.i.i66:                                     ; preds = %bb.v, %.lr.ph.i.i66.preheader.new
  %13 = phi float [ %.pre9.i.i67, %.lr.ph.i.i66.preheader.new ], [ %15, %bb.v ] ; 2 uses
  %.08.i.i67 = phi i64 [ 0, %.lr.ph.i.i66.preheader.new ], [ %i.eh, %bb.v ] ; 3 uses
  %niter249 = phi i64 [ 0, %.lr.ph.i.i66.preheader.new ], [ %niter249.next.1, %bb.v ]
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %.08.i.i67
  %i.dp = load float, ptr %i.do, align 4, !tbaa !413, !noalias !1198 ; 2 uses
  %i.dq = fcmp ord float %i.dp, 0.000000e+00
  %i.dr = fcmp une float %i.dp, %13
  %i.ds = select i1 %i.dq, i1 %i.dr, i1 false
  br i1 %i.ds, label %bb.t, label %.lr.ph.i.i66.1

bb.t:                                             ; preds = %.lr.ph.i.i66
  %i.dt = load ptr, ptr %.sroa.3102.0.copyload, align 8, !tbaa !168
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %.043148 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !149
  %i.dw = add i64 %i.dv, 1
  store i64 %i.dw, ptr %i.du, align 8, !tbaa !149
  %.pre.i.i70 = load float, ptr %.sroa.2101.0.copyload, align 4
  br label %.lr.ph.i.i66.1

.lr.ph.i.i66.1:                                   ; preds = %bb.t, %.lr.ph.i.i66
  %14 = phi float [ %.pre.i.i70, %bb.t ], [ %13, %.lr.ph.i.i66 ] ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %.08.i.i67
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !413, !noalias !1198 ; 2 uses
  %i.ea = fcmp ord float %i.dz, 0.000000e+00
  %i.eb = fcmp une float %i.dz, %14
  %i.ec = select i1 %i.ea, i1 %i.eb, i1 false
  br i1 %i.ec, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph.i.i66.1
  %i.ed = load ptr, ptr %.sroa.3102.0.copyload, align 8, !tbaa !168
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %.043148 ; 2 uses
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !149
  %i.eg = add i64 %i.ef, 1
  store i64 %i.eg, ptr %i.ee, align 8, !tbaa !149
  %.pre.i.i70.1 = load float, ptr %.sroa.2101.0.copyload, align 4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.i.i66.1
  %15 = phi float [ %.pre.i.i70.1, %bb.u ], [ %14, %.lr.ph.i.i66.1 ] ; 2 uses
  %i.eh = add nuw i64 %.08.i.i67, 2               ; 2 uses
  %niter249.next.1 = add nuw i64 %niter249, 2     ; 2 uses
  %niter249.ncmp.1 = icmp eq i64 %niter249.next.1, %unroll_iter248
  br i1 %niter249.ncmp.1, label %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit69.loopexit.unr-lcssa, label %.lr.ph.i.i66, !llvm.loop !1154

_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit69.loopexit.unr-lcssa: ; preds = %bb.v
  %lcmp.mod246.not = icmp eq i64 %xtraiter245, 0
  br i1 %lcmp.mod246.not, label %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit69, label %.lr.ph.i.i66.epil.preheader

.lr.ph.i.i66.epil.preheader:                      ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit69.loopexit.unr-lcssa, %.lr.ph.i.i66.preheader
  %.epil.init267 = phi float [ %.pre9.i.i67, %.lr.ph.i.i66.preheader ], [ %15, %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit69.loopexit.unr-lcssa ]
  %.08.i.i67.epil.init = phi i64 [ 0, %.lr.ph.i.i66.preheader ], [ %i.eh, %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit69.loopexit.unr-lcssa ]
  %lcmp.mod247 = trunc i64 %i.dk to i1
  call void @llvm.assume(i1 %lcmp.mod247)
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %.08.i.i67.epil.init
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !413, !noalias !1198 ; 2 uses
  %i.ek = fcmp ord float %i.ej, 0.000000e+00
  %i.el = fcmp une float %i.ej, %.epil.init267
  %i.em = select i1 %i.ek, i1 %i.el, i1 false
  br i1 %i.em, label %bb.w, label %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit69

bb.w:                                             ; preds = %.lr.ph.i.i66.epil.preheader
  %i.en = load ptr, ptr %.sroa.3102.0.copyload, align 8, !tbaa !168
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %.043148 ; 2 uses
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !149
  %i.eq = add i64 %i.ep, 1
  store i64 %i.eq, ptr %i.eo, align 8, !tbaa !149
  br label %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit69

_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit69: ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit69.loopexit.unr-lcssa, %bb.w, %.lr.ph.i.i66.epil.preheader, %.lr.ph149.split
  %i.er = add nuw i64 %.043148, 1                 ; 2 uses
  %exitcond177.not = icmp eq i64 %i.er, %0
  br i1 %exitcond177.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph149.splitthread-pre-split, !llvm.loop !1171

.lr.ph147.splitthread-pre-split:                  ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit74
  %.pr207 = load i64, ptr %i.dd, align 8, !tbaa !466, !noalias !1196
  br label %.lr.ph147.split

.lr.ph147.split:                                  ; preds = %.lr.ph147, %.lr.ph147.splitthread-pre-split
  %i.es = phi i64 [ %.pr207, %.lr.ph147.splitthread-pre-split ], [ %i.de, %.lr.ph147 ] ; 6 uses
  %.042146 = phi i64 [ %i.fz, %.lr.ph147.splitthread-pre-split ], [ 0, %.lr.ph147 ] ; 5 uses
  %i.et = mul i64 %i.es, %.042146
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.et ; 3 uses
  %.not.i.i70 = icmp eq i64 %i.es, 0
  br i1 %.not.i.i70, label %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit74, label %.lr.ph.i.i71.preheader

.lr.ph.i.i71.preheader:                           ; preds = %.lr.ph147.split
  %.pre9.i.i74 = load float, ptr %.sroa.2107.0.copyload, align 4 ; 2 uses
  %xtraiter240 = and i64 %i.es, 1
  %i.ev = icmp eq i64 %i.es, 1
  br i1 %i.ev, label %.lr.ph.i.i71.epil.preheader, label %.lr.ph.i.i71.preheader.new

.lr.ph.i.i71.preheader.new:                       ; preds = %.lr.ph.i.i71.preheader
  %unroll_iter243 = and i64 %i.es, -2
  br label %.lr.ph.i.i71

.lr.ph.i.i71:                                     ; preds = %bb.z, %.lr.ph.i.i71.preheader.new
  %16 = phi float [ %.pre9.i.i74, %.lr.ph.i.i71.preheader.new ], [ %18, %bb.z ] ; 2 uses
  %.08.i.i72 = phi i64 [ 0, %.lr.ph.i.i71.preheader.new ], [ %i.fp, %bb.z ] ; 3 uses
  %niter244 = phi i64 [ 0, %.lr.ph.i.i71.preheader.new ], [ %niter244.next.1, %bb.z ]
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %.08.i.i72
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !413, !noalias !1199 ; 2 uses
  %i.ey = fcmp ord float %i.ex, 0.000000e+00
  %i.ez = fcmp une float %i.ex, %16
  %i.fa = select i1 %i.ey, i1 %i.ez, i1 false
  br i1 %i.fa, label %bb.x, label %.lr.ph.i.i71.1

bb.x:                                             ; preds = %.lr.ph.i.i71
  %i.fb = load ptr, ptr %.sroa.3108.0.copyload, align 8, !tbaa !168
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %.042146 ; 2 uses
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !149
  %i.fe = add i64 %i.fd, 1
  store i64 %i.fe, ptr %i.fc, align 8, !tbaa !149
  %.pre.i.i77 = load float, ptr %.sroa.2107.0.copyload, align 4
  br label %.lr.ph.i.i71.1

.lr.ph.i.i71.1:                                   ; preds = %bb.x, %.lr.ph.i.i71
  %17 = phi float [ %.pre.i.i77, %bb.x ], [ %16, %.lr.ph.i.i71 ] ; 2 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %.08.i.i72
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !413, !noalias !1199 ; 2 uses
  %i.fi = fcmp ord float %i.fh, 0.000000e+00
  %i.fj = fcmp une float %i.fh, %17
  %i.fk = select i1 %i.fi, i1 %i.fj, i1 false
  br i1 %i.fk, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph.i.i71.1
  %i.fl = load ptr, ptr %.sroa.3108.0.copyload, align 8, !tbaa !168
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %.042146 ; 2 uses
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !149
  %i.fo = add i64 %i.fn, 1
  store i64 %i.fo, ptr %i.fm, align 8, !tbaa !149
  %.pre.i.i77.1 = load float, ptr %.sroa.2107.0.copyload, align 4
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph.i.i71.1
  %18 = phi float [ %.pre.i.i77.1, %bb.y ], [ %17, %.lr.ph.i.i71.1 ] ; 2 uses
  %i.fp = add nuw i64 %.08.i.i72, 2               ; 2 uses
  %niter244.next.1 = add nuw i64 %niter244, 2     ; 2 uses
  %niter244.ncmp.1 = icmp eq i64 %niter244.next.1, %unroll_iter243
  br i1 %niter244.ncmp.1, label %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit74.loopexit.unr-lcssa, label %.lr.ph.i.i71, !llvm.loop !1154

_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit74.loopexit.unr-lcssa: ; preds = %bb.z
  %lcmp.mod241.not = icmp eq i64 %xtraiter240, 0
  br i1 %lcmp.mod241.not, label %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit74, label %.lr.ph.i.i71.epil.preheader

.lr.ph.i.i71.epil.preheader:                      ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit74.loopexit.unr-lcssa, %.lr.ph.i.i71.preheader
  %.epil.init259 = phi float [ %.pre9.i.i74, %.lr.ph.i.i71.preheader ], [ %18, %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit74.loopexit.unr-lcssa ]
  %.08.i.i72.epil.init = phi i64 [ 0, %.lr.ph.i.i71.preheader ], [ %i.fp, %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit74.loopexit.unr-lcssa ]
  %lcmp.mod242 = trunc i64 %i.es to i1
  call void @llvm.assume(i1 %lcmp.mod242)
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %.08.i.i72.epil.init
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !413, !noalias !1199 ; 2 uses
  %i.fs = fcmp ord float %i.fr, 0.000000e+00
  %i.ft = fcmp une float %i.fr, %.epil.init259
  %i.fu = select i1 %i.fs, i1 %i.ft, i1 false
  br i1 %i.fu, label %bb.aa, label %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit74

bb.aa:                                            ; preds = %.lr.ph.i.i71.epil.preheader
  %i.fv = load ptr, ptr %.sroa.3108.0.copyload, align 8, !tbaa !168
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %.042146 ; 2 uses
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !149
  %i.fy = add i64 %i.fx, 1
  store i64 %i.fy, ptr %i.fw, align 8, !tbaa !149
  br label %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit74

_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit74: ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit74.loopexit.unr-lcssa, %bb.aa, %.lr.ph.i.i71.epil.preheader, %.lr.ph147.split
  %i.fz = add nuw i64 %.042146, 1                 ; 2 uses
  %exitcond176.not = icmp eq i64 %i.fz, %0
  br i1 %exitcond176.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph147.splitthread-pre-split, !llvm.loop !1174

bb.ab:                                            ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.ga = icmp eq i64 %3, 0
  %.not156 = icmp eq i64 %0, 0                    ; 2 uses
  br i1 %i.ga, label %.preheader135, label %.preheader137

.preheader137:                                    ; preds = %bb.ab
  br i1 %.not156, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph143

.lr.ph143:                                        ; preds = %.preheader137
  %.sroa.0118.0.copyload = load ptr, ptr %4, align 8, !tbaa !428 ; 2 uses
  %.sroa.2119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2119.0.copyload = load ptr, ptr %.sroa.2119.0..sroa_idx, align 8, !tbaa !430 ; 3 uses
  %.sroa.3120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.3120.0.copyload = load ptr, ptr %.sroa.3120.0..sroa_idx, align 8, !tbaa !432 ; 3 uses
  %i.gb = load ptr, ptr %.sroa.0118.0.copyload, align 8, !tbaa !464, !noalias !1200
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.0118.0.copyload, i64 16 ; 2 uses
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !466, !noalias !1200 ; 2 uses
  %i.ge = icmp eq i64 %i.gd, 0
  br i1 %i.ge, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph143.split

.preheader135:                                    ; preds = %bb.ab
  br i1 %.not156, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph145

.lr.ph145:                                        ; preds = %.preheader135
  %.sroa.0112.0.copyload = load ptr, ptr %4, align 8, !tbaa !428 ; 2 uses
  %.sroa.2113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2113.0.copyload = load ptr, ptr %.sroa.2113.0..sroa_idx, align 8, !tbaa !430 ; 3 uses
  %.sroa.3114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.3114.0.copyload = load ptr, ptr %.sroa.3114.0..sroa_idx, align 8, !tbaa !432 ; 3 uses
  %i.gf = load ptr, ptr %.sroa.0112.0.copyload, align 8, !tbaa !464, !noalias !1201
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.0112.0.copyload, i64 16 ; 2 uses
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !466, !noalias !1201 ; 2 uses
  %i.gi = icmp eq i64 %i.gh, 0
  br i1 %i.gi, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph145.split

.lr.ph145.splitthread-pre-split:                  ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit79
  %.pr208 = load i64, ptr %i.gg, align 8, !tbaa !466, !noalias !1201
  br label %.lr.ph145.split

.lr.ph145.split:                                  ; preds = %.lr.ph145, %.lr.ph145.splitthread-pre-split
  %i.gj = phi i64 [ %.pr208, %.lr.ph145.splitthread-pre-split ], [ %i.gh, %.lr.ph145 ] ; 6 uses
  %.041144 = phi i64 [ %i.hq, %.lr.ph145.splitthread-pre-split ], [ 0, %.lr.ph145 ] ; 5 uses
  %i.gk = mul i64 %i.gj, %.041144
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %i.gk ; 3 uses
  %.not.i.i75 = icmp eq i64 %i.gj, 0
  br i1 %.not.i.i75, label %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit79, label %.lr.ph.i.i76.preheader

.lr.ph.i.i76.preheader:                           ; preds = %.lr.ph145.split
  %.pre9.i.i81 = load float, ptr %.sroa.2113.0.copyload, align 4 ; 2 uses
  %xtraiter235 = and i64 %i.gj, 1
  %i.gm = icmp eq i64 %i.gj, 1
  br i1 %i.gm, label %.lr.ph.i.i76.epil.preheader, label %.lr.ph.i.i76.preheader.new

.lr.ph.i.i76.preheader.new:                       ; preds = %.lr.ph.i.i76.preheader
  %unroll_iter238 = and i64 %i.gj, -2
  br label %.lr.ph.i.i76

.lr.ph.i.i76:                                     ; preds = %bb.ae, %.lr.ph.i.i76.preheader.new
  %19 = phi float [ %.pre9.i.i81, %.lr.ph.i.i76.preheader.new ], [ %21, %bb.ae ] ; 2 uses
  %.08.i.i77 = phi i64 [ 0, %.lr.ph.i.i76.preheader.new ], [ %i.hg, %bb.ae ] ; 3 uses
  %niter239 = phi i64 [ 0, %.lr.ph.i.i76.preheader.new ], [ %niter239.next.1, %bb.ae ]
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %.08.i.i77
  %i.go = load float, ptr %i.gn, align 4, !tbaa !413, !noalias !1202 ; 2 uses
  %i.gp = fcmp ord float %i.go, 0.000000e+00
  %i.gq = fcmp une float %i.go, %19
  %i.gr = select i1 %i.gp, i1 %i.gq, i1 false
  br i1 %i.gr, label %bb.ac, label %.lr.ph.i.i76.1

bb.ac:                                            ; preds = %.lr.ph.i.i76
  %i.gs = load ptr, ptr %.sroa.3114.0.copyload, align 8, !tbaa !168
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %.041144 ; 2 uses
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !149
  %i.gv = add i64 %i.gu, 1
  store i64 %i.gv, ptr %i.gt, align 8, !tbaa !149
  %.pre.i.i84 = load float, ptr %.sroa.2113.0.copyload, align 4
  br label %.lr.ph.i.i76.1

.lr.ph.i.i76.1:                                   ; preds = %bb.ac, %.lr.ph.i.i76
  %20 = phi float [ %.pre.i.i84, %bb.ac ], [ %19, %.lr.ph.i.i76 ] ; 2 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %.08.i.i77
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 4
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !413, !noalias !1202 ; 2 uses
  %i.gz = fcmp ord float %i.gy, 0.000000e+00
  %i.ha = fcmp une float %i.gy, %20
  %i.hb = select i1 %i.gz, i1 %i.ha, i1 false
  br i1 %i.hb, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.i.i76.1
  %i.hc = load ptr, ptr %.sroa.3114.0.copyload, align 8, !tbaa !168
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %.041144 ; 2 uses
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !149
  %i.hf = add i64 %i.he, 1
  store i64 %i.hf, ptr %i.hd, align 8, !tbaa !149
  %.pre.i.i84.1 = load float, ptr %.sroa.2113.0.copyload, align 4
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.lr.ph.i.i76.1
  %21 = phi float [ %.pre.i.i84.1, %bb.ad ], [ %20, %.lr.ph.i.i76.1 ] ; 2 uses
  %i.hg = add nuw i64 %.08.i.i77, 2               ; 2 uses
  %niter239.next.1 = add nuw i64 %niter239, 2     ; 2 uses
  %niter239.ncmp.1 = icmp eq i64 %niter239.next.1, %unroll_iter238
  br i1 %niter239.ncmp.1, label %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit79.loopexit.unr-lcssa, label %.lr.ph.i.i76, !llvm.loop !1154

_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit79.loopexit.unr-lcssa: ; preds = %bb.ae
  %lcmp.mod236.not = icmp eq i64 %xtraiter235, 0
  br i1 %lcmp.mod236.not, label %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit79, label %.lr.ph.i.i76.epil.preheader

.lr.ph.i.i76.epil.preheader:                      ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit79.loopexit.unr-lcssa, %.lr.ph.i.i76.preheader
  %.epil.init251 = phi float [ %.pre9.i.i81, %.lr.ph.i.i76.preheader ], [ %21, %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit79.loopexit.unr-lcssa ]
  %.08.i.i77.epil.init = phi i64 [ 0, %.lr.ph.i.i76.preheader ], [ %i.hg, %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit79.loopexit.unr-lcssa ]
  %lcmp.mod237 = trunc i64 %i.gj to i1
  call void @llvm.assume(i1 %lcmp.mod237)
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %.08.i.i77.epil.init
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !413, !noalias !1202 ; 2 uses
  %i.hj = fcmp ord float %i.hi, 0.000000e+00
  %i.hk = fcmp une float %i.hi, %.epil.init251
  %i.hl = select i1 %i.hj, i1 %i.hk, i1 false
  br i1 %i.hl, label %bb.af, label %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit79

bb.af:                                            ; preds = %.lr.ph.i.i76.epil.preheader
  %i.hm = load ptr, ptr %.sroa.3114.0.copyload, align 8, !tbaa !168
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %.041144 ; 2 uses
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !149
  %i.hp = add i64 %i.ho, 1
  store i64 %i.hp, ptr %i.hn, align 8, !tbaa !149
  br label %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit79

_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit79: ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit79.loopexit.unr-lcssa, %bb.af, %.lr.ph.i.i76.epil.preheader, %.lr.ph145.split
  %i.hq = add nuw i64 %.041144, 1                 ; 2 uses
  %exitcond175.not = icmp eq i64 %i.hq, %0
  br i1 %exitcond175.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph145.splitthread-pre-split, !llvm.loop !1181

.lr.ph143.splitthread-pre-split:                  ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit84
  %.pr209 = load i64, ptr %i.gc, align 8, !tbaa !466, !noalias !1200
  br label %.lr.ph143.split

.lr.ph143.split:                                  ; preds = %.lr.ph143, %.lr.ph143.splitthread-pre-split
  %i.hr = phi i64 [ %.pr209, %.lr.ph143.splitthread-pre-split ], [ %i.gd, %.lr.ph143 ] ; 6 uses
  %.040142 = phi i64 [ %i.iy, %.lr.ph143.splitthread-pre-split ], [ 0, %.lr.ph143 ] ; 5 uses
  %i.hs = mul i64 %i.hr, %.040142
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %i.hs ; 3 uses
  %.not.i.i80 = icmp eq i64 %i.hr, 0
  br i1 %.not.i.i80, label %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit84, label %.lr.ph.i.i81.preheader

.lr.ph.i.i81.preheader:                           ; preds = %.lr.ph143.split
  %.pre9.i.i88 = load float, ptr %.sroa.2119.0.copyload, align 4 ; 2 uses
  %xtraiter230 = and i64 %i.hr, 1
  %i.hu = icmp eq i64 %i.hr, 1
  br i1 %i.hu, label %.lr.ph.i.i81.epil.preheader, label %.lr.ph.i.i81.preheader.new

.lr.ph.i.i81.preheader.new:                       ; preds = %.lr.ph.i.i81.preheader
  %unroll_iter233 = and i64 %i.hr, -2
  br label %.lr.ph.i.i81

.lr.ph.i.i81:                                     ; preds = %bb.ai, %.lr.ph.i.i81.preheader.new
  %22 = phi float [ %.pre9.i.i88, %.lr.ph.i.i81.preheader.new ], [ %24, %bb.ai ] ; 2 uses
  %.08.i.i82 = phi i64 [ 0, %.lr.ph.i.i81.preheader.new ], [ %i.io, %bb.ai ] ; 3 uses
  %niter234 = phi i64 [ 0, %.lr.ph.i.i81.preheader.new ], [ %niter234.next.1, %bb.ai ]
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %.08.i.i82
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !413, !noalias !1203 ; 2 uses
  %i.hx = fcmp ord float %i.hw, 0.000000e+00
  %i.hy = fcmp une float %i.hw, %22
  %i.hz = select i1 %i.hx, i1 %i.hy, i1 false
  br i1 %i.hz, label %bb.ag, label %.lr.ph.i.i81.1

bb.ag:                                            ; preds = %.lr.ph.i.i81
  %i.ia = load ptr, ptr %.sroa.3120.0.copyload, align 8, !tbaa !168
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %.040142 ; 2 uses
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !149
  %i.id = add i64 %i.ic, 1
  store i64 %i.id, ptr %i.ib, align 8, !tbaa !149
  %.pre.i.i91 = load float, ptr %.sroa.2119.0.copyload, align 4
  br label %.lr.ph.i.i81.1

.lr.ph.i.i81.1:                                   ; preds = %bb.ag, %.lr.ph.i.i81
  %23 = phi float [ %.pre.i.i91, %bb.ag ], [ %22, %.lr.ph.i.i81 ] ; 2 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %.08.i.i82
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 4
  %i.ig = load float, ptr %i.if, align 4, !tbaa !413, !noalias !1203 ; 2 uses
  %i.ih = fcmp ord float %i.ig, 0.000000e+00
  %i.ii = fcmp une float %i.ig, %23
  %i.ij = select i1 %i.ih, i1 %i.ii, i1 false
  br i1 %i.ij, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.lr.ph.i.i81.1
  %i.ik = load ptr, ptr %.sroa.3120.0.copyload, align 8, !tbaa !168
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %.040142 ; 2 uses
  %i.im = load i64, ptr %i.il, align 8, !tbaa !149
  %i.in = add i64 %i.im, 1
  store i64 %i.in, ptr %i.il, align 8, !tbaa !149
  %.pre.i.i91.1 = load float, ptr %.sroa.2119.0.copyload, align 4
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.lr.ph.i.i81.1
  %24 = phi float [ %.pre.i.i91.1, %bb.ah ], [ %23, %.lr.ph.i.i81.1 ] ; 2 uses
  %i.io = add nuw i64 %.08.i.i82, 2               ; 2 uses
  %niter234.next.1 = add nuw i64 %niter234, 2     ; 2 uses
  %niter234.ncmp.1 = icmp eq i64 %niter234.next.1, %unroll_iter233
  br i1 %niter234.ncmp.1, label %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit84.loopexit.unr-lcssa, label %.lr.ph.i.i81, !llvm.loop !1154

_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit84.loopexit.unr-lcssa: ; preds = %bb.ai
  %lcmp.mod231.not = icmp eq i64 %xtraiter230, 0
  br i1 %lcmp.mod231.not, label %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit84, label %.lr.ph.i.i81.epil.preheader

.lr.ph.i.i81.epil.preheader:                      ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit84.loopexit.unr-lcssa, %.lr.ph.i.i81.preheader
  %.epil.init243 = phi float [ %.pre9.i.i88, %.lr.ph.i.i81.preheader ], [ %24, %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit84.loopexit.unr-lcssa ]
  %.08.i.i82.epil.init = phi i64 [ 0, %.lr.ph.i.i81.preheader ], [ %i.io, %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit84.loopexit.unr-lcssa ]
  %lcmp.mod232 = trunc i64 %i.hr to i1
  call void @llvm.assume(i1 %lcmp.mod232)
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %.08.i.i82.epil.init
  %i.iq = load float, ptr %i.ip, align 4, !tbaa !413, !noalias !1203 ; 2 uses
  %i.ir = fcmp ord float %i.iq, 0.000000e+00
  %i.is = fcmp une float %i.iq, %.epil.init243
  %i.it = select i1 %i.ir, i1 %i.is, i1 false
  br i1 %i.it, label %bb.aj, label %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit84

bb.aj:                                            ; preds = %.lr.ph.i.i81.epil.preheader
  %i.iu = load ptr, ptr %.sroa.3120.0.copyload, align 8, !tbaa !168
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %.040142 ; 2 uses
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !149
  %i.ix = add i64 %i.iw, 1
  store i64 %i.ix, ptr %i.iv, align 8, !tbaa !149
  br label %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit84

_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit84: ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit84.loopexit.unr-lcssa, %bb.aj, %.lr.ph.i.i81.epil.preheader, %.lr.ph143.split
  %i.iy = add nuw i64 %.040142, 1                 ; 2 uses
  %exitcond174.not = icmp eq i64 %i.iy, %0
  br i1 %exitcond174.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph143.splitthread-pre-split, !llvm.loop !1184

.lr.ph.splitthread-pre-split:                     ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit89
  %.pr210 = load i64, ptr %i.bm, align 8, !tbaa !466, !noalias !1193
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %i.iz = phi i64 [ %.pr210, %.lr.ph.splitthread-pre-split ], [ %i.bn, %.lr.ph ] ; 6 uses
  %.0141 = phi i64 [ %i.kg, %.lr.ph.splitthread-pre-split ], [ 0, %.lr.ph ] ; 5 uses
  %i.ja = mul i64 %i.iz, %.0141
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.ja ; 3 uses
  %.not.i.i85 = icmp eq i64 %i.iz, 0
  br i1 %.not.i.i85, label %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit89, label %.lr.ph.i.i86.preheader

.lr.ph.i.i86.preheader:                           ; preds = %.lr.ph.split
  %.pre9.i.i95 = load float, ptr %.sroa.2125.0.copyload, align 4 ; 2 uses
  %xtraiter = and i64 %i.iz, 1
  %i.jc = icmp eq i64 %i.iz, 1
  br i1 %i.jc, label %.lr.ph.i.i86.epil.preheader, label %.lr.ph.i.i86.preheader.new

.lr.ph.i.i86.preheader.new:                       ; preds = %.lr.ph.i.i86.preheader
  %unroll_iter = and i64 %i.iz, -2
  br label %.lr.ph.i.i86

.lr.ph.i.i86:                                     ; preds = %bb.am, %.lr.ph.i.i86.preheader.new
  %25 = phi float [ %.pre9.i.i95, %.lr.ph.i.i86.preheader.new ], [ %27, %bb.am ] ; 2 uses
  %.08.i.i87 = phi i64 [ 0, %.lr.ph.i.i86.preheader.new ], [ %i.jw, %bb.am ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i86.preheader.new ], [ %niter.next.1, %bb.am ]
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %.08.i.i87
  %i.je = load float, ptr %i.jd, align 4, !tbaa !413, !noalias !1204 ; 2 uses
  %i.jf = fcmp ord float %i.je, 0.000000e+00
  %i.jg = fcmp une float %i.je, %25
  %i.jh = select i1 %i.jf, i1 %i.jg, i1 false
  br i1 %i.jh, label %bb.ak, label %.lr.ph.i.i86.1

bb.ak:                                            ; preds = %.lr.ph.i.i86
  %i.ji = load ptr, ptr %.sroa.3126.0.copyload, align 8, !tbaa !168
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %.0141 ; 2 uses
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !149
  %i.jl = add i64 %i.jk, 1
  store i64 %i.jl, ptr %i.jj, align 8, !tbaa !149
  %.pre.i.i98 = load float, ptr %.sroa.2125.0.copyload, align 4
  br label %.lr.ph.i.i86.1

.lr.ph.i.i86.1:                                   ; preds = %bb.ak, %.lr.ph.i.i86
  %26 = phi float [ %.pre.i.i98, %bb.ak ], [ %25, %.lr.ph.i.i86 ] ; 2 uses
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %.08.i.i87
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 4
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !413, !noalias !1204 ; 2 uses
  %i.jp = fcmp ord float %i.jo, 0.000000e+00
  %i.jq = fcmp une float %i.jo, %26
  %i.jr = select i1 %i.jp, i1 %i.jq, i1 false
  br i1 %i.jr, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.lr.ph.i.i86.1
  %i.js = load ptr, ptr %.sroa.3126.0.copyload, align 8, !tbaa !168
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %.0141 ; 2 uses
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !149
  %i.jv = add i64 %i.ju, 1
  store i64 %i.jv, ptr %i.jt, align 8, !tbaa !149
  %.pre.i.i98.1 = load float, ptr %.sroa.2125.0.copyload, align 4
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.lr.ph.i.i86.1
  %27 = phi float [ %.pre.i.i98.1, %bb.al ], [ %26, %.lr.ph.i.i86.1 ] ; 2 uses
  %i.jw = add nuw i64 %.08.i.i87, 2               ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit89.loopexit.unr-lcssa, label %.lr.ph.i.i86, !llvm.loop !1154

_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit89.loopexit.unr-lcssa: ; preds = %bb.am
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit89, label %.lr.ph.i.i86.epil.preheader

.lr.ph.i.i86.epil.preheader:                      ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit89.loopexit.unr-lcssa, %.lr.ph.i.i86.preheader
  %.epil.init = phi float [ %.pre9.i.i95, %.lr.ph.i.i86.preheader ], [ %27, %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit89.loopexit.unr-lcssa ]
  %.08.i.i87.epil.init = phi i64 [ 0, %.lr.ph.i.i86.preheader ], [ %i.jw, %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit89.loopexit.unr-lcssa ]
  %lcmp.mod229 = trunc i64 %i.iz to i1
  call void @llvm.assume(i1 %lcmp.mod229)
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %.08.i.i87.epil.init
  %i.jy = load float, ptr %i.jx, align 4, !tbaa !413, !noalias !1204 ; 2 uses
  %i.jz = fcmp ord float %i.jy, 0.000000e+00
  %i.ka = fcmp une float %i.jy, %.epil.init
  %i.kb = select i1 %i.jz, i1 %i.ka, i1 false
  br i1 %i.kb, label %bb.an, label %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit89

bb.an:                                            ; preds = %.lr.ph.i.i86.epil.preheader
  %i.kc = load ptr, ptr %.sroa.3126.0.copyload, align 8, !tbaa !168
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %.0141 ; 2 uses
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !149
  %i.kf = add i64 %i.ke, 1
  store i64 %i.kf, ptr %i.kd, align 8, !tbaa !149
  br label %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit89

_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit89: ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit89.loopexit.unr-lcssa, %bb.an, %.lr.ph.i.i86.epil.preheader, %.lr.ph.split
  %i.kg = add nuw i64 %.0141, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.kg, %0
  br i1 %exitcond.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph.splitthread-pre-split, !llvm.loop !1187

_ZN4dmlc12OMPExceptionD2Ev.exit:                  ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit89, %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit84, %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit79, %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit74, %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit69, %_ZN4dmlc12OMPException3RunIZN7xgboost16GHistIndexMatrix12GetRowCountsINS2_4data17DenseAdapterBatchEEEDaRKT_fiEUlmE_JmEEEvS7_DpT0_.exit, %_ZZN7xgboost16GHistIndexMatrix12GetRowCountsINS_4data17DenseAdapterBatchEEEDaRKT_fiENKUlmE_clEm.exit, %.lr.ph145, %.lr.ph143, %.lr.ph149, %.lr.ph147, %.lr.ph151, %.lr.ph, %.lr.ph153.a, %.preheader139.a, %.preheader137, %.preheader135, %.preheader133, %.preheader131, %.preheader129, %.preheader, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  ret void

bb.ao:                                            ; preds = %bb.k
  %i.kh = landingpad { ptr, i32 }
          catch ptr null
  %i.ki = extractvalue { ptr, i32 } %i.kh, 0
  call void @__clang_call_terminate(ptr %i.ki) #30
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #26

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common11ParallelForImZNS0_10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data17DenseAdapterBatchEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSB_SB_T1_T0_EUlSB_E_EEvSB_iNS0_5SchedEOSM_(i64 noundef %0, i32 noundef %1, i32 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(40) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.std::unique_ptr.41", align 8 ; 8 uses
  %6 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.c = icmp eq i32 %1, 1
  br i1 %i.c, label %.preheader, label %bb.h

.preheader:                                       ; preds = %bb.a
  %.not190 = icmp eq i64 %0, 0
  br i1 %.not190, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph183

.lr.ph183:                                        ; preds = %.preheader
  %i.d = load ptr, ptr %4, align 8, !tbaa !1223, !nonnull !126, !align !197
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1224, !nonnull !126, !align !197
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !126, !align !197
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !126, !align !197 ; 6 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !126, !align !197
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph183, %_ZZN7xgboost6common10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data17DenseAdapterBatchEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSA_SA_T1_T0_ENKUlSA_E_clImEEDaSA_.exit
  %.049182 = phi i64 [ 0, %.lr.ph183 ], [ %i.bh, %_ZZN7xgboost6common10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data17DenseAdapterBatchEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSA_SA_T1_T0_ENKUlSA_E_clImEEDaSA_.exit ] ; 5 uses
  %i.m = load i64, ptr %i.d, align 8, !tbaa !149  ; 3 uses
  %i.n = mul i64 %i.m, %.049182                   ; 3 uses
  %i.o = load i64, ptr %i.f, align 8, !tbaa !149
  %i.p = add i64 %i.o, -1
  %i.q = icmp eq i64 %.049182, %i.p
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = load i64, ptr %i.h, align 8, !tbaa !149
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.s = add nuw i64 %.049182, 1
  %i.t = mul i64 %i.m, %i.s
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.u = phi i64 [ %i.r, %bb.c ], [ %i.t, %bb.d ] ; 3 uses
  %i.v = icmp ult i64 %i.n, %i.u
  br i1 %i.v, label %.lr.ph.i, label %_ZZN7xgboost6common10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data17DenseAdapterBatchEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSA_SA_T1_T0_ENKUlSA_E_clImEEDaSA_.exit

.lr.ph.i:                                         ; preds = %bb.e
  %.sroa.6.0.copyload.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !432
  %i.w = load ptr, ptr %.sroa.6.0.copyload.i.i, align 8, !tbaa !168 ; 5 uses
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !285
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 5 uses
  %i.z = mul i64 %.049182, %i.m                   ; 2 uses
  %i.aa = sub i64 %i.u, %i.z                      ; 2 uses
  %xtraiter282 = and i64 %i.aa, 3                 ; 3 uses
  %i.ab = sub i64 %i.z, %i.u
  %i.ac = icmp ugt i64 %i.ab, -4
  br i1 %i.ac, label %.epil.preheader281, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter286 = and i64 %i.aa, -4
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.new
  %.014.i = phi i64 [ %i.n, %.lr.ph.i.new ], [ %i.ba, %bb.f ] ; 6 uses
  %.01113.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.ay, %bb.f ]
  %niter287 = phi i64 [ 0, %.lr.ph.i.new ], [ %niter287.next.3, %bb.f ]
  %.sroa.0.0.copyload1.i.i = load i64, ptr %i.j, align 8, !tbaa !149
  %i.ad = getelementptr [8 x i8], ptr %i.w, i64 %.sroa.0.0.copyload1.i.i
  %i.ae = getelementptr [8 x i8], ptr %i.ad, i64 %.014.i
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !149
  %i.ag = add i64 %i.af, %.01113.i                ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.014.i
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !149
  %i.ai = add nuw i64 %.014.i, 1                  ; 2 uses
  %.sroa.0.0.copyload1.i.i.1 = load i64, ptr %i.j, align 8, !tbaa !149
  %i.aj = getelementptr [8 x i8], ptr %i.w, i64 %.sroa.0.0.copyload1.i.i.1
  %i.ak = getelementptr [8 x i8], ptr %i.aj, i64 %i.ai
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !149
  %i.am = add i64 %i.al, %i.ag                    ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.ai
  store i64 %i.am, ptr %i.an, align 8, !tbaa !149
  %i.ao = add nuw i64 %.014.i, 2                  ; 2 uses
  %.sroa.0.0.copyload1.i.i.2 = load i64, ptr %i.j, align 8, !tbaa !149
  %i.ap = getelementptr [8 x i8], ptr %i.w, i64 %.sroa.0.0.copyload1.i.i.2
  %i.aq = getelementptr [8 x i8], ptr %i.ap, i64 %i.ao
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !149
  %i.as = add i64 %i.ar, %i.am                    ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.ao
  store i64 %i.as, ptr %i.at, align 8, !tbaa !149
  %i.au = add nuw i64 %.014.i, 3                  ; 2 uses
  %.sroa.0.0.copyload1.i.i.3 = load i64, ptr %i.j, align 8, !tbaa !149
  %i.av = getelementptr [8 x i8], ptr %i.w, i64 %.sroa.0.0.copyload1.i.i.3
  %i.aw = getelementptr [8 x i8], ptr %i.av, i64 %i.au
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !149
  %i.ay = add i64 %i.ax, %i.as                    ; 3 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.au
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !149
  %i.ba = add nuw i64 %.014.i, 4                  ; 2 uses
  %niter287.next.3 = add i64 %niter287, 4         ; 2 uses
  %niter287.ncmp.3.not = icmp eq i64 %niter287.next.3, %unroll_iter286
  br i1 %niter287.ncmp.3.not, label %_ZZN7xgboost6common10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data17DenseAdapterBatchEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSA_SA_T1_T0_ENKUlSA_E_clImEEDaSA_.exit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !1205

_ZZN7xgboost6common10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data17DenseAdapterBatchEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSA_SA_T1_T0_ENKUlSA_E_clImEEDaSA_.exit.loopexit.unr-lcssa: ; preds = %bb.f
  %lcmp.mod284.not = icmp eq i64 %xtraiter282, 0
  br i1 %lcmp.mod284.not, label %_ZZN7xgboost6common10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data17DenseAdapterBatchEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSA_SA_T1_T0_ENKUlSA_E_clImEEDaSA_.exit, label %.epil.preheader281

.epil.preheader281:                               ; preds = %_ZZN7xgboost6common10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data17DenseAdapterBatchEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSA_SA_T1_T0_ENKUlSA_E_clImEEDaSA_.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.014.i.epil.init = phi i64 [ %i.n, %.lr.ph.i ], [ %i.ba, %_ZZN7xgboost6common10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data17DenseAdapterBatchEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSA_SA_T1_T0_ENKUlSA_E_clImEEDaSA_.exit.loopexit.unr-lcssa ]
  %.01113.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.ay, %_ZZN7xgboost6common10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data17DenseAdapterBatchEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSA_SA_T1_T0_ENKUlSA_E_clImEEDaSA_.exit.loopexit.unr-lcssa ]
  %lcmp.mod285 = icmp ne i64 %xtraiter282, 0
  tail call void @llvm.assume(i1 %lcmp.mod285)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader281
  %.014.i.epil = phi i64 [ %.014.i.epil.init, %.epil.preheader281 ], [ %i.bg, %bb.g ] ; 3 uses
  %.01113.i.epil = phi i64 [ %.01113.i.epil.init, %.epil.preheader281 ], [ %i.be, %bb.g ]
  %epil.iter283 = phi i64 [ 0, %.epil.preheader281 ], [ %epil.iter283.next, %bb.g ]
  %.sroa.0.0.copyload1.i.i.epil = load i64, ptr %i.j, align 8, !tbaa !149
  %i.bb = getelementptr [8 x i8], ptr %i.w, i64 %.sroa.0.0.copyload1.i.i.epil
  %i.bc = getelementptr [8 x i8], ptr %i.bb, i64 %.014.i.epil
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !149
  %i.be = add i64 %i.bd, %.01113.i.epil           ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.014.i.epil
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !149
  %i.bg = add nuw i64 %.014.i.epil, 1
  %epil.iter283.next = add i64 %epil.iter283, 1   ; 2 uses
  %epil.iter283.cmp.not = icmp eq i64 %epil.iter283.next, %xtraiter282
  br i1 %epil.iter283.cmp.not, label %_ZZN7xgboost6common10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data17DenseAdapterBatchEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSA_SA_T1_T0_ENKUlSA_E_clImEEDaSA_.exit, label %bb.g, !llvm.loop !1206

_ZZN7xgboost6common10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data17DenseAdapterBatchEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSA_SA_T1_T0_ENKUlSA_E_clImEEDaSA_.exit: ; preds = %_ZZN7xgboost6common10PartialSumINS0_18IndexTransformIterIZNS_16GHistIndexMatrix16PushAdapterBatchINS_4data17DenseAdapterBatchEEEvPKNS_7ContextEmmRKT_fNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEdmEUlmE_EEPmmEEviSA_SA_T1_T0_ENKUlSA_E_clImEEDaSA_.exit.loopexit.unr-lcssa, %bb.g, %bb.e
  %i.bh = add nuw i64 %.049182, 1                 ; 2 uses
  %exitcond202.not = icmp eq i64 %i.bh, %0
  br i1 %exitcond202.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.b, !llvm.loop !1207

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %1, ptr %i.a, align 4, !tbaa !128, !noalias !1225
  store i32 1, ptr %i.b, align 4, !tbaa !128, !noalias !1225
  %.not.i = icmp slt i32 %1, 1
  br i1 %.not.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.h
  call void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.41") align 8 %5, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %.pr = load ptr, ptr %5, align 8, !tbaa !143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.bi = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.i
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.bi, ptr noundef nonnull @.str.85, i32 noundef 196)
end_hunk_0
