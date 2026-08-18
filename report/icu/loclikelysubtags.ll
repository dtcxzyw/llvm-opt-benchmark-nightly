inline.NumInlined: 314
inline.NumDeleted: 102
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK6icu_7813LikelySubtags16makeMaximizedLsrEPKcS2_S2_S2_bR10UErrorCode:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @.str, ptr %i.ai, align 8, !tbaa !96, !alias.scope !126
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @.str, ptr %i.aj, align 8, !tbaa !93, !alias.scope !126
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ak, i8 0, i64 20, i1 false), !alias.scope !126
  br label %_ZNK6icu_7813LikelySubtags8maximizeEPKcS2_S2_bR10UErrorCode.exit

bb.t:                                             ; preds = %.critedge
  %i.al = icmp eq ptr %i.af, null
  %i.am = select i1 %i.al, ptr %4, ptr %i.af      ; 2 uses
  %i.an = icmp eq ptr %i.ad, null
  %i.ao = select i1 %i.an, ptr %2, ptr %i.ad      ; 2 uses
  %i.ap = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ao) #18, !noalias !126
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #18, !noalias !126
  %i.as = trunc i64 %i.ar to i32
  %i.at = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.am) #18, !noalias !126
  %i.au = trunc i64 %i.at to i32
  store ptr %i.am, ptr %8, align 8, !tbaa !129, !noalias !126
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %i.au, ptr %i.av, align 8, !tbaa !131, !noalias !126
  tail call void @_ZNK6icu_7813LikelySubtags8maximizeENS_11StringPieceES1_S1_bR10UErrorCode(ptr dead_on_unwind writable sret(%"struct.icu_78::LSR") align 8 %0, ptr noundef nonnull readonly align 8 dereferenceable(352) %1, ptr nonnull %i.ao, i32 %i.aq, ptr nonnull %3, i32 %i.as, ptr noundef nonnull byval(%"class.icu_78::StringPiece") align 8 %8, i1 noundef zeroext %6, ptr noundef nonnull align 4 dereferenceable(4) %7)
  br label %_ZNK6icu_7813LikelySubtags8maximizeEPKcS2_S2_bR10UErrorCode.exit

_ZNK6icu_7813LikelySubtags8maximizeEPKcS2_S2_bR10UErrorCode.exit: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.n, %bb.p, %bb.r, %bb.i, %bb.h, %bb.j, %_ZNK6icu_7813LikelySubtags8maximizeEPKcS2_S2_bR10UErrorCode.exit, %bb.b
  ret void
}

declare noundef ptr @_ZNK6icu_786Locale11getLanguageEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZNK6icu_786Locale9getScriptEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZNK6icu_786Locale10getCountryEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZNK6icu_786Locale10getVariantEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

declare void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #2

declare void @_ZN6icu_783LSRC1ENS_11StringPieceES1_S1_iR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(48), ptr, i32, ptr, i32, ptr noundef byval(%"class.icu_78::StringPiece") align 8, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6icu_783LSRC1EOS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #6

declare void @_ZN6icu_783LSRC1EcPKcS2_S2_iR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(48), i8 noundef signext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define void @_ZNK6icu_7813LikelySubtags8maximizeEPKcS2_S2_bR10UErrorCode(ptr dead_on_unwind noalias writable sret(%"struct.icu_78::LSR") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5, ptr noundef nonnull align 4 dereferenceable(4) %6) local_unnamed_addr #7 align 2 {
bb.a:
  %7 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %i.a = load i32, ptr %6, align 4, !tbaa !43
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr @.str.7, ptr %0, align 8, !tbaa !95
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @.str, ptr %i.c, align 8, !tbaa !96
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @.str, ptr %i.d, align 8, !tbaa !93
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.e, i8 0, i64 20, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #18
  %i.g = trunc i64 %i.f to i32
  %i.h = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #18
  %i.i = trunc i64 %i.h to i32
  %i.j = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #18
  %i.k = trunc i64 %i.j to i32
  store ptr %4, ptr %7, align 8, !tbaa !129
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.k, ptr %i.l, align 8, !tbaa !131
  tail call void @_ZNK6icu_7813LikelySubtags8maximizeENS_11StringPieceES1_S1_bR10UErrorCode(ptr dead_on_unwind writable sret(%"struct.icu_78::LSR") align 8 %0, ptr noundef nonnull align 8 dereferenceable(352) %1, ptr nonnull %2, i32 %i.g, ptr nonnull %3, i32 %i.i, ptr noundef nonnull byval(%"class.icu_78::StringPiece") align 8 %7, i1 noundef zeroext %5, ptr noundef nonnull align 4 dereferenceable(4) %6)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6icu_7813LikelySubtags8maximizeENS_11StringPieceES1_S1_bR10UErrorCode(ptr dead_on_unwind noalias writable sret(%"struct.icu_78::LSR") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %1, ptr %2, i32 %3, ptr %4, i32 %5, ptr noundef byval(%"class.icu_78::StringPiece") align 8 %6, i1 noundef zeroext %7, ptr noundef nonnull align 4 dereferenceable(4) %8) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.icu_78::StringPiece", align 8 ; 9 uses
  %10 = alloca %"class.icu_78::StringPiece", align 8 ; 8 uses
  %11 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %12 = alloca %"class.icu_78::StringPiece", align 8 ; 4 uses
  %13 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %14 = alloca %"class.icu_78::StringPiece", align 8 ; 4 uses
  %15 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %16 = alloca %"class.icu_78::StringPiece", align 8 ; 4 uses
  %17 = alloca %"class.icu_78::BytesTrie", align 8 ; 22 uses
  %18 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %19 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %20 = alloca %"class.icu_78::StringPiece", align 8 ; 2 uses
  %21 = alloca %"class.icu_78::StringPiece", align 8 ; 5 uses
  %22 = alloca %"class.icu_78::StringPiece", align 8 ; 5 uses
  %23 = alloca %"class.icu_78::StringPiece", align 8 ; 5 uses
  %24 = alloca %"class.icu_78::StringPiece", align 8 ; 5 uses
  store ptr %2, ptr %9, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 6 uses
  store i32 %3, ptr %i.a, align 8
  store ptr %4, ptr %10, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 7 uses
  store i32 %5, ptr %i.b, align 8
  %i.c = load i32, ptr %8, align 4, !tbaa !43
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr @.str.7, ptr %0, align 8, !tbaa !95
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @.str, ptr %i.e, align 8, !tbaa !96
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @.str, ptr %i.f, align 8, !tbaa !93
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.g, i8 0, i64 20, i1 false)
  br label %bb.bk

