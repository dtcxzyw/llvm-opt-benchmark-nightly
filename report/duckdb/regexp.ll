inline.NumInlined: 1249
inline.NumDeleted: 582
begin_hunk_0_@_ZN10duckdb_re26Regexp13LiteralStringEPiiNS0_10ParseFlagsE:bb.a
  br i1 %i.ay, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.i
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !3
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.i
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !3
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.next.i
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.next.i
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !3
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.next.i.1
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !3
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.next.i.1
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !3
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.next.i.2
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !3
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.next.i.2
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !3
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.i.3, %i.am
  br i1 %exitcond.not.3, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !65

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block
  tail call void @_ZdaPv(ptr noundef nonnull %i.y) #27
  br label %_ZN10duckdb_re26Regexp15AddRuneToStringEi.exit

_ZN10duckdb_re26Regexp15AddRuneToStringEi.exit:   ; preds = %bb.f, %bb.g, %._crit_edge.i
  %i.bl = phi ptr [ %i.ae, %bb.f ], [ %i.al, %._crit_edge.i ], [ %i.y, %bb.g ] ; 2 uses
  %i.bm = add nuw nsw i32 %i.z, 1                 ; 2 uses
  %i.bn = zext nneg i32 %i.z to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bn
  store i32 %i.ac, ptr %i.bo, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond21.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond21.not, label %..loopexit_crit_edge, label %bb.e, !llvm.loop !66

..loopexit_crit_edge:                             ; preds = %_ZN10duckdb_re26Regexp15AddRuneToStringEi.exit
  store i32 %i.bm, ptr %i.w, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %bb.d, %bb.b
  %.015 = phi ptr [ %i.b, %bb.b ], [ %i.j, %bb.d ], [ %i.q, %..loopexit_crit_edge ]
  ret ptr %.015
}

; Function Attrs: mustprogress uwtable
define hidden noalias noundef nonnull ptr @_ZN10duckdb_re26Regexp12NewCharClassEPNS_9CharClassENS0_10ParseFlagsE(ptr noundef %0, i32 noundef %1) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30 ; 7 uses
  store i8 20, ptr %i.a, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 0, ptr %i.b, align 1, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.d = trunc i32 %1 to i16
  store i16 %i.d, ptr %i.c, align 2, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i16 1, ptr %i.e, align 4, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(34) %i.f, i8 0, i64 34, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %0, ptr %i.g, align 8, !tbaa !33
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN10duckdb_re26Regexp4SwapEPS0_(ptr noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr noundef captures(none) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = alloca [40 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(40) %1, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %1, ptr noundef nonnull align 16 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN10duckdb_re26Regexp5EqualEPS0_S1_(ptr noundef readonly captures(address) %0, ptr noundef readonly captures(address) %1) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %0, %1
  br label %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EED2Ev.exit59

bb.c:                                             ; preds = %bb.a
  %i.d = tail call fastcc noundef zeroext i1 @_ZN10duckdb_re2L8TopEqualEPNS_6RegexpES1_(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br i1 %i.d, label %bb.d, label %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EED2Ev.exit59

bb.d:                                             ; preds = %bb.c
  %i.e = load i8, ptr %0, align 8, !tbaa !7       ; 2 uses
  %i.f = add i8 %i.e, -5
  %switch = icmp ult i8 %i.f, 7
  br i1 %switch, label %.preheader, label %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EED2Ev.exit59

.preheader:                                       ; preds = %bb.d, %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE6resizeEm.exit
  %i.g = phi i8 [ %.pre, %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE6resizeEm.exit ], [ %i.e, %bb.d ]
  %.sroa.0.0 = phi ptr [ %.sroa.0.4, %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE6resizeEm.exit ], [ null, %bb.d ] ; 6 uses
  %.sroa.16.0 = phi ptr [ %.sroa.16.3, %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE6resizeEm.exit ], [ null, %bb.d ] ; 4 uses
  %.sroa.28.0 = phi ptr [ %.sroa.28.3, %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE6resizeEm.exit ], [ null, %bb.d ] ; 4 uses
  %.035 = phi ptr [ %.237, %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE6resizeEm.exit ], [ %0, %bb.d ] ; 4 uses
  %.032 = phi ptr [ %.234, %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE6resizeEm.exit ], [ %1, %bb.d ] ; 4 uses
  switch i8 %i.g, label %.loopexit [
    i8 6, label %bb.f
    i8 5, label %bb.f
    i8 7, label %bb.t
    i8 8, label %bb.t
    i8 9, label %bb.t
    i8 10, label %bb.t
    i8 11, label %bb.t
  ]

bb.e:                                             ; preds = %bb.t
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.f:                                             ; preds = %.preheader, %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %.035, i64 6 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !tbaa !15   ; 2 uses
  %.not130.not = icmp eq i16 %i.j, 0
  br i1 %.not130.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %.035, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.032, i64 6
  %i.m = getelementptr inbounds nuw i8, ptr %.032, i64 8 ; 2 uses
  br label %bb.g

.loopexit109:                                     ; preds = %bb.g, %_ZNKSt6vectorIPN10duckdb_re26RegexpESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIPN10duckdb_re26RegexpESaIS2_EE12_M_check_lenEmPKc.exit.i.i45
  %.sroa.0.2.ph = phi ptr [ %.sroa.0.1131, %bb.g ], [ %.sroa.0.1131, %_ZNKSt6vectorIPN10duckdb_re26RegexpESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.0.6, %_ZNKSt6vectorIPN10duckdb_re26RegexpESaIS2_EE12_M_check_lenEmPKc.exit.i.i45 ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp:                               ; preds = %bb.l, %bb.q
  %.sroa.0.2.ph110 = phi ptr [ %.sroa.0.6, %bb.q ], [ %.sroa.0.1131, %bb.l ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.g:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE9push_backERKS2_.exit53
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE9push_backERKS2_.exit53 ] ; 3 uses
  %i.n = phi i16 [ %i.j, %.lr.ph ], [ %i.bc, %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE9push_backERKS2_.exit53 ]
  %.sroa.28.1133 = phi ptr [ %.sroa.28.0, %.lr.ph ], [ %.sroa.28.5, %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE9push_backERKS2_.exit53 ] ; 3 uses
  %.sroa.16.1132 = phi ptr [ %.sroa.16.0, %.lr.ph ], [ %.sroa.16.5, %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE9push_backERKS2_.exit53 ] ; 3 uses
  %.sroa.0.1131 = phi ptr [ %.sroa.0.0, %.lr.ph ], [ %.sroa.0.7, %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE9push_backERKS2_.exit53 ] ; 9 uses
  %i.o = icmp ult i16 %i.n, 2
  %i.p = load ptr, ptr %i.k, align 8
  %.0.i = select i1 %i.o, ptr %i.k, ptr %i.p
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !42   ; 3 uses
  %i.s = load i16, ptr %i.l, align 2, !tbaa !15
  %i.t = icmp ult i16 %i.s, 2
  %i.u = load ptr, ptr %i.m, align 8
  %.0.i42 = select i1 %i.t, ptr %i.m, ptr %i.u
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.0.i42, i64 %indvars.iv
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !42   ; 3 uses
  %i.x = invoke fastcc noundef zeroext i1 @_ZN10duckdb_re2L8TopEqualEPNS_6RegexpES1_(ptr noundef %i.r, ptr noundef %i.w)
          to label %bb.h unwind label %.loopexit109

bb.h:                                             ; preds = %bb.g
  br i1 %i.x, label %bb.i, label %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE6resizeEm.exit.thread

bb.i:                                             ; preds = %bb.h
  %.not.i = icmp eq ptr %.sroa.16.1132, %.sroa.28.1133
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.r, ptr %.sroa.16.1132, align 8, !tbaa !42
  br label %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE9push_backERKS2_.exit

bb.k:                                             ; preds = %bb.i
  %i.y = ptrtoint ptr %.sroa.28.1133 to i64
  %i.z = ptrtoint ptr %.sroa.0.1131 to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 5 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775800
  br i1 %i.ab, label %bb.l, label %_ZNKSt6vectorIPN10duckdb_re26RegexpESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #29
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.l
  unreachable

_ZNKSt6vectorIPN10duckdb_re26RegexpESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.ac = ashr exact i64 %i.aa, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 1)
  %i.ad = add nsw i64 %.sroa.speculated.i.i.i, %i.ac ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ac
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 1152921504606846975)
  %i.ag = select i1 %i.ae, i64 1152921504606846975, i64 %i.af ; 2 uses
  %i.ah = shl nuw nsw i64 %i.ag, 3
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #30
          to label %.noexc43 unwind label %.loopexit109 ; 4 uses

.noexc43:                                         ; preds = %_ZNKSt6vectorIPN10duckdb_re26RegexpESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 %i.aa ; 2 uses
  store ptr %i.r, ptr %i.aj, align 8, !tbaa !42
  %i.ak = icmp sgt i64 %i.aa, 0
  br i1 %i.ak, label %bb.m, label %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.m:                                             ; preds = %.noexc43
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ai, ptr align 8 %.sroa.0.1131, i64 %i.aa, i1 false)
  br label %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.m, %.noexc43
  %.not.i17.i.i = icmp eq ptr %.sroa.0.1131, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0.1131) #27
  br label %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ag
  br label %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.j
  %.sroa.0.6 = phi ptr [ %i.ai, %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.0.1131, %bb.j ] ; 7 uses
  %.pn108 = phi ptr [ %i.aj, %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.16.1132, %bb.j ] ; 2 uses
  %.sroa.28.4 = phi ptr [ %i.al, %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.28.1133, %bb.j ] ; 3 uses
  %.sroa.16.4 = getelementptr inbounds nuw i8, ptr %.pn108, i64 8 ; 2 uses
  %.not.i44 = icmp eq ptr %.sroa.16.4, %.sroa.28.4
  br i1 %.not.i44, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE9push_backERKS2_.exit
  store ptr %i.w, ptr %.sroa.16.4, align 8, !tbaa !42
  %i.am = getelementptr inbounds nuw i8, ptr %.pn108, i64 16
  br label %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE9push_backERKS2_.exit53

