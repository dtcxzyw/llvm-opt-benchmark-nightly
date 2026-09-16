Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/lattice_Zn?download=true
inline.NumInlined: 954
inline.NumDeleted: 441
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN5faiss13ZnSphereCodecD2Ev:bb.a
  br i1 %.not.i.i.i.i, label %_ZN5faiss14ZnSphereSearchD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN5faiss13ZnSphereCodec11CodeSegmentESaIS2_EED2Ev.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !47
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #27
  br label %_ZN5faiss14ZnSphereSearchD2Ev.exit

_ZN5faiss14ZnSphereSearchD2Ev.exit:               ; preds = %_ZNSt6vectorIN5faiss13ZnSphereCodec11CodeSegmentESaIS2_EED2Ev.exit, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss13ZnSphereCodecD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5faiss13ZnSphereCodecE, i64 16), ptr %0, align 8, !tbaa !41
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN5faiss13ZnSphereCodec11CodeSegmentES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyIN5faiss13ZnSphereCodec11CodeSegmentEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.l, %_ZSt8_DestroyIN5faiss13ZnSphereCodec11CodeSegmentEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !43   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5faiss13ZnSphereCodec11CodeSegmentEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !44
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #27, !inline_history !48
  br label %_ZSt8_DestroyIN5faiss13ZnSphereCodec11CodeSegmentEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN5faiss13ZnSphereCodec11CodeSegmentEEvPT_.exit.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5faiss13ZnSphereCodec11CodeSegmentES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPN5faiss13ZnSphereCodec11CodeSegmentES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN5faiss13ZnSphereCodec11CodeSegmentEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !24
  br label %_ZSt8_DestroyIPN5faiss13ZnSphereCodec11CodeSegmentES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5faiss13ZnSphereCodec11CodeSegmentES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5faiss13ZnSphereCodec11CodeSegmentES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.m = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN5faiss13ZnSphereCodec11CodeSegmentES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN5faiss13ZnSphereCodec11CodeSegmentESaIS2_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN5faiss13ZnSphereCodec11CodeSegmentES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !45
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #27, !inline_history !48
  br label %_ZNSt6vectorIN5faiss13ZnSphereCodec11CodeSegmentESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN5faiss13ZnSphereCodec11CodeSegmentESaIS2_EED2Ev.exit.i: ; preds = %bb.c, %_ZSt8_DestroyIPN5faiss13ZnSphereCodec11CodeSegmentES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !46   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i, label %_ZN5faiss13ZnSphereCodecD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN5faiss13ZnSphereCodec11CodeSegmentESaIS2_EED2Ev.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !47
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #27, !inline_history !48
  br label %_ZN5faiss13ZnSphereCodecD2Ev.exit

