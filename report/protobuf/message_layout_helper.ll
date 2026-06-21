inline.NumInlined: 1439
inline.NumDeleted: 477
begin_hunk_0_@_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper21MaybeMergeHotIntoFastERSt5arrayIS4_ISt6vectorINS2_10FieldGroupESaIS6_EELm6EELm5EE:bb.a
  br i1 %i.fp, label %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE5clearEv.exit.2, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE5clearEv.exit.1
  tail call void @_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper24FillPaddingFromPartitionERSt6vectorINS2_10FieldGroupESaIS5_EES8_m(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i64 noundef 8)
  %i.fq = load ptr, ptr %i.t, align 8, !tbaa !55
  %i.fr = load ptr, ptr %i.ce, align 8, !tbaa !55
  %i.fs = load ptr, ptr %i.cg, align 8, !tbaa !55
  %i.ft = load ptr, ptr %i.r, align 8, !tbaa !55  ; 2 uses
  %i.fu = ptrtoint ptr %i.fq to i64
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = sub i64 %i.fu, %i.fv
  %i.fx = getelementptr inbounds i8, ptr %i.ft, i64 %i.fw
  tail call void @_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS4_S6_EEEEvSB_T_SC_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr %i.fx, ptr %i.fr, ptr %i.fs)
  %i.fy = load ptr, ptr %i.ce, align 8, !tbaa !94 ; 3 uses
  %i.fz = load ptr, ptr %i.cg, align 8, !tbaa !47 ; 2 uses
  %.not.i.i.2 = icmp eq ptr %i.fz, %i.fy
  br i1 %.not.i.i.2, label %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE5clearEv.exit.2, label %.lr.ph.i.i.i.i.2

.lr.ph.i.i.i.i.2:                                 ; preds = %bb.f, %_ZSt8_DestroyIN6google8protobuf8compiler3cpp10FieldGroupEEvPT_.exit.i.i.i.i.2
  %.05.i.i.i.i.2 = phi ptr [ %i.gg, %_ZSt8_DestroyIN6google8protobuf8compiler3cpp10FieldGroupEEvPT_.exit.i.i.i.i.2 ], [ %i.fy, %bb.f ] ; 3 uses
  %i.ga = load ptr, ptr %.05.i.i.i.i.2, align 8, !tbaa !19 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.2 = icmp eq ptr %i.ga, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.2, label %_ZSt8_DestroyIN6google8protobuf8compiler3cpp10FieldGroupEEvPT_.exit.i.i.i.i.2, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.2
  %i.gb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.2, i64 16
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !52
  %i.gd = ptrtoint ptr %i.gc to i64
  %i.ge = ptrtoint ptr %i.ga to i64
  %i.gf = sub i64 %i.gd, %i.ge
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ga, i64 noundef %i.gf) #21
  br label %_ZSt8_DestroyIN6google8protobuf8compiler3cpp10FieldGroupEEvPT_.exit.i.i.i.i.2

_ZSt8_DestroyIN6google8protobuf8compiler3cpp10FieldGroupEEvPT_.exit.i.i.i.i.2: ; preds = %bb.g, %.lr.ph.i.i.i.i.2
  %i.gg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.2, i64 32 ; 2 uses
  %.not.i.i.i.i.2 = icmp eq ptr %i.gg, %i.fz
  br i1 %.not.i.i.i.i.2, label %_ZSt8_DestroyIPN6google8protobuf8compiler3cpp10FieldGroupES4_EvT_S6_RSaIT0_E.exit.i.i.2, label %.lr.ph.i.i.i.i.2, !llvm.loop !104

_ZSt8_DestroyIPN6google8protobuf8compiler3cpp10FieldGroupES4_EvT_S6_RSaIT0_E.exit.i.i.2: ; preds = %_ZSt8_DestroyIN6google8protobuf8compiler3cpp10FieldGroupEEvPT_.exit.i.i.i.i.2
  store ptr %i.fy, ptr %i.cg, align 8, !tbaa !47
  br label %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE5clearEv.exit.2

_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE5clearEv.exit.2: ; preds = %_ZSt8_DestroyIPN6google8protobuf8compiler3cpp10FieldGroupES4_EvT_S6_RSaIT0_E.exit.i.i.2, %bb.f, %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE5clearEv.exit.1
  %i.gh = load ptr, ptr %i.cr, align 8, !tbaa !55
  %i.gi = load ptr, ptr %i.ct, align 8, !tbaa !55
  %i.gj = icmp eq ptr %i.gh, %i.gi
  br i1 %i.gj, label %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE5clearEv.exit.3, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE5clearEv.exit.2
  tail call void @_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper24FillPaddingFromPartitionERSt6vectorINS2_10FieldGroupESaIS5_EES8_m(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.cr, i64 noundef 8)
  %i.gk = load ptr, ptr %i.ag, align 8, !tbaa !55
  %i.gl = load ptr, ptr %i.cr, align 8, !tbaa !55
  %i.gm = load ptr, ptr %i.ct, align 8, !tbaa !55
  %i.gn = load ptr, ptr %i.ae, align 8, !tbaa !55 ; 2 uses
  %i.go = ptrtoint ptr %i.gk to i64
  %i.gp = ptrtoint ptr %i.gn to i64
  %i.gq = sub i64 %i.go, %i.gp
  %i.gr = getelementptr inbounds i8, ptr %i.gn, i64 %i.gq
  tail call void @_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS4_S6_EEEEvSB_T_SC_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr %i.gr, ptr %i.gl, ptr %i.gm)
  %i.gs = load ptr, ptr %i.cr, align 8, !tbaa !94 ; 3 uses
  %i.gt = load ptr, ptr %i.ct, align 8, !tbaa !47 ; 2 uses
  %.not.i.i.3 = icmp eq ptr %i.gt, %i.gs
  br i1 %.not.i.i.3, label %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE5clearEv.exit.3, label %.lr.ph.i.i.i.i.3

.lr.ph.i.i.i.i.3:                                 ; preds = %bb.h, %_ZSt8_DestroyIN6google8protobuf8compiler3cpp10FieldGroupEEvPT_.exit.i.i.i.i.3
  %.05.i.i.i.i.3 = phi ptr [ %i.ha, %_ZSt8_DestroyIN6google8protobuf8compiler3cpp10FieldGroupEEvPT_.exit.i.i.i.i.3 ], [ %i.gs, %bb.h ] ; 3 uses
  %i.gu = load ptr, ptr %.05.i.i.i.i.3, align 8, !tbaa !19 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.3 = icmp eq ptr %i.gu, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.3, label %_ZSt8_DestroyIN6google8protobuf8compiler3cpp10FieldGroupEEvPT_.exit.i.i.i.i.3, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.3
  %i.gv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.3, i64 16
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !52
  %i.gx = ptrtoint ptr %i.gw to i64
  %i.gy = ptrtoint ptr %i.gu to i64
  %i.gz = sub i64 %i.gx, %i.gy
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gu, i64 noundef %i.gz) #21
  br label %_ZSt8_DestroyIN6google8protobuf8compiler3cpp10FieldGroupEEvPT_.exit.i.i.i.i.3

_ZSt8_DestroyIN6google8protobuf8compiler3cpp10FieldGroupEEvPT_.exit.i.i.i.i.3: ; preds = %bb.i, %.lr.ph.i.i.i.i.3
  %i.ha = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.3, i64 32 ; 2 uses
  %.not.i.i.i.i.3 = icmp eq ptr %i.ha, %i.gt
  br i1 %.not.i.i.i.i.3, label %_ZSt8_DestroyIPN6google8protobuf8compiler3cpp10FieldGroupES4_EvT_S6_RSaIT0_E.exit.i.i.3, label %.lr.ph.i.i.i.i.3, !llvm.loop !104

_ZSt8_DestroyIPN6google8protobuf8compiler3cpp10FieldGroupES4_EvT_S6_RSaIT0_E.exit.i.i.3: ; preds = %_ZSt8_DestroyIN6google8protobuf8compiler3cpp10FieldGroupEEvPT_.exit.i.i.i.i.3
  store ptr %i.gs, ptr %i.ct, align 8, !tbaa !47
  br label %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE5clearEv.exit.3

_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE5clearEv.exit.3: ; preds = %_ZSt8_DestroyIPN6google8protobuf8compiler3cpp10FieldGroupES4_EvT_S6_RSaIT0_E.exit.i.i.3, %bb.h, %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE5clearEv.exit.2
  %i.hb = load ptr, ptr %i.de, align 8, !tbaa !55
  %i.hc = load ptr, ptr %i.dg, align 8, !tbaa !55
  %i.hd = icmp eq ptr %i.hb, %i.hc
  br i1 %i.hd, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE5clearEv.exit.3
  tail call void @_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper24FillPaddingFromPartitionERSt6vectorINS2_10FieldGroupESaIS5_EES8_m(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.de, i64 noundef 8)
  %i.he = load ptr, ptr %i.at, align 8, !tbaa !55
  %i.hf = load ptr, ptr %i.de, align 8, !tbaa !55
  %i.hg = load ptr, ptr %i.dg, align 8, !tbaa !55
  %i.hh = load ptr, ptr %i.ar, align 8, !tbaa !55 ; 2 uses
  %i.hi = ptrtoint ptr %i.he to i64
  %i.hj = ptrtoint ptr %i.hh to i64
  %i.hk = sub i64 %i.hi, %i.hj
  %i.hl = getelementptr inbounds i8, ptr %i.hh, i64 %i.hk
  tail call void @_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS4_S6_EEEEvSB_T_SC_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr %i.hl, ptr %i.hf, ptr %i.hg)
  %i.hm = load ptr, ptr %i.de, align 8, !tbaa !94 ; 3 uses
  %i.hn = load ptr, ptr %i.dg, align 8, !tbaa !47 ; 2 uses
  %.not.i.i.4 = icmp eq ptr %i.hn, %i.hm
  br i1 %.not.i.i.4, label %.loopexit, label %.lr.ph.i.i.i.i.4

.lr.ph.i.i.i.i.4:                                 ; preds = %bb.j, %_ZSt8_DestroyIN6google8protobuf8compiler3cpp10FieldGroupEEvPT_.exit.i.i.i.i.4
  %.05.i.i.i.i.4 = phi ptr [ %i.hu, %_ZSt8_DestroyIN6google8protobuf8compiler3cpp10FieldGroupEEvPT_.exit.i.i.i.i.4 ], [ %i.hm, %bb.j ] ; 3 uses
  %i.ho = load ptr, ptr %.05.i.i.i.i.4, align 8, !tbaa !19 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.4 = icmp eq ptr %i.ho, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.4, label %_ZSt8_DestroyIN6google8protobuf8compiler3cpp10FieldGroupEEvPT_.exit.i.i.i.i.4, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.4
  %i.hp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.4, i64 16
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !52
  %i.hr = ptrtoint ptr %i.hq to i64
  %i.hs = ptrtoint ptr %i.ho to i64
  %i.ht = sub i64 %i.hr, %i.hs
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ho, i64 noundef %i.ht) #21
  br label %_ZSt8_DestroyIN6google8protobuf8compiler3cpp10FieldGroupEEvPT_.exit.i.i.i.i.4