bb.p:                                             ; preds = %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE9push_backERKS2_.exit
  %i.an = ptrtoint ptr %.sroa.28.4 to i64
  %i.ao = ptrtoint ptr %.sroa.0.6 to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 5 uses
  %i.aq = icmp eq i64 %i.ap, 9223372036854775800
  br i1 %i.aq, label %bb.q, label %_ZNKSt6vectorIPN10duckdb_re26RegexpESaIS2_EE12_M_check_lenEmPKc.exit.i.i45

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #29
          to label %.noexc51.a unwind label %.loopexit.split-lp

.noexc51.a:                                       ; preds = %bb.q
  unreachable

_ZNKSt6vectorIPN10duckdb_re26RegexpESaIS2_EE12_M_check_lenEmPKc.exit.i.i45: ; preds = %bb.p
  %i.ar = ashr exact i64 %i.ap, 3                 ; 3 uses
  %.sroa.speculated.i.i.i46 = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.as = add nsw i64 %.sroa.speculated.i.i.i46, %i.ar ; 2 uses
  %i.at = icmp ult i64 %i.as, %i.ar
  %i.au = tail call i64 @llvm.umin.i64(i64 %i.as, i64 1152921504606846975)
  %i.av = select i1 %i.at, i64 1152921504606846975, i64 %i.au ; 2 uses
  %i.aw = shl nuw nsw i64 %i.av, 3
  %i.ax = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #30
          to label %.noexc52 unwind label %.loopexit109 ; 4 uses

.noexc52:                                         ; preds = %_ZNKSt6vectorIPN10duckdb_re26RegexpESaIS2_EE12_M_check_lenEmPKc.exit.i.i45
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 %i.ap ; 2 uses
  store ptr %i.w, ptr %i.ay, align 8, !tbaa !42
  %i.az = icmp sgt i64 %i.ap, 0
  br i1 %i.az, label %bb.r, label %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i48

bb.r:                                             ; preds = %.noexc52
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ax, ptr align 8 %.sroa.0.6, i64 %i.ap, i1 false)
  br label %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i48

_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i48: ; preds = %bb.r, %.noexc52
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.not.i17.i.i49 = icmp eq ptr %.sroa.0.6, null
  br i1 %.not.i17.i.i49, label %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i50, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i48
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0.6) #27
  br label %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i50

_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i50: ; preds = %bb.s, %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i48
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.av
  br label %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE9push_backERKS2_.exit53

