inline.NumInlined: 1589
inline.NumDeleted: 778
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN3re26Regexp7CaptureEPS0_NS0_10ParseFlagsEi:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %2, ptr %i.d, align 8, !tbaa !17
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 40) #36
  resume { ptr, i32 } %i.e
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN3re26Regexp6RepeatEPS0_NS0_10ParseFlagsEii(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #38 ; 7 uses
  invoke void @_ZN3re26RegexpC1ENS_8RegexpOpENS0_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i32 noundef 10, i32 noundef %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i16 1, ptr %i.b, align 2, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.c, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 %2, ptr %i.e, align 4, !tbaa !17
  store i32 %3, ptr %i.d, align 8, !tbaa !17
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 40) #36
  resume { ptr, i32 } %i.f
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN3re26Regexp10NewLiteralEiNS0_10ParseFlagsE(i32 noundef %0, i32 noundef %1) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #38 ; 4 uses
  invoke void @_ZN3re26RegexpC1ENS_8RegexpOpENS0_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i32 noundef 3, i32 noundef %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %0, ptr %i.b, align 8, !tbaa !17
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 40) #36
  resume { ptr, i32 } %i.c
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN3re26Regexp13LiteralStringEPiiNS0_10ParseFlagsE(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %1, 1
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #38 ; 3 uses
  invoke void @_ZN3re26RegexpC1ENS_8RegexpOpENS0_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i32 noundef 2, i32 noundef %2)
          to label %.loopexit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.d:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %1, 1
  br i1 %i.d, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.e = load i32, ptr %0, align 4, !tbaa !44
  %i.f = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #38 ; 4 uses
  invoke void @_ZN3re26RegexpC1ENS_8RegexpOpENS0_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %i.f, i32 noundef 3, i32 noundef %2)
          to label %_ZN3re26Regexp10NewLiteralEiNS0_10ParseFlagsE.exit unwind label %bb.f

common.resume:                                    ; preds = %bb.c, %bb.h, %bb.f
  %.sink = phi ptr [ %i.b, %bb.c ], [ %i.i, %bb.h ], [ %i.f, %bb.f ]
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.c ], [ %i.l, %bb.h ], [ %i.g, %bb.f ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef 40) #36
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN3re26Regexp10NewLiteralEiNS0_10ParseFlagsE.exit: ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i32 %i.e, ptr %i.h, align 8, !tbaa !17
  br label %.loopexit

bb.g:                                             ; preds = %bb.d
  %i.i = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #38 ; 5 uses
  invoke void @_ZN3re26RegexpC1ENS_8RegexpOpENS0_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %i.i, i32 noundef 4, i32 noundef %2)
          to label %.lr.ph unwind label %bb.h

.lr.ph:                                           ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 5 uses
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.i:                                             ; preds = %.lr.ph, %_ZN3re26Regexp15AddRuneToStringEi.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN3re26Regexp15AddRuneToStringEi.exit ] ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.n = load i32, ptr %i.m, align 4, !tbaa !44
  %i.o = load i32, ptr %i.j, align 8, !tbaa !17   ; 5 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.q = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znam(i64 noundef 32) #38 ; 2 uses
  store ptr %i.q, ptr %i.k, align 8, !tbaa !17
  br label %_ZN3re26Regexp15AddRuneToStringEi.exit

bb.k:                                             ; preds = %bb.i
  %i.r = icmp sgt i32 %i.o, 7
  %i.s = tail call range(i32 1, 32) i32 @llvm.ctpop.i32(i32 %i.o)
  %i.t = icmp samesign ult i32 %i.s, 2
  %or.cond.i = select i1 %i.r, i1 %i.t, i1 false
  %.pre22 = load ptr, ptr %i.k, align 8, !tbaa !17 ; 3 uses
  br i1 %or.cond.i, label %.lr.ph.preheader.i, label %_ZN3re26Regexp15AddRuneToStringEi.exit

.lr.ph.preheader.i:                               ; preds = %bb.k
  %i.u = shl nuw nsw i32 %i.o, 1
  %i.v = zext nneg i32 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.w) #38
  store ptr %i.x, ptr %i.k, align 8, !tbaa !17
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.pre22, i64 %indvars.iv.i
  %i.z = load i32, ptr %i.y, align 4, !tbaa !44
  %i.aa = load ptr, ptr %i.k, align 8, !tbaa !17
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.i
  store i32 %i.z, ptr %i.ab, align 4, !tbaa !44
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ac = load i32, ptr %i.j, align 8, !tbaa !17
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp slt i64 %indvars.iv.next.i, %i.ad
  br i1 %i.ae, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !73

