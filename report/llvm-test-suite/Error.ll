inline.NumInlined: 20
inline.NumDeleted: 13
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.CStringBase = type { ptr, i32, i32 }
%class.CStringBase.0 = type { ptr, i32, i32 }

$_ZN11CStringBaseIcEpLEPKc = comdat any

@.str = private unnamed_addr constant [14 x i8] c"No more files\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"E_NOTIMPL\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"E_NOINTERFACE\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"E_ABORT\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"E_FAIL\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"STG_E_INVALIDFUNCTION\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"E_OUTOFMEMORY\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"E_INVALIDARG\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"error #%x\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"                \00", align 1

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN8NWindows6NError15MyFormatMessageEjR11CStringBaseIwE(i32 noundef %0, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(16) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.CStringBase, align 8         ; 14 uses
  %i.a = alloca [256 x i8], align 16              ; 7 uses
  %3 = alloca %class.CStringBase.0, align 8       ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.c, align 8
  %i.d = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #9 ; 8 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !8
  store i8 0, ptr %i.d, align 1, !tbaa !12
  store i32 4, ptr %i.b, align 4, !tbaa !13
  switch i32 %0, label %bb.i [
    i32 1048867, label %.thread
    i32 -2147467263, label %bb.b
    i32 -2147467262, label %bb.c
    i32 -2147467260, label %bb.d
    i32 -2147467259, label %bb.e
    i32 -2147287039, label %bb.f
    i32 -2147024882, label %bb.g
    i32 -2147024809, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  br label %.thread

bb.c:                                             ; preds = %bb.a
  br label %.thread

bb.d:                                             ; preds = %bb.a
  br label %.thread

bb.e:                                             ; preds = %bb.a
  br label %.thread

bb.f:                                             ; preds = %bb.a
  br label %.thread

bb.g:                                             ; preds = %bb.a
  br label %.thread

bb.h:                                             ; preds = %bb.a
  br label %.thread

bb.i:                                             ; preds = %bb.a
  %i.e = tail call ptr @strerror(i32 noundef %0) #8 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.m, label %.thread

.thread:                                          ; preds = %bb.a, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.h, %bb.i
  %.0942 = phi ptr [ %i.e, %bb.i ], [ @.str, %bb.a ], [ @.str.6, %bb.g ], [ @.str.5, %bb.f ], [ @.str.4, %bb.e ], [ @.str.3, %bb.d ], [ @.str.2, %bb.c ], [ @.str.1, %bb.b ], [ @.str.7, %bb.h ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.f, align 8, !tbaa !14
  store i8 0, ptr %i.d, align 1, !tbaa !12
  %strlen.i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0942)
  %i.g = trunc i64 %strlen.i.i to i32             ; 2 uses
  %i.h = add nsw i32 %i.g, 1                      ; 3 uses
  %i.i = icmp eq i32 %i.h, 4
  br i1 %i.i, label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i.preheader, label %bb.j

bb.j:                                             ; preds = %.thread
  %i.j = sext i32 %i.h to i64
  %i.k = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.j) #9
          to label %bb.k unwind label %bb.l       ; 3 uses

bb.k:                                             ; preds = %bb.j
  tail call void @_ZdaPv(ptr noundef nonnull %i.d) #10
  store ptr %i.k, ptr %2, align 8, !tbaa !8
  store i8 0, ptr %i.k, align 1, !tbaa !12
  store i32 %i.h, ptr %i.b, align 4, !tbaa !13
  br label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i.preheader

_ZN11CStringBaseIcE11SetCapacityEi.exit.i.preheader: ; preds = %.thread, %bb.k
  %.0.i.i.ph = phi ptr [ %i.k, %bb.k ], [ %i.d, %.thread ]
  br label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i

_ZN11CStringBaseIcE11SetCapacityEi.exit.i:        ; preds = %_ZN11CStringBaseIcE11SetCapacityEi.exit.i.preheader, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.l, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i ], [ %.0942, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i.preheader ] ; 2 uses
  %.0.i.i = phi ptr [ %i.n, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i ], [ %.0.i.i.ph, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i.preheader ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 1
  %i.m = load i8, ptr %.04.i.i, align 1, !tbaa !12 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  store i8 %i.m, ptr %.0.i.i, align 1, !tbaa !12
  %.not.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i, label %_ZN11CStringBaseIcEaSEPKc.exit, label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i, !llvm.loop !15

_ZN11CStringBaseIcEaSEPKc.exit:                   ; preds = %_ZN11CStringBaseIcE11SetCapacityEi.exit.i
  store i32 %i.g, ptr %i.f, align 8, !tbaa !14
  br label %bb.r

bb.l:                                             ; preds = %bb.j, %bb.r
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.m:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.p = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 256, ptr noundef nonnull @.str.8, i32 noundef %0) #8 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 255
  store i8 0, ptr %i.q, align 1, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.r, align 8, !tbaa !14
  store i8 0, ptr %i.d, align 1, !tbaa !12
  %strlen.i.i12 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a)
  %i.s = trunc i64 %strlen.i.i12 to i32           ; 2 uses
  %i.t = add nsw i32 %i.s, 1                      ; 3 uses
  %i.u = icmp eq i32 %i.t, 4
  br i1 %i.u, label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i14.preheader, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.v = sext i32 %i.t to i64
  %i.w = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.v) #9
          to label %bb.o unwind label %bb.q       ; 3 uses

