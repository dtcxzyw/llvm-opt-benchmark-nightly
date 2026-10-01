Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/stats?download=true
inline.NumInlined: 1559
inline.NumDeleted: 670
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEEvSH_SH_SN_T1_:bb.a
  br label %bb.b

bb.b:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i, %.lr.ph.i
  %.sroa.0.021.i = phi ptr [ %.sroa.0.018.i, %.lr.ph.i ], [ %.sroa.0.0.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i ] ; 6 uses
  %.pn20.i = phi ptr [ %.sroa.028.032, %.lr.ph.i ], [ %.sroa.0.021.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i ] ; 4 uses
  %i.k = load i64, ptr %.sroa.0.021.i, align 8, !tbaa !31 ; 3 uses
  %i.l = load i64, ptr %.sroa.028.032, align 8, !tbaa !31 ; 2 uses
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %3, align 8, !tbaa !31 ; 3 uses
  %.sroa.6.0.copyload.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !tbaa !47 ; 3 uses
  %i.m = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.k
  %i.n = load i64, ptr %.sroa.6.0.copyload.i.i.i.i, align 8, !tbaa !31 ; 3 uses
  %i.o = mul i64 %i.n, %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i.i.i.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !59   ; 5 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.o
  %i.s = load float, ptr %i.r, align 4, !tbaa !58 ; 2 uses
  %i.t = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.l
  %i.u = mul i64 %i.n, %i.t
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.u
  %i.w = load float, ptr %i.v, align 4, !tbaa !58
  %i.x = fcmp olt float %i.s, %i.w
  br i1 %i.x, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.y = ptrtoint ptr %.sroa.0.021.i to i64
  %i.z = sub i64 %i.y, %i.i                       ; 3 uses
  %i.aa = ashr exact i64 %i.z, 3                  ; 2 uses
  %i.ab = icmp sgt i64 %i.aa, 1
  br i1 %i.ab, label %bb.d, label %bb.e, !prof !35

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 16
  %i.ad = sub nsw i64 0, %i.aa
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ad
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.028.032, i64 %i.z, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.af = icmp eq i64 %i.z, 8
  br i1 %i.af, label %bb.f, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 8
  store i64 %i.l, ptr %i.ag, align 8, !tbaa !31
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i

bb.g:                                             ; preds = %bb.b
  %i.ah = load i64, ptr %.pn20.i, align 8, !tbaa !31 ; 2 uses
  %i.ai = add i64 %i.ah, %.sroa.0.0.copyload1.i.i.i.i
  %i.aj = mul i64 %i.ai, %i.n
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.aj
  %i.al = load float, ptr %i.ak, align 4, !tbaa !58
  %i.am = fcmp olt float %i.s, %i.al
  br i1 %i.am, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %i.an = phi i64 [ %i.ao, %.lr.ph.i.i ], [ %i.ah, %bb.g ]
  %.sroa.0.011.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn20.i, %bb.g ] ; 3 uses
  %.sroa.05.010.i.i = phi ptr [ %.sroa.0.011.i.i, %.lr.ph.i.i ], [ %.sroa.0.021.i, %bb.g ]
  store i64 %i.an, ptr %.sroa.05.010.i.i, align 8, !tbaa !31
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.011.i.i, i64 -8 ; 2 uses
  %i.ao = load i64, ptr %.sroa.0.0.i.i, align 8, !tbaa !31 ; 2 uses
  %.sroa.0.0.copyload1.i.i.i.i.i = load i64, ptr %3, align 8, !tbaa !31 ; 2 uses
  %i.ap = add i64 %.sroa.0.0.copyload1.i.i.i.i.i, %i.k
  %i.aq = load i64, ptr %.sroa.6.0.copyload.i.i.i.i, align 8, !tbaa !31 ; 2 uses
  %i.ar = mul i64 %i.aq, %i.ap
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ar
  %i.at = load float, ptr %i.as, align 4, !tbaa !58
  %i.au = add i64 %.sroa.0.0.copyload1.i.i.i.i.i, %i.ao
  %i.av = mul i64 %i.aq, %i.au
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.av
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !58
  %i.ay = fcmp olt float %i.at, %i.ax
  br i1 %i.ay, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i, !llvm.loop !3

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %bb.g, %bb.f, %bb.e, %bb.d
  %.sink.i = phi ptr [ %.sroa.028.032, %bb.f ], [ %.sroa.028.032, %bb.d ], [ %.sroa.028.032, %bb.e ], [ %.sroa.0.021.i, %bb.g ], [ %.sroa.0.011.i.i, %.lr.ph.i.i ]
  store i64 %i.k, ptr %.sink.i, align 8, !tbaa !31
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i, %i.j
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEEvSH_SH_SN_.exit.loopexit, label %bb.b, !llvm.loop !4

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEEvSH_SH_SN_.exit.loopexit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i
  %i.az = ptrtoint ptr %i.j to i64                ; 3 uses
  %i.ba = sub i64 %i.a, %i.az
  %i.bb = ashr exact i64 %i.ba, 3
  %.not = icmp slt i64 %i.bb, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph.i, !llvm.loop !271

._crit_edge:                                      ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEEvSH_SH_SN_.exit.loopexit, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEEvSH_SH_SN_.exit.us, %bb.a
  %.sroa.028.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.e, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEEvSH_SH_SN_.exit.us ], [ %i.j, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEEvSH_SH_SN_.exit.loopexit ] ; 8 uses
  %.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.f, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEEvSH_SH_SN_.exit.us ], [ %i.az, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEEvSH_SH_SN_.exit.loopexit ]
  %i.bc = icmp eq ptr %.sroa.028.0.lcssa, %1
  br i1 %i.bc, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEEvSH_SH_SN_.exit27, label %.preheader.i9

.preheader.i9:                                    ; preds = %._crit_edge
  %.sroa.0.018.i10 = getelementptr inbounds nuw i8, ptr %.sroa.028.0.lcssa, i64 8 ; 2 uses
  %.not19.i11 = icmp eq ptr %.sroa.0.018.i10, %1
  br i1 %.not19.i11, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEEvSH_SH_SN_.exit27, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %.preheader.i9
  %.sroa.6.0..sroa_idx.i.i.i.i13 = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.h

bb.h:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i18, %.lr.ph.i12
  %.sroa.0.021.i14 = phi ptr [ %.sroa.0.018.i10, %.lr.ph.i12 ], [ %.sroa.0.0.i20, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i18 ] ; 6 uses
  %.pn20.i15 = phi ptr [ %.sroa.028.0.lcssa, %.lr.ph.i12 ], [ %.sroa.0.021.i14, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i18 ] ; 4 uses
  %i.bd = load i64, ptr %.sroa.0.021.i14, align 8, !tbaa !31 ; 3 uses
  %i.be = load i64, ptr %.sroa.028.0.lcssa, align 8, !tbaa !31 ; 2 uses
  %.sroa.0.0.copyload1.i.i.i.i16 = load i64, ptr %3, align 8, !tbaa !31 ; 3 uses
  %.sroa.6.0.copyload.i.i.i.i17 = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i.i13, align 8, !tbaa !47 ; 3 uses
  %i.bf = add i64 %.sroa.0.0.copyload1.i.i.i.i16, %i.bd
  %i.bg = load i64, ptr %.sroa.6.0.copyload.i.i.i.i17, align 8, !tbaa !31 ; 3 uses
  %i.bh = mul i64 %i.bg, %i.bf
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i.i.i.i17, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !59 ; 5 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bh
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !58 ; 2 uses
  %i.bm = add i64 %.sroa.0.0.copyload1.i.i.i.i16, %i.be
  %i.bn = mul i64 %i.bg, %i.bm
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bn
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !58
  %i.bq = fcmp olt float %i.bl, %i.bp
  br i1 %i.bq, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.br = ptrtoint ptr %.sroa.0.021.i14 to i64
  %i.bs = sub i64 %i.br, %.lcssa                  ; 3 uses
  %i.bt = ashr exact i64 %i.bs, 3                 ; 2 uses
  %i.bu = icmp sgt i64 %i.bt, 1
  br i1 %i.bu, label %bb.j, label %bb.k, !prof !35

bb.j:                                             ; preds = %bb.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.pn20.i15, i64 16
  %i.bw = sub nsw i64 0, %i.bt
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %i.bw
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bx, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.028.0.lcssa, i64 %i.bs, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i18

bb.k:                                             ; preds = %bb.i
  %i.by = icmp eq i64 %i.bs, 8
  br i1 %i.by, label %bb.l, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i18

bb.l:                                             ; preds = %bb.k
  %i.bz = getelementptr inbounds nuw i8, ptr %.pn20.i15, i64 8
  store i64 %i.be, ptr %i.bz, align 8, !tbaa !31
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i18

bb.m:                                             ; preds = %bb.h
  %i.ca = load i64, ptr %.pn20.i15, align 8, !tbaa !31 ; 2 uses
  %i.cb = add i64 %i.ca, %.sroa.0.0.copyload1.i.i.i.i16
  %i.cc = mul i64 %i.cb, %i.bg
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.cc
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !58
  %i.cf = fcmp olt float %i.bl, %i.ce
  br i1 %i.cf, label %.lr.ph.i.i22, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i18

.lr.ph.i.i22:                                     ; preds = %bb.m, %.lr.ph.i.i22
  %i.cg = phi i64 [ %i.ch, %.lr.ph.i.i22 ], [ %i.ca, %bb.m ]
  %.sroa.0.011.i.i23 = phi ptr [ %.sroa.0.0.i.i25, %.lr.ph.i.i22 ], [ %.pn20.i15, %bb.m ] ; 3 uses
  %.sroa.05.010.i.i24 = phi ptr [ %.sroa.0.011.i.i23, %.lr.ph.i.i22 ], [ %.sroa.0.021.i14, %bb.m ]
  store i64 %i.cg, ptr %.sroa.05.010.i.i24, align 8, !tbaa !31
  %.sroa.0.0.i.i25 = getelementptr inbounds i8, ptr %.sroa.0.011.i.i23, i64 -8 ; 2 uses
  %i.ch = load i64, ptr %.sroa.0.0.i.i25, align 8, !tbaa !31 ; 2 uses
  %.sroa.0.0.copyload1.i.i.i.i.i26 = load i64, ptr %3, align 8, !tbaa !31 ; 2 uses
  %i.ci = add i64 %.sroa.0.0.copyload1.i.i.i.i.i26, %i.bd
  %i.cj = load i64, ptr %.sroa.6.0.copyload.i.i.i.i17, align 8, !tbaa !31 ; 2 uses
  %i.ck = mul i64 %i.cj, %i.ci
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.ck
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !58
  %i.cn = add i64 %.sroa.0.0.copyload1.i.i.i.i.i26, %i.ch
  %i.co = mul i64 %i.cj, %i.cn
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.co
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !58
  %i.cr = fcmp olt float %i.cm, %i.cq
  br i1 %i.cr, label %.lr.ph.i.i22, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i18, !llvm.loop !3

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i18: ; preds = %.lr.ph.i.i22, %bb.m, %bb.l, %bb.k, %bb.j
  %.sink.i19 = phi ptr [ %.sroa.028.0.lcssa, %bb.l ], [ %.sroa.028.0.lcssa, %bb.j ], [ %.sroa.028.0.lcssa, %bb.k ], [ %.sroa.0.021.i14, %bb.m ], [ %.sroa.0.011.i.i23, %.lr.ph.i.i22 ]
  store i64 %i.bd, ptr %.sink.i19, align 8, !tbaa !31
  %.sroa.0.0.i20 = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i14, i64 8 ; 2 uses
  %.not.i21 = icmp eq ptr %.sroa.0.0.i20, %1
  br i1 %.not.i21, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEEvSH_SH_SN_.exit27, label %bb.h, !llvm.loop !4

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEEvSH_SH_SN_.exit27: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i18, %._crit_edge, %.preheader.i9
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_lNS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEEvSH_SH_SN_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 3                   ; 2 uses
  %.not56 = icmp slt i64 %i.e, %i.a
  br i1 %.not56, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %3, 3                           ; 11 uses
  %.idx50 = shl i64 %3, 4                         ; 2 uses
  %.not51 = icmp eq i64 %.idx, %.idx50
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  br i1 %.not51, label %.critedge.i.us.preheader, label %.lr.ph.i

