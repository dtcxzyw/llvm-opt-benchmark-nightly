Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/exrmetrics?download=true
inline.NumInlined: 1356
inline.NumDeleted: 606
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_Z9initTiledRSt6vectorIS_IS_IcSaIcEESaIS1_EESaIS3_EERS_IN7Imf_3_411FrameBufferESaIS8_EERNS7_14TiledInputPartERKNS7_6HeaderE:bb.a
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.gi, i8 0, i64 %i.gj, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i = phi ptr [ %i.gl, %bb.y ], [ %i.gi, %bb.x ]
  store ptr %.0.i.i.i.i, ptr %i.ft, align 8, !tbaa !43
  br label %_ZNSt6vectorIcSaIcEE6resizeEm.exit

bb.z:                                             ; preds = %bb.w
  %i.gm = icmp ult i64 %i.gg, %i.ga
  br i1 %i.gm, label %bb.aa, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i

bb.aa:                                            ; preds = %bb.z
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #26
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.z
  %.sroa.speculated.i.i93 = call i64 @llvm.umax.i64(i64 %i.fy, i64 %i.ga)
  %i.gn = add nuw i64 %.sroa.speculated.i.i93, %i.fy
  %i.go = call i64 @llvm.umin.i64(i64 %i.gn, i64 9223372036854775807) ; 2 uses
  %i.gp = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.go) #30 ; 5 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.fy ; 2 uses
  store i8 0, ptr %i.gq, align 1, !tbaa !17
  %i.gr = add nsw i64 %i.ga, -1                   ; 2 uses
  %i.gs = icmp eq i64 %i.gr, 0
  br i1 %i.gs, label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.gt, i8 0, i64 %i.gr, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i

_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i: ; preds = %bb.ab, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
  %.not35.i = icmp eq ptr %i.fu, %i.fv
  br i1 %.not35.i, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i, label %bb.ac

bb.ac:                                            ; preds = %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.gp, ptr align 1 %i.fv, i64 %i.fy, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i: ; preds = %bb.ac, %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i
  %.not.i33.i = icmp eq ptr %i.fv, null
  br i1 %.not.i33.i, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i
  %i.gu = load ptr, ptr %i.gb, align 8, !tbaa !30
  %i.gv = ptrtoint ptr %i.gu to i64
  %i.gw = sub i64 %i.gv, %i.fx
  call void @_ZdlPvm(ptr noundef nonnull %i.fv, i64 noundef %i.gw) #29
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i: ; preds = %bb.ad, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i
  store ptr %i.gp, ptr %i.fq, align 8, !tbaa !28
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.fs
  store ptr %i.gx, ptr %i.ft, align 8, !tbaa !43
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.go
  store ptr %i.gy, ptr %i.gb, align 8, !tbaa !30
  br label %_ZNSt6vectorIcSaIcEE6resizeEm.exit

bb.ae:                                            ; preds = %.lr.ph
  %i.gz = icmp ult i64 %i.fs, %i.fy
  br i1 %i.gz, label %bb.af, label %_ZNSt6vectorIcSaIcEE6resizeEm.exit

bb.af:                                            ; preds = %bb.ae
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.fs ; 2 uses
  %.not.i.i87 = icmp eq ptr %i.fu, %i.ha
  br i1 %.not.i.i87, label %_ZNSt6vectorIcSaIcEE6resizeEm.exit, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.af
  store ptr %i.ha, ptr %i.ft, align 8, !tbaa !43
  br label %_ZNSt6vectorIcSaIcEE6resizeEm.exit

