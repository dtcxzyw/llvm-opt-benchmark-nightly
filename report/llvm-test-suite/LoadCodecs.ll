begin_hunk_0
inline.NumInlined: 138
inline.NumDeleted: 56
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1
; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK7CCodecs24FindFormatForArchiveTypeERK11CStringBaseIwER13CRecordVectorIiE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.CStringBase, align 8         ; 10 uses
  tail call void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %4 = load i32, ptr %i.a, align 8, !tbaa !24     ; 2 uses
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %.loopexit34, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN11CStringBaseIwED2Ev.exit31
  %10 = phi i32 [ %4, %.lr.ph ], [ %14, %_ZN11CStringBaseIwED2Ev.exit31 ]
  %.02144 = phi i32 [ 0, %.lr.ph ], [ %i.ar, %_ZN11CStringBaseIwED2Ev.exit31 ] ; 3 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.c = zext nneg i32 %.02144 to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.c ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !19   ; 2 uses
  %i.f = icmp eq i32 %i.e, 46
end_hunk_1
begin_hunk_2
  br label %bb.d

bb.d:                                             ; preds = %_ZNK11CStringBaseIwE4FindEwi.exit.thread, %_ZNK11CStringBaseIwE4FindEwi.exit
  %.025 = phi i32 [ %10, %_ZNK11CStringBaseIwE4FindEwi.exit.thread ], [ %i.p, %_ZNK11CStringBaseIwE4FindEwi.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.r = sub nsw i32 %.025, %.02144
  call void @_ZNK11CStringBaseIwE3MidEii(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %.02144, i32 noundef %i.r)
  %i.s = load i32, ptr %7, align 4, !tbaa !25
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph.i28, label %_ZNK7CCodecs24FindFormatForArchiveTypeERK11CStringBaseIwE.exit.thread

.lr.ph.i28:                                       ; preds = %bb.d, %bb.e
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.e ], [ 0, %bb.d ] ; 3 uses
  %i.u = load ptr, ptr %6, align 8, !tbaa !26
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.i
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !27
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !16
  %i.z = load ptr, ptr %3, align 8, !tbaa !16
  %i.aa = invoke noundef i32 @_Z21MyStringCompareNoCasePKwS0_(ptr noundef %i.y, ptr noundef %i.z)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %.lr.ph.i28
  %i.ab = icmp eq i32 %i.aa, 0
end_hunk_2
begin_hunk_3

bb.e:                                             ; preds = %.noexc
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ac = load i32, ptr %7, align 4, !tbaa !25
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp slt i64 %indvars.iv.next.i, %i.ad
  br i1 %i.ae, label %.lr.ph.i28, label %_ZNK7CCodecs24FindFormatForArchiveTypeERK11CStringBaseIwE.exit.thread, !llvm.loop !60
end_hunk_3
begin_hunk_4
_ZNK7CCodecs24FindFormatForArchiveTypeERK11CStringBaseIwE.exit.thread: ; preds = %bb.e, %bb.d
  %i.ag = load ptr, ptr %3, align 8, !tbaa !16
  %i.ah = invoke noundef i32 @_Z15MyStringComparePKwS0_(ptr noundef %i.ag, ptr noundef nonnull @.str)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit

bb.f:                                             ; preds = %_ZNK7CCodecs24FindFormatForArchiveTypeERK11CStringBaseIwE.exit.thread
  %.not = icmp eq i32 %i.ah, 0
end_hunk_4
begin_hunk_5
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.critedge unwind label %.loopexit.split-lp.loopexit.split-lp

.loopexit:                                        ; preds = %.lr.ph.i28
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.i, %_ZNK7CCodecs24FindFormatForArchiveTypeERK11CStringBaseIwE.exit.thread
  %lpad.loopexit35 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.g
  %lpad.loopexit.split-lp36 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit35, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp36, %.loopexit.split-lp.loopexit.split-lp ]
  %i.ai = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.h
end_hunk_5
begin_hunk_6
bb.i:                                             ; preds = %_ZNK7CCodecs24FindFormatForArchiveTypeERK11CStringBaseIwE.exit, %bb.f
  %i.ak = phi i32 [ -1, %bb.f ], [ %i.af, %_ZNK7CCodecs24FindFormatForArchiveTypeERK11CStringBaseIwE.exit ]
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit

bb.j:                                             ; preds = %bb.i
  %i.al = load ptr, ptr %8, align 8, !tbaa !26
  %i.am = load i32, ptr %9, align 4, !tbaa !25
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.an
  store i32 %i.ak, ptr %i.ao, align 4, !tbaa !4
  %i.ap = load i32, ptr %9, align 4, !tbaa !25
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %9, align 4, !tbaa !25
  %i.ar = add nuw nsw i32 %.025, 1                ; 2 uses
  %11 = load ptr, ptr %3, align 8, !tbaa !16      ; 2 uses
  %12 = icmp eq ptr %11, null
  br i1 %12, label %_ZN11CStringBaseIwED2Ev.exit31, label %13

13:                                               ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %11) #19
  br label %_ZN11CStringBaseIwED2Ev.exit31

_ZN11CStringBaseIwED2Ev.exit31:                   ; preds = %bb.j, %13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %14 = load i32, ptr %i.a, align 8, !tbaa !24    ; 2 uses
  %.not45 = icmp slt i32 %i.ar, %14
  br i1 %.not45, label %bb.b, label %.loopexit34, !llvm.loop !62

.critedge:                                        ; preds = %bb.g
  %i.as = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %_ZN11CStringBaseIwED2Ev.exit32, label %bb.k
end_hunk_6
begin_hunk_7

_ZN11CStringBaseIwED2Ev.exit32:                   ; preds = %.critedge, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %.loopexit34

.loopexit34:                                      ; preds = %_ZN11CStringBaseIwED2Ev.exit31, %bb.a, %_ZN11CStringBaseIwED2Ev.exit32
  %15 = phi i1 [ false, %_ZN11CStringBaseIwED2Ev.exit32 ], [ true, %bb.a ], [ true, %_ZN11CStringBaseIwED2Ev.exit31 ]
  ret i1 %15
}

; Function Attrs: mustprogress uwtable
end_hunk_7
