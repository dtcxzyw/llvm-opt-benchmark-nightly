inline.NumInlined: 32
inline.NumDeleted: 17
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.CMyComPtr = type { ptr }
%class.CMyComPtr.1 = type { ptr }
%class.CMyComPtr.0 = type { ptr }

$__clang_call_terminate = comdat any

@g_NumCodecs = dso_local local_unnamed_addr global i32 0, align 4
@g_Codecs = dso_local local_unnamed_addr global [64 x ptr] zeroinitializer, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_Z13RegisterCodecPK10CCodecInfo(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @g_NumCodecs, align 4, !tbaa !4 ; 3 uses
  %i.b = icmp ult i32 %i.a, 64
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = add nuw nsw i32 %i.a, 1
  store i32 %i.c, ptr @g_NumCodecs, align 4, !tbaa !4
  %i.d = zext nneg i32 %i.a to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @g_Codecs, i64 %i.d
  store ptr %0, ptr %i.e, align 8, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_Z10FindMethodRK11CStringBaseIwERyRjS4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr @g_NumCodecs, align 4, !tbaa !4
  %.not16 = icmp eq i32 %i.a, 0
  br i1 %.not16, label %.loopexit, label %.critedge

bb.b:                                             ; preds = %.critedge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.b = load i32, ptr @g_NumCodecs, align 4, !tbaa !4
  %i.c = zext i32 %i.b to i64
  %i.d = icmp samesign ult i64 %indvars.iv.next, %i.c
  br i1 %i.d, label %.critedge, label %.loopexit, !llvm.loop !11

.critedge:                                        ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @g_Codecs, i64 %indvars.iv
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8    ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13
  %i.i = load ptr, ptr %0, align 8, !tbaa !18
  %i.j = tail call noundef i32 @_Z21MyStringCompareNoCasePKwS0_(ptr noundef %i.i, ptr noundef %i.h)
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.c:                                             ; preds = %.critedge
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !20
  store i64 %i.l, ptr %1, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.n = load i32, ptr %i.m, align 8, !tbaa !22
  store i32 %i.n, ptr %2, align 4, !tbaa !4
  store i32 1, ptr %3, align 4, !tbaa !4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.c
  %i.o = phi i1 [ true, %bb.c ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %i.o
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_Z10FindMethodyR11CStringBaseIwE(i64 noundef %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr @g_NumCodecs, align 4, !tbaa !4 ; 2 uses
  %.not13 = icmp eq i32 %i.a, 0
  br i1 %.not13, label %.loopexit, label %.critedge.preheader

.critedge.preheader:                              ; preds = %bb.a
  %wide.trip.count = zext i32 %i.a to i64
  br label %.critedge

bb.b:                                             ; preds = %.critedge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.critedge, !llvm.loop !23

.critedge:                                        ; preds = %.critedge.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.critedge.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @g_Codecs, i64 %indvars.iv
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !20
  %.not = icmp eq i64 %0, %i.e
  br i1 %.not, label %bb.c, label %bb.b

bb.c:                                             ; preds = %.critedge
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i32 0, ptr %i.h, align 8, !tbaa !24
  %i.i = load ptr, ptr %1, align 8, !tbaa !18     ; 3 uses
  store i32 0, ptr %i.i, align 4, !tbaa !25
  %wcslen.i.i = tail call i64 @wcslen(ptr %i.g)
  %i.j = trunc i64 %wcslen.i.i to i32             ; 3 uses
  %i.k = add nsw i32 %i.j, 1                      ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !27   ; 2 uses
  %i.n = icmp eq i32 %i.k, %i.m
  br i1 %i.n, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = zext nneg i32 %i.k to i64
  %i.p = icmp slt i32 %i.j, -1
  %i.q = shl nuw nsw i64 %i.o, 2
  %i.r = select i1 %i.p, i64 -1, i64 %i.q
  %i.s = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.r) #9 ; 3 uses
  %i.t = icmp sgt i32 %i.m, 0
  br i1 %i.t, label %._crit_edge.thread.i.i, label %bb.e

._crit_edge.thread.i.i:                           ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.i) #10
  %.pre.i = load i32, ptr %i.h, align 8, !tbaa !24
  %i.u = sext i32 %.pre.i to i64
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread.i.i, %bb.d
  %i.v = phi i64 [ %i.u, %._crit_edge.thread.i.i ], [ 0, %bb.d ]
  store ptr %i.s, ptr %1, align 8, !tbaa !18
  %i.w = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.v
  store i32 0, ptr %i.w, align 4, !tbaa !25
  store i32 %i.k, ptr %i.l, align 4, !tbaa !27
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.preheader

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.preheader: ; preds = %bb.e, %bb.c
  %.0.i.i.ph = phi ptr [ %i.i, %bb.c ], [ %i.s, %bb.e ]
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.preheader, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.x, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.g, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.preheader ] ; 2 uses
  %.0.i.i = phi ptr [ %i.z, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %.0.i.i.ph, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.preheader ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  %i.y = load i32, ptr %.04.i.i, align 4, !tbaa !25 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.y, ptr %.0.i.i, align 4, !tbaa !25
  %.not.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i, label %_ZN11CStringBaseIwEaSEPKw.exit, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, !llvm.loop !28

_ZN11CStringBaseIwEaSEPKw.exit:                   ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  store i32 %i.j, ptr %i.h, align 8, !tbaa !24
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %_ZN11CStringBaseIwEaSEPKw.exit
  %i.aa = phi i1 [ true, %_ZN11CStringBaseIwEaSEPKw.exit ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %i.aa
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z11CreateCoderyR9CMyComPtrI15ICompressFilterERS_I14ICompressCoderERS_I15ICompressCoder2Ebb(i64 noundef %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3, i1 noundef zeroext %4, i1 noundef zeroext %5) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr @g_NumCodecs, align 4, !tbaa !4 ; 2 uses
  %.not64 = icmp eq i32 %i.a, 0
  br i1 %.not64, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %wide.trip.count75 = zext i32 %i.a to i64       ; 2 uses
  br i1 %4, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.c
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %bb.c ], [ 0, %.lr.ph ] ; 2 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @g_Codecs, i64 %indvars.iv72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !20
  %i.f = icmp eq i64 %i.e, %0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !29   ; 2 uses
  %.not39.us = icmp eq ptr %i.h, null
  br i1 %.not39.us, label %bb.c, label %.split.us

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 2 uses
  %exitcond76.not = icmp eq i64 %indvars.iv.next73, %wide.trip.count75
  br i1 %exitcond76.not, label %.thread, label %.lr.ph.split.us, !llvm.loop !30

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.af
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.af ], [ 0, %.lr.ph ] ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @g_Codecs, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !8    ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !20
  %i.m = icmp eq i64 %i.l, %0
  br i1 %i.m, label %bb.d, label %bb.af

