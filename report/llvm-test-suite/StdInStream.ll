inline.NumInlined: 22
inline.NumDeleted: 14
begin_hunk_0_@_ZN12CStdInStream4OpenEPKw:bb.a
_ZN12CStdInStream5CloseEv.exit:                   ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %wcslen.i.i = tail call i64 @wcslen(ptr %1)
  %i.h = trunc i64 %wcslen.i.i to i32             ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN12CStdInStream4OpenEPKw:bb.a
  br i1 %.not.i.i, label %_ZN11CStringBaseIwEC2EPKw.exit, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, !llvm.loop !22

_ZN11CStringBaseIwEC2EPKw.exit:                   ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  store i32 %i.h, ptr %4, align 8, !tbaa !24
  invoke void @_Z24UnicodeStringToMultiByteRK11CStringBaseIwEj(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef 0)
          to label %bb.c unwind label %bb.g
end_hunk_1
begin_hunk_2_@_ZN12CStdInStreamD2Ev:bb.a
; Function Attrs: mustprogress uwtable
define dso_local void @_ZN12CStdInStream22ScanStringUntilNewLineEb(ptr dead_on_unwind noalias writable sret(%class.CStringBase) align 8 initializes((0, 16)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i1 noundef zeroext %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.a, align 8
  %i.b = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #14 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store ptr %i.b, ptr %0, align 8, !tbaa !25
  store i8 0, ptr %i.b, align 1, !tbaa !28
  store i32 4, ptr %3, align 4, !tbaa !29
end_hunk_2
begin_hunk_3_@__cxa_throw
; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN11CStringBaseIcEpLEc(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef signext %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !29   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !31   ; 3 uses
  %i.e = xor i32 %i.d, -1
  %i.f = add i32 %i.b, %i.e                       ; 3 uses
  %.not.i = icmp slt i32 %i.f, 1
end_hunk_3
begin_hunk_4_@_ZN11CStringBaseIcEpLEc:bb.a
  %i.p = sext i32 %i.n to i64
  %i.q = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.p) #14 ; 10 uses
  %i.r = ptrtoaddr ptr %i.q to i64
  %2 = load i32, ptr %i.a, align 4, !tbaa !29
  %i.s = icmp sgt i32 %2, 0
  %.pre12.i = load i32, ptr %i.c, align 8, !tbaa !31 ; 6 uses
  br i1 %i.s, label %.preheader.i.i, label %bb.d

.preheader.i.i:                                   ; preds = %bb.c
  %i.t = icmp sgt i32 %.pre12.i, 0
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !25 ; 10 uses
  br i1 %i.t, label %iter.check, label %._crit_edge.i.i

iter.check:                                       ; preds = %.preheader.i.i
  %.pre.i.i4 = ptrtoaddr ptr %.pre.i.i to i64
  %wide.trip.count.i.i = zext nneg i32 %.pre12.i to i64 ; 8 uses
  %min.iters.check = icmp ult i32 %.pre12.i, 4
  %i.u = sub i64 %i.r, %.pre.i.i4
  %diff.check = icmp ult i64 %i.u, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check5 = icmp ult i32 %.pre12.i, 32
  br i1 %min.iters.check5, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
end_hunk_4
begin_hunk_5_@_ZN11CStringBaseIcEpLEc:bb.a
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i, %bb.c
  %i.av = phi i32 [ %.pre.i, %._crit_edge.thread.i.i ], [ %.pre12.i, %._crit_edge.i.i ], [ %.pre12.i, %bb.c ] ; 2 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !25
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds i8, ptr %i.q, i64 %i.aw
end_hunk_5