_ZNSt6vectorIcSaIcEE6resizeEm.exit:               ; preds = %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i, %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit.i, %bb.ae, %bb.af, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i
  %i.hb = load ptr, ptr %2, align 8, !tbaa !71
  %i.hc = getelementptr inbounds nuw [48 x i8], ptr %i.hb, i64 %i.dj
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.094.0110, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.he = load i32, ptr %i.fk, align 4, !tbaa !38
  %i.hf = load ptr, ptr %1, align 8, !tbaa !65
  %i.hg = getelementptr inbounds nuw [24 x i8], ptr %i.hf, i64 %i.dj
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !27
  %i.hi = getelementptr inbounds nuw [24 x i8], ptr %i.hh, i64 %indvars.iv
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !28
  %i.hk = mul i64 %i.di, %i.fr
  %i.hl = sub i64 0, %i.hk
  %i.hm = getelementptr inbounds i8, ptr %i.hj, i64 %i.hl
  %i.hn = mul nsw i64 %i.fr, %i.cy
  call void @_ZN7Imf_3_45SliceC1ENS_9PixelTypeEPcmmiidbb(ptr noundef nonnull align 8 dereferenceable(50) %7, i32 noundef %i.he, ptr noundef %i.hm, i64 noundef %i.fr, i64 noundef %i.hn, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
  call void @_ZN7Imf_3_411FrameBuffer6insertEPKcRKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(48) %i.hc, ptr noundef nonnull %i.hd, ptr noundef nonnull align 8 dereferenceable(50) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.ho = add nsw i64 %.270111, %i.fr             ; 2 uses
  %i.hp = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.094.0110) #28 ; 2 uses
  %i.hq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK7Imf_3_46Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %4)
  %i.hr = call ptr @_ZNK7Imf_3_411ChannelList3endEv(ptr noundef nonnull align 8 dereferenceable(48) %i.hq)
  %.not = icmp eq ptr %i.hp, %i.hr
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !93

bb.ag:                                            ; preds = %.lr.ph118, %._crit_edge
  %.273 = phi i32 [ %i.fj, %._crit_edge ], [ %.172113, %.lr.ph118 ] ; 2 uses
  %.3 = phi i64 [ %.270.lcssa, %._crit_edge ], [ %.169114, %.lr.ph118 ] ; 2 uses
  %.2 = phi i64 [ %i.fi, %._crit_edge ], [ %.167115, %.lr.ph118 ] ; 2 uses
  %i.hs = call noundef i32 @_ZNK7Imf_3_414TiledInputPart9numXTilesEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %.064128)
  %i.ht = call noundef i32 @_ZNK7Imf_3_414TiledInputPart9numYTilesEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %.063117)
  %i.hu = mul nsw i32 %i.ht, %i.hs
  %i.hv = add nsw i32 %i.hu, %.1116               ; 2 uses
  %i.hw = add nuw nsw i32 %.063117, 1             ; 2 uses
  %i.hx = call noundef i32 @_ZNK7Imf_3_414TiledInputPart10numYLevelsEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.hy = icmp slt i32 %i.hw, %i.hx
  br i1 %i.hy, label %.lr.ph118, label %._crit_edge119, !llvm.loop !94

bb.ah:                                            ; preds = %._crit_edge129
  %i.hz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK7Imf_3_46Header4typeB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(49) %i.cn)
          to label %bb.ai unwind label %bb.al

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ch, ptr noundef nonnull align 8 dereferenceable(32) %i.hz)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.al

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.ai
  %i.ia = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZNK7Imf_3_414TiledInputPart6headerEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.aj unwind label %bb.al

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.ib = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7Imf_3_46Header11compressionEv(ptr noundef nonnull align 8 dereferenceable(49) %i.ia)
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !45
  store i32 %i.ic, ptr %i.cf, align 4, !tbaa !32
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.0.lcssa.i, ptr %i.id, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret void

bb.al:                                            ; preds = %bb.ai, %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.ah, %._crit_edge129
  %i.ie = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.if = load ptr, ptr %i.ch, align 8, !tbaa !15 ; 2 uses
  %i.ig = icmp eq ptr %i.if, %i.ci
  br i1 %i.ig, label %_ZN12partSizeDataD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.al
  %i.ih = load i64, ptr %i.ci, align 8, !tbaa !17
  %i.ii = add i64 %i.ih, 1
  call void @_ZdlPvm(ptr noundef %i.if, i64 noundef %i.ii) #29
  br label %_ZN12partSizeDataD2Ev.exit

_ZN12partSizeDataD2Ev.exit:                       ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ac, %bb.f ], [ %i.ie, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ie, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %.pn
}