_ZN5faiss13ZnSphereCodecD2Ev.exit:                ; preds = %_ZNSt6vectorIN5faiss13ZnSphereCodec11CodeSegmentESaIS2_EED2Ev.exit.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK5faiss16ZnSphereCodecRec6encodeEPKf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZNK5faiss16ZnSphereCodecRec15encode_centroidEPKf(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5faiss16ZnSphereCodecRec6decodeEmPf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !37   ; 3 uses
  %i.c = sext i32 %i.b to i64                     ; 3 uses
  %i.d = icmp slt i32 %i.b, 0
  br i1 %i.d, label %.noexc, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #28
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i, label %.noexc76

.noexc76:                                         ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %i.e = shl nuw nsw i64 %i.c, 3
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #29 ; 5 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.c ; 2 uses
  store i64 0, ptr %i.f, align 8, !tbaa !49
  %i.h = add nsw i64 %i.c, -1                     ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_ZNSt6vectorImSaImEEC2EmRKS0_.exit, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc76
  %i.j = getelementptr i8, ptr %i.f, i64 8
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.h, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.j, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !49
  br label %_ZNSt6vectorImSaImEEC2EmRKS0_.exit

_ZNSt6vectorImSaImEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc76
  %.pr = load i32, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.k = zext nneg i32 %.pr to i64
  %i.l = icmp slt i32 %.pr, 0
  br i1 %i.l, label %bb.b, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.b:                                             ; preds = %_ZNSt6vectorImSaImEEC2EmRKS0_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #28
          to label %.noexc80 unwind label %.thread

.thread:                                          ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.noexc80:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit
  %i.n = phi i64 [ %i.k, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit ], [ 0, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.094.0143 = phi ptr [ %i.f, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit ], [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ] ; 12 uses
  %.sroa.15103.0141 = phi ptr [ %i.g, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit ], [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %i.o = shl nuw nsw i64 %i.n, 2                  ; 2 uses
  %i.p = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #29
          to label %.noexc81 unwind label %bb.c   ; 11 uses

.noexc81:                                         ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  store i32 0, ptr %i.p, align 4, !tbaa !50
  %i.q = add nsw i64 %i.n, -1                     ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc81
  %i.s = getelementptr i8, ptr %i.p, i64 4
  %.idx.i.i.i.i.i.i.i78 = shl nuw nsw i64 %i.q, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.s, i8 0, i64 %.idx.i.i.i.i.i.i.i78, i1 false), !tbaa !50
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc81
  store i64 %1, ptr %.sroa.094.0143, align 8, !tbaa !49
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.u = load i32, ptr %i.t, align 4, !tbaa !62   ; 2 uses
  store i32 %i.u, ptr %i.p, align 4, !tbaa !50
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i32, ptr %i.v, align 8, !tbaa !63   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.y = load i32, ptr %i.x, align 8, !tbaa !64   ; 7 uses
  %i.z = icmp sgt i32 %i.w, %i.y
  br i1 %i.z, label %.preheader106.lr.ph, label %._crit_edge115

.preheader106.lr.ph:                              ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = add nsw i32 %i.u, 1                     ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %.preheader106

.preheader106:                                    ; preds = %.preheader106.lr.ph, %._crit_edge112
  %.068114 = phi i32 [ 1, %.preheader106.lr.ph ], [ %i.at, %._crit_edge112 ] ; 3 uses
  %.069113 = phi i32 [ %i.w, %.preheader106.lr.ph ], [ %.pre-phi, %._crit_edge112 ] ; 3 uses
  %i.ad = icmp sgt i32 %.068114, 0
  br i1 %i.ad, label %.lr.ph111, label %.preheader106.._crit_edge112_crit_edge

.preheader106.._crit_edge112_crit_edge:           ; preds = %.preheader106
  %.pre = add nsw i32 %.069113, -1
  br label %._crit_edge112

.lr.ph111:                                        ; preds = %.preheader106
  %i.ae = mul nsw i32 %.069113, %i.ab
  %i.af = load ptr, ptr %i.aa, align 8, !tbaa !65
  %i.ag = add nsw i32 %.069113, -1                ; 2 uses
  %i.ah = mul nsw i32 %i.ag, %i.ab
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !65
  %i.aj = zext nneg i32 %.068114 to i64
  br label %bb.e

._crit_edge115.loopexit:                          ; preds = %._crit_edge112
  %i.ak = zext i32 %i.at to i64
  br label %._crit_edge115

._crit_edge115:                                   ; preds = %._crit_edge115.loopexit, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %.068.lcssa = phi i64 [ 1, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ], [ %i.ak, %._crit_edge115.loopexit ] ; 4 uses
  %i.al = icmp eq i32 %i.y, 0
  br i1 %i.al, label %.preheader, label %bb.h

.preheader:                                       ; preds = %._crit_edge115
  %i.am = load i32, ptr %i.a, align 8, !tbaa !37  ; 2 uses
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.lr.ph120.preheader, label %_ZNSt6vectorImSaImEED2Ev.exit84

.lr.ph120.preheader:                              ; preds = %.preheader
  %wide.trip.count129 = zext nneg i32 %i.am to i64
  br label %.lr.ph120

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.094.0143, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %i.ap = phi { ptr, i32 } [ %i.m, %.thread ], [ %i.ao, %bb.c ]
  %.sroa.15103.0140148 = phi ptr [ %i.g, %.thread ], [ %.sroa.15103.0141, %bb.c ]
  %.sroa.094.0142147 = phi ptr [ %i.f, %.thread ], [ %.sroa.094.0143, %bb.c ] ; 2 uses
  %i.aq = ptrtoint ptr %.sroa.15103.0140148 to i64
  %i.ar = ptrtoint ptr %.sroa.094.0142147 to i64
  %i.as = sub i64 %i.aq, %i.ar
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.094.0142147, i64 noundef %i.as) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit

._crit_edge112:                                   ; preds = %._crit_edge, %.preheader106.._crit_edge112_crit_edge
  %.pre-phi = phi i32 [ %.pre, %.preheader106.._crit_edge112_crit_edge ], [ %i.ag, %._crit_edge ] ; 2 uses
  %i.at = shl nsw i32 %.068114, 1                 ; 2 uses
  %i.au = icmp sgt i32 %.pre-phi, %i.y
  br i1 %i.au, label %.preheader106, label %._crit_edge115.loopexit, !llvm.loop !106

bb.e:                                             ; preds = %.lr.ph111, %._crit_edge
  %indvars.iv = phi i64 [ %i.aj, %.lr.ph111 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 4 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.next
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !50 ; 4 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.sroa.094.0143, i64 %indvars.iv.next
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !49 ; 2 uses
  %i.az = add nsw i32 %i.aw, %i.ae
  %i.ba = mul nsw i32 %i.az, %i.ab
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.bb ; 2 uses
  %i.bd = icmp sgt i32 %i.aw, 0
  br i1 %i.bd, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.be = add nuw nsw i32 %i.aw, 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.071108 = phi i32 [ %..071, %.lr.ph ], [ %i.be, %.lr.ph.preheader ] ; 2 uses
  %.072107 = phi i32 [ %.072., %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.bf = add nuw nsw i32 %.071108, %.072107
  %i.bg = lshr i32 %i.bf, 1                       ; 3 uses
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !49
  %.not = icmp ugt i64 %i.bj, %i.ay               ; 2 uses
  %.072. = select i1 %.not, i32 %.072107, i32 %i.bg ; 3 uses
  %..071 = select i1 %.not, i32 %i.bg, i32 %.071108 ; 2 uses
  %i.bk = add nuw nsw i32 %.072., 1
  %i.bl = icmp sgt i32 %..071, %i.bk
  br i1 %i.bl, label %.lr.ph, label %._crit_edge, !llvm.loop !107

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  %.072.lcssa = phi i32 [ 0, %bb.e ], [ %.072., %.lr.ph ] ; 3 uses
  %i.bm = sub nsw i32 %i.aw, %.072.lcssa          ; 2 uses
  %i.bn = zext nneg i32 %.072.lcssa to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !49
  %i.bq = sub i64 %i.ay, %i.bp                    ; 2 uses
  %i.br = shl nuw nsw i64 %indvars.iv.next, 1     ; 3 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.br
  store i32 %.072.lcssa, ptr %i.bs, align 4, !tbaa !50
  %i.bt = or disjoint i64 %i.br, 1                ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.bt
  store i32 %i.bm, ptr %i.bu, align 4, !tbaa !50
  %i.bv = add nsw i32 %i.bm, %i.ah
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.bw
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !49 ; 2 uses
  %i.bz = udiv i64 %i.bq, %i.by
  %i.ca = urem i64 %i.bq, %i.by
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.094.0143, i64 %i.br
  store i64 %i.bz, ptr %i.cb, align 8, !tbaa !49
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.094.0143, i64 %i.bt
  store i64 %i.ca, ptr %i.cc, align 8, !tbaa !49
  %i.cd = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.cd, label %bb.e, label %._crit_edge112, !llvm.loop !108

.lr.ph120:                                        ; preds = %.lr.ph120.preheader, %bb.g
  %indvars.iv126 = phi i64 [ 0, %.lr.ph120.preheader ], [ %indvars.iv.next127, %bb.g ] ; 4 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv126
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !50 ; 2 uses
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph120
  %i.ch = sitofp i32 %i.cf to double
  %i.ci = tail call double @sqrt(double noundef %i.ch) #14
  %i.cj = fptrunc double %i.ci to float           ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.sroa.094.0143, i64 %indvars.iv126
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !49
  %i.cm = icmp eq i64 %i.cl, 0
  %i.cn = fneg float %i.cj
  %i.co = select i1 %i.cm, float %i.cj, float %i.cn
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph120, %bb.f
  %.sink = phi float [ %i.co, %bb.f ], [ 0.000000e+00, %.lr.ph120 ]
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv126
  store float %.sink, ptr %i.cp, align 4, !tbaa !39
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1 ; 2 uses
  %exitcond130.not = icmp eq i64 %indvars.iv.next127, %wide.trip.count129
  br i1 %exitcond130.not, label %_ZNSt6vectorImSaImEED2Ev.exit84, label %.lr.ph120, !llvm.loop !109

bb.h:                                             ; preds = %._crit_edge115
  %i.cq = shl nuw i32 1, %i.y
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.cs = sext i32 %i.cq to i64                   ; 4 uses
  %i.ct = shl nsw i64 %i.cs, 2                    ; 3 uses
  %xtraiter = and i64 %.068.lcssa, 1
  %i.cu = icmp eq i64 %.068.lcssa, 1
  br i1 %i.cu, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.h
  %unroll_iter = and i64 %.068.lcssa, 4294967294
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.new
  %indvars.iv123 = phi i64 [ 0, %.new ], [ %indvars.iv.next124.1, %bb.i ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.i ]
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv123
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !50
  %i.cx = sext i32 %i.cw to i64
  %i.cy = load ptr, ptr %i.cr, align 8, !tbaa !66
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.cy, i64 %i.cx
  %i.da = trunc nuw nsw i64 %indvars.iv123 to i32
  %i.db = shl i32 %i.da, %i.y
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dc
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.sroa.094.0143, i64 %indvars.iv123
  %i.df = load i64, ptr %i.de, align 8, !tbaa !49
  %i.dg = mul i64 %i.df, %i.cs
  %i.dh = load ptr, ptr %i.cz, align 8, !tbaa !46
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.dg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.dd, ptr noundef nonnull align 4 dereferenceable(1) %i.di, i64 %i.ct, i1 false)
  %indvars.iv.next124 = or disjoint i64 %indvars.iv123, 1 ; 3 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.next124
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !50
  %i.dl = sext i32 %i.dk to i64
  %i.dm = load ptr, ptr %i.cr, align 8, !tbaa !66
  %i.dn = getelementptr inbounds nuw [24 x i8], ptr %i.dm, i64 %i.dl
  %i.do = trunc nuw nsw i64 %indvars.iv.next124 to i32
  %i.dp = shl i32 %i.do, %i.y
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dq
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %.sroa.094.0143, i64 %indvars.iv.next124
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !49
  %i.du = mul i64 %i.dt, %i.cs
  %i.dv = load ptr, ptr %i.dn, align 8, !tbaa !46
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %i.du
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.dr, ptr noundef nonnull align 4 dereferenceable(1) %i.dw, i64 %i.ct, i1 false)
  %indvars.iv.next124.1 = add nuw nsw i64 %indvars.iv123, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNSt6vectorImSaImEED2Ev.exit84.loopexit151.unr-lcssa, label %bb.i, !llvm.loop !110

_ZNSt6vectorImSaImEED2Ev.exit84.loopexit151.unr-lcssa: ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNSt6vectorImSaImEED2Ev.exit84, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNSt6vectorImSaImEED2Ev.exit84.loopexit151.unr-lcssa, %bb.h
  %indvars.iv123.epil.init = phi i64 [ 0, %bb.h ], [ %indvars.iv.next124.1, %_ZNSt6vectorImSaImEED2Ev.exit84.loopexit151.unr-lcssa ] ; 3 uses
  %lcmp.mod152 = trunc i64 %.068.lcssa to i1
  tail call void @llvm.assume(i1 %lcmp.mod152)
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv123.epil.init
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !50
  %i.dz = sext i32 %i.dy to i64
  %i.ea = load ptr, ptr %i.cr, align 8, !tbaa !66
  %i.eb = getelementptr inbounds nuw [24 x i8], ptr %i.ea, i64 %i.dz
  %i.ec = trunc nuw nsw i64 %indvars.iv123.epil.init to i32
  %i.ed = shl i32 %i.ec, %i.y
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ee
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.094.0143, i64 %indvars.iv123.epil.init
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !49
  %i.ei = mul i64 %i.eh, %i.cs
  %i.ej = load ptr, ptr %i.eb, align 8, !tbaa !46
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.ei
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ef, ptr noundef nonnull align 4 dereferenceable(1) %i.ek, i64 %i.ct, i1 false)
  br label %_ZNSt6vectorImSaImEED2Ev.exit84