_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE9push_backERKS2_.exit53: ; preds = %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i50, %bb.o
  %.sroa.0.7 = phi ptr [ %i.ax, %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i50 ], [ %.sroa.0.6, %bb.o ] ; 2 uses
  %.sroa.16.5 = phi ptr [ %i.ba, %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i50 ], [ %i.am, %bb.o ] ; 2 uses
  %.sroa.28.5 = phi ptr [ %i.bb, %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i50 ], [ %.sroa.28.4, %bb.o ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bc = load i16, ptr %i.i, align 2, !tbaa !15  ; 2 uses
  %i.bd = zext i16 %i.bc to i64
  %.not = icmp samesign ult i64 %indvars.iv.next, %i.bd
  br i1 %.not, label %bb.g, label %.loopexit, !llvm.loop !67

bb.t:                                             ; preds = %.preheader, %.preheader, %.preheader, %.preheader, %.preheader
  %i.be = getelementptr inbounds nuw i8, ptr %.035, i64 6
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !15
  %i.bg = icmp ult i16 %i.bf, 2
  %i.bh = getelementptr inbounds nuw i8, ptr %.035, i64 8 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8
  %.0.i54.a = select i1 %i.bg, ptr %i.bh, ptr %i.bi
  %i.bj = load ptr, ptr %.0.i54.a, align 8, !tbaa !42 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.032, i64 6
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !15
  %i.bm = icmp ult i16 %i.bl, 2
  %i.bn = getelementptr inbounds nuw i8, ptr %.032, i64 8 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8
  %.0.i55 = select i1 %i.bm, ptr %i.bn, ptr %i.bo
  %i.bp = load ptr, ptr %.0.i55, align 8, !tbaa !42 ; 2 uses
  %i.bq = invoke fastcc noundef zeroext i1 @_ZN10duckdb_re2L8TopEqualEPNS_6RegexpES1_(ptr noundef %i.bj, ptr noundef %i.bp)
          to label %bb.u unwind label %bb.e

bb.u:                                             ; preds = %bb.t
  br i1 %i.bq, label %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE6resizeEm.exit, label %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE6resizeEm.exit.thread, !llvm.loop !68

.loopexit:                                        ; preds = %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE9push_backERKS2_.exit53, %bb.f, %.preheader
  %.sroa.0.3 = phi ptr [ %.sroa.0.0, %.preheader ], [ %.sroa.0.0, %bb.f ], [ %.sroa.0.7, %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE9push_backERKS2_.exit53 ] ; 6 uses
  %.sroa.16.2 = phi ptr [ %.sroa.16.0, %.preheader ], [ %.sroa.16.0, %bb.f ], [ %.sroa.16.5, %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE9push_backERKS2_.exit53 ] ; 4 uses
  %.sroa.28.2 = phi ptr [ %.sroa.28.0, %.preheader ], [ %.sroa.28.0, %bb.f ], [ %.sroa.28.5, %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE9push_backERKS2_.exit53 ]
  %i.br = ptrtoint ptr %.sroa.16.2 to i64
  %i.bs = ptrtoint ptr %.sroa.0.3 to i64
  %i.bt = sub i64 %i.br, %i.bs                    ; 2 uses
  %i.bu = icmp eq ptr %.sroa.16.2, %.sroa.0.3
  br i1 %i.bu, label %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE6resizeEm.exit.thread, label %bb.v

bb.v:                                             ; preds = %.loopexit
  %i.bv = icmp ult i64 %i.bt, 9
  br i1 %i.bv, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #29
          to label %.noexc61 unwind label %.thread100

.noexc61:                                         ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.bw = getelementptr i8, ptr %.sroa.0.3, i64 %i.bt ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bw, i64 -8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !42
  %i.bz = getelementptr i8, ptr %i.bw, i64 -16    ; 3 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !42
  %.not.i.i = icmp eq ptr %.sroa.16.2, %i.bz
  %spec.select = select i1 %.not.i.i, ptr %.sroa.16.2, ptr %i.bz
  br label %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE6resizeEm.exit

_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE6resizeEm.exit: ; preds = %bb.x, %bb.u
  %.sroa.0.4 = phi ptr [ %.sroa.0.0, %bb.u ], [ %.sroa.0.3, %bb.x ]
  %.sroa.16.3 = phi ptr [ %.sroa.16.0, %bb.u ], [ %spec.select, %bb.x ]
  %.sroa.28.3 = phi ptr [ %.sroa.28.0, %bb.u ], [ %.sroa.28.2, %bb.x ]
  %.237 = phi ptr [ %i.bj, %bb.u ], [ %i.ca, %bb.x ] ; 2 uses
  %.234 = phi ptr [ %i.bp, %bb.u ], [ %i.by, %bb.x ]
  %.pre = load i8, ptr %.237, align 8, !tbaa !7
  br label %.preheader

.thread100:                                       ; preds = %bb.w
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %.loopexit109, %.loopexit.split-lp, %bb.e
  %.sroa.0.5 = phi ptr [ %.sroa.0.0, %bb.e ], [ %.sroa.0.2.ph, %.loopexit109 ], [ %.sroa.0.2.ph110, %.loopexit.split-lp ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %i.h, %bb.e ], [ %lpad.loopexit, %.loopexit109 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i57 = icmp eq ptr %.sroa.0.5, null
  br i1 %.not.i.i.i57, label %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %.thread100, %bb.y
  %.pn105 = phi { ptr, i32 } [ %i.cb, %.thread100 ], [ %.pn, %bb.y ]
  %.sroa.0.5104 = phi ptr [ %.sroa.0.3, %.thread100 ], [ %.sroa.0.5, %bb.y ]
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0.5104) #27
  br label %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EED2Ev.exit

_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EED2Ev.exit: ; preds = %bb.y, %bb.z
  %.pn106 = phi { ptr, i32 } [ %.pn, %bb.y ], [ %.pn105, %bb.z ]
  resume { ptr, i32 } %.pn106

_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE6resizeEm.exit.thread: ; preds = %bb.u, %.loopexit, %bb.h
  %.sroa.0.491 = phi ptr [ %.sroa.0.1131, %bb.h ], [ %.sroa.0.0, %bb.u ], [ %.sroa.0.3, %.loopexit ] ; 2 uses
  %.4 = phi i1 [ false, %bb.h ], [ false, %bb.u ], [ true, %.loopexit ] ; 2 uses
  %.not.i.i.i58 = icmp eq ptr %.sroa.0.491, null
  br i1 %.not.i.i.i58, label %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EED2Ev.exit59, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE6resizeEm.exit.thread
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0.491) #27
  br label %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EED2Ev.exit59

