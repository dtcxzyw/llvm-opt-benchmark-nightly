inline.NumInlined: 15
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZN10ODDLParser4TextC1EPKcm = hidden unnamed_addr alias void (ptr, ptr, i64), ptr @_ZN10ODDLParser4TextC2EPKcm
@_ZN10ODDLParser4TextD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN10ODDLParser4TextD2Ev
@_ZN10ODDLParser4NameC1ENS_8NameTypeEPNS_4TextE = hidden unnamed_addr alias void (ptr, i32, ptr), ptr @_ZN10ODDLParser4NameC2ENS_8NameTypeEPNS_4TextE
@_ZN10ODDLParser4NameD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN10ODDLParser4NameD2Ev
@_ZN10ODDLParser4NameC1ERKS0_ = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN10ODDLParser4NameC2ERKS0_
@_ZN10ODDLParser9ReferenceC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN10ODDLParser9ReferenceC2Ev
@_ZN10ODDLParser9ReferenceC1EmPPNS_4NameE = hidden unnamed_addr alias void (ptr, i64, ptr), ptr @_ZN10ODDLParser9ReferenceC2EmPPNS_4NameE
@_ZN10ODDLParser9ReferenceC1ERKS0_ = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN10ODDLParser9ReferenceC2ERKS0_
@_ZN10ODDLParser9ReferenceD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN10ODDLParser9ReferenceD2Ev
@_ZN10ODDLParser8PropertyC1EPNS_4TextE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN10ODDLParser8PropertyC2EPNS_4TextE
@_ZN10ODDLParser8PropertyD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN10ODDLParser8PropertyD2Ev
@_ZN10ODDLParser13DataArrayListC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN10ODDLParser13DataArrayListC2Ev
@_ZN10ODDLParser13DataArrayListD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN10ODDLParser13DataArrayListD2Ev
@_ZN10ODDLParser7ContextC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN10ODDLParser7ContextC2Ev
@_ZN10ODDLParser7ContextD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN10ODDLParser7ContextD2Ev

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10ODDLParser4TextC2EPKcm(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 align 2 {
_ZN10ODDLParser4Text5clearEv.exit.i:
  %.not.i = icmp eq i64 %2, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br i1 %.not.i, label %_ZN10ODDLParser4Text3setEPKcm.exit, label %bb.a

bb.a:                                             ; preds = %_ZN10ODDLParser4Text5clearEv.exit.i
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.b, align 8
  %i.c = add i64 %2, 1                            ; 2 uses
  store i64 %i.c, ptr %0, align 8
  %i.d = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.c) #12 ; 3 uses
  store ptr %i.d, ptr %i.a, align 8
  %i.e = tail call ptr @strncpy(ptr noundef nonnull %i.d, ptr noundef readonly %1, i64 noundef %2) #13 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %2
  store i8 0, ptr %i.f, align 1
  br label %_ZN10ODDLParser4Text3setEPKcm.exit

_ZN10ODDLParser4Text3setEPKcm.exit:               ; preds = %_ZN10ODDLParser4Text5clearEv.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10ODDLParser4Text3setEPKcm(ptr noundef nonnull align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN10ODDLParser4Text5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #14
  br label %_ZN10ODDLParser4Text5clearEv.exit

_ZN10ODDLParser4Text5clearEv.exit:                ; preds = %bb.a, %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN10ODDLParser4Text5clearEv.exit
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.d, align 8
  %i.e = add i64 %2, 1                            ; 2 uses
  store i64 %i.e, ptr %0, align 8
  %i.f = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.e) #12 ; 3 uses
  store ptr %i.f, ptr %i.a, align 8
  %i.g = tail call ptr @strncpy(ptr noundef nonnull %i.f, ptr noundef %1, i64 noundef %2) #13 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %2
  store i8 0, ptr %i.h, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN10ODDLParser4Text5clearEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN10ODDLParser4TextD2Ev(ptr noundef nonnull readonly align 8 captures(none) dead_on_return(24) dereferenceable(24) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN10ODDLParser4Text5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #14
  br label %_ZN10ODDLParser4Text5clearEv.exit

_ZN10ODDLParser4Text5clearEv.exit:                ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN10ODDLParser4Text5clearEv(ptr noundef nonnull align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK10ODDLParser4TexteqERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.b, %i.d
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load ptr, ptr %1, align 8
  %i.h = tail call i32 @strncmp(ptr noundef %i.f, ptr noundef %i.g, i64 noundef %i.b) #15
  %i.i = icmp eq i32 %i.h, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.i, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK10ODDLParser4TexteqERKS0_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.b, %i.d
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call i32 @strncmp(ptr noundef %i.f, ptr noundef %i.h, i64 noundef %i.b) #15
  %i.j = icmp eq i32 %i.i, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.j, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN10ODDLParser4NameC2ENS_8NameTypeEPNS_4TextE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 4), (8, 16)) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #7 align 2 {
bb.a:
  store i32 %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN10ODDLParser4NameD2Ev(ptr noundef nonnull readonly align 8 captures(none) dead_on_return(16) dereferenceable(16) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN10ODDLParser4TextD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #14
  br label %_ZN10ODDLParser4TextD2Ev.exit

_ZN10ODDLParser4TextD2Ev.exit:                    ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 24) #14
  br label %bb.d

bb.d:                                             ; preds = %_ZN10ODDLParser4TextD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10ODDLParser4NameC2ERKS0_(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 4)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 8
  store i32 %i.a, ptr %0, align 8
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #12 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i64, ptr %i.g, align 8              ; 5 uses
  %.not.i.i = icmp eq i64 %i.h, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  br i1 %.not.i.i, label %_ZN10ODDLParser4TextC2EPKcm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.h, ptr %i.i, align 8
  %i.j = add i64 %i.h, 1                          ; 2 uses
  store i64 %i.j, ptr %i.b, align 8
  %i.k = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.j) #12
          to label %.noexc unwind label %bb.c     ; 3 uses