_ZSt8_DestroyIN6google8protobuf8compiler3cpp10FieldGroupEEvPT_.exit.i.i.i.i.4: ; preds = %bb.k, %.lr.ph.i.i.i.i.4
  %i.hu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.4, i64 32 ; 2 uses
  %.not.i.i.i.i.4 = icmp eq ptr %i.hu, %i.hn
  br i1 %.not.i.i.i.i.4, label %_ZSt8_DestroyIPN6google8protobuf8compiler3cpp10FieldGroupES4_EvT_S6_RSaIT0_E.exit.i.i.4, label %.lr.ph.i.i.i.i.4, !llvm.loop !104

_ZSt8_DestroyIPN6google8protobuf8compiler3cpp10FieldGroupES4_EvT_S6_RSaIT0_E.exit.i.i.4: ; preds = %_ZSt8_DestroyIN6google8protobuf8compiler3cpp10FieldGroupEEvPT_.exit.i.i.i.i.4
  store ptr %i.hm, ptr %i.dg, align 8, !tbaa !47
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE5clearEv.exit.3, %bb.j, %_ZSt8_DestroyIPN6google8protobuf8compiler3cpp10FieldGroupES4_EvT_S6_RSaIT0_E.exit.i.i.4, %._crit_edge63.4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper24FillPaddingFromPartitionERSt6vectorINS2_10FieldGroupESaIS5_EES8_m(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"class.std::_Temporary_buffer", align 8 ; 7 uses
  %4 = alloca %"class.std::_Temporary_buffer", align 8 ; 7 uses
  %5 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !55     ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !55   ; 6 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEEZNS5_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SD_mE3$_0EvT_SF_T0_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 5                   ; 2 uses
  %i.k = add nsw i64 %i.j, 1
  %i.l = sdiv i64 %i.k, 2                         ; 5 uses
  store i64 %i.l, ptr %4, align 8, !tbaa !105
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.o = icmp sgt i64 %i.j, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  br i1 %i.o, label %.lr.ph.i.i.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES6_EC2ESB_l.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %select.unfold.i.i.i.i
  %.010.i.i.i.i = phi i64 [ %i.t, %select.unfold.i.i.i.i ], [ %i.l, %bb.b ] ; 8 uses
  %i.p = shl nuw nsw i64 %.010.i.i.i.i, 5         ; 2 uses
  %i.q = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.p, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #26 ; 21 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %select.unfold.i.i.i.i, label %bb.c

select.unfold.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i
  %i.r = icmp eq i64 %.010.i.i.i.i, 1
  %i.s = add nuw nsw i64 %.010.i.i.i.i, 1
  %i.t = lshr i64 %i.s, 1
  br i1 %i.r, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES6_EC2ESB_l.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !108

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  store ptr %i.v, ptr %i.q, align 8, !tbaa !19
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !18   ; 2 uses
  store ptr %i.y, ptr %i.w, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !52 ; 2 uses
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !52
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8            ; 2 uses
  store i64 %i.ae, ptr %i.ac, align 8
  %.not18.i.i.i.i.i = icmp eq i64 %.010.i.i.i.i, 1
  br i1 %.not18.i.i.i.i.i, label %_ZSt29__uninitialized_construct_bufIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i.i.i, label %.lr.ph.i.i.preheader.i.i.i

.lr.ph.i.i.preheader.i.i.i:                       ; preds = %bb.c
  %.01317.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  %i.af = and i64 %.010.i.i.i.i, 1
  %lcmp.mod.not.not = icmp eq i64 %i.af, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.i.i.prol, label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.preheader.i.i.i
  %i.ag = load ptr, ptr %i.q, align 8, !tbaa !19
  store ptr %i.ag, ptr %.01317.i.i.i.i.i, align 8, !tbaa !19
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !18 ; 2 uses
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !18
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !52 ; 2 uses
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i8 0, i64 24, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.ao = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.ap = load i64, ptr %i.ao, align 8            ; 2 uses
  store i64 %i.ap, ptr %i.an, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  %.013.i.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.preheader.i.i.i
  %.lcssa231.unr = phi ptr [ poison, %.lr.ph.i.i.preheader.i.i.i ], [ %i.aj, %.lr.ph.i.i.i.i.i.prol ]
  %.lcssa230.unr.a = phi ptr [ poison, %.lr.ph.i.i.preheader.i.i.i ], [ %i.am, %.lr.ph.i.i.i.i.i.prol ]
  %.lcssa237.unr = phi i64 [ poison, %.lr.ph.i.i.preheader.i.i.i ], [ %i.ap, %.lr.ph.i.i.i.i.i.prol ]
  %.lcssa229.unr.a = phi ptr [ poison, %.lr.ph.i.i.preheader.i.i.i ], [ %i.aq, %.lr.ph.i.i.i.i.i.prol ]
  %.01321.i.i.i.i.i.unr = phi ptr [ %.01317.i.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i ], [ %.013.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.prol ]
  %.020.i.i.i.i.i.unr = phi ptr [ %i.q, %.lr.ph.i.i.preheader.i.i.i ], [ %i.aq, %.lr.ph.i.i.i.i.i.prol ]
  %i.ar = icmp eq i64 %.010.i.i.i.i, 2
  br i1 %i.ar, label %._crit_edge.i.i.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.01321.i.i.i.i.i = phi ptr [ %.013.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i ], [ %.01321.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.020.i.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i ], [ %.020.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 16 uses
  %i.as = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !19
  store ptr %i.as, ptr %.01321.i.i.i.i.i, align 8, !tbaa !19
  %i.at = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 40
  %i.au = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !18
  store ptr %i.av, ptr %i.at, align 8, !tbaa !18
  %i.aw = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 48
  %i.ax = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !52
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.020.i.i.i.i.i, i8 0, i64 24, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 56
  %i.ba = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 24
  %i.bb = load i64, ptr %i.ba, align 8
  store i64 %i.bb, ptr %i.az, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 32 ; 2 uses
  %.013.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.01321.i.i.i.i.i, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !19
  store ptr %i.bd, ptr %.013.i.i.i.i.i, align 8, !tbaa !19
  %i.be = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 72
  %i.bf = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !18 ; 2 uses
  store ptr %i.bg, ptr %i.be, align 8, !tbaa !18
  %i.bh = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 80
  %i.bi = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !52 ; 2 uses
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, i8 0, i64 24, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 88
  %i.bl = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 56
  %i.bm = load i64, ptr %i.bl, align 8            ; 2 uses
  store i64 %i.bm, ptr %i.bk, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 64 ; 2 uses
  %.013.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.01321.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.1 = icmp eq ptr %.013.i.i.i.i.i.1, %i.u
  br i1 %.not.i.i.i.i.i.1, label %._crit_edge.i.i.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !109

._crit_edge.i.i.loopexit.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa231 = phi ptr [ %.lcssa231.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.bg, %.lr.ph.i.i.i.i.i ]
  %.lcssa230.a = phi ptr [ %.lcssa230.unr.a, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.bj, %.lr.ph.i.i.i.i.i ]
  %.lcssa237 = phi i64 [ %.lcssa237.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.bm, %.lr.ph.i.i.i.i.i ]
  %.lcssa229.a = phi ptr [ %.lcssa229.unr.a, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.bn, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.pre.i.i.i = load ptr, ptr %.lcssa229.a, align 8, !tbaa !19
  br label %_ZSt29__uninitialized_construct_bufIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i.i.i

_ZSt29__uninitialized_construct_bufIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i.i.i: ; preds = %._crit_edge.i.i.loopexit.i.i.i, %bb.c
  %6 = phi i64 [ %i.ae, %bb.c ], [ %.lcssa237, %._crit_edge.i.i.loopexit.i.i.i ]
  %i.bo = phi ptr [ %i.ab, %bb.c ], [ %.lcssa230.a, %._crit_edge.i.i.loopexit.i.i.i ]
  %i.bp = phi ptr [ %i.y, %bb.c ], [ %.lcssa231, %._crit_edge.i.i.loopexit.i.i.i ]
  %i.bq = phi ptr [ %i.v, %bb.c ], [ %.pre.i.i.i, %._crit_edge.i.i.loopexit.i.i.i ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.q, %bb.c ], [ %.lcssa229.a, %._crit_edge.i.i.loopexit.i.i.i ]
  store ptr %i.bq, ptr %i.c, align 8, !tbaa !19
  store ptr %i.bp, ptr %i.x, align 8, !tbaa !18
  store ptr %i.bo, ptr %i.aa, align 8, !tbaa !52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0.lcssa.i.i.i.i.i, i8 0, i64 24, i1 false)
  store i64 %6, ptr %i.ad, align 8
  store ptr %i.q, ptr %i.n, align 8, !tbaa !110
  store i64 %.010.i.i.i.i, ptr %i.m, align 8, !tbaa !111
  br label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES6_EC2ESB_l.exit.i.i

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES6_EC2ESB_l.exit.i.i: ; preds = %select.unfold.i.i.i.i, %_ZSt29__uninitialized_construct_bufIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i.i.i, %bb.b
  %.pre.i16.i.i = phi ptr [ %i.q, %_ZSt29__uninitialized_construct_bufIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i.i.i ], [ null, %bb.b ], [ null, %select.unfold.i.i.i.i ] ; 8 uses
  %.pre1.i.i.i = phi i64 [ %.010.i.i.i.i, %_ZSt29__uninitialized_construct_bufIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i.i.i ], [ 0, %bb.b ], [ 0, %select.unfold.i.i.i.i ] ; 4 uses
  %i.br = icmp eq i64 %i.l, %.pre1.i.i.i
  br i1 %i.br, label %bb.d, label %bb.f, !prof !53

bb.d:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES6_EC2ESB_l.exit.i.i
  %i.bs = getelementptr inbounds [32 x i8], ptr %i.c, i64 %i.l ; 4 uses
  tail call fastcc void @"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS5_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_0EEEvT_SI_T0_T1_"(ptr %i.c, ptr %i.bs, ptr noundef %.pre.i16.i.i)
  tail call fastcc void @"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS5_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_0EEEvT_SI_T0_T1_"(ptr %i.bs, ptr %i.e, ptr noundef %.pre.i16.i.i)
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = sub i64 %i.g, %i.bt
  %i.bv = ashr exact i64 %i.bu, 5
  tail call fastcc void @"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNS5_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_0EEEvT_SI_SI_T0_SJ_T1_T2_"(ptr %i.c, ptr %i.bs, ptr %i.e, i64 noundef %i.l, i64 noundef %i.bv, ptr noundef %.pre.i16.i.i)
  br label %bb.i

common.resume:                                    ; preds = %bb.n, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.bw, %bb.e ], [ %i.fa, %bb.n ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.h, %bb.g
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES6_ED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %common.resume

bb.f:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES6_EC2ESB_l.exit.i.i
  %i.bx = icmp eq ptr %.pre.i16.i.i, null
  br i1 %i.bx, label %bb.g, label %bb.h, !prof !51

bb.g:                                             ; preds = %bb.f
  invoke fastcc void @"_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS5_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_0EEEvT_SI_T0_"(ptr %i.c, ptr %i.e)
          to label %bb.i unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  invoke fastcc void @"_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS5_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_0EEEvT_SI_T0_T1_T2_"(ptr %i.c, ptr %i.e, ptr noundef nonnull %.pre.i16.i.i, i64 noundef %.pre1.i.i.i)
          to label %bb.i unwind label %bb.e

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.d
  %.idx.i.i.i = shl i64 %.pre1.i.i.i, 5           ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %.pre.i16.i.i, i64 %.idx.i.i.i
  %.not4.i.i.i.i.i = icmp eq i64 %.pre1.i.i.i, 0
  br i1 %.not4.i.i.i.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES6_ED2Ev.exit.i.i, label %.lr.ph.i.i.i14.i.i

.lr.ph.i.i.i14.i.i:                               ; preds = %bb.i, %_ZSt8_DestroyIN6google8protobuf8compiler3cpp10FieldGroupEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.cf, %_ZSt8_DestroyIN6google8protobuf8compiler3cpp10FieldGroupEEvPT_.exit.i.i.i.i.i ], [ %.pre.i16.i.i, %bb.i ] ; 3 uses
  %i.bz = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !19 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6google8protobuf8compiler3cpp10FieldGroupEEvPT_.exit.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i14.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !52
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %i.bz to i64
  %i.ce = sub i64 %i.cc, %i.cd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.ce) #21
  br label %_ZSt8_DestroyIN6google8protobuf8compiler3cpp10FieldGroupEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN6google8protobuf8compiler3cpp10FieldGroupEEvPT_.exit.i.i.i.i.i: ; preds = %bb.j, %.lr.ph.i.i.i14.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i15.i.i = icmp eq ptr %i.cf, %i.by
  br i1 %.not.i.i.i15.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES6_ED2Ev.exit.i.i, label %.lr.ph.i.i.i14.i.i, !llvm.loop !104

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES6_ED2Ev.exit.i.i: ; preds = %_ZSt8_DestroyIN6google8protobuf8compiler3cpp10FieldGroupEEvPT_.exit.i.i.i.i.i, %bb.i
  tail call void @_ZdlPvm(ptr noundef %.pre.i16.i.i, i64 noundef %.idx.i.i.i) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEEZNS5_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SD_mE3$_0EvT_SF_T0_.exit"

