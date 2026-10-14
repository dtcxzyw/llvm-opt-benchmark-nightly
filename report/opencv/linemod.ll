Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/linemod?download=true
inline.NumInlined: 3000
inline.NumDeleted: 1203
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZNSt6vectorIS_IN2cv3MatESaIS1_EESaIS3_EED2Ev:bb.a

_ZSt8_DestroyIPSt6vectorIN2cv3MatESaIS2_EES4_EvT_S6_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv3MatESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.o = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIN2cv3MatESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.o, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIN2cv3MatESaIS2_EESaIS4_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv3MatESaIS2_EES4_EvT_S6_RSaIT0_E.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !211
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #30
  br label %_ZNSt12_Vector_baseISt6vectorIN2cv3MatESaIS2_EESaIS4_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIN2cv3MatESaIS2_EESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv3MatESaIS2_EES4_EvT_S6_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !200    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !199  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i) #28
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 208 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !9

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !200
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit:  ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.e = phi ptr [ %.pr, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !201
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #30
  br label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EED2Ev.exit:   ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

declare void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZNK2cv12_OutputArray9getMatRefEi(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZNK2cv7linemod8Detector10matchClassERKSt6vectorIS2_IS2_INS_3MatESaIS3_EESaIS5_EESaIS7_EERKS2_INS_5Size_IiEESaISD_EEfRS2_INS0_5MatchESaISI_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS2_IS2_INS0_8TemplateESaISU_EESaISW_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, float noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.cv::MatExpr", align 8       ; 9 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %11 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %12 = alloca %"class.std::vector.66", align 8   ; 10 uses
  %13 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %14 = alloca %"struct.cv::linemod::Match", align 8 ; 12 uses
  %15 = alloca %"class.std::vector.66", align 8   ; 10 uses
  %16 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !232
  %i.e = load ptr, ptr %6, align 8, !tbaa !233    ; 2 uses
  %.not = icmp eq ptr %i.d, %i.e
  br i1 %.not, label %._crit_edge509, label %.lr.ph508

.lr.ph508:                                        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 432
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 224
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.p = fdiv float %3, 1.000000e+02
  %i.q = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 128
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 12 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %14, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 10 uses
  %i.x = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 17 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %14, i64 48 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 432 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 224 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %16, i64 128
  %i.ak = getelementptr inbounds nuw i8, ptr %16, i64 12
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.b

._crit_edge509:                                   ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit234, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph508, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit234
  %i.am = phi ptr [ %i.e, %.lr.ph508 ], [ %i.xw, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit234 ]
  %.0506 = phi i64 [ 0, %.lr.ph508 ], [ %i.xu, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit234 ] ; 3 uses
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %.0506 ; 5 uses
  %i.ao = load ptr, ptr %i.f, align 8, !tbaa !421
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -24
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.aq = load ptr, ptr %i.g, align 8, !tbaa !169 ; 2 uses
  %i.ar = load ptr, ptr %0, align 8, !tbaa !170   ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64               ; 3 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 4                 ; 4 uses
  %i.aw = icmp ugt i64 %i.av, 44343134792571037
  br i1 %i.aw, label %.noexc, label %_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

.noexc:                                           ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.52) #29
  unreachable

_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.b
  %.not.i.i.i.i = icmp eq ptr %i.aq, %i.ar
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.thread.i, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.thread.i: ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  br label %.loopexit351

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i: ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.ax = mul nuw nsw i64 %i.av, 208
  %i.ay = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #31 ; 4 uses
  store ptr %i.ay, ptr %12, align 8, !tbaa !200
  %i.az = getelementptr inbounds nuw [208 x i8], ptr %i.ay, i64 %i.av
  store ptr %i.az, ptr %i.i, align 8, !tbaa !201
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i
  %.08.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i ], [ %i.ay, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i ] ; 2 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ba, %.lr.ph.i.i.i.i.i ], [ %i.av, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i ]
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.08.i.i.i.i.i) #28
  %i.ba = add nsw i64 %.057.i.i.i.i.i, -1         ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not.i.i.i.i.i, label %.loopexit351.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !11

.loopexit351.loopexit:                            ; preds = %.lr.ph.i.i.i.i.i
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !169
  %.pre587.a = load ptr, ptr %0, align 8, !tbaa !170
  %.pre595 = ptrtoint ptr %.pre to i64
  %.pre596 = ptrtoint ptr %.pre587.a to i64
  br label %.loopexit351