.critedge.i.us.preheader:                         ; preds = %.lr.ph
  %i.f = icmp sgt i64 %.idx, 8
  %i.g = icmp eq i64 %.idx, 8
  br label %.critedge.i.us

.critedge.i.us:                                   ; preds = %.critedge.i.us.preheader, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESN_SH_SH_SH_SH_SN_T1_.exit.us
  %.058.us = phi ptr [ %i.m, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESN_SH_SH_SH_SH_SN_T1_.exit.us ], [ %2, %.critedge.i.us.preheader ] ; 5 uses
  %.sroa.042.057.us = phi ptr [ %i.h, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESN_SH_SH_SH_SH_SN_T1_.exit.us ], [ %0, %.critedge.i.us.preheader ] ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %.sroa.042.057.us, i64 %.idx ; 5 uses
  br i1 %i.f, label %bb.d, label %bb.b, !prof !35

bb.b:                                             ; preds = %.critedge.i.us
  br i1 %i.g, label %bb.c, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESN_SH_SH_SH_SH_SN_T1_.exit.us

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %.sroa.042.057.us, align 8, !tbaa !31
  store i64 %i.i, ptr %.058.us, align 8, !tbaa !31
  %i.j = getelementptr inbounds nuw i8, ptr %.058.us, i64 %.idx
  %i.k = load i64, ptr %i.h, align 8, !tbaa !31
  store i64 %i.k, ptr %i.j, align 8, !tbaa !31
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESN_SH_SH_SH_SH_SN_T1_.exit.us

bb.d:                                             ; preds = %.critedge.i.us
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.058.us, ptr align 8 %.sroa.042.057.us, i64 %.idx, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %.058.us, i64 %.idx
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %i.h, i64 %.idx, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESN_SH_SH_SH_SH_SN_T1_.exit.us

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESN_SH_SH_SH_SH_SN_T1_.exit.us: ; preds = %bb.b, %bb.d, %bb.c
  %5 = getelementptr inbounds i8, ptr %.058.us, i64 %.idx
  %i.m = getelementptr inbounds i8, ptr %5, i64 %.idx ; 2 uses
  %i.n = ptrtoint ptr %i.h to i64
  %i.o = sub i64 %i.b, %i.n
  %i.p = ashr exact i64 %i.o, 3                   ; 2 uses
  %.not.us = icmp slt i64 %i.p, %i.a
  br i1 %.not.us, label %._crit_edge, label %.critedge.i.us, !llvm.loop !272

.lr.ph.i:                                         ; preds = %.lr.ph, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESN_SH_SH_SH_SH_SN_T1_.exit
  %.058 = phi ptr [ %i.aw, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESN_SH_SH_SH_SH_SN_T1_.exit ], [ %2, %.lr.ph ]
  %.sroa.042.057 = phi ptr [ %i.r, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESN_SH_SH_SH_SH_SN_T1_.exit ], [ %0, %.lr.ph ] ; 3 uses
  %i.q = getelementptr inbounds i8, ptr %.sroa.042.057, i64 %.idx ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %.sroa.042.057, i64 %.idx50 ; 4 uses
  %.sroa.6.0.copyload.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !tbaa !47 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !59   ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.021.i = phi ptr [ %.058, %.lr.ph.i ], [ %i.ag, %bb.e ] ; 2 uses
  %.sroa.015.020.i = phi ptr [ %.sroa.042.057, %.lr.ph.i ], [ %.sroa.015.1.i, %bb.e ] ; 2 uses
  %.sroa.011.019.i = phi ptr [ %i.q, %.lr.ph.i ], [ %.sroa.011.1.i, %bb.e ] ; 2 uses
  %i.u = load i64, ptr %.sroa.011.019.i, align 8, !tbaa !31 ; 2 uses
  %i.v = load i64, ptr %.sroa.015.020.i, align 8, !tbaa !31 ; 2 uses
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %4, align 8, !tbaa !31 ; 2 uses
  %i.w = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.u
  %i.x = load i64, ptr %.sroa.6.0.copyload.i.i.i.i, align 8, !tbaa !31 ; 2 uses
  %i.y = mul i64 %i.x, %i.w
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.y
  %i.aa = load float, ptr %i.z, align 4, !tbaa !58
  %i.ab = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.v
  %i.ac = mul i64 %i.x, %i.ab
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.ac
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !58
  %i.af = fcmp olt float %i.aa, %i.ae             ; 3 uses
  %.sink.i = select i1 %i.af, i64 %i.u, i64 %i.v
  %.sroa.011.1.idx.i = select i1 %i.af, i64 8, i64 0
  %.sroa.011.1.i = getelementptr inbounds nuw i8, ptr %.sroa.011.019.i, i64 %.sroa.011.1.idx.i ; 5 uses
  %.sroa.015.1.idx.i = select i1 %i.af, i64 0, i64 8
  %.sroa.015.1.i = getelementptr inbounds nuw i8, ptr %.sroa.015.020.i, i64 %.sroa.015.1.idx.i ; 5 uses
  store i64 %.sink.i, ptr %.021.i, align 8, !tbaa !31
  %i.ag = getelementptr inbounds nuw i8, ptr %.021.i, i64 8 ; 4 uses
  %i.ah = icmp ne ptr %.sroa.015.1.i, %i.q
  %i.ai = icmp ne ptr %.sroa.011.1.i, %i.r
  %or.cond.i = select i1 %i.ah, i1 %i.ai, i1 false
  br i1 %or.cond.i, label %bb.e, label %.critedge.i.loopexit, !llvm.loop !273

.critedge.i.loopexit:                             ; preds = %bb.e
  %i.aj = ptrtoint ptr %i.q to i64
  %i.ak = ptrtoint ptr %.sroa.015.1.i to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 4 uses
  %i.am = icmp sgt i64 %i.al, 8
  br i1 %i.am, label %bb.f, label %bb.g, !prof !35

bb.f:                                             ; preds = %.critedge.i.loopexit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr nonnull align 8 %.sroa.015.1.i, i64 %i.al, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_ET0_T_S8_S7_.exit.i

bb.g:                                             ; preds = %.critedge.i.loopexit
  %i.an = icmp eq i64 %i.al, 8
  br i1 %i.an, label %bb.h, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_ET0_T_S8_S7_.exit.i

bb.h:                                             ; preds = %bb.g
  %i.ao = load i64, ptr %.sroa.015.1.i, align 8, !tbaa !31
  store i64 %i.ao, ptr %i.ag, align 8, !tbaa !31
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_ET0_T_S8_S7_.exit.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_ET0_T_S8_S7_.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %i.ap = getelementptr inbounds i8, ptr %i.ag, i64 %i.al ; 3 uses
  %i.aq = ptrtoint ptr %i.r to i64                ; 2 uses
  %i.ar = ptrtoint ptr %.sroa.011.1.i to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 4 uses
  %i.at = icmp sgt i64 %i.as, 8
  br i1 %i.at, label %bb.i, label %bb.j, !prof !35

bb.i:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_ET0_T_S8_S7_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ap, ptr nonnull align 8 %.sroa.011.1.i, i64 %i.as, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESN_SH_SH_SH_SH_SN_T1_.exit

bb.j:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_ET0_T_S8_S7_.exit.i
  %i.au = icmp eq i64 %i.as, 8
  br i1 %i.au, label %bb.k, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESN_SH_SH_SH_SH_SN_T1_.exit

bb.k:                                             ; preds = %bb.j
  %i.av = load i64, ptr %.sroa.011.1.i, align 8, !tbaa !31
  store i64 %i.av, ptr %i.ap, align 8, !tbaa !31
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESN_SH_SH_SH_SH_SN_T1_.exit

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESN_SH_SH_SH_SH_SN_T1_.exit: ; preds = %bb.i, %bb.j, %bb.k
  %i.aw = getelementptr inbounds i8, ptr %i.ap, i64 %i.as ; 2 uses
  %i.ax = sub i64 %i.b, %i.aq
  %i.ay = ashr exact i64 %i.ax, 3                 ; 2 uses
  %.not = icmp slt i64 %i.ay, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph.i, !llvm.loop !272

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESN_SH_SH_SH_SH_SN_T1_.exit, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESN_SH_SH_SH_SH_SN_T1_.exit.us, %bb.a
  %.sroa.042.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.h, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESN_SH_SH_SH_SH_SN_T1_.exit.us ], [ %i.r, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESN_SH_SH_SH_SH_SN_T1_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.m, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESN_SH_SH_SH_SH_SN_T1_.exit.us ], [ %i.aw, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESN_SH_SH_SH_SH_SN_T1_.exit ] ; 2 uses
  %.lcssa54 = phi i64 [ %i.e, %bb.a ], [ %i.p, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESN_SH_SH_SH_SH_SN_T1_.exit.us ], [ %i.ay, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESN_SH_SH_SH_SH_SN_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa54) ; 2 uses
  %.idx52 = shl nsw i64 %.sroa.speculated, 3
  %i.az = getelementptr inbounds i8, ptr %.sroa.042.0.lcssa, i64 %.idx52 ; 5 uses
  %i.ba = icmp ne i64 %.sroa.speculated, 0
  %i.bb = icmp ne ptr %i.az, %1
  %or.cond18.i15 = select i1 %i.ba, i1 %i.bb, i1 false
  br i1 %or.cond18.i15, label %.lr.ph.i21, label %.critedge.i16