bb.c:                                             ; preds = %bb.a
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %11, ptr noundef nonnull @.str.7)
  %i.h = load ptr, ptr %11, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.j = load i32, ptr %i.i, align 8
  %i.k = call noundef i32 @_ZN6icu_7811StringPiece7compareES0_(ptr noundef nonnull align 8 dereferenceable(12) %9, ptr %i.h, i32 %i.j)
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %12, ptr noundef nonnull @.str)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %9, ptr noundef nonnull align 8 dereferenceable(12) %12, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %13, ptr noundef nonnull @.str.8)
  %i.m = load ptr, ptr %13, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.o = load i32, ptr %i.n, align 8
  %i.p = call noundef i32 @_ZN6icu_7811StringPiece7compareES0_(ptr noundef nonnull align 8 dereferenceable(12) %10, ptr %i.m, i32 %i.o)
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %14, ptr noundef nonnull @.str)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %10, ptr noundef nonnull align 8 dereferenceable(12) %14, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %15, ptr noundef nonnull @.str.9)
  %i.r = load ptr, ptr %15, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.t = load i32, ptr %i.s, align 8
  %i.u = call noundef i32 @_ZN6icu_7811StringPiece7compareES0_(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr %i.r, i32 %i.t)
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %16, ptr noundef nonnull @.str)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(12) %16, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.w = load i32, ptr %i.b, align 8, !tbaa !131  ; 2 uses
  %.not237 = icmp eq i32 %i.w, 0
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  %i.y = load i32, ptr %i.x, align 8
  %.not238 = icmp eq i32 %i.y, 0
  %or.cond245 = select i1 %.not237, i1 true, i1 %.not238
  %.sroa.230.0.copyload.pr.pre.pre = load i32, ptr %i.a, align 8 ; 8 uses
  %.not239 = icmp eq i32 %.sroa.230.0.copyload.pr.pre.pre, 0
  %or.cond297 = select i1 %or.cond245, i1 true, i1 %.not239
  br i1 %or.cond297, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.070.0.copyload = load ptr, ptr %9, align 8
  %.sroa.067.0.copyload = load ptr, ptr %10, align 8
  call void @_ZN6icu_783LSRC1ENS_11StringPieceES1_S1_iR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.sroa.070.0.copyload, i32 %.sroa.230.0.copyload.pr.pre.pre, ptr %.sroa.067.0.copyload, i32 %i.w, ptr noundef nonnull byval(%"class.icu_78::StringPiece") align 8 %6, i32 noundef 7, ptr noundef nonnull align 4 dereferenceable(4) %8)
  br label %bb.bk

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  store ptr null, ptr %17, align 8, !tbaa !116
  %i.z = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 10 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40
  %25 = load ptr, ptr %i.aa, align 8, !tbaa !117  ; 2 uses
  store ptr %25, ptr %i.z, align 8, !tbaa !117
  %i.ab = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 16 uses
  %26 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ac = load ptr, ptr %26, align 8, !tbaa !118
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !118
  %i.ad = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 11 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !119
  store i32 %i.af, ptr %i.ad, align 8, !tbaa !119
  %i.ag = load ptr, ptr %9, align 8, !tbaa !129   ; 5 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !51
  %i.ai = sext i8 %i.ah to i32
  %i.aj = add nsw i32 %i.ai, -97                  ; 2 uses
  %or.cond = icmp ult i32 %i.aj, 26
  %i.ak = icmp sgt i32 %.sroa.230.0.copyload.pr.pre.pre, 1
  %or.cond298 = select i1 %or.cond, i1 %i.ak, i1 false
  br i1 %or.cond298, label %bb.l, label %thread-pre-split

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.am = zext nneg i32 %i.aj to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !124 ; 3 uses
  %.not106 = icmp eq i64 %i.ao, 0
  br i1 %.not106, label %.preheader.i126.preheader, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.l
  %i.ap = lshr i64 %i.ao, 59
  %i.aq = trunc nuw nsw i64 %i.ap to i32
  %i.ar = add nsw i32 %i.aq, -2
  store i32 %i.ar, ptr %i.ad, align 8, !tbaa !119
  %i.as = and i64 %i.ao, 576460752303423487
  %i.at = getelementptr inbounds nuw i8, ptr %25, i64 %i.as
  store ptr %i.at, ptr %i.ab, align 8, !tbaa !118
  %zext = zext nneg i32 %.sroa.230.0.copyload.pr.pre.pre to i64
  %.0.in.i315 = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %.0.i316 = load i8, ptr %.0.in.i315, align 1, !tbaa !51 ; 2 uses
  %i.au = icmp eq i32 %.sroa.230.0.copyload.pr.pre.pre, 2
  br i1 %i.au, label %.preheader.i._crit_edge, label %.lr.ph

