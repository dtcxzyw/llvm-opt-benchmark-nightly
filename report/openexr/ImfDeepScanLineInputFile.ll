Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ImfDeepScanLineInputFile?download=true
inline.NumInlined: 515
inline.NumDeleted: 283
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_9DeepSliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE7_M_copyILb0ENSB_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_:bb.a
  store ptr null, ptr %i.ak, align 8, !tbaa !145
  br label %bb.q

bb.p:                                             ; preds = %bb.k
  store ptr null, ptr %3, align 8, !tbaa !142
  br label %bb.q

_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_9DeepSliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i43: ; preds = %.lr.ph
  %i.al = invoke noalias noundef nonnull dereferenceable(344) ptr @_Znwm(i64 noundef 344) #23
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_9DeepSliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i43
  %.sink12.i.i36 = phi ptr [ %i.y, %bb.p ], [ %i.y, %bb.m ], [ %i.y, %bb.n ], [ %i.y, %bb.o ], [ %i.al, %_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_9DeepSliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i43 ] ; 8 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.03049, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %.sink12.i.i36, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.an, ptr noundef nonnull align 8 dereferenceable(312) %i.am, i64 312, i1 false)
  %i.ao = load i32, ptr %.03049, align 8, !tbaa !237
  store i32 %i.ao, ptr %.sink12.i.i36, align 8, !tbaa !237
  %i.ap = getelementptr inbounds nuw i8, ptr %.sink12.i.i36, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %.03148, i64 16
  store ptr %.sink12.i.i36, ptr %i.aq, align 8, !tbaa !145
  %i.ar = getelementptr inbounds nuw i8, ptr %.sink12.i.i36, i64 8
  store ptr %.03148, ptr %i.ar, align 8, !tbaa !144
  %i.as = getelementptr inbounds nuw i8, ptr %.03049, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !150 ; 2 uses
  %.not33 = icmp eq ptr %i.at, null
  br i1 %.not33, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.au = invoke noundef ptr @_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_9DeepSliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE7_M_copyILb0ENSB_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.at, ptr noundef nonnull %.sink12.i.i36, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %bb.r
  %i.av = getelementptr inbounds nuw i8, ptr %.sink12.i.i36, i64 24
  store ptr %i.au, ptr %i.av, align 8, !tbaa !150
  br label %bb.u

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_9DeepSliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i43, %bb.r, %bb.h
  %lpad.loopexit.split-lp59 = landingpad { ptr, i32 }
          catch ptr null
  %.0 = extractvalue { ptr, i32 } %lpad.loopexit.split-lp59, 0
  %i.aw = tail call ptr @__cxa_begin_catch(ptr %.0) #25 ; 0 uses
  invoke void @_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_9DeepSliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %.sink12.i.i)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @__cxa_rethrow() #26
          to label %bb.y unwind label %bb.v

bb.u:                                             ; preds = %bb.s, %bb.q
  %.030.in = getelementptr inbounds nuw i8, ptr %.03049, i64 16
  %.030 = load ptr, ptr %.030.in, align 8, !tbaa !145 ; 2 uses
  %.not32 = icmp eq ptr %.030, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph, !llvm.loop !236

bb.v:                                             ; preds = %bb.t, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  resume { ptr, i32 } %i.ax

._crit_edge:                                      ; preds = %bb.u, %bb.j
  ret ptr %.sink12.i.i

bb.x:                                             ; preds = %bb.v
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  tail call void @__clang_call_terminate(ptr %i.az) #28
  unreachable

bb.y:                                             ; preds = %bb.t
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_9DeepSliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !150
  tail call void @_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_9DeepSliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !145  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 344) #24
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !238

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @_ZN13IlmThread_3_44TaskC2EPNS_9TaskGroupE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN13IlmThread_3_44TaskD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #6

declare void @_ZN13IlmThread_3_49Semaphore4waitEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #16

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #4

declare i32 @exr_decoding_destroy(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #17

declare i32 @exr_decoding_initialize(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN7Iex_3_45IoExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN7Iex_3_45IoExcD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72)) unnamed_addr #6

declare i32 @exr_decoding_choose_default_routines(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_ZN7Imf_3_4L19mem_skip_read_chunkEP20_exr_decode_pipeline(ptr nofree readnone captures(none) %0) #18 {
bb.a:
  ret i32 0
}