_ZNSt6vectorImSaImEED2Ev.exit84:                  ; preds = %.epil.preheader, %_ZNSt6vectorImSaImEED2Ev.exit84.loopexit151.unr-lcssa, %bb.g, %.preheader
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #27
  %i.el = ptrtoint ptr %.sroa.15103.0141 to i64
  %i.em = ptrtoint ptr %.sroa.094.0143 to i64
  %i.en = sub i64 %i.el, %i.em
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.094.0143, i64 noundef %i.en) #27
  ret void

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.d, %bb.c
  %i.eo = phi { ptr, i32 } [ %i.ap, %bb.d ], [ %i.ao, %bb.c ]
  resume { ptr, i32 } %i.eo
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16ZnSphereCodecRecD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5faiss16ZnSphereCodecRecE, i64 16), ptr %0, align 8, !tbaa !41
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !67   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !46 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !47
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #27
  br label %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i:  ; preds = %bb.b, %.lr.ph.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !66
  br label %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.l = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !68
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #27
  br label %_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !65   ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !69
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit, %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !65   ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorImSaImEED2Ev.exit3, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !69
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit3

_ZNSt6vectorImSaImEED2Ev.exit3:                   ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.e
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16ZnSphereCodecRecD0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5faiss16ZnSphereCodecRecE, i64 16), ptr %0, align 8, !tbaa !41
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !67   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !46 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !47
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #27, !inline_history !70
  br label %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !66
  br label %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.l = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !68
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #27, !inline_history !70
  br label %_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit.i