.noexc:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.k, ptr %i.l, align 8
  %i.m = tail call ptr @strncpy(ptr noundef nonnull %i.k, ptr noundef readonly %i.f, i64 noundef %i.h) #13 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h
  store i8 0, ptr %i.n, align 1
  br label %_ZN10ODDLParser4TextC2EPKcm.exit

_ZN10ODDLParser4TextC2EPKcm.exit:                 ; preds = %.noexc, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.o, align 8
  ret void

bb.c:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 24) #14
  resume { ptr, i32 } %i.p
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN10ODDLParser9ReferenceC2Ev(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10ODDLParser9ReferenceC2EmPPNS_4NameE(ptr noundef nonnull align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, i64 noundef %1, ptr noundef readonly captures(none) %2) unnamed_addr #0 align 2 {
bb.a:
  store i64 %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  store ptr null, ptr %i.a, align 8
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %1, 2305843009213693951
  %i.c = shl nuw i64 %1, 3
  %i.d = select i1 %i.b, i64 -1, i64 %i.c
  %i.e = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.d) #12
  store ptr %i.e, ptr %i.a, align 8
  %xtraiter = and i64 %1, 3                       ; 3 uses
  %i.f = icmp ult i64 %1, 4
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %1, -4
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %.010 = phi i64 [ 0, %.new ], [ %i.z, %bb.c ]   ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.c ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.010
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.010
  store ptr %i.h, ptr %i.j, align 8
  %i.k = or disjoint i64 %.010, 1                 ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.k
  store ptr %i.m, ptr %i.o, align 8
  %i.p = or disjoint i64 %.010, 2                 ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = load ptr, ptr %i.a, align 8
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.p
  store ptr %i.r, ptr %i.t, align 8
  %i.u = or disjoint i64 %.010, 3                 ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.a, align 8
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.u
  store ptr %i.w, ptr %i.y, align 8
  %i.z = add nuw i64 %.010, 4                     ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !3

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %bb.b
  %.010.epil.init = phi i64 [ 0, %bb.b ], [ %i.z, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod11 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod11)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %.010.epil = phi i64 [ %.010.epil.init, %.epil.preheader ], [ %i.ae, %bb.d ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.010.epil
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = load ptr, ptr %i.a, align 8
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.010.epil
  store ptr %i.ab, ptr %i.ad, align 8
  %i.ae = add nuw i64 %.010.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.d, !llvm.loop !5

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10ODDLParser9ReferenceC2ERKS0_(ptr noundef nonnull align 8 captures(none) dereferenceable(16) initializes((0, 8)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 4 uses
  store i64 %i.a, ptr %0, align 8
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = icmp ugt i64 %i.a, 2305843009213693951
  %i.c = shl i64 %i.a, 3
  %i.d = select i1 %i.b, i64 -1, i64 %i.c
  %i.e = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.d) #12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.e, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.011 = phi i64 [ 0, %.lr.ph ], [ %i.ad, %bb.e ] ; 3 uses
  %i.h = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #12 ; 4 uses
  %i.i = load ptr, ptr %i.g, align 8
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.011
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = load i32, ptr %i.k, align 8
  store i32 %i.l, ptr %i.h, align 8
  %i.m = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #12
          to label %.noexc unwind label %bb.f     ; 6 uses

.noexc:                                           ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = load i64, ptr %i.r, align 8              ; 5 uses
  %.not.i.i.i = icmp eq i64 %i.s, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.s, ptr %i.t, align 8
  %i.u = add i64 %i.s, 1                          ; 2 uses
  store i64 %i.u, ptr %i.m, align 8
  %i.v = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.u) #12
          to label %.noexc.i unwind label %bb.d   ; 3 uses

.noexc.i:                                         ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.v, ptr %i.w, align 8
  %i.x = tail call ptr @strncpy(ptr noundef nonnull %i.v, ptr noundef readonly %i.q, i64 noundef %i.s) #13 ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.s
  store i8 0, ptr %i.y, align 1
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 24) #14
  br label %.body