._crit_edge.i:                                    ; preds = %.lr.ph.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre22) #36
  %.pre.i = load i32, ptr %i.j, align 8, !tbaa !17
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !17
  br label %_ZN3re26Regexp15AddRuneToStringEi.exit

_ZN3re26Regexp15AddRuneToStringEi.exit:           ; preds = %bb.j, %bb.k, %._crit_edge.i
  %i.af = phi ptr [ %i.q, %bb.j ], [ %.pre, %._crit_edge.i ], [ %.pre22, %bb.k ]
  %i.ag = phi i32 [ 0, %bb.j ], [ %.pre.i, %._crit_edge.i ], [ %i.o, %bb.k ] ; 2 uses
  %i.ah = add nsw i32 %i.ag, 1
  store i32 %i.ah, ptr %i.j, align 8, !tbaa !17
  %i.ai = sext i32 %i.ag to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ai
  store i32 %i.n, ptr %i.aj, align 4, !tbaa !44
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.i, !llvm.loop !84

.loopexit:                                        ; preds = %_ZN3re26Regexp15AddRuneToStringEi.exit, %bb.b, %_ZN3re26Regexp10NewLiteralEiNS0_10ParseFlagsE.exit
  %.015 = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZN3re26Regexp10NewLiteralEiNS0_10ParseFlagsE.exit ], [ %i.i, %_ZN3re26Regexp15AddRuneToStringEi.exit ]
  ret ptr %.015
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN3re26Regexp12NewCharClassEPNS_9CharClassENS0_10ParseFlagsE(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #38 ; 4 uses
  invoke void @_ZN3re26RegexpC1ENS_8RegexpOpENS0_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i32 noundef 20, i32 noundef %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %0, ptr %i.b, align 8, !tbaa !17
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 40) #36
  resume { ptr, i32 } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN3re26Regexp4SwapEPS0_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #13 align 2 {
