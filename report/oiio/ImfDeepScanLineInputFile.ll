inline.NumInlined: 518
inline.NumDeleted: 284
begin_hunk_0_@_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_NS0_9DeepSliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE7_M_copyILb0ENSB_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_:bb.a
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !223
  %.not9.i.i.i35 = icmp eq ptr %i.ab, null
  br i1 %.not9.i.i.i35, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !232
  %i.ae = icmp eq ptr %i.ad, %i.z
  br i1 %i.ae, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  store ptr null, ptr %i.ac, align 8, !tbaa !232
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !226 ; 2 uses
  %.not10.i.i.i37 = icmp eq ptr %i.ag, null
  br i1 %.not10.i.i.i37, label %bb.r, label %.preheader.i.i.i38

.preheader.i.i.i38:                               ; preds = %bb.n, %.preheader.i.i.i38
  %storemerge.i.i.i39 = phi ptr [ %i.ai, %.preheader.i.i.i38 ], [ %i.ag, %bb.n ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i39, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !232 ; 2 uses
  %.not11.i.i.i40 = icmp eq ptr %i.ai, null
  br i1 %.not11.i.i.i40, label %bb.o, label %.preheader.i.i.i38, !llvm.loop !236

bb.o:                                             ; preds = %.preheader.i.i.i38
  %i.aj = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i39, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !226 ; 2 uses
  %.not12.i.i.i41 = icmp eq ptr %i.ak, null
  %spec.store.select.i.i.i42 = select i1 %.not12.i.i.i41, ptr %storemerge.i.i.i39, ptr %i.ak
  store ptr %spec.store.select.i.i.i42, ptr %i.a, align 8
  br label %bb.r

bb.p:                                             ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr null, ptr %i.al, align 8, !tbaa !226
  br label %bb.r

bb.q:                                             ; preds = %bb.l
  store ptr null, ptr %3, align 8, !tbaa !220
  br label %bb.r

_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_NS0_9DeepSliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i43: ; preds = %.lr.ph
  %i.am = invoke noalias noundef nonnull dereferenceable(344) ptr @_Znwm(i64 noundef 344) #23
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_NS0_9DeepSliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i43
  %.sink12.i.i36 = phi ptr [ %i.z, %bb.q ], [ %i.z, %bb.n ], [ %i.z, %bb.o ], [ %i.z, %bb.p ], [ %i.am, %_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_NS0_9DeepSliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i43 ] ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.050, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %.sink12.i.i36, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.ao, ptr noundef nonnull align 8 dereferenceable(312) %i.an, i64 312, i1 false)
  %i.ap = load i32, ptr %.050, align 8, !tbaa !237
  store i32 %i.ap, ptr %.sink12.i.i36, align 8, !tbaa !237
  %i.aq = getelementptr inbounds nuw i8, ptr %.sink12.i.i36, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %.03149, i64 16
  store ptr %.sink12.i.i36, ptr %i.ar, align 8, !tbaa !226
  %i.as = getelementptr inbounds nuw i8, ptr %.sink12.i.i36, i64 8
  store ptr %.03149, ptr %i.as, align 8, !tbaa !225
  %i.at = getelementptr inbounds nuw i8, ptr %.050, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !232 ; 2 uses
  %.not33 = icmp eq ptr %i.au, null
  br i1 %.not33, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.av = invoke noundef ptr @_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_NS0_9DeepSliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE7_M_copyILb0ENSB_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.au, ptr noundef nonnull %.sink12.i.i36, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.aw = getelementptr inbounds nuw i8, ptr %.sink12.i.i36, i64 24
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !232
  br label %bb.x

bb.u:                                             ; preds = %_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_NS0_9DeepSliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i43, %bb.s
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.u ], [ %i.y, %bb.j ]
  %.030 = extractvalue { ptr, i32 } %.pn, 0
  %i.ay = tail call ptr @__cxa_begin_catch(ptr %.030) #25 ; 0 uses
  invoke void @_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_NS0_9DeepSliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %.sink12.i.i)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  invoke void @__cxa_rethrow() #26
          to label %bb.ab unwind label %bb.y

bb.x:                                             ; preds = %bb.t, %bb.r
  %.0.in = getelementptr inbounds nuw i8, ptr %.050, i64 16
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !226 ; 2 uses
  %.not32 = icmp eq ptr %.0, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph, !llvm.loop !238