bb.d:                                             ; preds = %.lr.ph.split
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !31   ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.af, label %bb.r

.split.us:                                        ; preds = %bb.b
  %i.o = tail call noundef ptr %i.h()             ; 11 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.q = load i8, ptr %i.p, align 4, !tbaa !32, !range !33, !noundef !34
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.e, label %bb.i

bb.e:                                             ; preds = %.split.us
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !35
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef i32 %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.o), !inline_history !37 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.w = load ptr, ptr %1, align 8, !tbaa !38     ; 3 uses
  %.not6.i = icmp eq ptr %i.w, null
  br i1 %.not6.i, label %_ZN9CMyComPtrI15ICompressFilterEaSEPS0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !35
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef i32 %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.w), !inline_history !37 ; 0 uses
  br label %_ZN9CMyComPtrI15ICompressFilterEaSEPS0_.exit

_ZN9CMyComPtrI15ICompressFilterEaSEPS0_.exit:     ; preds = %bb.g, %bb.h
  store ptr %i.o, ptr %1, align 8, !tbaa !38
  br label %.thread

bb.i:                                             ; preds = %.split.us
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !22
  %i.ad = icmp eq i32 %i.ac, 1
  %.not.i41 = icmp eq ptr %i.o, null              ; 2 uses
  br i1 %i.ad, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  br i1 %.not.i41, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = load ptr, ptr %i.o, align 8, !tbaa !35
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef i32 %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.o), !inline_history !41 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ai = load ptr, ptr %2, align 8, !tbaa !42    ; 3 uses
  %.not6.i42 = icmp eq ptr %i.ai, null
  br i1 %.not6.i42, label %_ZN9CMyComPtrI14ICompressCoderEaSEPS0_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !35
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call noundef i32 %i.al(ptr noundef nonnull align 8 dereferenceable(8) %i.ai), !inline_history !41 ; 0 uses
  br label %_ZN9CMyComPtrI14ICompressCoderEaSEPS0_.exit