declare i32 @exr_decoding_run(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess17copy_sample_countEPKNS_15DeepFrameBufferEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(584) %0, ptr noundef nonnull %1, i32 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(50) ptr @_ZNK7Imf_3_415DeepFrameBuffer19getSampleCountSliceEv(ptr noundef nonnull align 8 dereferenceable(104) %1) ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !76   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 72) #25 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull @.str.17)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #26
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.a, align 8, !tbaa !128
  %.not33 = icmp eq i32 %i.f, 0
  br i1 %.not33, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = tail call ptr @__cxa_allocate_exception(i64 72) #25 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull @.str.18)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #26
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !120
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.l = load i32, ptr %i.k, align 4, !tbaa !119
  %i.m = sub nsw i32 %i.j, %i.l                   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !130  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !131  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.s = load i32, ptr %i.r, align 8, !tbaa !118  ; 3 uses
  %i.t = icmp slt i32 %i.s, %i.m
  br i1 %i.t, label %.lr.ph38, label %._crit_edge

.lr.ph38:                                         ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.x = sext i32 %2 to i64                       ; 2 uses
  %i.y = icmp eq i64 %i.o, 4
  br i1 %i.y, label %.lr.ph38.split.us.preheader, label %.lr.ph38.split

.lr.ph38.split.us.preheader:                      ; preds = %.lr.ph38
  %i.z = sext i32 %i.s to i64
  %i.aa = sext i32 %i.m to i64
  br label %.lr.ph38.split.us

.lr.ph38.split.us:                                ; preds = %.lr.ph38.split.us.preheader, %.lr.ph38.split.us
  %indvars.iv46 = phi i64 [ %i.z, %.lr.ph38.split.us.preheader ], [ %indvars.iv.next47, %.lr.ph38.split.us ] ; 3 uses
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !242
  %i.ac = load i32, ptr %i.v, align 8, !tbaa !152
  %i.ad = sext i32 %i.ac to i64                   ; 2 uses
  %i.ae = mul nsw i64 %indvars.iv46, %i.ad
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.ae
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.ah = load i32, ptr %i.w, align 4, !tbaa !132
  %i.ai = sext i32 %i.ah to i64
  %i.aj = shl nsw i64 %i.ai, 2
  %i.ak = getelementptr inbounds i8, ptr %i.ag, i64 %i.aj
  %i.al = add nsw i64 %indvars.iv46, %i.x
  %i.am = mul nsw i64 %i.al, %i.q
  %i.an = getelementptr inbounds i8, ptr %i.ak, i64 %i.am
  %i.ao = shl nsw i64 %i.ad, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.an, ptr align 4 %i.af, i64 %i.ao, i1 false)
  %indvars.iv.next47 = add nsw i64 %indvars.iv46, 1 ; 2 uses
  %i.ap = icmp slt i64 %indvars.iv.next47, %i.aa
  br i1 %i.ap, label %.lr.ph38.split.us, label %._crit_edge, !llvm.loop !239

.lr.ph38.split:                                   ; preds = %.lr.ph38
  %i.aq = load i32, ptr %i.v, align 8, !tbaa !152 ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.preheader.preheader, label %._crit_edge

.preheader.preheader:                             ; preds = %.lr.ph38.split
  %i.as = sext i32 %i.s to i64
  %i.at = sext i32 %i.m to i64
  %.pre = load ptr, ptr %i.u, align 8, !tbaa !242
  %.pre50 = load i32, ptr %i.w, align 4, !tbaa !132
  br label %.preheader

._crit_edge:                                      ; preds = %.loopexit, %.lr.ph38.split.us, %.lr.ph38.split, %bb.i
  ret void

