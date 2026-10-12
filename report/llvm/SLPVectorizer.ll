Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SLPVectorizer?download=true
inline.NumInlined: 69834
inline.NumDeleted: 26527
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 297
loop-unroll.NumUnrolled: 333
begin_hunk_0_@_ZN4llvm13slpvectorizer7BoUpSLP18reorderTopToBottomEv:bb.a
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !372, !noalias !3100
  %.not.i.i77.i.i.i = icmp ult i32 %i.jv, %i.jx
  br i1 %.not.i.i77.i.i.i, label %bb.aq, label %bb.ap, !prof !548

bb.ap:                                            ; preds = %bb.ao
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_13slpvectorizer7BoUpSLP9TreeEntryELb1EE15growAndPushBackES4_(ptr noundef nonnull align 8 dereferenceable(16) %i.js, ptr noundef %i.jt), !noalias !3100
  br label %_ZN4llvm9SetVectorIPNS_13slpvectorizer7BoUpSLP9TreeEntryENS_11SmallVectorIS4_Lj0EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj0EE6insertERKS4_.exit78.i.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.jy = zext i32 %i.jv to i64
  %i.jz = load ptr, ptr %i.js, align 8, !tbaa !359, !noalias !3100
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %i.jy
  store ptr %i.jt, ptr %i.ka, align 1, !noalias !3100
  %i.kb = load i32, ptr %i.ju, align 8, !tbaa !371, !noalias !3100
  %i.kc = add i32 %i.kb, 1
  store i32 %i.kc, ptr %i.ju, align 8, !tbaa !371, !noalias !3100
  br label %_ZN4llvm9SetVectorIPNS_13slpvectorizer7BoUpSLP9TreeEntryENS_11SmallVectorIS4_Lj0EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj0EE6insertERKS4_.exit78.i.i.i

_ZN4llvm9SetVectorIPNS_13slpvectorizer7BoUpSLP9TreeEntryENS_11SmallVectorIS4_Lj0EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj0EE6insertERKS4_.exit78.i.i.i: ; preds = %bb.aq, %bb.ap, %.critedge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #31, !noalias !3100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #31, !noalias !3100
  %i.kd = load ptr, ptr %.05.i.i, align 8, !tbaa !575, !noalias !3100 ; 4 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 104
  %i.kf = load i32, ptr %i.ke, align 8, !tbaa !660, !noalias !3100 ; 2 uses
  switch i32 %i.kf, label %bb.as [
    i32 0, label %bb.ar
    i32 2, label %bb.ar
    i32 3, label %bb.ar
    i32 7, label %bb.ar
    i32 4, label %bb.ar
  ]

bb.ar:                                            ; preds = %_ZN4llvm9SetVectorIPNS_13slpvectorizer7BoUpSLP9TreeEntryENS_11SmallVectorIS4_Lj0EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj0EE6insertERKS4_.exit78.i.i.i, %_ZN4llvm9SetVectorIPNS_13slpvectorizer7BoUpSLP9TreeEntryENS_11SmallVectorIS4_Lj0EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj0EE6insertERKS4_.exit78.i.i.i, %_ZN4llvm9SetVectorIPNS_13slpvectorizer7BoUpSLP9TreeEntryENS_11SmallVectorIS4_Lj0EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj0EE6insertERKS4_.exit78.i.i.i, %_ZN4llvm9SetVectorIPNS_13slpvectorizer7BoUpSLP9TreeEntryENS_11SmallVectorIS4_Lj0EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj0EE6insertERKS4_.exit78.i.i.i, %_ZN4llvm9SetVectorIPNS_13slpvectorizer7BoUpSLP9TreeEntryENS_11SmallVectorIS4_Lj0EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj0EE6insertERKS4_.exit78.i.i.i
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kd, i64 120
  %i.kh = load i32, ptr %i.kg, align 8, !tbaa !371, !noalias !3100
  %.not.i79.i.i.i = icmp eq i32 %i.kh, 0
  br i1 %.not.i79.i.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar, %_ZN4llvm9SetVectorIPNS_13slpvectorizer7BoUpSLP9TreeEntryENS_11SmallVectorIS4_Lj0EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj0EE6insertERKS4_.exit78.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #31, !noalias !3100
  store ptr %i.kd, ptr %i.i, align 8, !tbaa !575, !noalias !3100
  %i.ki = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_13slpvectorizer7BoUpSLP9TreeEntryENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E24lookupOrInsertIntoBucketIS6_JRS8_EEESt4pairIPSD_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %13), !noalias !3106 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #31, !noalias !3100
  %.pre121.i.i.i = load ptr, ptr %.05.i.i, align 8, !tbaa !575, !noalias !3100 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.pre121.i.i.i, i64 104
  %.pre122.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !660, !noalias !3100
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.kj = phi i32 [ %.pre122.i.i.i, %bb.as ], [ %i.kf, %bb.ar ]
  %i.kk = phi ptr [ %.pre121.i.i.i, %bb.as ], [ %i.kd, %bb.ar ] ; 2 uses
  %i.kl = icmp eq i32 %i.kj, 0
  br i1 %i.kl, label %bb.au, label %.critedge52.i.i.i

bb.au:                                            ; preds = %bb.at
  %i.km = getelementptr inbounds nuw i8, ptr %i.kk, i64 496
  %.val.i85.i.i.i = load ptr, ptr %i.km, align 8, !tbaa !663, !noalias !3100
  %.val.val.i86.i.i.i = load i8, ptr %.val.i85.i.i.i, align 8, !tbaa !391, !noalias !3100
  %i.kn = icmp eq i8 %.val.val.i86.i.i.i, 87
  br i1 %i.kn, label %bb.av, label %.critedge52.i.i.i

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #31, !noalias !3100
  store ptr %i.kk, ptr %i.j, align 8, !tbaa !575, !noalias !3100
  %i.ko = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_13slpvectorizer7BoUpSLP9TreeEntryENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E24lookupOrInsertIntoBucketIS6_JRS8_EEESt4pairIPSD_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %13), !noalias !3107 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #31, !noalias !3100
  br label %.critedge52.i.i.i

.critedge52.i.i.i:                                ; preds = %bb.am, %bb.av, %bb.au, %bb.at, %bb.ai
  %i.kp = load i8, ptr %i.fk, align 8, !tbaa !583, !range !368, !noalias !3100, !noundef !369
  %i.kq = trunc nuw i8 %i.kp to i1
  store i8 0, ptr %i.fk, align 8, !tbaa !583, !noalias !3100
  br i1 %i.kq, label %bb.aw, label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIjLj4EEELb0ELb0EED2Ev.exit.i.i.i

bb.aw:                                            ; preds = %.critedge52.i.i.i
  %i.kr = load ptr, ptr %13, align 8, !tbaa !359, !noalias !3100 ; 2 uses
  %i.ks = icmp eq ptr %i.kr, %i.fl
  br i1 %i.ks, label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIjLj4EEELb0ELb0EED2Ev.exit.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @free(ptr noundef %i.kr) #31, !noalias !3100
  br label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIjLj4EEELb0ELb0EED2Ev.exit.i.i.i

_ZNSt14_Optional_baseIN4llvm11SmallVectorIjLj4EEELb0ELb0EED2Ev.exit.i.i.i: ; preds = %bb.ax, %bb.aw, %.critedge52.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31, !noalias !3100
  %i.kt = load ptr, ptr %10, align 8, !tbaa !359, !noalias !3100 ; 3 uses
  %i.ku = load i32, ptr %i.fg, align 8, !tbaa !371, !noalias !3100 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq i32 %i.ku, 0
  br i1 %.not4.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIjLj4EEELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %_ZNSt14_Optional_baseIN4llvm11SmallVectorIjLj4EEELb0ELb0EED2Ev.exit.i.i.i
  %i.kv = zext i32 %i.ku to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.kv, 5
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kt, i64 %.idx.i.i.i.i
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4llvm11SmallVectorIjLj4EED2Ev.exit.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.kx, %_ZN4llvm11SmallVectorIjLj4EED2Ev.exit.i.i.i.i.i ], [ %i.kw, %.lr.ph.i.preheader.i.i.i.i ] ; 2 uses
  %i.kx = getelementptr inbounds i8, ptr %.05.i.i.i.i.i, i64 -32 ; 3 uses
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !359, !noalias !3100 ; 2 uses
  %i.kz = getelementptr inbounds i8, ptr %.05.i.i.i.i.i, i64 -16
  %i.la = icmp eq ptr %i.ky, %i.kz
  br i1 %i.la, label %_ZN4llvm11SmallVectorIjLj4EED2Ev.exit.i.i.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph.i.i.i.i.i
  call void @free(ptr noundef %i.ky) #31, !noalias !3100
  br label %_ZN4llvm11SmallVectorIjLj4EED2Ev.exit.i.i.i.i.i

_ZN4llvm11SmallVectorIjLj4EED2Ev.exit.i.i.i.i.i:  ; preds = %bb.ay, %.lr.ph.i.i.i.i.i
  %.not.i.i92.i.i.i = icmp eq ptr %i.kt, %i.kx
  br i1 %.not.i.i92.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIjLj4EEELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !27

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIjLj4EEELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i: ; preds = %_ZN4llvm11SmallVectorIjLj4EED2Ev.exit.i.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %10, align 8, !tbaa !359, !noalias !3100
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIjLj4EEELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIjLj4EEELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIjLj4EEELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i, %_ZNSt14_Optional_baseIN4llvm11SmallVectorIjLj4EEELb0ELb0EED2Ev.exit.i.i.i
  %i.lb = phi ptr [ %.pre.i.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIjLj4EEELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i ], [ %i.kt, %_ZNSt14_Optional_baseIN4llvm11SmallVectorIjLj4EEELb0ELb0EED2Ev.exit.i.i.i ] ; 2 uses
  %i.lc = icmp eq ptr %i.lb, %i.fm
  br i1 %i.lc, label %"_ZZN4llvm13slpvectorizer7BoUpSLP18reorderTopToBottomEvENK3$_1clERKSt10unique_ptrINS1_9TreeEntryESt14default_deleteIS4_EE.exit.i.i", label %bb.az

bb.az:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIjLj4EEELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i
  call void @free(ptr noundef %i.lb) #31, !noalias !3100
  br label %"_ZZN4llvm13slpvectorizer7BoUpSLP18reorderTopToBottomEvENK3$_1clERKSt10unique_ptrINS1_9TreeEntryESt14default_deleteIS4_EE.exit.i.i"

"_ZZN4llvm13slpvectorizer7BoUpSLP18reorderTopToBottomEvENK3$_1clERKSt10unique_ptrINS1_9TreeEntryESt14default_deleteIS4_EE.exit.i.i": ; preds = %bb.az, %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIjLj4EEELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31, !noalias !3100
  %i.ld = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i170 = icmp eq ptr %i.ld, %i.q
  br i1 %.not.i.i170, label %"_ZN4llvm8for_eachIRNS_11SmallVectorISt10unique_ptrINS_13slpvectorizer7BoUpSLP9TreeEntryESt14default_deleteIS5_EELj8EEEZNS4_18reorderTopToBottomEvE3$_1EET0_OT_SC_.exit.loopexit", label %bb.r, !llvm.loop !2987

"_ZN4llvm8for_eachIRNS_11SmallVectorISt10unique_ptrINS_13slpvectorizer7BoUpSLP9TreeEntryESt14default_deleteIS5_EELj8EEEZNS4_18reorderTopToBottomEvE3$_1EET0_OT_SC_.exit.loopexit": ; preds = %"_ZZN4llvm13slpvectorizer7BoUpSLP18reorderTopToBottomEvENK3$_1clERKSt10unique_ptrINS1_9TreeEntryESt14default_deleteIS4_EE.exit.i.i"
  %.pre = load ptr, ptr %0, align 8, !tbaa !359
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %14, i64 16
  %.pre682 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !885
  %i.le = icmp eq i32 %.pre682, 0
  br label %"_ZN4llvm8for_eachIRNS_11SmallVectorISt10unique_ptrINS_13slpvectorizer7BoUpSLP9TreeEntryESt14default_deleteIS5_EELj8EEEZNS4_18reorderTopToBottomEvE3$_1EET0_OT_SC_.exit"