declare noundef nonnull align 8 dereferenceable(49) ptr @_ZNK7Imf_3_414TiledInputPart6headerEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare noundef nonnull align 4 dereferenceable(16) ptr @_ZNK7Imf_3_46Header15tileDescriptionEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #5

declare noundef i32 @_ZNK7Imf_3_414TiledInputPart9numLevelsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare noundef i32 @_ZNK7Imf_3_414TiledInputPart10numXLevelsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare noundef i32 @_ZNK7Imf_3_414TiledInputPart10numYLevelsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #5

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #6

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #7

declare void @_ZN7Imf_3_418dataWindowForLevelERKNS_15TileDescriptionEiiiiii(ptr dead_on_unwind writable sret(%"class.Imath_3_2::Box") align 4, ptr noundef nonnull align 4 dereferenceable(16), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare noundef i32 @_ZNK7Imf_3_414TiledInputPart9numXTilesEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #5

declare noundef i32 @_ZNK7Imf_3_414TiledInputPart9numYTilesEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @_Z9readTiledRN7Imf_3_414TiledInputPartERSt6vectorINS_11FrameBufferESaIS3_EERS2_IdSaIdEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(49) ptr @_ZNK7Imf_3_414TiledInputPart6headerEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.b = tail call noundef nonnull align 4 dereferenceable(16) ptr @_ZNK7Imf_3_46Header15tileDescriptionEv(ptr noundef nonnull align 8 dereferenceable(49) %i.a)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !56
  %i.c = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #27
  %i.d = tail call noundef i32 @_ZNK7Imf_3_414TiledInputPart10numXLevelsEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.preheader.lr.ph, label %._crit_edge32

.preheader.lr.ph:                                 ; preds = %bb.a
  %.sroa.3.0.copyload.fr = freeze i32 %.sroa.3.0.copyload
  %i.f = icmp eq i32 %.sroa.3.0.copyload.fr, 2
  br i1 %i.f, label %.preheader.us, label %.preheader

.preheader.us:                                    ; preds = %.preheader.lr.ph, %._crit_edge.split.us.us
  %.031.us = phi i32 [ %i.k, %._crit_edge.split.us.us ], [ 0, %.preheader.lr.ph ] ; 3 uses
  %.02529.us = phi i32 [ %.1.lcssa.us, %._crit_edge.split.us.us ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %i.g = tail call noundef i32 @_ZNK7Imf_3_414TiledInputPart10numYLevelsEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph.us.preheader, label %._crit_edge.split.us.us

.lr.ph.us.preheader:                              ; preds = %.preheader.us
  %i.i = sext i32 %.02529.us to i64
  br label %.lr.ph.us

._crit_edge.split.us.us.loopexit:                 ; preds = %.lr.ph.us
  %i.j = trunc nsw i64 %indvars.iv.next to i32
  br label %._crit_edge.split.us.us

._crit_edge.split.us.us:                          ; preds = %._crit_edge.split.us.us.loopexit, %.preheader.us
  %.1.lcssa.us = phi i32 [ %.02529.us, %.preheader.us ], [ %i.j, %._crit_edge.split.us.us.loopexit ]
  %i.k = add nuw nsw i32 %.031.us, 1              ; 2 uses
  %i.l = tail call noundef i32 @_ZNK7Imf_3_414TiledInputPart10numXLevelsEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.m = icmp slt i32 %i.k, %i.l
  br i1 %i.m, label %.preheader.us, label %._crit_edge32, !llvm.loop !95

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %.lr.ph.us
  %indvars.iv = phi i64 [ %i.i, %.lr.ph.us.preheader ], [ %indvars.iv.next, %.lr.ph.us ] ; 2 uses
  %.02427.us.us = phi i32 [ 0, %.lr.ph.us.preheader ], [ %i.t, %.lr.ph.us ] ; 3 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !71
  %i.o = getelementptr inbounds nuw [48 x i8], ptr %i.n, i64 %indvars.iv
  tail call void @_ZN7Imf_3_414TiledInputPart14setFrameBufferERKNS_11FrameBufferE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.o)
  %i.p = tail call noundef i32 @_ZNK7Imf_3_414TiledInputPart9numXTilesEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.031.us)
  %i.q = add nsw i32 %i.p, -1
  %i.r = tail call noundef i32 @_ZNK7Imf_3_414TiledInputPart9numYTilesEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.02427.us.us)
  %i.s = add nsw i32 %i.r, -1
  tail call void @_ZN7Imf_3_414TiledInputPart9readTilesEiiiiii(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0, i32 noundef %i.q, i32 noundef 0, i32 noundef %i.s, i32 noundef %.031.us, i32 noundef %.02427.us.us)
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.t = add nuw nsw i32 %.02427.us.us, 1         ; 2 uses
  %i.u = tail call noundef i32 @_ZNK7Imf_3_414TiledInputPart10numYLevelsEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.v = icmp slt i32 %i.t, %i.u
  br i1 %i.v, label %.lr.ph.us, label %._crit_edge.split.us.us.loopexit, !llvm.loop !96

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge.split
  %.031 = phi i32 [ %i.ba, %._crit_edge.split ], [ 0, %.preheader.lr.ph ] ; 6 uses
  %.02529 = phi i32 [ %.1.lcssa, %._crit_edge.split ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %i.w = tail call noundef i32 @_ZNK7Imf_3_414TiledInputPart10numYLevelsEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph, label %._crit_edge.split

._crit_edge32:                                    ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %bb.a
  %i.y = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #27
  %i.z = sub nsw i64 %i.y, %i.c
  %i.aa = sitofp i64 %i.z to double
  %i.ab = fdiv double %i.aa, 1.000000e+09         ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !47 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !50
  %.not.i.i = icmp eq ptr %i.ad, %i.af
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge32
  store double %i.ab, ptr %i.ad, align 8, !tbaa !51
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !47
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

bb.c:                                             ; preds = %._crit_edge32
  %i.ah = load ptr, ptr %2, align 8, !tbaa !53    ; 4 uses
  %i.ai = ptrtoint ptr %i.ad to i64
  %i.aj = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.ak = sub i64 %i.ai, %i.aj                    ; 5 uses
  %i.al = icmp eq i64 %i.ak, 9223372036854775800
  br i1 %i.al, label %bb.d, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #26
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.am = ashr exact i64 %i.ak, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.am, i64 1)
  %i.an = add nsw i64 %.sroa.speculated.i.i.i.i, %i.am ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.am
  %i.ap = tail call i64 @llvm.umin.i64(i64 %i.an, i64 1152921504606846975)
  %i.aq = select i1 %i.ao, i64 1152921504606846975, i64 %i.ap ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ar = shl nuw nsw i64 %i.aq, 3
  %i.as = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #30 ; 4 uses
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 %i.ak ; 2 uses
  store double %i.ab, ptr %i.at, align 8, !tbaa !51
  %i.au = icmp sgt i64 %i.ak, 0
  br i1 %i.au, label %bb.e, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.as, ptr align 8 %i.ah, i64 %i.ak, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  %i.aw = load ptr, ptr %i.ae, align 8, !tbaa !50
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.ay) #29
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  store ptr %i.as, ptr %2, align 8, !tbaa !53
  store ptr %i.av, ptr %i.ac, align 8, !tbaa !47
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.aq
  store ptr %i.az, ptr %i.ae, align 8, !tbaa !50
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