.preheader:                                       ; preds = %.preheader.preheader, %.loopexit
  %3 = phi i32 [ %i.aq, %.preheader.preheader ], [ %4, %.loopexit ] ; 3 uses
  %i.au = phi i32 [ %.pre50, %.preheader.preheader ], [ %i.bl, %.loopexit ] ; 2 uses
  %indvars.iv43 = phi i64 [ %i.as, %.preheader.preheader ], [ %indvars.iv.next44, %.loopexit ] ; 3 uses
  %i.av = sext i32 %3 to i64
  %i.aw = mul nsw i64 %indvars.iv43, %i.av
  %i.ax = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.aw
  %i.ay = icmp sgt i32 %3, 0
  br i1 %i.ay, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.az = sext i32 %i.au to i64
  %i.ba = mul nsw i64 %i.o, %i.az
  %i.bb = getelementptr inbounds i8, ptr %i.c, i64 %i.ba
  %i.bc = add nsw i64 %indvars.iv43, %i.x
  %i.bd = mul nsw i64 %i.bc, %i.q
  %i.be = getelementptr inbounds i8, ptr %i.bb, i64 %i.bd
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.02835 = phi ptr [ %i.be, %.lr.ph.preheader ], [ %i.bh, %.lr.ph ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !17
  store i32 %i.bg, ptr %.02835, align 4, !tbaa !17
  %i.bh = getelementptr inbounds i8, ptr %.02835, i64 %i.o
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bi = load i32, ptr %i.v, align 8, !tbaa !152 ; 2 uses
  %i.bj = sext i32 %i.bi to i64
  %i.bk = icmp slt i64 %indvars.iv.next, %i.bj
  br i1 %i.bk, label %.lr.ph, label %.loopexit.loopexit, !llvm.loop !240

.loopexit.loopexit:                               ; preds = %.lr.ph
  %.pre49 = load i32, ptr %i.w, align 4, !tbaa !132
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader
  %4 = phi i32 [ %i.bi, %.loopexit.loopexit ], [ %3, %.preheader ]
  %i.bl = phi i32 [ %.pre49, %.loopexit.loopexit ], [ %i.au, %.preheader ]
  %indvars.iv.next44 = add nsw i64 %indvars.iv43, 1 ; 2 uses
  %i.bm = icmp slt i64 %indvars.iv.next44, %i.at
  br i1 %i.bm, label %.preheader, label %._crit_edge, !llvm.loop !241

bb.j:                                             ; preds = %bb.h, %bb.d
  %.sink = phi ptr [ %i.g, %bb.h ], [ %i.d, %bb.d ]
  %.pn = phi { ptr, i32 } [ %i.h, %bb.h ], [ %i.e, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess8run_fillEPKNS_15DeepFrameBufferEiRKSt6vectorINS_9DeepSliceESaIS6_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(584) %0, i32 noundef %1, ptr nofree readonly captures(address) %.0.val, ptr nofree readnone captures(address) %.8.val) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
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
  %.sroa.02.022 = phi ptr [ %.0.val, %.lr.ph24 ], [ %i.ak, %._crit_edge20 ] ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.022, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !79
  %.not = icmp eq i32 %i.j, 1
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.02.022, i64 36
  %i.l = load i32, ptr %i.k, align 4
  %.not69 = icmp eq i32 %i.l, 1
  %or.cond73 = select i1 %.not, i1 %.not69, i1 false
  br i1 %or.cond73, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = tail call ptr @__cxa_allocate_exception(i64 72) #25 ; 3 uses
  invoke void @_ZN7Iex_3_48InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.m, ptr noundef nonnull @.str.29)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTIN7Iex_3_48InputExcE, ptr nonnull @_ZN7Iex_3_48InputExcD1Ev) #26
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.f:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.02.022, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !130  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.02.022, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !131  ; 2 uses
  %i.s = load i32, ptr %i.c, align 8, !tbaa !117
  %i.t = load i32, ptr %i.d, align 4, !tbaa !120
  %i.u = add nsw i32 %i.t, %i.s
  %i.v = load i32, ptr %i.e, align 4, !tbaa !119
  %i.w = sub i32 %i.u, %i.v                       ; 2 uses
  %i.x = icmp slt i32 %1, %i.w
  br i1 %i.x, label %.lr.ph19, label %._crit_edge20

.lr.ph19:                                         ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.02.022, i64 40 ; 3 uses
  %i.z = load i32, ptr %i.h, align 8, !tbaa !152
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph19.split.preheader, label %._crit_edge20

.lr.ph19.split.preheader:                         ; preds = %.lr.ph19
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.02.022, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !76
  %i.ad = load i32, ptr %i.a, align 4, !tbaa !132
  %i.ae = sext i32 %i.ad to i64
  %i.af = mul nsw i64 %i.p, %i.ae
  %i.ag = getelementptr inbounds i8, ptr %i.ac, i64 %i.af
  %i.ah = mul nsw i64 %i.r, %i.b
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 %i.ah
  %i.aj = sext i32 %i.w to i64
  br label %.lr.ph19.split

._crit_edge20:                                    ; preds = %._crit_edge, %.lr.ph19, %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.02.022, i64 56 ; 2 uses
  %.not5 = icmp eq ptr %i.ak, %.8.val
  br i1 %.not5, label %._crit_edge25, label %bb.b

.lr.ph19.split:                                   ; preds = %.lr.ph19.split.preheader, %._crit_edge
  %indvars.iv45 = phi i64 [ %i.b, %.lr.ph19.split.preheader ], [ %indvars.iv.next46, %._crit_edge ] ; 2 uses
  %.06616 = phi ptr [ %i.ai, %.lr.ph19.split.preheader ], [ %i.at, %._crit_edge ] ; 2 uses
  %i.al = load i32, ptr %i.c, align 8, !tbaa !117
  %i.am = sext i32 %i.al to i64
  %i.an = sub nsw i64 %indvars.iv45, %i.am
  %i.ao = load i32, ptr %i.h, align 8, !tbaa !152 ; 3 uses
  %i.ap = sext i32 %i.ao to i64
  %i.aq = mul nsw i64 %i.an, %i.ap
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.aq
  %i.as = icmp sgt i32 %i.ao, 0
  br i1 %i.as, label %.lr.ph15.preheader, label %._crit_edge