_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit.i:       ; preds = %bb.c, %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !65   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !69
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #27, !inline_history !70
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.d, %_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !65   ; 3 uses
  %.not.i.i.i2.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i2.i, label %_ZN5faiss16ZnSphereCodecRecD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !69
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
end_hunk_0
begin_hunk_1_@_GLOBAL__sub_I_lattice_Zn.cpp:bb.a
  %i.a = alloca i64, align 8                      ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN5faiss12_GLOBAL__N_14combE, i8 0, i64 24, i1 false)
  store i32 100, ptr getelementptr inbounds nuw (i8, ptr @_ZN5faiss12_GLOBAL__N_14combE, i64 24), align 8, !tbaa !192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 0, ptr %i.a, align 8, !tbaa !49
  invoke void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(24) @_ZN5faiss12_GLOBAL__N_14combE, ptr null, i64 noundef 10000, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit.i.i unwind label %bb.b

_ZNSt6vectorImSaImEE6resizeEmRKm.exit.i.i:        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.b = load ptr, ptr @_ZN5faiss12_GLOBAL__N_14combE, align 8, !tbaa !65 ; 8 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 2 uses
  store i64 1, ptr %i.b, align 8, !tbaa !49
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN5faiss12_GLOBAL__N_14combE, i64 24), align 8, !tbaa !192 ; 4 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %.lr.ph.preheader.i.i, label %__cxx_global_var_init.exit

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt6vectorImSaImEE6resizeEmRKm.exit.i.i
  %i.f = zext nneg i32 %i.d to i64                ; 5 uses
  %i.g = zext nneg i32 %i.d to i35
  %i.h = shl nuw nsw i35 %i.g, 3
  %i.i = shl nuw nsw i64 %i.f, 3
  %i.j = add i64 %i.i, %i.c
  %i.k = add i64 %i.j, 8
  %i.l = shl nuw nsw i64 %i.f, 3
  %diff.check = icmp ult i32 %i.d, 4
  br label %.lr.ph.i.i