bb.e:                                             ; preds = %.noexc.i, %.noexc
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.m, ptr %i.aa, align 8
  %i.ab = load ptr, ptr %i.f, align 8
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.011
  store ptr %i.h, ptr %i.ac, align 8
  %i.ad = add nuw i64 %.011, 1                    ; 2 uses
  %i.ae = load i64, ptr %0, align 8
  %i.af = icmp ult i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.b, label %.loopexit, !llvm.loop !7

bb.f:                                             ; preds = %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.ag, %bb.f ], [ %i.z, %bb.d ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 16) #14
  resume { ptr, i32 } %eh.lpad-body

.loopexit:                                        ; preds = %bb.e, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN10ODDLParser9ReferenceD2Ev(ptr noundef nonnull align 8 captures(none) dead_on_return(16) dereferenceable(16) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  store i64 0, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.h, label %bb.g

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.f = phi i64 [ %i.a, %.lr.ph ], [ %i.q, %bb.f ]
  %.05 = phi i64 [ 0, %.lr.ph ], [ %i.r, %bb.f ]  ; 2 uses
  %i.g = load ptr, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.05
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN10ODDLParser4NameD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZN10ODDLParser4TextD2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.o) #14
  br label %_ZN10ODDLParser4TextD2Ev.exit.i

_ZN10ODDLParser4TextD2Ev.exit.i:                  ; preds = %bb.e, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 24) #14
  br label %_ZN10ODDLParser4NameD2Ev.exit

_ZN10ODDLParser4NameD2Ev.exit:                    ; preds = %bb.c, %_ZN10ODDLParser4TextD2Ev.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 16) #14
  %.pre = load i64, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %_ZN10ODDLParser4NameD2Ev.exit
  %i.q = phi i64 [ %i.f, %bb.b ], [ %.pre, %_ZN10ODDLParser4NameD2Ev.exit ] ; 2 uses
  %i.r = add nuw i64 %.05, 1                      ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  br i1 %i.s, label %bb.b, label %._crit_edge, !llvm.loop !8