_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EED2Ev.exit59: ; preds = %bb.aa, %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE6resizeEm.exit.thread, %bb.d, %bb.c, %bb.b
  %.5 = phi i1 [ %i.c, %bb.b ], [ false, %bb.c ], [ true, %bb.d ], [ %.4, %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE6resizeEm.exit.thread ], [ %.4, %bb.aa ]
  ret i1 %.5
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN10duckdb_re2L8TopEqualEPNS_6RegexpES1_(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.LogMessage, align 8          ; 11 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !7       ; 2 uses
  %i.b = load i8, ptr %1, align 8, !tbaa !7
  %.not = icmp eq i8 %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  switch i8 %i.a, label %bb.t [
    i8 1, label %bb.w
    i8 2, label %bb.w
    i8 12, label %bb.w
    i8 13, label %bb.w
    i8 14, label %bb.w
    i8 15, label %bb.w
    i8 16, label %bb.w
    i8 17, label %bb.w
    i8 18, label %bb.w
    i8 19, label %bb.c
    i8 3, label %bb.d
    i8 4, label %bb.f
    i8 6, label %bb.i
    i8 5, label %bb.i
    i8 7, label %bb.j
    i8 8, label %bb.j
    i8 9, label %bb.j
    i8 10, label %bb.k
    i8 11, label %bb.n
    i8 21, label %bb.p
    i8 20, label %bb.q
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.d = load i16, ptr %i.c, align 2, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.f = load i16, ptr %i.e, align 2, !tbaa !13
  %i.g = xor i16 %i.f, %i.d
  %i.h = and i16 %i.g, 8192
  %i.i = icmp eq i16 %i.h, 0
  br label %bb.w

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !33
  %i.n = icmp eq i32 %i.k, %i.m
  br i1 %i.n, label %bb.e, label %bb.w

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.p = load i16, ptr %i.o, align 2, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.r = load i16, ptr %i.q, align 2, !tbaa !13
  %i.s = xor i16 %i.r, %i.p
  %i.t = and i16 %i.s, 1
  %i.u = icmp eq i16 %i.t, 0
  br label %bb.w

bb.f:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i32, ptr %i.v, align 8, !tbaa !33   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
end_hunk_0
begin_hunk_1_@_ZN10duckdb_re216CharClassBuilder11RemoveAboveEi:bb.a
  %i.ae = load i64, ptr %i.s, align 8, !tbaa !49
  %i.af = add i64 %i.ae, -1
  store i64 %i.af, ptr %i.s, align 8, !tbaa !49
  %i.ag = xor i32 %.sroa.8.0.extract.trunc, -1
  %.neg = add i32 %i.ag, %.sroa.0.0.extract.trunc
  %i.ah = load i32, ptr %i.t, align 8, !tbaa !128
  %i.ai = add i32 %.neg, %i.ah                    ; 2 uses
  store i32 %i.ai, ptr %i.t, align 8, !tbaa !128
  %.not = icmp slt i32 %1, %.sroa.0.0.extract.trunc
  %.pre34 = load ptr, ptr %i.p, align 8, !tbaa !43 ; 4 uses
  br i1 %.not, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not23.i.i.i = icmp eq ptr %.pre34, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i14

.lr.ph.i.i.i14:                                   ; preds = %bb.j, %.lr.ph.i.i.i14
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i14 ], [ %.pre34, %bb.j ] ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !140
  %i.al = icmp slt i32 %1, %i.ak                  ; 2 uses
  %.in.v.i.i.i = select i1 %i.al, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !43 ; 2 uses
  %.not.i.i.i15 = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i15, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i14, !llvm.loop !141

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i14
  br i1 %i.al, label %._crit_edge.thread.i.i.i, label %bb.l

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %bb.j
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.q, %bb.j ] ; 4 uses
  %i.am = load ptr, ptr %i.u, align 8, !tbaa !126
  %i.an = icmp eq ptr %.019.lcssa29.i.i.i, %i.am
  br i1 %i.an, label %select.unfold.i.i, label %bb.k

bb.k:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.ao = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #31
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i.i
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.k ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %.sroa.05.0.i.i.i = phi ptr [ %i.ao, %bb.k ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i.i, i64 36
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !137
  %i.ar = icmp slt i32 %i.aq, %.sroa.0.0.extract.trunc
  br i1 %i.ar, label %select.unfold.i.i, label %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE6insertERKS1_.exit

select.unfold.i.i:                                ; preds = %bb.l, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.l ] ; 3 uses
  %i.as = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.q
  br i1 %i.as, label %_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE10_M_insert_IRKS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %select.unfold.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.au = load i32, ptr %i.at, align 4, !tbaa !140
  %i.av = icmp slt i32 %1, %i.au
  br label %_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE10_M_insert_IRKS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE10_M_insert_IRKS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i: ; preds = %bb.m, %select.unfold.i.i
  %i.aw = phi i1 [ %i.av, %bb.m ], [ true, %select.unfold.i.i ]
  %i.ax = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %.sroa.0.0.insert.ext = and i64 %i.ac, 4294967295
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.0.insert.ext, %.sroa.8.0.insert.shift
  store i64 %.sroa.0.0.insert.insert, ptr %i.ay, align 4
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.aw, ptr noundef nonnull %i.ax, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.q) #26
  %i.az = load i64, ptr %i.s, align 8, !tbaa !49
  %i.ba = add i64 %i.az, 1
  store i64 %i.ba, ptr %i.s, align 8, !tbaa !49
  %.pre = load i32, ptr %i.t, align 8, !tbaa !128
  %.pre33.pre = load ptr, ptr %i.p, align 8, !tbaa !34
  br label %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE6insertERKS1_.exit

_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE6insertERKS1_.exit: ; preds = %bb.l, %_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE10_M_insert_IRKS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i
  %.pre33 = phi ptr [ %.pre34, %bb.l ], [ %.pre33.pre, %_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE10_M_insert_IRKS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i ]
  %i.bb = phi i32 [ %i.ai, %bb.l ], [ %.pre, %_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE10_M_insert_IRKS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i ]
  %i.bc = sub i32 %i.v, %.sroa.0.0.extract.trunc
  %i.bd = add nsw i32 %i.bc, %i.bb
  store i32 %i.bd, ptr %i.t, align 8, !tbaa !128
  br label %bb.n