_ZNSt6vectorIdSaIdEE9push_backEOd.exit:           ; preds = %bb.b, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i
  ret void

._crit_edge.split:                                ; preds = %bb.h, %.preheader
  %.1.lcssa = phi i32 [ %.02529, %.preheader ], [ %.2, %bb.h ]
  %i.ba = add nuw nsw i32 %.031, 1                ; 2 uses
  %i.bb = tail call noundef i32 @_ZNK7Imf_3_414TiledInputPart10numXLevelsEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.bc = icmp slt i32 %i.ba, %i.bb
  br i1 %i.bc, label %.preheader, label %._crit_edge32, !llvm.loop !95

.lr.ph:                                           ; preds = %.preheader, %bb.h
  %.128 = phi i32 [ %i.bm, %bb.h ], [ 0, %.preheader ] ; 2 uses
  %.02427 = phi i32 [ %.2, %bb.h ], [ %.02529, %.preheader ] ; 3 uses
  %i.bd = icmp eq i32 %.031, %.128
  br i1 %i.bd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.be = sext i32 %.02427 to i64
  %i.bf = load ptr, ptr %1, align 8, !tbaa !71
  %i.bg = getelementptr inbounds nuw [48 x i8], ptr %i.bf, i64 %i.be
  tail call void @_ZN7Imf_3_414TiledInputPart14setFrameBufferERKNS_11FrameBufferE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.bg)
  %i.bh = tail call noundef i32 @_ZNK7Imf_3_414TiledInputPart9numXTilesEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.031)
  %i.bi = add nsw i32 %i.bh, -1
  %i.bj = tail call noundef i32 @_ZNK7Imf_3_414TiledInputPart9numYTilesEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.031)
  %i.bk = add nsw i32 %i.bj, -1
  tail call void @_ZN7Imf_3_414TiledInputPart9readTilesEiiiiii(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0, i32 noundef %i.bi, i32 noundef 0, i32 noundef %i.bk, i32 noundef %.031, i32 noundef %.031)
  %i.bl = add nsw i32 %.02427, 1
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.g
  %.2 = phi i32 [ %i.bl, %bb.g ], [ %.02427, %.lr.ph ] ; 2 uses
  %i.bm = add nuw nsw i32 %.128, 1                ; 2 uses
  %i.bn = tail call noundef i32 @_ZNK7Imf_3_414TiledInputPart10numYLevelsEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.bo = icmp slt i32 %i.bm, %i.bn
  br i1 %i.bo, label %.lr.ph, label %._crit_edge.split, !llvm.loop !96
}