bb.o:                                             ; preds = %bb.n
  tail call void @_ZdaPv(ptr noundef nonnull %i.d) #10
  store ptr %i.w, ptr %2, align 8, !tbaa !8
  store i8 0, ptr %i.w, align 1, !tbaa !12
  store i32 %i.t, ptr %i.b, align 4, !tbaa !13
  br label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i14.preheader

_ZN11CStringBaseIcE11SetCapacityEi.exit.i14.preheader: ; preds = %bb.m, %bb.o
  %.0.i.i16.ph = phi ptr [ %i.w, %bb.o ], [ %i.d, %bb.m ]
  br label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i14

_ZN11CStringBaseIcE11SetCapacityEi.exit.i14:      ; preds = %_ZN11CStringBaseIcE11SetCapacityEi.exit.i14.preheader, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i14
  %.04.i.i15 = phi ptr [ %i.x, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i14 ], [ %i.a, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i14.preheader ] ; 2 uses
  %.0.i.i16 = phi ptr [ %i.z, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i14 ], [ %.0.i.i16.ph, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i14.preheader ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.04.i.i15, i64 1
  %i.y = load i8, ptr %.04.i.i15, align 1, !tbaa !12 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i16, i64 1
  store i8 %i.y, ptr %.0.i.i16, align 1, !tbaa !12
  %.not.i.i17 = icmp eq i8 %i.y, 0
  br i1 %.not.i.i17, label %bb.p, label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i14, !llvm.loop !15

bb.p:                                             ; preds = %_ZN11CStringBaseIcE11SetCapacityEi.exit.i14
  store i32 %i.s, ptr %i.r, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.r

bb.q:                                             ; preds = %bb.n
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.ac

bb.r:                                             ; preds = %_ZN11CStringBaseIcEaSEPKc.exit, %bb.p
  %i.ab = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN11CStringBaseIcEpLEPKc(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.9)
          to label %bb.s unwind label %bb.l       ; 0 uses

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  invoke void @_Z24MultiByteToUnicodeStringRK11CStringBaseIcEj(ptr dead_on_unwind nonnull writable sret(%class.CStringBase.0) align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 0)
          to label %4 unwind label %bb.z

4:                                                ; preds = %bb.s
  %5 = icmp eq ptr %3, %1
  br i1 %5, label %._ZN11CStringBaseIwEaSERKS0_.exit_crit_edge, label %bb.t

._ZN11CStringBaseIwEaSERKS0_.exit_crit_edge:      ; preds = %4
  %.pre = load ptr, ptr %3, align 8, !tbaa !17
  br label %_ZN11CStringBaseIwEaSERKS0_.exit

bb.t:                                             ; preds = %4
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i32 0, ptr %i.ac, align 8, !tbaa !20
  %i.ad = load ptr, ptr %1, align 8, !tbaa !17    ; 3 uses
  store i32 0, ptr %i.ad, align 4, !tbaa !21
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !20 ; 2 uses
  %i.ag = add nsw i32 %i.af, 1                    ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !23 ; 2 uses
  %i.aj = icmp eq i32 %i.ag, %i.ai
  br i1 %i.aj, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ak = zext nneg i32 %i.ag to i64
  %i.al = icmp slt i32 %i.af, -1
  %i.am = shl nuw nsw i64 %i.ak, 2
  %i.an = select i1 %i.al, i64 -1, i64 %i.am
  %i.ao = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.an) #9
          to label %.noexc37 unwind label %bb.aa  ; 3 uses