_ZN9CMyComPtrI14ICompressCoderEaSEPS0_.exit:      ; preds = %bb.l, %bb.m
  store ptr %i.o, ptr %2, align 8, !tbaa !42
  br label %.thread

bb.n:                                             ; preds = %bb.i
  br i1 %.not.i41, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = load ptr, ptr %i.o, align 8, !tbaa !35
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call noundef i32 %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %i.o), !inline_history !45 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ar = load ptr, ptr %3, align 8, !tbaa !46    ; 3 uses
  %.not6.i44 = icmp eq ptr %i.ar, null
  br i1 %.not6.i44, label %_ZN9CMyComPtrI15ICompressCoder2EaSEPS0_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !35
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = tail call noundef i32 %i.au(ptr noundef nonnull align 8 dereferenceable(8) %i.ar), !inline_history !45 ; 0 uses
  br label %_ZN9CMyComPtrI15ICompressCoder2EaSEPS0_.exit

_ZN9CMyComPtrI15ICompressCoder2EaSEPS0_.exit:     ; preds = %bb.p, %bb.q
  store ptr %i.o, ptr %3, align 8, !tbaa !46
  br label %.thread

bb.r:                                             ; preds = %bb.d
  %i.aw = tail call noundef ptr %i.n()            ; 11 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  %i.ay = load i8, ptr %i.ax, align 4, !tbaa !32, !range !33, !noundef !34
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %.not.i45 = icmp eq ptr %i.aw, null
  br i1 %.not.i45, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ba = load ptr, ptr %i.aw, align 8, !tbaa !35
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = tail call noundef i32 %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %i.aw), !inline_history !37 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.be = load ptr, ptr %1, align 8, !tbaa !38    ; 3 uses
  %.not6.i46 = icmp eq ptr %i.be, null
  br i1 %.not6.i46, label %_ZN9CMyComPtrI15ICompressFilterEaSEPS0_.exit47, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !35
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = tail call noundef i32 %i.bh(ptr noundef nonnull align 8 dereferenceable(8) %i.be), !inline_history !37 ; 0 uses
  br label %_ZN9CMyComPtrI15ICompressFilterEaSEPS0_.exit47

_ZN9CMyComPtrI15ICompressFilterEaSEPS0_.exit47:   ; preds = %bb.u, %bb.v
  store ptr %i.aw, ptr %1, align 8, !tbaa !38
  br label %.thread

bb.w:                                             ; preds = %bb.r
  %i.bj = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !22
  %i.bl = icmp eq i32 %i.bk, 1
  %.not.i48 = icmp eq ptr %i.aw, null             ; 2 uses
  br i1 %i.bl, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  br i1 %.not.i48, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bm = load ptr, ptr %i.aw, align 8, !tbaa !35
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = tail call noundef i32 %i.bo(ptr noundef nonnull align 8 dereferenceable(8) %i.aw), !inline_history !41 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bq = load ptr, ptr %2, align 8, !tbaa !42    ; 3 uses
  %.not6.i49 = icmp eq ptr %i.bq, null
  br i1 %.not6.i49, label %_ZN9CMyComPtrI14ICompressCoderEaSEPS0_.exit50, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !35
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = tail call noundef i32 %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %i.bq), !inline_history !41 ; 0 uses
  br label %_ZN9CMyComPtrI14ICompressCoderEaSEPS0_.exit50

_ZN9CMyComPtrI14ICompressCoderEaSEPS0_.exit50:    ; preds = %bb.z, %bb.aa
  store ptr %i.aw, ptr %2, align 8, !tbaa !42
  br label %.thread

bb.ab:                                            ; preds = %bb.w
  br i1 %.not.i48, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bv = load ptr, ptr %i.aw, align 8, !tbaa !35
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = tail call noundef i32 %i.bx(ptr noundef nonnull align 8 dereferenceable(8) %i.aw), !inline_history !45 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.bz = load ptr, ptr %3, align 8, !tbaa !46    ; 3 uses
  %.not6.i52 = icmp eq ptr %i.bz, null
  br i1 %.not6.i52, label %_ZN9CMyComPtrI15ICompressCoder2EaSEPS0_.exit53, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !35
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = tail call noundef i32 %i.cc(ptr noundef nonnull align 8 dereferenceable(8) %i.bz), !inline_history !45 ; 0 uses
  br label %_ZN9CMyComPtrI15ICompressCoder2EaSEPS0_.exit53