bb.g:                                             ; preds = %._crit_edge
  tail call void @_ZdaPv(ptr noundef nonnull %i.d) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZN10ODDLParser9Reference11sizeInBytesEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 5 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %xtraiter = and i64 %i.a, 1
  %i.e = icmp eq i64 %i.a, 1
  br i1 %i.e, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader
  %unroll_iter = and i64 %i.a, -2
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.preheader.new
  %.0812 = phi i64 [ 0, %.preheader.new ], [ %i.u, %bb.f ] ; 3 uses
  %.0911 = phi i64 [ 0, %.preheader.new ], [ %.1.1, %bb.f ] ; 2 uses
  %niter = phi i64 [ 0, %.preheader.new ], [ %niter.next.1, %bb.f ]
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.0812
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %i.l = add i64 %i.k, %.0911
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi i64 [ %i.l, %bb.c ], [ %.0911, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.0812
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not.1 = icmp eq ptr %i.o, null
  br i1 %.not.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i64, ptr %i.r, align 8
  %i.t = add i64 %i.s, %.1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1.1 = phi i64 [ %i.t, %bb.e ], [ %.1, %bb.d ] ; 3 uses
  %i.u = add nuw i64 %.0812, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !9

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader
  %.0812.epil.init = phi i64 [ 0, %.preheader ], [ %i.u, %.loopexit.loopexit.unr-lcssa ]
  %.0911.epil.init = phi i64 [ 0, %.preheader ], [ %.1.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod17 = trunc i64 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod17)
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.0812.epil.init
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %.not.epil = icmp eq ptr %i.w, null
  br i1 %.not.epil, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %.epil.preheader
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = add i64 %i.aa, %.0911.epil.init
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.g, %.epil.preheader, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %.1.1, %.loopexit.loopexit.unr-lcssa ], [ %i.ab, %bb.g ], [ %.0911.epil.init, %.epil.preheader ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN10ODDLParser8PropertyC2EPNS_4TextE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noundef %1) unnamed_addr #7 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN10ODDLParser8PropertyD2Ev(ptr noundef nonnull readonly align 8 captures(none) dead_on_return(32) dereferenceable(32) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZN10ODDLParser4TextD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.d) #14
  br label %_ZN10ODDLParser4TextD2Ev.exit

_ZN10ODDLParser4TextD2Ev.exit:                    ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #14
  br label %bb.d

bb.d:                                             ; preds = %_ZN10ODDLParser4TextD2Ev.exit, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN10ODDLParser5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.g) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 32) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8              ; 7 uses
  %.not4 = icmp eq ptr %i.i, null
  br i1 %.not4, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  br label %bb.h

._crit_edge.i:                                    ; preds = %bb.l, %bb.g
  store i64 0, ptr %i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZN10ODDLParser9ReferenceD2Ev.exit, label %bb.m

bb.h:                                             ; preds = %bb.l, %.lr.ph.i
  %i.o = phi i64 [ %i.j, %.lr.ph.i ], [ %i.z, %bb.l ]
  %.05.i = phi i64 [ 0, %.lr.ph.i ], [ %i.aa, %bb.l ] ; 2 uses
  %i.p = load ptr, ptr %i.k, align 8
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.05.i
  %i.r = load ptr, ptr %i.q, align 8              ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load ptr, ptr %i.t, align 8              ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZN10ODDLParser4NameD2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_ZN10ODDLParser4TextD2Ev.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZdaPv(ptr noundef nonnull %i.x) #14
  br label %_ZN10ODDLParser4TextD2Ev.exit.i.i

_ZN10ODDLParser4TextD2Ev.exit.i.i:                ; preds = %bb.k, %bb.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef 24) #14
  br label %_ZN10ODDLParser4NameD2Ev.exit.i

_ZN10ODDLParser4NameD2Ev.exit.i:                  ; preds = %_ZN10ODDLParser4TextD2Ev.exit.i.i, %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 16) #14
  %.pre.i = load i64, ptr %i.i, align 8
  br label %bb.l

bb.l:                                             ; preds = %_ZN10ODDLParser4NameD2Ev.exit.i, %bb.h
  %i.z = phi i64 [ %i.o, %bb.h ], [ %.pre.i, %_ZN10ODDLParser4NameD2Ev.exit.i ] ; 2 uses
  %i.aa = add nuw i64 %.05.i, 1                   ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %i.z
  br i1 %i.ab, label %bb.h, label %._crit_edge.i, !llvm.loop !8

bb.m:                                             ; preds = %._crit_edge.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.m) #14
  br label %_ZN10ODDLParser9ReferenceD2Ev.exit

_ZN10ODDLParser9ReferenceD2Ev.exit:               ; preds = %._crit_edge.i, %bb.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 16) #14
  br label %bb.n

bb.n:                                             ; preds = %_ZN10ODDLParser9ReferenceD2Ev.exit, %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8            ; 3 uses
  %.not5 = icmp eq ptr %i.ad, null
  br i1 %.not5, label %common.ret17, label %bb.o

common.ret17:                                     ; preds = %bb.n, %bb.o
  ret void

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN10ODDLParser8PropertyD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.ad) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef 32) #14
  br label %common.ret17
}