.noexc37:                                         ; preds = %bb.u
  %i.ap = icmp sgt i32 %i.ai, 0
  br i1 %i.ap, label %._crit_edge.thread.i.i35, label %bb.v

._crit_edge.thread.i.i35:                         ; preds = %.noexc37
  call void @_ZdaPv(ptr noundef nonnull %i.ad) #10
  %.pre.i36 = load i32, ptr %i.ac, align 8, !tbaa !20
  %i.aq = sext i32 %.pre.i36 to i64
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge.thread.i.i35, %.noexc37
  %i.ar = phi i64 [ %i.aq, %._crit_edge.thread.i.i35 ], [ 0, %.noexc37 ]
  store ptr %i.ao, ptr %1, align 8, !tbaa !17
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.ar
  store i32 0, ptr %i.as, align 4, !tbaa !21
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !23
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.v, %bb.t
  %i.at = phi ptr [ %i.ad, %bb.t ], [ %i.ao, %bb.v ]
  %i.au = load ptr, ptr %3, align 8, !tbaa !17    ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i32 = phi ptr [ %i.au, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.av, %bb.w ] ; 2 uses
  %.0.i.i33 = phi ptr [ %i.at, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.ax, %bb.w ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.04.i.i32, i64 4
  %i.aw = load i32, ptr %.04.i.i32, align 4, !tbaa !21 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i.i33, i64 4
  store i32 %i.aw, ptr %.0.i.i33, align 4, !tbaa !21
  %.not.i.i34 = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i34, label %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i, label %bb.w, !llvm.loop !24

_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i:            ; preds = %bb.w
  %6 = load i32, ptr %i.ae, align 8, !tbaa !20
  store i32 %6, ptr %i.ac, align 8, !tbaa !20
  br label %_ZN11CStringBaseIwEaSERKS0_.exit

_ZN11CStringBaseIwEaSERKS0_.exit:                 ; preds = %._ZN11CStringBaseIwEaSERKS0_.exit_crit_edge, %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i
  %7 = phi ptr [ %.pre, %._ZN11CStringBaseIwEaSERKS0_.exit_crit_edge ], [ %i.au, %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i ] ; 2 uses
  %i.ay = icmp eq ptr %7, null
  br i1 %i.ay, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZN11CStringBaseIwEaSERKS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %7) #10
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %_ZN11CStringBaseIwEaSERKS0_.exit, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  %i.az = load ptr, ptr %2, align 8, !tbaa !8     ; 2 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %_ZN11CStringBaseIcED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.az) #10
  br label %_ZN11CStringBaseIcED2Ev.exit

_ZN11CStringBaseIcED2Ev.exit:                     ; preds = %_ZN11CStringBaseIwED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret i1 true

bb.z:                                             ; preds = %bb.s
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit38

bb.aa:                                            ; preds = %bb.u
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bd = load ptr, ptr %3, align 8, !tbaa !17    ; 2 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %_ZN11CStringBaseIwED2Ev.exit38, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_ZdaPv(ptr noundef nonnull %i.bd) #10
  br label %_ZN11CStringBaseIwED2Ev.exit38

_ZN11CStringBaseIwED2Ev.exit38:                   ; preds = %bb.ab, %bb.aa, %bb.z
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.z ], [ %i.bc, %bb.aa ], [ %i.bc, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit38, %bb.q, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZN11CStringBaseIwED2Ev.exit38 ], [ %i.o, %bb.l ], [ %i.aa, %bb.q ]
  %i.bf = load ptr, ptr %2, align 8, !tbaa !8     ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %_ZN11CStringBaseIcED2Ev.exit39, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZdaPv(ptr noundef nonnull %i.bf) #10
  br label %_ZN11CStringBaseIcED2Ev.exit39