"_ZN4llvm8for_eachIRNS_11SmallVectorISt10unique_ptrINS_13slpvectorizer7BoUpSLP9TreeEntryESt14default_deleteIS5_EELj8EEEZNS4_18reorderTopToBottomEvE3$_1EET0_OT_SC_.exit": ; preds = %"_ZN4llvm8for_eachIRNS_11SmallVectorISt10unique_ptrINS_13slpvectorizer7BoUpSLP9TreeEntryESt14default_deleteIS5_EELj8EEEZNS4_18reorderTopToBottomEvE3$_1EET0_OT_SC_.exit.loopexit", %switch.edge
  %i.lf = phi i1 [ %i.le, %"_ZN4llvm8for_eachIRNS_11SmallVectorISt10unique_ptrINS_13slpvectorizer7BoUpSLP9TreeEntryESt14default_deleteIS5_EELj8EEEZNS4_18reorderTopToBottomEvE3$_1EET0_OT_SC_.exit.loopexit" ], [ true, %switch.edge ]
  %i.lg = phi ptr [ %.pre, %"_ZN4llvm8for_eachIRNS_11SmallVectorISt10unique_ptrINS_13slpvectorizer7BoUpSLP9TreeEntryESt14default_deleteIS5_EELj8EEEZNS4_18reorderTopToBottomEvE3$_1EET0_OT_SC_.exit.loopexit" ], [ %.val, %switch.edge ]
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !575 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 120
  %i.lj = load i32, ptr %i.li, align 8, !tbaa !371 ; 2 uses
  %.not.i.i171 = icmp eq i32 %i.lj, 0
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %i.ll = load i32, ptr %i.lk, align 8
  %.0.in.v.i = select i1 %.not.i.i171, i32 %i.ll, i32 %i.lj ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ln = icmp ult i32 %.0.in.v.i, 2
  %.not145647 = select i1 %i.lf, i1 true, i1 %i.ln
  br i1 %.not145647, label %.loopexit591, label %.lr.ph652

.lr.ph652:                                        ; preds = %"_ZN4llvm8for_eachIRNS_11SmallVectorISt10unique_ptrINS_13slpvectorizer7BoUpSLP9TreeEntryESt14default_deleteIS5_EELj8EEEZNS4_18reorderTopToBottomEvE3$_1EET0_OT_SC_.exit"
  %i.lo = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.lp = getelementptr inbounds nuw i8, ptr %14, i64 20
  %i.lq = getelementptr inbounds nuw i8, ptr %19, i64 24 ; 19 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %19, i64 40 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %19, i64 32 ; 17 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %19, i64 36 ; 4 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %15, i64 20 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.lx = getelementptr inbounds nuw i8, ptr %17, i64 20
  %i.ly = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.lz = getelementptr inbounds nuw i8, ptr %16, i64 20
  %i.ma = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.mb = getelementptr inbounds nuw i8, ptr %18, i64 20
  %i.mc = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %20, i64 12
  %i.mf = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 5 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 5 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %21, i64 12
  %i.mi = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 11 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 3 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %22, i64 12 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 7 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 5 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %23, i64 12
  %i.mo = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 4 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 7 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %24, i64 12
  %i.mr = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 4 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 5 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %25, i64 12
  %i.mu = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 13 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 13 uses
  %i.my = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %i.na = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %26, i64 12
  %i.nd = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 4 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 4 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %27, i64 12
  %i.ng = getelementptr inbounds nuw i8, ptr %19, i64 20 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.ni = zext i32 %.0.in.v.i to i64              ; 2 uses
  %.pre684 = load ptr, ptr %14, align 8, !tbaa !886, !noalias !3108
  %28 = shl nuw nsw i64 %i.ni, 2
  %29 = add nsw i64 %28, -4                       ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %22, i64 20
  %30 = getelementptr inbounds nuw i8, ptr %22, i64 24
  %31 = getelementptr inbounds nuw i8, ptr %22, i64 28
  %i.nk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.nl = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.nm = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.nn = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.no = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.np = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.nq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.nr = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ns = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.nt = getelementptr inbounds nuw i8, ptr %1, i64 56
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph652, %bb.fx
  %indvar = phi i64 [ 0, %.lr.ph652 ], [ %indvar.next, %bb.fx ] ; 3 uses
  %i.nu = phi ptr [ %.pre684, %.lr.ph652 ], [ %i.baj, %bb.fx ] ; 4 uses
  %indvars.iv = phi i64 [ %i.ni, %.lr.ph652 ], [ %indvars.iv.next, %bb.fx ] ; 13 uses
  %32 = shl i64 %indvar, 2
  %33 = sub i64 %29, %32                          ; 2 uses
  %34 = shl i64 %indvar, 2
  %35 = sub i64 %29, %34                          ; 2 uses
  %i.nv = load ptr, ptr %i.lo, align 8, !tbaa !887, !noalias !3108 ; 2 uses
  %i.nw = load i32, ptr %i.lp, align 4, !tbaa !888, !noalias !3108 ; 4 uses
  %i.nx = icmp eq i32 %i.nw, 0
  br i1 %i.nx, label %.loopexit.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ny = add i32 %i.nw, -1                       ; 2 uses
  %i.nz = trunc nuw i64 %indvars.iv to i32
  %i.oa = mul i32 %i.nz, 37
  %.017.i.i.i.i = and i32 %i.ny, %i.oa            ; 3 uses
  %i.ob = zext i32 %.017.i.i.i.i to i64           ; 2 uses
  %i.oc = lshr i64 %i.ob, 5
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.nv, i64 %i.oc
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !380, !noalias !3109
  %i.of = and i32 %.017.i.i.i.i, 31
  %i.og = lshr i32 %i.oe, %i.of
  %i.oh = trunc i32 %i.og to i1
  br i1 %i.oh, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !547

bb.bc:                                            ; preds = %.lr.ph.i.i.i.i
  %i.oi = add nuw i32 %.018.i.i.i.i, 1
  %.0.i.i.i.i = and i32 %i.oi, %i.ny              ; 3 uses
  %i.oj = zext i32 %.0.i.i.i.i to i64             ; 2 uses
  %i.ok = lshr i64 %i.oj, 5
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.nv, i64 %i.ok
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !380, !noalias !3109
  %i.on = and i32 %.0.i.i.i.i, 31
  %i.oo = lshr i32 %i.om, %i.on
  %i.op = trunc i32 %i.oo to i1
  br i1 %i.op, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !549

.lr.ph.i.i.i.i:                                   ; preds = %bb.bb, %bb.bc
  %i.oq = phi i64 [ %i.oj, %bb.bc ], [ %i.ob, %bb.bb ]
  %.018.i.i.i.i = phi i32 [ %.0.i.i.i.i, %bb.bc ], [ %.017.i.i.i.i, %bb.bb ]
  %i.or = getelementptr inbounds nuw [48 x i8], ptr %i.nu, i64 %i.oq ; 2 uses
  %i.os = load i32, ptr %i.or, align 4, !tbaa !380, !noalias !3109
  %i.ot = zext i32 %i.os to i64
  %i.ou = icmp eq i64 %indvars.iv, %i.ot
  br i1 %i.ou, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_9SetVectorIPNS_13slpvectorizer7BoUpSLP9TreeEntryENS_11SmallVectorIS6_Lj0EEENS_8DenseSetIS6_NS_12DenseMapInfoIS6_vEEEELj0EEENSA_IjvEENS_6detail12DenseMapPairIjSD_EEEEjSD_SE_SH_E4findERKj.exit.loopexit, label %bb.bc, !prof !548

.loopexit.i.i:                                    ; preds = %bb.bc, %bb.bb, %bb.ba
  %i.ov = zext i32 %i.nw to i64                   ; 2 uses
  %i.ow = getelementptr inbounds nuw [48 x i8], ptr %i.nu, i64 %i.ov
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_9SetVectorIPNS_13slpvectorizer7BoUpSLP9TreeEntryENS_11SmallVectorIS6_Lj0EEENS_8DenseSetIS6_NS_12DenseMapInfoIS6_vEEEELj0EEENSA_IjvEENS_6detail12DenseMapPairIjSD_EEEEjSD_SE_SH_E4findERKj.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_9SetVectorIPNS_13slpvectorizer7BoUpSLP9TreeEntryENS_11SmallVectorIS6_Lj0EEENS_8DenseSetIS6_NS_12DenseMapInfoIS6_vEEEELj0EEENSA_IjvEENS_6detail12DenseMapPairIjSD_EEEEjSD_SE_SH_E4findERKj.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre707 = zext i32 %i.nw to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_9SetVectorIPNS_13slpvectorizer7BoUpSLP9TreeEntryENS_11SmallVectorIS6_Lj0EEENS_8DenseSetIS6_NS_12DenseMapInfoIS6_vEEEELj0EEENSA_IjvEENS_6detail12DenseMapPairIjSD_EEEEjSD_SE_SH_E4findERKj.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_9SetVectorIPNS_13slpvectorizer7BoUpSLP9TreeEntryENS_11SmallVectorIS6_Lj0EEENS_8DenseSetIS6_NS_12DenseMapInfoIS6_vEEEELj0EEENSA_IjvEENS_6detail12DenseMapPairIjSD_EEEEjSD_SE_SH_E4findERKj.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_9SetVectorIPNS_13slpvectorizer7BoUpSLP9TreeEntryENS_11SmallVectorIS6_Lj0EEENS_8DenseSetIS6_NS_12DenseMapInfoIS6_vEEEELj0EEENSA_IjvEENS_6detail12DenseMapPairIjSD_EEEEjSD_SE_SH_E4findERKj.exit.loopexit, %.loopexit.i.i
  %.pre-phi = phi i64 [ %.pre707, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_9SetVectorIPNS_13slpvectorizer7BoUpSLP9TreeEntryENS_11SmallVectorIS6_Lj0EEENS_8DenseSetIS6_NS_12DenseMapInfoIS6_vEEEELj0EEENSA_IjvEENS_6detail12DenseMapPairIjSD_EEEEjSD_SE_SH_E4findERKj.exit.loopexit ], [ %i.ov, %.loopexit.i.i ]
  %.lcssa.sink.i.i = phi ptr [ %i.or, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_9SetVectorIPNS_13slpvectorizer7BoUpSLP9TreeEntryENS_11SmallVectorIS6_Lj0EEENS_8DenseSetIS6_NS_12DenseMapInfoIS6_vEEEELj0EEENSA_IjvEENS_6detail12DenseMapPairIjSD_EEEEjSD_SE_SH_E4findERKj.exit.loopexit ], [ %i.ow, %.loopexit.i.i ] ; 4 uses
  %i.ox = getelementptr inbounds nuw [48 x i8], ptr %i.nu, i64 %.pre-phi
  %i.oy = icmp eq ptr %.lcssa.sink.i.i, %i.ox
  br i1 %i.oy, label %bb.fx, label %bb.bd

bb.bd:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_9SetVectorIPNS_13slpvectorizer7BoUpSLP9TreeEntryENS_11SmallVectorIS6_Lj0EEENS_8DenseSetIS6_NS_12DenseMapInfoIS6_vEEEELj0EEENSA_IjvEENS_6detail12DenseMapPairIjSD_EEEEjSD_SE_SH_E4findERKj.exit
  %i.oz = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 32
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !359 ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 40
  %i.pc = load i32, ptr %i.pb, align 8, !tbaa !371 ; 2 uses
  %i.pd = zext i32 %i.pc to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %19, i8 0, i64 24, i1 false)
  store ptr %i.lr, ptr %i.lq, align 8, !tbaa !359
  store i32 0, ptr %i.ls, align 8, !tbaa !371
  store i32 0, ptr %i.lt, align 4, !tbaa !372
  %.idx = shl nuw nsw i64 %i.pd, 3
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pa, i64 %.idx
  %.not146620 = icmp eq i32 %i.pc, 0
  br i1 %.not146620, label %.thread566, label %.lr.ph622

._crit_edge:                                      ; preds = %bb.db
  %.pre691 = load i32, ptr %i.ls, align 8, !tbaa !371 ; 2 uses
  %.not.i.i172 = icmp eq i32 %.pre691, 0
  br i1 %.not.i.i172, label %.thread566, label %bb.dc

.thread566:                                       ; preds = %bb.bd, %._crit_edge
  %i.pf = load ptr, ptr %i.lq, align 8, !tbaa !359
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_11SmallVectorIjLj4EEEjELb0EE13destroy_rangeEPS4_S6_.exit.i.i