.preheader.i:                                     ; preds = %.noexc
  %.0.in.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 %indvars.iv.next.i318
  %.0.i = load i8, ptr %.0.in.i, align 1, !tbaa !51 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.next.i318, 1 ; 2 uses
  %i.av = icmp eq i64 %indvars.iv.next.i, %zext
  br i1 %i.av, label %.preheader.i._crit_edge, label %.lr.ph, !llvm.loop !132

.lr.ph:                                           ; preds = %.preheader.preheader.i, %.preheader.i
  %indvars.iv.next.i318 = phi i64 [ %indvars.iv.next.i, %.preheader.i ], [ 2, %.preheader.preheader.i ] ; 2 uses
  %.0.i317 = phi i8 [ %.0.i, %.preheader.i ], [ %.0.i316, %.preheader.preheader.i ]
  %i.aw = zext i8 %.0.i317 to i32
  %i.ax = invoke noundef i32 @_ZN6icu_789BytesTrie4nextEi(ptr noundef nonnull align 8 dereferenceable(28) %17, i32 noundef %i.aw)
          to label %.noexc unwind label %.loopexit.split-lp253.loopexit

.noexc:                                           ; preds = %.lr.ph
  %i.ay = and i32 %i.ax, 1
  %.not17.i = icmp eq i32 %i.ay, 0
  br i1 %.not17.i, label %.thread192, label %.preheader.i, !llvm.loop !132

.preheader.i._crit_edge:                          ; preds = %.preheader.i, %.preheader.preheader.i
  %.0.i.lcssa = phi i8 [ %.0.i316, %.preheader.preheader.i ], [ %.0.i, %.preheader.i ]
  %i.az = or i8 %.0.i.lcssa, -128
  %i.ba = zext i8 %i.az to i32
  %i.bb = invoke noundef i32 @_ZN6icu_789BytesTrie4nextEi(ptr noundef nonnull align 8 dereferenceable(28) %17, i32 noundef %i.ba)
          to label %.noexc123 unwind label %.loopexit.split-lp253.loopexit.split-lp

.noexc123:                                        ; preds = %.preheader.i._crit_edge
  switch i32 %i.bb, label %.thread192 [
    i32 2, label %.invoke
    i32 1, label %_ZN6icu_7813LikelySubtags8trieNextERNS_9BytesTrieENS_11StringPieceEi.exit.thread
    i32 3, label %bb.n
  ]

.loopexit252:                                     ; preds = %.lr.ph322
  %lpad.loopexit254 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp253

.loopexit.split-lp253.loopexit:                   ; preds = %.lr.ph
  %lpad.loopexit257 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp253

.loopexit.split-lp253.loopexit.split-lp:          ; preds = %.invoke, %bb.m, %.preheader.i._crit_edge
  %lpad.loopexit.split-lp258 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp253

thread-pre-split:                                 ; preds = %bb.k
  %i.bc = icmp eq i32 %.sroa.230.0.copyload.pr.pre.pre, 0
  br i1 %i.bc, label %bb.m, label %.preheader.i126.preheader

.preheader.i126.preheader:                        ; preds = %bb.l, %thread-pre-split
  %zext278 = zext i32 %.sroa.230.0.copyload.pr.pre.pre to i64
  %.0.i129319 = load i8, ptr %i.ag, align 1, !tbaa !51 ; 2 uses
  %i.bd = icmp eq i32 %.sroa.230.0.copyload.pr.pre.pre, 1
  br i1 %i.bd, label %.preheader.i126._crit_edge, label %.lr.ph322

.preheader.i126:                                  ; preds = %.noexc135
  %.0.in.i128 = getelementptr inbounds nuw i8, ptr %i.ag, i64 %indvars.iv.next.i130321
  %.0.i129 = load i8, ptr %.0.in.i128, align 1, !tbaa !51 ; 2 uses
  %indvars.iv.next.i130 = add nuw nsw i64 %indvars.iv.next.i130321, 1 ; 2 uses
  %i.be = icmp eq i64 %indvars.iv.next.i130, %zext278
  br i1 %i.be, label %.preheader.i126._crit_edge, label %.lr.ph322, !llvm.loop !132

.lr.ph322:                                        ; preds = %.preheader.i126.preheader, %.preheader.i126
  %indvars.iv.next.i130321 = phi i64 [ %indvars.iv.next.i130, %.preheader.i126 ], [ 1, %.preheader.i126.preheader ] ; 2 uses
  %.0.i129320 = phi i8 [ %.0.i129, %.preheader.i126 ], [ %.0.i129319, %.preheader.i126.preheader ]
  %i.bf = zext i8 %.0.i129320 to i32
  %i.bg = invoke noundef i32 @_ZN6icu_789BytesTrie4nextEi(ptr noundef nonnull align 8 dereferenceable(28) %17, i32 noundef %i.bf)
          to label %.noexc135 unwind label %.loopexit252

.noexc135:                                        ; preds = %.lr.ph322
  %i.bh = and i32 %i.bg, 1
  %.not17.i132 = icmp eq i32 %i.bh, 0
  br i1 %.not17.i132, label %.thread192, label %.preheader.i126, !llvm.loop !132