bb.n:                                             ; preds = %bb.i, %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE6insertERKS1_.exit
  %i.be = phi ptr [ %.pre34, %bb.i ], [ %.pre33, %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE6insertERKS1_.exit ] ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not10.i.i.i, label %.thread29, label %.lr.ph.i.i.i.backedge

.thread29:                                        ; preds = %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit, %bb.n, %_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i, %.thread, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10duckdb_re216CharClassBuilder6NegateEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !49
  %i.d = add i64 %i.c, 1                          ; 3 uses
  %i.e = icmp ugt i64 %i.d, 1152921504606846975
  br i1 %i.e, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #29
  unreachable

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE7reserveEm.exit.thread, label %_ZNSt12_Vector_baseIN10duckdb_re29RuneRangeESaIS1_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN10duckdb_re29RuneRangeESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.f = shl nuw nsw i64 %i.d, 3                  ; 2 uses
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #30 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !126  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %bb.c, label %bb.d

_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE7reserveEm.exit.thread: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !126  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNKSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, label %bb.d

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIN10duckdb_re29RuneRangeESaIS1_EE11_M_allocateEm.exit.i
  store i64 4785070309113856, ptr %i.g, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE9push_backEOS1_.exit

_ZNKSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE7reserveEm.exit.thread
  %i.r = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30 ; 3 uses
  store i64 4785070309113856, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  br label %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE9push_backEOS1_.exit

bb.d:                                             ; preds = %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE7reserveEm.exit.thread, %_ZNSt12_Vector_baseIN10duckdb_re29RuneRangeESaIS1_EE11_M_allocateEm.exit.i
  %i.t = phi ptr [ %i.o, %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE7reserveEm.exit.thread ], [ %i.k, %_ZNSt12_Vector_baseIN10duckdb_re29RuneRangeESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  %i.u = phi ptr [ %i.n, %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE7reserveEm.exit.thread ], [ %i.j, %_ZNSt12_Vector_baseIN10duckdb_re29RuneRangeESaIS1_EE11_M_allocateEm.exit.i ] ; 4 uses
  %.sroa.098.4124 = phi ptr [ null, %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE7reserveEm.exit.thread ], [ %i.g, %_ZNSt12_Vector_baseIN10duckdb_re29RuneRangeESaIS1_EE11_M_allocateEm.exit.i ] ; 4 uses
  %.sroa.31.1120 = phi ptr [ null, %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE7reserveEm.exit.thread ], [ %i.h, %_ZNSt12_Vector_baseIN10duckdb_re29RuneRangeESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load i32, ptr %i.v, align 4, !tbaa !140
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 36
  %i.z = load i32, ptr %i.y, align 4, !tbaa !137
  %i.aa = add nsw i32 %i.z, 1
  %i.ab = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %i.u) #31
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.090.0 = phi ptr [ %i.ab, %bb.e ], [ %i.u, %bb.d ] ; 2 uses
  %.012 = phi i32 [ %i.aa, %bb.e ], [ 0, %bb.d ]  ; 2 uses
  %.not136148 = icmp eq ptr %.sroa.090.0, %i.t
  br i1 %.not136148, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE9push_backEOS1_.exit36
  %.113153 = phi i32 [ %i.bk, %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE9push_backEOS1_.exit36 ], [ %.012, %bb.f ] ; 2 uses
  %.sroa.098.0152 = phi ptr [ %.sroa.098.6, %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE9push_backEOS1_.exit36 ], [ %.sroa.098.4124, %bb.f ] ; 10 uses
  %.sroa.16.0151 = phi ptr [ %.sroa.16.4, %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE9push_backEOS1_.exit36 ], [ %.sroa.098.4124, %bb.f ] ; 6 uses
  %.sroa.31.0150 = phi ptr [ %.sroa.31.2, %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE9push_backEOS1_.exit36 ], [ %.sroa.31.1120, %bb.f ] ; 2 uses
  %.sroa.090.1149 = phi ptr [ %i.bl, %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE9push_backEOS1_.exit36 ], [ %.sroa.090.0, %bb.f ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.090.1149, i64 32
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !140
  %i.ae = add nsw i32 %i.ad, -1                   ; 2 uses
  %.not.i.i21 = icmp eq ptr %.sroa.16.0151, %.sroa.31.0150
  br i1 %.not.i.i21, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %.sroa.671.0.insert.ext = zext i32 %i.ae to i64
  %.sroa.671.0.insert.shift = shl nuw i64 %.sroa.671.0.insert.ext, 32
  %.sroa.066.0.insert.ext = zext i32 %.113153 to i64
  %.sroa.066.0.insert.insert = or disjoint i64 %.sroa.671.0.insert.shift, %.sroa.066.0.insert.ext
  store i64 %.sroa.066.0.insert.insert, ptr %.sroa.16.0151, align 4
  br label %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE9push_backEOS1_.exit36

bb.h:                                             ; preds = %.lr.ph
  %i.af = ptrtoint ptr %.sroa.16.0151 to i64      ; 2 uses
  %i.ag = ptrtoint ptr %.sroa.098.0152 to i64     ; 3 uses
  %i.ah = sub i64 %i.af, %i.ag                    ; 3 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775800
  br i1 %i.ai, label %bb.i, label %_ZNKSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i22

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #29
          to label %.noexc34.a unwind label %.loopexit.split-lp

.noexc34.a:                                       ; preds = %bb.i
  unreachable

_ZNKSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i22: ; preds = %bb.h
  %i.aj = ashr exact i64 %i.ah, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i23 = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 1)
  %i.ak = add nsw i64 %.sroa.speculated.i.i.i.i23, %i.aj ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.aj
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 1152921504606846975)
  %i.an = select i1 %i.al, i64 1152921504606846975, i64 %i.am ; 2 uses
  %i.ao = shl nuw nsw i64 %i.an, 3
  %i.ap = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #30
          to label %.noexc35 unwind label %.loopexit ; 8 uses