.lr.ph622:                                        ; preds = %bb.bd, %bb.db
  %.0141621 = phi ptr [ %i.aeo, %bb.db ], [ %i.pa, %bb.bd ] ; 2 uses
  %i.pg = load ptr, ptr %.0141621, align 8, !tbaa !575 ; 19 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 120
  %i.pi = load i32, ptr %i.ph, align 8, !tbaa !371 ; 2 uses
  %.not.i173 = icmp eq i32 %i.pi, 0               ; 2 uses
  br i1 %.not.i173, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_13slpvectorizer7BoUpSLP9TreeEntryENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E5countES6_.exit.thread, label %bb.be

bb.be:                                            ; preds = %.lr.ph622
  %i.pj = load ptr, ptr %15, align 8, !tbaa !891, !noalias !3110
  %i.pk = load ptr, ptr %i.lu, align 8, !tbaa !892, !noalias !3110 ; 2 uses
  %i.pl = load i32, ptr %i.lv, align 4, !tbaa !893, !noalias !3110 ; 2 uses
  %i.pm = icmp eq i32 %i.pl, 0
  br i1 %i.pm, label %.loopexit588, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.pn = add i32 %i.pl, -1                       ; 2 uses
  %i.po = ptrtoint ptr %i.pg to i64
  %i.pp = mul i64 %i.po, -4658895280553007687     ; 2 uses
  %i.pq = lshr i64 %i.pp, 31
  %i.pr = xor i64 %i.pq, %i.pp
  %i.ps = trunc i64 %i.pr to i32
  %i.pt = and i32 %i.pn, %i.ps                    ; 3 uses
  %i.pu = zext i32 %i.pt to i64                   ; 2 uses
  %i.pv = lshr i64 %i.pu, 5
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.pk, i64 %i.pv
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !380
  %i.py = and i32 %i.pt, 31
  %i.pz = lshr i32 %i.px, %i.py
  %i.qa = trunc i32 %i.pz to i1
  br i1 %i.qa, label %.lr.ph.i.i.i174, label %.loopexit588, !prof !547

.lr.ph.i.i.i174:                                  ; preds = %bb.bf, %bb.bg
  %i.qb = phi i64 [ %i.qh, %bb.bg ], [ %i.pu, %bb.bf ]
  %.017.i.i.i = phi i32 [ %i.qg, %bb.bg ], [ %i.pt, %bb.bf ]
  %i.qc = getelementptr inbounds nuw [40 x i8], ptr %i.pj, i64 %i.qb
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !575
  %i.qe = icmp eq ptr %i.pg, %i.qd
  br i1 %i.qe, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_13slpvectorizer7BoUpSLP9TreeEntryENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E5countES6_.exit, label %bb.bg, !prof !548

bb.bg:                                            ; preds = %.lr.ph.i.i.i174
  %i.qf = add nuw i32 %.017.i.i.i, 1
  %i.qg = and i32 %i.qf, %i.pn                    ; 3 uses
  %i.qh = zext i32 %i.qg to i64                   ; 2 uses
  %i.qi = lshr i64 %i.qh, 5
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.pk, i64 %i.qi
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !380
  %i.ql = and i32 %i.qg, 31
  %i.qm = lshr i32 %i.qk, %i.ql
  %i.qn = trunc i32 %i.qm to i1
  br i1 %i.qn, label %.lr.ph.i.i.i174, label %.loopexit588, !prof !549

.loopexit588:                                     ; preds = %bb.bg, %bb.be, %bb.bf
  %i.qo = getelementptr inbounds nuw i8, ptr %i.pg, i64 104
  %i.qp = load i32, ptr %i.qo, align 8, !tbaa !660
  %.not154 = icmp eq i32 %i.qp, 7
  br i1 %.not154, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_13slpvectorizer7BoUpSLP9TreeEntryENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E5countES6_.exit, label %bb.db

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_13slpvectorizer7BoUpSLP9TreeEntryENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E5countES6_.exit: ; preds = %.lr.ph.i.i.i174, %.loopexit588
  %i.qq = getelementptr inbounds nuw i8, ptr %i.pg, i64 104 ; 2 uses
  %i.qr = load i32, ptr %i.qq, align 8, !tbaa !660
  br label %bb.bh

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_13slpvectorizer7BoUpSLP9TreeEntryENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E5countES6_.exit.thread: ; preds = %.lr.ph622
  %i.qs = getelementptr inbounds nuw i8, ptr %i.pg, i64 104 ; 3 uses
  %i.qt = load i32, ptr %i.qs, align 8, !tbaa !660 ; 2 uses
  %i.qu = icmp eq i32 %i.qt, 5
  br i1 %i.qu, label %bb.bh, label %.thread.i

bb.bh:                                            ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_13slpvectorizer7BoUpSLP9TreeEntryENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E5countES6_.exit, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_13slpvectorizer7BoUpSLP9TreeEntryENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E5countES6_.exit.thread
  %i.qv = phi i32 [ 5, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_13slpvectorizer7BoUpSLP9TreeEntryENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E5countES6_.exit.thread ], [ %i.qr, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_13slpvectorizer7BoUpSLP9TreeEntryENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E5countES6_.exit ] ; 2 uses
  %i.qw = phi ptr [ %i.qs, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_13slpvectorizer7BoUpSLP9TreeEntryENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E5countES6_.exit.thread ], [ %i.qq, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_13slpvectorizer7BoUpSLP9TreeEntryENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E5countES6_.exit ] ; 2 uses
  %i.qx = load ptr, ptr %15, align 8, !tbaa !891, !noalias !3111 ; 3 uses
  %i.qy = load ptr, ptr %i.lu, align 8, !tbaa !892, !noalias !3111 ; 2 uses
  %i.qz = load i32, ptr %i.lv, align 4, !tbaa !893, !noalias !3111 ; 4 uses
  %i.ra = icmp eq i32 %i.qz, 0
  br i1 %i.ra, label %.loopexit.i.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.rb = add i32 %i.qz, -1                       ; 2 uses
  %i.rc = ptrtoint ptr %i.pg to i64
  %i.rd = mul i64 %i.rc, -4658895280553007687     ; 2 uses
  %i.re = lshr i64 %i.rd, 31
  %i.rf = xor i64 %i.re, %i.rd
  %i.rg = trunc i64 %i.rf to i32
  %i.rh = and i32 %i.rb, %i.rg                    ; 3 uses
  %i.ri = zext i32 %i.rh to i64                   ; 2 uses
  %i.rj = lshr i64 %i.ri, 5
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.qy, i64 %i.rj
  %i.rl = load i32, ptr %i.rk, align 4, !tbaa !380, !noalias !3112
  %i.rm = and i32 %i.rh, 31
  %i.rn = lshr i32 %i.rl, %i.rm
  %i.ro = trunc i32 %i.rn to i1
  br i1 %i.ro, label %.lr.ph.i.i.i.i.i178, label %.loopexit.i.i.i, !prof !547

.lr.ph.i.i.i.i.i178:                              ; preds = %bb.bi, %bb.bj
  %i.rp = phi i64 [ %i.rv, %bb.bj ], [ %i.ri, %bb.bi ]
  %.017.i.i.i.i.i = phi i32 [ %i.ru, %bb.bj ], [ %i.rh, %bb.bi ]
  %i.rq = getelementptr inbounds nuw [40 x i8], ptr %i.qx, i64 %i.rp ; 2 uses
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !575, !noalias !3112
  %i.rs = icmp eq ptr %i.pg, %i.rr
  br i1 %i.rs, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_13slpvectorizer7BoUpSLP9TreeEntryENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E4findES6_.exit.loopexit.i, label %bb.bj, !prof !548

bb.bj:                                            ; preds = %.lr.ph.i.i.i.i.i178
  %i.rt = add nuw i32 %.017.i.i.i.i.i, 1
  %i.ru = and i32 %i.rt, %i.rb                    ; 3 uses
  %i.rv = zext i32 %i.ru to i64                   ; 2 uses
  %i.rw = lshr i64 %i.rv, 5
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.qy, i64 %i.rw
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !380, !noalias !3112
  %i.rz = and i32 %i.ru, 31
  %i.sa = lshr i32 %i.ry, %i.rz
  %i.sb = trunc i32 %i.sa to i1
  br i1 %i.sb, label %.lr.ph.i.i.i.i.i178, label %.loopexit.i.i.i, !prof !549

.loopexit.i.i.i:                                  ; preds = %bb.bj, %bb.bi, %bb.bh
  %i.sc = zext i32 %i.qz to i64                   ; 2 uses
  %i.sd = getelementptr inbounds nuw [40 x i8], ptr %i.qx, i64 %i.sc
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_13slpvectorizer7BoUpSLP9TreeEntryENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E4findES6_.exit.i
end_hunk_0
begin_hunk_1_@_ZN4llvm13slpvectorizer7BoUpSLP18reorderTopToBottomEv:bb.a
  %.not156 = icmp eq ptr %i.zt, %i.yh
  br i1 %.not156, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %_ZN4llvm9MapVectorINS_11SmallVectorIjLj4EEEjNS_8DenseMapIS2_jNS_13slpvectorizer7BoUpSLP22OrdersTypeDenseMapInfoENS_6detail12DenseMapPairIS2_jEEEENS1_ISt4pairIS2_jELj0EEELj0EE16try_emplace_implIRKS2_JiEEESB_IPSC_bEOT_DpOT0_.exit, %bb.ce, %_ZN4llvm11SmallVectorIjLj4EED2Ev.exit
  %i.zu = getelementptr inbounds nuw i8, ptr %.5.i, i64 8
  %i.zv = load i32, ptr %i.zu, align 8, !tbaa !371
  %.not.i188 = icmp eq i32 %i.zv, 0
  br i1 %.not.i188, label %bb.db, label %.loopexit._crit_edge

.loopexit._crit_edge:                             ; preds = %.loopexit
  %.pre685 = load i32, ptr %i.vj, align 8, !tbaa !660
  br label %bb.ck

bb.ck:                                            ; preds = %.loopexit._crit_edge, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_13slpvectorizer7BoUpSLP9TreeEntryENS_11SmallVectorINS7_IjLj4EEELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E4findES6_.exit
  %i.zw = phi i32 [ %.pre685, %.loopexit._crit_edge ], [ %i.vi, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_13slpvectorizer7BoUpSLP9TreeEntryENS_11SmallVectorINS7_IjLj4EEELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E4findES6_.exit ]
  %i.zx = icmp eq i32 %i.zw, 0
  br i1 %i.zx, label %bb.cl, label %bb.cv

bb.cl:                                            ; preds = %bb.ck
  %i.zy = getelementptr inbounds nuw i8, ptr %i.pg, i64 496
  %.val.i189 = load ptr, ptr %i.zy, align 8, !tbaa !663
  %.val.val.i190 = load i8, ptr %.val.i189, align 8, !tbaa !391
  %i.zz = icmp eq i8 %.val.val.i190, 64
  br i1 %i.zz, label %bb.cm, label %bb.cv

bb.cm:                                            ; preds = %bb.cl
  %i.aaa = getelementptr inbounds nuw i8, ptr %.5.i, i64 8 ; 3 uses
  %i.aab = load i32, ptr %i.aaa, align 8, !tbaa !371
  %.not.i191 = icmp eq i32 %i.aab, 0
  br i1 %.not.i191, label %bb.cv, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #31
  store ptr %i.mf, ptr %21, align 8, !tbaa !359
  store i32 12, ptr %i.mh, align 4, !tbaa !372
  %i.aac = load ptr, ptr %.5.i, align 8, !tbaa !359 ; 5 uses
  %i.aad = load i32, ptr %i.aaa, align 8, !tbaa !371 ; 5 uses
  %i.aae = zext i32 %i.aad to i64                 ; 4 uses
  store i32 0, ptr %i.mg, align 8, !tbaa !371
  %cond = icmp eq i32 %i.aad, 0
  br i1 %cond, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.i.i.thread, label %bb.co

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.i.i.thread:   ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #31
  store ptr %i.mi, ptr %22, align 8, !tbaa !359
  store i32 4, ptr %i.mk, align 4, !tbaa !372
  br label %_ZN4llvm11SmallVectorIjLj4EEC2EmRKj.exit