_ZN9CMyComPtrI15ICompressCoder2EaSEPS0_.exit53:   ; preds = %bb.ad, %bb.ae
  store ptr %i.aw, ptr %3, align 8, !tbaa !46
  br label %.thread

bb.af:                                            ; preds = %bb.d, %.lr.ph.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count75
  br i1 %exitcond.not, label %.thread, label %.lr.ph.split, !llvm.loop !30

.thread:                                          ; preds = %bb.af, %bb.c, %bb.a, %_ZN9CMyComPtrI15ICompressCoder2EaSEPS0_.exit53, %_ZN9CMyComPtrI14ICompressCoderEaSEPS0_.exit50, %_ZN9CMyComPtrI15ICompressCoder2EaSEPS0_.exit, %_ZN9CMyComPtrI14ICompressCoderEaSEPS0_.exit, %_ZN9CMyComPtrI15ICompressFilterEaSEPS0_.exit47, %_ZN9CMyComPtrI15ICompressFilterEaSEPS0_.exit
  br i1 %5, label %.thread.a, label %bb.an

.thread.a:                                        ; preds = %.thread
  %i.ce = load ptr, ptr %1, align 8, !tbaa !38
  %.not40 = icmp eq ptr %i.ce, null
  br i1 %.not40, label %bb.an, label %bb.ag

bb.ag:                                            ; preds = %.thread.a
  %i.cf = tail call noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #9 ; 6 uses
  invoke void @_ZN12CFilterCoderC1Ev(ptr noundef nonnull align 8 dereferenceable(200) %i.cf)
          to label %bb.ah unwind label %bb.am

bb.ah:                                            ; preds = %bb.ag
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !35
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = tail call noundef i32 %i.ci(ptr noundef nonnull align 8 dereferenceable(8) %i.cf), !inline_history !41 ; 0 uses
  %i.ck = load ptr, ptr %2, align 8, !tbaa !42    ; 3 uses
  %.not6.i55 = icmp eq ptr %i.ck, null
  br i1 %.not6.i55, label %_ZN9CMyComPtrI14ICompressCoderEaSEPS0_.exit56, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !35
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = tail call noundef i32 %i.cn(ptr noundef nonnull align 8 dereferenceable(8) %i.ck), !inline_history !41 ; 0 uses
  br label %_ZN9CMyComPtrI14ICompressCoderEaSEPS0_.exit56

_ZN9CMyComPtrI14ICompressCoderEaSEPS0_.exit56:    ; preds = %bb.ah, %bb.ai
  store ptr %i.cf, ptr %2, align 8, !tbaa !42
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cf, i64 192 ; 2 uses
  %i.cq = load ptr, ptr %1, align 8, !tbaa !38    ; 4 uses
  %.not.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZN9CMyComPtrI14ICompressCoderEaSEPS0_.exit56
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !35
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = tail call noundef i32 %i.ct(ptr noundef nonnull align 8 dereferenceable(8) %i.cq), !inline_history !49 ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %_ZN9CMyComPtrI14ICompressCoderEaSEPS0_.exit56
  %i.cv = load ptr, ptr %i.cp, align 8, !tbaa !38 ; 3 uses
  %.not6.i.i = icmp eq ptr %i.cv, null
  br i1 %.not6.i.i, label %_ZN9CMyComPtrI15ICompressFilterEaSERKS1_.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !35
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = tail call noundef i32 %i.cy(ptr noundef nonnull align 8 dereferenceable(8) %i.cv), !inline_history !49 ; 0 uses
  br label %_ZN9CMyComPtrI15ICompressFilterEaSERKS1_.exit

_ZN9CMyComPtrI15ICompressFilterEaSERKS1_.exit:    ; preds = %bb.ak, %bb.al
  store ptr %i.cq, ptr %i.cp, align 8, !tbaa !38
  br label %bb.an

bb.am:                                            ; preds = %bb.ag
  %i.da = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef 200) #10
  resume { ptr, i32 } %i.da

bb.an:                                            ; preds = %_ZN9CMyComPtrI15ICompressFilterEaSERKS1_.exit, %.thread.a, %.thread
  ret i32 0
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