.preheader.i126._crit_edge:                       ; preds = %.preheader.i126, %.preheader.i126.preheader
  %.0.i129.lcssa = phi i8 [ %.0.i129319, %.preheader.i126.preheader ], [ %.0.i129, %.preheader.i126 ]
  %i.bi = or i8 %.0.i129.lcssa, -128
  %i.bj = zext i8 %i.bi to i32
  br label %bb.m

bb.m:                                             ; preds = %.preheader.i126._crit_edge, %thread-pre-split
  %.sink.i134 = phi i32 [ %i.bj, %.preheader.i126._crit_edge ], [ 42, %thread-pre-split ]
  %i.bk = invoke noundef i32 @_ZN6icu_789BytesTrie4nextEi(ptr noundef nonnull align 8 dereferenceable(28) %17, i32 noundef %.sink.i134)
          to label %.noexc136 unwind label %.loopexit.split-lp253.loopexit.split-lp

.noexc136:                                        ; preds = %bb.m
  switch i32 %i.bk, label %.thread192 [
    i32 2, label %.invoke
    i32 1, label %_ZN6icu_7813LikelySubtags8trieNextERNS_9BytesTrieENS_11StringPieceEi.exit.thread
    i32 3, label %bb.n
  ]

bb.n:                                             ; preds = %.noexc123, %.noexc136
  br label %_ZN6icu_7813LikelySubtags8trieNextERNS_9BytesTrieENS_11StringPieceEi.exit.thread

.invoke:                                          ; preds = %.noexc136, %.noexc123
  %i.bl = load ptr, ptr %i.ab, align 8, !tbaa !118 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bn = load i8, ptr %i.bl, align 1, !tbaa !51
  %i.bo = lshr i8 %i.bn, 1
  %i.bp = zext nneg i8 %i.bo to i32
  %i.bq = invoke noundef i32 @_ZN6icu_789BytesTrie9readValueEPKhi(ptr noundef nonnull %i.bm, i32 noundef %i.bp)
          to label %_ZN6icu_7813LikelySubtags8trieNextERNS_9BytesTrieENS_11StringPieceEi.exit unwind label %.loopexit.split-lp253.loopexit.split-lp ; 2 uses

_ZN6icu_7813LikelySubtags8trieNextERNS_9BytesTrieENS_11StringPieceEi.exit: ; preds = %.invoke
  %i.br = icmp sgt i32 %i.bq, -1
  br i1 %i.br, label %_ZN6icu_7813LikelySubtags8trieNextERNS_9BytesTrieENS_11StringPieceEi.exit.thread, label %.thread192

.loopexit247:                                     ; preds = %.lr.ph327
  %lpad.loopexit249 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp253

.loopexit.split-lp248:                            ; preds = %bb.p, %bb.r, %bb.t, %bb.v
  %lpad.loopexit.split-lp250 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp253

.thread192:                                       ; preds = %.noexc, %.noexc135, %_ZN6icu_7813LikelySubtags8trieNextERNS_9BytesTrieENS_11StringPieceEi.exit, %.noexc123, %.noexc136
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !121 ; 2 uses
  %i.bu = lshr i64 %i.bt, 59
  %i.bv = trunc nuw nsw i64 %i.bu to i32
  %i.bw = add nsw i32 %i.bv, -2
  store i32 %i.bw, ptr %i.ad, align 8, !tbaa !119
  %i.bx = load ptr, ptr %i.z, align 8, !tbaa !117
  %i.by = and i64 %i.bt, 576460752303423487
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.by
  store ptr %i.bz, ptr %i.ab, align 8, !tbaa !118
  %.sroa.225.0.copyload.pr = load i32, ptr %i.b, align 8
  br label %bb.o

_ZN6icu_7813LikelySubtags8trieNextERNS_9BytesTrieENS_11StringPieceEi.exit.thread: ; preds = %bb.n, %.noexc136, %.noexc123, %_ZN6icu_7813LikelySubtags8trieNextERNS_9BytesTrieENS_11StringPieceEi.exit
  %.085178 = phi i32 [ %i.bq, %_ZN6icu_7813LikelySubtags8trieNextERNS_9BytesTrieENS_11StringPieceEi.exit ], [ 1, %bb.n ], [ 0, %.noexc136 ], [ 0, %.noexc123 ] ; 2 uses
  %i.ca = load i32, ptr %i.a, align 8, !tbaa !131
  %i.cb = icmp ne i32 %i.ca, 0                    ; 3 uses
  %i.cc = load i32, ptr %i.ad, align 8, !tbaa !119
  %i.cd = add nsw i32 %i.cc, 2
  %i.ce = zext i32 %i.cd to i64
  %i.cf = shl i64 %i.ce, 59
  %i.cg = load ptr, ptr %i.ab, align 8, !tbaa !118
  %i.ch = load ptr, ptr %i.z, align 8, !tbaa !117
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = or i64 %i.ck, %i.cf                     ; 2 uses
  %i.cm = load i32, ptr %i.b, align 8             ; 2 uses
  %i.cn = icmp ne i32 %i.cm, 0                    ; 5 uses
  switch i32 %.085178, label %.thread219 [
    i32 0, label %bb.o
    i32 1, label %.thread208
  ]