"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEEZNS5_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SD_mE3$_0EvT_SF_T0_.exit": ; preds = %bb.a, %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES6_ED2Ev.exit.i.i
  %i.cg = load ptr, ptr %1, align 8, !tbaa !55    ; 13 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !55 ; 6 uses
  %i.cj = icmp eq ptr %i.cg, %i.ci
  br i1 %i.cj, label %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEEZNS5_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SD_mE3$_1EvT_SF_T0_.exit", label %bb.k

bb.k:                                             ; preds = %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEEZNS5_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SD_mE3$_0EvT_SF_T0_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.ck = ptrtoint ptr %i.ci to i64               ; 2 uses
  %i.cl = ptrtoint ptr %i.cg to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = ashr exact i64 %i.cm, 5                 ; 2 uses
  %i.co = add nsw i64 %i.cn, 1
  %i.cp = sdiv i64 %i.co, 2                       ; 5 uses
  store i64 %i.cp, ptr %3, align 8, !tbaa !105
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cs = icmp sgt i64 %i.cn, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, i8 0, i64 16, i1 false)
  br i1 %i.cs, label %.lr.ph.i.i.i.i44, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES6_EC2ESB_l.exit.i.i33

.lr.ph.i.i.i.i44:                                 ; preds = %bb.k, %select.unfold.i.i.i.i61
  %.010.i.i.i.i45 = phi i64 [ %i.cx, %select.unfold.i.i.i.i61 ], [ %i.cp, %bb.k ] ; 8 uses
  %i.ct = shl nuw nsw i64 %.010.i.i.i.i45, 5      ; 2 uses
  %i.cu = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.ct, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #26 ; 21 uses
  %.not.i.i.i.i46 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i46, label %select.unfold.i.i.i.i61, label %bb.l

select.unfold.i.i.i.i61:                          ; preds = %.lr.ph.i.i.i.i44
  %i.cv = icmp eq i64 %.010.i.i.i.i45, 1
  %i.cw = add nuw nsw i64 %.010.i.i.i.i45, 1
  %i.cx = lshr i64 %i.cw, 1
  br i1 %i.cv, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES6_EC2ESB_l.exit.i.i33, label %.lr.ph.i.i.i.i44, !llvm.loop !108

bb.l:                                             ; preds = %.lr.ph.i.i.i.i44
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.ct
  %i.cz = load ptr, ptr %i.cg, align 8, !tbaa !19 ; 2 uses
  store ptr %i.cz, ptr %i.cu, align 8, !tbaa !19
  %i.da = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !18 ; 2 uses
  store ptr %i.dc, ptr %i.da, align 8, !tbaa !18
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !52 ; 2 uses
  store ptr %i.df, ptr %i.dd, align 8, !tbaa !52
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cg, i64 24 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8            ; 2 uses
  store i64 %i.di, ptr %i.dg, align 8
  %.not18.i.i.i.i.i47 = icmp eq i64 %.010.i.i.i.i45, 1
  br i1 %.not18.i.i.i.i.i47, label %_ZSt29__uninitialized_construct_bufIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i.i.i57, label %.lr.ph.i.i.preheader.i.i.i48

.lr.ph.i.i.preheader.i.i.i48:                     ; preds = %bb.l
  %.01317.i.i.i.i.i49 = getelementptr inbounds nuw i8, ptr %i.cu, i64 32 ; 2 uses
  %i.dj = and i64 %.010.i.i.i.i45, 1
  %lcmp.mod238.not.not = icmp eq i64 %i.dj, 0
  br i1 %lcmp.mod238.not.not, label %.lr.ph.i.i.i.i.i50.prol, label %.lr.ph.i.i.i.i.i50.prol.loopexit

.lr.ph.i.i.i.i.i50.prol:                          ; preds = %.lr.ph.i.i.preheader.i.i.i48
  %i.dk = load ptr, ptr %i.cu, align 8, !tbaa !19
  store ptr %i.dk, ptr %.01317.i.i.i.i.i49, align 8, !tbaa !19
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !18 ; 2 uses
  store ptr %i.dn, ptr %i.dl, align 8, !tbaa !18
  %i.do = getelementptr inbounds nuw i8, ptr %i.cu, i64 48
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !52 ; 2 uses
  store ptr %i.dq, ptr %i.do, align 8, !tbaa !52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cu, i8 0, i64 24, i1 false)
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cu, i64 56
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.dt = load i64, ptr %i.ds, align 8            ; 2 uses
  store i64 %i.dt, ptr %i.dr, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.cu, i64 32 ; 2 uses
  %.013.i.i.i.i.i53.prol = getelementptr inbounds nuw i8, ptr %i.cu, i64 64
  br label %.lr.ph.i.i.i.i.i50.prol.loopexit

.lr.ph.i.i.i.i.i50.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i50.prol, %.lr.ph.i.i.preheader.i.i.i48
  %.lcssa223.unr = phi ptr [ poison, %.lr.ph.i.i.preheader.i.i.i48 ], [ %i.dn, %.lr.ph.i.i.i.i.i50.prol ]
  %.lcssa222.unr = phi ptr [ poison, %.lr.ph.i.i.preheader.i.i.i48 ], [ %i.dq, %.lr.ph.i.i.i.i.i50.prol ]
  %.lcssa228.unr = phi i64 [ poison, %.lr.ph.i.i.preheader.i.i.i48 ], [ %i.dt, %.lr.ph.i.i.i.i.i50.prol ]
  %.lcssa221.unr = phi ptr [ poison, %.lr.ph.i.i.preheader.i.i.i48 ], [ %i.du, %.lr.ph.i.i.i.i.i50.prol ]
  %.01321.i.i.i.i.i51.unr = phi ptr [ %.01317.i.i.i.i.i49, %.lr.ph.i.i.preheader.i.i.i48 ], [ %.013.i.i.i.i.i53.prol, %.lr.ph.i.i.i.i.i50.prol ]
  %.020.i.i.i.i.i52.unr = phi ptr [ %i.cu, %.lr.ph.i.i.preheader.i.i.i48 ], [ %i.du, %.lr.ph.i.i.i.i.i50.prol ]
  %i.dv = icmp eq i64 %.010.i.i.i.i45, 2
  br i1 %i.dv, label %._crit_edge.i.i.loopexit.i.i.i55, label %.lr.ph.i.i.i.i.i50

.lr.ph.i.i.i.i.i50:                               ; preds = %.lr.ph.i.i.i.i.i50.prol.loopexit, %.lr.ph.i.i.i.i.i50
  %.01321.i.i.i.i.i51 = phi ptr [ %.013.i.i.i.i.i53.1, %.lr.ph.i.i.i.i.i50 ], [ %.01321.i.i.i.i.i51.unr, %.lr.ph.i.i.i.i.i50.prol.loopexit ] ; 3 uses
  %.020.i.i.i.i.i52 = phi ptr [ %i.er, %.lr.ph.i.i.i.i.i50 ], [ %.020.i.i.i.i.i52.unr, %.lr.ph.i.i.i.i.i50.prol.loopexit ] ; 16 uses
  %i.dw = load ptr, ptr %.020.i.i.i.i.i52, align 8, !tbaa !19
  store ptr %i.dw, ptr %.01321.i.i.i.i.i51, align 8, !tbaa !19
  %i.dx = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i52, i64 40
  %i.dy = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i52, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !18
  store ptr %i.dz, ptr %i.dx, align 8, !tbaa !18
  %i.ea = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i52, i64 48
  %i.eb = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i52, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !52
  store ptr %i.ec, ptr %i.ea, align 8, !tbaa !52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.020.i.i.i.i.i52, i8 0, i64 24, i1 false)
  %i.ed = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i52, i64 56
  %i.ee = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i52, i64 24
  %i.ef = load i64, ptr %i.ee, align 8
  store i64 %i.ef, ptr %i.ed, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i52, i64 32 ; 2 uses
  %.013.i.i.i.i.i53 = getelementptr inbounds nuw i8, ptr %.01321.i.i.i.i.i51, i64 32
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !19
  store ptr %i.eh, ptr %.013.i.i.i.i.i53, align 8, !tbaa !19
  %i.ei = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i52, i64 72
  %i.ej = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i52, i64 40
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !18 ; 2 uses
  store ptr %i.ek, ptr %i.ei, align 8, !tbaa !18
  %i.el = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i52, i64 80
  %i.em = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i52, i64 48
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !52 ; 2 uses
  store ptr %i.en, ptr %i.el, align 8, !tbaa !52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eg, i8 0, i64 24, i1 false)
  %i.eo = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i52, i64 88
  %i.ep = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i52, i64 56
  %i.eq = load i64, ptr %i.ep, align 8            ; 2 uses
  store i64 %i.eq, ptr %i.eo, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i52, i64 64 ; 2 uses
  %.013.i.i.i.i.i53.1 = getelementptr inbounds nuw i8, ptr %.01321.i.i.i.i.i51, i64 64 ; 2 uses
  %.not.i.i.i.i.i54.1 = icmp eq ptr %.013.i.i.i.i.i53.1, %i.cy
  br i1 %.not.i.i.i.i.i54.1, label %._crit_edge.i.i.loopexit.i.i.i55, label %.lr.ph.i.i.i.i.i50, !llvm.loop !109