; Function Attrs: nounwind
declare void @_ZN10ODDLParser5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN10ODDLParser13DataArrayListC2Ev(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN10ODDLParser13DataArrayListD2Ev(ptr noundef nonnull readonly align 8 captures(none) dead_on_return(40) dereferenceable(40) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN10ODDLParser5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.b) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 32) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN10ODDLParser13DataArrayListD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.e) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 40) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8              ; 7 uses
  %.not3 = icmp eq ptr %i.g, null
  br i1 %.not3, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.g

._crit_edge.i:                                    ; preds = %bb.k, %bb.f
  store i64 0, ptr %i.g, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN10ODDLParser9ReferenceD2Ev.exit, label %bb.l

bb.g:                                             ; preds = %bb.k, %.lr.ph.i
  %i.m = phi i64 [ %i.h, %.lr.ph.i ], [ %i.x, %bb.k ]
  %.05.i = phi i64 [ 0, %.lr.ph.i ], [ %i.y, %bb.k ] ; 2 uses
  %i.n = load ptr, ptr %i.i, align 8
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.05.i
  %i.p = load ptr, ptr %i.o, align 8              ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load ptr, ptr %i.r, align 8              ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_ZN10ODDLParser4NameD2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZN10ODDLParser4TextD2Ev.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.v) #14
  br label %_ZN10ODDLParser4TextD2Ev.exit.i.i

_ZN10ODDLParser4TextD2Ev.exit.i.i:                ; preds = %bb.j, %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 24) #14
  br label %_ZN10ODDLParser4NameD2Ev.exit.i

_ZN10ODDLParser4NameD2Ev.exit.i:                  ; preds = %_ZN10ODDLParser4TextD2Ev.exit.i.i, %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef 16) #14
  %.pre.i = load i64, ptr %i.g, align 8
  br label %bb.k

bb.k:                                             ; preds = %_ZN10ODDLParser4NameD2Ev.exit.i, %bb.g
  %i.x = phi i64 [ %i.m, %bb.g ], [ %.pre.i, %_ZN10ODDLParser4NameD2Ev.exit.i ] ; 2 uses
  %i.y = add nuw i64 %.05.i, 1                    ; 2 uses
  %i.z = icmp ult i64 %i.y, %i.x
  br i1 %i.z, label %bb.g, label %._crit_edge.i, !llvm.loop !8

bb.l:                                             ; preds = %._crit_edge.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.k) #14
  br label %_ZN10ODDLParser9ReferenceD2Ev.exit

_ZN10ODDLParser9ReferenceD2Ev.exit:               ; preds = %._crit_edge.i, %bb.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 16) #14
  br label %bb.m

bb.m:                                             ; preds = %_ZN10ODDLParser9ReferenceD2Ev.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZN10ODDLParser13DataArrayList4sizeEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %.not9 = icmp ne ptr %i.e, null
  %spec.select = zext i1 %.not9 to i64
  br label %.loopexit

.preheader:                                       ; preds = %bb.a, %.preheader
  %.011 = phi ptr [ %i.h, %.preheader ], [ %i.b, %bb.a ]
  %.110 = phi i64 [ %i.f, %.preheader ], [ 0, %bb.a ]
  %i.f = add i64 %.110, 1                         ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.011, i64 16
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %.loopexit, label %.preheader, !llvm.loop !10

.loopexit:                                        ; preds = %.preheader, %bb.b
  %.07 = phi i64 [ %spec.select, %bb.b ], [ %i.f, %.preheader ]
  ret i64 %.07
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN10ODDLParser7ContextC2Ev(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0) unnamed_addr #7 align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN10ODDLParser7ContextD2Ev(ptr noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZN10ODDLParser7Context5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN10ODDLParser7DDLNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %i.a) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 136) #14
  br label %_ZN10ODDLParser7Context5clearEv.exit

_ZN10ODDLParser7Context5clearEv.exit:             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN10ODDLParser7Context5clearEv(ptr noundef nonnull align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN10ODDLParser7DDLNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %i.a) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 136) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind
declare void @_ZN10ODDLParser7DDLNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136)) unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { builtin allocsize(0) }
attributes #13 = { nounwind }
attributes #14 = { builtin nounwind }
attributes #15 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.unroll.disable"}
!7 = distinct !{!7, !4}
!8 = distinct !{!8, !4}
!9 = distinct !{!9, !4}
!10 = distinct !{!10, !4}
end_hunk_0