.loopexit351:                                     ; preds = %.loopexit351.loopexit, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.thread.i
  %.pre-phi597 = phi i64 [ %.pre596, %.loopexit351.loopexit ], [ %i.as, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.thread.i ]
  %.pre-phi = phi i64 [ %.pre595, %.loopexit351.loopexit ], [ %i.as, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.thread.i ]
  %i.bc = phi ptr [ %i.ay, %.loopexit351.loopexit ], [ null, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.thread.i ] ; 4 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bb, %.loopexit351.loopexit ], [ null, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.thread.i ] ; 4 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.h, align 8, !tbaa !199
  %i.bd = sub i64 %.pre-phi, %.pre-phi597
  %i.be = lshr exact i64 %i.bd, 4                 ; 2 uses
  %i.bf = load ptr, ptr %i.k, align 8, !tbaa !191
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !55 ; 10 uses
  %i.bi = trunc i64 %i.be to i32
  %i.bj = icmp sgt i32 %i.bi, 0
  br i1 %i.bj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.loopexit351
  %i.bk = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !235
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = load ptr, ptr %i.an, align 8, !tbaa !236
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = sub i64 %i.bm, %i.bo
  %i.bq = sdiv exact i64 %i.bp, 40
  %i.br = sub nsw i64 %i.bq, %i.be
  %i.bs = shl i64 %i.br, 32
  %i.bt = ashr exact i64 %i.bs, 32
  %i.bu = insertelement <2 x i32> poison, i32 %i.bh, i64 0
  %i.bv = shufflevector <2 x i32> %i.bu, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN2cv7linemodL10similarityERKSt6vectorINS_3MatESaIS2_EERKNS0_8TemplateERS2_NS_5Size_IiEEi.exit, %.loopexit351
  %.0145.lcssa = phi i32 [ 0, %.loopexit351 ], [ %i.gh, %_ZN2cv7linemodL10similarityERKSt6vectorINS_3MatESaIS2_EERKNS0_8TemplateERS2_NS_5Size_IiEEi.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %13) #28
  invoke fastcc void @_ZN2cv7linemodL15addSimilaritiesERKSt6vectorINS_3MatESaIS2_EERS2_(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(208) %13)
          to label %bb.o unwind label %bb.p

bb.c:                                             ; preds = %.lr.ph, %_ZN2cv7linemodL10similarityERKSt6vectorINS_3MatESaIS2_EERKNS0_8TemplateERS2_NS_5Size_IiEEi.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN2cv7linemodL10similarityERKSt6vectorINS_3MatESaIS2_EERKNS0_8TemplateERS2_NS_5Size_IiEEi.exit ] ; 4 uses
  %.0145443 = phi i32 [ 0, %.lr.ph ], [ %i.gh, %_ZN2cv7linemodL10similarityERKSt6vectorINS_3MatESaIS2_EERKNS0_8TemplateERS2_NS_5Size_IiEEi.exit ]
  %i.bw = load ptr, ptr %i.an, align 8, !tbaa !236
  %i.bx = getelementptr [40 x i8], ptr %i.bw, i64 %indvars.iv
  %i.by = getelementptr [40 x i8], ptr %i.bx, i64 %i.bt ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 24 ; 3 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !68
  %i.cc = load ptr, ptr %i.bz, align 8, !tbaa !69
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = sdiv exact i64 %i.cf, 12                ; 2 uses
  %i.ch = load ptr, ptr %i.ap, align 8, !tbaa !209
  %i.ci = getelementptr inbounds nuw [24 x i8], ptr %i.ch, i64 %indvars.iv
  %i.cj = getelementptr inbounds nuw [208 x i8], ptr %i.bc, i64 %indvars.iv ; 2 uses
  %i.ck = load ptr, ptr %i.l, align 8, !tbaa !422
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 -8
  %.sroa.075.0.copyload = load i64, ptr %i.cl, align 4, !tbaa !55 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.075.0.copyload to i32 ; 2 uses
  %.sroa.3.0.extract.shift.i = lshr i64 %.sroa.075.0.copyload, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i64 %.sroa.3.0.extract.shift.i to i32 ; 2 uses
  %i.cm = icmp ult i64 %i.cg, 64
  br i1 %i.cm, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.47, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv7linemodL10similarityERKSt6vectorINS_3MatESaIS2_EERKNS0_8TemplateERS2_NS_5Size_IiEEi, ptr noundef nonnull @.str.11, i32 noundef 1170) #29
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.h:                                             ; preds = %bb.e
  %i.co = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cp = load ptr, ptr %9, align 8, !tbaa !53    ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !54
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.ct) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.g
  %.pn.i = phi { ptr, i32 } [ %i.cn, %bb.g ], [ %i.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.co, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %.body

bb.i:                                             ; preds = %bb.c
  %i.cu = sdiv i32 %.sroa.0.0.extract.trunc.i, %i.bh ; 4 uses
  %i.cv = sdiv i32 %.sroa.3.0.extract.trunc.i, %i.bh ; 2 uses
  %17 = load <2 x i32>, ptr %i.by, align 8, !tbaa !55
  %18 = add nsw <2 x i32> %17, splat (i32 -1)
  %19 = sdiv <2 x i32> %18, %i.bv
  %20 = xor <2 x i32> %19, splat (i32 -1)         ; 2 uses
  %21 = extractelement <2 x i32> %20, i64 0
  %i.cw = add i32 %i.cu, %21
  %22 = extractelement <2 x i32> %20, i64 1
  %23 = add i32 %i.cv, %22
  %24 = mul nsw i32 %23, %i.cu
  %i.cx = add nsw i32 %i.cw, %24
  %.fr.i = freeze i32 %i.cx                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  invoke void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %11, i32 noundef %i.cv, i32 noundef %i.cu, i32 noundef 0)
          to label %.noexc161 unwind label %bb.n