._crit_edge.i.i.loopexit.i.i.i55:                 ; preds = %.lr.ph.i.i.i.i.i50, %.lr.ph.i.i.i.i.i50.prol.loopexit
  %.lcssa223 = phi ptr [ %.lcssa223.unr, %.lr.ph.i.i.i.i.i50.prol.loopexit ], [ %i.ek, %.lr.ph.i.i.i.i.i50 ]
  %.lcssa222 = phi ptr [ %.lcssa222.unr, %.lr.ph.i.i.i.i.i50.prol.loopexit ], [ %i.en, %.lr.ph.i.i.i.i.i50 ]
  %.lcssa228 = phi i64 [ %.lcssa228.unr, %.lr.ph.i.i.i.i.i50.prol.loopexit ], [ %i.eq, %.lr.ph.i.i.i.i.i50 ]
  %.lcssa221 = phi ptr [ %.lcssa221.unr, %.lr.ph.i.i.i.i.i50.prol.loopexit ], [ %i.er, %.lr.ph.i.i.i.i.i50 ] ; 2 uses
  %.pre.i.i.i56 = load ptr, ptr %.lcssa221, align 8, !tbaa !19
  br label %_ZSt29__uninitialized_construct_bufIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i.i.i57

_ZSt29__uninitialized_construct_bufIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i.i.i57: ; preds = %._crit_edge.i.i.loopexit.i.i.i55, %bb.l
  %7 = phi i64 [ %i.di, %bb.l ], [ %.lcssa228, %._crit_edge.i.i.loopexit.i.i.i55 ]
  %i.es = phi ptr [ %i.df, %bb.l ], [ %.lcssa222, %._crit_edge.i.i.loopexit.i.i.i55 ]
  %i.et = phi ptr [ %i.dc, %bb.l ], [ %.lcssa223, %._crit_edge.i.i.loopexit.i.i.i55 ]
  %i.eu = phi ptr [ %i.cz, %bb.l ], [ %.pre.i.i.i56, %._crit_edge.i.i.loopexit.i.i.i55 ]
  %.0.lcssa.i.i.i.i.i58 = phi ptr [ %i.cu, %bb.l ], [ %.lcssa221, %._crit_edge.i.i.loopexit.i.i.i55 ]
  store ptr %i.eu, ptr %i.cg, align 8, !tbaa !19
  store ptr %i.et, ptr %i.db, align 8, !tbaa !18
  store ptr %i.es, ptr %i.de, align 8, !tbaa !52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0.lcssa.i.i.i.i.i58, i8 0, i64 24, i1 false)
  store i64 %7, ptr %i.dh, align 8
  store ptr %i.cu, ptr %i.cr, align 8, !tbaa !110
  store i64 %.010.i.i.i.i45, ptr %i.cq, align 8, !tbaa !111
  br label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES6_EC2ESB_l.exit.i.i33

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES6_EC2ESB_l.exit.i.i33: ; preds = %select.unfold.i.i.i.i61, %_ZSt29__uninitialized_construct_bufIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i.i.i57, %bb.k
  %.pre.i16.i.i34 = phi ptr [ %i.cu, %_ZSt29__uninitialized_construct_bufIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i.i.i57 ], [ null, %bb.k ], [ null, %select.unfold.i.i.i.i61 ] ; 8 uses
  %.pre1.i.i.i35 = phi i64 [ %.010.i.i.i.i45, %_ZSt29__uninitialized_construct_bufIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i.i.i57 ], [ 0, %bb.k ], [ 0, %select.unfold.i.i.i.i61 ] ; 4 uses
  %i.ev = icmp eq i64 %i.cp, %.pre1.i.i.i35
  br i1 %i.ev, label %bb.m, label %bb.o, !prof !53

bb.m:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES6_EC2ESB_l.exit.i.i33
  %i.ew = getelementptr inbounds [32 x i8], ptr %i.cg, i64 %i.cp ; 4 uses
  tail call fastcc void @"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS5_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_1EEEvT_SI_T0_T1_"(ptr %i.cg, ptr %i.ew, ptr noundef %.pre.i16.i.i34)
  tail call fastcc void @"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS5_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_1EEEvT_SI_T0_T1_"(ptr %i.ew, ptr %i.ci, ptr noundef %.pre.i16.i.i34)
  %i.ex = ptrtoint ptr %i.ew to i64
  %i.ey = sub i64 %i.ck, %i.ex
  %i.ez = ashr exact i64 %i.ey, 5
  tail call fastcc void @"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNS5_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_1EEEvT_SI_SI_T0_SJ_T1_T2_"(ptr %i.cg, ptr %i.ew, ptr %i.ci, i64 noundef %i.cp, i64 noundef %i.ez, ptr noundef %.pre.i16.i.i34)
  br label %bb.r

bb.n:                                             ; preds = %bb.q, %bb.p
  %i.fa = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES6_ED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %common.resume

bb.o:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES6_EC2ESB_l.exit.i.i33
  %i.fb = icmp eq ptr %.pre.i16.i.i34, null
  br i1 %i.fb, label %bb.p, label %bb.q, !prof !51

bb.p:                                             ; preds = %bb.o
  invoke fastcc void @"_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS5_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_1EEEvT_SI_T0_"(ptr %i.cg, ptr %i.ci)
          to label %bb.r unwind label %bb.n

bb.q:                                             ; preds = %bb.o
  invoke fastcc void @"_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS5_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_1EEEvT_SI_T0_T1_T2_"(ptr %i.cg, ptr %i.ci, ptr noundef nonnull %.pre.i16.i.i34, i64 noundef %.pre1.i.i.i35)
          to label %bb.r unwind label %bb.n

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.m
  %.idx.i.i.i36 = shl i64 %.pre1.i.i.i35, 5       ; 2 uses
  %i.fc = getelementptr inbounds i8, ptr %.pre.i16.i.i34, i64 %.idx.i.i.i36
  %.not4.i.i.i.i.i37 = icmp eq i64 %.pre1.i.i.i35, 0
  br i1 %.not4.i.i.i.i.i37, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES6_ED2Ev.exit.i.i43, label %.lr.ph.i.i.i14.i.i38

.lr.ph.i.i.i14.i.i38:                             ; preds = %bb.r, %_ZSt8_DestroyIN6google8protobuf8compiler3cpp10FieldGroupEEvPT_.exit.i.i.i.i.i41
  %.05.i.i.i.i.i39 = phi ptr [ %i.fj, %_ZSt8_DestroyIN6google8protobuf8compiler3cpp10FieldGroupEEvPT_.exit.i.i.i.i.i41 ], [ %.pre.i16.i.i34, %bb.r ] ; 3 uses
  %i.fd = load ptr, ptr %.05.i.i.i.i.i39, align 8, !tbaa !19 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i40 = icmp eq ptr %i.fd, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i40, label %_ZSt8_DestroyIN6google8protobuf8compiler3cpp10FieldGroupEEvPT_.exit.i.i.i.i.i41, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i14.i.i38
  %i.fe = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i39, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !52
  %i.fg = ptrtoint ptr %i.ff to i64
  %i.fh = ptrtoint ptr %i.fd to i64
  %i.fi = sub i64 %i.fg, %i.fh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fd, i64 noundef %i.fi) #21
  br label %_ZSt8_DestroyIN6google8protobuf8compiler3cpp10FieldGroupEEvPT_.exit.i.i.i.i.i41

_ZSt8_DestroyIN6google8protobuf8compiler3cpp10FieldGroupEEvPT_.exit.i.i.i.i.i41: ; preds = %bb.s, %.lr.ph.i.i.i14.i.i38
  %i.fj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i39, i64 32 ; 2 uses
  %.not.i.i.i15.i.i42 = icmp eq ptr %i.fj, %i.fc
  br i1 %.not.i.i.i15.i.i42, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES6_ED2Ev.exit.i.i43, label %.lr.ph.i.i.i14.i.i38, !llvm.loop !104

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES6_ED2Ev.exit.i.i43: ; preds = %_ZSt8_DestroyIN6google8protobuf8compiler3cpp10FieldGroupEEvPT_.exit.i.i.i.i.i41, %bb.r
  tail call void @_ZdlPvm(ptr noundef %.pre.i16.i.i34, i64 noundef %.idx.i.i.i36) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %.pre = load ptr, ptr %1, align 8, !tbaa !55
  br label %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEEZNS5_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SD_mE3$_1EvT_SF_T0_.exit"