bb.o:                                             ; preds = %_ZN6icu_7813LikelySubtags8trieNextERNS_9BytesTrieENS_11StringPieceEi.exit.thread, %.thread192
  %.sroa.225.0.copyload = phi i32 [ %.sroa.225.0.copyload.pr, %.thread192 ], [ %i.cm, %_ZN6icu_7813LikelySubtags8trieNextERNS_9BytesTrieENS_11StringPieceEi.exit.thread ] ; 3 uses
  %.093201 = phi i1 [ false, %.thread192 ], [ %i.cn, %_ZN6icu_7813LikelySubtags8trieNextERNS_9BytesTrieENS_11StringPieceEi.exit.thread ] ; 3 uses
  %i.co = phi i1 [ false, %.thread192 ], [ true, %_ZN6icu_7813LikelySubtags8trieNextERNS_9BytesTrieENS_11StringPieceEi.exit.thread ] ; 3 uses
  %.083188199 = phi i64 [ 0, %.thread192 ], [ %i.cl, %_ZN6icu_7813LikelySubtags8trieNextERNS_9BytesTrieENS_11StringPieceEi.exit.thread ] ; 3 uses
  %.0190198 = phi i1 [ true, %.thread192 ], [ %i.cb, %_ZN6icu_7813LikelySubtags8trieNextERNS_9BytesTrieENS_11StringPieceEi.exit.thread ] ; 3 uses
  %.sroa.024.0.copyload = load ptr, ptr %10, align 8 ; 2 uses
  %i.cp = icmp eq i32 %.sroa.225.0.copyload, 0
  br i1 %i.cp, label %bb.p, label %.preheader.i140.preheader

.preheader.i140.preheader:                        ; preds = %bb.o
  %zext279 = zext i32 %.sroa.225.0.copyload to i64
  %.0.i143324 = load i8, ptr %.sroa.024.0.copyload, align 1, !tbaa !51 ; 2 uses
  %i.cq = icmp eq i32 %.sroa.225.0.copyload, 1
  br i1 %i.cq, label %.preheader.i140._crit_edge, label %.lr.ph327

.preheader.i140:                                  ; preds = %.noexc149
  %.0.in.i142 = getelementptr inbounds nuw i8, ptr %.sroa.024.0.copyload, i64 %indvars.iv.next.i144326
  %.0.i143 = load i8, ptr %.0.in.i142, align 1, !tbaa !51 ; 2 uses
  %indvars.iv.next.i144 = add nuw nsw i64 %indvars.iv.next.i144326, 1 ; 2 uses
  %i.cr = icmp eq i64 %indvars.iv.next.i144, %zext279
  br i1 %i.cr, label %.preheader.i140._crit_edge, label %.lr.ph327, !llvm.loop !132

.lr.ph327:                                        ; preds = %.preheader.i140.preheader, %.preheader.i140
  %indvars.iv.next.i144326 = phi i64 [ %indvars.iv.next.i144, %.preheader.i140 ], [ 1, %.preheader.i140.preheader ] ; 2 uses
  %.0.i143325 = phi i8 [ %.0.i143, %.preheader.i140 ], [ %.0.i143324, %.preheader.i140.preheader ]
  %i.cs = zext i8 %.0.i143325 to i32
  %i.ct = invoke noundef i32 @_ZN6icu_789BytesTrie4nextEi(ptr noundef nonnull align 8 dereferenceable(28) %17, i32 noundef %i.cs)
          to label %.noexc149 unwind label %.loopexit247

.noexc149:                                        ; preds = %.lr.ph327
  %i.cu = and i32 %i.ct, 1
  %.not17.i146 = icmp eq i32 %i.cu, 0
  br i1 %.not17.i146, label %_ZN6icu_7813LikelySubtags8trieNextERNS_9BytesTrieENS_11StringPieceEi.exit152.thread205, label %.preheader.i140, !llvm.loop !132

.preheader.i140._crit_edge:                       ; preds = %.preheader.i140, %.preheader.i140.preheader
  %.0.i143.lcssa = phi i8 [ %.0.i143324, %.preheader.i140.preheader ], [ %.0.i143, %.preheader.i140 ]