.noexc35:                                         ; preds = %_ZNKSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i22
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ah
  %.sroa.671.0.insert.ext73 = zext i32 %i.ae to i64
  %.sroa.671.0.insert.shift74 = shl nuw i64 %.sroa.671.0.insert.ext73, 32
  %.sroa.066.0.insert.ext68 = zext i32 %.113153 to i64
  %.sroa.066.0.insert.insert70 = or disjoint i64 %.sroa.671.0.insert.shift74, %.sroa.066.0.insert.ext68
  store i64 %.sroa.066.0.insert.insert70, ptr %i.aq, align 4
  %.not10.i.i.i.i.i.i.i25 = icmp eq ptr %.sroa.098.0152, %.sroa.16.0151
  br i1 %.not10.i.i.i.i.i.i.i25, label %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i30, label %.lr.ph.i.i.i.i.i.i.i26.preheader

.lr.ph.i.i.i.i.i.i.i26.preheader:                 ; preds = %.noexc35
  %i.ar = ptrtoaddr ptr %i.ap to i64
  %i.as = add i64 %i.af, -8
  %i.at = sub i64 %i.as, %i.ag                    ; 2 uses
  %i.au = lshr i64 %i.at, 3
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.at, 24
  %i.aw = sub i64 %i.ar, %i.ag
  %diff.check = icmp ult i64 %i.aw, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i26.preheader213, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i26.preheader
  %n.vec = and i64 %i.av, 4611686018427387900     ; 3 uses
  %i.ax = shl i64 %n.vec, 3                       ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ap, i64 %i.ax  ; 2 uses
  %i.az = getelementptr i8, ptr %.sroa.098.0152, i64 %i.ax
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ba = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ap, i64 %i.ba ; 2 uses
  %next.gep189 = getelementptr i8, ptr %.sroa.098.0152, i64 %i.ba ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %i.bb = getelementptr i8, ptr %next.gep189, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep189, align 4, !alias.scope !147, !noalias !144
  %wide.load190 = load <2 x i64>, ptr %i.bb, align 4, !alias.scope !147, !noalias !144
  %i.bc = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !144, !noalias !147
  store <2 x i64> %wide.load190, ptr %i.bc, align 4, !alias.scope !144, !noalias !147
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !149

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i30, label %.lr.ph.i.i.i.i.i.i.i26.preheader213

.lr.ph.i.i.i.i.i.i.i26.preheader213:              ; preds = %.lr.ph.i.i.i.i.i.i.i26.preheader, %middle.block
  %.012.i.i.i.i.i.i.i27.ph = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i26.preheader ], [ %i.ay, %middle.block ]
  %.0911.i.i.i.i.i.i.i28.ph = phi ptr [ %.sroa.098.0152, %.lr.ph.i.i.i.i.i.i.i26.preheader ], [ %i.az, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i26

.lr.ph.i.i.i.i.i.i.i26:                           ; preds = %.lr.ph.i.i.i.i.i.i.i26.preheader213, %.lr.ph.i.i.i.i.i.i.i26
  %.012.i.i.i.i.i.i.i27 = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i.i.i26 ], [ %.012.i.i.i.i.i.i.i27.ph, %.lr.ph.i.i.i.i.i.i.i26.preheader213 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i28 = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i.i.i26 ], [ %.0911.i.i.i.i.i.i.i28.ph, %.lr.ph.i.i.i.i.i.i.i26.preheader213 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %i.be = load i64, ptr %.0911.i.i.i.i.i.i.i28, align 4, !alias.scope !147, !noalias !144
  store i64 %i.be, ptr %.012.i.i.i.i.i.i.i27, align 4, !alias.scope !144, !noalias !147
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i28, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i27, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i29 = icmp eq ptr %i.bf, %.sroa.16.0151
  br i1 %.not.i.i.i.i.i.i.i29, label %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i30, label %.lr.ph.i.i.i.i.i.i.i26, !llvm.loop !150

_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i30: ; preds = %.lr.ph.i.i.i.i.i.i.i26, %middle.block, %.noexc35
  %.0.lcssa.i.i.i.i.i.i.i31 = phi ptr [ %i.ap, %.noexc35 ], [ %i.ay, %middle.block ], [ %i.bg, %.lr.ph.i.i.i.i.i.i.i26 ]
  %.not.i23.i.i.i32 = icmp eq ptr %.sroa.098.0152, null
  br i1 %.not.i23.i.i.i32, label %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i33, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i30
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.098.0152) #27
  br label %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i33

_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i33: ; preds = %bb.j, %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i30
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.an
  br label %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE9push_backEOS1_.exit36

_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE9push_backEOS1_.exit36: ; preds = %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i33, %bb.g
  %.sroa.31.2 = phi ptr [ %i.bh, %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i33 ], [ %.sroa.31.0150, %bb.g ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i31.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i31, %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i33 ], [ %.sroa.16.0151, %bb.g ]
  %.sroa.098.6 = phi ptr [ %i.ap, %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i33 ], [ %.sroa.098.0152, %bb.g ] ; 2 uses
  %.sroa.16.4 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i31.pn, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.090.1149, i64 36
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !137
  %i.bk = add nsw i32 %i.bj, 1                    ; 2 uses
  %i.bl = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.090.1149) #31 ; 2 uses
  %.not136 = icmp eq ptr %i.bl, %i.t
  br i1 %.not136, label %._crit_edge, label %.lr.ph, !llvm.loop !151

.loopexit:                                        ; preds = %_ZNKSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i22
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

._crit_edge:                                      ; preds = %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE9push_backEOS1_.exit36, %bb.f
  %.sroa.31.0.lcssa = phi ptr [ %.sroa.31.1120, %bb.f ], [ %.sroa.31.2, %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE9push_backEOS1_.exit36 ] ; 4 uses
  %.sroa.16.0.lcssa = phi ptr [ %.sroa.098.4124, %bb.f ], [ %.sroa.16.4, %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE9push_backEOS1_.exit36 ] ; 4 uses
  %.sroa.098.0.lcssa = phi ptr [ %.sroa.098.4124, %bb.f ], [ %.sroa.098.6, %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE9push_backEOS1_.exit36 ] ; 10 uses
  %.113.lcssa = phi i32 [ %.012, %bb.f ], [ %i.bk, %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE9push_backEOS1_.exit36 ] ; 3 uses
  %i.bm = icmp slt i32 %.113.lcssa, 1114112
  br i1 %i.bm, label %bb.k, label %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE9push_backEOS1_.exit

bb.k:                                             ; preds = %._crit_edge
  %.not.i.i37 = icmp eq ptr %.sroa.16.0.lcssa, %.sroa.31.0.lcssa
  br i1 %.not.i.i37, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.0.0.insert.ext = zext i32 %.113.lcssa to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.0.insert.ext, 4785070309113856
  store i64 %.sroa.0.0.insert.insert, ptr %.sroa.16.0.lcssa, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.16.0.lcssa, i64 8
  br label %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE9push_backEOS1_.exit

