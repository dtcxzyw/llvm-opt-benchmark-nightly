inline.NumInlined: 2539
inline.NumDeleted: 512
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN6hermes6parser7JSLexer22consumeBracedCodePointEb:bb.a
  %.1.ph = phi i32 [ %.05683, %_ZN6hermes6parser7JSLexer5errorEN4llvh5SMLocERKNS2_5TwineE.exit50.thread ], [ %.05683, %bb.m ], [ %i.ay, %bb.p ], [ %i.ay, %bb.q ], [ %i.ay, %_ZN6hermes6parser7JSLexer5errorEN4llvh5SMLocERKNS2_5TwineE.exit52.thread ] ; 2 uses
  %.2.ph = phi i8 [ 1, %_ZN6hermes6parser7JSLexer5errorEN4llvh5SMLocERKNS2_5TwineE.exit50.thread ], [ 1, %bb.m ], [ %.084, %bb.p ], [ 1, %bb.q ], [ 1, %_ZN6hermes6parser7JSLexer5errorEN4llvh5SMLocERKNS2_5TwineE.exit52.thread ] ; 3 uses
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !19  ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1 ; 4 uses
  store ptr %i.bi, ptr %i.a, align 8, !tbaa !19
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !66  ; 3 uses
  %i.bk = sext i8 %i.bj to i32
  %.not48 = icmp eq i8 %i.bj, 125
  br i1 %.not48, label %._crit_edge, label %.lr.ph.split, !llvm.loop !260

._crit_edge:                                      ; preds = %bb.s
  %i.bl = icmp eq ptr %i.bh, %i.b
  br i1 %i.bl, label %._crit_edge.thread, label %._crit_edge.thread109

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.0.lcssa108 = phi i8 [ %.2.ph, %._crit_edge ], [ 0, %bb.a ]
  %i.bm = phi ptr [ %i.bi, %._crit_edge ], [ %i.c, %bb.a ]
  %i.bn = trunc nuw i8 %.0.lcssa108 to i1
  %.not14 = xor i1 %i.bn, true
  %or.cond16 = and i1 %1, %.not14
  br i1 %or.cond16, label %bb.t, label %.thread68

bb.t:                                             ; preds = %._crit_edge.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 1, ptr %i.bp, align 1, !tbaa !68
  store ptr @.str.59, ptr %5, align 8, !tbaa !66
  store i8 3, ptr %i.bo, align 8, !tbaa !71
  %i.bq = load ptr, ptr %0, align 8, !tbaa !50, !nonnull !51, !align !52
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.bq, i32 noundef 0, ptr nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(18) %5, i32 noundef 1) #18
  %i.br = load ptr, ptr %0, align 8, !tbaa !50, !nonnull !51, !align !52
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 316
  %i.bt = load i8, ptr %i.bs, align 4, !tbaa !72, !range !59, !noundef !51
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.u, label %_ZN6hermes6parser7JSLexer5errorEN4llvh5SMLocERKNS2_5TwineE.exit54.thread

_ZN6hermes6parser7JSLexer5errorEN4llvh5SMLocERKNS2_5TwineE.exit54.thread: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !19
  br label %.thread68

bb.u:                                             ; preds = %bb.t
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !67
  store ptr %i.bw, ptr %i.a, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.v