end_hunk_0
begin_hunk_1_@_ZN6icu_7813LikelySubtags8trieNextERNS_9BytesTrieENS_11StringPieceEi:bb.a
    i32 2, label %bb.d
    i32 1, label %.loopexit
    i32 3, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !118  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.n = load i8, ptr %i.l, align 1, !tbaa !51
  %i.o = lshr i8 %i.n, 1
  %i.p = zext nneg i8 %i.o to i32
  %i.q = tail call noundef i32 @_ZN6icu_789BytesTrie9readValueEPKhi(ptr noundef nonnull %i.m, i32 noundef %i.p)
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.e, %bb.d, %bb.c
  %.014 = phi i32 [ -1, %bb.e ], [ 0, %bb.b ], [ %i.q, %bb.d ], [ 1, %bb.c ], [ -1, %.lr.ph ]
  ret i32 %.014
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6icu_7813LikelySubtags8trieNextERNS_9BytesTrieEPKci(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = sext i32 %2 to i64                       ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %1, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1, !tbaa !51    ; 2 uses
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ %i.a, %bb.a ]
  %.016 = phi i8 [ %i.f, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.next
  %i.f = load i8, ptr %i.e, align 1, !tbaa !51    ; 2 uses
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %.thread26, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.g = zext i8 %.016 to i32
  %i.h = tail call noundef i32 @_ZN6icu_789BytesTrie4nextEi(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef %i.g)
  %i.i = and i32 %i.h, 1
  %.not22 = icmp eq i32 %i.i, 0
  br i1 %.not22, label %.thread, label %.preheader

.thread26:                                        ; preds = %.preheader
  %i.j = or i8 %.016, -128
  %i.k = zext i8 %i.j to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %.thread26
  %.sink = phi i32 [ %i.k, %.thread26 ], [ 42, %bb.a ]
  %i.l = tail call noundef i32 @_ZN6icu_789BytesTrie4nextEi(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef %.sink)
  switch i32 %i.l, label %bb.f [
    i32 2, label %bb.e
    i32 1, label %.thread
    i32 3, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !118  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.p = load i8, ptr %i.n, align 1, !tbaa !51
  %i.q = lshr i8 %i.p, 1
  %i.r = zext nneg i8 %i.q to i32
  %i.s = tail call noundef i32 @_ZN6icu_789BytesTrie9readValueEPKhi(ptr noundef nonnull %i.o, i32 noundef %i.r)
  br label %.thread

bb.f:                                             ; preds = %bb.c
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.c, %bb.f, %bb.e, %bb.d
  %.2 = phi i32 [ -1, %bb.f ], [ 0, %bb.c ], [ %i.s, %bb.e ], [ 1, %bb.d ], [ -1, %bb.b ]
  ret i32 %.2
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6icu_7813LikelySubtags13compareLikelyERKNS_3LSRES3_i(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %2, i32 noundef %3) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !95     ; 3 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !95
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.b) #18
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !96   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !96
  %i.h = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(1) %i.g) #18
  %.not35 = icmp eq i32 %i.h, 0
  br i1 %.not35, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = and i32 %3, -2147483646
  %or.cond = icmp eq i32 %i.i, 0
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = lshr i32 %3, 2
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.k = tail call noundef i32 @_ZNK6icu_7813LikelySubtags14getLikelyIndexEPKcS2_(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull %i.a, ptr noundef nonnull @.str) ; 2 uses
  %i.l = shl i32 %i.k, 2
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !96
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = phi ptr [ %i.e, %bb.d ], [ %.pre, %bb.e ]
  %.032 = phi i32 [ %i.j, %bb.d ], [ %i.k, %bb.e ]
  %.030 = phi i32 [ %3, %bb.d ], [ %i.l, %bb.e ]  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !120
  %i.p = sext i32 %.032 to i64
  %i.q = getelementptr inbounds [48 x i8], ptr %i.o, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !96
  %i.t = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(1) %i.s) #18
  %i.u = icmp eq i32 %i.t, 0
  %i.v = or i32 %.030, 1
  %i.w = and i32 %.030, -4
  %.0 = select i1 %i.u, i32 %i.v, i32 %i.w
  br label %bb.m

bb.g:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !93   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !93
  %i.ab = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.y, ptr noundef nonnull dereferenceable(1) %i.aa) #18
  %.not36 = icmp eq i32 %i.ab, 0
  br i1 %.not36, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = and i32 %3, -2147483646
  %or.cond39.not = icmp eq i32 %i.ac, 2
  br i1 %or.cond39.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ad = lshr i32 %3, 2
  %i.ae = and i32 %3, 2147483646
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.af = tail call noundef i32 @_ZNK6icu_7813LikelySubtags14getLikelyIndexEPKcS2_(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.y) ; 2 uses
  %i.ag = shl i32 %i.af, 2
  %i.ah = or disjoint i32 %i.ag, 2
  %.pre40 = load ptr, ptr %i.x, align 8, !tbaa !93
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ai = phi ptr [ %i.y, %bb.i ], [ %.pre40, %bb.j ]
  %.131 = phi i32 [ %i.ae, %bb.i ], [ %i.ah, %bb.j ]
  %.029 = phi i32 [ %i.ad, %bb.i ], [ %i.af, %bb.j ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !120
  %i.al = sext i32 %.029 to i64
  %i.am = getelementptr inbounds [48 x i8], ptr %i.ak, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !93
  %i.ap = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ai, ptr noundef nonnull dereferenceable(1) %i.ao) #18
  %i.aq = icmp eq i32 %i.ap, 0
  %masksel = zext i1 %i.aq to i32
  %.1 = or i32 %.131, %masksel
  br label %bb.m