"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEEZNS5_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SD_mE3$_1EvT_SF_T0_.exit": ; preds = %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEEZNS5_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SD_mE3$_0EvT_SF_T0_.exit", %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES6_ED2Ev.exit.i.i43
  %i.fk = phi ptr [ %i.cg, %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEEZNS5_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SD_mE3$_0EvT_SF_T0_.exit" ], [ %.pre, %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES6_ED2Ev.exit.i.i43 ] ; 2 uses
  %i.fl = load ptr, ptr %0, align 8, !tbaa !55    ; 2 uses
  %i.fm = load ptr, ptr %i.d, align 8, !tbaa !55  ; 2 uses
  %.not83106 = icmp eq ptr %i.fl, %i.fm
  br i1 %.not83106, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEEZNS5_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SD_mE3$_1EvT_SF_T0_.exit"
  %i.fn = load ptr, ptr %i.ch, align 8, !tbaa !55 ; 2 uses
  %.not84208 = icmp eq ptr %i.fk, %i.fn
  br i1 %.not84208, label %.critedge, label %.preheader

.lr.ph:                                           ; preds = %.critedge2
  %i.fo = load ptr, ptr %i.ch, align 8, !tbaa !55 ; 2 uses
  %.not84.a = icmp eq ptr %.sroa.072.2, %i.fo
  br i1 %.not84.a, label %.critedge, label %.preheader, !llvm.loop !112

.preheader:                                       ; preds = %.lr.ph.preheader, %.lr.ph
  %i.fp = phi ptr [ %i.fo, %.lr.ph ], [ %i.fn, %.lr.ph.preheader ] ; 2 uses
  %.sroa.072.0107211 = phi ptr [ %.sroa.072.2, %.lr.ph ], [ %i.fk, %.lr.ph.preheader ]
  %.sroa.079.0108209 = phi ptr [ %i.ik, %.lr.ph ], [ %i.fl, %.lr.ph.preheader ] ; 6 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.079.0108209, i64 28 ; 2 uses
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !20 ; 2 uses
  %i.fs = zext i32 %i.fr to i64
  br label %bb.t

.critedge2..critedge_crit_edge:                   ; preds = %.critedge2
  br label %.critedge, !llvm.loop !112

.critedge:                                        ; preds = %.lr.ph, %.critedge2..critedge_crit_edge, %.lr.ph.preheader
  %.lcssa88.ph = phi ptr [ %i.fm, %.lr.ph.preheader ], [ %i.ik, %.critedge2..critedge_crit_edge ], [ %i.il, %.lr.ph ] ; 2 uses
  %.pre133 = load ptr, ptr %0, align 8, !tbaa !55 ; 2 uses
  %.not85111 = icmp eq ptr %.pre133, %.lcssa88.ph
  br i1 %.not85111, label %._crit_edge, label %.lr.ph113

bb.t:                                             ; preds = %.preheader, %bb.u
  %.sroa.072.1105 = phi ptr [ %.sroa.072.0107211, %.preheader ], [ %i.fy, %bb.u ] ; 6 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.072.1105, i64 28
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !20 ; 2 uses
  %i.fv = zext i32 %i.fu to i64
  %i.fw = add nuw nsw i64 %i.fv, %i.fs
  %i.fx = icmp ugt i64 %i.fw, %2
  br i1 %i.fx, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.072.1105, i64 32 ; 3 uses
  %.not86 = icmp eq ptr %i.fy, %i.fp
  br i1 %.not86, label %.critedge2, label %bb.t, !llvm.loop !113

bb.v:                                             ; preds = %bb.t
  %i.fz = load ptr, ptr %.sroa.072.1105, align 8, !tbaa !7 ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.072.1105, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !7  ; 3 uses
  %.not.i = icmp eq ptr %i.fz, %i.gb
  br i1 %.not.i, label %_ZN6google8protobuf8compiler3cpp10FieldGroup6AppendERKS3_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.079.0108209, i64 24 ; 2 uses
  %i.gd = load float, ptr %i.gc, align 8, !tbaa !11
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.079.0108209, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !18
  %i.gg = load ptr, ptr %.sroa.079.0108209, align 8, !tbaa !19 ; 2 uses
  %i.gh = ptrtoint ptr %i.gf to i64
  %i.gi = ptrtoint ptr %i.gg to i64
  %i.gj = sub i64 %i.gh, %i.gi                    ; 2 uses
  %i.gk = ashr exact i64 %i.gj, 3                 ; 2 uses
  %i.gl = uitofp i64 %i.gk to float
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.072.1105, i64 24
  %i.gn = load float, ptr %i.gm, align 8, !tbaa !11
  %i.go = ptrtoint ptr %i.gb to i64
  %i.gp = ptrtoint ptr %i.fz to i64
  %i.gq = sub i64 %i.go, %i.gp
  %i.gr = ashr exact i64 %i.gq, 3                 ; 2 uses
  %i.gs = uitofp i64 %i.gr to float
  %i.gt = fmul float %i.gn, %i.gs
  %i.gu = tail call float @llvm.fmuladd.f32(float %i.gd, float %i.gl, float %i.gt)
  %i.gv = add nsw i64 %i.gk, %i.gr
  %i.gw = uitofp i64 %i.gv to float
  %i.gx = fdiv float %i.gu, %i.gw
  store float %i.gx, ptr %i.gc, align 8, !tbaa !11
  %i.gy = add i32 %i.fr, %i.fu
  store i32 %i.gy, ptr %i.fq, align 4, !tbaa !20
  %i.gz = getelementptr inbounds i8, ptr %i.gg, i64 %i.gj
  tail call void @_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEvNS9_IPS4_S6_EET_SF_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.079.0108209, ptr %i.gz, ptr %i.fz, ptr %i.gb)
  %.pre132 = load ptr, ptr %i.ch, align 8, !tbaa !55
  br label %_ZN6google8protobuf8compiler3cpp10FieldGroup6AppendERKS3_.exit

_ZN6google8protobuf8compiler3cpp10FieldGroup6AppendERKS3_.exit: ; preds = %bb.v, %bb.w
  %i.ha = phi ptr [ %i.fp, %bb.v ], [ %.pre132, %bb.w ] ; 4 uses
  %i.hb = load ptr, ptr %1, align 8, !tbaa !55    ; 2 uses
  %i.hc = ptrtoint ptr %.sroa.072.1105 to i64
  %i.hd = ptrtoint ptr %i.hb to i64
  %i.he = sub i64 %i.hc, %i.hd
  %i.hf = getelementptr inbounds i8, ptr %i.hb, i64 %i.he ; 4 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 32 ; 3 uses
  %.not.i.i = icmp eq ptr %i.hg, %i.ha
  br i1 %.not.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i, label %bb.x

bb.x:                                             ; preds = %_ZN6google8protobuf8compiler3cpp10FieldGroup6AppendERKS3_.exit
  %i.hh = ptrtoint ptr %i.ha to i64
  %i.hi = ptrtoint ptr %i.hg to i64
  %i.hj = sub i64 %i.hh, %i.hi
  %i.hk = ashr exact i64 %i.hj, 5                 ; 2 uses
  %i.hl = icmp sgt i64 %i.hk, 0
  br i1 %i.hl, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.x, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi i64 [ %i.ia, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i.i.i ], [ %i.hk, %bb.x ] ; 2 uses
  %.0811.i.i.i.i.i.i.i = phi ptr [ %i.hz, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i.i.i ], [ %i.hf, %bb.x ] ; 5 uses
  %.0910.i.i.i.i.i.i.i = phi ptr [ %i.hy, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i.i.i ], [ %i.hg, %bb.x ] ; 5 uses
  %i.hm = load ptr, ptr %.0811.i.i.i.i.i.i.i, align 8, !tbaa !19 ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !52
  %i.hp = load <2 x ptr>, ptr %.0910.i.i.i.i.i.i.i, align 8, !tbaa !7
  store <2 x ptr> %i.hp, ptr %.0811.i.i.i.i.i.i.i, align 8, !tbaa !7
  %i.hq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 16
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !52
  store ptr %i.hr, ptr %i.hn, align 8, !tbaa !52
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hm, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0910.i.i.i.i.i.i.i, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.hs = ptrtoint ptr %i.ho to i64
  %i.ht = ptrtoint ptr %i.hm to i64
  %i.hu = sub i64 %i.hs, %i.ht
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hm, i64 noundef %i.hu) #21
  br label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i.i.i

end_hunk_0
begin_hunk_1_@_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEvNS9_IPS4_S6_EET_SF_St20forward_iterator_tag:bb.a
bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 12 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18   ; 12 uses
  %i.i = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 4 uses
  %i.k = sub i64 %i.i, %i.j
  %.not = icmp ult i64 %i.k, %i.c
  br i1 %.not, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = sub i64 %i.j, %i.l                       ; 9 uses
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.p = sub nsw i64 0, %i.d
  %i.q = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.p ; 3 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = icmp sgt i64 %i.c, 8                     ; 2 uses
  br i1 %i.s, label %bb.e, label %bb.f, !prof !53

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.h, ptr nonnull align 8 %i.q, i64 %i.c, i1 false)
  %.pre72 = load ptr, ptr %i.g, align 8, !tbaa !18
  br label %_ZSt22__uninitialized_move_aIPPKN6google8protobuf15FieldDescriptorES5_SaIS4_EET0_T_S8_S7_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.t = icmp eq i64 %i.c, 8
  br i1 %i.t, label %bb.g, label %_ZSt22__uninitialized_move_aIPPKN6google8protobuf15FieldDescriptorES5_SaIS4_EET0_T_S8_S7_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !24
  store ptr %i.u, ptr %i.h, align 8, !tbaa !24
  br label %_ZSt22__uninitialized_move_aIPPKN6google8protobuf15FieldDescriptorES5_SaIS4_EET0_T_S8_S7_RT1_.exit

_ZSt22__uninitialized_move_aIPPKN6google8protobuf15FieldDescriptorES5_SaIS4_EET0_T_S8_S7_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.v = phi ptr [ %.pre72, %bb.e ], [ %i.h, %bb.f ], [ %i.h, %bb.g ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.c
  store ptr %i.w, ptr %i.g, align 8, !tbaa !18
  %i.x = sub i64 %i.r, %i.l                       ; 3 uses
  %i.y = ashr exact i64 %i.x, 3                   ; 2 uses
  %i.z = icmp sgt i64 %i.y, 1
  br i1 %i.z, label %bb.h, label %bb.i, !prof !53

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPPKN6google8protobuf15FieldDescriptorES5_SaIS4_EET0_T_S8_S7_RT1_.exit
  %i.aa = sub nsw i64 0, %i.y
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.aa
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr align 8 %1, i64 %i.x, i1 false)
  br label %_ZSt13move_backwardIPPKN6google8protobuf15FieldDescriptorES5_ET0_T_S7_S6_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPPKN6google8protobuf15FieldDescriptorES5_SaIS4_EET0_T_S8_S7_RT1_.exit
  %i.ac = icmp eq i64 %i.x, 8
  br i1 %i.ac, label %bb.j, label %_ZSt13move_backwardIPPKN6google8protobuf15FieldDescriptorES5_ET0_T_S7_S6_.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds i8, ptr %i.h, i64 -8
  %i.ae = load ptr, ptr %1, align 8, !tbaa !24
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !24
  br label %_ZSt13move_backwardIPPKN6google8protobuf15FieldDescriptorES5_ET0_T_S7_S6_.exit

_ZSt13move_backwardIPPKN6google8protobuf15FieldDescriptorES5_ET0_T_S7_S6_.exit: ; preds = %bb.h, %bb.i, %bb.j
  br i1 %i.s, label %bb.k, label %bb.l, !prof !53

bb.k:                                             ; preds = %_ZSt13move_backwardIPPKN6google8protobuf15FieldDescriptorES5_ET0_T_S7_S6_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %i.c, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit

bb.l:                                             ; preds = %_ZSt13move_backwardIPPKN6google8protobuf15FieldDescriptorES5_ET0_T_S7_S6_.exit
  %i.af = icmp eq i64 %i.c, 8
  br i1 %i.af, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit

