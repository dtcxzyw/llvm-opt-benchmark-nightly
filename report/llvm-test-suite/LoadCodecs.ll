begin_hunk_0
inline.NumInlined: 137
inline.NumDeleted: 56
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1
; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK7CCodecs24FindFormatForArchiveTypeERK11CStringBaseIwER13CRecordVectorIiE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.CStringBase, align 8         ; 8 uses
  tail call void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 3 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %_ZN11CStringBaseIwED2Ev.exit32, %bb.a
  %.021 = phi i32 [ 0, %bb.a ], [ %.122, %_ZN11CStringBaseIwED2Ev.exit32 ] ; 5 uses
  %8 = load i32, ptr %i.a, align 8, !tbaa !24     ; 2 uses
  %.not38.not.not.not.not = icmp sge i32 %.021, %8 ; 2 uses
  br i1 %.not38.not.not.not.not, label %.loopexit34, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.b = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.c = zext nneg i32 %.021 to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.c ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !19   ; 2 uses
  %i.f = icmp eq i32 %i.e, 46
end_hunk_1
begin_hunk_2
  br label %bb.d

bb.d:                                             ; preds = %_ZNK11CStringBaseIwE4FindEwi.exit.thread, %_ZNK11CStringBaseIwE4FindEwi.exit
  %.025 = phi i32 [ %8, %_ZNK11CStringBaseIwE4FindEwi.exit.thread ], [ %i.p, %_ZNK11CStringBaseIwE4FindEwi.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.r = sub nsw i32 %.025, %.021
  call void @_ZNK11CStringBaseIwE3MidEii(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %.021, i32 noundef %i.r)
  %i.s = load i32, ptr %5, align 4, !tbaa !25
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph.i28, label %_ZNK7CCodecs24FindFormatForArchiveTypeERK11CStringBaseIwE.exit.thread

.lr.ph.i28:                                       ; preds = %bb.d, %bb.e
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.e ], [ 0, %bb.d ] ; 3 uses
  %i.u = load ptr, ptr %4, align 8, !tbaa !26
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.i
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !27
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !16
  %i.z = load ptr, ptr %3, align 8, !tbaa !16
  %i.aa = invoke noundef i32 @_Z21MyStringCompareNoCasePKwS0_(ptr noundef %i.y, ptr noundef %i.z)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit

.noexc:                                           ; preds = %.lr.ph.i28
  %i.ab = icmp eq i32 %i.aa, 0
end_hunk_2
begin_hunk_3

bb.e:                                             ; preds = %.noexc
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ac = load i32, ptr %5, align 4, !tbaa !25
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp slt i64 %indvars.iv.next.i, %i.ad
  br i1 %i.ae, label %.lr.ph.i28, label %_ZNK7CCodecs24FindFormatForArchiveTypeERK11CStringBaseIwE.exit.thread, !llvm.loop !60
end_hunk_3
begin_hunk_4
_ZNK7CCodecs24FindFormatForArchiveTypeERK11CStringBaseIwE.exit.thread: ; preds = %bb.e, %bb.d
  %i.ag = load ptr, ptr %3, align 8, !tbaa !16
  %i.ah = invoke noundef i32 @_Z15MyStringComparePKwS0_(ptr noundef %i.ag, ptr noundef nonnull @.str)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %_ZNK7CCodecs24FindFormatForArchiveTypeERK11CStringBaseIwE.exit.thread
  %.not = icmp eq i32 %i.ah, 0
end_hunk_4
begin_hunk_5
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.critedge unwind label %.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph.i28
  %lpad.loopexit35 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.g, %_ZNK7CCodecs24FindFormatForArchiveTypeERK11CStringBaseIwE.exit.thread, %bb.i
  %lpad.loopexit.split-lp36 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit35, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp36, %.loopexit.split-lp.loopexit.split-lp ]
  %i.ai = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.h
end_hunk_5
begin_hunk_6
bb.i:                                             ; preds = %_ZNK7CCodecs24FindFormatForArchiveTypeERK11CStringBaseIwE.exit, %bb.f
  %i.ak = phi i32 [ -1, %bb.f ], [ %i.af, %_ZNK7CCodecs24FindFormatForArchiveTypeERK11CStringBaseIwE.exit ]
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  %i.al = load ptr, ptr %6, align 8, !tbaa !26
  %i.am = load i32, ptr %7, align 4, !tbaa !25
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.an
  store i32 %i.ak, ptr %i.ao, align 4, !tbaa !4
  %i.ap = load i32, ptr %7, align 4, !tbaa !25
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %7, align 4, !tbaa !25
  %i.ar = add nuw nsw i32 %.025, 1
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %bb.j
  %cond = phi i1 [ true, %bb.j ], [ false, %bb.g ]
  %.122 = phi i32 [ %i.ar, %bb.j ], [ %.021, %bb.g ]
  %i.as = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %_ZN11CStringBaseIwED2Ev.exit32, label %bb.k
end_hunk_6
begin_hunk_7

_ZN11CStringBaseIwED2Ev.exit32:                   ; preds = %.critedge, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br i1 %cond, label %.lr.ph, label %.loopexit34, !llvm.loop !62

.loopexit34:                                      ; preds = %.lr.ph, %_ZN11CStringBaseIwED2Ev.exit32
  ret i1 %.not38.not.not.not.not
}

; Function Attrs: mustprogress uwtable
end_hunk_7