.lr.ph.i21:                                       ; preds = %._crit_edge
  %.sroa.6.0..sroa_idx.i.i.i.i22 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.6.0.copyload.i.i.i.i23 = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i.i22, align 8, !tbaa !47 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i.i.i.i23, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !59 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i21
  %.021.i24 = phi ptr [ %.0.lcssa, %.lr.ph.i21 ], [ %i.bq, %bb.l ] ; 2 uses
  %.sroa.015.020.i25 = phi ptr [ %.sroa.042.0.lcssa, %.lr.ph.i21 ], [ %.sroa.015.1.i32, %bb.l ] ; 2 uses
  %.sroa.011.019.i26 = phi ptr [ %i.az, %.lr.ph.i21 ], [ %.sroa.011.1.i30, %bb.l ] ; 2 uses
  %i.be = load i64, ptr %.sroa.011.019.i26, align 8, !tbaa !31 ; 2 uses
  %i.bf = load i64, ptr %.sroa.015.020.i25, align 8, !tbaa !31 ; 2 uses
  %.sroa.0.0.copyload1.i.i.i.i27 = load i64, ptr %4, align 8, !tbaa !31 ; 2 uses
  %i.bg = add i64 %.sroa.0.0.copyload1.i.i.i.i27, %i.be
  %i.bh = load i64, ptr %.sroa.6.0.copyload.i.i.i.i23, align 8, !tbaa !31 ; 2 uses
  %i.bi = mul i64 %i.bh, %i.bg
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bi
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !58
  %i.bl = add i64 %.sroa.0.0.copyload1.i.i.i.i27, %i.bf
  %i.bm = mul i64 %i.bh, %i.bl
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bm
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !58
  %i.bp = fcmp olt float %i.bk, %i.bo             ; 3 uses
  %.sink.i28 = select i1 %i.bp, i64 %i.be, i64 %i.bf
  %.sroa.011.1.idx.i29 = select i1 %i.bp, i64 8, i64 0
  %.sroa.011.1.i30 = getelementptr inbounds nuw i8, ptr %.sroa.011.019.i26, i64 %.sroa.011.1.idx.i29 ; 3 uses
  %.sroa.015.1.idx.i31 = select i1 %i.bp, i64 0, i64 8
  %.sroa.015.1.i32 = getelementptr inbounds nuw i8, ptr %.sroa.015.020.i25, i64 %.sroa.015.1.idx.i31 ; 3 uses
  store i64 %.sink.i28, ptr %.021.i24, align 8, !tbaa !31
  %i.bq = getelementptr inbounds nuw i8, ptr %.021.i24, i64 8 ; 2 uses
  %i.br = icmp ne ptr %.sroa.015.1.i32, %i.az
  %i.bs = icmp ne ptr %.sroa.011.1.i30, %1
  %or.cond.i33 = select i1 %i.br, i1 %i.bs, i1 false
  br i1 %or.cond.i33, label %bb.l, label %.critedge.i16, !llvm.loop !273

.critedge.i16:                                    ; preds = %bb.l, %._crit_edge
  %.sroa.011.0.lcssa.i17 = phi ptr [ %i.az, %._crit_edge ], [ %.sroa.011.1.i30, %bb.l ] ; 3 uses
  %.sroa.015.0.lcssa.i18 = phi ptr [ %.sroa.042.0.lcssa, %._crit_edge ], [ %.sroa.015.1.i32, %bb.l ] ; 3 uses
  %.0.lcssa.i19 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.bq, %bb.l ] ; 3 uses
  %i.bt = ptrtoint ptr %i.az to i64
  %i.bu = ptrtoint ptr %.sroa.015.0.lcssa.i18 to i64
  %i.bv = sub i64 %i.bt, %i.bu                    ; 4 uses
  %i.bw = icmp sgt i64 %i.bv, 8
  br i1 %i.bw, label %bb.m, label %bb.n, !prof !35

bb.m:                                             ; preds = %.critedge.i16
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.lcssa.i19, ptr align 8 %.sroa.015.0.lcssa.i18, i64 %i.bv, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_ET0_T_S8_S7_.exit.i20

bb.n:                                             ; preds = %.critedge.i16
  %i.bx = icmp eq i64 %i.bv, 8
  br i1 %i.bx, label %bb.o, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_ET0_T_S8_S7_.exit.i20

bb.o:                                             ; preds = %bb.n
  %i.by = load i64, ptr %.sroa.015.0.lcssa.i18, align 8, !tbaa !31
  store i64 %i.by, ptr %.0.lcssa.i19, align 8, !tbaa !31
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_ET0_T_S8_S7_.exit.i20

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_ET0_T_S8_S7_.exit.i20: ; preds = %bb.o, %bb.n, %bb.m
  %i.bz = getelementptr inbounds i8, ptr %.0.lcssa.i19, i64 %i.bv ; 2 uses
  %i.ca = ptrtoint ptr %.sroa.011.0.lcssa.i17 to i64
  %i.cb = sub i64 %i.b, %i.ca                     ; 3 uses
  %i.cc = icmp sgt i64 %i.cb, 8
  br i1 %i.cc, label %bb.p, label %bb.q, !prof !35

bb.p:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_ET0_T_S8_S7_.exit.i20
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bz, ptr align 8 %.sroa.011.0.lcssa.i17, i64 %i.cb, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESN_SH_SH_SH_SH_SN_T1_.exit34

bb.q:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_ET0_T_S8_S7_.exit.i20
  %i.cd = icmp eq i64 %i.cb, 8
  br i1 %i.cd, label %bb.r, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESN_SH_SH_SH_SH_SN_T1_.exit34

bb.r:                                             ; preds = %bb.q
  %i.ce = load i64, ptr %.sroa.011.0.lcssa.i17, align 8, !tbaa !31
  store i64 %i.ce, ptr %i.bz, align 8, !tbaa !31
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESN_SH_SH_SH_SH_SN_T1_.exit34

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESN_SH_SH_SH_SH_SN_T1_.exit34: ; preds = %bb.p, %bb.q, %bb.r
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIPmN9__gnu_cxx17__normal_iteratorIS0_St6vectorImSaImEEEElNS1_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEEvSH_SH_SN_T1_T2_(ptr noundef %0, ptr noundef %1, ptr %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 3                   ; 2 uses
  %.not52 = icmp slt i64 %i.e, %i.a
  br i1 %.not52, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
end_hunk_0
begin_hunk_1_@"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common16WeightedQuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EENSC_IZNSA_6MedianEPKNS9_7ContextERKNSD_6TensorIfLi2EEERKNS9_16HostDeviceVectorIfEEPNSQ_IfLi1EEEE3$_0EEfEET1_SP_dSH_SH_T0_EUlmmE_EEEvSH_SH_S13_S12_":bb.a
  %i.fo = sub nsw i64 0, %i.fk
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.fn, i64 %i.fo
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fp, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.030.033.i, i64 %i.fj, i1 false)
  %.val.val9.i.5.pre.i = load ptr, ptr %i.g, align 8, !tbaa !47 ; 2 uses
  %.phi.trans.insert49.i = getelementptr i8, ptr %.val.val9.i.5.pre.i, i64 32
  %.val.val9.val10.i.5.pre.i = load ptr, ptr %.phi.trans.insert49.i, align 8, !tbaa !59
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.4.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.4.i: ; preds = %.lr.ph.i.i.4.i, %bb.y, %bb.x, %bb.w, %bb.u
  %.val.val9.val10.i.5.i = phi ptr [ %.val.val9.val10.i.4.i, %bb.x ], [ %.val.val9.val10.i.5.pre.i, %bb.y ], [ %.val.val9.val10.i.4.i, %bb.w ], [ %.val.val9.val10.i.4.i, %bb.u ], [ %.val.val9.val10.i.4.i, %.lr.ph.i.i.4.i ] ; 5 uses
  %.val.val9.i.5.i = phi ptr [ %.val.val9.i.4.i, %bb.x ], [ %.val.val9.i.5.pre.i, %bb.y ], [ %.val.val9.i.4.i, %bb.w ], [ %.val.val9.i.4.i, %bb.u ], [ %.val.val9.i.4.i, %.lr.ph.i.i.4.i ] ; 2 uses
  %.sink.i.4.i = phi ptr [ %.sroa.030.033.i, %bb.x ], [ %.sroa.030.033.i, %bb.y ], [ %.sroa.030.033.i, %bb.w ], [ %.sroa.0.023.i.ptr.4.i, %bb.u ], [ %.sroa.0.015.i.i.4.i, %.lr.ph.i.i.4.i ]
  store i64 %i.eg, ptr %.sink.i.4.i, align 8, !tbaa !31
  %.sroa.0.023.i.ptr.5.i = getelementptr inbounds nuw i8, ptr %.sroa.030.033.i, i64 48 ; 5 uses
  %.val.val.i.5.i = load i64, ptr %3, align 8, !tbaa !31 ; 3 uses
  %.val.val9.val.i.5.i = load i64, ptr %.val.val9.i.5.i, align 8, !tbaa !31 ; 3 uses
  %i.fq = load i64, ptr %.sroa.0.023.i.ptr.5.i, align 8, !tbaa !31 ; 3 uses
  %i.fr = load i64, ptr %.sroa.030.033.i, align 8, !tbaa !31 ; 2 uses
  %i.fs = add i64 %i.fq, %.val.val.i.5.i
  %i.ft = mul i64 %i.fs, %.val.val9.val.i.5.i
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %.val.val9.val10.i.5.i, i64 %i.ft
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !58 ; 2 uses
  %i.fw = add i64 %i.fr, %.val.val.i.5.i
  %i.fx = mul i64 %i.fw, %.val.val9.val.i.5.i
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %.val.val9.val10.i.5.i, i64 %i.fx
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !58
  %i.ga = fcmp olt float %i.fv, %i.fz
  br i1 %i.ga, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.4.i
  %i.gb = load i64, ptr %.sroa.0.023.i.ptr.4.i, align 8, !tbaa !31 ; 2 uses
  %i.gc = add i64 %i.gb, %.val.val.i.5.i
  %i.gd = mul i64 %i.gc, %.val.val9.val.i.5.i
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %.val.val9.val10.i.5.i, i64 %i.gd
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !58
  %i.gg = fcmp olt float %i.fv, %i.gf
  br i1 %i.gg, label %.lr.ph.i.i.5.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.5.i