declare void @_ZN7Imf_3_414TiledInputPart14setFrameBufferERKNS_11FrameBufferE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #5

declare void @_ZN7Imf_3_414TiledInputPart9readTilesEiiiiii(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @_Z10writeTiledRN7Imf_3_415TiledOutputPartERSt6vectorINS_11FrameBufferESaIS3_EEPS2_IdSaIdEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(49) ptr @_ZNK7Imf_3_415TiledOutputPart6headerEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.b = tail call noundef nonnull align 4 dereferenceable(16) ptr @_ZNK7Imf_3_46Header15tileDescriptionEv(ptr noundef nonnull align 8 dereferenceable(49) %i.a)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !56
  %i.c = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #27
  %i.d = tail call noundef i32 @_ZNK7Imf_3_415TiledOutputPart10numXLevelsEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.preheader.lr.ph, label %._crit_edge34

.preheader.lr.ph:                                 ; preds = %bb.a
  %.sroa.3.0.copyload.fr = freeze i32 %.sroa.3.0.copyload
  %i.f = icmp eq i32 %.sroa.3.0.copyload.fr, 2
  br i1 %i.f, label %.preheader.us, label %.preheader

.preheader.us:                                    ; preds = %.preheader.lr.ph, %._crit_edge.split.us.us
  %.033.us = phi i32 [ %.1.lcssa.us, %._crit_edge.split.us.us ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %.02631.us = phi i32 [ %i.k, %._crit_edge.split.us.us ], [ 0, %.preheader.lr.ph ] ; 3 uses
  %i.g = tail call noundef i32 @_ZNK7Imf_3_415TiledOutputPart10numYLevelsEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph.us.preheader, label %._crit_edge.split.us.us

.lr.ph.us.preheader:                              ; preds = %.preheader.us
  %i.i = sext i32 %.033.us to i64
  br label %.lr.ph.us

._crit_edge.split.us.us.loopexit:                 ; preds = %.lr.ph.us
  %i.j = trunc nsw i64 %indvars.iv.next to i32
  br label %._crit_edge.split.us.us

._crit_edge.split.us.us:                          ; preds = %._crit_edge.split.us.us.loopexit, %.preheader.us
  %.1.lcssa.us = phi i32 [ %.033.us, %.preheader.us ], [ %i.j, %._crit_edge.split.us.us.loopexit ]
  %i.k = add nuw nsw i32 %.02631.us, 1            ; 2 uses
  %i.l = tail call noundef i32 @_ZNK7Imf_3_415TiledOutputPart10numXLevelsEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.m = icmp slt i32 %i.k, %i.l
  br i1 %i.m, label %.preheader.us, label %._crit_edge34, !llvm.loop !97

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %.lr.ph.us
  %indvars.iv = phi i64 [ %i.i, %.lr.ph.us.preheader ], [ %indvars.iv.next, %.lr.ph.us ] ; 2 uses
  %.02529.us.us = phi i32 [ 0, %.lr.ph.us.preheader ], [ %i.t, %.lr.ph.us ] ; 3 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !71
  %i.o = getelementptr inbounds nuw [48 x i8], ptr %i.n, i64 %indvars.iv
  tail call void @_ZN7Imf_3_415TiledOutputPart14setFrameBufferERKNS_11FrameBufferE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.o)
  %i.p = tail call noundef i32 @_ZNK7Imf_3_415TiledOutputPart9numXTilesEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.02631.us)
  %i.q = add nsw i32 %i.p, -1
  %i.r = tail call noundef i32 @_ZNK7Imf_3_415TiledOutputPart9numYTilesEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.02529.us.us)
  %i.s = add nsw i32 %i.r, -1
  tail call void @_ZN7Imf_3_415TiledOutputPart10writeTilesEiiiiii(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0, i32 noundef %i.q, i32 noundef 0, i32 noundef %i.s, i32 noundef %.02631.us, i32 noundef %.02529.us.us)
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.t = add nuw nsw i32 %.02529.us.us, 1         ; 2 uses
  %i.u = tail call noundef i32 @_ZNK7Imf_3_415TiledOutputPart10numYLevelsEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.v = icmp slt i32 %i.t, %i.u
  br i1 %i.v, label %.lr.ph.us, label %._crit_edge.split.us.us.loopexit, !llvm.loop !98

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge.split
  %.033 = phi i32 [ %.1.lcssa, %._crit_edge.split ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %.02631 = phi i32 [ %i.y, %._crit_edge.split ], [ 0, %.preheader.lr.ph ] ; 6 uses
  %i.w = tail call noundef i32 @_ZNK7Imf_3_415TiledOutputPart10numYLevelsEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph, label %._crit_edge.split

._crit_edge34:                                    ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %bb.a
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit, label %bb.d

._crit_edge.split:                                ; preds = %bb.c, %.preheader
  %.1.lcssa = phi i32 [ %.033, %.preheader ], [ %.2, %bb.c ]
  %i.y = add nuw nsw i32 %.02631, 1               ; 2 uses
  %i.z = tail call noundef i32 @_ZNK7Imf_3_415TiledOutputPart10numXLevelsEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.aa = icmp slt i32 %i.y, %i.z
  br i1 %i.aa, label %.preheader, label %._crit_edge34, !llvm.loop !97

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %.130 = phi i32 [ %.2, %bb.c ], [ %.033, %.preheader ] ; 3 uses
  %.02529 = phi i32 [ %i.ak, %bb.c ], [ 0, %.preheader ] ; 2 uses
  %i.ab = icmp eq i32 %.02631, %.02529
  br i1 %i.ab, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.ac = sext i32 %.130 to i64
  %i.ad = load ptr, ptr %1, align 8, !tbaa !71
  %i.ae = getelementptr inbounds nuw [48 x i8], ptr %i.ad, i64 %i.ac
  tail call void @_ZN7Imf_3_415TiledOutputPart14setFrameBufferERKNS_11FrameBufferE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.ae)
  %i.af = tail call noundef i32 @_ZNK7Imf_3_415TiledOutputPart9numXTilesEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.02631)
  %i.ag = add nsw i32 %i.af, -1
  %i.ah = tail call noundef i32 @_ZNK7Imf_3_415TiledOutputPart9numYTilesEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.02631)
  %i.ai = add nsw i32 %i.ah, -1
  tail call void @_ZN7Imf_3_415TiledOutputPart10writeTilesEiiiiii(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0, i32 noundef %i.ag, i32 noundef 0, i32 noundef %i.ai, i32 noundef %.02631, i32 noundef %.02631)
  %i.aj = add nsw i32 %.130, 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.2 = phi i32 [ %i.aj, %bb.b ], [ %.130, %.lr.ph ] ; 2 uses
  %i.ak = add nuw nsw i32 %.02529, 1              ; 2 uses
  %i.al = tail call noundef i32 @_ZNK7Imf_3_415TiledOutputPart10numYLevelsEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.am = icmp slt i32 %i.ak, %i.al
  br i1 %i.am, label %.lr.ph, label %._crit_edge.split, !llvm.loop !98