declare void @_ZN12CFilterCoderC1Ev(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z11CreateCoderyR9CMyComPtrI14ICompressCoderERS_I15ICompressCoder2Eb(i64 noundef %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2, i1 noundef zeroext %3) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.CMyComPtr, align 8           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  store ptr null, ptr %4, align 8, !tbaa !38
  %i.a = invoke noundef i32 @_Z11CreateCoderyR9CMyComPtrI15ICompressFilterERS_I14ICompressCoderERS_I15ICompressCoder2Ebb(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i1 noundef zeroext %3, i1 noundef zeroext true)
          to label %bb.b unwind label %bb.e       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %4, align 8, !tbaa !38     ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN9CMyComPtrI15ICompressFilterED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = invoke noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN9CMyComPtrI15ICompressFilterED2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #12
  unreachable

_ZN9CMyComPtrI15ICompressFilterED2Ev.exit:        ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  ret i32 0

bb.e:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %4, align 8, !tbaa !38     ; 3 uses
  %.not.i5 = icmp eq ptr %i.j, null
  br i1 %.not.i5, label %_ZN9CMyComPtrI15ICompressFilterED2Ev.exit6, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !35
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = invoke noundef i32 %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %_ZN9CMyComPtrI15ICompressFilterED2Ev.exit6 unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #12
  unreachable

_ZN9CMyComPtrI15ICompressFilterED2Ev.exit6:       ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  resume { ptr, i32 } %i.i
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z11CreateCoderyR9CMyComPtrI14ICompressCoderEb(i64 noundef %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, i1 noundef zeroext %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.CMyComPtr, align 8           ; 7 uses
  %4 = alloca %class.CMyComPtr.1, align 8         ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  store ptr null, ptr %4, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store ptr null, ptr %3, align 8, !tbaa !38
  %i.a = invoke noundef i32 @_Z11CreateCoderyR9CMyComPtrI15ICompressFilterERS_I14ICompressCoderERS_I15ICompressCoder2Ebb(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %4, i1 noundef zeroext %2, i1 noundef zeroext true)
          to label %bb.b unwind label %bb.e       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %3, align 8, !tbaa !38     ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = invoke noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.h unwind label %bb.d       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #12
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %3, align 8, !tbaa !38     ; 3 uses
  %.not.i5.i = icmp eq ptr %i.j, null
  br i1 %.not.i5.i, label %_ZN9CMyComPtrI15ICompressFilterED2Ev.exit6.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !35
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = invoke noundef i32 %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %_ZN9CMyComPtrI15ICompressFilterED2Ev.exit6.i unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #12
  unreachable

_ZN9CMyComPtrI15ICompressFilterED2Ev.exit6.i:     ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.q = load ptr, ptr %4, align 8, !tbaa !46     ; 3 uses
  %.not.i5 = icmp eq ptr %i.q, null
  br i1 %.not.i5, label %_ZN9CMyComPtrI15ICompressFilterED2Ev.exit8, label %bb.k

bb.h:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.r = load ptr, ptr %4, align 8, !tbaa !46     ; 3 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %_ZN9CMyComPtrI15ICompressFilterED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !35
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = invoke noundef i32 %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %_ZN9CMyComPtrI15ICompressFilterED2Ev.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #12
  unreachable

_ZN9CMyComPtrI15ICompressFilterED2Ev.exit:        ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  ret i32 0

bb.k:                                             ; preds = %_ZN9CMyComPtrI15ICompressFilterED2Ev.exit6.i
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !35
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = invoke noundef i32 %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %_ZN9CMyComPtrI15ICompressFilterED2Ev.exit8 unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #12
  unreachable

_ZN9CMyComPtrI15ICompressFilterED2Ev.exit8:       ; preds = %bb.k, %_ZN9CMyComPtrI15ICompressFilterED2Ev.exit6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  resume { ptr, i32 } %i.i
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z12CreateFilteryR9CMyComPtrI15ICompressFilterEb(i64 noundef %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, i1 noundef zeroext %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.CMyComPtr.0, align 8         ; 7 uses
  %4 = alloca %class.CMyComPtr.1, align 8         ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store ptr null, ptr %3, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  store ptr null, ptr %4, align 8, !tbaa !46
  %i.a = invoke noundef i32 @_Z11CreateCoderyR9CMyComPtrI15ICompressFilterERS_I14ICompressCoderERS_I15ICompressCoder2Ebb(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i1 noundef zeroext %2, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.g       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %4, align 8, !tbaa !46     ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN9CMyComPtrI15ICompressCoder2ED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = invoke noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN9CMyComPtrI15ICompressCoder2ED2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
end_hunk_0