.lr.ph.i.i.5.i:                                   ; preds = %bb.z, %.lr.ph.i.i.5.i
  %i.gh = phi i64 [ %i.gi, %.lr.ph.i.i.5.i ], [ %i.gb, %bb.z ]
  %.sroa.0.015.i.i.5.i = phi ptr [ %.sroa.0.0.i.i.5.i, %.lr.ph.i.i.5.i ], [ %.sroa.0.023.i.ptr.4.i, %bb.z ] ; 3 uses
  %.sroa.08.014.i.i.5.i = phi ptr [ %.sroa.0.015.i.i.5.i, %.lr.ph.i.i.5.i ], [ %.sroa.0.023.i.ptr.5.i, %bb.z ]
  store i64 %i.gh, ptr %.sroa.08.014.i.i.5.i, align 8, !tbaa !31
  %.sroa.0.0.i.i.5.i = getelementptr inbounds i8, ptr %.sroa.0.015.i.i.5.i, i64 -8 ; 2 uses
  %.val.val.i.i.5.i = load i64, ptr %3, align 8, !tbaa !31 ; 2 uses
  %.val.val2.val.i.i.5.i = load i64, ptr %.val.val9.i.5.i, align 8, !tbaa !31 ; 2 uses
  %i.gi = load i64, ptr %.sroa.0.0.i.i.5.i, align 8, !tbaa !31 ; 2 uses
  %i.gj = add i64 %.val.val.i.i.5.i, %i.fq
  %i.gk = mul i64 %.val.val2.val.i.i.5.i, %i.gj
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %.val.val9.val10.i.5.i, i64 %i.gk
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !58
  %i.gn = add i64 %i.gi, %.val.val.i.i.5.i
  %i.go = mul i64 %i.gn, %.val.val2.val.i.i.5.i
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %.val.val9.val10.i.5.i, i64 %i.go
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !58
  %i.gr = fcmp olt float %i.gm, %i.gq
  br i1 %i.gr, label %.lr.ph.i.i.5.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.5.i, !llvm.loop !7

bb.aa:                                            ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.4.i
  %i.gs = ptrtoint ptr %.sroa.0.023.i.ptr.5.i to i64
  %i.gt = sub i64 %i.gs, %i.h                     ; 3 uses
  %i.gu = ashr exact i64 %i.gt, 3                 ; 2 uses
  %i.gv = icmp sgt i64 %i.gu, 1
  br i1 %i.gv, label %bb.ad, label %bb.ab, !prof !35

bb.ab:                                            ; preds = %bb.aa
  %i.gw = icmp eq i64 %i.gt, 8
  br i1 %i.gw, label %bb.ac, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.5.i

bb.ac:                                            ; preds = %bb.ab
  store i64 %i.fr, ptr %.sroa.0.023.i.ptr.5.i, align 8, !tbaa !31
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.5.i

bb.ad:                                            ; preds = %bb.aa
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.030.033.i, i64 56
  %i.gy = sub nsw i64 0, %i.gu
  %i.gz = getelementptr inbounds [8 x i8], ptr %i.gx, i64 %i.gy
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gz, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.030.033.i, i64 %i.gt, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.5.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.5.i: ; preds = %.lr.ph.i.i.5.i, %bb.ad, %bb.ac, %bb.ab, %bb.z
  %.sink.i.5.i = phi ptr [ %.sroa.030.033.i, %bb.ac ], [ %.sroa.030.033.i, %bb.ad ], [ %.sroa.030.033.i, %bb.ab ], [ %.sroa.0.023.i.ptr.5.i, %bb.z ], [ %.sroa.0.015.i.i.5.i, %.lr.ph.i.i.5.i ]
  store i64 %i.fq, ptr %.sink.i.5.i, align 8, !tbaa !31
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.030.033.i, i64 56 ; 3 uses
  %i.hb = ptrtoint ptr %i.ha to i64               ; 3 uses
  %i.hc = sub i64 %i.a, %i.hb
  %i.hd = icmp sgt i64 %i.hc, 48
  br i1 %i.hd, label %.lr.ph.i.i, label %._crit_edge.i, !llvm.loop !314

._crit_edge.i:                                    ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.5.i, %bb.a
  %.sroa.030.0.lcssa.i = phi ptr [ %0, %bb.a ], [ %i.ha, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.5.i ] ; 8 uses
  %.lcssa.i = phi i64 [ %i.b, %bb.a ], [ %i.hb, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.5.i ]
  %i.he = icmp eq ptr %.sroa.030.0.lcssa.i, %1
  br i1 %i.he, label %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZN7xgboost6common16WeightedQuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EENSC_IZNSA_6MedianEPKNS9_7ContextERKNSD_6TensorIfLi2EEERKNS9_16HostDeviceVectorIfEEPNSQ_IfLi1EEEE3$_0EEfEET1_SP_dSH_SH_T0_EUlmmE_EEEvSH_SH_S13_S12_.exit", label %.preheader.i9.i

.preheader.i9.i:                                  ; preds = %._crit_edge.i
  %.sroa.0.020.i10.i = getelementptr inbounds nuw i8, ptr %.sroa.030.0.lcssa.i, i64 8 ; 2 uses
  %.not21.i11.i = icmp eq ptr %.sroa.0.020.i10.i, %1
  br i1 %.not21.i11.i, label %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZN7xgboost6common16WeightedQuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EENSC_IZNSA_6MedianEPKNS9_7ContextERKNSD_6TensorIfLi2EEERKNS9_16HostDeviceVectorIfEEPNSQ_IfLi1EEEE3$_0EEfEET1_SP_dSH_SH_T0_EUlmmE_EEEvSH_SH_S13_S12_.exit", label %.lr.ph.i12.i

.lr.ph.i12.i:                                     ; preds = %.preheader.i9.i
  %i.hf = getelementptr i8, ptr %3, i64 8
  br label %bb.ae

bb.ae:                                            ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i19.i, %.lr.ph.i12.i
  %.sroa.0.023.i13.i = phi ptr [ %.sroa.0.020.i10.i, %.lr.ph.i12.i ], [ %.sroa.0.0.i21.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i19.i ] ; 6 uses
  %.pn22.i14.i = phi ptr [ %.sroa.030.0.lcssa.i, %.lr.ph.i12.i ], [ %.sroa.0.023.i13.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i19.i ] ; 4 uses
  %.val.val.i15.i = load i64, ptr %3, align 8, !tbaa !31 ; 3 uses
  %.val.val9.i16.i = load ptr, ptr %i.hf, align 8, !tbaa !47 ; 3 uses
  %.val.val9.val.i17.i = load i64, ptr %.val.val9.i16.i, align 8, !tbaa !31 ; 3 uses
  %i.hg = getelementptr i8, ptr %.val.val9.i16.i, i64 32
  %.val.val9.val10.i18.i = load ptr, ptr %i.hg, align 8, !tbaa !59 ; 5 uses
  %i.hh = load i64, ptr %.sroa.0.023.i13.i, align 8, !tbaa !31 ; 3 uses
  %i.hi = load i64, ptr %.sroa.030.0.lcssa.i, align 8, !tbaa !31 ; 2 uses
  %i.hj = add i64 %i.hh, %.val.val.i15.i
  %i.hk = mul i64 %i.hj, %.val.val9.val.i17.i
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %.val.val9.val10.i18.i, i64 %i.hk
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !58 ; 2 uses
  %i.hn = add i64 %i.hi, %.val.val.i15.i
  %i.ho = mul i64 %i.hn, %.val.val9.val.i17.i
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %.val.val9.val10.i18.i, i64 %i.ho
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !58
  %i.hr = fcmp olt float %i.hm, %i.hq
  br i1 %i.hr, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae
  %i.hs = ptrtoint ptr %.sroa.0.023.i13.i to i64
  %i.ht = sub i64 %i.hs, %.lcssa.i                ; 3 uses
  %i.hu = ashr exact i64 %i.ht, 3                 ; 2 uses
  %i.hv = icmp sgt i64 %i.hu, 1
  br i1 %i.hv, label %bb.ag, label %bb.ah, !prof !35

bb.ag:                                            ; preds = %bb.af
  %i.hw = getelementptr inbounds nuw i8, ptr %.pn22.i14.i, i64 16
  %i.hx = sub nsw i64 0, %i.hu
  %i.hy = getelementptr inbounds [8 x i8], ptr %i.hw, i64 %i.hx
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hy, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.030.0.lcssa.i, i64 %i.ht, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i19.i

bb.ah:                                            ; preds = %bb.af
  %i.hz = icmp eq i64 %i.ht, 8
  br i1 %i.hz, label %bb.ai, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i19.i

bb.ai:                                            ; preds = %bb.ah
  %i.ia = getelementptr inbounds nuw i8, ptr %.pn22.i14.i, i64 8
  store i64 %i.hi, ptr %i.ia, align 8, !tbaa !31
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i19.i

bb.aj:                                            ; preds = %bb.ae
  %i.ib = load i64, ptr %.pn22.i14.i, align 8, !tbaa !31 ; 2 uses
  %i.ic = add i64 %i.ib, %.val.val.i15.i
  %i.id = mul i64 %i.ic, %.val.val9.val.i17.i
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %.val.val9.val10.i18.i, i64 %i.id
  %i.if = load float, ptr %i.ie, align 4, !tbaa !58
  %i.ig = fcmp olt float %i.hm, %i.if
  br i1 %i.ig, label %.lr.ph.i.i23.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i19.i

.lr.ph.i.i23.i:                                   ; preds = %bb.aj, %.lr.ph.i.i23.i
  %i.ih = phi i64 [ %i.ii, %.lr.ph.i.i23.i ], [ %i.ib, %bb.aj ]
  %.sroa.0.015.i.i24.i = phi ptr [ %.sroa.0.0.i.i26.i, %.lr.ph.i.i23.i ], [ %.pn22.i14.i, %bb.aj ] ; 3 uses
  %.sroa.08.014.i.i25.i = phi ptr [ %.sroa.0.015.i.i24.i, %.lr.ph.i.i23.i ], [ %.sroa.0.023.i13.i, %bb.aj ]
  store i64 %i.ih, ptr %.sroa.08.014.i.i25.i, align 8, !tbaa !31
  %.sroa.0.0.i.i26.i = getelementptr inbounds i8, ptr %.sroa.0.015.i.i24.i, i64 -8 ; 2 uses
  %.val.val.i.i27.i = load i64, ptr %3, align 8, !tbaa !31 ; 2 uses
  %.val.val2.val.i.i28.i = load i64, ptr %.val.val9.i16.i, align 8, !tbaa !31 ; 2 uses
  %i.ii = load i64, ptr %.sroa.0.0.i.i26.i, align 8, !tbaa !31 ; 2 uses
  %i.ij = add i64 %.val.val.i.i27.i, %i.hh
  %i.ik = mul i64 %.val.val2.val.i.i28.i, %i.ij
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %.val.val9.val10.i18.i, i64 %i.ik
  %i.im = load float, ptr %i.il, align 4, !tbaa !58
  %i.in = add i64 %i.ii, %.val.val.i.i27.i
  %i.io = mul i64 %i.in, %.val.val2.val.i.i28.i
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %.val.val9.val10.i18.i, i64 %i.io
  %i.iq = load float, ptr %i.ip, align 4, !tbaa !58
  %i.ir = fcmp olt float %i.im, %i.iq
  br i1 %i.ir, label %.lr.ph.i.i23.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i19.i, !llvm.loop !7

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i19.i: ; preds = %.lr.ph.i.i23.i, %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %.sink.i20.i = phi ptr [ %.sroa.030.0.lcssa.i, %bb.ai ], [ %.sroa.030.0.lcssa.i, %bb.ag ], [ %.sroa.030.0.lcssa.i, %bb.ah ], [ %.sroa.0.023.i13.i, %bb.aj ], [ %.sroa.0.015.i.i24.i, %.lr.ph.i.i23.i ]
  store i64 %i.hh, ptr %.sink.i20.i, align 8, !tbaa !31
  %.sroa.0.0.i21.i = getelementptr inbounds nuw i8, ptr %.sroa.0.023.i13.i, i64 8 ; 2 uses
  %.not.i22.i = icmp eq ptr %.sroa.0.0.i21.i, %1
  br i1 %.not.i22.i, label %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZN7xgboost6common16WeightedQuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EENSC_IZNSA_6MedianEPKNS9_7ContextERKNSD_6TensorIfLi2EEERKNS9_16HostDeviceVectorIfEEPNSQ_IfLi1EEEE3$_0EEfEET1_SP_dSH_SH_T0_EUlmmE_EEEvSH_SH_S13_S12_.exit", label %bb.ae, !llvm.loop !8