bb.co:                                            ; preds = %bb.cn
  %.not.i.i.i.i.i192 = icmp ugt i32 %i.aad, 12
  br i1 %.not.i.i.i.i.i192, label %bb.cp, label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i.i.i, !prof !664

bb.cp:                                            ; preds = %bb.co
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull %i.mf, i64 noundef %i.aae, i64 noundef 4) #31
  %.pre4.pre.i.i.i = load i32, ptr %i.mg, align 8, !tbaa !371
  %.pre.i.i195 = zext i32 %.pre4.pre.i.i.i to i64
  %.pre686 = load ptr, ptr %21, align 8, !tbaa !359
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i.i.i

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i.i.i: ; preds = %bb.cp, %bb.co
  %i.aaf = phi ptr [ %i.mf, %bb.co ], [ %.pre686, %bb.cp ] ; 11 uses
  %.pre-phi.i.i = phi i64 [ 0, %bb.co ], [ %.pre.i.i195, %bb.cp ]
  %i.aag = getelementptr inbounds nuw [4 x i8], ptr %i.aaf, i64 %.pre-phi.i.i
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.aae, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.aag, i8 -1, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !380
  %.pre.i.i.i193 = load i32, ptr %i.mg, align 8, !tbaa !371
  %i.aah = add i32 %.pre.i.i.i193, %i.aad
  store i32 %i.aah, ptr %i.mg, align 8, !tbaa !371
  %xtraiter = and i64 %i.aae, 3                   ; 3 uses
  %i.aai = icmp ult i32 %i.aad, 4
  br i1 %i.aai, label %.epil.preheader, label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i.i.i.new

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i.i.i.new: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i.i.i
  %unroll_iter = and i64 %i.aae, 4294967292
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cq, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i.i.i.new
  %indvars.iv.i = phi i64 [ 0, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i.i.i.new ], [ %indvars.iv.next.i.3, %bb.cq ] ; 6 uses
  %niter = phi i64 [ 0, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i.i.i.new ], [ %niter.next.3, %bb.cq ]
  %i.aaj = getelementptr inbounds nuw [4 x i8], ptr %i.aac, i64 %indvars.iv.i
  %i.aak = load i32, ptr %i.aaj, align 4, !tbaa !380
  %i.aal = zext i32 %i.aak to i64
  %i.aam = getelementptr inbounds nuw [4 x i8], ptr %i.aaf, i64 %i.aal
  %i.aan = trunc nuw i64 %indvars.iv.i to i32
  store i32 %i.aan, ptr %i.aam, align 4, !tbaa !380
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.aao = getelementptr inbounds nuw [4 x i8], ptr %i.aac, i64 %indvars.iv.next.i
  %i.aap = load i32, ptr %i.aao, align 4, !tbaa !380
  %i.aaq = zext i32 %i.aap to i64
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %i.aaf, i64 %i.aaq
  %i.aas = trunc nuw i64 %indvars.iv.next.i to i32
  store i32 %i.aas, ptr %i.aar, align 4, !tbaa !380
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr %i.aac, i64 %indvars.iv.next.i.1
  %i.aau = load i32, ptr %i.aat, align 4, !tbaa !380
  %i.aav = zext i32 %i.aau to i64
  %i.aaw = getelementptr inbounds nuw [4 x i8], ptr %i.aaf, i64 %i.aav
  %i.aax = trunc nuw i64 %indvars.iv.next.i.1 to i32
  store i32 %i.aax, ptr %i.aaw, align 4, !tbaa !380
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.aay = getelementptr inbounds nuw [4 x i8], ptr %i.aac, i64 %indvars.iv.next.i.2
  %i.aaz = load i32, ptr %i.aay, align 4, !tbaa !380
  %i.aba = zext i32 %i.aaz to i64
  %i.abb = getelementptr inbounds nuw [4 x i8], ptr %i.aaf, i64 %i.aba
  %i.abc = trunc nuw i64 %indvars.iv.next.i.2 to i32
  store i32 %i.abc, ptr %i.abb, align 4, !tbaa !380
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZL18inversePermutationN4llvm8ArrayRefIjEERNS_15SmallVectorImplIiEE.exit.unr-lcssa, label %bb.cq, !llvm.loop !15

_ZL18inversePermutationN4llvm8ArrayRefIjEERNS_15SmallVectorImplIiEE.exit.unr-lcssa: ; preds = %bb.cq
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL18inversePermutationN4llvm8ArrayRefIjEERNS_15SmallVectorImplIiEE.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZL18inversePermutationN4llvm8ArrayRefIjEERNS_15SmallVectorImplIiEE.exit.unr-lcssa, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i.i.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i.i.i ], [ %indvars.iv.next.i.3, %_ZL18inversePermutationN4llvm8ArrayRefIjEERNS_15SmallVectorImplIiEE.exit.unr-lcssa ]
  %lcmp.mod1021 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1021)
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cr, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.cr ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.cr ]
  %i.abd = getelementptr inbounds nuw [4 x i8], ptr %i.aac, i64 %indvars.iv.i.epil
  %i.abe = load i32, ptr %i.abd, align 4, !tbaa !380
  %i.abf = zext i32 %i.abe to i64
  %i.abg = getelementptr inbounds nuw [4 x i8], ptr %i.aaf, i64 %i.abf
  %i.abh = trunc nuw i64 %indvars.iv.i.epil to i32
  store i32 %i.abh, ptr %i.abg, align 4, !tbaa !380
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZL18inversePermutationN4llvm8ArrayRefIjEERNS_15SmallVectorImplIiEE.exit, label %bb.cr, !llvm.loop !3048

_ZL18inversePermutationN4llvm8ArrayRefIjEERNS_15SmallVectorImplIiEE.exit: ; preds = %bb.cr, %_ZL18inversePermutationN4llvm8ArrayRefIjEERNS_15SmallVectorImplIiEE.exit.unr-lcssa
  %.pre687 = load i32, ptr %i.aaa, align 8, !tbaa !371 ; 17 uses
  %i.abi = zext i32 %.pre687 to i64               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #31
  store ptr %i.mi, ptr %22, align 8, !tbaa !359
  store i32 0, ptr %i.mj, align 8, !tbaa !371
  store i32 4, ptr %i.mk, align 4, !tbaa !372
  %i.abj = icmp ugt i32 %.pre687, 4
  br i1 %i.abj, label %bb.cs, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.i.i

bb.cs:                                            ; preds = %_ZL18inversePermutationN4llvm8ArrayRefIjEERNS_15SmallVectorImplIiEE.exit
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull %i.mi, i64 noundef %i.abi, i64 noundef 4) #31
  %i.abk = load ptr, ptr %22, align 8, !tbaa !359 ; 5 uses
  %.idx.i.i.i.i.i.i.i197 = shl nuw nsw i64 %i.abi, 2 ; 2 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abk, i64 %.idx.i.i.i.i.i.i.i197
  %i.abm = add nsw i64 %.idx.i.i.i.i.i.i.i197, -4 ; 2 uses
  %i.abn = lshr exact i64 %i.abm, 2
  %i.abo = add nuw nsw i64 %i.abn, 1              ; 2 uses
  %min.iters.check985 = icmp ult i64 %i.abm, 28
  br i1 %min.iters.check985, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph986

vector.ph986:                                     ; preds = %bb.cs
  %n.vec987 = and i64 %i.abo, 9223372036854775800 ; 3 uses
  %i.abp = shl i64 %n.vec987, 2
  %i.abq = getelementptr i8, ptr %i.abk, i64 %i.abp
  %broadcast.splatinsert988 = insertelement <4 x i32> poison, i32 %.pre687, i64 0
  %broadcast.splat989 = shufflevector <4 x i32> %broadcast.splatinsert988, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body990

vector.body990:                                   ; preds = %vector.body990, %vector.ph986
  %index991 = phi i64 [ 0, %vector.ph986 ], [ %index.next993, %vector.body990 ] ; 2 uses
  %i.abr = shl i64 %index991, 2
  %next.gep992 = getelementptr i8, ptr %i.abk, i64 %i.abr ; 2 uses
  %i.abs = getelementptr i8, ptr %next.gep992, i64 16
  store <4 x i32> %broadcast.splat989, ptr %next.gep992, align 4, !tbaa !380
  store <4 x i32> %broadcast.splat989, ptr %i.abs, align 4, !tbaa !380
  %index.next993 = add nuw i64 %index991, 8       ; 2 uses
  %i.abt = icmp eq i64 %index.next993, %n.vec987
  br i1 %i.abt, label %middle.block994, label %vector.body990, !llvm.loop !3049