bb.y:                                             ; preds = %bb.w, %bb.v
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  resume { ptr, i32 } %i.az

._crit_edge:                                      ; preds = %bb.x, %bb.k
  ret ptr %.sink12.i.i

bb.aa:                                            ; preds = %bb.y
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @__clang_call_terminate(ptr %i.bb) #28
  unreachable

bb.ab:                                            ; preds = %bb.w
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_NS0_9DeepSliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !232
  tail call void @_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_NS0_9DeepSliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !226  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 344) #24
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !239

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_54TaskC2EPNS_9TaskGroupE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_54TaskD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #6

declare void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_59Semaphore4waitEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #16

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #4

declare i32 @exr_decoding_destroy(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #17

declare i32 @exr_decoding_initialize(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN7Iex_3_35IoExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN7Iex_3_35IoExcD1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #6

declare i32 @exr_decoding_choose_default_routines(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_ZN27OpenImageIO_v3_1_Imf__3_3_5L19mem_skip_read_chunkEP20_exr_decode_pipeline(ptr nofree readnone captures(none) %0) #18 {
bb.a:
  ret i32 0
}

declare i32 @exr_decoding_run(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcess8run_fillEPKNS_15DeepFrameBufferEiRKSt6vectorINS_9DeepSliceESaIS6_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(584) %0, i32 noundef %1, ptr nofree readonly captures(address) %.0.val, ptr nofree readnone captures(address) %.8.val) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not521 = icmp eq ptr %.0.val, %.8.val
  br i1 %.not521, label %._crit_edge25, label %.lr.ph24

.lr.ph24:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.b

._crit_edge25:                                    ; preds = %._crit_edge20, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph24, %._crit_edge20
  %.sroa.02.022 = phi ptr [ %.0.val, %.lr.ph24 ], [ %i.ai, %._crit_edge20 ] ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.022, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !99
  %.not.a = icmp eq i32 %i.j, 1
  br i1 %.not.a, label %2, label %bb.c

2:                                                ; preds = %bb.b
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.02.022, i64 36
  %4 = load i32, ptr %3, align 4, !tbaa !101
  %.not69 = icmp eq i32 %4, 1
  br i1 %.not69, label %bb.f, label %bb.c

bb.c:                                             ; preds = %2, %bb.b
  %i.k = tail call ptr @__cxa_allocate_exception(i64 72) #25 ; 3 uses
  invoke void @_ZN7Iex_3_38InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.k, ptr noundef nonnull @.str.28)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTIN7Iex_3_38InputExcE, ptr nonnull @_ZN7Iex_3_38InputExcD1Ev) #26
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.f:                                             ; preds = %2
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.02.022, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !183  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.02.022, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !184  ; 2 uses
  %i.q = load i32, ptr %i.c, align 8, !tbaa !170
  %i.r = load i32, ptr %i.d, align 4, !tbaa !173
  %i.s = add nsw i32 %i.r, %i.q
  %i.t = load i32, ptr %i.e, align 4, !tbaa !172
  %i.u = sub i32 %i.s, %i.t                       ; 2 uses
  %i.v = icmp slt i32 %1, %i.u
  br i1 %i.v, label %.lr.ph19, label %._crit_edge20

.lr.ph19:                                         ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.02.022, i64 40 ; 3 uses
  %i.x = load i32, ptr %i.h, align 8, !tbaa !191
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph19.split.preheader, label %._crit_edge20

.lr.ph19.split.preheader:                         ; preds = %.lr.ph19
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.02.022, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !87
  %i.ab = load i32, ptr %i.a, align 4, !tbaa !185
  %i.ac = sext i32 %i.ab to i64
  %i.ad = mul nsw i64 %i.n, %i.ac
  %i.ae = getelementptr inbounds i8, ptr %i.aa, i64 %i.ad
  %i.af = mul nsw i64 %i.p, %i.b
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 %i.af
  %i.ah = sext i32 %i.u to i64
  br label %.lr.ph19.split

._crit_edge20:                                    ; preds = %._crit_edge, %.lr.ph19, %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.02.022, i64 56 ; 2 uses
  %.not5 = icmp eq ptr %i.ai, %.8.val
  br i1 %.not5, label %._crit_edge25, label %bb.b