"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZN7xgboost6common16WeightedQuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EENSC_IZNSA_6MedianEPKNS9_7ContextERKNSD_6TensorIfLi2EEERKNS9_16HostDeviceVectorIfEEPNSQ_IfLi1EEEE3$_0EEfEET1_SP_dSH_SH_T0_EUlmmE_EEEvSH_SH_S13_S12_.exit": ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i19.i, %._crit_edge.i, %.preheader.i9.i
  %i.is = icmp sgt i64 %i.d, 7
  br i1 %i.is, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZN7xgboost6common16WeightedQuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EENSC_IZNSA_6MedianEPKNS9_7ContextERKNSD_6TensorIfLi2EEERKNS9_16HostDeviceVectorIfEEPNSQ_IfLi1EEEE3$_0EEfEET1_SP_dSH_SH_T0_EUlmmE_EEEvSH_SH_S13_S12_.exit"
  %i.it = getelementptr i8, ptr %3, i64 8         ; 4 uses
  %i.iu = ptrtoint ptr %i.e to i64                ; 3 uses
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph, %"_ZSt17__merge_sort_loopIPmN9__gnu_cxx17__normal_iteratorIS0_St6vectorImSaImEEEElNS1_5__ops15_Iter_comp_iterIZN7xgboost6common16WeightedQuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EENSC_IZNSA_6MedianEPKNS9_7ContextERKNSD_6TensorIfLi2EEERKNS9_16HostDeviceVectorIfEEPNSQ_IfLi1EEEE3$_0EEfEET1_SP_dSH_SH_T0_EUlmmE_EEEvSH_SH_S13_S12_T2_.exit"
  %.069 = phi i64 [ 7, %.lr.ph ], [ %i.ma, %"_ZSt17__merge_sort_loopIPmN9__gnu_cxx17__normal_iteratorIS0_St6vectorImSaImEEEElNS1_5__ops15_Iter_comp_iterIZN7xgboost6common16WeightedQuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EENSC_IZNSA_6MedianEPKNS9_7ContextERKNSD_6TensorIfLi2EEERKNS9_16HostDeviceVectorIfEEPNSQ_IfLi1EEEE3$_0EEfEET1_SP_dSH_SH_T0_EUlmmE_EEEvSH_SH_S13_S12_T2_.exit" ] ; 8 uses
  %i.iv = shl nsw i64 %.069, 1                    ; 6 uses
  %.not57.i = icmp slt i64 %i.d, %i.iv
  br i1 %.not57.i, label %._crit_edge.i25, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ak
  %.idx.i = shl i64 %.069, 3                      ; 12 uses
  %.idx51.i = shl i64 %.069, 4                    ; 2 uses
  %.not52.i = icmp eq i64 %.idx.i, %.idx51.i
  br i1 %.not52.i, label %.critedge.i.us.preheader.i, label %.lr.ph.i.i19

.critedge.i.us.preheader.i:                       ; preds = %.lr.ph.i
  %i.iw = icmp sgt i64 %.idx.i, 8
  br i1 %i.iw, label %.critedge.i.us.i.us, label %.critedge.i.us.preheader.i.split, !prof !35

.critedge.i.us.i.us:                              ; preds = %.critedge.i.us.preheader.i, %.critedge.i.us.i.us
  %.059.us.i.us = phi ptr [ %4, %.critedge.i.us.i.us ], [ %2, %.critedge.i.us.preheader.i ] ; 2 uses
  %.sroa.043.058.us.i.us = phi ptr [ %i.ix, %.critedge.i.us.i.us ], [ %0, %.critedge.i.us.preheader.i ] ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.043.058.us.i.us, i64 %.idx.i ; 4 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.059.us.i.us, ptr align 8 %.sroa.043.058.us.i.us, i64 %.idx.i, i1 false)
  %i.iy = getelementptr inbounds nuw i8, ptr %.059.us.i.us, i64 %.idx.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.iy, ptr nonnull align 8 %i.ix, i64 %.idx.i, i1 false)
  %4 = getelementptr inbounds nuw i8, ptr %i.iy, i64 %.idx.i ; 2 uses
  %i.iz = ptrtoint ptr %i.ix to i64
  %i.ja = sub i64 %i.a, %i.iz
  %i.jb = ashr exact i64 %i.ja, 3                 ; 2 uses
  %.not.us.i.us = icmp slt i64 %i.jb, %i.iv
  br i1 %.not.us.i.us, label %._crit_edge.i25, label %.critedge.i.us.i.us, !llvm.loop !315

.critedge.i.us.preheader.i.split:                 ; preds = %.critedge.i.us.preheader.i
  %i.jc = icmp eq i64 %.idx.i, 8
  br i1 %i.jc, label %.critedge.i.us.i.us58.preheader, label %.critedge.i.us.i

.critedge.i.us.i.us58.preheader:                  ; preds = %.critedge.i.us.preheader.i.split
  %.pre = load i64, ptr %0, align 8, !tbaa !31
  br label %.critedge.i.us.i.us58

.critedge.i.us.i.us58:                            ; preds = %.critedge.i.us.i.us58.preheader, %.critedge.i.us.i.us58
  %i.jd = phi i64 [ %i.jg, %.critedge.i.us.i.us58 ], [ %.pre, %.critedge.i.us.i.us58.preheader ]
  %.059.us.i.us59 = phi ptr [ %5, %.critedge.i.us.i.us58 ], [ %2, %.critedge.i.us.i.us58.preheader ] ; 3 uses
  %.sroa.043.058.us.i.us60 = phi ptr [ %i.je, %.critedge.i.us.i.us58 ], [ %0, %.critedge.i.us.i.us58.preheader ]
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.043.058.us.i.us60, i64 8 ; 4 uses
  store i64 %i.jd, ptr %.059.us.i.us59, align 8, !tbaa !31
  %i.jf = getelementptr inbounds nuw i8, ptr %.059.us.i.us59, i64 8
  %i.jg = load i64, ptr %i.je, align 8, !tbaa !31 ; 2 uses
  store i64 %i.jg, ptr %i.jf, align 8, !tbaa !31
  %5 = getelementptr inbounds nuw i8, ptr %.059.us.i.us59, i64 16 ; 2 uses
  %i.jh = ptrtoint ptr %i.je to i64
  %i.ji = sub i64 %i.a, %i.jh
  %i.jj = ashr exact i64 %i.ji, 3                 ; 2 uses
  %.not.us.i.us62 = icmp slt i64 %i.jj, %i.iv
  br i1 %.not.us.i.us62, label %._crit_edge.i25, label %.critedge.i.us.i.us58, !llvm.loop !315

.critedge.i.us.i:                                 ; preds = %.critedge.i.us.preheader.i.split, %.critedge.i.us.i
  %.059.us.i = phi ptr [ %i.jl, %.critedge.i.us.i ], [ %2, %.critedge.i.us.preheader.i.split ]
  %.sroa.043.058.us.i = phi ptr [ %6, %.critedge.i.us.i ], [ %0, %.critedge.i.us.preheader.i.split ]
  %6 = getelementptr inbounds i8, ptr %.sroa.043.058.us.i, i64 %.idx.i ; 3 uses
  %i.jk = getelementptr inbounds i8, ptr %.059.us.i, i64 %.idx.i
  %i.jl = getelementptr inbounds i8, ptr %i.jk, i64 %.idx.i ; 2 uses
  %i.jm = ptrtoint ptr %6 to i64
  %i.jn = sub i64 %i.a, %i.jm
  %i.jo = ashr exact i64 %i.jn, 3                 ; 2 uses
  %.not.us.i = icmp slt i64 %i.jo, %i.iv
  br i1 %.not.us.i, label %._crit_edge.i25, label %.critedge.i.us.i, !llvm.loop !315