bb.m:                                             ; preds = %bb.k
  %i.bo = ptrtoint ptr %.sroa.31.0.lcssa to i64   ; 2 uses
  %i.bp = ptrtoint ptr %.sroa.098.0.lcssa to i64  ; 3 uses
  %i.bq = sub i64 %i.bo, %i.bp                    ; 3 uses
  %i.br = icmp eq i64 %i.bq, 9223372036854775800
  br i1 %i.br, label %bb.n, label %_ZNKSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i38

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #29
          to label %.noexc50 unwind label %bb.p

.noexc50:                                         ; preds = %bb.n
  unreachable

_ZNKSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i38: ; preds = %bb.m
  %i.bs = ashr exact i64 %i.bq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i39 = tail call i64 @llvm.umax.i64(i64 %i.bs, i64 1)
  %i.bt = add nsw i64 %.sroa.speculated.i.i.i.i39, %i.bs ; 2 uses
  %i.bu = icmp ult i64 %i.bt, %i.bs
  %i.bv = tail call i64 @llvm.umin.i64(i64 %i.bt, i64 1152921504606846975)
  %1 = shl nuw nsw i64 %i.bv, 3
  %2 = select i1 %i.bu, i64 9223372036854775800, i64 %1
  %i.bw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %2) #30
          to label %.noexc51 unwind label %bb.p   ; 8 uses

.noexc51:                                         ; preds = %_ZNKSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i38
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bq
  %.sroa.0.0.insert.ext58 = zext i32 %.113.lcssa to i64
  %.sroa.0.0.insert.insert60 = or disjoint i64 %.sroa.0.0.insert.ext58, 4785070309113856
  store i64 %.sroa.0.0.insert.insert60, ptr %i.bx, align 4
  %.not10.i.i.i.i.i.i.i41 = icmp eq ptr %.sroa.098.0.lcssa, %.sroa.31.0.lcssa
  br i1 %.not10.i.i.i.i.i.i.i41, label %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i46, label %.lr.ph.i.i.i.i.i.i.i42.preheader

.lr.ph.i.i.i.i.i.i.i42.preheader:                 ; preds = %.noexc51
  %i.by = ptrtoaddr ptr %i.bw to i64
  %i.bz = add i64 %i.bo, -8
  %i.ca = sub i64 %i.bz, %i.bp                    ; 2 uses
  %i.cb = lshr i64 %i.ca, 3
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 2 uses
  %min.iters.check195 = icmp ult i64 %i.ca, 56
  %i.cd = sub i64 %i.by, %i.bp
  %diff.check193 = icmp ult i64 %i.cd, 32
  %or.cond210 = or i1 %min.iters.check195, %diff.check193
  br i1 %or.cond210, label %.lr.ph.i.i.i.i.i.i.i42.preheader211, label %vector.ph196

vector.ph196:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i42.preheader
  %n.vec198 = and i64 %i.cc, 4611686018427387900  ; 3 uses
  %i.ce = shl i64 %n.vec198, 3                    ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bw, i64 %i.ce  ; 2 uses
  %i.cg = getelementptr i8, ptr %.sroa.098.0.lcssa, i64 %i.ce
  br label %vector.body199

vector.body199:                                   ; preds = %vector.body199, %vector.ph196
  %index200 = phi i64 [ 0, %vector.ph196 ], [ %index.next205, %vector.body199 ] ; 2 uses
  %i.ch = shl i64 %index200, 3                    ; 2 uses
  %next.gep201 = getelementptr i8, ptr %i.bw, i64 %i.ch ; 2 uses
  %next.gep202 = getelementptr i8, ptr %.sroa.098.0.lcssa, i64 %i.ch ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %i.ci = getelementptr i8, ptr %next.gep202, i64 16
  %wide.load203 = load <2 x i64>, ptr %next.gep202, align 4, !alias.scope !155, !noalias !152
  %wide.load204 = load <2 x i64>, ptr %i.ci, align 4, !alias.scope !155, !noalias !152
  %i.cj = getelementptr i8, ptr %next.gep201, i64 16
  store <2 x i64> %wide.load203, ptr %next.gep201, align 4, !alias.scope !152, !noalias !155
  store <2 x i64> %wide.load204, ptr %i.cj, align 4, !alias.scope !152, !noalias !155
  %index.next205 = add nuw i64 %index200, 4       ; 2 uses
  %i.ck = icmp eq i64 %index.next205, %n.vec198
  br i1 %i.ck, label %middle.block206, label %vector.body199, !llvm.loop !157

middle.block206:                                  ; preds = %vector.body199
  %cmp.n207 = icmp eq i64 %i.cc, %n.vec198
  br i1 %cmp.n207, label %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i46, label %.lr.ph.i.i.i.i.i.i.i42.preheader211

.lr.ph.i.i.i.i.i.i.i42.preheader211:              ; preds = %.lr.ph.i.i.i.i.i.i.i42.preheader, %middle.block206
  %.012.i.i.i.i.i.i.i43.ph = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.i.i42.preheader ], [ %i.cf, %middle.block206 ]
  %.0911.i.i.i.i.i.i.i44.ph = phi ptr [ %.sroa.098.0.lcssa, %.lr.ph.i.i.i.i.i.i.i42.preheader ], [ %i.cg, %middle.block206 ]
  br label %.lr.ph.i.i.i.i.i.i.i42