bb.d:                                             ; preds = %._crit_edge34
  %i.an = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #27
  %i.ao = sub nsw i64 %i.an, %i.c
  %i.ap = sitofp i64 %i.ao to double
  %i.aq = fdiv double %i.ap, 1.000000e+09         ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !47 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !50
  %.not.i.i = icmp eq ptr %i.as, %i.au
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store double %i.aq, ptr %i.as, align 8, !tbaa !51
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.av, ptr %i.ar, align 8, !tbaa !47
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

bb.f:                                             ; preds = %bb.d
  %i.aw = load ptr, ptr %2, align 8, !tbaa !53    ; 4 uses
  %i.ax = ptrtoint ptr %i.as to i64
  %i.ay = ptrtoint ptr %i.aw to i64               ; 2 uses
  %i.az = sub i64 %i.ax, %i.ay                    ; 5 uses
  %i.ba = icmp eq i64 %i.az, 9223372036854775800
  br i1 %i.ba, label %bb.g, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #26
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.bb = ashr exact i64 %i.az, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 1)
  %i.bc = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bb ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %i.bb
  %i.be = tail call i64 @llvm.umin.i64(i64 %i.bc, i64 1152921504606846975)
  %i.bf = select i1 %i.bd, i64 1152921504606846975, i64 %i.be ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bf, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bg = shl nuw nsw i64 %i.bf, 3
  %i.bh = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #30 ; 4 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 %i.az ; 2 uses
  store double %i.aq, ptr %i.bi, align 8, !tbaa !51
  %i.bj = icmp sgt i64 %i.az, 0
  br i1 %i.bj, label %bb.h, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bh, ptr align 8 %i.aw, i64 %i.az, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.h, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  %i.bl = load ptr, ptr %i.at, align 8, !tbaa !50
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = sub i64 %i.bm, %i.ay
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.bn) #29
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  store ptr %i.bh, ptr %2, align 8, !tbaa !53
  store ptr %i.bk, ptr %i.ar, align 8, !tbaa !47
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bf
  store ptr %i.bo, ptr %i.at, align 8, !tbaa !50
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