.noexc161:                                        ; preds = %bb.i
  %i.cy = load ptr, ptr %11, align 8, !tbaa !99   ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !39
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.db = load ptr, ptr %i.da, align 8
  invoke void %i.db(ptr noundef nonnull align 8 dereferenceable(8) %i.cy, ptr noundef nonnull align 8 dereferenceable(688) %11, ptr noundef nonnull align 8 dereferenceable(208) %i.cj, i32 noundef -1)
          to label %_ZN2cv3MataSERKNS_7MatExprE.exit.i unwind label %bb.j, !inline_history !3

_ZN2cv3MataSERKNS_7MatExprE.exit.i:               ; preds = %.noexc161
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.m) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.n) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.o) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !102 ; 9 uses
  %i.de = load ptr, ptr %i.ca, align 8, !tbaa !68 ; 2 uses
  %i.df = load ptr, ptr %i.bz, align 8, !tbaa !69 ; 2 uses
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = sub i64 %i.dg, %i.dh
  %i.dj = sdiv exact i64 %i.di, 12
  %i.dk = trunc i64 %i.dj to i32
  %25 = icmp slt i32 %i.dk, 1
  %.not5057.i = icmp slt i32 %.fr.i, 0
  %or.cond.i = or i1 %.not5057.i, %25
  br i1 %or.cond.i, label %_ZN2cv7linemodL10similarityERKSt6vectorINS_3MatESaIS2_EERKNS0_8TemplateERS2_NS_5Size_IiEEi.exit, label %.lr.ph60.i

.lr.ph60.i:                                       ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit.i
  %i.dl = add nuw i32 %.fr.i, 1
  %wide.trip.count.i = zext i32 %i.dl to i64      ; 9 uses
  %scevgep = getelementptr i8, ptr %i.dd, i64 %wide.trip.count.i
  %wide.trip.count.i.a = zext nneg i32 %.fr.i to i64
  %min.iters.check = icmp ult i32 %.fr.i, 3
  %min.iters.check828 = icmp ult i32 %.fr.i, 31
  %i.dm = and i64 %wide.trip.count.i, 28
  %n.vec = and i64 %wide.trip.count.i, 4294967264 ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %min.epilog.iters.check = icmp eq i64 %i.dm, 0
  %n.vec832 = and i64 %wide.trip.count.i, 4294967292 ; 3 uses
  %cmp.n837 = icmp eq i64 %n.vec832, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %bb.k

bb.j:                                             ; preds = %.noexc161
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %.body