_ZN11CStringBaseIcED2Ev.exit39:                   ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN11CStringBaseIcEpLEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %strlen.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1)
  %i.a = trunc i64 %strlen.i to i32               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !13   ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !14   ; 9 uses
  %i.f = xor i32 %i.e, -1
  %i.g = add i32 %i.c, %i.f                       ; 3 uses
  %.not.i = icmp slt i32 %i.g, %i.a
  br i1 %.not.i, label %bb.b, label %_ZN11CStringBaseIcE10GrowLengthEi.exit

bb.b:                                             ; preds = %bb.a
  %i.h = icmp sgt i32 %i.c, 64
  %i.i = lshr i32 %i.c, 1
  %i.j = icmp sgt i32 %i.c, 8
  %..i = select i1 %i.j, i32 16, i32 4
  %.0.i = select i1 %i.h, i32 %i.i, i32 %..i      ; 2 uses
  %i.k = add nsw i32 %.0.i, %i.g
  %i.l = icmp slt i32 %i.k, %i.a
  %i.m = sub nsw i32 %i.a, %i.g
  %.1.i = select i1 %i.l, i32 %i.m, i32 %.0.i
  %i.n = add i32 %i.c, 1
  %i.o = add i32 %i.n, %.1.i                      ; 3 uses
  %i.p = icmp eq i32 %i.o, %i.c
  br i1 %i.p, label %_ZN11CStringBaseIcE10GrowLengthEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = sext i32 %i.o to i64
  %i.r = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.q) #9 ; 10 uses
  %i.s = ptrtoaddr ptr %i.r to i64
  %i.t = icmp sgt i32 %i.c, 0
  br i1 %i.t, label %.preheader.i.i, label %bb.d

.preheader.i.i:                                   ; preds = %bb.c
  %i.u = icmp sgt i32 %i.e, 0
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !8 ; 10 uses
  br i1 %i.u, label %iter.check, label %._crit_edge.i.i

iter.check:                                       ; preds = %.preheader.i.i
  %.pre.i.i10 = ptrtoaddr ptr %.pre.i.i to i64
  %wide.trip.count.i.i = zext nneg i32 %i.e to i64 ; 8 uses
  %min.iters.check = icmp ult i32 %i.e, 4
  %i.v = sub i64 %i.s, %.pre.i.i10
  %diff.check = icmp ult i64 %i.v, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check11 = icmp ult i32 %i.e, 32
  br i1 %min.iters.check11, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %wide.trip.count.i.i, 28
  %n.vec = and i64 %wide.trip.count.i.i, 2147483616 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %wide.load = load <16 x i8>, ptr %i.w, align 1, !tbaa !12
  %wide.load12 = load <16 x i8>, ptr %i.x, align 1, !tbaa !12
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <16 x i8> %wide.load, ptr %i.y, align 1, !tbaa !12
  store <16 x i8> %wide.load12, ptr %i.z, align 1, !tbaa !12
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.thread.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !28

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec14 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index15 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next17, %vec.epilog.vector.body ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %index15
  %wide.load16 = load <4 x i8>, ptr %i.ab, align 1, !tbaa !12
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 %index15
  store <4 x i8> %wide.load16, ptr %i.ac, align 1, !tbaa !12
  %index.next17 = add nuw i64 %index15, 4         ; 2 uses
  %i.ad = icmp eq i64 %index.next17, %n.vec14
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !29

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n18 = icmp eq i64 %n.vec14, %wide.trip.count.i.i
  br i1 %cmp.n18, label %._crit_edge.thread.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec14, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.i.i.prol
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !12
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv.i.i.prol
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !12
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !30

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.ah = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.ai = icmp ugt i64 %i.ah, -4
  br i1 %i.ai, label %._crit_edge.thread.i.i, label %vec.epilog.scalar.ph