.lr.ph.i.i19:                                     ; preds = %.lr.ph.i, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common16WeightedQuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EENSC_IZNSA_6MedianEPKNS9_7ContextERKNSD_6TensorIfLi2EEERKNS9_16HostDeviceVectorIfEEPNSQ_IfLi1EEEE3$_0EEfEET1_SP_dSH_SH_T0_EUlmmE_EEES13_SH_SH_SH_SH_S13_S12_.exit.i"
  %.059.i = phi ptr [ %i.kt, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common16WeightedQuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EENSC_IZNSA_6MedianEPKNS9_7ContextERKNSD_6TensorIfLi2EEERKNS9_16HostDeviceVectorIfEEPNSQ_IfLi1EEEE3$_0EEfEET1_SP_dSH_SH_T0_EUlmmE_EEES13_SH_SH_SH_SH_S13_S12_.exit.i" ], [ %2, %.lr.ph.i ]
  %.sroa.043.058.i = phi ptr [ %i.jq, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common16WeightedQuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EENSC_IZNSA_6MedianEPKNS9_7ContextERKNSD_6TensorIfLi2EEERKNS9_16HostDeviceVectorIfEEPNSQ_IfLi1EEEE3$_0EEfEET1_SP_dSH_SH_T0_EUlmmE_EEES13_SH_SH_SH_SH_S13_S12_.exit.i" ], [ %0, %.lr.ph.i ] ; 3 uses
  %i.jp = getelementptr inbounds i8, ptr %.sroa.043.058.i, i64 %.idx.i ; 3 uses
  %i.jq = getelementptr inbounds i8, ptr %.sroa.043.058.i, i64 %.idx51.i ; 4 uses
  %.val.val9.i.i20 = load ptr, ptr %i.it, align 8, !tbaa !47 ; 2 uses
  %i.jr = getelementptr i8, ptr %.val.val9.i.i20, i64 32
  %.val.val9.val10.i.i21 = load ptr, ptr %i.jr, align 8, !tbaa !59 ; 2 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.lr.ph.i.i19
  %.023.i.i = phi ptr [ %.059.i, %.lr.ph.i.i19 ], [ %i.kd, %bb.al ] ; 2 uses
  %.sroa.017.022.i.i = phi ptr [ %.sroa.043.058.i, %.lr.ph.i.i19 ], [ %.sroa.017.1.i.i, %bb.al ] ; 2 uses
  %.sroa.013.021.i.i = phi ptr [ %i.jp, %.lr.ph.i.i19 ], [ %.sroa.013.1.i.i, %bb.al ] ; 2 uses
  %.val.val.i.i22 = load i64, ptr %3, align 8, !tbaa !31 ; 2 uses
  %.val.val9.val.i.i23 = load i64, ptr %.val.val9.i.i20, align 8, !tbaa !31 ; 2 uses
  %i.js = load i64, ptr %.sroa.013.021.i.i, align 8, !tbaa !31 ; 2 uses
  %i.jt = load i64, ptr %.sroa.017.022.i.i, align 8, !tbaa !31 ; 2 uses
  %i.ju = add i64 %i.js, %.val.val.i.i22
  %i.jv = mul i64 %i.ju, %.val.val9.val.i.i23
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %.val.val9.val10.i.i21, i64 %i.jv
  %i.jx = load float, ptr %i.jw, align 4, !tbaa !58
  %i.jy = add i64 %i.jt, %.val.val.i.i22
  %i.jz = mul i64 %i.jy, %.val.val9.val.i.i23
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %.val.val9.val10.i.i21, i64 %i.jz
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !58
  %i.kc = fcmp olt float %i.jx, %i.kb             ; 3 uses
  %.sink.i.i24 = select i1 %i.kc, i64 %i.js, i64 %i.jt
  %.sroa.013.1.idx.i.i = select i1 %i.kc, i64 8, i64 0
  %.sroa.013.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.021.i.i, i64 %.sroa.013.1.idx.i.i ; 5 uses
  %.sroa.017.1.idx.i.i = select i1 %i.kc, i64 0, i64 8
  %.sroa.017.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.017.022.i.i, i64 %.sroa.017.1.idx.i.i ; 5 uses
  store i64 %.sink.i.i24, ptr %.023.i.i, align 8, !tbaa !31
  %i.kd = getelementptr inbounds nuw i8, ptr %.023.i.i, i64 8 ; 4 uses
  %i.ke = icmp ne ptr %.sroa.017.1.i.i, %i.jp
  %i.kf = icmp ne ptr %.sroa.013.1.i.i, %i.jq
  %or.cond.i.i = select i1 %i.ke, i1 %i.kf, i1 false
  br i1 %or.cond.i.i, label %bb.al, label %.critedge.i.loopexit.i, !llvm.loop !316

.critedge.i.loopexit.i:                           ; preds = %bb.al
  %i.kg = ptrtoint ptr %i.jp to i64
  %i.kh = ptrtoint ptr %.sroa.017.1.i.i to i64
  %i.ki = sub i64 %i.kg, %i.kh                    ; 4 uses
  %i.kj = icmp sgt i64 %i.ki, 8
  br i1 %i.kj, label %bb.am, label %bb.an, !prof !35

bb.am:                                            ; preds = %.critedge.i.loopexit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.kd, ptr nonnull align 8 %.sroa.017.1.i.i, i64 %i.ki, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_ET0_T_S8_S7_.exit.i.i

bb.an:                                            ; preds = %.critedge.i.loopexit.i
  %i.kk = icmp eq i64 %i.ki, 8
  br i1 %i.kk, label %bb.ao, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_ET0_T_S8_S7_.exit.i.i

bb.ao:                                            ; preds = %bb.an
  %i.kl = load i64, ptr %.sroa.017.1.i.i, align 8, !tbaa !31
  store i64 %i.kl, ptr %i.kd, align 8, !tbaa !31
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_ET0_T_S8_S7_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_ET0_T_S8_S7_.exit.i.i: ; preds = %bb.ao, %bb.an, %bb.am
  %i.km = getelementptr inbounds i8, ptr %i.kd, i64 %i.ki ; 3 uses
  %i.kn = ptrtoint ptr %i.jq to i64               ; 2 uses
  %i.ko = ptrtoint ptr %.sroa.013.1.i.i to i64
  %i.kp = sub i64 %i.kn, %i.ko                    ; 4 uses
  %i.kq = icmp sgt i64 %i.kp, 8
  br i1 %i.kq, label %bb.ap, label %bb.aq, !prof !35

bb.ap:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_ET0_T_S8_S7_.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.km, ptr nonnull align 8 %.sroa.013.1.i.i, i64 %i.kp, i1 false)
  br label %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common16WeightedQuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EENSC_IZNSA_6MedianEPKNS9_7ContextERKNSD_6TensorIfLi2EEERKNS9_16HostDeviceVectorIfEEPNSQ_IfLi1EEEE3$_0EEfEET1_SP_dSH_SH_T0_EUlmmE_EEES13_SH_SH_SH_SH_S13_S12_.exit.i"

bb.aq:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_ET0_T_S8_S7_.exit.i.i
  %i.kr = icmp eq i64 %i.kp, 8
  br i1 %i.kr, label %bb.ar, label %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common16WeightedQuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EENSC_IZNSA_6MedianEPKNS9_7ContextERKNSD_6TensorIfLi2EEERKNS9_16HostDeviceVectorIfEEPNSQ_IfLi1EEEE3$_0EEfEET1_SP_dSH_SH_T0_EUlmmE_EEES13_SH_SH_SH_SH_S13_S12_.exit.i"

bb.ar:                                            ; preds = %bb.aq
  %i.ks = load i64, ptr %.sroa.013.1.i.i, align 8, !tbaa !31
  store i64 %i.ks, ptr %i.km, align 8, !tbaa !31
  br label %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common16WeightedQuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EENSC_IZNSA_6MedianEPKNS9_7ContextERKNSD_6TensorIfLi2EEERKNS9_16HostDeviceVectorIfEEPNSQ_IfLi1EEEE3$_0EEfEET1_SP_dSH_SH_T0_EUlmmE_EEES13_SH_SH_SH_SH_S13_S12_.exit.i"

"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common16WeightedQuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EENSC_IZNSA_6MedianEPKNS9_7ContextERKNSD_6TensorIfLi2EEERKNS9_16HostDeviceVectorIfEEPNSQ_IfLi1EEEE3$_0EEfEET1_SP_dSH_SH_T0_EUlmmE_EEES13_SH_SH_SH_SH_S13_S12_.exit.i": ; preds = %bb.ar, %bb.aq, %bb.ap
  %i.kt = getelementptr inbounds i8, ptr %i.km, i64 %i.kp ; 2 uses
  %i.ku = sub i64 %i.a, %i.kn
  %i.kv = ashr exact i64 %i.ku, 3                 ; 2 uses
  %.not.i = icmp slt i64 %i.kv, %i.iv
  br i1 %.not.i, label %._crit_edge.i25, label %.lr.ph.i.i19, !llvm.loop !315

._crit_edge.i25:                                  ; preds = %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common16WeightedQuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EENSC_IZNSA_6MedianEPKNS9_7ContextERKNSD_6TensorIfLi2EEERKNS9_16HostDeviceVectorIfEEPNSQ_IfLi1EEEE3$_0EEfEET1_SP_dSH_SH_T0_EUlmmE_EEES13_SH_SH_SH_SH_S13_S12_.exit.i", %.critedge.i.us.i, %.critedge.i.us.i.us58, %.critedge.i.us.i.us, %bb.ak
  %.sroa.043.0.lcssa.i = phi ptr [ %0, %bb.ak ], [ %i.ix, %.critedge.i.us.i.us ], [ %i.je, %.critedge.i.us.i.us58 ], [ %6, %.critedge.i.us.i ], [ %i.jq, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common16WeightedQuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EENSC_IZNSA_6MedianEPKNS9_7ContextERKNSD_6TensorIfLi2EEERKNS9_16HostDeviceVectorIfEEPNSQ_IfLi1EEEE3$_0EEfEET1_SP_dSH_SH_T0_EUlmmE_EEES13_SH_SH_SH_SH_S13_S12_.exit.i" ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %2, %bb.ak ], [ %4, %.critedge.i.us.i.us ], [ %5, %.critedge.i.us.i.us58 ], [ %i.jl, %.critedge.i.us.i ], [ %i.kt, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common16WeightedQuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EENSC_IZNSA_6MedianEPKNS9_7ContextERKNSD_6TensorIfLi2EEERKNS9_16HostDeviceVectorIfEEPNSQ_IfLi1EEEE3$_0EEfEET1_SP_dSH_SH_T0_EUlmmE_EEES13_SH_SH_SH_SH_S13_S12_.exit.i" ] ; 2 uses
  %.lcssa55.i = phi i64 [ %i.d, %bb.ak ], [ %i.jb, %.critedge.i.us.i.us ], [ %i.jj, %.critedge.i.us.i.us58 ], [ %i.jo, %.critedge.i.us.i ], [ %i.kv, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common16WeightedQuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EENSC_IZNSA_6MedianEPKNS9_7ContextERKNSD_6TensorIfLi2EEERKNS9_16HostDeviceVectorIfEEPNSQ_IfLi1EEEE3$_0EEfEET1_SP_dSH_SH_T0_EUlmmE_EEES13_SH_SH_SH_SH_S13_S12_.exit.i" ]
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %.069, i64 %.lcssa55.i) ; 2 uses
  %.idx53.i = shl nsw i64 %.sroa.speculated.i, 3
  %i.kw = getelementptr inbounds i8, ptr %.sroa.043.0.lcssa.i, i64 %.idx53.i ; 5 uses
  %i.kx = icmp ne i64 %.sroa.speculated.i, 0
  %i.ky = icmp ne ptr %i.kw, %1
  %or.cond20.i15.i = select i1 %i.kx, i1 %i.ky, i1 false
  br i1 %or.cond20.i15.i, label %.lr.ph.i21.i, label %.critedge.i16.i

.lr.ph.i21.i:                                     ; preds = %._crit_edge.i25
  %.val.val9.i22.i = load ptr, ptr %i.it, align 8, !tbaa !47 ; 2 uses
  %i.kz = getelementptr i8, ptr %.val.val9.i22.i, i64 32
  %.val.val9.val10.i23.i = load ptr, ptr %i.kz, align 8, !tbaa !59 ; 2 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %.lr.ph.i21.i
  %.023.i24.i = phi ptr [ %.0.lcssa.i, %.lr.ph.i21.i ], [ %i.ll, %bb.as ] ; 2 uses
  %.sroa.017.022.i25.i = phi ptr [ %.sroa.043.0.lcssa.i, %.lr.ph.i21.i ], [ %.sroa.017.1.i33.i, %bb.as ] ; 2 uses
  %.sroa.013.021.i26.i = phi ptr [ %i.kw, %.lr.ph.i21.i ], [ %.sroa.013.1.i31.i, %bb.as ] ; 2 uses
  %.val.val.i27.i = load i64, ptr %3, align 8, !tbaa !31 ; 2 uses
  %.val.val9.val.i28.i = load i64, ptr %.val.val9.i22.i, align 8, !tbaa !31 ; 2 uses
  %i.la = load i64, ptr %.sroa.013.021.i26.i, align 8, !tbaa !31 ; 2 uses
  %i.lb = load i64, ptr %.sroa.017.022.i25.i, align 8, !tbaa !31 ; 2 uses
  %i.lc = add i64 %i.la, %.val.val.i27.i
  %i.ld = mul i64 %i.lc, %.val.val9.val.i28.i
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %.val.val9.val10.i23.i, i64 %i.ld
  %i.lf = load float, ptr %i.le, align 4, !tbaa !58
  %i.lg = add i64 %i.lb, %.val.val.i27.i
  %i.lh = mul i64 %i.lg, %.val.val9.val.i28.i
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %.val.val9.val10.i23.i, i64 %i.lh
  %i.lj = load float, ptr %i.li, align 4, !tbaa !58
  %i.lk = fcmp olt float %i.lf, %i.lj             ; 3 uses
  %.sink.i29.i = select i1 %i.lk, i64 %i.la, i64 %i.lb
  %.sroa.013.1.idx.i30.i = select i1 %i.lk, i64 8, i64 0
  %.sroa.013.1.i31.i = getelementptr inbounds nuw i8, ptr %.sroa.013.021.i26.i, i64 %.sroa.013.1.idx.i30.i ; 3 uses
  %.sroa.017.1.idx.i32.i = select i1 %i.lk, i64 0, i64 8
  %.sroa.017.1.i33.i = getelementptr inbounds nuw i8, ptr %.sroa.017.022.i25.i, i64 %.sroa.017.1.idx.i32.i ; 3 uses
  store i64 %.sink.i29.i, ptr %.023.i24.i, align 8, !tbaa !31
  %i.ll = getelementptr inbounds nuw i8, ptr %.023.i24.i, i64 8 ; 2 uses
  %i.lm = icmp ne ptr %.sroa.017.1.i33.i, %i.kw
  %i.ln = icmp ne ptr %.sroa.013.1.i31.i, %1
  %or.cond.i34.i = select i1 %i.lm, i1 %i.ln, i1 false
  br i1 %or.cond.i34.i, label %bb.as, label %.critedge.i16.i, !llvm.loop !316

.critedge.i16.i:                                  ; preds = %bb.as, %._crit_edge.i25
  %.sroa.013.0.lcssa.i17.i = phi ptr [ %i.kw, %._crit_edge.i25 ], [ %.sroa.013.1.i31.i, %bb.as ] ; 3 uses
  %.sroa.017.0.lcssa.i18.i = phi ptr [ %.sroa.043.0.lcssa.i, %._crit_edge.i25 ], [ %.sroa.017.1.i33.i, %bb.as ] ; 3 uses
  %.0.lcssa.i19.i = phi ptr [ %.0.lcssa.i, %._crit_edge.i25 ], [ %i.ll, %bb.as ] ; 3 uses
  %i.lo = ptrtoint ptr %i.kw to i64
  %i.lp = ptrtoint ptr %.sroa.017.0.lcssa.i18.i to i64
  %i.lq = sub i64 %i.lo, %i.lp                    ; 4 uses
  %i.lr = icmp sgt i64 %i.lq, 8
  br i1 %i.lr, label %bb.at, label %bb.au, !prof !35

bb.at:                                            ; preds = %.critedge.i16.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.lcssa.i19.i, ptr align 8 %.sroa.017.0.lcssa.i18.i, i64 %i.lq, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_ET0_T_S8_S7_.exit.i20.i

bb.au:                                            ; preds = %.critedge.i16.i
  %i.ls = icmp eq i64 %i.lq, 8
  br i1 %i.ls, label %bb.av, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_ET0_T_S8_S7_.exit.i20.i

bb.av:                                            ; preds = %bb.au
  %i.lt = load i64, ptr %.sroa.017.0.lcssa.i18.i, align 8, !tbaa !31
  store i64 %i.lt, ptr %.0.lcssa.i19.i, align 8, !tbaa !31
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_ET0_T_S8_S7_.exit.i20.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_ET0_T_S8_S7_.exit.i20.i: ; preds = %bb.av, %bb.au, %bb.at
  %i.lu = getelementptr inbounds i8, ptr %.0.lcssa.i19.i, i64 %i.lq ; 2 uses
  %i.lv = ptrtoint ptr %.sroa.013.0.lcssa.i17.i to i64
  %i.lw = sub i64 %i.a, %i.lv                     ; 3 uses
  %i.lx = icmp sgt i64 %i.lw, 8
  br i1 %i.lx, label %bb.aw, label %bb.ax, !prof !35

bb.aw:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_ET0_T_S8_S7_.exit.i20.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.lu, ptr align 8 %.sroa.013.0.lcssa.i17.i, i64 %i.lw, i1 false)
  br label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_lNS0_5__ops15_Iter_comp_iterIZN7xgboost6common16WeightedQuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EENSC_IZNSA_6MedianEPKNS9_7ContextERKNSD_6TensorIfLi2EEERKNS9_16HostDeviceVectorIfEEPNSQ_IfLi1EEEE3$_0EEfEET1_SP_dSH_SH_T0_EUlmmE_EEEvSH_SH_S13_S12_T2_.exit"