bb.b:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.n = load ptr, ptr @_ZN5faiss12_GLOBAL__N_14combE, align 8, !tbaa !65 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5faiss12_GLOBAL__N_14combE, i64 16), align 8, !tbaa !69
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.p, %i.q
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.r) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i:                ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.m

.lr.ph.i.i:                                       ; preds = %.loopexit, %.lr.ph.preheader.i.i
  %indvar2 = phi i64 [ %indvar.next3, %.loopexit ], [ 0, %.lr.ph.preheader.i.i ] ; 2 uses
  %indvar = phi i35 [ %indvar.next, %.loopexit ], [ 0, %.lr.ph.preheader.i.i ] ; 2 uses
  %indvars.iv8.i.i = phi i64 [ %indvars.iv.next9.i.i, %.loopexit ], [ 1, %.lr.ph.preheader.i.i ] ; 7 uses
  %indvars.iv6.i.i = phi i64 [ %indvars.iv.next7.i.i, %.loopexit ], [ 2, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.s = mul i64 %i.l, %indvar2                   ; 2 uses
  %i.t = add i64 %i.k, %i.s
  %sext = shl i64 %i.s, 29
  %i.u = ashr exact i64 %sext, 29
  %i.v = add i64 %i.u, %i.c
  %i.w = mul nuw nsw i64 %indvars.iv8.i.i, %i.f
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.w ; 5 uses
  store i64 1, ptr %i.x, align 8, !tbaa !49
  %i.y = add nsw i64 %indvars.iv8.i.i, -1         ; 3 uses
  %i.z = mul nuw nsw i64 %i.y, %i.f               ; 2 uses
  %i.aa = add nuw nsw i64 %i.z, 4294967295        ; 4 uses
  %invariant.gep.i.i = getelementptr [8 x i8], ptr %i.b, i64 %i.z ; 4 uses
  %min.iters.check = icmp samesign ult i64 %indvars.iv8.i.i, 18
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.i
  %i.ab = mul i35 %i.h, %indvar                   ; 2 uses
  %i.ac = trunc i64 %i.y to i35
  %mul.result = shl i35 %i.ac, 3
  %i.ad = add i35 %i.ab, %mul.result
  %i.ae = icmp slt i35 %i.ad, %i.ab
  %i.af = icmp ugt i64 %i.y, 4294967295
  %i.ag = or i1 %i.ae, %i.af
  br i1 %i.ag, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ah = sub i64 %i.v, %i.t
  %diff.check4 = icmp ugt i64 %i.ah, -32
  %conflict.rdx = or i1 %diff.check, %diff.check4
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %indvars.iv8.i.i, 8589934588   ; 3 uses
  %i.ai = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = or disjoint i64 %index, 1               ; 3 uses
  %i.ak = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.aj ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 16
  %wide.load = load <2 x i64>, ptr %i.ak, align 8, !tbaa !49
  %wide.load5 = load <2 x i64>, ptr %i.al, align 8, !tbaa !49
  %i.am = add nuw nsw i64 %i.aa, %i.aj
  %i.an = shl i64 %i.am, 32
  %i.ao = ashr exact i64 %i.an, 29
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %wide.load6 = load <2 x i64>, ptr %i.ap, align 8, !tbaa !49
  %wide.load7 = load <2 x i64>, ptr %i.aq, align 8, !tbaa !49
  %i.ar = add <2 x i64> %wide.load6, %wide.load
  %i.as = add <2 x i64> %wide.load7, %wide.load5
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.aj ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store <2 x i64> %i.ar, ptr %i.at, align 8, !tbaa !49
  store <2 x i64> %i.as, ptr %i.au, align 8, !tbaa !49
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !188

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %indvars.iv8.i.i, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %vector.scevcheck ], [ 1, %.lr.ph.i.i ], [ %i.ai, %middle.block ] ; 6 uses
  %i.aw = and i64 %indvars.iv6.i.i, 1
  %lcmp.mod.not.not = icmp eq i64 %i.aw, 0
  br i1 %lcmp.mod.not.not, label %scalar.ph.prol, label %scalar.ph.prol.loopexit

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %gep.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i.ph
  %i.ax = load i64, ptr %gep.i.i.prol, align 8, !tbaa !49
  %i.ay = add nuw nsw i64 %i.aa, %indvars.iv.i.i.ph
  %sext.i.i.prol = shl i64 %i.ay, 32
  %i.az = ashr exact i64 %sext.i.i.prol, 29
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.az
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !49
  %i.bc = add i64 %i.bb, %i.ax
  %gep17.i.i.prol = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.i.i.ph
  store i64 %i.bc, ptr %gep17.i.i.prol, align 8, !tbaa !49
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ]
  %i.bd = icmp eq i64 %indvars.iv8.i.i, %indvars.iv.i.i.ph
  br i1 %i.bd, label %.loopexit, label %scalar.ph

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next9.i.i = add nuw nsw i64 %indvars.iv8.i.i, 1 ; 2 uses
  %indvars.iv.next7.i.i = add nuw nsw i64 %indvars.iv6.i.i, 1
  %exitcond14.not.i.i = icmp eq i64 %indvars.iv.next9.i.i, %i.f
  %indvar.next = add i35 %indvar, 1
  %indvar.next3 = add i64 %indvar2, 1
  br i1 %exitcond14.not.i.i, label %__cxx_global_var_init.exit, label %.lr.ph.i.i, !llvm.loop !189

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %scalar.ph ], [ %indvars.iv.i.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
  %i.be = load i64, ptr %gep.i.i, align 8, !tbaa !49
  %i.bf = add nuw nsw i64 %i.aa, %indvars.iv.i.i
  %sext.i.i = shl i64 %i.bf, 32
  %i.bg = ashr exact i64 %sext.i.i, 29
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bg
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !49
  %i.bj = add i64 %i.bi, %i.be
  %gep17.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.i.i
  store i64 %i.bj, ptr %gep17.i.i, align 8, !tbaa !49
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %gep.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.next.i.i
  %i.bk = load i64, ptr %gep.i.i.1, align 8, !tbaa !49
  %i.bl = add nuw nsw i64 %i.aa, %indvars.iv.next.i.i
  %sext.i.i.1 = shl i64 %i.bl, 32
  %i.bm = ashr exact i64 %sext.i.i.1, 29
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bm
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !49
  %i.bp = add i64 %i.bo, %i.bk
  %gep17.i.i.1 = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.next.i.i
  store i64 %i.bp, ptr %gep17.i.i.1, align 8, !tbaa !49
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, %indvars.iv6.i.i
  br i1 %exitcond.not.i.i.1, label %.loopexit, label %scalar.ph, !llvm.loop !190

__cxx_global_var_init.exit:                       ; preds = %.loopexit, %_ZNSt6vectorImSaImEE6resizeEmRKm.exit.i.i
  %i.bq = call i32 @__cxa_atexit(ptr nonnull @_ZN5faiss12_GLOBAL__N_14CombD2Ev, ptr nonnull @_ZN5faiss12_GLOBAL__N_14combE, ptr nonnull @__dso_handle) #14 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #20

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { convergent nounwind }
attributes #16 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold noreturn }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { builtin nounwind }
attributes #28 = { noreturn }
attributes #29 = { builtin allocsize(0) }
attributes #30 = { noreturn nounwind }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !34}
!1 = distinct !{!1, !34}
!2 = distinct !{!2, !34}
!3 = distinct !{!3, !34}
!4 = distinct !{!4, !34}
!5 = !{i32 7, !"openmp", i32 51}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"any pointer", !10, i64 0}
!15 = !{!"p1 float", !14, i64 0}
!16 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !15, i64 0, !15, i64 8, !15, i64 16}
!17 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !16, i64 0}
!18 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !17, i64 0}
!19 = !{!"_ZTSSt6vectorIfSaIfEE", !18, i64 0}
!20 = !{!"_ZTSN5faiss14ZnSphereSearchE", !11, i64 0, !11, i64 4, !11, i64 8, !19, i64 16}
!21 = !{!20, !11, i64 8}
!22 = !{!"p1 _ZTSN5faiss13ZnSphereCodec11CodeSegmentE", !14, i64 0}
!23 = !{!"_ZTSNSt12_Vector_baseIN5faiss13ZnSphereCodec11CodeSegmentESaIS2_EE17_Vector_impl_dataE", !22, i64 0, !22, i64 8, !22, i64 16}
!24 = !{!23, !22, i64 0}
!25 = !{!"p1 _ZTSN5faiss6RepeatE", !14, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseIN5faiss6RepeatESaIS1_EE17_Vector_impl_dataE", !25, i64 0, !25, i64 8, !25, i64 16}
!27 = !{!"_ZTSNSt12_Vector_baseIN5faiss6RepeatESaIS1_EE12_Vector_implE", !26, i64 0}
!28 = !{!"_ZTSSt12_Vector_baseIN5faiss6RepeatESaIS1_EE", !27, i64 0}
!29 = !{!"_ZTSSt6vectorIN5faiss6RepeatESaIS1_EE", !28, i64 0}
!30 = !{!"_ZTSN5faiss7RepeatsE", !11, i64 0, !29, i64 8}
!31 = !{!"long", !10, i64 0}
!32 = !{!"_ZTSN5faiss13ZnSphereCodec11CodeSegmentE", !30, i64 0, !31, i64 32, !11, i64 40}
!33 = !{!32, !31, i64 32}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!32, !11, i64 40}
!36 = !{!"_ZTSN5faiss17EnumeratedVectorsE", !31, i64 8, !11, i64 16}
!37 = !{!36, !11, i64 16}
!38 = !{!"float", !10, i64 0}
!39 = !{!38, !38, i64 0}
!40 = !{!"vtable pointer", !9, i64 0}
!41 = !{!40, !40, i64 0}
!42 = !{!23, !22, i64 8}
!43 = !{!26, !25, i64 0}
!44 = !{!26, !25, i64 16}
!45 = !{!23, !22, i64 16}
!46 = !{!16, !15, i64 0}
!47 = !{!16, !15, i64 16}
!48 = !{ptr @_ZN5faiss13ZnSphereCodecD2Ev}
!49 = !{!31, !31, i64 0}
!50 = !{!11, !11, i64 0}
!51 = !{!"p1 long", !14, i64 0}
!52 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !51, i64 0, !51, i64 8, !51, i64 16}
!53 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !52, i64 0}
!54 = !{!"_ZTSSt12_Vector_baseImSaImEE", !53, i64 0}
!55 = !{!"_ZTSSt6vectorImSaImEE", !54, i64 0}
!56 = !{!"p1 _ZTSSt6vectorIfSaIfEE", !14, i64 0}
!57 = !{!"_ZTSNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EE17_Vector_impl_dataE", !56, i64 0, !56, i64 8, !56, i64 16}
!58 = !{!"_ZTSNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EE12_Vector_implE", !57, i64 0}
!59 = !{!"_ZTSSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EE", !58, i64 0}
!60 = !{!"_ZTSSt6vectorIS_IfSaIfEESaIS1_EE", !59, i64 0}
!61 = !{!"_ZTSN5faiss16ZnSphereCodecRecE", !36, i64 0, !11, i64 20, !11, i64 24, !11, i64 28, !55, i64 32, !55, i64 56, !11, i64 80, !60, i64 88}
!62 = !{!61, !11, i64 20}
!63 = !{!61, !11, i64 24}
!64 = !{!61, !11, i64 80}
!65 = !{!52, !51, i64 0}
!66 = !{!57, !56, i64 0}
!67 = !{!57, !56, i64 8}
!68 = !{!57, !56, i64 16}
!69 = !{!52, !51, i64 16}
!70 = !{ptr @_ZN5faiss16ZnSphereCodecRecD2Ev}
!71 = !{!"_ZTSNSt12_Vector_baseIN5faiss13ZnSphereCodec11CodeSegmentESaIS2_EE12_Vector_implE", !23, i64 0}
!72 = !{!"_ZTSSt12_Vector_baseIN5faiss13ZnSphereCodec11CodeSegmentESaIS2_EE", !71, i64 0}
!73 = !{!"_ZTSSt6vectorIN5faiss13ZnSphereCodec11CodeSegmentESaIS2_EE", !72, i64 0}
!74 = !{!"_ZTSN5faiss13ZnSphereCodecE", !36, i64 0, !20, i64 24, !73, i64 64, !31, i64 88, !31, i64 96}
!75 = !{!"bool", !10, i64 0}
!76 = !{!"_ZTSN5faiss16ZnSphereCodecAltE", !74, i64 0, !75, i64 104, !61, i64 112}
!77 = !{!76, !75, i64 104}
!78 = !{i8 0, i8 2}
!79 = !{}
!80 = !{!52, !51, i64 8}
!81 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!82 = !{!"llvm.loop.unroll.disable"}
!83 = !{!30, !11, i64 0}
!84 = !{!26, !25, i64 8}
!85 = !{!"_ZTSN5faiss6RepeatE", !38, i64 0, !11, i64 4}
!86 = !{!85, !38, i64 0}
!87 = !{!85, !11, i64 4}
!88 = !{!25, !25, i64 0}
!89 = !{!15, !15, i64 0}
!90 = !{!51, !51, i64 0}
!91 = !{i64 2, i64 -1, i64 -1, i1 true}
!92 = !{!91}
!93 = !{!"llvm.loop.isvectorized", i32 1}
!94 = !{!"llvm.loop.unroll.runtime.disable"}
!95 = !{!20, !11, i64 0}
!96 = !{!"p1 omnipotent char", !14, i64 0}
!97 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !96, i64 0}
!98 = !{!97, !96, i64 0}
!99 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !97, i64 0, !31, i64 8, !10, i64 16}
!100 = !{!99, !31, i64 8}
!101 = !{!10, !10, i64 0}
!102 = !{!99, !96, i64 0}
!103 = !{!16, !15, i64 8}
!104 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!105 = !{!36, !31, i64 8}
!106 = distinct !{!106, !34}
!107 = distinct !{!107, !34}
!108 = distinct !{!108, !34}
!109 = distinct !{!109, !34}
!110 = distinct !{!110, !34}
!111 = distinct !{!111, !82}
!112 = distinct !{!112, !34}
!113 = distinct !{!113, !82}
!114 = distinct !{!114, !34}
!115 = distinct !{!115, !34}
!116 = distinct !{!116, !34}
!117 = distinct !{!117, !34}
!118 = distinct !{!118, !34}
!119 = distinct !{!119, !34}
!120 = distinct !{!120, !82}
!121 = distinct !{!121, !34}
!122 = distinct !{!122, !34}
!123 = distinct !{!123, !34}
!124 = distinct !{!124, !34, !93, !94}
!125 = distinct !{!125, !34, !94, !93}
!126 = distinct !{null}
!127 = distinct !{!127, !34}
!128 = distinct !{!128, !34}
!129 = !{!20, !11, i64 4}
!130 = distinct !{!130, !34}
!131 = distinct !{!131, !34}
!132 = distinct !{!132, !34}
!133 = distinct !{!133, !34}
!134 = distinct !{!134, !34, !93, !94}
!135 = distinct !{!135, !34}
!136 = distinct !{!136, !34}
!137 = distinct !{!137, !34}
!138 = distinct !{!138, !34, !93}
!139 = distinct !{!139, !82}
!140 = distinct !{!140, !34}
!141 = distinct !{!141, !34}
!142 = distinct !{!142, !34}
!143 = distinct !{!143, !34}
!144 = distinct !{!144, !34}
!145 = distinct !{!145, !34}
!146 = distinct !{!146, !34}
!147 = distinct !{!147, !34}
!148 = distinct !{!148, !34}
!149 = distinct !{!149, !34}
!150 = distinct !{!150, !34}
!151 = distinct !{!151, !34}
!152 = distinct !{!152, !34}
end_hunk_1