bb.m:                                             ; preds = %bb.l
  %i.ag = load ptr, ptr %2, align 8, !tbaa !24
  store ptr %i.ag, ptr %1, align 8, !tbaa !24
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.ah = icmp eq i64 %i.m, 8
  %i.ai = getelementptr inbounds i8, ptr %2, i64 %i.m ; 3 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.a, %i.aj                     ; 3 uses
  %i.al = icmp sgt i64 %i.ak, 8
  br i1 %i.al, label %bb.n, label %bb.o, !prof !53

bb.n:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.h, ptr align 8 %i.ai, i64 %i.ak, i1 false)
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !18
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEEPS6_S6_ET0_T_SF_SE_RSaIT1_E.exit

bb.o:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.am = icmp eq i64 %i.ak, 8
  br i1 %i.am, label %bb.p, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEEPS6_S6_ET0_T_SF_SE_RSaIT1_E.exit

bb.p:                                             ; preds = %bb.o
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !24
  store ptr %i.an, ptr %i.h, align 8, !tbaa !24
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEEPS6_S6_ET0_T_SF_SE_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEEPS6_S6_ET0_T_SF_SE_RSaIT1_E.exit: ; preds = %bb.n, %bb.o, %bb.p
  %i.ao = phi ptr [ %.pre, %bb.n ], [ %i.h, %bb.o ], [ %i.h, %bb.p ]
  %i.ap = sub nuw nsw i64 %i.d, %i.n
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ap ; 5 uses
  store ptr %i.aq, ptr %i.g, align 8, !tbaa !18
  %i.ar = icmp sgt i64 %i.m, 8
  br i1 %i.ar, label %bb.q, label %bb.r, !prof !53

bb.q:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEEPS6_S6_ET0_T_SF_SE_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.aq, ptr align 8 %1, i64 %i.m, i1 false)
  %.pre71 = load ptr, ptr %i.g, align 8, !tbaa !18
  br label %_ZSt22__uninitialized_move_aIPPKN6google8protobuf15FieldDescriptorES5_SaIS4_EET0_T_S8_S7_RT1_.exit51

bb.r:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEEPS6_S6_ET0_T_SF_SE_RSaIT1_E.exit
  br i1 %i.ah, label %bb.s, label %_ZSt22__uninitialized_move_aIPPKN6google8protobuf15FieldDescriptorES5_SaIS4_EET0_T_S8_S7_RT1_.exit51

bb.s:                                             ; preds = %bb.r
  %i.as = load ptr, ptr %1, align 8, !tbaa !24
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !24
  br label %_ZSt22__uninitialized_move_aIPPKN6google8protobuf15FieldDescriptorES5_SaIS4_EET0_T_S8_S7_RT1_.exit51

_ZSt22__uninitialized_move_aIPPKN6google8protobuf15FieldDescriptorES5_SaIS4_EET0_T_S8_S7_RT1_.exit51: ; preds = %bb.q, %bb.r, %bb.s
  %i.at = phi ptr [ %.pre71, %bb.q ], [ %i.aq, %bb.r ], [ %i.aq, %bb.s ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.m
  store ptr %i.au, ptr %i.g, align 8, !tbaa !18
  %i.av = icmp sgt i64 %i.m, 8
  br i1 %i.av, label %bb.t, label %bb.u, !prof !53

bb.t:                                             ; preds = %_ZSt22__uninitialized_move_aIPPKN6google8protobuf15FieldDescriptorES5_SaIS4_EET0_T_S8_S7_RT1_.exit51
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %i.m, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit

bb.u:                                             ; preds = %_ZSt22__uninitialized_move_aIPPKN6google8protobuf15FieldDescriptorES5_SaIS4_EET0_T_S8_S7_RT1_.exit51
  %i.aw = icmp eq i64 %i.m, 8
  br i1 %i.aw, label %bb.v, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit

bb.v:                                             ; preds = %bb.u
  %i.ax = load ptr, ptr %2, align 8, !tbaa !24
  store ptr %i.ax, ptr %1, align 8, !tbaa !24
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit

bb.w:                                             ; preds = %bb.b
  %i.ay = load ptr, ptr %0, align 8, !tbaa !19    ; 5 uses
  %i.az = ptrtoint ptr %i.ay to i64               ; 3 uses
  %i.ba = sub i64 %i.j, %i.az
  %i.bb = ashr exact i64 %i.ba, 3                 ; 4 uses
  %i.bc = sub nsw i64 1152921504606846975, %i.bb
  %i.bd = icmp ult i64 %i.bc, %i.d
  br i1 %i.bd, label %bb.x, label %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #22
  unreachable

_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.w
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 %i.d)
  %i.be = add nsw i64 %.sroa.speculated.i, %i.bb  ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bb
  %i.bg = tail call i64 @llvm.umin.i64(i64 %i.be, i64 1152921504606846975)
  %i.bh = select i1 %i.bf, i64 1152921504606846975, i64 %i.bg ; 3 uses
  %.not.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_M_allocateEm.exit, label %bb.y

bb.y:                                             ; preds = %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit
  %i.bi = shl nuw nsw i64 %i.bh, 3
  %i.bj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #23
  br label %_ZNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit, %bb.y
  %i.bk = phi ptr [ %i.bj, %bb.y ], [ null, %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bl = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bm = sub i64 %i.bl, %i.az                    ; 4 uses
  %i.bn = icmp sgt i64 %i.bm, 8
  br i1 %i.bn, label %bb.z, label %bb.aa, !prof !53

bb.z:                                             ; preds = %_ZNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bk, ptr align 8 %i.ay, i64 %i.bm, i1 false)
  br label %bb.ac

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_M_allocateEm.exit
  %i.bo = icmp eq i64 %i.bm, 8
  br i1 %i.bo, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bp = load ptr, ptr %i.ay, align 8, !tbaa !24
  store ptr %i.bp, ptr %i.bk, align 8, !tbaa !24
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.bq = getelementptr inbounds i8, ptr %i.bk, i64 %i.bm ; 3 uses
  %i.br = icmp sgt i64 %i.c, 8
  br i1 %i.br, label %bb.ad, label %bb.ae, !prof !53

bb.ad:                                            ; preds = %bb.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.bq, ptr align 8 %2, i64 %i.c, i1 false)
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.bs = icmp eq i64 %i.c, 8
  br i1 %i.bs, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bt = load ptr, ptr %2, align 8, !tbaa !24
  store ptr %i.bt, ptr %i.bq, align 8, !tbaa !24
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.bu = getelementptr inbounds i8, ptr %i.bq, i64 %i.c ; 3 uses
  %i.bv = sub i64 %i.j, %i.bl                     ; 4 uses
  %i.bw = icmp sgt i64 %i.bv, 8
  br i1 %i.bw, label %bb.ah, label %bb.ai, !prof !53

bb.ah:                                            ; preds = %bb.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bu, ptr align 8 %1, i64 %i.bv, i1 false)
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  %i.bx = icmp eq i64 %i.bv, 8
  br i1 %i.bx, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.by = load ptr, ptr %1, align 8, !tbaa !24
  store ptr %i.by, ptr %i.bu, align 8, !tbaa !24
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.bz = getelementptr inbounds i8, ptr %i.bu, i64 %i.bv
  %.not.i55 = icmp eq ptr %i.ay, null
  br i1 %.not.i55, label %_ZNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ca = sub i64 %i.i, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.ca) #21
  br label %_ZNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %bb.ak, %bb.al
  store ptr %i.bk, ptr %0, align 8, !tbaa !19
  store ptr %i.bz, ptr %i.g, align 8, !tbaa !18
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bh
  store ptr %i.cb, ptr %i.e, align 8, !tbaa !52
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE13_M_deallocateEPS4_m.exit, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !94     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #22
  unreachable

_ZNKSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #23 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !18   ; 2 uses
  %i.t = load ptr, ptr %2, align 8, !tbaa !19     ; 4 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v                       ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i.i.i.i.i, label %.thread, label %bb.c

.thread:                                          ; preds = %_ZNKSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE12_M_check_lenEmPKc.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.y = getelementptr inbounds i8, ptr null, i64 %i.w ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  store ptr %i.y, ptr %i.z, align 8, !tbaa !52
  br label %bb.g

bb.c:                                             ; preds = %_ZNKSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE12_M_check_lenEmPKc.exit
  %i.aa = icmp ugt i64 %i.w, 9223372036854775800
  br i1 %i.aa, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIPKN6google8protobuf15FieldDescriptorEE8allocateEmPKv.exit.i.i.i.i.i, !prof !51

.noexc.i.i.i:                                     ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #22
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIPKN6google8protobuf15FieldDescriptorEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.ab = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #23
          to label %.noexc26 unwind label %bb.j   ; 5 uses

.noexc26:                                         ; preds = %_ZNSt15__new_allocatorIPKN6google8protobuf15FieldDescriptorEE8allocateEmPKv.exit.i.i.i.i.i
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !19
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.w ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !52
  %i.af = icmp samesign ugt i64 %i.w, 8
  br i1 %i.af, label %bb.d, label %bb.e, !prof !117

bb.d:                                             ; preds = %.noexc26
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr align 8 %i.t, i64 %i.w, i1 false)
  br label %bb.g

bb.e:                                             ; preds = %.noexc26
  %i.ag = icmp eq i64 %i.w, 8
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ah = load ptr, ptr %i.t, align 8, !tbaa !24
  store ptr %i.ah, ptr %i.ab, align 8, !tbaa !24
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %.thread
  %i.ai = phi ptr [ %i.ad, %bb.d ], [ %i.ad, %bb.e ], [ %i.ad, %bb.f ], [ %i.y, %.thread ]
  %i.aj = phi ptr [ %i.ac, %bb.d ], [ %i.ac, %bb.e ], [ %i.ac, %bb.f ], [ %i.x, %.thread ]
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !18
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.am = load i64, ptr %i.al, align 8
  store i64 %i.am, ptr %i.ak, align 8
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i ], [ %i.p, %bb.g ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i ], [ %i.c, %bb.g ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121)
  %i.an = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !7, !alias.scope !121, !noalias !118
  store <2 x ptr> %i.an, ptr %.012.i.i.i, align 8, !tbaa !7, !alias.scope !118, !noalias !121
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !52, !alias.scope !121, !noalias !118
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !52, !alias.scope !118, !noalias !121
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !121, !noalias !118
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !121, !noalias !118
  store i64 %i.at, ptr %i.ar, align 8, !alias.scope !118, !noalias !121
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.au, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !100