bb.k:                                             ; preds = %.loopexit.i.a, %.lr.ph60.i
  %i.do = phi ptr [ %i.df, %.lr.ph60.i ], [ %33, %.loopexit.i.a ] ; 3 uses
  %i.dp = phi ptr [ %i.de, %.lr.ph60.i ], [ %34, %.loopexit.i.a ] ; 2 uses
  %indvars.iv62.i = phi i64 [ 0, %.lr.ph60.i ], [ %indvars.iv.next63.i, %.loopexit.i.a ] ; 2 uses
  %i.dq = getelementptr inbounds nuw [12 x i8], ptr %i.do, i64 %indvars.iv62.i ; 2 uses
  %i.dr = load <2 x i32>, ptr %i.dq, align 4, !tbaa !55 ; 3 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %.sroa.7.0.copyload.i = load i32, ptr %.sroa.7.0..sroa_idx.i, align 4, !tbaa !55
  %i.ds = extractelement <2 x i32> %i.dr, i64 0   ; 3 uses
  %i.dt = icmp slt i32 %i.ds, 0
  br i1 %i.dt, label %.loopexit.i.a, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.du = icmp slt i32 %i.ds, %.sroa.0.0.extract.trunc.i
  %i.dv = extractelement <2 x i32> %i.dr, i64 1   ; 3 uses
  %i.dw = icmp sgt i32 %i.dv, -1
  %or.cond.not56.i = select i1 %i.du, i1 %i.dw, i1 false
  %.not.i = icmp slt i32 %i.dv, %.sroa.3.0.extract.trunc.i
  %or.cond51.i = select i1 %or.cond.not56.i, i1 %.not.i, i1 false
  br i1 %or.cond51.i, label %bb.m, label %.loopexit.i.a