middle.block994:                                  ; preds = %vector.body990
  %cmp.n995 = icmp eq i64 %i.abo, %n.vec987
  br i1 %cmp.n995, label %_ZN4llvm11SmallVectorIjLj4EEC2EmRKj.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %bb.cs, %middle.block994
  %.06.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.abk, %bb.cs ], [ %i.abq, %middle.block994 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.abu, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %.pre687, ptr %.06.i.i.i.i.i.i.i.i.i, align 4, !tbaa !380
  %i.abu = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.abu, %i.abl
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11SmallVectorIjLj4EEC2EmRKj.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !3050

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.i.i:          ; preds = %_ZL18inversePermutationN4llvm8ArrayRefIjEERNS_15SmallVectorImplIiEE.exit
  %.not.i196 = icmp eq i32 %.pre687, 0
  br i1 %.not.i196, label %_ZN4llvm11SmallVectorIjLj4EEC2EmRKj.exit, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.i.i
  store i32 %.pre687, ptr %i.mi, align 8, !tbaa !380
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %.pre687, 1
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4llvm11SmallVectorIjLj4EEC2EmRKj.exit, label %.lr.ph.i.i.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.i.i.1:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  store i32 %.pre687, ptr %i.nj, align 4, !tbaa !380
  %.not.i.i.i.i.i.i.i.i.1 = icmp eq i32 %.pre687, 2
  br i1 %.not.i.i.i.i.i.i.i.i.1, label %_ZN4llvm11SmallVectorIjLj4EEC2EmRKj.exit, label %.lr.ph.i.i.i.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.i.i.i.2:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.1
  store i32 %.pre687, ptr %30, align 8, !tbaa !380
  %.not.i.i.i.i.i.i.i.i.2 = icmp eq i32 %.pre687, 3
  br i1 %.not.i.i.i.i.i.i.i.i.2, label %_ZN4llvm11SmallVectorIjLj4EEC2EmRKj.exit, label %.lr.ph.i.i.i.i.i.i.i.i.3

.lr.ph.i.i.i.i.i.i.i.i.3:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.2
  store i32 %.pre687, ptr %31, align 4, !tbaa !380
  br label %_ZN4llvm11SmallVectorIjLj4EEC2EmRKj.exit

_ZN4llvm11SmallVectorIjLj4EEC2EmRKj.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block994
  %.val161.pre = load ptr, ptr %21, align 8, !tbaa !359
  br label %_ZN4llvm11SmallVectorIjLj4EEC2EmRKj.exit

_ZN4llvm11SmallVectorIjLj4EEC2EmRKj.exit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i.i.2, %.lr.ph.i.i.i.i.i.i.i.i.3, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.i.i.thread, %_ZN4llvm11SmallVectorIjLj4EEC2EmRKj.exit.loopexit, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.i.i
  %i.abv = phi i64 [ 0, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.i.i.thread ], [ %i.abi, %_ZN4llvm11SmallVectorIjLj4EEC2EmRKj.exit.loopexit ], [ %i.abi, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.i.i ], [ %i.abi, %.lr.ph.i.i.i.i.i.i.i.i.3 ], [ %i.abi, %.lr.ph.i.i.i.i.i.i.i.i.2 ], [ %i.abi, %.lr.ph.i.i.i.i.i.i.i.i.1 ], [ %i.abi, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.abw = phi i32 [ 0, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.i.i.thread ], [ %.pre687, %_ZN4llvm11SmallVectorIjLj4EEC2EmRKj.exit.loopexit ], [ 0, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.i.i ], [ %.pre687, %.lr.ph.i.i.i.i.i.i.i.i.3 ], [ %.pre687, %.lr.ph.i.i.i.i.i.i.i.i.2 ], [ %.pre687, %.lr.ph.i.i.i.i.i.i.i.i.1 ], [ %.pre687, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %.val161 = phi ptr [ %i.mf, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.i.i.thread ], [ %.val161.pre, %_ZN4llvm11SmallVectorIjLj4EEC2EmRKj.exit.loopexit ], [ %i.aaf, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.i.i ], [ %i.aaf, %.lr.ph.i.i.i.i.i.i.i.i.3 ], [ %i.aaf, %.lr.ph.i.i.i.i.i.i.i.i.2 ], [ %i.aaf, %.lr.ph.i.i.i.i.i.i.i.i.1 ], [ %i.aaf, %.lr.ph.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.abx = phi ptr [ %i.mi, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.i.i.thread ], [ %i.abk, %_ZN4llvm11SmallVectorIjLj4EEC2EmRKj.exit.loopexit ], [ %i.mi, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.i.i ], [ %i.mi, %.lr.ph.i.i.i.i.i.i.i.i.3 ], [ %i.mi, %.lr.ph.i.i.i.i.i.i.i.i.2 ], [ %i.mi, %.lr.ph.i.i.i.i.i.i.i.i.1 ], [ %i.mi, %.lr.ph.i.i.i.i.i.i.i.i ] ; 5 uses
  store i32 %i.abw, ptr %i.mj, align 8, !tbaa !371
  %.val162 = load i32, ptr %i.mg, align 8, !tbaa !371 ; 2 uses
  %i.aby = zext i32 %.val162 to i64
  %.idx.i198 = shl nuw nsw i64 %i.aby, 2          ; 2 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %.val161, i64 %.idx.i198
  %.not8.i.i = icmp eq i32 %.val162, 0
  br i1 %.not8.i.i, label %"_ZN4llvm9transformIRNS_11SmallVectorIiLj12EEEPjZNS_13slpvectorizer7BoUpSLP18reorderTopToBottomEvE3$_4EET0_OT_S8_T1_.exit", label %.lr.ph.i.i199.preheader

.lr.ph.i.i199.preheader:                          ; preds = %_ZN4llvm11SmallVectorIjLj4EEC2EmRKj.exit
  %.val161965 = ptrtoaddr ptr %.val161 to i64
  %i.aca = ptrtoaddr ptr %i.abx to i64
  %i.acb = add nsw i64 %.idx.i198, -4             ; 2 uses
  %i.acc = lshr exact i64 %i.acb, 2
  %i.acd = add nuw nsw i64 %i.acc, 1              ; 2 uses
  %min.iters.check968 = icmp ult i64 %i.acb, 28
  %i.ace = sub i64 %.val161965, %i.aca
  %diff.check966 = icmp ugt i64 %i.ace, -32
  %or.cond = select i1 %min.iters.check968, i1 true, i1 %diff.check966
  br i1 %or.cond, label %.lr.ph.i.i199.preheader1000, label %vector.ph969

vector.ph969:                                     ; preds = %.lr.ph.i.i199.preheader
  %n.vec970 = and i64 %i.acd, 9223372036854775800 ; 3 uses
  %i.acf = shl i64 %n.vec970, 2                   ; 2 uses
  %i.acg = getelementptr i8, ptr %i.abx, i64 %i.acf
  %i.ach = getelementptr i8, ptr %.val161, i64 %i.acf
  %broadcast.splatinsert971 = insertelement <4 x i32> poison, i32 %i.abw, i64 0
  %broadcast.splat972 = shufflevector <4 x i32> %broadcast.splatinsert971, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body973

vector.body973:                                   ; preds = %vector.body973, %vector.ph969
  %index974 = phi i64 [ 0, %vector.ph969 ], [ %index.next979, %vector.body973 ] ; 2 uses
  %i.aci = shl i64 %index974, 2                   ; 2 uses
  %next.gep975 = getelementptr i8, ptr %i.abx, i64 %i.aci ; 2 uses
  %next.gep976 = getelementptr i8, ptr %.val161, i64 %i.aci ; 2 uses
  %i.acj = getelementptr i8, ptr %next.gep976, i64 16
  %wide.load977 = load <4 x i32>, ptr %next.gep976, align 4, !tbaa !380 ; 2 uses
  %wide.load978 = load <4 x i32>, ptr %i.acj, align 4, !tbaa !380 ; 2 uses
  %i.ack = icmp eq <4 x i32> %wide.load977, splat (i32 -1)
  %i.acl = icmp eq <4 x i32> %wide.load978, splat (i32 -1)
  %i.acm = select <4 x i1> %i.ack, <4 x i32> %broadcast.splat972, <4 x i32> %wide.load977
  %i.acn = select <4 x i1> %i.acl, <4 x i32> %broadcast.splat972, <4 x i32> %wide.load978
  %i.aco = getelementptr i8, ptr %next.gep975, i64 16
  store <4 x i32> %i.acm, ptr %next.gep975, align 4, !tbaa !380
  store <4 x i32> %i.acn, ptr %i.aco, align 4, !tbaa !380
  %index.next979 = add nuw i64 %index974, 8       ; 2 uses
  %i.acp = icmp eq i64 %index.next979, %n.vec970
  br i1 %i.acp, label %middle.block980, label %vector.body973, !llvm.loop !3051

middle.block980:                                  ; preds = %vector.body973
  %cmp.n981 = icmp eq i64 %i.acd, %n.vec970
  br i1 %cmp.n981, label %"_ZN4llvm9transformIRNS_11SmallVectorIiLj12EEEPjZNS_13slpvectorizer7BoUpSLP18reorderTopToBottomEvE3$_4EET0_OT_S8_T1_.exit.loopexit", label %.lr.ph.i.i199.preheader1000

.lr.ph.i.i199.preheader1000:                      ; preds = %.lr.ph.i.i199.preheader, %middle.block980
  %.010.i.i.ph = phi ptr [ %i.abx, %.lr.ph.i.i199.preheader ], [ %i.acg, %middle.block980 ]
  %.079.i.i.ph = phi ptr [ %.val161, %.lr.ph.i.i199.preheader ], [ %i.ach, %middle.block980 ]
  br label %.lr.ph.i.i199

.lr.ph.i.i199:                                    ; preds = %.lr.ph.i.i199.preheader1000, %.lr.ph.i.i199
  %.010.i.i = phi ptr [ %i.acu, %.lr.ph.i.i199 ], [ %.010.i.i.ph, %.lr.ph.i.i199.preheader1000 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.act, %.lr.ph.i.i199 ], [ %.079.i.i.ph, %.lr.ph.i.i199.preheader1000 ] ; 2 uses
  %i.acq = load i32, ptr %.079.i.i, align 4, !tbaa !380 ; 2 uses
  %i.acr = icmp eq i32 %i.acq, -1
  %i.acs = select i1 %i.acr, i32 %i.abw, i32 %i.acq
  store i32 %i.acs, ptr %.010.i.i, align 4, !tbaa !380
  %i.act = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %.not.i.i200 = icmp eq ptr %i.act, %i.abz
  br i1 %.not.i.i200, label %"_ZN4llvm9transformIRNS_11SmallVectorIiLj12EEEPjZNS_13slpvectorizer7BoUpSLP18reorderTopToBottomEvE3$_4EET0_OT_S8_T1_.exit.loopexit", label %.lr.ph.i.i199, !llvm.loop !3052

"_ZN4llvm9transformIRNS_11SmallVectorIiLj12EEEPjZNS_13slpvectorizer7BoUpSLP18reorderTopToBottomEvE3$_4EET0_OT_S8_T1_.exit.loopexit": ; preds = %.lr.ph.i.i199, %middle.block980
  %.pre690 = load i32, ptr %i.mj, align 8, !tbaa !371
  %.pre713 = zext i32 %.pre690 to i64
  br label %"_ZN4llvm9transformIRNS_11SmallVectorIiLj12EEEPjZNS_13slpvectorizer7BoUpSLP18reorderTopToBottomEvE3$_4EET0_OT_S8_T1_.exit"

"_ZN4llvm9transformIRNS_11SmallVectorIiLj12EEEPjZNS_13slpvectorizer7BoUpSLP18reorderTopToBottomEvE3$_4EET0_OT_S8_T1_.exit": ; preds = %"_ZN4llvm9transformIRNS_11SmallVectorIiLj12EEEPjZNS_13slpvectorizer7BoUpSLP18reorderTopToBottomEvE3$_4EET0_OT_S8_T1_.exit.loopexit", %_ZN4llvm11SmallVectorIjLj4EEC2EmRKj.exit
  %.pre-phi714 = phi i64 [ %.pre713, %"_ZN4llvm9transformIRNS_11SmallVectorIiLj12EEEPjZNS_13slpvectorizer7BoUpSLP18reorderTopToBottomEvE3$_4EET0_OT_S8_T1_.exit.loopexit" ], [ %i.abv, %_ZN4llvm11SmallVectorIjLj4EEC2EmRKj.exit ]
  call fastcc void @_ZL20fixupOrderingIndicesN4llvm15MutableArrayRefIjEE(ptr %i.abx, i64 %.pre-phi714)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #31
  store i32 0, ptr %i.m, align 4, !tbaa !380
  %i.acv = call { ptr, i8 } @_ZN4llvm9MapVectorINS_11SmallVectorIjLj4EEEjNS_8DenseMapIS2_jNS_13slpvectorizer7BoUpSLP22OrdersTypeDenseMapInfoENS_6detail12DenseMapPairIS2_jEEEENS1_ISt4pairIS2_jELj0EEELj0EE16try_emplace_implIRKS2_JiEEESB_IPSC_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(40) %19, ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 4 dereferenceable(4) %i.m)
  %.fca.0.extract78 = extractvalue { ptr, i8 } %i.acv, 0
  %i.acw = getelementptr inbounds nuw i8, ptr %.fca.0.extract78, i64 32 ; 2 uses
  %i.acx = load i32, ptr %i.acw, align 8, !tbaa !900
  %i.acy = add i32 %i.acx, 1
  store i32 %i.acy, ptr %i.acw, align 8, !tbaa !900
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #31
  %i.acz = load ptr, ptr %22, align 8, !tbaa !359 ; 2 uses
  %i.ada = icmp eq ptr %i.acz, %i.mi
  br i1 %i.ada, label %_ZN4llvm11SmallVectorIjLj4EED2Ev.exit201, label %bb.ct

bb.ct:                                            ; preds = %"_ZN4llvm9transformIRNS_11SmallVectorIiLj12EEEPjZNS_13slpvectorizer7BoUpSLP18reorderTopToBottomEvE3$_4EET0_OT_S8_T1_.exit"
  call void @free(ptr noundef %i.acz) #31
  br label %_ZN4llvm11SmallVectorIjLj4EED2Ev.exit201

_ZN4llvm11SmallVectorIjLj4EED2Ev.exit201:         ; preds = %"_ZN4llvm9transformIRNS_11SmallVectorIiLj12EEEPjZNS_13slpvectorizer7BoUpSLP18reorderTopToBottomEvE3$_4EET0_OT_S8_T1_.exit", %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #31
  %i.adb = load ptr, ptr %21, align 8, !tbaa !359 ; 2 uses
  %i.adc = icmp eq ptr %i.adb, %i.mf
  br i1 %i.adc, label %_ZN4llvm11SmallVectorIiLj12EED2Ev.exit, label %bb.cu

bb.cu:                                            ; preds = %_ZN4llvm11SmallVectorIjLj4EED2Ev.exit201
  call void @free(ptr noundef %i.adb) #31
  br label %_ZN4llvm11SmallVectorIiLj12EED2Ev.exit

_ZN4llvm11SmallVectorIiLj12EED2Ev.exit:           ; preds = %_ZN4llvm11SmallVectorIjLj4EED2Ev.exit201, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #31
  br label %bb.db

bb.cv:                                            ; preds = %bb.cm, %bb.cl, %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #31
  store i32 0, ptr %i.n, align 4, !tbaa !380
  %i.add = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11SmallVectorIjLj4EEEjNS_13slpvectorizer7BoUpSLP22OrdersTypeDenseMapInfoENS_6detail12DenseMapPairIS3_jEEEES3_jS6_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(40) %19, ptr noundef nonnull align 8 dereferenceable(32) %.5.i), !noalias !3125 ; 2 uses
  %.fca.0.extract.i.i.i364 = extractvalue { ptr, i8 } %i.add, 0
  %.fca.1.extract.i.i.i365 = extractvalue { ptr, i8 } %i.add, 1
  %i.ade = trunc nuw i8 %.fca.1.extract.i.i.i365 to i1
  %i.adf = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i364, i64 32 ; 2 uses
  br i1 %i.ade, label %bb.cw, label %bb.da

bb.cw:                                            ; preds = %bb.cv
  %i.adg = load i32, ptr %i.ls, align 8, !tbaa !371 ; 3 uses
  store i32 %i.adg, ptr %i.adf, align 8, !tbaa !900
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store ptr %.5.i, ptr %3, align 8, !tbaa !902, !alias.scope !3126
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  store ptr %i.n, ptr %4, align 8, !tbaa !638, !alias.scope !3127
  %i.adh = load i32, ptr %i.lt, align 4, !tbaa !372
  %.not.i.i370 = icmp ult i32 %i.adg, %i.adh
  br i1 %.not.i.i370, label %bb.cy, label %bb.cx, !prof !548

bb.cx:                                            ; preds = %bb.cw
  %i.adi = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_11SmallVectorIjLj4EEEjELb0EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESA_IJOiEEEEERS4_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.lq, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) ; 0 uses
  %.pre.i371 = load i32, ptr %i.ls, align 8, !tbaa !371
  br label %_ZN4llvm15SmallVectorImplISt4pairINS_11SmallVectorIjLj4EEEjEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESA_IJOiEEEEERS4_DpOT_.exit.i372

bb.cy:                                            ; preds = %bb.cw
  %i.adj = zext i32 %i.adg to i64
  %i.adk = load ptr, ptr %i.lq, align 8, !tbaa !359
  %i.adl = getelementptr inbounds nuw [40 x i8], ptr %i.adk, i64 %i.adj ; 8 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adl, i64 16 ; 3 uses
  store ptr %i.adm, ptr %i.adl, align 8, !tbaa !359
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adl, i64 8 ; 2 uses
  store i32 0, ptr %i.adn, align 8, !tbaa !371
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adl, i64 12
  store i32 4, ptr %i.ado, align 4, !tbaa !372
  %i.adp = getelementptr inbounds nuw i8, ptr %.5.i, i64 8 ; 2 uses
  %i.adq = load i32, ptr %i.adp, align 8, !tbaa !371 ; 5 uses
  %.not.i.i.i.i.i.i373 = icmp eq i32 %i.adq, 0
  %i.adr = icmp eq ptr %i.adl, %.5.i
  %or.cond.i.i.i.i.i374 = or i1 %i.adr, %.not.i.i.i.i.i.i373
  br i1 %or.cond.i.i.i.i.i374, label %_ZNSt4pairIN4llvm11SmallVectorIjLj4EEEjEC2IJRKS2_EJOiEEESt21piecewise_construct_tSt5tupleIJDpT_EES9_IJDpT0_EE.exit.i.i378, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.ads = icmp ugt i32 %i.adq, 4
  br i1 %i.ads, label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i.i.i.i.i379, label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i.i.i.i.i375

_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i.i.i.i.i379: ; preds = %bb.cz
  %i.adt = zext i32 %i.adq to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(36) %i.adl, ptr noundef nonnull %i.adm, i64 noundef %i.adt, i64 noundef 4) #31
  %.pre.i.i.i.i.i380 = load i32, ptr %i.adp, align 8, !tbaa !371 ; 2 uses
  %.not.i.i.i.i.i.i.i381 = icmp eq i32 %.pre.i.i.i.i.i380, 0
  br i1 %.not.i.i.i.i.i.i.i381, label %.sink.split.i.i.i.i.i.i377, label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i382