bb.l:                                             ; preds = %bb.g
  %i.ar = and i32 %3, -2
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %bb.l, %bb.k, %bb.f
  %.2 = phi i32 [ %i.ar, %bb.l ], [ %.0, %bb.f ], [ %.1, %bb.k ], [ -4, %bb.a ]
  ret i32 %.2
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6icu_7813LikelySubtags14getLikelyIndexEPKcS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.icu_78::BytesTrie", align 8 ; 17 uses
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(4) @.str.7) #18
  %i.b = icmp eq i32 %i.a, 0
  %spec.store.select = select i1 %i.b, ptr @.str, ptr %1 ; 4 uses
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(5) @.str.8) #18
  %i.d = icmp eq i32 %i.c, 0
  %spec.store.select3 = select i1 %i.d, ptr @.str, ptr %2 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store ptr null, ptr %3, align 8, !tbaa !116
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %4 = load ptr, ptr %i.f, align 8, !tbaa !117    ; 2 uses
  store ptr %4, ptr %i.e, align 8, !tbaa !117
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 11 uses
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %5, align 8, !tbaa !118
  store ptr %i.h, ptr %i.g, align 8, !tbaa !118
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load i32, ptr %i.j, align 8, !tbaa !119
  store i32 %i.k, ptr %i.i, align 8, !tbaa !119
  %i.l = load i8, ptr %spec.store.select, align 1, !tbaa !51 ; 3 uses
  %i.m = sext i8 %i.l to i32
  %i.n = add nsw i32 %i.m, -97                    ; 2 uses
  %or.cond = icmp ult i32 %i.n, 26
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %spec.store.select, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !51    ; 2 uses
  %.not = icmp eq i8 %i.p, 0
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.r = zext nneg i32 %i.n to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.r
  %i.t = load i64, ptr %i.s, align 8, !tbaa !124  ; 3 uses
  %.not28 = icmp eq i64 %i.t, 0
  br i1 %.not28, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = lshr i64 %i.t, 59
  %i.v = trunc nuw nsw i64 %i.u to i32
  %i.w = add nsw i32 %i.v, -2
  store i32 %i.w, ptr %i.i, align 8, !tbaa !119
  %i.x = and i64 %i.t, 576460752303423487
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 %i.x
  store ptr %i.y, ptr %i.g, align 8, !tbaa !118
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %.noexc
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.noexc ], [ 1, %bb.d ]
  %.016.i = phi i8 [ %i.aa, %.noexc ], [ %i.p, %bb.d ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %spec.store.select, i64 %indvars.iv.next.i
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !51   ; 2 uses
  %.not.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.preheader.i
  %i.ab = zext i8 %.016.i to i32
  %i.ac = invoke noundef i32 @_ZN6icu_789BytesTrie4nextEi(ptr noundef nonnull align 8 dereferenceable(28) %3, i32 noundef %i.ab)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc:                                           ; preds = %bb.e
  %i.ad = and i32 %i.ac, 1
  %.not22.i = icmp eq i32 %i.ad, 0
  br i1 %.not22.i, label %.thread, label %.preheader.i

bb.f:                                             ; preds = %.preheader.i
  %i.ae = or i8 %.016.i, -128
  %i.af = zext i8 %i.ae to i32
  %i.ag = invoke noundef i32 @_ZN6icu_789BytesTrie4nextEi(ptr noundef nonnull align 8 dereferenceable(28) %3, i32 noundef %i.af)
          to label %.noexc29 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc29:                                         ; preds = %bb.f
  switch i32 %i.ag, label %.thread [
    i32 2, label %.invoke
    i32 1, label %_ZN6icu_7813LikelySubtags8trieNextERNS_9BytesTrieEPKci.exit.thread.thread
    i32 3, label %.thread83
  ]

.invoke:                                          ; preds = %.noexc29, %.noexc41
  %i.ah = load ptr, ptr %i.g, align 8, !tbaa !118 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %i.aj = load i8, ptr %i.ah, align 1, !tbaa !51
  %i.ak = lshr i8 %i.aj, 1
  %i.al = zext nneg i8 %i.ak to i32
  %i.am = invoke noundef i32 @_ZN6icu_789BytesTrie9readValueEPKhi(ptr noundef nonnull %i.ai, i32 noundef %i.al)
          to label %_ZN6icu_7813LikelySubtags8trieNextERNS_9BytesTrieEPKci.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.loopexit:                                        ; preds = %bb.k
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.h
  %lpad.loopexit88 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.e
  %lpad.loopexit91 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %bb.f, %bb.i, %bb.l, %bb.m, %bb.o, %bb.p, %.thread83, %bb.r
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit88, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit91, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6icu_789BytesTrieD1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  resume { ptr, i32 } %lpad.phi

bb.g:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.an = icmp eq i8 %i.l, 0
  br i1 %i.an, label %bb.i, label %.preheader.i31

.preheader.i31:                                   ; preds = %bb.g, %.noexc40
  %indvars.iv.i32 = phi i64 [ %indvars.iv.next.i34, %.noexc40 ], [ 0, %bb.g ]
  %.016.i33 = phi i8 [ %i.ap, %.noexc40 ], [ %i.l, %bb.g ] ; 2 uses
  %indvars.iv.next.i34 = add nuw nsw i64 %indvars.iv.i32, 1 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %spec.store.select, i64 %indvars.iv.next.i34
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !51  ; 2 uses
  %.not.i35 = icmp eq i8 %i.ap, 0
  br i1 %.not.i35, label %.thread26.i38, label %bb.h

bb.h:                                             ; preds = %.preheader.i31
  %i.aq = zext i8 %.016.i33 to i32
  %i.ar = invoke noundef i32 @_ZN6icu_789BytesTrie4nextEi(ptr noundef nonnull align 8 dereferenceable(28) %3, i32 noundef %i.aq)
          to label %.noexc40 unwind label %.loopexit.split-lp.loopexit

.noexc40:                                         ; preds = %bb.h
  %i.as = and i32 %i.ar, 1
  %.not22.i36 = icmp eq i32 %i.as, 0
  br i1 %.not22.i36, label %.thread, label %.preheader.i31

.thread26.i38:                                    ; preds = %.preheader.i31
  %i.at = or i8 %.016.i33, -128
  %i.au = zext i8 %i.at to i32
  br label %bb.i

bb.i:                                             ; preds = %.thread26.i38, %bb.g
  %.sink.i39 = phi i32 [ %i.au, %.thread26.i38 ], [ 42, %bb.g ]
  %i.av = invoke noundef i32 @_ZN6icu_789BytesTrie4nextEi(ptr noundef nonnull align 8 dereferenceable(28) %3, i32 noundef %.sink.i39)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc41:                                         ; preds = %bb.i
  switch i32 %i.av, label %.thread [
    i32 2, label %.invoke
    i32 1, label %_ZN6icu_7813LikelySubtags8trieNextERNS_9BytesTrieEPKci.exit.thread.thread
    i32 3, label %.thread83
  ]

_ZN6icu_7813LikelySubtags8trieNextERNS_9BytesTrieEPKci.exit: ; preds = %.invoke
  %i.aw = icmp sgt i32 %i.am, -1
  br i1 %i.aw, label %_ZN6icu_7813LikelySubtags8trieNextERNS_9BytesTrieEPKci.exit.thread, label %.thread

.thread:                                          ; preds = %.noexc, %.noexc40, %_ZN6icu_7813LikelySubtags8trieNextERNS_9BytesTrieEPKci.exit, %.noexc29, %.noexc41
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !121 ; 2 uses
  %i.az = lshr i64 %i.ay, 59
  %i.ba = trunc nuw nsw i64 %i.az to i32
  %i.bb = add nsw i32 %i.ba, -2
  store i32 %i.bb, ptr %i.i, align 8, !tbaa !119
  %i.bc = load ptr, ptr %i.e, align 8, !tbaa !117
  %i.bd = and i64 %i.ay, 576460752303423487
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bd
  store ptr %i.be, ptr %i.g, align 8, !tbaa !118
  br label %bb.j

_ZN6icu_7813LikelySubtags8trieNextERNS_9BytesTrieEPKci.exit.thread.thread: ; preds = %.noexc41, %.noexc29
  %i.bf = load i32, ptr %i.i, align 8, !tbaa !119
  %i.bg = add nsw i32 %i.bf, 2
  %i.bh = zext i32 %i.bg to i64
  %i.bi = shl i64 %i.bh, 59
  %i.bj = load ptr, ptr %i.g, align 8, !tbaa !118
  %i.bk = load ptr, ptr %i.e, align 8, !tbaa !117
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = or i64 %i.bn, %i.bi
  br label %bb.j

_ZN6icu_7813LikelySubtags8trieNextERNS_9BytesTrieEPKci.exit.thread: ; preds = %_ZN6icu_7813LikelySubtags8trieNextERNS_9BytesTrieEPKci.exit
  %i.bp = load i32, ptr %i.i, align 8, !tbaa !119
  %i.bq = add nsw i32 %i.bp, 2
  %i.br = zext i32 %i.bq to i64
  %i.bs = shl i64 %i.br, 59
  %i.bt = load ptr, ptr %i.g, align 8, !tbaa !118
  %i.bu = load ptr, ptr %i.e, align 8, !tbaa !117
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = or i64 %i.bx, %i.bs
  switch i32 %i.am, label %_ZN6icu_7813LikelySubtags8trieNextERNS_9BytesTrieEPKci.exit66 [
    i32 0, label %bb.j
    i32 1, label %.thread83
  ]

bb.j:                                             ; preds = %_ZN6icu_7813LikelySubtags8trieNextERNS_9BytesTrieEPKci.exit.thread.thread, %_ZN6icu_7813LikelySubtags8trieNextERNS_9BytesTrieEPKci.exit.thread, %.thread
  %.076 = phi i64 [ 0, %.thread ], [ %i.by, %_ZN6icu_7813LikelySubtags8trieNextERNS_9BytesTrieEPKci.exit.thread ], [ %i.bo, %_ZN6icu_7813LikelySubtags8trieNextERNS_9BytesTrieEPKci.exit.thread.thread ] ; 3 uses
  %i.bz = load i8, ptr %spec.store.select3, align 1, !tbaa !51 ; 2 uses
  %i.ca = icmp eq i8 %i.bz, 0
  br i1 %i.ca, label %bb.l, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.j, %.noexc53
  %indvars.iv.i45 = phi i64 [ %indvars.iv.next.i47, %.noexc53 ], [ 0, %bb.j ]
  %.016.i46 = phi i8 [ %i.cc, %.noexc53 ], [ %i.bz, %bb.j ] ; 2 uses
  %indvars.iv.next.i47 = add nuw nsw i64 %indvars.iv.i45, 1 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %spec.store.select3, i64 %indvars.iv.next.i47
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !51  ; 2 uses
  %.not.i48 = icmp eq i8 %i.cc, 0
  br i1 %.not.i48, label %.thread26.i51, label %bb.k

bb.k:                                             ; preds = %.preheader.i44
  %i.cd = zext i8 %.016.i46 to i32
  %i.ce = invoke noundef i32 @_ZN6icu_789BytesTrie4nextEi(ptr noundef nonnull align 8 dereferenceable(28) %3, i32 noundef %i.cd)
          to label %.noexc53 unwind label %.loopexit

.noexc53:                                         ; preds = %bb.k
  %i.cf = and i32 %i.ce, 1
  %.not22.i49 = icmp eq i32 %i.cf, 0
  br i1 %.not22.i49, label %_ZN6icu_7813LikelySubtags8trieNextERNS_9BytesTrieEPKci.exit56.thread80, label %.preheader.i44

.thread26.i51:                                    ; preds = %.preheader.i44
  %i.cg = or i8 %.016.i46, -128
  %i.ch = zext i8 %i.cg to i32
  br label %bb.l

bb.l:                                             ; preds = %.thread26.i51, %bb.j
  %.sink.i52 = phi i32 [ %i.ch, %.thread26.i51 ], [ 42, %bb.j ]
  %i.ci = invoke noundef i32 @_ZN6icu_789BytesTrie4nextEi(ptr noundef nonnull align 8 dereferenceable(28) %3, i32 noundef %.sink.i52)
          to label %.noexc54 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc54:                                         ; preds = %bb.l
  switch i32 %i.ci, label %_ZN6icu_7813LikelySubtags8trieNextERNS_9BytesTrieEPKci.exit56.thread80 [
    i32 2, label %bb.m
    i32 1, label %.thread83
    i32 3, label %_ZN6icu_7813LikelySubtags8trieNextERNS_9BytesTrieEPKci.exit66
  ]

bb.m:                                             ; preds = %.noexc54
  %i.cj = load ptr, ptr %i.g, align 8, !tbaa !118 ; 2 uses
end_hunk_1