bb.m:                                             ; preds = %bb.l
  %.val.i = load ptr, ptr %i.ci, align 8, !tbaa !200
  %i.dx = sext i32 %.sroa.7.0.copyload.i to i64
  %i.dy = getelementptr inbounds nuw [208 x i8], ptr %.val.i, i64 %i.dx ; 2 uses
  %26 = srem i32 %i.ds, %i.bh
  %27 = srem i32 %i.dv, %i.bh
  %i.dz = mul nsw i32 %27, %i.bh
  %i.ea = add nsw i32 %i.dz, %26
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !102 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 128
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !57
  %i.ef = sext i32 %i.ea to i64
  %i.eg = mul i64 %i.ee, %i.ef                    ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.eg
  %28 = sdiv <2 x i32> %i.dr, %i.bv               ; 2 uses
  %i.ei = extractelement <2 x i32> %28, i64 1
  %i.ej = mul nsw i32 %i.ei, %i.cu                ; 2 uses
  %i.ek = extractelement <2 x i32> %28, i64 0     ; 2 uses
  %i.el = add nsw i32 %i.ej, %i.ek
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds i8, ptr %i.eh, i64 %i.em ; 8 uses
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.m
  %scevgep824 = getelementptr i8, ptr %i.ec, i64 %wide.trip.count.i
  %29 = sext i32 %i.ek to i64
  %30 = sext i32 %i.ej to i64
  %scevgep826 = getelementptr i8, ptr %scevgep824, i64 %i.eg
  %i.eo = getelementptr i8, ptr %scevgep826, i64 %29
  %scevgep827 = getelementptr i8, ptr %i.eo, i64 %30
  %bound0 = icmp ult ptr %i.dd, %scevgep827
  %bound1 = icmp ult ptr %i.en, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check828, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dd, i64 %index ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.ep, align 1, !tbaa !54, !alias.scope !423, !noalias !424
  %wide.load829.a = load <16 x i8>, ptr %i.eq, align 1, !tbaa !54, !alias.scope !423, !noalias !424
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 %index ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %wide.load830 = load <16 x i8>, ptr %i.er, align 1, !tbaa !54, !alias.scope !424
  %wide.load831 = load <16 x i8>, ptr %i.es, align 1, !tbaa !54, !alias.scope !424
  %i.et = add <16 x i8> %wide.load830, %wide.load
  %i.eu = add <16 x i8> %wide.load831, %wide.load829.a
  store <16 x i8> %i.et, ptr %i.ep, align 1, !tbaa !54, !alias.scope !423, !noalias !424
  store <16 x i8> %i.eu, ptr %i.eq, align 1, !tbaa !54, !alias.scope !423, !noalias !424
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ev = icmp eq i64 %index.next, %n.vec
  br i1 %i.ev, label %middle.block, label %vector.body, !llvm.loop !399

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit.loopexit.i.a, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !218

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index833 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next836, %vec.epilog.vector.body ] ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dd, i64 %index833 ; 2 uses
  %wide.load834 = load <4 x i8>, ptr %i.ew, align 1, !tbaa !54, !alias.scope !423, !noalias !424
  %i.ex = getelementptr inbounds nuw i8, ptr %i.en, i64 %index833
  %wide.load835 = load <4 x i8>, ptr %i.ex, align 1, !tbaa !54, !alias.scope !424
  %i.ey = add <4 x i8> %wide.load835, %wide.load834
  store <4 x i8> %i.ey, ptr %i.ew, align 1, !tbaa !54, !alias.scope !423, !noalias !424
  %index.next836 = add nuw i64 %index833, 4       ; 2 uses
  %i.ez = icmp eq i64 %index.next836, %n.vec832
  br i1 %i.ez, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !400

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n837, label %.loopexit.loopexit.i.a, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.m, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %bb.m ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec832, %vec.epilog.middle.block ] ; 3 uses
  %31 = sub nsw i64 %wide.trip.count.i.a, %indvars.iv.i.ph
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dd, i64 %indvars.iv.i.prol ; 2 uses
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !54
  %i.fc = getelementptr inbounds nuw i8, ptr %i.en, i64 %indvars.iv.i.prol
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !54
  %i.fe = add i8 %i.fd, %i.fb
  store i8 %i.fe, ptr %i.fa, align 1, !tbaa !54
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !401

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %32 = icmp ult i64 %31, 3
  br i1 %32, label %.loopexit.loopexit.i.a, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dd, i64 %indvars.iv.i ; 2 uses
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !54
  %i.fh = getelementptr inbounds nuw i8, ptr %i.en, i64 %indvars.iv.i
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !54
  %i.fj = add i8 %i.fi, %i.fg
  store i8 %i.fj, ptr %i.ff, align 1, !tbaa !54
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.dd, i64 %indvars.iv.next.i ; 2 uses
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !54
  %i.fm = getelementptr inbounds nuw i8, ptr %i.en, i64 %indvars.iv.next.i
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !54
  %i.fo = add i8 %i.fn, %i.fl
  store i8 %i.fo, ptr %i.fk, align 1, !tbaa !54
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.dd, i64 %indvars.iv.next.i.1 ; 2 uses
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !54
  %i.fr = getelementptr inbounds nuw i8, ptr %i.en, i64 %indvars.iv.next.i.1
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !54
  %i.ft = add i8 %i.fs, %i.fq
  store i8 %i.ft, ptr %i.fp, align 1, !tbaa !54
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.dd, i64 %indvars.iv.next.i.2 ; 2 uses
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !54
  %i.fw = getelementptr inbounds nuw i8, ptr %i.en, i64 %indvars.iv.next.i.2
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !54
  %i.fy = add i8 %i.fx, %i.fv
  store i8 %i.fy, ptr %i.fu, align 1, !tbaa !54
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %.loopexit.loopexit.i.a, label %.lr.ph.i, !llvm.loop !402

.loopexit.loopexit.i.a:                           ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %.pre.i = load ptr, ptr %i.ca, align 8, !tbaa !68
  %.pre65.i = load ptr, ptr %i.bz, align 8, !tbaa !69
  br label %.loopexit.i.a

.loopexit.i.a:                                    ; preds = %.loopexit.loopexit.i.a, %bb.l, %bb.k
  %33 = phi ptr [ %.pre65.i, %.loopexit.loopexit.i.a ], [ %i.do, %bb.k ], [ %i.do, %bb.l ] ; 2 uses
  %34 = phi ptr [ %.pre.i, %.loopexit.loopexit.i.a ], [ %i.dp, %bb.k ], [ %i.dp, %bb.l ] ; 2 uses
  %indvars.iv.next63.i = add nuw nsw i64 %indvars.iv62.i, 1 ; 2 uses
  %i.fz = ptrtoint ptr %34 to i64
  %i.ga = ptrtoint ptr %33 to i64
  %i.gb = sub i64 %i.fz, %i.ga
  %i.gc = sdiv exact i64 %i.gb, 12
  %i.gd = shl i64 %i.gc, 32
  %i.ge = ashr exact i64 %i.gd, 32
  %i.gf = icmp slt i64 %indvars.iv.next63.i, %i.ge
  br i1 %i.gf, label %bb.k, label %_ZN2cv7linemodL10similarityERKSt6vectorINS_3MatESaIS2_EERKNS0_8TemplateERS2_NS_5Size_IiEEi.exit, !llvm.loop !403