_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i, %bb.g
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.g ], [ %i.av, %.lr.ph.i.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i27 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i27, label %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33, label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %.lr.ph.i.i.i28
  %.012.i.i.i29 = phi ptr [ %i.bf, %.lr.ph.i.i.i28 ], [ %i.aw, %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 4 uses
  %.0911.i.i.i30 = phi ptr [ %i.be, %.lr.ph.i.i.i28 ], [ %1, %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  %i.ax = load <2 x ptr>, ptr %.0911.i.i.i30, align 8, !tbaa !7, !alias.scope !126, !noalias !123
  store <2 x ptr> %i.ax, ptr %.012.i.i.i29, align 8, !tbaa !7, !alias.scope !123, !noalias !126
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !52, !alias.scope !126, !noalias !123
  store ptr %i.ba, ptr %i.ay, align 8, !tbaa !52, !alias.scope !123, !noalias !126
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i30, i8 0, i64 24, i1 false), !alias.scope !126, !noalias !123
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 24
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !126, !noalias !123
  store i64 %i.bd, ptr %i.bb, align 8, !alias.scope !123, !noalias !126
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 32 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.be, %i.b
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33, label %.lr.ph.i.i.i28, !llvm.loop !100

_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33: ; preds = %.lr.ph.i.i.i28, %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i32 = phi ptr [ %i.aw, %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.bf, %.lr.ph.i.i.i28 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i34 = icmp eq ptr %i.c, null
  br i1 %.not.i34, label %_ZNSt12_Vector_baseIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !50
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #21
  br label %_ZNSt12_Vector_baseIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33, %bb.h
  store ptr %i.p, ptr %0, align 8, !tbaa !94
  store ptr %.0.lcssa.i.i.i32, ptr %i.a, align 8, !tbaa !47
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !50
  ret void

end_hunk_1
begin_hunk_2_@_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EEaSERKS6_:bb.a
  %i.ae = phi ptr [ %.pre, %bb.o ], [ %i.c, %bb.p ], [ %i.c, %bb.q ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.pre-phi32 ; 3 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %.pre-phi34, %i.ag              ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, 8
  br i1 %i.ai, label %bb.r, label %bb.s, !prof !53

bb.r:                                             ; preds = %_ZSt4copyIPPKN6google8protobuf15FieldDescriptorES5_ET0_T_S7_S6_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ad, ptr align 8 %i.af, i64 %i.ah, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit

bb.s:                                             ; preds = %_ZSt4copyIPPKN6google8protobuf15FieldDescriptorES5_ET0_T_S7_S6_.exit
  %i.aj = icmp eq i64 %i.ah, 8
  br i1 %i.aj, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit

bb.t:                                             ; preds = %bb.s
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !24
  store ptr %i.ak, ptr %i.ad, align 8, !tbaa !24
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE13_M_deallocateEPS4_m.exit
  %i.al = load ptr, ptr %0, align 8, !tbaa !19
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.an, align 8, !tbaa !18
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not15 = icmp eq ptr %0, %1
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.017 = phi ptr [ %i.z, %bb.f ], [ %2, %bb.a ]  ; 7 uses
  %.sroa.09.016 = phi ptr [ %i.y, %bb.f ], [ %0, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.09.016, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.c = load ptr, ptr %.sroa.09.016, align 8, !tbaa !19 ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.017, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i.i, label %.noexc8, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIPKN6google8protobuf15FieldDescriptorEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !51

.noexc.i.i.i.i:                                   ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #22
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIPKN6google8protobuf15FieldDescriptorEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #23
          to label %.noexc8 unwind label %.loopexit

.noexc8:                                          ; preds = %_ZNSt15__new_allocatorIPKN6google8protobuf15FieldDescriptorEE8allocateEmPKv.exit.i.i.i.i.i.i, %.lr.ph
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.h, %_ZNSt15__new_allocatorIPKN6google8protobuf15FieldDescriptorEE8allocateEmPKv.exit.i.i.i.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %.017, align 8, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %.017, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %.017, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !52
  %i.m = load ptr, ptr %.sroa.09.016, align 8, !tbaa !7 ; 3 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 8
  br i1 %i.r, label %bb.c, label %bb.d, !prof !53

bb.c:                                             ; preds = %.noexc8
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.m, i64 %i.q, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc8
  %i.s = icmp eq i64 %i.q, 8
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !24
  store ptr %i.t, ptr %i.i, align 8, !tbaa !24
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.u = getelementptr inbounds i8, ptr %i.i, i64 %i.q
  store ptr %i.u, ptr %i.j, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %.017, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.09.016, i64 24
  %i.x = load i64, ptr %i.w, align 8
  store i64 %i.x, ptr %i.v, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.09.016, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.017, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.y, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !131

.loopexit:                                        ; preds = %_ZNSt15__new_allocatorIPKN6google8protobuf15FieldDescriptorEE8allocateEmPKv.exit.i.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.aa = extractvalue { ptr, i32 } %lpad.phi, 0
  %i.ab = tail call ptr @__cxa_begin_catch(ptr %i.aa) #20 ; 0 uses
  invoke void @_ZSt8_DestroyIPN6google8protobuf8compiler3cpp10FieldGroupEEvT_S6_(ptr noundef %2, ptr noundef nonnull %.017)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_rethrow() #22
          to label %bb.l unwind label %bb.i

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.z, %bb.f ]
  ret ptr %.0.lcssa

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.ac

bb.k:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  tail call void @__clang_call_terminate(ptr %i.ae) #25
  unreachable

bb.l:                                             ; preds = %bb.h
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_less_iterEEvT_SE_T0_(ptr %0, ptr %1) local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::_Temporary_buffer", align 8 ; 7 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 5                   ; 2 uses
  %i.f = add nsw i64 %i.e, 1
  %i.g = sdiv i64 %i.f, 2                         ; 5 uses
  store i64 %i.g, ptr %2, align 8, !tbaa !105
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = icmp sgt i64 %i.e, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  br i1 %i.j, label %.lr.ph.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES6_EC2ESB_l.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %select.unfold.i.i
  %.010.i.i = phi i64 [ %i.o, %select.unfold.i.i ], [ %i.g, %bb.b ] ; 8 uses
  %i.k = shl nuw nsw i64 %.010.i.i, 5             ; 2 uses
  %i.l = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.k, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #26 ; 21 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %select.unfold.i.i, label %bb.c

select.unfold.i.i:                                ; preds = %.lr.ph.i.i
  %i.m = icmp eq i64 %.010.i.i, 1
  %i.n = add nuw nsw i64 %.010.i.i, 1
  %i.o = lshr i64 %i.n, 1
  br i1 %i.m, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES6_EC2ESB_l.exit, label %.lr.ph.i.i, !llvm.loop !108

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.k
  %i.q = load ptr, ptr %0, align 8, !tbaa !19     ; 2 uses
  store ptr %i.q, ptr %i.l, align 8, !tbaa !19
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !18   ; 2 uses
  store ptr %i.t, ptr %i.r, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !52   ; 2 uses
  store ptr %i.w, ptr %i.u, align 8, !tbaa !52
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  store i64 %i.z, ptr %i.x, align 8
  %.not18.i.i.i = icmp eq i64 %.010.i.i, 1
  br i1 %.not18.i.i.i, label %_ZSt29__uninitialized_construct_bufIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.c
  %.01317.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %i.aa = and i64 %.010.i.i, 1
  %lcmp.mod.not.not = icmp eq i64 %i.aa, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.prol, label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.preheader.i
  %i.ab = load ptr, ptr %i.l, align 8, !tbaa !19
  store ptr %i.ab, ptr %.01317.i.i.i, align 8, !tbaa !19
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !18 ; 2 uses
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !52 ; 2 uses
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i8 0, i64 24, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.ak = load i64, ptr %i.aj, align 8            ; 2 uses
  store i64 %i.ak, ptr %i.ai, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %.013.i.i.i.prol = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  br label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.preheader.i
  %.lcssa51.unr = phi ptr [ poison, %.lr.ph.i.i.preheader.i ], [ %i.ae, %.lr.ph.i.i.i.prol ]
  %.lcssa50.unr = phi ptr [ poison, %.lr.ph.i.i.preheader.i ], [ %i.ah, %.lr.ph.i.i.i.prol ]
  %.lcssa54.unr = phi i64 [ poison, %.lr.ph.i.i.preheader.i ], [ %i.ak, %.lr.ph.i.i.i.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader.i ], [ %i.al, %.lr.ph.i.i.i.prol ]
  %.01321.i.i.i.unr = phi ptr [ %.01317.i.i.i, %.lr.ph.i.i.preheader.i ], [ %.013.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %.020.i.i.i.unr = phi ptr [ %i.l, %.lr.ph.i.i.preheader.i ], [ %i.al, %.lr.ph.i.i.i.prol ]
  %i.am = icmp eq i64 %.010.i.i, 2
  br i1 %i.am, label %._crit_edge.i.i.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.01321.i.i.i = phi ptr [ %.013.i.i.i.1, %.lr.ph.i.i.i ], [ %.01321.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 3 uses
  %.020.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i ], [ %.020.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 16 uses
  %i.an = load ptr, ptr %.020.i.i.i, align 8, !tbaa !19
  store ptr %i.an, ptr %.01321.i.i.i, align 8, !tbaa !19
  %i.ao = getelementptr inbounds nuw i8, ptr %.020.i.i.i, i64 40
  %i.ap = getelementptr inbounds nuw i8, ptr %.020.i.i.i, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !18
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %.020.i.i.i, i64 48
  %i.as = getelementptr inbounds nuw i8, ptr %.020.i.i.i, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !52
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.020.i.i.i, i8 0, i64 24, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %.020.i.i.i, i64 56
  %i.av = getelementptr inbounds nuw i8, ptr %.020.i.i.i, i64 24
  %i.aw = load i64, ptr %i.av, align 8
  store i64 %i.aw, ptr %i.au, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.020.i.i.i, i64 32 ; 2 uses
  %.013.i.i.i = getelementptr inbounds nuw i8, ptr %.01321.i.i.i, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !19
  store ptr %i.ay, ptr %.013.i.i.i, align 8, !tbaa !19
  %i.az = getelementptr inbounds nuw i8, ptr %.020.i.i.i, i64 72
  %i.ba = getelementptr inbounds nuw i8, ptr %.020.i.i.i, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !18 ; 2 uses
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !18
  %i.bc = getelementptr inbounds nuw i8, ptr %.020.i.i.i, i64 80
  %i.bd = getelementptr inbounds nuw i8, ptr %.020.i.i.i, i64 48
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !52 ; 2 uses
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i8 0, i64 24, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %.020.i.i.i, i64 88
  %i.bg = getelementptr inbounds nuw i8, ptr %.020.i.i.i, i64 56
  %i.bh = load i64, ptr %i.bg, align 8            ; 2 uses
  store i64 %i.bh, ptr %i.bf, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.020.i.i.i, i64 64 ; 2 uses
  %.013.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.01321.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.1 = icmp eq ptr %.013.i.i.i.1, %i.p
  br i1 %.not.i.i.i.1, label %._crit_edge.i.i.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !109

._crit_edge.i.i.loopexit.i:                       ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa51 = phi ptr [ %.lcssa51.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.bb, %.lr.ph.i.i.i ]
  %.lcssa50 = phi ptr [ %.lcssa50.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.be, %.lr.ph.i.i.i ]
  %.lcssa54 = phi i64 [ %.lcssa54.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.bh, %.lr.ph.i.i.i ]
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.bi, %.lr.ph.i.i.i ] ; 2 uses
  %.pre.i = load ptr, ptr %.lcssa, align 8, !tbaa !19
  br label %_ZSt29__uninitialized_construct_bufIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i

_ZSt29__uninitialized_construct_bufIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i: ; preds = %._crit_edge.i.i.loopexit.i, %bb.c
  %3 = phi i64 [ %i.z, %bb.c ], [ %.lcssa54, %._crit_edge.i.i.loopexit.i ]
  %i.bj = phi ptr [ %i.w, %bb.c ], [ %.lcssa50, %._crit_edge.i.i.loopexit.i ]
  %i.bk = phi ptr [ %i.t, %bb.c ], [ %.lcssa51, %._crit_edge.i.i.loopexit.i ]
  %i.bl = phi ptr [ %i.q, %bb.c ], [ %.pre.i, %._crit_edge.i.i.loopexit.i ]
  %.0.lcssa.i.i.i = phi ptr [ %i.l, %bb.c ], [ %.lcssa, %._crit_edge.i.i.loopexit.i ]
  store ptr %i.bl, ptr %0, align 8, !tbaa !19
  store ptr %i.bk, ptr %i.s, align 8, !tbaa !18
  store ptr %i.bj, ptr %i.v, align 8, !tbaa !52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0.lcssa.i.i.i, i8 0, i64 24, i1 false)
  store i64 %3, ptr %i.y, align 8
  store ptr %i.l, ptr %i.i, align 8, !tbaa !110
  store i64 %.010.i.i, ptr %i.h, align 8, !tbaa !111
  br label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES6_EC2ESB_l.exit

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES6_EC2ESB_l.exit: ; preds = %select.unfold.i.i, %bb.b, %_ZSt29__uninitialized_construct_bufIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i
  %.pre.i12 = phi ptr [ %i.l, %_ZSt29__uninitialized_construct_bufIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i ], [ null, %bb.b ], [ null, %select.unfold.i.i ] ; 8 uses
  %.pre1.i = phi i64 [ %.010.i.i, %_ZSt29__uninitialized_construct_bufIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEvT_SC_T0_.exit.i ], [ 0, %bb.b ], [ 0, %select.unfold.i.i ] ; 4 uses
  %i.bm = icmp eq i64 %i.g, %.pre1.i
  br i1 %i.bm, label %bb.d, label %bb.f, !prof !53

bb.d:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES6_EC2ESB_l.exit
  %i.bn = getelementptr inbounds [32 x i8], ptr %0, i64 %i.g ; 4 uses
  invoke void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_less_iterEEvT_SE_T0_T1_(ptr %0, ptr %i.bn, ptr noundef %.pre.i12)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  invoke void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_less_iterEEvT_SE_T0_T1_(ptr %i.bn, ptr %1, ptr noundef %.pre.i12)
          to label %.noexc8 unwind label %bb.e

.noexc8:                                          ; preds = %.noexc
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = sub i64 %i.b, %i.bo
  %i.bq = ashr exact i64 %i.bp, 5
  invoke void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEElS7_NS0_5__ops15_Iter_less_iterEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %i.bn, ptr %1, i64 noundef %i.g, i64 noundef %i.bq, ptr noundef %.pre.i12)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_less_iterEEvT_SE_SE_T0_T1_.exit unwind label %bb.e

bb.e:                                             ; preds = %.noexc8, %.noexc, %bb.d, %bb.h, %bb.g
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES6_ED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %i.br

bb.f:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES6_EC2ESB_l.exit
  %i.bs = icmp eq ptr %.pre.i12, null
  br i1 %i.bs, label %bb.g, label %bb.h, !prof !51

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_less_iterEEvT_SE_T0_(ptr %0, ptr %1)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_less_iterEEvT_SE_SE_T0_T1_.exit unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  invoke void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_less_iterEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef nonnull %.pre.i12, i64 noundef %.pre1.i)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_less_iterEEvT_SE_SE_T0_T1_.exit unwind label %bb.e

_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_less_iterEEvT_SE_SE_T0_T1_.exit: ; preds = %.noexc8, %bb.g, %bb.h
  %.idx.i = shl i64 %.pre1.i, 5                   ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr %.pre.i12, i64 %.idx.i
  %.not4.i.i.i = icmp eq i64 %.pre1.i, 0
  br i1 %.not4.i.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES6_ED2Ev.exit, label %.lr.ph.i.i.i10

.lr.ph.i.i.i10:                                   ; preds = %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_less_iterEEvT_SE_SE_T0_T1_.exit, %_ZSt8_DestroyIN6google8protobuf8compiler3cpp10FieldGroupEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ca, %_ZSt8_DestroyIN6google8protobuf8compiler3cpp10FieldGroupEEvPT_.exit.i.i.i ], [ %.pre.i12, %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_less_iterEEvT_SE_SE_T0_T1_.exit ] ; 3 uses
  %i.bu = load ptr, ptr %.05.i.i.i, align 8, !tbaa !19 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6google8protobuf8compiler3cpp10FieldGroupEEvPT_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i10
  %i.bv = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !52
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.bu to i64
  %i.bz = sub i64 %i.bx, %i.by
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.bz) #21
  br label %_ZSt8_DestroyIN6google8protobuf8compiler3cpp10FieldGroupEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6google8protobuf8compiler3cpp10FieldGroupEEvPT_.exit.i.i.i: ; preds = %bb.i, %.lr.ph.i.i.i10
  %i.ca = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i11 = icmp eq ptr %i.ca, %i.bt
  br i1 %.not.i.i.i11, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES6_ED2Ev.exit, label %.lr.ph.i.i.i10, !llvm.loop !104

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES6_ED2Ev.exit: ; preds = %_ZSt8_DestroyIN6google8protobuf8compiler3cpp10FieldGroupEEvPT_.exit.i.i.i, %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_less_iterEEvT_SE_SE_T0_T1_.exit
  tail call void @_ZdlPvm(ptr noundef %.pre.i12, i64 noundef %.idx.i) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES6_ED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_less_iterEEvT_SE_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 5                   ; 2 uses
  %i.e = icmp slt i64 %i.d, 15
  br i1 %i.e, label %common.ret, label %bb.b

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_less_iterEEvT_SE_T0_(ptr %0, ptr %1)
  br label %common.ret17