.lr.ph.i.i.i.i.i.i.i42:                           ; preds = %.lr.ph.i.i.i.i.i.i.i42.preheader211, %.lr.ph.i.i.i.i.i.i.i42
  %.012.i.i.i.i.i.i.i43 = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i.i42 ], [ %.012.i.i.i.i.i.i.i43.ph, %.lr.ph.i.i.i.i.i.i.i42.preheader211 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i44 = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i.i42 ], [ %.0911.i.i.i.i.i.i.i44.ph, %.lr.ph.i.i.i.i.i.i.i42.preheader211 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %i.cl = load i64, ptr %.0911.i.i.i.i.i.i.i44, align 4, !alias.scope !155, !noalias !152
  store i64 %i.cl, ptr %.012.i.i.i.i.i.i.i43, align 4, !alias.scope !152, !noalias !155
  %i.cm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i44, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i43, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i45 = icmp eq ptr %i.cm, %.sroa.31.0.lcssa
  br i1 %.not.i.i.i.i.i.i.i45, label %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i46, label %.lr.ph.i.i.i.i.i.i.i42, !llvm.loop !158

_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i46: ; preds = %.lr.ph.i.i.i.i.i.i.i42, %middle.block206, %.noexc51
  %.0.lcssa.i.i.i.i.i.i.i47 = phi ptr [ %i.bw, %.noexc51 ], [ %i.cf, %middle.block206 ], [ %i.cn, %.lr.ph.i.i.i.i.i.i.i42 ]
  %i.co = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i47, i64 8 ; 2 uses
  %.not.i23.i.i.i48 = icmp eq ptr %.sroa.098.0.lcssa, null
  br i1 %.not.i23.i.i.i48, label %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE9push_backEOS1_.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i46
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.098.0.lcssa) #27
  br label %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE9push_backEOS1_.exit

bb.p:                                             ; preds = %_ZNKSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i38, %bb.n
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNKSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i46, %bb.o, %bb.l, %bb.c, %._crit_edge
  %.sroa.16.1 = phi ptr [ %.sroa.16.0.lcssa, %._crit_edge ], [ %i.s, %_ZNKSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.q, %bb.c ], [ %i.co, %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i46 ], [ %i.bn, %bb.l ], [ %i.co, %bb.o ] ; 2 uses
  %.sroa.098.1 = phi ptr [ %.sroa.098.0.lcssa, %._crit_edge ], [ %i.r, %_ZNKSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.g, %bb.c ], [ %i.bw, %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i46 ], [ %.sroa.098.0.lcssa, %bb.l ], [ %i.bw, %bb.o ] ; 6 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !34
  invoke void @_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.cr)
          to label %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE5clearEv.exit unwind label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE9push_backEOS1_.exit
  %i.cs = landingpad { ptr, i32 }
          catch ptr null
  %i.ct = extractvalue { ptr, i32 } %i.cs, 0
  tail call void @__clang_call_terminate(ptr %i.ct) #28
  unreachable

_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE5clearEv.exit: ; preds = %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EE9push_backEOS1_.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store ptr null, ptr %i.cq, align 8, !tbaa !34
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !126
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.cu, ptr %i.cw, align 8, !tbaa !127
  store i64 0, ptr %i.b, align 8, !tbaa !49
  %.not160 = icmp eq ptr %.sroa.16.1, %.sroa.098.1
  br i1 %.not160, label %._crit_edge159, label %.lr.ph158.preheader

.lr.ph158.preheader:                              ; preds = %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE5clearEv.exit
  %i.cx = ptrtoint ptr %.sroa.16.1 to i64
  %i.cy = ptrtoint ptr %.sroa.098.1 to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = ashr exact i64 %i.cz, 3
  br label %.lr.ph158

._crit_edge159:                                   ; preds = %bb.w, %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE5clearEv.exit
  %i.db = load <2 x i32>, ptr %0, align 8, !tbaa !3
  %i.dc = and <2 x i32> %i.db, splat (i32 67108863)
  %i.dd = xor <2 x i32> %i.dc, splat (i32 67108863)
  store <2 x i32> %i.dd, ptr %0, align 8, !tbaa !3
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.df = load i32, ptr %i.de, align 8, !tbaa !128
  %i.dg = sub nsw i32 1114112, %i.df
  store i32 %i.dg, ptr %i.de, align 8, !tbaa !128
  %.not.i.i.i = icmp eq ptr %.sroa.098.1, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %._crit_edge159
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.098.1) #27
  br label %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EED2Ev.exit

_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EED2Ev.exit: ; preds = %._crit_edge159, %bb.r
  ret void

.lr.ph158:                                        ; preds = %.lr.ph158.preheader, %bb.w
  %.011157 = phi i64 [ %i.eg, %bb.w ], [ 0, %.lr.ph158.preheader ] ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.098.1, i64 %.011157 ; 4 uses
  %.02022.i.i.i = load ptr, ptr %i.cq, align 8, !tbaa !43 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph158
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !137
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph.i.i.i
  %.02024.i.i.i = phi ptr [ %.02022.i.i.i, %.lr.ph.i.i.i ], [ %.020.i.i.i, %bb.s ] ; 5 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !140
  %i.dm = icmp slt i32 %i.dj, %i.dl               ; 2 uses
  %.in.v.i.i.i = select i1 %i.dm, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !43 ; 2 uses
  %.not.i.i.i53.a = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i53.a, label %._crit_edge.i.i.i, label %bb.s, !llvm.loop !141

._crit_edge.i.i.i:                                ; preds = %bb.s
  br i1 %i.dm, label %._crit_edge.thread.i.i.i, label %bb.u

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %.lr.ph158
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.cu, %.lr.ph158 ] ; 4 uses
  %i.dn = load ptr, ptr %i.cv, align 8, !tbaa !126
  %i.do = icmp eq ptr %.019.lcssa29.i.i.i, %i.dn
  br i1 %i.do, label %select.unfold.i.i, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.dp = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #31
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i.i.i
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.t ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %.sroa.05.0.i.i.i = phi ptr [ %i.dp, %bb.t ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i.i, i64 36
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !137
  %i.ds = load i32, ptr %i.dh, align 4, !tbaa !140
  %i.dt = icmp slt i32 %i.dr, %i.ds
  br i1 %i.dt, label %select.unfold.i.i, label %bb.w

select.unfold.i.i:                                ; preds = %bb.u, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.u ] ; 3 uses
  %i.du = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.cu
  br i1 %i.du, label %_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE10_M_insert_IRKS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i, label %bb.v

bb.v:                                             ; preds = %select.unfold.i.i
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !137
  %i.dy = load i32, ptr %i.dv, align 4, !tbaa !140
  %i.dz = icmp slt i32 %i.dx, %i.dy
  br label %_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE10_M_insert_IRKS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE10_M_insert_IRKS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i: ; preds = %bb.v, %select.unfold.i.i
  %i.ea = phi i1 [ %i.dz, %bb.v ], [ true, %select.unfold.i.i ]
  %i.eb = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30
          to label %.noexc54 unwind label %bb.x   ; 2 uses

.noexc54:                                         ; preds = %_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE10_M_insert_IRKS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
end_hunk_1