_ZN2cv7linemodL10similarityERKSt6vectorINS_3MatESaIS2_EERKNS0_8TemplateERS2_NS_5Size_IiEEi.exit: ; preds = %.loopexit.i.a, %_ZN2cv3MataSERKNS_7MatExprE.exit.i
  %i.gg = trunc nuw nsw i64 %i.cg to i32
  %i.gh = add nuw nsw i32 %.0145443, %i.gg        ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gi = load ptr, ptr %i.g, align 8, !tbaa !169
  %i.gj = load ptr, ptr %0, align 8, !tbaa !170
  %i.gk = ptrtoint ptr %i.gi to i64
  %i.gl = ptrtoint ptr %i.gj to i64
  %i.gm = sub i64 %i.gk, %i.gl
  %i.gn = shl i64 %i.gm, 28
  %i.go = ashr i64 %i.gn, 32
  %i.gp = icmp slt i64 %indvars.iv.next, %i.go
  br i1 %i.gp, label %bb.c, label %._crit_edge, !llvm.loop !404

bb.n:                                             ; preds = %bb.i
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.o:                                             ; preds = %._crit_edge
  %i.gr = shl nsw i32 %.0145.lcssa, 1
  %i.gs = sitofp i32 %i.gr to float               ; 2 uses
  %i.gt = call float @llvm.fmuladd.f32(float %i.p, float %i.gs, float %i.gs)
  %i.gu = fadd float %i.gt, 5.000000e-01
  %i.gv = fptosi float %i.gu to i32
  %i.gw = load i32, ptr %i.q, align 8, !tbaa !100 ; 2 uses
  %i.gx = icmp sgt i32 %i.gw, 0
  br i1 %i.gx, label %.lr.ph460, label %._crit_edge461

.lr.ph460:                                        ; preds = %bb.o
  %i.gy = sdiv i32 %i.bh, 2
  %i.gz = srem i32 %i.bh, 2
  %i.ha = add nsw i32 %i.gz, -1
  %i.hb = add nsw i32 %i.ha, %i.gy                ; 2 uses
  %i.hc = shl nsw i32 %.0145.lcssa, 2
  %i.hd = sitofp i32 %i.hc to float
  %i.he = trunc i64 %.0506 to i32
  %.pre588.a = load i32, ptr %i.t, align 4, !tbaa !101 ; 2 uses
  br label %bb.q

._crit_edge461:                                   ; preds = %._crit_edge451, %bb.o
  %.sroa.29.0.lcssa = phi ptr [ null, %bb.o ], [ %.sroa.29.1.lcssa, %._crit_edge451 ] ; 3 uses
  %.sroa.15.0.lcssa = phi ptr [ null, %bb.o ], [ %.sroa.15.1.lcssa, %._crit_edge451 ] ; 2 uses
  %.sroa.0319.0.lcssa = phi ptr [ null, %bb.o ], [ %.sroa.0319.1.lcssa, %._crit_edge451 ] ; 14 uses
  %i.hf = load i32, ptr %i.ab, align 8, !tbaa !189 ; 2 uses
  %i.hg = icmp sgt i32 %i.hf, 1
  br i1 %i.hg, label %.lr.ph503, label %._crit_edge504

.lr.ph503:                                        ; preds = %._crit_edge461
  %i.hh = add nsw i32 %i.hf, -2
  %i.hi = ptrtoint ptr %.sroa.0319.0.lcssa to i64 ; 2 uses
  %i.hj = zext nneg i32 %i.hh to i64
  br label %bb.ag

bb.p:                                             ; preds = %._crit_edge
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv7linemod5MatchESaIS2_EED2Ev.exit246