.lr.ph19.split:                                   ; preds = %.lr.ph19.split.preheader, %._crit_edge
  %indvars.iv45 = phi i64 [ %i.b, %.lr.ph19.split.preheader ], [ %indvars.iv.next46, %._crit_edge ] ; 2 uses
  %.05917 = phi ptr [ %i.ag, %.lr.ph19.split.preheader ], [ %i.ar, %._crit_edge ] ; 2 uses
  %i.aj = load i32, ptr %i.c, align 8, !tbaa !170
  %i.ak = sext i32 %i.aj to i64
  %i.al = sub nsw i64 %indvars.iv45, %i.ak
  %i.am = load i32, ptr %i.h, align 8, !tbaa !191 ; 3 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = mul nsw i64 %i.al, %i.an
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.ao
  %i.aq = icmp sgt i32 %i.am, 0
  br i1 %i.aq, label %.lr.ph15.preheader, label %._crit_edge

.lr.ph15.preheader:                               ; preds = %.lr.ph19.split
  %wide.trip.count43 = zext nneg i32 %i.am to i64
  br label %.lr.ph15

._crit_edge:                                      ; preds = %.loopexit, %.lr.ph19.split
  %i.ar = getelementptr inbounds nuw i8, ptr %.05917, i64 %i.p
  %indvars.iv.next46 = add nsw i64 %indvars.iv45, 1 ; 2 uses
  %i.as = icmp slt i64 %indvars.iv.next46, %i.ah
  br i1 %i.as, label %.lr.ph19.split, label %._crit_edge20, !llvm.loop !240

.lr.ph15:                                         ; preds = %.lr.ph15.preheader, %.loopexit
  %indvars.iv40 = phi i64 [ 0, %.lr.ph15.preheader ], [ %indvars.iv.next41, %.loopexit ] ; 2 uses
  %.06514 = phi ptr [ %.05917, %.lr.ph15.preheader ], [ %.1, %.loopexit ] ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv40
  %i.au = load i32, ptr %i.at, align 4, !tbaa !3  ; 11 uses
  %i.av = load ptr, ptr %.06514, align 8, !tbaa !11 ; 8 uses
  %i.aw = icmp eq i32 %i.au, 0
  %i.ax = icmp eq ptr %i.av, null
  %or.cond = select i1 %i.aw, i1 true, i1 %i.ax
  br i1 %or.cond, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %.lr.ph15
  %i.ay = load i32, ptr %.sroa.02.022, align 8, !tbaa !181
  switch i32 %i.ay, label %bb.u [
    i32 0, label %bb.h
    i32 1, label %bb.i
    i32 2, label %bb.t
  ]

bb.h:                                             ; preds = %bb.g
  %i.az = load double, ptr %i.w, align 8, !tbaa !241
  %i.ba = fptoui double %i.az to i32              ; 2 uses
  %i.bb = icmp sgt i32 %i.au, 0
  br i1 %i.bb, label %.lr.ph12.preheader, label %.loopexit

.lr.ph12.preheader:                               ; preds = %bb.h
  %wide.trip.count38 = zext nneg i32 %i.au to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.au, 8
  br i1 %min.iters.check, label %.lr.ph12.preheader92, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph12.preheader
  %n.vec = and i64 %wide.trip.count38, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ba, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %index ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.bc, align 4, !tbaa !3
  store <4 x i32> %broadcast.splat, ptr %i.bd, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !242

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count38
  br i1 %cmp.n, label %.loopexit, label %.lr.ph12.preheader92