_ZNSt6vectorIdSaIdEE9push_backEOd.exit:           ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i, %bb.e, %._crit_edge34
  ret void
}

declare noundef nonnull align 8 dereferenceable(49) ptr @_ZNK7Imf_3_415TiledOutputPart6headerEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare noundef i32 @_ZNK7Imf_3_415TiledOutputPart10numXLevelsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare noundef i32 @_ZNK7Imf_3_415TiledOutputPart10numYLevelsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare void @_ZN7Imf_3_415TiledOutputPart14setFrameBufferERKNS_11FrameBufferE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #5

declare void @_ZN7Imf_3_415TiledOutputPart10writeTilesEiiiiii(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare noundef i32 @_ZNK7Imf_3_415TiledOutputPart9numXTilesEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #5

declare noundef i32 @_ZNK7Imf_3_415TiledOutputPart9numYTilesEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @_Z23initAndReadDeepScanLineRSt6vectorIiSaIiEERS_IS_IcSaIcEESaIS4_EERS_IS_IPcSaIS8_EESaISA_EERN7Imf_3_415DeepFrameBufferERNSE_21DeepScanLineInputPartEPKS1_RKNSE_6HeaderERS_IdSaIdEESQ_(ptr dead_on_unwind noalias writable sret(%struct.partSizeData) align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr nofree noundef readonly captures(address_is_null) %6, ptr noundef nonnull align 8 dereferenceable(49) %7, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %8, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %9) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"struct.Imf_3_4::Slice", align 8  ; 4 uses
end_hunk_0