._crit_edge.i.i:                                  ; preds = %.preheader.i.i
  %i.aj = icmp eq ptr %.pre.i.i, null
  br i1 %i.aj, label %bb.d, label %._crit_edge.thread.i.i

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !12
  %i.am = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv.i.i
  store i8 %i.al, ptr %i.am, align 1, !tbaa !12
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.next.i.i
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !12
  %i.ap = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv.next.i.i
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !12
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.next.i.i.1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !12
  %i.as = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv.next.i.i.1
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !12
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.next.i.i.2
  %i.au = load i8, ptr %i.at, align 1, !tbaa !12
  %i.av = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv.next.i.i.2
  store i8 %i.au, ptr %i.av, align 1, !tbaa !12
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.thread.i.i, label %vec.epilog.scalar.ph, !llvm.loop !32

._crit_edge.thread.i.i:                           ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %._crit_edge.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #10
  %.pre.i = load i32, ptr %i.d, align 8, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i, %bb.c
  %i.aw = phi i32 [ %.pre.i, %._crit_edge.thread.i.i ], [ %i.e, %._crit_edge.i.i ], [ %i.e, %bb.c ] ; 2 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !8
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds i8, ptr %i.r, i64 %i.ax
  store i8 0, ptr %i.ay, align 1, !tbaa !12
  store i32 %i.o, ptr %i.b, align 4, !tbaa !13
  br label %_ZN11CStringBaseIcE10GrowLengthEi.exit

_ZN11CStringBaseIcE10GrowLengthEi.exit:           ; preds = %bb.a, %bb.b, %bb.d
  %i.az = phi i32 [ %i.e, %bb.a ], [ %i.e, %bb.b ], [ %i.aw, %bb.d ]
  %i.ba = load ptr, ptr %0, align 8, !tbaa !8
  %i.bb = sext i32 %i.az to i64
  %i.bc = getelementptr inbounds i8, ptr %i.ba, i64 %i.bb
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN11CStringBaseIcE10GrowLengthEi.exit
  %.04.i = phi ptr [ %1, %_ZN11CStringBaseIcE10GrowLengthEi.exit ], [ %i.bd, %bb.e ] ; 2 uses
  %.0.i4 = phi ptr [ %i.bc, %_ZN11CStringBaseIcE10GrowLengthEi.exit ], [ %i.bf, %bb.e ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.04.i, i64 1
  %i.be = load i8, ptr %.04.i, align 1, !tbaa !12 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i4, i64 1
  store i8 %i.be, ptr %.0.i4, align 1, !tbaa !12
  %.not.i5 = icmp eq i8 %i.be, 0
  br i1 %.not.i5, label %_Z12MyStringCopyIcEPT_S1_PKS0_.exit, label %bb.e, !llvm.loop !15

_Z12MyStringCopyIcEPT_S1_PKS0_.exit:              ; preds = %bb.e
  %i.bg = load i32, ptr %i.d, align 8, !tbaa !14
  %i.bh = add nsw i32 %i.bg, %i.a
  store i32 %i.bh, ptr %i.d, align 8, !tbaa !14
  ret ptr %0
}

declare void @_Z24MultiByteToUnicodeStringRK11CStringBaseIcEj(ptr dead_on_unwind writable sret(%class.CStringBase.0) align 8, ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr captures(none)) local_unnamed_addr #7

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #8 = { nounwind }
attributes #9 = { builtin allocsize(0) }
attributes #10 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTS11CStringBaseIcE", !10, i64 0, !5, i64 8, !5, i64 12}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!6, !6, i64 0}
!13 = !{!9, !5, i64 12}
!14 = !{!9, !5, i64 8}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!18, !19, i64 0}
!18 = !{!"_ZTS11CStringBaseIwE", !19, i64 0, !5, i64 8, !5, i64 12}
!19 = !{!"p1 wchar_t", !11, i64 0}
!20 = !{!18, !5, i64 8}
!21 = !{!22, !22, i64 0}
!22 = !{!"wchar_t", !6, i64 0}
!23 = !{!18, !5, i64 12}
!24 = distinct !{!24, !16}
!25 = distinct !{!25, !16, !26, !27}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = !{!"llvm.loop.unroll.runtime.disable"}
!28 = !{!"branch_weights", i32 4, i32 28}
!29 = distinct !{!29, !16, !26, !27}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.unroll.disable"}
!32 = distinct !{!32, !16, !26}
end_hunk_0