bb.q:                                             ; preds = %.lr.ph460, %._crit_edge451
  %i.hl = phi i32 [ %i.gw, %.lr.ph460 ], [ %i.hw, %._crit_edge451 ]
  %i.hm = phi i32 [ %.pre588.a, %.lr.ph460 ], [ %i.hx, %._crit_edge451 ] ; 2 uses
  %i.hn = phi i32 [ %.pre588.a, %.lr.ph460 ], [ %i.hy, %._crit_edge451 ] ; 2 uses
  %indvars.iv565 = phi i64 [ 0, %.lr.ph460 ], [ %indvars.iv.next566, %._crit_edge451 ] ; 3 uses
  %.sroa.0319.0457 = phi ptr [ null, %.lr.ph460 ], [ %.sroa.0319.1.lcssa, %._crit_edge451 ] ; 2 uses
  %.sroa.15.0456 = phi ptr [ null, %.lr.ph460 ], [ %.sroa.15.1.lcssa, %._crit_edge451 ] ; 2 uses
  %.sroa.29.0455 = phi ptr [ null, %.lr.ph460 ], [ %.sroa.29.1.lcssa, %._crit_edge451 ] ; 2 uses
  %i.ho = load ptr, ptr %i.r, align 8, !tbaa !102
  %i.hp = load i64, ptr %i.s, align 8, !tbaa !57
  %i.hq = mul i64 %i.hp, %indvars.iv565
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 %i.hq
  %i.hs = icmp sgt i32 %i.hn, 0
  br i1 %i.hs, label %.lr.ph450, label %._crit_edge451

.lr.ph450:                                        ; preds = %bb.q
  %i.ht = trunc i64 %indvars.iv565 to i32
  %i.hu = mul i32 %i.bh, %i.ht
  %i.hv = add i32 %i.hu, %i.hb
  br label %bb.r

._crit_edge451.loopexit:                          ; preds = %bb.af
  %.pre592.a = load i32, ptr %i.q, align 8, !tbaa !100
  br label %._crit_edge451

._crit_edge451:                                   ; preds = %._crit_edge451.loopexit, %bb.q
  %i.hw = phi i32 [ %i.hl, %bb.q ], [ %.pre592.a, %._crit_edge451.loopexit ] ; 2 uses
  %i.hx = phi i32 [ %i.hm, %bb.q ], [ %i.lj, %._crit_edge451.loopexit ]
  %i.hy = phi i32 [ %i.hn, %bb.q ], [ %i.lj, %._crit_edge451.loopexit ]
  %.sroa.29.1.lcssa = phi ptr [ %.sroa.29.0455, %bb.q ], [ %.sroa.29.2, %._crit_edge451.loopexit ] ; 2 uses
  %.sroa.15.1.lcssa = phi ptr [ %.sroa.15.0456, %bb.q ], [ %.sroa.15.2, %._crit_edge451.loopexit ] ; 2 uses
  %.sroa.0319.1.lcssa = phi ptr [ %.sroa.0319.0457, %bb.q ], [ %.sroa.0319.2, %._crit_edge451.loopexit ] ; 2 uses
  %indvars.iv.next566 = add nuw nsw i64 %indvars.iv565, 1 ; 2 uses
  %i.hz = sext i32 %i.hw to i64
  %i.ia = icmp slt i64 %indvars.iv.next566, %i.hz
  br i1 %i.ia, label %bb.q, label %._crit_edge461, !llvm.loop !405

bb.r:                                             ; preds = %.lr.ph450, %bb.af
  %i.ib = phi i32 [ %i.hm, %.lr.ph450 ], [ %i.lj, %bb.af ]
  %indvars.iv562 = phi i64 [ 0, %.lr.ph450 ], [ %indvars.iv.next563, %bb.af ] ; 3 uses
  %.sroa.0319.1447 = phi ptr [ %.sroa.0319.0457, %.lr.ph450 ], [ %.sroa.0319.2, %bb.af ] ; 8 uses
  %.sroa.15.1446 = phi ptr [ %.sroa.15.0456, %.lr.ph450 ], [ %.sroa.15.2, %bb.af ] ; 14 uses
  %.sroa.29.1445 = phi ptr [ %.sroa.29.0455, %.lr.ph450 ], [ %.sroa.29.2, %bb.af ] ; 4 uses
  %i.ic = getelementptr inbounds nuw [2 x i8], ptr %i.hr, i64 %indvars.iv562
  %i.id = load i16, ptr %i.ic, align 2, !tbaa !128 ; 2 uses
  %i.ie = zext i16 %i.id to i32
  %i.if = icmp sgt i32 %i.ie, %i.gv
  br i1 %i.if, label %bb.s, label %bb.af