.lr.ph15.preheader:                               ; preds = %.lr.ph19.split
  %wide.trip.count43 = zext nneg i32 %i.ao to i64
  br label %.lr.ph15

._crit_edge:                                      ; preds = %.loopexit, %.lr.ph19.split
  %i.at = getelementptr inbounds nuw i8, ptr %.06616, i64 %i.r
  %indvars.iv.next46 = add nsw i64 %indvars.iv45, 1 ; 2 uses
  %i.au = icmp slt i64 %indvars.iv.next46, %i.aj
  br i1 %i.au, label %.lr.ph19.split, label %._crit_edge20, !llvm.loop !243

.lr.ph15:                                         ; preds = %.lr.ph15.preheader, %.loopexit
  %indvars.iv40 = phi i64 [ 0, %.lr.ph15.preheader ], [ %indvars.iv.next41, %.loopexit ] ; 2 uses
  %.06213 = phi ptr [ %.06616, %.lr.ph15.preheader ], [ %.1, %.loopexit ] ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv40
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !17 ; 11 uses
  %i.ax = load ptr, ptr %.06213, align 8, !tbaa !15 ; 8 uses
  %i.ay = icmp eq i32 %i.aw, 0
  %i.az = icmp eq ptr %i.ax, null
  %or.cond = select i1 %i.ay, i1 true, i1 %i.az
  br i1 %or.cond, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %.lr.ph15
  %i.ba = load i32, ptr %.sroa.02.022, align 8, !tbaa !128
  switch i32 %i.ba, label %bb.u [
    i32 0, label %bb.h
    i32 1, label %bb.i
    i32 2, label %bb.t
  ]

bb.h:                                             ; preds = %bb.g
  %i.bb = load double, ptr %i.y, align 8, !tbaa !252
  %i.bc = fptoui double %i.bb to i32              ; 2 uses
  %i.bd = icmp sgt i32 %i.aw, 0
  br i1 %i.bd, label %.lr.ph12.preheader, label %.loopexit

.lr.ph12.preheader:                               ; preds = %bb.h
  %wide.trip.count38 = zext nneg i32 %i.aw to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.aw, 8
  br i1 %min.iters.check, label %.lr.ph12.preheader89, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph12.preheader
  %n.vec = and i64 %wide.trip.count38, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bc, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %index ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.be, align 4, !tbaa !17
  store <4 x i32> %broadcast.splat, ptr %i.bf, align 4, !tbaa !17
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !244

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count38
  br i1 %cmp.n, label %.loopexit, label %.lr.ph12.preheader89

.lr.ph12.preheader89:                             ; preds = %.lr.ph12.preheader, %middle.block
  %indvars.iv35.ph = phi i64 [ 0, %.lr.ph12.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph12

.lr.ph12:                                         ; preds = %.lr.ph12.preheader89, %.lr.ph12
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %.lr.ph12 ], [ %indvars.iv35.ph, %.lr.ph12.preheader89 ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv35
  store i32 %i.bc, ptr %i.bh, align 4, !tbaa !17
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1 ; 2 uses
  %exitcond39.not = icmp eq i64 %indvars.iv.next36, %wide.trip.count38
  br i1 %exitcond39.not, label %.loopexit, label %.lr.ph12, !llvm.loop !245

bb.i:                                             ; preds = %bb.g
  %i.bi = load double, ptr %i.y, align 8, !tbaa !252
  %i.bj = fptrunc double %i.bi to float           ; 2 uses
  %i.bk = bitcast float %i.bj to i32
  %i.bl = tail call float @llvm.fabs.f32(float %i.bj)
  %i.bm = bitcast float %i.bl to i32              ; 10 uses
  %i.bn = lshr i32 %i.bk, 16                      ; 3 uses
  %i.bo = trunc nuw i32 %i.bn to i16
  %i.bp = and i16 %i.bo, -32768                   ; 3 uses
  %i.bq = icmp samesign ugt i32 %i.bm, 947912703
  br i1 %i.bq, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.br = icmp samesign ugt i32 %i.bm, 2139095039
  br i1 %i.br, label %bb.k, label %bb.m, !prof !59

bb.k:                                             ; preds = %bb.j
  %i.bs = or disjoint i16 %i.bp, 31744            ; 2 uses
  %i.bt = icmp eq i32 %i.bm, 2139095040
  br i1 %i.bt, label %_ZN9Imath_3_24halfC2Ef.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bu = lshr i32 %i.bm, 13
end_hunk_0