.thread68:                                        ; preds = %_ZN6hermes6parser7JSLexer5errorEN4llvh5SMLocERKNS2_5TwineE.exit54.thread, %._crit_edge.thread
  %i.bx = phi ptr [ %.pre, %_ZN6hermes6parser7JSLexer5errorEN4llvh5SMLocERKNS2_5TwineE.exit54.thread ], [ %i.bm, %._crit_edge.thread ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 1
  store ptr %i.by, ptr %i.a, align 8, !tbaa !19
  br label %bb.v

._crit_edge.thread109:                            ; preds = %bb.g, %._crit_edge
  %.0.lcssa113 = phi i8 [ %.2.ph, %._crit_edge ], [ %.2.ph.us, %bb.g ] ; 2 uses
  %.056.lcssa112 = phi i32 [ %.1.ph, %._crit_edge ], [ %.1.ph.us, %bb.g ]
  %i.bz = phi ptr [ %i.bh, %._crit_edge ], [ %i.l, %bb.g ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 2
  store ptr %i.ca, ptr %i.a, align 8, !tbaa !19
  %i.cb = trunc nuw i8 %.0.lcssa113 to i1
  %spec.select = xor i8 %.0.lcssa113, 1
  %i.cc = zext nneg i8 %spec.select to i64
  %i.cd = shl nuw nsw i64 %i.cc, 32
  %i.ce = zext i32 %.056.lcssa112 to i64
  %i.cf = select i1 %i.cb, i64 0, i64 %i.ce
  %i.cg = or disjoint i64 %i.cd, %i.cf
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge.thread109, %.thread68, %bb.o, %.split88, %_ZN6hermes6parser7JSLexer5errorEN4llvh5SMLocERKNS2_5TwineE.exit, %.split.us, %bb.u
  %.sroa.2.2 = phi i64 [ 0, %bb.o ], [ %i.cg, %._crit_edge.thread109 ], [ 0, %bb.u ], [ 0, %_ZN6hermes6parser7JSLexer5errorEN4llvh5SMLocERKNS2_5TwineE.exit ], [ 0, %.split88 ], [ 0, %.split.us ], [ 0, %.thread68 ]
  ret i64 %.sroa.2.2
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i64 0, 8589934592) i64 @_ZN6hermes6parser7JSLexer10consumeHexEjb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1160) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %.not28 = icmp eq i32 %1, 0
  br i1 %.not28, label %.critedge23, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %.promoted = load ptr, ptr %i.a, align 8, !tbaa !19
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge
  %i.b = phi ptr [ %.promoted, %.lr.ph ], [ %i.u, %.critedge ] ; 3 uses
  %.030 = phi i32 [ 0, %.lr.ph ], [ %i.v, %.critedge ]
  %.02529 = phi i32 [ 0, %.lr.ph ], [ %i.t, %.critedge ]
  %i.c = load i8, ptr %i.b, align 1, !tbaa !66    ; 2 uses
  %i.d = sext i8 %i.c to i32                      ; 2 uses
  %i.e = add i8 %i.c, -48
  %or.cond = icmp ult i8 %i.e, 10
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -48
  br label %.critedge

bb.d:                                             ; preds = %bb.b
  %i.g = or i32 %i.d, 32                          ; 2 uses
  %i.h = add nsw i32 %i.g, -97
  %or.cond4 = icmp ult i32 %i.h, 6
  br i1 %or.cond4, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = add nsw i32 %i.g, -87
  br label %.critedge

bb.f:                                             ; preds = %bb.d
  br i1 %2, label %bb.g, label %.critedge23

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 1, ptr %i.k, align 1, !tbaa !68
  store ptr @.str.55, ptr %3, align 8, !tbaa !66
  store i8 3, ptr %i.j, align 8, !tbaa !71
  %i.l = load ptr, ptr %0, align 8, !tbaa !50, !nonnull !51, !align !52
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.l, i32 noundef 0, ptr nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(18) %3, i32 noundef 1) #18
  %i.m = load ptr, ptr %0, align 8, !tbaa !50, !nonnull !51, !align !52
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 316
  %i.o = load i8, ptr %i.n, align 4, !tbaa !72, !range !59, !noundef !51
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.h, label %_ZN6hermes6parser7JSLexer5errorEN4llvh5SMLocERKNS2_5TwineE.exit

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !67
  store ptr %i.r, ptr %i.a, align 8, !tbaa !19
  br label %_ZN6hermes6parser7JSLexer5errorEN4llvh5SMLocERKNS2_5TwineE.exit

_ZN6hermes6parser7JSLexer5errorEN4llvh5SMLocERKNS2_5TwineE.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %.critedge23

.critedge:                                        ; preds = %bb.e, %bb.c
  %.018 = phi i32 [ %i.f, %bb.c ], [ %i.i, %bb.e ]
  %i.s = shl i32 %.02529, 4
  %i.t = add nuw i32 %.018, %i.s                  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  store ptr %i.u, ptr %i.a, align 8, !tbaa !19
  %i.v = add nuw i32 %.030, 1                     ; 2 uses
  %.not = icmp eq i32 %i.v, %1
  br i1 %.not, label %.critedge23.loopexit, label %bb.b, !llvm.loop !261

.critedge23.loopexit:                             ; preds = %.critedge
  %i.w = zext i32 %i.t to i64
  %i.x = or disjoint i64 %i.w, 4294967296
  br label %.critedge23