bb.s:                                             ; preds = %bb.r
  %i.ig = uitofp i16 %i.id to float
  %i.ih = fmul nnan float %i.ig, 1.000000e+02
  %i.ii = fdiv float %i.ih, %i.hd
  %i.ij = fadd float %i.ii, 5.000000e-01
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  %i.ik = trunc i64 %indvars.iv562 to i32
  %i.il = mul i32 %i.bh, %i.ik
  %i.im = add i32 %i.il, %i.hb
  store i32 %i.im, ptr %14, align 8, !tbaa !238
  store i32 %i.hv, ptr %i.u, align 4, !tbaa !239
  store float %i.ij, ptr %i.v, align 8, !tbaa !240
  store ptr %i.x, ptr %i.w, align 8, !tbaa !56
  %i.in = load ptr, ptr %5, align 8, !tbaa !53    ; 2 uses
  %i.io = load i64, ptr %i.y, align 8, !tbaa !58  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 %i.io, ptr %i.b, align 8, !tbaa !57
  %i.ip = icmp ugt i64 %i.io, 15
  br i1 %i.ip, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.s
  %i.iq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc162 unwind label %bb.ad ; 2 uses

.noexc162:                                        ; preds = %.noexc.i.i
  store ptr %i.iq, ptr %i.w, align 8, !tbaa !53
  %i.ir = load i64, ptr %i.b, align 8, !tbaa !57
  store i64 %i.ir, ptr %i.x, align 8, !tbaa !54
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc162, %bb.s
  %i.is = phi ptr [ %i.iq, %.noexc162 ], [ %i.x, %bb.s ] ; 2 uses
  switch i64 %i.io, label %bb.u [
    i64 1, label %bb.t
    i64 0, label %bb.v
  ]

bb.t:                                             ; preds = %._crit_edge.i.i.i
  %i.it = load i8, ptr %i.in, align 1, !tbaa !54
  store i8 %i.it, ptr %i.is, align 1, !tbaa !54
  br label %bb.v

bb.u:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.is, ptr align 1 %i.in, i64 %i.io, i1 false)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %._crit_edge.i.i.i
  %i.iu = load i64, ptr %i.b, align 8, !tbaa !57  ; 2 uses
  store i64 %i.iu, ptr %i.z, align 8, !tbaa !58
  %i.iv = load ptr, ptr %i.w, align 8, !tbaa !53
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.iu
  store i8 0, ptr %i.iw, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  store i32 %i.he, ptr %i.aa, align 8, !tbaa !241
  %.not.i.i = icmp eq ptr %.sroa.15.1446, %.sroa.29.1445
  br i1 %.not.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %.sroa.15.1446, ptr noundef nonnull align 8 dereferenceable(52) %14, i64 12, i1 false)
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.15.1446, i64 16 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.15.1446, i64 32 ; 3 uses
  store ptr %i.iy, ptr %i.ix, align 8, !tbaa !56
  %i.iz = load ptr, ptr %i.w, align 8, !tbaa !53  ; 2 uses
  %i.ja = icmp eq ptr %i.iz, %i.x
  br i1 %i.ja, label %bb.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.x:                                             ; preds = %bb.w
  %i.jb = load i64, ptr %i.z, align 8, !tbaa !58  ; 3 uses
  %i.jc = icmp ult i64 %i.jb, 16
  call void @llvm.assume(i1 %i.jc)
  %i.jd = add nuw nsw i64 %i.jb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.iy, ptr noundef nonnull align 8 dereferenceable(1) %i.x, i64 %i.jd, i1 false)
  br label %_ZNSt6vectorIN2cv7linemod5MatchESaIS2_EE9push_backEOS2_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.w
  store ptr %i.iz, ptr %i.ix, align 8, !tbaa !53
  %i.je = load i64, ptr %i.x, align 8, !tbaa !54
  store i64 %i.je, ptr %i.iy, align 8, !tbaa !54
  %.pre589.a = load i64, ptr %i.z, align 8, !tbaa !58
  br label %_ZNSt6vectorIN2cv7linemod5MatchESaIS2_EE9push_backEOS2_.exit.thread

_ZNSt6vectorIN2cv7linemod5MatchESaIS2_EE9push_backEOS2_.exit.thread: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.jf = phi i64 [ %.pre589.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.jb, %bb.x ]
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.15.1446, i64 24
  store i64 %i.jf, ptr %i.jg, align 8, !tbaa !58
end_hunk_0