bb.a:
  %2 = alloca [40 x i8], align 16                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(40) %1, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %1, ptr noundef nonnull align 16 dereferenceable(40) %2, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN3re26Regexp5EqualEPS0_S1_(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %0, %1
  br label %_ZNSt6vectorIPN3re26RegexpESaIS2_EED2Ev.exit59

bb.c:                                             ; preds = %bb.a
  %i.d = tail call fastcc noundef zeroext i1 @_ZN3re2L8TopEqualEPNS_6RegexpES1_(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br i1 %i.d, label %bb.d, label %_ZNSt6vectorIPN3re26RegexpESaIS2_EED2Ev.exit59

bb.d:                                             ; preds = %bb.c
  %i.e = load i8, ptr %0, align 8, !tbaa !8       ; 2 uses
  %i.f = add i8 %i.e, -5
  %switch = icmp ult i8 %i.f, 7
  br i1 %switch, label %.preheader, label %_ZNSt6vectorIPN3re26RegexpESaIS2_EED2Ev.exit59

.preheader:                                       ; preds = %bb.d, %_ZNSt6vectorIPN3re26RegexpESaIS2_EE6resizeEm.exit
  %i.g = phi i8 [ %.pre, %_ZNSt6vectorIPN3re26RegexpESaIS2_EE6resizeEm.exit ], [ %i.e, %bb.d ]
  %.sroa.0.0 = phi ptr [ %.sroa.0.4, %_ZNSt6vectorIPN3re26RegexpESaIS2_EE6resizeEm.exit ], [ null, %bb.d ] ; 6 uses
  %.sroa.16.0 = phi ptr [ %.sroa.16.3, %_ZNSt6vectorIPN3re26RegexpESaIS2_EE6resizeEm.exit ], [ null, %bb.d ] ; 4 uses
  %.sroa.28.0 = phi ptr [ %.sroa.28.4, %_ZNSt6vectorIPN3re26RegexpESaIS2_EE6resizeEm.exit ], [ null, %bb.d ] ; 6 uses
  %.035 = phi ptr [ %.237, %_ZNSt6vectorIPN3re26RegexpESaIS2_EE6resizeEm.exit ], [ %0, %bb.d ] ; 4 uses
  %.032 = phi ptr [ %.234, %_ZNSt6vectorIPN3re26RegexpESaIS2_EE6resizeEm.exit ], [ %1, %bb.d ] ; 4 uses
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
  %i.j = load i16, ptr %i.i, align 2, !tbaa !16   ; 2 uses
  %.not143.not = icmp eq i16 %i.j, 0
  br i1 %.not143.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %.035, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.032, i64 6
  %i.m = getelementptr inbounds nuw i8, ptr %.032, i64 8 ; 2 uses
  br label %bb.g

.loopexit115:                                     ; preds = %bb.g, %_ZNKSt6vectorIPN3re26RegexpESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIPN3re26RegexpESaIS2_EE12_M_check_lenEmPKc.exit.i.i45
  %.sroa.0.2.ph = phi ptr [ %.sroa.0.1144, %bb.g ], [ %.sroa.0.1144, %_ZNKSt6vectorIPN3re26RegexpESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.0.6, %_ZNKSt6vectorIPN3re26RegexpESaIS2_EE12_M_check_lenEmPKc.exit.i.i45 ]
  %.sroa.28.2.ph = phi ptr [ %.sroa.28.1146, %bb.g ], [ %.sroa.28.1146, %_ZNKSt6vectorIPN3re26RegexpESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.28.6, %_ZNKSt6vectorIPN3re26RegexpESaIS2_EE12_M_check_lenEmPKc.exit.i.i45 ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp:                               ; preds = %bb.l, %bb.q
  %.sroa.0.2.ph116 = phi ptr [ %.sroa.0.6, %bb.q ], [ %.sroa.0.1144, %bb.l ]
  %.sroa.28.2.ph117 = phi ptr [ %.sroa.28.6, %bb.q ], [ %.sroa.28.1146, %bb.l ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.g:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPN3re26RegexpESaIS2_EE9push_backERKS2_.exit53
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIPN3re26RegexpESaIS2_EE9push_backERKS2_.exit53 ] ; 3 uses
  %i.n = phi i16 [ %i.j, %.lr.ph ], [ %i.bc, %_ZNSt6vectorIPN3re26RegexpESaIS2_EE9push_backERKS2_.exit53 ]
  %.sroa.28.1146 = phi ptr [ %.sroa.28.0, %.lr.ph ], [ %.sroa.28.7, %_ZNSt6vectorIPN3re26RegexpESaIS2_EE9push_backERKS2_.exit53 ] ; 7 uses
  %.sroa.16.1145 = phi ptr [ %.sroa.16.0, %.lr.ph ], [ %.sroa.16.5, %_ZNSt6vectorIPN3re26RegexpESaIS2_EE9push_backERKS2_.exit53 ] ; 3 uses
  %.sroa.0.1144 = phi ptr [ %.sroa.0.0, %.lr.ph ], [ %.sroa.0.7, %_ZNSt6vectorIPN3re26RegexpESaIS2_EE9push_backERKS2_.exit53 ] ; 9 uses
  %i.o = icmp ult i16 %i.n, 2
  %i.p = load ptr, ptr %i.k, align 8
  %.0.i = select i1 %i.o, ptr %i.k, ptr %i.p
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !37   ; 3 uses
  %i.s = load i16, ptr %i.l, align 2, !tbaa !16
  %i.t = icmp ult i16 %i.s, 2
  %i.u = load ptr, ptr %i.m, align 8
  %.0.i42 = select i1 %i.t, ptr %i.m, ptr %i.u
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.0.i42, i64 %indvars.iv
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !37   ; 3 uses
  %i.x = invoke fastcc noundef zeroext i1 @_ZN3re2L8TopEqualEPNS_6RegexpES1_(ptr noundef %i.r, ptr noundef %i.w)
          to label %bb.h unwind label %.loopexit115

bb.h:                                             ; preds = %bb.g
  br i1 %i.x, label %bb.i, label %_ZNSt6vectorIPN3re26RegexpESaIS2_EE6resizeEm.exit.thread

bb.i:                                             ; preds = %bb.h
  %.not.i = icmp eq ptr %.sroa.16.1145, %.sroa.28.1146
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.r, ptr %.sroa.16.1145, align 8, !tbaa !37
  br label %_ZNSt6vectorIPN3re26RegexpESaIS2_EE9push_backERKS2_.exit

bb.k:                                             ; preds = %bb.i
  %i.y = ptrtoint ptr %.sroa.28.1146 to i64
  %i.z = ptrtoint ptr %.sroa.0.1144 to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 6 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775800
  br i1 %i.ab, label %bb.l, label %_ZNKSt6vectorIPN3re26RegexpESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #39
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.l
  unreachable

_ZNKSt6vectorIPN3re26RegexpESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.ac = ashr exact i64 %i.aa, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 1)
  %i.ad = add nsw i64 %.sroa.speculated.i.i.i, %i.ac ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ac
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 1152921504606846975)
  %i.ag = select i1 %i.ae, i64 1152921504606846975, i64 %i.af ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ag, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ah = shl nuw nsw i64 %i.ag, 3
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #38
          to label %.noexc43 unwind label %.loopexit115 ; 4 uses

.noexc43:                                         ; preds = %_ZNKSt6vectorIPN3re26RegexpESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 %i.aa ; 2 uses
  store ptr %i.r, ptr %i.aj, align 8, !tbaa !37
  %i.ak = icmp sgt i64 %i.aa, 0
  br i1 %i.ak, label %bb.m, label %_ZNSt6vectorIPN3re26RegexpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.m:                                             ; preds = %.noexc43
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ai, ptr align 8 %.sroa.0.1144, i64 %i.aa, i1 false)
  br label %_ZNSt6vectorIPN3re26RegexpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN3re26RegexpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.m, %.noexc43
  %.not.i17.i.i = icmp eq ptr %.sroa.0.1144, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN3re26RegexpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIPN3re26RegexpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.1144, i64 noundef %i.aa) #36
  br label %_ZNSt6vectorIPN3re26RegexpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN3re26RegexpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIPN3re26RegexpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ag
  br label %_ZNSt6vectorIPN3re26RegexpESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN3re26RegexpESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIPN3re26RegexpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.j
  %.sroa.0.6 = phi ptr [ %i.ai, %_ZNSt6vectorIPN3re26RegexpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.0.1144, %bb.j ] ; 7 uses
  %.pn114 = phi ptr [ %i.aj, %_ZNSt6vectorIPN3re26RegexpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.16.1145, %bb.j ] ; 2 uses
  %.sroa.28.6 = phi ptr [ %i.al, %_ZNSt6vectorIPN3re26RegexpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.28.1146, %bb.j ] ; 5 uses
  %.sroa.16.4 = getelementptr inbounds nuw i8, ptr %.pn114, i64 8 ; 2 uses
  %.not.i44 = icmp eq ptr %.sroa.16.4, %.sroa.28.6
  br i1 %.not.i44, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIPN3re26RegexpESaIS2_EE9push_backERKS2_.exit
  store ptr %i.w, ptr %.sroa.16.4, align 8, !tbaa !37
  %i.am = getelementptr inbounds nuw i8, ptr %.pn114, i64 16
  br label %_ZNSt6vectorIPN3re26RegexpESaIS2_EE9push_backERKS2_.exit53