_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i382: ; preds = %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i.i.i.i.i379
  %.pre.i.i.i.i383 = load ptr, ptr %i.adl, align 8, !tbaa !359
  br label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i.i.i.i.i375

_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i.i.i.i.i375: ; preds = %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i382, %bb.cz
  %i.adu = phi ptr [ %.pre.i.i.i.i383, %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i382 ], [ %i.adm, %bb.cz ]
  %i.adv = phi i32 [ %.pre.i.i.i.i.i380, %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i382 ], [ %i.adq, %bb.cz ]
  %i.adw = zext i32 %i.adv to i64
  %i.adx = load ptr, ptr %.5.i, align 8, !tbaa !359
  %gepdiff.i.i.i.i.i.i376 = shl nuw nsw i64 %i.adw, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.adu, ptr align 4 %i.adx, i64 %gepdiff.i.i.i.i.i.i376, i1 false)
  br label %.sink.split.i.i.i.i.i.i377

.sink.split.i.i.i.i.i.i377:                       ; preds = %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i.i.i.i.i375, %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i.i.i.i.i379
  store i32 %i.adq, ptr %i.adn, align 8, !tbaa !371
  br label %_ZNSt4pairIN4llvm11SmallVectorIjLj4EEEjEC2IJRKS2_EJOiEEESt21piecewise_construct_tSt5tupleIJDpT_EES9_IJDpT0_EE.exit.i.i378

_ZNSt4pairIN4llvm11SmallVectorIjLj4EEEjEC2IJRKS2_EJOiEEESt21piecewise_construct_tSt5tupleIJDpT_EES9_IJDpT0_EE.exit.i.i378: ; preds = %.sink.split.i.i.i.i.i.i377, %bb.cy
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adl, i64 32
  %i.adz = load i32, ptr %i.n, align 4, !tbaa !380
  store i32 %i.adz, ptr %i.ady, align 8, !tbaa !900
  %i.aea = load i32, ptr %i.ls, align 8, !tbaa !371
  %i.aeb = add i32 %i.aea, 1                      ; 2 uses
  store i32 %i.aeb, ptr %i.ls, align 8, !tbaa !371
  br label %_ZN4llvm15SmallVectorImplISt4pairINS_11SmallVectorIjLj4EEEjEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESA_IJOiEEEEERS4_DpOT_.exit.i372

_ZN4llvm15SmallVectorImplISt4pairINS_11SmallVectorIjLj4EEEjEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESA_IJOiEEEEERS4_DpOT_.exit.i372: ; preds = %_ZNSt4pairIN4llvm11SmallVectorIjLj4EEEjEC2IJRKS2_EJOiEEESt21piecewise_construct_tSt5tupleIJDpT_EES9_IJDpT0_EE.exit.i.i378, %bb.cx
  %i.aec = phi i32 [ %.pre.i371, %bb.cx ], [ %i.aeb, %_ZNSt4pairIN4llvm11SmallVectorIjLj4EEEjEC2IJRKS2_EJOiEEESt21piecewise_construct_tSt5tupleIJDpT_EES9_IJDpT0_EE.exit.i.i378 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.aed = load ptr, ptr %i.lq, align 8, !tbaa !359
  %i.aee = zext i32 %i.aec to i64
  %i.aef = getelementptr inbounds nuw [40 x i8], ptr %i.aed, i64 %i.aee
  %i.aeg = getelementptr inbounds i8, ptr %i.aef, i64 -40
  br label %_ZN4llvm9MapVectorINS_11SmallVectorIjLj4EEEjNS_8DenseMapIS2_jNS_13slpvectorizer7BoUpSLP22OrdersTypeDenseMapInfoENS_6detail12DenseMapPairIS2_jEEEENS1_ISt4pairIS2_jELj0EEELj0EE16try_emplace_implIRKS2_JiEEESB_IPSC_bEOT_DpOT0_.exit384

bb.da:                                            ; preds = %bb.cv
  %i.aeh = load ptr, ptr %i.lq, align 8, !tbaa !359
  %i.aei = load i32, ptr %i.adf, align 8, !tbaa !900
  %i.aej = zext i32 %i.aei to i64
  %i.aek = getelementptr inbounds nuw [40 x i8], ptr %i.aeh, i64 %i.aej
  br label %_ZN4llvm9MapVectorINS_11SmallVectorIjLj4EEEjNS_8DenseMapIS2_jNS_13slpvectorizer7BoUpSLP22OrdersTypeDenseMapInfoENS_6detail12DenseMapPairIS2_jEEEENS1_ISt4pairIS2_jELj0EEELj0EE16try_emplace_implIRKS2_JiEEESB_IPSC_bEOT_DpOT0_.exit384

_ZN4llvm9MapVectorINS_11SmallVectorIjLj4EEEjNS_8DenseMapIS2_jNS_13slpvectorizer7BoUpSLP22OrdersTypeDenseMapInfoENS_6detail12DenseMapPairIS2_jEEEENS1_ISt4pairIS2_jELj0EEELj0EE16try_emplace_implIRKS2_JiEEESB_IPSC_bEOT_DpOT0_.exit384: ; preds = %_ZN4llvm15SmallVectorImplISt4pairINS_11SmallVectorIjLj4EEEjEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESA_IJOiEEEEERS4_DpOT_.exit.i372, %bb.da
  %.sroa.010.0.i366 = phi ptr [ %i.aeg, %_ZN4llvm15SmallVectorImplISt4pairINS_11SmallVectorIjLj4EEEjEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESA_IJOiEEEEERS4_DpOT_.exit.i372 ], [ %i.aek, %bb.da ]
  %i.ael = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i366, i64 32 ; 2 uses
  %i.aem = load i32, ptr %i.ael, align 8, !tbaa !900
  %i.aen = add i32 %i.aem, 1
  store i32 %i.aen, ptr %i.ael, align 8, !tbaa !900
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #31
  br label %bb.db

bb.db:                                            ; preds = %.loopexit, %_ZN4llvm9MapVectorINS_11SmallVectorIjLj4EEEjNS_8DenseMapIS2_jNS_13slpvectorizer7BoUpSLP22OrdersTypeDenseMapInfoENS_6detail12DenseMapPairIS2_jEEEENS1_ISt4pairIS2_jELj0EEELj0EE16try_emplace_implIRKS2_JiEEESB_IPSC_bEOT_DpOT0_.exit384, %_ZN4llvm11SmallVectorIiLj12EED2Ev.exit, %.loopexit588
  %i.aeo = getelementptr inbounds nuw i8, ptr %.0141621, i64 8 ; 2 uses
  %.not146 = icmp eq ptr %i.aeo, %i.pe
  br i1 %.not146, label %._crit_edge, label %.lr.ph622

bb.dc:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #31
  store ptr %i.ml, ptr %23, align 8, !tbaa !359
  store i32 0, ptr %i.mm, align 8, !tbaa !371
  store i32 4, ptr %i.mn, align 4, !tbaa !372
  %i.aep = icmp ugt i64 %indvars.iv, 4
  br i1 %i.aep, label %bb.dd, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.i.i202

bb.dd:                                            ; preds = %bb.dc
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull %i.ml, i64 noundef %indvars.iv, i64 noundef 4) #31
  %i.aeq = load ptr, ptr %23, align 8, !tbaa !359 ; 6 uses
  %.idx.i.i.i.i.i.i.i209 = shl nuw nsw i64 %indvars.iv, 2
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeq, i64 %.idx.i.i.i.i.i.i.i209
  %i.aes = trunc nuw i64 %indvars.iv to i32       ; 3 uses
  %i.aet = lshr exact i64 %35, 2
  %i.aeu = add nuw nsw i64 %i.aet, 1              ; 2 uses
  %min.iters.check939 = icmp ult i64 %35, 28
  br i1 %min.iters.check939, label %.lr.ph.i.i.i.i.i.i.i.i.i210.preheader, label %vector.ph940

vector.ph940:                                     ; preds = %bb.dd
  %n.vec941 = and i64 %i.aeu, 9223372036854775800 ; 3 uses
  %i.aev = shl i64 %n.vec941, 2
  %i.aew = getelementptr i8, ptr %i.aeq, i64 %i.aev
  %broadcast.splatinsert942 = insertelement <4 x i32> poison, i32 %i.aes, i64 0
  %broadcast.splat943 = shufflevector <4 x i32> %broadcast.splatinsert942, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body944