bb.ax:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_ET0_T_S8_S7_.exit.i20.i
  %i.ly = icmp eq i64 %i.lw, 8
  br i1 %i.ly, label %bb.ay, label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_lNS0_5__ops15_Iter_comp_iterIZN7xgboost6common16WeightedQuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EENSC_IZNSA_6MedianEPKNS9_7ContextERKNSD_6TensorIfLi2EEERKNS9_16HostDeviceVectorIfEEPNSQ_IfLi1EEEE3$_0EEfEET1_SP_dSH_SH_T0_EUlmmE_EEEvSH_SH_S13_S12_T2_.exit"

bb.ay:                                            ; preds = %bb.ax
  %i.lz = load i64, ptr %.sroa.013.0.lcssa.i17.i, align 8, !tbaa !31
  store i64 %i.lz, ptr %i.lu, align 8, !tbaa !31
  br label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_lNS0_5__ops15_Iter_comp_iterIZN7xgboost6common16WeightedQuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EENSC_IZNSA_6MedianEPKNS9_7ContextERKNSD_6TensorIfLi2EEERKNS9_16HostDeviceVectorIfEEPNSQ_IfLi1EEEE3$_0EEfEET1_SP_dSH_SH_T0_EUlmmE_EEEvSH_SH_S13_S12_T2_.exit"

"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_lNS0_5__ops15_Iter_comp_iterIZN7xgboost6common16WeightedQuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EENSC_IZNSA_6MedianEPKNS9_7ContextERKNSD_6TensorIfLi2EEERKNS9_16HostDeviceVectorIfEEPNSQ_IfLi1EEEE3$_0EEfEET1_SP_dSH_SH_T0_EUlmmE_EEEvSH_SH_S13_S12_T2_.exit": ; preds = %bb.aw, %bb.ax, %bb.ay
  %i.ma = shl nsw i64 %.069, 2                    ; 5 uses
  %.not55.i = icmp slt i64 %i.d, %i.ma
  br i1 %.not55.i, label %._crit_edge.i31, label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_lNS0_5__ops15_Iter_comp_iterIZN7xgboost6common16WeightedQuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EENSC_IZNSA_6MedianEPKNS9_7ContextERKNSD_6TensorIfLi2EEERKNS9_16HostDeviceVectorIfEEPNSQ_IfLi1EEEE3$_0EEfEET1_SP_dSH_SH_T0_EUlmmE_EEEvSH_SH_S13_S12_T2_.exit"
  %.idx.i27 = shl i64 %.069, 4                    ; 8 uses
  %.idx49.i = shl nsw i64 %.069, 5                ; 2 uses
  %.not50.i = icmp eq i64 %.idx.i27, %.idx49.i
  br i1 %.not50.i, label %._crit_edge.i.us.preheader.i, label %.lr.ph.i.i28

._crit_edge.i.us.preheader.i:                     ; preds = %.lr.ph.i26
  %i.mb = icmp sgt i64 %.069, 0
  %i.mc = icmp sgt i64 %.idx.i27, 8
  br label %._crit_edge.i.us.i

._crit_edge.i.us.i:                               ; preds = %"_ZSt12__move_mergeIPmN9__gnu_cxx17__normal_iteratorIS0_St6vectorImSaImEEEENS1_5__ops15_Iter_comp_iterIZN7xgboost6common16WeightedQuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EENSC_IZNSA_6MedianEPKNS9_7ContextERKNSD_6TensorIfLi2EEERKNS9_16HostDeviceVectorIfEEPNSQ_IfLi1EEEE3$_0EEfEET1_SP_dSH_SH_T0_EUlmmE_EEES13_SH_SH_SH_SH_S13_S12_.exit.us.i", %._crit_edge.i.us.preheader.i
  %.sroa.021.057.us.i = phi ptr [ %i.mf, %"_ZSt12__move_mergeIPmN9__gnu_cxx17__normal_iteratorIS0_St6vectorImSaImEEEENS1_5__ops15_Iter_comp_iterIZN7xgboost6common16WeightedQuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EENSC_IZNSA_6MedianEPKNS9_7ContextERKNSD_6TensorIfLi2EEERKNS9_16HostDeviceVectorIfEEPNSQ_IfLi1EEEE3$_0EEfEET1_SP_dSH_SH_T0_EUlmmE_EEES13_SH_SH_SH_SH_S13_S12_.exit.us.i" ], [ %0, %._crit_edge.i.us.preheader.i ] ; 2 uses
  %.056.us.i = phi ptr [ %i.md, %"_ZSt12__move_mergeIPmN9__gnu_cxx17__normal_iteratorIS0_St6vectorImSaImEEEENS1_5__ops15_Iter_comp_iterIZN7xgboost6common16WeightedQuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EENSC_IZNSA_6MedianEPKNS9_7ContextERKNSD_6TensorIfLi2EEERKNS9_16HostDeviceVectorIfEEPNSQ_IfLi1EEEE3$_0EEfEET1_SP_dSH_SH_T0_EUlmmE_EEES13_SH_SH_SH_SH_S13_S12_.exit.us.i" ], [ %2, %._crit_edge.i.us.preheader.i ] ; 2 uses
  %i.md = getelementptr inbounds i8, ptr %.056.us.i, i64 %.idx.i27 ; 4 uses
  br i1 %i.mb, label %bb.az, label %_ZSt4moveIPmN9__gnu_cxx17__normal_iteratorIS0_St6vectorImSaImEEEEET0_T_S8_S7_.exit.i.us.i, !prof !35

bb.az:                                            ; preds = %._crit_edge.i.us.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.021.057.us.i, ptr align 8 %.056.us.i, i64 %.idx.i27, i1 false)
  br label %_ZSt4moveIPmN9__gnu_cxx17__normal_iteratorIS0_St6vectorImSaImEEEEET0_T_S8_S7_.exit.i.us.i