bb.p:                                             ; preds = %_ZNSt6vectorIPN3re26RegexpESaIS2_EE9push_backERKS2_.exit
  %i.an = ptrtoint ptr %.sroa.28.6 to i64
  %i.ao = ptrtoint ptr %.sroa.0.6 to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 6 uses
  %i.aq = icmp eq i64 %i.ap, 9223372036854775800
  br i1 %i.aq, label %bb.q, label %_ZNKSt6vectorIPN3re26RegexpESaIS2_EE12_M_check_lenEmPKc.exit.i.i45

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #39
          to label %.noexc51 unwind label %.loopexit.split-lp

.noexc51:                                         ; preds = %bb.q
  unreachable

_ZNKSt6vectorIPN3re26RegexpESaIS2_EE12_M_check_lenEmPKc.exit.i.i45: ; preds = %bb.p
  %i.ar = ashr exact i64 %i.ap, 3                 ; 3 uses
  %.sroa.speculated.i.i.i46 = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.as = add nsw i64 %.sroa.speculated.i.i.i46, %i.ar ; 2 uses
  %i.at = icmp ult i64 %i.as, %i.ar
  %i.au = tail call i64 @llvm.umin.i64(i64 %i.as, i64 1152921504606846975)
  %i.av = select i1 %i.at, i64 1152921504606846975, i64 %i.au ; 3 uses
  %.not.i.i.i47 = icmp ne i64 %i.av, 0
  tail call void @llvm.assume(i1 %.not.i.i.i47)
  %i.aw = shl nuw nsw i64 %i.av, 3
  %i.ax = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #38
          to label %.noexc52 unwind label %.loopexit115 ; 4 uses

.noexc52:                                         ; preds = %_ZNKSt6vectorIPN3re26RegexpESaIS2_EE12_M_check_lenEmPKc.exit.i.i45
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 %i.ap ; 2 uses
  store ptr %i.w, ptr %i.ay, align 8, !tbaa !37
  %i.az = icmp sgt i64 %i.ap, 0
  br i1 %i.az, label %bb.r, label %_ZNSt6vectorIPN3re26RegexpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i48

bb.r:                                             ; preds = %.noexc52
end_hunk_0