vector.body944:                                   ; preds = %vector.body944, %vector.ph940
  %index945 = phi i64 [ 0, %vector.ph940 ], [ %index.next947, %vector.body944 ] ; 2 uses
  %i.aex = shl i64 %index945, 2
  %next.gep946 = getelementptr i8, ptr %i.aeq, i64 %i.aex ; 2 uses
  %i.aey = getelementptr i8, ptr %next.gep946, i64 16
  store <4 x i32> %broadcast.splat943, ptr %next.gep946, align 4, !tbaa !380
  store <4 x i32> %broadcast.splat943, ptr %i.aey, align 4, !tbaa !380
  %index.next947 = add nuw i64 %index945, 8       ; 2 uses
  %i.aez = icmp eq i64 %index.next947, %n.vec941
  br i1 %i.aez, label %middle.block948, label %vector.body944, !llvm.loop !3061

middle.block948:                                  ; preds = %vector.body944
  %cmp.n949 = icmp eq i64 %i.aeu, %n.vec941
  br i1 %cmp.n949, label %_ZN4llvm11SmallVectorIjLj4EEC2EmRKj.exit213, label %.lr.ph.i.i.i.i.i.i.i.i.i210.preheader

.lr.ph.i.i.i.i.i.i.i.i.i210.preheader:            ; preds = %bb.dd, %middle.block948
  %.06.i.i.i.i.i.i.i.i.i211.ph = phi ptr [ %i.aeq, %bb.dd ], [ %i.aew, %middle.block948 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i210

.lr.ph.i.i.i.i.i.i.i.i.i210:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i210.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i210
  %.06.i.i.i.i.i.i.i.i.i211 = phi ptr [ %i.afa, %.lr.ph.i.i.i.i.i.i.i.i.i210 ], [ %.06.i.i.i.i.i.i.i.i.i211.ph, %.lr.ph.i.i.i.i.i.i.i.i.i210.preheader ] ; 2 uses
  store i32 %i.aes, ptr %.06.i.i.i.i.i.i.i.i.i211, align 4, !tbaa !380
  %i.afa = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i211, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i212 = icmp eq ptr %i.afa, %i.aer
  br i1 %.not.i.i.i.i.i.i.i.i.i212, label %_ZN4llvm11SmallVectorIjLj4EEC2EmRKj.exit213, label %.lr.ph.i.i.i.i.i.i.i.i.i210, !llvm.loop !3062

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.i.i202:       ; preds = %bb.dc
  %.idx.i.i.i.i.i.i204 = shl nuw nsw i64 %indvars.iv, 2
  %i.afb = getelementptr inbounds nuw i8, ptr %i.ml, i64 %.idx.i.i.i.i.i.i204
  %i.afc = trunc nuw nsw i64 %indvars.iv to i32   ; 3 uses
  %i.afd = lshr exact i64 %33, 2
  %i.afe = add nuw nsw i64 %i.afd, 1              ; 2 uses
  %min.iters.check952 = icmp ult i64 %33, 28
  br i1 %min.iters.check952, label %.lr.ph.i.i.i.i.i.i.i.i205.preheader, label %vector.ph953

vector.ph953:                                     ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.i.i202
  %n.vec954 = and i64 %i.afe, 9223372036854775800 ; 3 uses
  %i.aff = shl i64 %n.vec954, 2
  %i.afg = getelementptr i8, ptr %i.ml, i64 %i.aff
  %broadcast.splatinsert955 = insertelement <4 x i32> poison, i32 %i.afc, i64 0
  %broadcast.splat956 = shufflevector <4 x i32> %broadcast.splatinsert955, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body957

vector.body957:                                   ; preds = %vector.body957, %vector.ph953
  %index958 = phi i64 [ 0, %vector.ph953 ], [ %index.next960, %vector.body957 ] ; 2 uses
  %i.afh = shl i64 %index958, 2
  %next.gep959 = getelementptr i8, ptr %i.ml, i64 %i.afh ; 2 uses
  %i.afi = getelementptr i8, ptr %next.gep959, i64 16
  store <4 x i32> %broadcast.splat956, ptr %next.gep959, align 8, !tbaa !380
  store <4 x i32> %broadcast.splat956, ptr %i.afi, align 8, !tbaa !380
  %index.next960 = add nuw i64 %index958, 8       ; 2 uses
  %i.afj = icmp eq i64 %index.next960, %n.vec954
  br i1 %i.afj, label %middle.block961, label %vector.body957, !llvm.loop !3063

middle.block961:                                  ; preds = %vector.body957
  %cmp.n962 = icmp eq i64 %i.afe, %n.vec954
  br i1 %cmp.n962, label %_ZN4llvm11SmallVectorIjLj4EEC2EmRKj.exit213.thread, label %.lr.ph.i.i.i.i.i.i.i.i205.preheader

.lr.ph.i.i.i.i.i.i.i.i205.preheader:              ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.i.i202, %middle.block961
  %.06.i.i.i.i.i.i.i.i206.ph = phi ptr [ %i.ml, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.i.i202 ], [ %i.afg, %middle.block961 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i205

.lr.ph.i.i.i.i.i.i.i.i205:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i205.preheader, %.lr.ph.i.i.i.i.i.i.i.i205
  %.06.i.i.i.i.i.i.i.i206 = phi ptr [ %i.afk, %.lr.ph.i.i.i.i.i.i.i.i205 ], [ %.06.i.i.i.i.i.i.i.i206.ph, %.lr.ph.i.i.i.i.i.i.i.i205.preheader ] ; 2 uses
  store i32 %i.afc, ptr %.06.i.i.i.i.i.i.i.i206, align 4, !tbaa !380
  %i.afk = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i206, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i207 = icmp eq ptr %i.afk, %i.afb
  br i1 %.not.i.i.i.i.i.i.i.i207, label %_ZN4llvm11SmallVectorIjLj4EEC2EmRKj.exit213.thread, label %.lr.ph.i.i.i.i.i.i.i.i205, !llvm.loop !3064

_ZN4llvm11SmallVectorIjLj4EEC2EmRKj.exit213.thread: ; preds = %.lr.ph.i.i.i.i.i.i.i.i205, %middle.block961
  store i32 %i.afc, ptr %i.mm, align 8, !tbaa !371
  %i.afl = load ptr, ptr %i.lq, align 8, !tbaa !359 ; 2 uses
  %i.afm = zext i32 %.pre691 to i64
  %.idx654830 = mul nuw nsw i64 %i.afm, 40
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afl, i64 %.idx654830
  br label %.lr.ph628.preheader

_ZN4llvm11SmallVectorIjLj4EEC2EmRKj.exit213:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i210, %middle.block948
  %.pre692 = load i32, ptr %i.ls, align 8, !tbaa !371 ; 2 uses
  store i32 %i.aes, ptr %i.mm, align 8, !tbaa !371
  %i.afo = load ptr, ptr %i.lq, align 8, !tbaa !359 ; 2 uses
  %i.afp = zext i32 %.pre692 to i64
  %.idx654 = mul nuw nsw i64 %i.afp, 40
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afo, i64 %.idx654
  %.not147623 = icmp eq i32 %.pre692, 0
  br i1 %.not147623, label %._crit_edge639.thread, label %.lr.ph628.preheader

._crit_edge639.thread:                            ; preds = %_ZN4llvm11SmallVectorIjLj4EEC2EmRKj.exit213
  %.idx.i.i218838 = shl nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.afr = getelementptr i8, ptr %i.aeq, i64 %.idx.i.i218838
  br label %.lr.ph.i.i.i.preheader.i.i.i220

.lr.ph628.preheader:                              ; preds = %_ZN4llvm11SmallVectorIjLj4EEC2EmRKj.exit213.thread, %_ZN4llvm11SmallVectorIjLj4EEC2EmRKj.exit213
  %i.afs = phi ptr [ %i.afn, %_ZN4llvm11SmallVectorIjLj4EEC2EmRKj.exit213.thread ], [ %i.afq, %_ZN4llvm11SmallVectorIjLj4EEC2EmRKj.exit213 ]
  %i.aft = phi ptr [ %i.afl, %_ZN4llvm11SmallVectorIjLj4EEC2EmRKj.exit213.thread ], [ %i.afo, %_ZN4llvm11SmallVectorIjLj4EEC2EmRKj.exit213 ]
  br label %.lr.ph628

._crit_edge629:                                   ; preds = %bb.de
  %.pre696 = load ptr, ptr %23, align 8, !tbaa !359 ; 2 uses
  %.pre697 = load i32, ptr %i.mm, align 8, !tbaa !371
  %.pre698 = load ptr, ptr %i.lq, align 8, !tbaa !359 ; 2 uses
  %.pre699 = load i32, ptr %i.ls, align 8, !tbaa !371 ; 2 uses
  %i.afu = icmp ne i32 %.1140, %.2
  %i.afv = zext i32 %.pre697 to i64               ; 2 uses
  %i.afw = zext i32 %.pre699 to i64
  %.idx655 = mul nuw nsw i64 %i.afw, 40
  %i.afx = getelementptr inbounds nuw i8, ptr %.pre698, i64 %.idx655
  %.not148631 = icmp eq i32 %.pre699, 0
  br i1 %.not148631, label %._crit_edge639, label %.lr.ph638

.lr.ph628:                                        ; preds = %.lr.ph628.preheader, %bb.de
  %.0136627 = phi ptr [ %i.agw, %bb.de ], [ %i.aft, %.lr.ph628.preheader ] ; 6 uses
  %.0137626 = phi i32 [ %.2, %bb.de ], [ 0, %.lr.ph628.preheader ] ; 3 uses
  %.0139624 = phi i32 [ %.1140, %bb.de ], [ 0, %.lr.ph628.preheader ] ; 2 uses
  %i.afy = getelementptr inbounds nuw i8, ptr %.0136627, i64 8
  %i.afz = load i32, ptr %i.afy, align 8, !tbaa !371 ; 5 uses
  %.not.i214 = icmp eq i32 %i.afz, 0
  br i1 %.not.i214, label %.lr.ph628..thread_crit_edge, label %.lr.ph.i.i.i.preheader.i.i.i

.lr.ph628..thread_crit_edge:                      ; preds = %.lr.ph628
  %.phi.trans.insert693 = getelementptr inbounds nuw i8, ptr %.0136627, i64 32
  %.pre694 = load i32, ptr %.phi.trans.insert693, align 8, !tbaa !900
  %.pre695 = load ptr, ptr %.0136627, align 8, !tbaa !359
  br label %.thread

.lr.ph.i.i.i.preheader.i.i.i:                     ; preds = %.lr.ph628
  %i.aga = load ptr, ptr %.0136627, align 8, !tbaa !359 ; 5 uses
  %i.agb = zext i32 %i.afz to i64                 ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.agb, 2
  %i.agc = getelementptr i8, ptr %i.aga, i64 %.idx.i.i ; 2 uses
  %i.agd = load i32, ptr %i.aga, align 4, !tbaa !380, !noalias !3128 ; 2 uses
  %i.age = icmp eq i32 %i.agd, 0
  %.not2.i.i.i.i.i2.i = icmp eq i32 %i.agd, %i.afz
  %or.cond3.i = or i1 %.not2.i.i.i.i.i2.i, %i.age
  br i1 %or.cond3.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS2_8ArrayRefIjEEEUlRKT_E_EclINS2_6detail14zip_enumeratorIJNSD_14index_iteratorEPKjEEEEEbS7_.exit.thread.i.i.i.i.i.i.preheader, label %_ZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS_8ArrayRefIjEE.exit

_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS2_8ArrayRefIjEEEUlRKT_E_EclINS2_6detail14zip_enumeratorIJNSD_14index_iteratorEPKjEEEEEbS7_.exit.thread.i.i.i.i.i.i.preheader: ; preds = %.lr.ph.i.i.i.preheader.i.i.i
  %.not.i.i.i.i.i.i893 = icmp eq i32 %i.afz, 1
  br i1 %.not.i.i.i.i.i.i893, label %_ZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS_8ArrayRefIjEE.exit.thread, label %.lr.ph.i.i.i.i.i.i215.lr.ph, !llvm.loop !23

.lr.ph.i.i.i.i.i.i215.lr.ph:                      ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS2_8ArrayRefIjEEEUlRKT_E_EclINS2_6detail14zip_enumeratorIJNSD_14index_iteratorEPKjEEEEEbS7_.exit.thread.i.i.i.i.i.i.preheader
  %i.agf = getelementptr inbounds nuw i8, ptr %i.aga, i64 4
  br label %.lr.ph.i.i.i.i.i.i215, !llvm.loop !23

.lr.ph.i.i.i.i.i.i215:                            ; preds = %.lr.ph.i.i.i.i.i.i215.lr.ph, %_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS2_8ArrayRefIjEEEUlRKT_E_EclINS2_6detail14zip_enumeratorIJNSD_14index_iteratorEPKjEEEEEbS7_.exit.thread.i.i.i.i.i.i
  %i.agg = phi ptr [ %i.agf, %.lr.ph.i.i.i.i.i.i215.lr.ph ], [ %i.agl, %_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS2_8ArrayRefIjEEEUlRKT_E_EclINS2_6detail14zip_enumeratorIJNSD_14index_iteratorEPKjEEEEEbS7_.exit.thread.i.i.i.i.i.i ] ; 3 uses
  %.sroa.2.0.copyload.i.i.i.i.i4.i894 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i215.lr.ph ], [ %i.agh, %_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS2_8ArrayRefIjEEEUlRKT_E_EclINS2_6detail14zip_enumeratorIJNSD_14index_iteratorEPKjEEEEEbS7_.exit.thread.i.i.i.i.i.i ]
  %i.agh = add nuw nsw i64 %.sroa.2.0.copyload.i.i.i.i.i4.i894, 1 ; 2 uses
  %i.agi = load i32, ptr %i.agg, align 4, !tbaa !380, !noalias !3128 ; 2 uses
  %i.agj = zext i32 %i.agi to i64
  %i.agk = icmp eq i64 %i.agh, %i.agj
  %.not2.i.i.i.i.i.i = icmp eq i32 %i.agi, %i.afz
  %or.cond.i216 = or i1 %.not2.i.i.i.i.i.i, %i.agk
  br i1 %or.cond.i216, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS2_8ArrayRefIjEEEUlRKT_E_EclINS2_6detail14zip_enumeratorIJNSD_14index_iteratorEPKjEEEEEbS7_.exit.thread.i.i.i.i.i.i, label %_ZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS_8ArrayRefIjEE.exit, !llvm.loop !23

_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS2_8ArrayRefIjEEEUlRKT_E_EclINS2_6detail14zip_enumeratorIJNSD_14index_iteratorEPKjEEEEEbS7_.exit.thread.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i215
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agg, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.agl, %i.agc
  br i1 %.not.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS2_8ArrayRefIjEEEUlRKT_E_EclINS2_6detail14zip_enumeratorIJNSD_14index_iteratorEPKjEEEEEbS7_.exit.thread.i.i.i.i.i.i._ZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS_8ArrayRefIjEE.exit.thread.loopexit_crit_edge, label %.lr.ph.i.i.i.i.i.i215, !llvm.loop !23

_ZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS_8ArrayRefIjEE.exit: ; preds = %.lr.ph.i.i.i.i.i.i215, %.lr.ph.i.i.i.preheader.i.i.i
  %.ph.i.i.in.i = phi ptr [ %i.aga, %.lr.ph.i.i.i.preheader.i.i.i ], [ %i.agg, %.lr.ph.i.i.i.i.i.i215 ]
  %i.agm = icmp eq ptr %i.agc, %.ph.i.i.in.i
  br i1 %i.agm, label %_ZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS_8ArrayRefIjEE.exit.thread, label %bb.de

_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS2_8ArrayRefIjEEEUlRKT_E_EclINS2_6detail14zip_enumeratorIJNSD_14index_iteratorEPKjEEEEEbS7_.exit.thread.i.i.i.i.i.i._ZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS_8ArrayRefIjEE.exit.thread.loopexit_crit_edge: ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS2_8ArrayRefIjEEEUlRKT_E_EclINS2_6detail14zip_enumeratorIJNSD_14index_iteratorEPKjEEEEEbS7_.exit.thread.i.i.i.i.i.i
  br label %_ZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS_8ArrayRefIjEE.exit.thread, !llvm.loop !23

_ZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS_8ArrayRefIjEE.exit.thread: ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS2_8ArrayRefIjEEEUlRKT_E_EclINS2_6detail14zip_enumeratorIJNSD_14index_iteratorEPKjEEEEEbS7_.exit.thread.i.i.i.i.i.i.preheader, %_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS2_8ArrayRefIjEEEUlRKT_E_EclINS2_6detail14zip_enumeratorIJNSD_14index_iteratorEPKjEEEEEbS7_.exit.thread.i.i.i.i.i.i._ZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS_8ArrayRefIjEE.exit.thread.loopexit_crit_edge, %_ZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS_8ArrayRefIjEE.exit
  %i.agn = getelementptr inbounds nuw i8, ptr %.0136627, i64 32
  %i.ago = load i32, ptr %i.agn, align 8, !tbaa !900 ; 2 uses
  %i.agp = add i32 %i.ago, %.0137626
  br label %.thread

.thread:                                          ; preds = %.lr.ph628..thread_crit_edge, %_ZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS_8ArrayRefIjEE.exit.thread
  %.pre-phi710 = phi i64 [ 0, %.lr.ph628..thread_crit_edge ], [ %i.agb, %_ZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS_8ArrayRefIjEE.exit.thread ]
  %i.agq = phi ptr [ %.pre695, %.lr.ph628..thread_crit_edge ], [ %i.aga, %_ZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS_8ArrayRefIjEE.exit.thread ]
  %i.agr = phi i32 [ %.pre694, %.lr.ph628..thread_crit_edge ], [ %i.ago, %_ZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS_8ArrayRefIjEE.exit.thread ]
  %.1138 = phi i32 [ %.0137626, %.lr.ph628..thread_crit_edge ], [ %i.agp, %_ZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS_8ArrayRefIjEE.exit.thread ]
  %i.ags = add i32 %i.agr, %.0139624
  %i.agt = load ptr, ptr %23, align 8, !tbaa !359
  %i.agu = load i32, ptr %i.mm, align 8, !tbaa !371
  %i.agv = zext i32 %i.agu to i64
  call fastcc void @_ZL13combineOrdersN4llvm15MutableArrayRefIjEENS_8ArrayRefIjEE(ptr %i.agt, i64 %i.agv, ptr %i.agq, i64 %.pre-phi710)
  br label %bb.de

bb.de:                                            ; preds = %.thread, %_ZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS_8ArrayRefIjEE.exit
  %.1140 = phi i32 [ %i.ags, %.thread ], [ %.0139624, %_ZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS_8ArrayRefIjEE.exit ] ; 4 uses
  %.2 = phi i32 [ %.1138, %.thread ], [ %.0137626, %_ZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS_8ArrayRefIjEE.exit ] ; 2 uses
  %i.agw = getelementptr inbounds nuw i8, ptr %.0136627, i64 40 ; 2 uses
  %.not147 = icmp eq ptr %i.agw, %i.afs
  br i1 %.not147, label %._crit_edge629, label %.lr.ph628

._crit_edge639:                                   ; preds = %bb.dh, %._crit_edge629
  %.sroa.0479.0.lcssa = phi ptr [ %.pre696, %._crit_edge629 ], [ %.sroa.0479.1, %bb.dh ] ; 2 uses
  %.sroa.11.0.lcssa = phi i64 [ %i.afv, %._crit_edge629 ], [ %.sroa.11.1, %bb.dh ] ; 3 uses
  %.idx.i.i218 = shl nuw nsw i64 %.sroa.11.0.lcssa, 2 ; 2 uses
  %i.agx = getelementptr i8, ptr %.sroa.0479.0.lcssa, i64 %.idx.i.i218
  %.not3.i.i.i.i.i.i219 = icmp eq i64 %.sroa.11.0.lcssa, 0
  br i1 %.not3.i.i.i.i.i.i219, label %_ZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS_8ArrayRefIjEE.exit232.thread, label %.lr.ph.i.i.i.preheader.i.i.i220

.lr.ph.i.i.i.preheader.i.i.i220:                  ; preds = %._crit_edge639.thread, %._crit_edge639
  %i.agy = phi ptr [ %i.afr, %._crit_edge639.thread ], [ %i.agx, %._crit_edge639 ] ; 4 uses
  %.idx.i.i218842 = phi i64 [ %.idx.i.i218838, %._crit_edge639.thread ], [ %.idx.i.i218, %._crit_edge639 ] ; 2 uses
  %.sroa.11.0.lcssa841 = phi i64 [ %indvars.iv, %._crit_edge639.thread ], [ %.sroa.11.0.lcssa, %._crit_edge639 ] ; 8 uses
  %.sroa.0479.0.lcssa840 = phi ptr [ %i.aeq, %._crit_edge639.thread ], [ %.sroa.0479.0.lcssa, %._crit_edge639 ] ; 13 uses
  %.sroa.0479.0.lcssa840923 = ptrtoaddr ptr %.sroa.0479.0.lcssa840 to i64 ; 2 uses
  %i.agz = trunc i64 %.sroa.11.0.lcssa841 to i32  ; 6 uses
  %i.aha = load i32, ptr %.sroa.0479.0.lcssa840, align 4, !tbaa !380, !noalias !3129 ; 2 uses
  %i.ahb = icmp eq i32 %i.aha, 0
  %.not2.i.i.i.i.i2.i221 = icmp eq i32 %i.aha, %i.agz
  %or.cond3.i222 = or i1 %.not2.i.i.i.i.i2.i221, %i.ahb
  br i1 %or.cond3.i222, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS2_8ArrayRefIjEEEUlRKT_E_EclINS2_6detail14zip_enumeratorIJNSD_14index_iteratorEPKjEEEEEbS7_.exit.thread.i.i.i.i.i.i225, label %_ZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS_8ArrayRefIjEE.exit232

.lr.ph.i.i.i.i.i.i228:                            ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS2_8ArrayRefIjEEEUlRKT_E_EclINS2_6detail14zip_enumeratorIJNSD_14index_iteratorEPKjEEEEEbS7_.exit.thread.i.i.i.i.i.i225
  %i.ahc = add nuw nsw i64 %.sroa.2.0.copyload.i.i.i.i.i4.i226, 1 ; 2 uses
  %i.ahd = load i32, ptr %i.ahh, align 4, !tbaa !380, !noalias !3129 ; 2 uses
  %i.ahe = zext i32 %i.ahd to i64
  %i.ahf = icmp eq i64 %i.ahc, %i.ahe
  %.not2.i.i.i.i.i.i229 = icmp eq i32 %i.ahd, %i.agz
  %or.cond.i230 = or i1 %.not2.i.i.i.i.i.i229, %i.ahf
  br i1 %or.cond.i230, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS2_8ArrayRefIjEEEUlRKT_E_EclINS2_6detail14zip_enumeratorIJNSD_14index_iteratorEPKjEEEEEbS7_.exit.thread.i.i.i.i.i.i225, label %_ZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS_8ArrayRefIjEE.exit232, !llvm.loop !23

_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS2_8ArrayRefIjEEEUlRKT_E_EclINS2_6detail14zip_enumeratorIJNSD_14index_iteratorEPKjEEEEEbS7_.exit.thread.i.i.i.i.i.i225: ; preds = %.lr.ph.i.i.i.preheader.i.i.i220, %.lr.ph.i.i.i.i.i.i228
  %i.ahg = phi ptr [ %i.ahh, %.lr.ph.i.i.i.i.i.i228 ], [ %.sroa.0479.0.lcssa840, %.lr.ph.i.i.i.preheader.i.i.i220 ]
  %.sroa.2.0.copyload.i.i.i.i.i4.i226 = phi i64 [ %i.ahc, %.lr.ph.i.i.i.i.i.i228 ], [ 0, %.lr.ph.i.i.i.preheader.i.i.i220 ]
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahg, i64 4 ; 4 uses
  %.not.i.i.i.i.i.i227 = icmp eq ptr %i.ahh, %i.agy
  br i1 %.not.i.i.i.i.i.i227, label %_ZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS_8ArrayRefIjEE.exit232.thread, label %.lr.ph.i.i.i.i.i.i228, !llvm.loop !23

_ZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS_8ArrayRefIjEE.exit232: ; preds = %.lr.ph.i.i.i.i.i.i228, %.lr.ph.i.i.i.preheader.i.i.i220
  %.ph.i.i.in.i224 = phi ptr [ %.sroa.0479.0.lcssa840, %.lr.ph.i.i.i.preheader.i.i.i220 ], [ %i.ahh, %.lr.ph.i.i.i.i.i.i228 ]
  %i.ahi = icmp eq ptr %i.agy, %.ph.i.i.in.i224
end_hunk_1