.lr.ph12.preheader92:                             ; preds = %.lr.ph12.preheader, %middle.block
  %indvars.iv35.ph = phi i64 [ 0, %.lr.ph12.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph12

.lr.ph12:                                         ; preds = %.lr.ph12.preheader92, %.lr.ph12
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %.lr.ph12 ], [ %indvars.iv35.ph, %.lr.ph12.preheader92 ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv35
  store i32 %i.ba, ptr %i.bf, align 4, !tbaa !3
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1 ; 2 uses
  %exitcond39.not = icmp eq i64 %indvars.iv.next36, %wide.trip.count38
  br i1 %exitcond39.not, label %.loopexit, label %.lr.ph12, !llvm.loop !245

bb.i:                                             ; preds = %bb.g
  %i.bg = load double, ptr %i.w, align 8, !tbaa !241
  %i.bh = fptrunc double %i.bg to float           ; 2 uses
  %i.bi = bitcast float %i.bh to i32
  %i.bj = tail call float @llvm.fabs.f32(float %i.bh)
  %i.bk = bitcast float %i.bj to i32              ; 10 uses
  %i.bl = lshr i32 %i.bi, 16                      ; 3 uses
  %i.bm = trunc nuw i32 %i.bl to i16
  %i.bn = and i16 %i.bm, -32768                   ; 3 uses
  %i.bo = icmp samesign ugt i32 %i.bk, 947912703
  br i1 %i.bo, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.bp = icmp samesign ugt i32 %i.bk, 2139095039
  br i1 %i.bp, label %bb.k, label %bb.m, !prof !58

bb.k:                                             ; preds = %bb.j
  %i.bq = or disjoint i16 %i.bn, 31744            ; 2 uses
  %i.br = icmp eq i32 %i.bk, 2139095040
  br i1 %i.br, label %_ZN9Imath_3_14halfC2Ef.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bs = lshr i32 %i.bk, 13
  %i.bt = and i32 %i.bs, 1023                     ; 2 uses
  %i.bu = icmp eq i32 %i.bt, 0
  %i.bv = zext i1 %i.bu to i16
  %i.bw = trunc nuw nsw i32 %i.bt to i16
  %i.bx = or i16 %i.bw, %i.bv
  %i.by = or disjoint i16 %i.bx, %i.bq
  br label %_ZN9Imath_3_14halfC2Ef.exit

bb.m:                                             ; preds = %bb.j
  %i.bz = icmp samesign ugt i32 %i.bk, 1199566847
  br i1 %i.bz, label %bb.n, label %bb.o, !prof !58

bb.n:                                             ; preds = %bb.m
  %i.ca = or disjoint i16 %i.bn, 31744
  br label %_ZN9Imath_3_14halfC2Ef.exit

bb.o:                                             ; preds = %bb.m
  %i.cb = add nuw nsw i32 %i.bk, 134221823
  %i.cc = lshr i32 %i.bk, 13
  %i.cd = and i32 %i.cc, 1
  %i.ce = add nuw nsw i32 %i.cb, %i.cd
  %i.cf = lshr i32 %i.ce, 13
  %i.cg = and i32 %i.bl, 32768
  %i.ch = or i32 %i.cf, %i.cg
  %i.ci = trunc i32 %i.ch to i16
  br label %_ZN9Imath_3_14halfC2Ef.exit

bb.p:                                             ; preds = %bb.i
  %i.cj = icmp samesign ult i32 %i.bk, 855638017
  br i1 %i.cj, label %_ZN9Imath_3_14halfC2Ef.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ck = lshr i32 %i.bk, 23                      ; 2 uses
  %i.cl = sub nuw nsw i32 126, %i.ck
  %i.cm = and i32 %i.bk, 8388607
  %i.cn = or disjoint i32 %i.cm, 8388608          ; 2 uses
  %i.co = add nsw i32 %i.ck, -94
  %i.cp = shl i32 %i.cn, %i.co                    ; 2 uses
  %i.cq = lshr i32 %i.cn, %i.cl                   ; 2 uses
  %i.cr = and i32 %i.bl, 32768
  %i.cs = or i32 %i.cq, %i.cr
  %i.ct = trunc nuw i32 %i.cs to i16              ; 2 uses
  %i.cu = icmp ugt i32 %i.cp, -2147483648
  br i1 %i.cu, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cv = icmp ne i32 %i.cp, -2147483648
  %i.cw = and i32 %i.cq, 1
  %.not.i.i = icmp eq i32 %i.cw, 0
  %or.cond.i.i = select i1 %i.cv, i1 true, i1 %.not.i.i
  br i1 %or.cond.i.i, label %_ZN9Imath_3_14halfC2Ef.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cx = add nuw i16 %i.ct, 1
  br label %_ZN9Imath_3_14halfC2Ef.exit

_ZN9Imath_3_14halfC2Ef.exit:                      ; preds = %bb.k, %bb.l, %bb.n, %bb.o, %bb.p, %bb.r, %bb.s
end_hunk_0