common.ret17:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  %i.f = lshr i64 %i.d, 1                         ; 2 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.f ; 4 uses
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_less_iterEEvT_SE_T0_(ptr %0, ptr %i.g)
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_less_iterEEvT_SE_T0_(ptr %i.g, ptr %1)
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = sub i64 %i.a, %i.h
  %i.j = ashr exact i64 %i.i, 5
  tail call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_less_iterEEvT_SE_SE_T0_SF_T1_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.j)
  br label %common.ret17
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_less_iterEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 5
  %i.e = add nsw i64 %i.d, 1
  %i.f = sdiv i64 %i.e, 2                         ; 4 uses
  %i.g = getelementptr inbounds [32 x i8], ptr %0, i64 %i.f ; 7 uses
  %i.h = icmp sgt i64 %i.f, %3
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.a, %i.i
  %i.k = ashr exact i64 %i.j, 5                   ; 2 uses
  br i1 %i.h, label %bb.b, label %common.ret

common.ret25:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_less_iterEEvT_SE_T0_T1_T2_(ptr %0, ptr %i.g, ptr noundef %2, i64 noundef %3)
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_less_iterEEvT_SE_T0_T1_T2_(ptr %i.g, ptr %1, ptr noundef %2, i64 noundef %3)
  tail call void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEElS7_NS0_5__ops15_Iter_less_iterEEvT_SE_SE_T0_SF_T1_SF_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3)
  br label %common.ret25

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_less_iterEEvT_SE_T0_T1_(ptr %0, ptr %i.g, ptr noundef %2)
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_less_iterEEvT_SE_T0_T1_(ptr %i.g, ptr %1, ptr noundef %2)
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEElS7_NS0_5__ops15_Iter_less_iterEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2)
  br label %common.ret25
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES6_ED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !110  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !111  ; 2 uses
  %.idx = shl nsw i64 %i.d, 5
  %i.e = getelementptr inbounds i8, ptr %i.b, i64 %.idx
  %.not4.i.i = icmp eq i64 %i.d, 0
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6google8protobuf8compiler3cpp10FieldGroupEEvT_S6_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN6google8protobuf8compiler3cpp10FieldGroupEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.l, %_ZSt8_DestroyIN6google8protobuf8compiler3cpp10FieldGroupEEvPT_.exit.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.f = load ptr, ptr %.05.i.i, align 8, !tbaa !19 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6google8protobuf8compiler3cpp10FieldGroupEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !52
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #21
  br label %_ZSt8_DestroyIN6google8protobuf8compiler3cpp10FieldGroupEEvPT_.exit.i.i

_ZSt8_DestroyIN6google8protobuf8compiler3cpp10FieldGroupEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.e
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6google8protobuf8compiler3cpp10FieldGroupEEvT_S6_.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !104

_ZSt8_DestroyIPN6google8protobuf8compiler3cpp10FieldGroupEEvT_S6_.exit.loopexit: ; preds = %_ZSt8_DestroyIN6google8protobuf8compiler3cpp10FieldGroupEEvPT_.exit.i.i
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !110
  %.pre1 = load i64, ptr %i.c, align 8, !tbaa !111
  %i.m = shl i64 %.pre1, 5
  br label %_ZSt8_DestroyIPN6google8protobuf8compiler3cpp10FieldGroupEEvT_S6_.exit

_ZSt8_DestroyIPN6google8protobuf8compiler3cpp10FieldGroupEEvT_S6_.exit: ; preds = %_ZSt8_DestroyIPN6google8protobuf8compiler3cpp10FieldGroupEEvT_S6_.exit.loopexit, %bb.a
  %i.n = phi i64 [ %i.m, %_ZSt8_DestroyIPN6google8protobuf8compiler3cpp10FieldGroupEEvT_S6_.exit.loopexit ], [ 0, %bb.a ]
  %i.o = phi ptr [ %.pre, %_ZSt8_DestroyIPN6google8protobuf8compiler3cpp10FieldGroupEEvT_S6_.exit.loopexit ], [ %i.b, %bb.a ]
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.n) #20
  ret void
}

; Function Attrs: nobuiltin nounwind allocsize(0)
declare noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_less_iterEEvT_SE_T0_T1_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 5                   ; 6 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.c ; 2 uses
  %.not9.i = icmp slt i64 %i.d, 7
  br i1 %.not9.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_less_iterEEvT_SE_T0_T1_.exit.thread, label %.lr.ph.i

end_hunk_2