_ZSt4moveIPmN9__gnu_cxx17__normal_iteratorIS0_St6vectorImSaImEEEEET0_T_S8_S7_.exit.i.us.i: ; preds = %._crit_edge.i.us.i, %bb.az
  %i.me = getelementptr inbounds i8, ptr %.sroa.021.057.us.i, i64 %.idx.i27 ; 2 uses
  br i1 %i.mc, label %bb.ba, label %"_ZSt12__move_mergeIPmN9__gnu_cxx17__normal_iteratorIS0_St6vectorImSaImEEEENS1_5__ops15_Iter_comp_iterIZN7xgboost6common16WeightedQuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EENSC_IZNSA_6MedianEPKNS9_7ContextERKNSD_6TensorIfLi2EEERKNS9_16HostDeviceVectorIfEEPNSQ_IfLi1EEEE3$_0EEfEET1_SP_dSH_SH_T0_EUlmmE_EEES13_SH_SH_SH_SH_S13_S12_.exit.us.i", !prof !79

bb.ba:                                            ; preds = %_ZSt4moveIPmN9__gnu_cxx17__normal_iteratorIS0_St6vectorImSaImEEEEET0_T_S8_S7_.exit.i.us.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.me, ptr nonnull align 8 %i.md, i64 %.idx.i27, i1 false)
  br label %"_ZSt12__move_mergeIPmN9__gnu_cxx17__normal_iteratorIS0_St6vectorImSaImEEEENS1_5__ops15_Iter_comp_iterIZN7xgboost6common16WeightedQuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EENSC_IZNSA_6MedianEPKNS9_7ContextERKNSD_6TensorIfLi2EEERKNS9_16HostDeviceVectorIfEEPNSQ_IfLi1EEEE3$_0EEfEET1_SP_dSH_SH_T0_EUlmmE_EEES13_SH_SH_SH_SH_S13_S12_.exit.us.i"

"_ZSt12__move_mergeIPmN9__gnu_cxx17__normal_iteratorIS0_St6vectorImSaImEEEENS1_5__ops15_Iter_comp_iterIZN7xgboost6common16WeightedQuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EENSC_IZNSA_6MedianEPKNS9_7ContextERKNSD_6TensorIfLi2EEERKNS9_16HostDeviceVectorIfEEPNSQ_IfLi1EEEE3$_0EEfEET1_SP_dSH_SH_T0_EUlmmE_EEES13_SH_SH_SH_SH_S13_S12_.exit.us.i": ; preds = %_ZSt4moveIPmN9__gnu_cxx17__normal_iteratorIS0_St6vectorImSaImEEEEET0_T_S8_S7_.exit.i.us.i, %bb.ba
  %i.mf = getelementptr inbounds i8, ptr %i.me, i64 %.idx.i27 ; 2 uses
  %i.mg = ptrtoint ptr %i.md to i64
  %i.mh = sub i64 %i.iu, %i.mg
  %i.mi = ashr exact i64 %i.mh, 3                 ; 2 uses
  %.not.us.i35 = icmp slt i64 %i.mi, %i.ma
  br i1 %.not.us.i35, label %._crit_edge.i31, label %._crit_edge.i.us.i, !llvm.loop !317

.lr.ph.i.i28:                                     ; preds = %.lr.ph.i26, %"_ZSt12__move_mergeIPmN9__gnu_cxx17__normal_iteratorIS0_St6vectorImSaImEEEENS1_5__ops15_Iter_comp_iterIZN7xgboost6common16WeightedQuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EENSC_IZNSA_6MedianEPKNS9_7ContextERKNSD_6TensorIfLi2EEERKNS9_16HostDeviceVectorIfEEPNSQ_IfLi1EEEE3$_0EEfEET1_SP_dSH_SH_T0_EUlmmE_EEES13_SH_SH_SH_SH_S13_S12_.exit.i"
  %.sroa.021.057.i = phi ptr [ %i.nm, %"_ZSt12__move_mergeIPmN9__gnu_cxx17__normal_iteratorIS0_St6vectorImSaImEEEENS1_5__ops15_Iter_comp_iterIZN7xgboost6common16WeightedQuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EENSC_IZNSA_6MedianEPKNS9_7ContextERKNSD_6TensorIfLi2EEERKNS9_16HostDeviceVectorIfEEPNSQ_IfLi1EEEE3$_0EEfEET1_SP_dSH_SH_T0_EUlmmE_EEES13_SH_SH_SH_SH_S13_S12_.exit.i" ], [ %0, %.lr.ph.i26 ]
  %.056.i = phi ptr [ %i.mk, %"_ZSt12__move_mergeIPmN9__gnu_cxx17__normal_iteratorIS0_St6vectorImSaImEEEENS1_5__ops15_Iter_comp_iterIZN7xgboost6common16WeightedQuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EENSC_IZNSA_6MedianEPKNS9_7ContextERKNSD_6TensorIfLi2EEERKNS9_16HostDeviceVectorIfEEPNSQ_IfLi1EEEE3$_0EEfEET1_SP_dSH_SH_T0_EUlmmE_EEES13_SH_SH_SH_SH_S13_S12_.exit.i" ], [ %2, %.lr.ph.i26 ] ; 3 uses
  %i.mj = getelementptr inbounds i8, ptr %.056.i, i64 %.idx.i27 ; 3 uses
  %i.mk = getelementptr inbounds i8, ptr %.056.i, i64 %.idx49.i ; 4 uses
  %.val.val18.i.i = load ptr, ptr %i.it, align 8, !tbaa !47 ; 2 uses
  %i.ml = getelementptr i8, ptr %.val.val18.i.i, i64 32
  %.val.val18.val19.i.i = load ptr, ptr %i.ml, align 8, !tbaa !59 ; 2 uses
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bb, %.lr.ph.i.i28
  %.026.i.i = phi ptr [ %.056.i, %.lr.ph.i.i28 ], [ %.1.i.i, %bb.bb ] ; 2 uses
  %.01625.i.i = phi ptr [ %i.mj, %.lr.ph.i.i28 ], [ %.117.i.i, %bb.bb ] ; 2 uses
  %.sroa.021.024.i.i = phi ptr [ %.sroa.021.057.i, %.lr.ph.i.i28 ], [ %i.mv, %bb.bb ] ; 2 uses
  %.016.val.i.i = load i64, ptr %.01625.i.i, align 8, !tbaa !31 ; 2 uses
  %.0.val.i.i = load i64, ptr %.026.i.i, align 8, !tbaa !31 ; 2 uses
  %.val.val.i.i29 = load i64, ptr %3, align 8, !tbaa !31 ; 2 uses
  %.val.val18.val.i.i = load i64, ptr %.val.val18.i.i, align 8, !tbaa !31 ; 2 uses
  %i.mm = add i64 %.val.val.i.i29, %.016.val.i.i
  %i.mn = mul i64 %.val.val18.val.i.i, %i.mm
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %.val.val18.val19.i.i, i64 %i.mn
  %i.mp = load float, ptr %i.mo, align 4, !tbaa !58
  %i.mq = add i64 %.val.val.i.i29, %.0.val.i.i
  %i.mr = mul i64 %.val.val18.val.i.i, %i.mq
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %.val.val18.val19.i.i, i64 %i.mr
  %i.mt = load float, ptr %i.ms, align 4, !tbaa !58
  %i.mu = fcmp olt float %i.mp, %i.mt             ; 3 uses
  %.0.val.sink.i.i = select i1 %i.mu, i64 %.016.val.i.i, i64 %.0.val.i.i
  %.117.idx.i.i = select i1 %i.mu, i64 8, i64 0
  %.117.i.i = getelementptr inbounds nuw i8, ptr %.01625.i.i, i64 %.117.idx.i.i ; 5 uses
  %.1.idx.i.i = select i1 %i.mu, i64 0, i64 8
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 %.1.idx.i.i ; 5 uses
  store i64 %.0.val.sink.i.i, ptr %.sroa.021.024.i.i, align 8, !tbaa !31
  %i.mv = getelementptr inbounds nuw i8, ptr %.sroa.021.024.i.i, i64 8 ; 4 uses
  %i.mw = icmp ne ptr %.1.i.i, %i.mj
  %i.mx = icmp ne ptr %.117.i.i, %i.mk
  %i.my = select i1 %i.mw, i1 %i.mx, i1 false
  br i1 %i.my, label %bb.bb, label %._crit_edge.i.loopexit.i, !llvm.loop !318

._crit_edge.i.loopexit.i:                         ; preds = %bb.bb
  %i.mz = ptrtoint ptr %i.mj to i64
  %i.na = ptrtoint ptr %.1.i.i to i64
  %i.nb = sub i64 %i.mz, %i.na                    ; 4 uses
  %i.nc = icmp sgt i64 %i.nb, 8
  br i1 %i.nc, label %bb.bc, label %bb.bd, !prof !35

bb.bc:                                            ; preds = %._crit_edge.i.loopexit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.mv, ptr nonnull align 8 %.1.i.i, i64 %i.nb, i1 false)
  br label %_ZSt4moveIPmN9__gnu_cxx17__normal_iteratorIS0_St6vectorImSaImEEEEET0_T_S8_S7_.exit.i.i

bb.bd:                                            ; preds = %._crit_edge.i.loopexit.i
  %i.nd = icmp eq i64 %i.nb, 8
  br i1 %i.nd, label %bb.be, label %_ZSt4moveIPmN9__gnu_cxx17__normal_iteratorIS0_St6vectorImSaImEEEEET0_T_S8_S7_.exit.i.i

bb.be:                                            ; preds = %bb.bd
  %i.ne = load i64, ptr %.1.i.i, align 8, !tbaa !31
  store i64 %i.ne, ptr %i.mv, align 8, !tbaa !31
  br label %_ZSt4moveIPmN9__gnu_cxx17__normal_iteratorIS0_St6vectorImSaImEEEEET0_T_S8_S7_.exit.i.i

_ZSt4moveIPmN9__gnu_cxx17__normal_iteratorIS0_St6vectorImSaImEEEEET0_T_S8_S7_.exit.i.i: ; preds = %bb.be, %bb.bd, %bb.bc
  %i.nf = getelementptr inbounds i8, ptr %i.mv, i64 %i.nb ; 3 uses
  %i.ng = ptrtoint ptr %i.mk to i64               ; 2 uses
  %i.nh = ptrtoint ptr %.117.i.i to i64
  %i.ni = sub i64 %i.ng, %i.nh                    ; 4 uses
  %i.nj = icmp sgt i64 %i.ni, 8
  br i1 %i.nj, label %bb.bf, label %bb.bg, !prof !35

bb.bf:                                            ; preds = %_ZSt4moveIPmN9__gnu_cxx17__normal_iteratorIS0_St6vectorImSaImEEEEET0_T_S8_S7_.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.nf, ptr nonnull align 8 %.117.i.i, i64 %i.ni, i1 false)
  br label %"_ZSt12__move_mergeIPmN9__gnu_cxx17__normal_iteratorIS0_St6vectorImSaImEEEENS1_5__ops15_Iter_comp_iterIZN7xgboost6common16WeightedQuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EENSC_IZNSA_6MedianEPKNS9_7ContextERKNSD_6TensorIfLi2EEERKNS9_16HostDeviceVectorIfEEPNSQ_IfLi1EEEE3$_0EEfEET1_SP_dSH_SH_T0_EUlmmE_EEES13_SH_SH_SH_SH_S13_S12_.exit.i"

end_hunk_1