.critedge23:                                      ; preds = %.critedge23.loopexit, %bb.a, %bb.f, %_ZN6hermes6parser7JSLexer5errorEN4llvh5SMLocERKNS2_5TwineE.exit
  %.sroa.2.0 = phi i64 [ 0, %bb.f ], [ 0, %_ZN6hermes6parser7JSLexer5errorEN4llvh5SMLocERKNS2_5TwineE.exit ], [ 4294967296, %bb.a ], [ %i.x, %.critedge23.loopexit ]
  ret i64 %.sroa.2.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i64 0, 8589934592) i64 @_ZN6hermes6parser7JSLexer28consumeUnicodeEscapeOptionalEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1160) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !19
  %i.d = load i8, ptr %i.c, align 1, !tbaa !66
  %.not = icmp eq i8 %i.d, 117
  br i1 %.not, label %bb.b, label %_ZN6hermes6parser7JSLexer10consumeHexEjb.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !19
  %i.f = load i8, ptr %i.e, align 1, !tbaa !66    ; 3 uses
  %i.g = icmp eq i8 %i.f, 123
  br i1 %i.g, label %bb.c, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.b
  %i.h = sext i8 %i.f to i32                      ; 2 uses
  %i.i = add i8 %i.f, -48
  %or.cond.i = icmp ult i8 %i.i, 10
  br i1 %or.cond.i, label %bb.j, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 3 ; 3 uses
  store ptr %i.j, ptr %i.a, align 8, !tbaa !19
  %i.k = load i8, ptr %i.j, align 1, !tbaa !66    ; 2 uses
  %.not4881.i = icmp eq i8 %i.k, 125
  br i1 %.not4881.i, label %_ZN6hermes6parser7JSLexer10consumeHexEjb.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.m = load ptr, ptr %i.l, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.i, %.lr.ph.i
  %i.n = phi ptr [ %i.j, %.lr.ph.i ], [ %i.x, %bb.i ] ; 3 uses
  %i.o = phi i8 [ %i.k, %.lr.ph.i ], [ %i.y, %bb.i ] ; 4 uses
  %.084.us.i = phi i8 [ 0, %.lr.ph.i ], [ %.2.ph.us.i, %bb.i ]
  %.05683.us.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.ph.us.i, %bb.i ] ; 2 uses
  %1 = sext i8 %i.o to i32
  %i.p = add i8 %i.o, -48
  %or.cond.us.i = icmp ult i8 %i.p, 10
  br i1 %or.cond.us.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = add i8 %i.o, -97
  %or.cond3.us.i = icmp ult i8 %i.q, 6
  br i1 %or.cond3.us.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add i8 %i.o, -65
  %or.cond5.us.i = icmp ult i8 %i.r, 6
  br i1 %or.cond5.us.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = icmp eq ptr %i.n, %i.m
  br i1 %i.s, label %_ZN6hermes6parser7JSLexer10consumeHexEjb.exit, label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.sink.i = phi i32 [ -87, %bb.e ], [ -55, %bb.f ], [ -48, %bb.d ]
  %i.t = shl i32 %.05683.us.i, 4
  %i.u = add i32 %i.t, %1
  %i.v = add i32 %i.u, %.sink.i                   ; 2 uses
  %i.w = icmp ugt i32 %i.v, 1114111
  %spec.select92.i = select i1 %i.w, i8 1, i8 %.084.us.i
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1.ph.us.i = phi i32 [ %.05683.us.i, %bb.g ], [ %i.v, %bb.h ] ; 2 uses
  %.2.ph.us.i = phi i8 [ 1, %bb.g ], [ %spec.select92.i, %bb.h ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 3 uses
  store ptr %i.x, ptr %i.a, align 8, !tbaa !19
  %i.y = load i8, ptr %i.x, align 1, !tbaa !66    ; 2 uses
  %.not48.us.i = icmp eq i8 %i.y, 125
  br i1 %.not48.us.i, label %_ZN6hermes6parser7JSLexer22consumeBracedCodePointEb.exit, label %bb.d, !llvm.loop !260

_ZN6hermes6parser7JSLexer22consumeBracedCodePointEb.exit: ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  %i.aa = trunc nuw i8 %.2.ph.us.i to i1
  br i1 %i.aa, label %_ZN6hermes6parser7JSLexer10consumeHexEjb.exit.sink.split, label %_ZN6hermes6parser7JSLexer10consumeHexEjb.exit

bb.j:                                             ; preds = %.preheader.preheader
  %i.ab = add nsw i32 %i.h, -48
  br label %.critedge.i

bb.k:                                             ; preds = %.preheader.preheader
  %i.ac = or i32 %i.h, 32                         ; 2 uses
  %i.ad = add nsw i32 %i.ac, -97
  %or.cond4.i = icmp ult i32 %i.ad, 6
  br i1 %or.cond4.i, label %bb.l, label %_ZN6hermes6parser7JSLexer10consumeHexEjb.exit

bb.l:                                             ; preds = %bb.k
  %i.ae = add nsw i32 %i.ac, -87
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.l, %bb.j
  %.018.i = phi i32 [ %i.ab, %bb.j ], [ %i.ae, %bb.l ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 3 ; 2 uses
  store ptr %i.af, ptr %i.a, align 8, !tbaa !19
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !66  ; 2 uses
  %i.ah = sext i8 %i.ag to i32                    ; 2 uses
  %i.ai = add i8 %i.ag, -48
  %or.cond.i.1 = icmp ult i8 %i.ai, 10
  br i1 %or.cond.i.1, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.critedge.i
  %i.aj = or i32 %i.ah, 32                        ; 2 uses
  %i.ak = add nsw i32 %i.aj, -97
  %or.cond4.i.1 = icmp ult i32 %i.ak, 6
  br i1 %or.cond4.i.1, label %bb.n, label %_ZN6hermes6parser7JSLexer10consumeHexEjb.exit

bb.n:                                             ; preds = %bb.m
  %i.al = add nsw i32 %i.aj, -87
  br label %.critedge.i.1

bb.o:                                             ; preds = %.critedge.i
  %i.am = add nsw i32 %i.ah, -48
  br label %.critedge.i.1

.critedge.i.1:                                    ; preds = %bb.o, %bb.n
  %.018.i.1 = phi i32 [ %i.am, %bb.o ], [ %i.al, %bb.n ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  store ptr %i.an, ptr %i.a, align 8, !tbaa !19
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !66  ; 2 uses
  %i.ap = sext i8 %i.ao to i32                    ; 2 uses
  %i.aq = add i8 %i.ao, -48
  %or.cond.i.2 = icmp ult i8 %i.aq, 10
  br i1 %or.cond.i.2, label %bb.r, label %bb.p

bb.p:                                             ; preds = %.critedge.i.1
  %i.ar = or i32 %i.ap, 32                        ; 2 uses
  %i.as = add nsw i32 %i.ar, -97
  %or.cond4.i.2 = icmp ult i32 %i.as, 6
  br i1 %or.cond4.i.2, label %bb.q, label %_ZN6hermes6parser7JSLexer10consumeHexEjb.exit

bb.q:                                             ; preds = %bb.p
  %i.at = add nsw i32 %i.ar, -87
  br label %.critedge.i.2

bb.r:                                             ; preds = %.critedge.i.1
  %i.au = add nsw i32 %i.ap, -48
  br label %.critedge.i.2

.critedge.i.2:                                    ; preds = %bb.r, %bb.q
  %.018.i.2 = phi i32 [ %i.au, %bb.r ], [ %i.at, %bb.q ]
  %i.av = shl nuw nsw i32 %.018.i, 8
  %i.aw = shl nuw nsw i32 %.018.i.1, 4
  %i.ax = add nuw nsw i32 %i.av, %i.aw
  %i.ay = add nuw nsw i32 %.018.i.2, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 5 ; 2 uses
  store ptr %i.az, ptr %i.a, align 8, !tbaa !19
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !66  ; 2 uses
  %i.bb = sext i8 %i.ba to i32                    ; 2 uses
  %i.bc = add i8 %i.ba, -48
  %or.cond.i.3 = icmp ult i8 %i.bc, 10
  br i1 %or.cond.i.3, label %bb.u, label %bb.s

bb.s:                                             ; preds = %.critedge.i.2
  %i.bd = or i32 %i.bb, 32                        ; 2 uses
  %i.be = add nsw i32 %i.bd, -97
  %or.cond4.i.3 = icmp ult i32 %i.be, 6
  br i1 %or.cond4.i.3, label %bb.t, label %_ZN6hermes6parser7JSLexer10consumeHexEjb.exit

bb.t:                                             ; preds = %bb.s
  %i.bf = add nsw i32 %i.bd, -87
  br label %.critedge.i.3

bb.u:                                             ; preds = %.critedge.i.2
  %i.bg = add nsw i32 %i.bb, -48
  br label %.critedge.i.3

.critedge.i.3:                                    ; preds = %bb.u, %bb.t
  %.018.i.3 = phi i32 [ %i.bg, %bb.u ], [ %i.bf, %bb.t ]
  %i.bh = shl nuw nsw i32 %i.ay, 4
  %i.bi = add nuw nsw i32 %.018.i.3, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  br label %_ZN6hermes6parser7JSLexer10consumeHexEjb.exit

_ZN6hermes6parser7JSLexer10consumeHexEjb.exit.sink.split: ; preds = %_ZN6hermes6parser7JSLexer22consumeBracedCodePointEb.exit
  br label %_ZN6hermes6parser7JSLexer10consumeHexEjb.exit

_ZN6hermes6parser7JSLexer10consumeHexEjb.exit:    ; preds = %bb.g, %.critedge.i.3, %bb.a, %bb.c, %bb.s, %bb.p, %bb.m, %bb.k, %_ZN6hermes6parser7JSLexer10consumeHexEjb.exit.sink.split, %_ZN6hermes6parser7JSLexer22consumeBracedCodePointEb.exit
  %storemerge = phi ptr [ %i.z, %_ZN6hermes6parser7JSLexer22consumeBracedCodePointEb.exit ], [ %i.bj, %.critedge.i.3 ], [ %i.b, %bb.a ], [ %i.b, %bb.k ], [ %i.b, %bb.c ], [ %i.b, %bb.s ], [ %i.b, %bb.p ], [ %i.b, %bb.m ], [ %i.b, %_ZN6hermes6parser7JSLexer10consumeHexEjb.exit.sink.split ], [ %i.b, %bb.g ]
  %.sroa.011.2 = phi i32 [ %.1.ph.us.i, %_ZN6hermes6parser7JSLexer22consumeBracedCodePointEb.exit ], [ %i.bi, %.critedge.i.3 ], [ undef, %bb.a ], [ 0, %bb.k ], [ 0, %bb.c ], [ 0, %bb.s ], [ 0, %bb.p ], [ 0, %bb.m ], [ 0, %_ZN6hermes6parser7JSLexer10consumeHexEjb.exit.sink.split ], [ 0, %bb.g ]
  %.sroa.3.2 = phi i64 [ 4294967296, %_ZN6hermes6parser7JSLexer22consumeBracedCodePointEb.exit ], [ 4294967296, %.critedge.i.3 ], [ 0, %bb.a ], [ 0, %bb.k ], [ 0, %bb.c ], [ 0, %bb.s ], [ 0, %bb.p ], [ 0, %bb.m ], [ 0, %_ZN6hermes6parser7JSLexer10consumeHexEjb.exit.sink.split ], [ 0, %bb.g ]
  store ptr %storemerge, ptr %i.a, align 8, !tbaa !19
  %.sroa.011.0.insert.ext = zext i32 %.sroa.011.2 to i64
  %.sroa.011.0.insert.insert = or disjoint i64 %.sroa.3.2, %.sroa.011.0.insert.ext
  ret i64 %.sroa.011.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes6parser7JSLexer22consumeIdentifierStartEv(ptr noundef nonnull align 8 dereferenceable(1160) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca [8 x i8], align 1                 ; 8 uses
  %i.c = alloca ptr, align 8                      ; 8 uses
  %1 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  %2 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19   ; 5 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !66    ; 4 uses
  switch i8 %i.g, label %bb.b [
    i8 95, label %bb.c
    i8 36, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = or i8 %i.g, 32
  %i.i = add i8 %i.h, -97
  %or.cond = icmp ult i8 %i.i, 26
  br i1 %or.cond, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  store i32 0, ptr %i.k, align 8, !tbaa !132
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store ptr %i.l, ptr %i.e, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.n = load i32, ptr %i.m, align 4, !tbaa !148
  %.not.i.not = icmp eq i32 %i.n, 0
  br i1 %.not.i.not, label %bb.d, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit, !prof !62

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull %i.o, i64 noundef 0, i64 noundef 1) #18
  %.pre.i = load i32, ptr %i.k, align 8, !tbaa !132
  %i.p = zext i32 %.pre.i to i64
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit: ; preds = %bb.c, %bb.d
  %i.q = phi i64 [ %i.p, %bb.d ], [ 0, %bb.c ]
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !131
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.q
  %i.t = load i8, ptr %i.f, align 1
  store i8 %i.t, ptr %i.s, align 1
  %i.u = load i32, ptr %i.k, align 8, !tbaa !132
  %i.v = add i32 %i.u, 1
end_hunk_0
