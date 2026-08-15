inline.NumInlined: 27
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 27
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress uwtable
define noundef ptr @utrie_open_78(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i8 noundef signext %5) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %2, 32
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ne i8 %5, 0                         ; 2 uses
  %i.c = icmp samesign ult i32 %2, 1024
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq ptr %0, null                    ; 2 uses
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call noalias dereferenceable_or_null(278816) ptr @uprv_malloc_78(i64 noundef 278816) #15 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.041 = phi ptr [ %i.d, %bb.d ], [ %0, %bb.c ]  ; 15 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(278816) %.041, i8 0, i64 278816, i1 false)
  %i.f = zext i1 %.not to i8
  %i.g = getelementptr inbounds nuw i8, ptr %.041, i64 139416
  store i8 %i.f, ptr %i.g, align 8, !tbaa !8
  %.not47 = icmp eq ptr %1, null
  br i1 %.not47, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %.041, i64 139392
  store ptr %1, ptr %i.h, align 8, !tbaa !12
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.i = shl nsw i32 %2, 2
  %i.j = zext nneg i32 %i.i to i64
  %i.k = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.j) #15 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.041, i64 139392
  store ptr %i.k, ptr %i.l, align 8, !tbaa !12
  %i.m = icmp eq ptr %i.k, null
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @uprv_free_78(ptr noundef nonnull %.041)
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.f
  %.sink = phi i8 [ 0, %bb.f ], [ 1, %bb.g ]
  %i.n = phi ptr [ %1, %bb.f ], [ %i.k, %bb.g ]
  %i.o = getelementptr inbounds nuw i8, ptr %.041, i64 139417
  store i8 %.sink, ptr %i.o, align 1, !tbaa !13
  br i1 %i.b, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.i
  store <4 x i32> <i32 32, i32 64, i32 96, i32 128>, ptr %.041, align 8, !tbaa !14
  %i.p = getelementptr inbounds nuw i8, ptr %.041, i64 16
  store <4 x i32> <i32 160, i32 192, i32 224, i32 256>, ptr %i.p, align 8, !tbaa !14
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %bb.i
  %.1 = phi i32 [ 32, %bb.i ], [ 288, %.preheader.preheader ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.041, i64 139412
  store i32 %.1, ptr %i.q, align 4, !tbaa !15
  %i.r = zext nneg i32 %.1 to i64                 ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.n, i64 %i.r
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.loopexit
  %index = phi i64 [ 0, %.loopexit ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = xor i64 %index, -1
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.s ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %gep, i64 -12
  %i.u = getelementptr inbounds i8, ptr %gep, i64 -28
  store <4 x i32> %broadcast.splat, ptr %i.t, align 4, !tbaa !14
  store <4 x i32> %broadcast.splat, ptr %i.u, align 4, !tbaa !14
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %i.r
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %i.w = getelementptr inbounds nuw i8, ptr %.041, i64 139400
  store i32 %4, ptr %i.w, align 8, !tbaa !20
  %i.x = getelementptr inbounds nuw i8, ptr %.041, i64 139404
  store i32 34816, ptr %i.x, align 4, !tbaa !21
  %i.y = getelementptr inbounds nuw i8, ptr %.041, i64 139408
  store i32 %2, ptr %i.y, align 8, !tbaa !22
  %i.z = getelementptr inbounds nuw i8, ptr %.041, i64 139418
  store i8 %5, ptr %i.z, align 2, !tbaa !23
  %i.aa = getelementptr inbounds nuw i8, ptr %.041, i64 139419
  store i8 0, ptr %i.aa, align 1, !tbaa !24
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.a, %bb.b, %middle.block, %bb.h
  %.042 = phi ptr [ null, %bb.a ], [ %.041, %middle.block ], [ null, %bb.h ], [ null, %bb.b ], [ null, %bb.d ]
  ret ptr %.042
}

; Function Attrs: allocsize(0)
declare noalias ptr @uprv_malloc_78(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef ptr @utrie_clone_78(ptr nofree noundef writeonly captures(address_is_null, ret: address, provenance) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 139392 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 139419
  %i.f = load i8, ptr %i.e, align 1, !tbaa !24
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %.not35 = icmp eq ptr %2, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 139408
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !22 ; 3 uses
  %.not36 = icmp slt i32 %3, %.pre
  %or.cond = select i1 %.not35, i1 true, i1 %.not36
  br i1 %or.cond, label %._crit_edge, label %bb.e

._crit_edge:                                      ; preds = %bb.d
  %i.g = shl nsw i32 %.pre, 2
  %i.h = sext i32 %i.g to i64
  %i.i = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.h) #15 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.k, label %._crit_edge39

._crit_edge39:                                    ; preds = %._crit_edge
  %.pre40 = load ptr, ptr %i.b, align 8, !tbaa !12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge39
  %i.k = phi ptr [ %i.c, %bb.d ], [ %.pre40, %._crit_edge39 ]
  %i.l = phi ptr [ %2, %bb.d ], [ %i.i, %._crit_edge39 ] ; 4 uses
  %.028 = phi i32 [ %3, %bb.d ], [ %.pre, %._crit_edge39 ] ; 3 uses
  %.0 = phi i8 [ 0, %bb.d ], [ 1, %._crit_edge39 ]
  %i.m = load i32, ptr %i.k, align 4, !tbaa !14
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 139400
  %i.o = load i32, ptr %i.n, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 139418
  %i.q = load i8, ptr %i.p, align 2, !tbaa !23    ; 2 uses
  %i.r = icmp slt i32 %.028, 32
  br i1 %i.r, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = icmp ne i8 %i.q, 0                       ; 2 uses
  %i.t = icmp samesign ult i32 %.028, 1024
  %or.cond.i = and i1 %i.t, %i.s
  br i1 %or.cond.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i = icmp eq ptr %0, null                  ; 2 uses
  br i1 %.not.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = tail call noalias dereferenceable_or_null(278816) ptr @uprv_malloc_78(i64 noundef 278816) #15 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.041.i = phi ptr [ %i.u, %bb.h ], [ %0, %bb.g ] ; 14 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(278816) %.041.i, i8 0, i64 278816, i1 false)
  %i.w = zext i1 %.not.i to i8
  %i.x = getelementptr inbounds nuw i8, ptr %.041.i, i64 139416
  store i8 %i.w, ptr %i.x, align 8, !tbaa !8
  %i.y = getelementptr inbounds nuw i8, ptr %.041.i, i64 139392
  store ptr %i.l, ptr %i.y, align 8, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %.041.i, i64 139417
  br i1 %i.s, label %.preheader.preheader.i, label %.loopexit.i

.preheader.preheader.i:                           ; preds = %bb.i
  store <4 x i32> <i32 32, i32 64, i32 96, i32 128>, ptr %.041.i, align 8, !tbaa !14
  %i.aa = getelementptr inbounds nuw i8, ptr %.041.i, i64 16
  store <4 x i32> <i32 160, i32 192, i32 224, i32 256>, ptr %i.aa, align 8, !tbaa !14
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader.preheader.i, %bb.i
  %.1.i = phi i32 [ 32, %bb.i ], [ 288, %.preheader.preheader.i ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.041.i, i64 139412 ; 2 uses
  store i32 %.1.i, ptr %i.ab, align 4, !tbaa !15
  %i.ac = zext nneg i32 %.1.i to i64              ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.m, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.l, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.loopexit.i
  %index = phi i64 [ 0, %.loopexit.i ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = xor i64 %index, -1
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ad ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %gep, i64 -12
  %i.af = getelementptr inbounds i8, ptr %gep, i64 -28
  store <4 x i32> %broadcast.splat, ptr %i.ae, align 4, !tbaa !14
  store <4 x i32> %broadcast.splat, ptr %i.af, align 4, !tbaa !14
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %i.ac
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !25

bb.j:                                             ; preds = %bb.e, %bb.h, %bb.f
  tail call void @uprv_free_78(ptr noundef nonnull %i.l)
  br label %bb.k

middle.block:                                     ; preds = %vector.body
  %i.ah = getelementptr inbounds nuw i8, ptr %.041.i, i64 139400
  store i32 %i.o, ptr %i.ah, align 8, !tbaa !20
  %i.ai = getelementptr inbounds nuw i8, ptr %.041.i, i64 139404
  store i32 34816, ptr %i.ai, align 4, !tbaa !21
  %i.aj = getelementptr inbounds nuw i8, ptr %.041.i, i64 139408
  store i32 %.028, ptr %i.aj, align 8, !tbaa !22
  %i.ak = getelementptr inbounds nuw i8, ptr %.041.i, i64 139418
  store i8 %i.q, ptr %i.ak, align 2, !tbaa !23
  %i.al = getelementptr inbounds nuw i8, ptr %.041.i, i64 139419
  store i8 0, ptr %i.al, align 1, !tbaa !24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(139392) %.041.i, ptr noundef nonnull align 8 dereferenceable(139392) %1, i64 139392, i1 false)
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 139412 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !15
  %i.ap = sext i32 %i.ao to i64
  %i.aq = shl nsw i64 %i.ap, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.l, ptr align 4 %i.am, i64 %i.aq, i1 false)
  %i.ar = load i32, ptr %i.an, align 4, !tbaa !15
  store i32 %i.ar, ptr %i.ab, align 4, !tbaa !15
  store i8 %.0, ptr %i.z, align 1, !tbaa !13
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %middle.block, %._crit_edge, %bb.a, %bb.b, %bb.c
  %.027 = phi ptr [ null, %bb.a ], [ null, %._crit_edge ], [ null, %bb.c ], [ null, %bb.b ], [ %.041.i, %middle.block ], [ null, %bb.j ]
  ret ptr %.027
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define void @utrie_close_78(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 139417
  %i.b = load i8, ptr %i.a, align 1, !tbaa !13
  %.not6 = icmp eq i8 %i.b, 0
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 139392 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12
  tail call void @uprv_free_78(ptr noundef %i.d)
  store ptr null, ptr %i.c, align 8, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 139416
  %i.f = load i8, ptr %i.e, align 8, !tbaa !8
  %.not7 = icmp eq i8 %i.f, 0
  br i1 %.not7, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @uprv_free_78(ptr noundef nonnull %0)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define ptr @utrie_getData_78(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 139412
  %i.d = load i32, ptr %i.c, align 4, !tbaa !15
  store i32 %i.d, ptr %1, align 4, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 139392
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define signext range(i8 0, 2) i8 @utrie_set32_78(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %_ZL18utrie_getDataBlockP8UNewTriei.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 139419
  %i.c = load i8, ptr %i.b, align 1, !tbaa !24
  %i.d = icmp ne i8 %i.c, 0
  %i.e = icmp ugt i32 %1, 1114111
  %or.cond = or i1 %i.e, %i.d
  br i1 %or.cond, label %_ZL18utrie_getDataBlockP8UNewTriei.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = lshr i32 %1, 5
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !14   ; 3 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZL18utrie_getDataBlockP8UNewTriei.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 139412 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !15   ; 5 uses
  %i.m = add nsw i32 %i.l, 32                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 139408
  %i.o = load i32, ptr %i.n, align 8, !tbaa !22
  %i.p = icmp sgt i32 %i.m, %i.o
  br i1 %i.p, label %_ZL18utrie_getDataBlockP8UNewTriei.exit.thread, label %_ZL20utrie_allocDataBlockP8UNewTrie.exit.i

_ZL20utrie_allocDataBlockP8UNewTrie.exit.i:       ; preds = %bb.d
  store i32 %i.m, ptr %i.k, align 4, !tbaa !15
  %i.q = icmp slt i32 %i.l, 0
  br i1 %i.q, label %_ZL18utrie_getDataBlockP8UNewTriei.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZL20utrie_allocDataBlockP8UNewTrie.exit.i
  store i32 %i.l, ptr %i.h, align 4, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 139392
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !12   ; 2 uses
  %i.t = zext nneg i32 %i.l to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.t
  %i.v = sext i32 %i.i to i64
  %i.w = sub nsw i64 0, %i.v
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.w
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.u, ptr noundef nonnull align 4 dereferenceable(128) %i.x, i64 128, i1 false)
  br label %_ZL18utrie_getDataBlockP8UNewTriei.exit

_ZL18utrie_getDataBlockP8UNewTriei.exit:          ; preds = %bb.e, %bb.c
  %.0.i = phi i32 [ %i.l, %bb.e ], [ %i.i, %bb.c ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 139392
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !12
  %i.aa = and i32 %1, 31
  %i.ab = add nuw nsw i32 %.0.i, %i.aa
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ac
  store i32 %2, ptr %i.ad, align 4, !tbaa !14
  br label %_ZL18utrie_getDataBlockP8UNewTriei.exit.thread

_ZL18utrie_getDataBlockP8UNewTriei.exit.thread:   ; preds = %bb.d, %_ZL20utrie_allocDataBlockP8UNewTrie.exit.i, %bb.a, %bb.b, %_ZL18utrie_getDataBlockP8UNewTriei.exit
  %.0 = phi i8 [ 1, %_ZL18utrie_getDataBlockP8UNewTriei.exit ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %_ZL20utrie_allocDataBlockP8UNewTrie.exit.i ], [ 0, %bb.d ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @utrie_get32_78(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 139419
  %i.c = load i8, ptr %i.b, align 1, !tbaa !24
  %i.d = icmp ne i8 %i.c, 0
  %i.e = icmp ugt i32 %1, 1114111
  %or.cond = or i1 %i.e, %i.d
  br i1 %or.cond, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not19 = icmp eq ptr %2, null
  br i1 %.not19, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %2, align 1, !tbaa !26
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.f = lshr i32 %1, 5
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !14   ; 2 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = icmp eq i32 %i.i, 0
  %i.k = zext i1 %i.j to i8
  store i8 %i.k, ptr %2, align 1, !tbaa !26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 139392
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !12
  %i.n = tail call i32 @llvm.abs.i32(i32 %i.i, i1 true)
  %i.o = and i32 %1, 31
  %i.p = add nuw nsw i32 %i.n, %i.o
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !14
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.d, %bb.g
  %.0 = phi i32 [ %i.s, %bb.g ], [ 0, %bb.d ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define signext range(i8 0, 2) i8 @utrie_setRange32_78(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef signext %4) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %_ZL15utrie_fillBlockPjiijja.exit135, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 139419
  %i.c = load i8, ptr %i.b, align 1, !tbaa !24
  %i.d = icmp ne i8 %i.c, 0
  %i.e = icmp ugt i32 %1, 1114111
  %or.cond = or i1 %i.e, %i.d
  %i.f = icmp ugt i32 %2, 1114112
  %or.cond3 = or i1 %i.f, %or.cond
  %i.g = icmp sgt i32 %1, %2
  %or.cond101 = or i1 %i.g, %or.cond3
  br i1 %or.cond101, label %_ZL15utrie_fillBlockPjiijja.exit135, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i32 %1, %2
  br i1 %i.h, label %_ZL15utrie_fillBlockPjiijja.exit135, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 139392 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !12   ; 4 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !14   ; 39 uses
  %i.l = and i32 %1, 31                           ; 4 uses
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %_ZL15utrie_fillBlockPjiijja.exit, label %bb.e
end_hunk_0
begin_hunk_1_@utrie_setRange32_78:bb.a
  %i.my = sext i32 %i.mn to i64
  %i.mz = sub nsw i64 0, %i.my
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %i.mz
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.mx, ptr noundef nonnull align 4 dereferenceable(128) %i.na, i64 128, i1 false)
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !12
  br label %_ZL18utrie_getDataBlockP8UNewTriei.exit127

_ZL18utrie_getDataBlockP8UNewTriei.exit127:       ; preds = %._ZL18utrie_getDataBlockP8UNewTriei.exit127_crit_edge, %bb.bb
  %.pre-phi = phi i64 [ %.pre162, %._ZL18utrie_getDataBlockP8UNewTriei.exit127_crit_edge ], [ %i.mw, %bb.bb ] ; 3 uses
  %i.nb = phi ptr [ %i.mj, %._ZL18utrie_getDataBlockP8UNewTriei.exit127_crit_edge ], [ %.pre, %bb.bb ] ; 2 uses
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.nb, i64 %.pre-phi ; 14 uses
  %i.nd = zext nneg i32 %i.ih to i64              ; 2 uses
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %i.nd ; 2 uses
  %.not.i128 = icmp eq i8 %4, 0
  %i.nf = ptrtoaddr ptr %i.nb to i64              ; 2 uses
  %i.ng = shl nuw nsw i64 %.pre-phi, 2
  %i.nh = shl nuw nsw i64 %i.nd, 2
  %i.ni = add i64 %i.ng, %i.nf                    ; 2 uses
  %i.nj = add i64 %i.ni, %i.nh
  %i.nk = add i64 %i.ni, 4
  %i.nl = tail call i64 @llvm.umax.i64(i64 %i.nj, i64 %i.nk)
  %i.nm = xor i64 %i.nf, -1
  %i.nn = add i64 %i.nl, %i.nm
  %i.no = shl nuw nsw i64 %.pre-phi, 2
  %i.np = sub i64 %i.nn, %i.no                    ; 2 uses
  %i.nq = lshr i64 %i.np, 2
  %i.nr = add nuw nsw i64 %i.nq, 1                ; 4 uses
  %min.iters.check288 = icmp ult i64 %i.np, 28    ; 2 uses
  br i1 %.not.i128, label %.lr.ph19.i133.preheader, label %.lr.ph.i130.preheader

.lr.ph.i130.preheader:                            ; preds = %_ZL18utrie_getDataBlockP8UNewTriei.exit127
  br i1 %min.iters.check288, label %.lr.ph.i130.preheader327, label %vector.ph276

vector.ph276:                                     ; preds = %.lr.ph.i130.preheader
  %n.vec277 = and i64 %i.nr, 9223372036854775800  ; 3 uses
  %i.ns = shl i64 %n.vec277, 2
  %i.nt = getelementptr i8, ptr %i.nc, i64 %i.ns
  %broadcast.splatinsert278 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat279 = shufflevector <4 x i32> %broadcast.splatinsert278, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body280

vector.body280:                                   ; preds = %vector.body280, %vector.ph276
  %index281 = phi i64 [ 0, %vector.ph276 ], [ %index.next283, %vector.body280 ] ; 2 uses
  %i.nu = shl i64 %index281, 2
  %next.gep282 = getelementptr i8, ptr %i.nc, i64 %i.nu ; 2 uses
  %i.nv = getelementptr i8, ptr %next.gep282, i64 16
  store <4 x i32> %broadcast.splat279, ptr %next.gep282, align 4, !tbaa !14
  store <4 x i32> %broadcast.splat279, ptr %i.nv, align 4, !tbaa !14
  %index.next283 = add nuw i64 %index281, 8       ; 2 uses
  %i.nw = icmp eq i64 %index.next283, %n.vec277
  br i1 %i.nw, label %middle.block284, label %vector.body280, !llvm.loop !34

middle.block284:                                  ; preds = %vector.body280
  %cmp.n285 = icmp eq i64 %i.nr, %n.vec277
  br i1 %cmp.n285, label %_ZL15utrie_fillBlockPjiijja.exit135, label %.lr.ph.i130.preheader327

.lr.ph.i130.preheader327:                         ; preds = %.lr.ph.i130.preheader, %middle.block284
  %.017.i131.ph = phi ptr [ %i.nc, %.lr.ph.i130.preheader ], [ %i.nt, %middle.block284 ]
  br label %.lr.ph.i130

.lr.ph19.i133.preheader:                          ; preds = %_ZL18utrie_getDataBlockP8UNewTriei.exit127
  br i1 %min.iters.check288, label %.lr.ph19.i133.preheader326, label %vector.ph289

vector.ph289:                                     ; preds = %.lr.ph19.i133.preheader
  %n.vec290 = and i64 %i.nr, 9223372036854775800  ; 3 uses
  %i.nx = shl i64 %n.vec290, 2
  %i.ny = getelementptr i8, ptr %i.nc, i64 %i.nx
  %broadcast.splatinsert291 = insertelement <4 x i32> poison, i32 %i.k, i64 0
  %broadcast.splat292 = shufflevector <4 x i32> %broadcast.splatinsert291, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body293

vector.body293:                                   ; preds = %pred.store.continue320, %vector.ph289
  %index294 = phi i64 [ 0, %vector.ph289 ], [ %index.next321, %pred.store.continue320 ] ; 2 uses
  %i.nz = shl i64 %index294, 2                    ; 8 uses
  %next.gep295 = getelementptr i8, ptr %i.nc, i64 %i.nz ; 3 uses
  %i.oa = getelementptr i8, ptr %i.nc, i64 %i.nz
  %next.gep296 = getelementptr i8, ptr %i.oa, i64 4
  %i.ob = getelementptr i8, ptr %i.nc, i64 %i.nz
  %next.gep297 = getelementptr i8, ptr %i.ob, i64 8
  %i.oc = getelementptr i8, ptr %i.nc, i64 %i.nz
  %next.gep298 = getelementptr i8, ptr %i.oc, i64 12
  %i.od = getelementptr i8, ptr %i.nc, i64 %i.nz
  %next.gep299 = getelementptr i8, ptr %i.od, i64 16
  %i.oe = getelementptr i8, ptr %i.nc, i64 %i.nz
  %next.gep300 = getelementptr i8, ptr %i.oe, i64 20
  %i.of = getelementptr i8, ptr %i.nc, i64 %i.nz
  %next.gep301 = getelementptr i8, ptr %i.of, i64 24
  %i.og = getelementptr i8, ptr %i.nc, i64 %i.nz
  %next.gep302 = getelementptr i8, ptr %i.og, i64 28
  %i.oh = getelementptr i8, ptr %next.gep295, i64 16
  %wide.load303 = load <4 x i32>, ptr %next.gep295, align 4, !tbaa !14
  %wide.load304 = load <4 x i32>, ptr %i.oh, align 4, !tbaa !14
  %i.oi = icmp eq <4 x i32> %wide.load303, %broadcast.splat292 ; 4 uses
  %i.oj = icmp eq <4 x i32> %wide.load304, %broadcast.splat292 ; 4 uses
  %i.ok = extractelement <4 x i1> %i.oi, i64 0
  br i1 %i.ok, label %pred.store.if305, label %pred.store.continue306

pred.store.if305:                                 ; preds = %vector.body293
  store i32 %3, ptr %next.gep295, align 4, !tbaa !14
  br label %pred.store.continue306

pred.store.continue306:                           ; preds = %pred.store.if305, %vector.body293
  %i.ol = extractelement <4 x i1> %i.oi, i64 1
  br i1 %i.ol, label %pred.store.if307, label %pred.store.continue308

pred.store.if307:                                 ; preds = %pred.store.continue306
  store i32 %3, ptr %next.gep296, align 4, !tbaa !14
  br label %pred.store.continue308

pred.store.continue308:                           ; preds = %pred.store.if307, %pred.store.continue306
  %i.om = extractelement <4 x i1> %i.oi, i64 2
  br i1 %i.om, label %pred.store.if309, label %pred.store.continue310

pred.store.if309:                                 ; preds = %pred.store.continue308
  store i32 %3, ptr %next.gep297, align 4, !tbaa !14
  br label %pred.store.continue310

pred.store.continue310:                           ; preds = %pred.store.if309, %pred.store.continue308
  %i.on = extractelement <4 x i1> %i.oi, i64 3
  br i1 %i.on, label %pred.store.if311, label %pred.store.continue312

pred.store.if311:                                 ; preds = %pred.store.continue310
  store i32 %3, ptr %next.gep298, align 4, !tbaa !14
  br label %pred.store.continue312

pred.store.continue312:                           ; preds = %pred.store.if311, %pred.store.continue310
  %i.oo = extractelement <4 x i1> %i.oj, i64 0
  br i1 %i.oo, label %pred.store.if313, label %pred.store.continue314

pred.store.if313:                                 ; preds = %pred.store.continue312
  store i32 %3, ptr %next.gep299, align 4, !tbaa !14
  br label %pred.store.continue314

pred.store.continue314:                           ; preds = %pred.store.if313, %pred.store.continue312
  %i.op = extractelement <4 x i1> %i.oj, i64 1
  br i1 %i.op, label %pred.store.if315, label %pred.store.continue316

pred.store.if315:                                 ; preds = %pred.store.continue314
  store i32 %3, ptr %next.gep300, align 4, !tbaa !14
  br label %pred.store.continue316

pred.store.continue316:                           ; preds = %pred.store.if315, %pred.store.continue314
  %i.oq = extractelement <4 x i1> %i.oj, i64 2
  br i1 %i.oq, label %pred.store.if317, label %pred.store.continue318

pred.store.if317:                                 ; preds = %pred.store.continue316
  store i32 %3, ptr %next.gep301, align 4, !tbaa !14
  br label %pred.store.continue318

pred.store.continue318:                           ; preds = %pred.store.if317, %pred.store.continue316
  %i.or = extractelement <4 x i1> %i.oj, i64 3
  br i1 %i.or, label %pred.store.if319, label %pred.store.continue320

pred.store.if319:                                 ; preds = %pred.store.continue318
  store i32 %3, ptr %next.gep302, align 4, !tbaa !14
  br label %pred.store.continue320

pred.store.continue320:                           ; preds = %pred.store.if319, %pred.store.continue318
  %index.next321 = add nuw i64 %index294, 8       ; 2 uses
  %i.os = icmp eq i64 %index.next321, %n.vec290
  br i1 %i.os, label %middle.block322, label %vector.body293, !llvm.loop !35

middle.block322:                                  ; preds = %pred.store.continue320
  %cmp.n323 = icmp eq i64 %i.nr, %n.vec290
  br i1 %cmp.n323, label %_ZL15utrie_fillBlockPjiijja.exit135, label %.lr.ph19.i133.preheader326

.lr.ph19.i133.preheader326:                       ; preds = %.lr.ph19.i133.preheader, %middle.block322
  %.118.i134.ph = phi ptr [ %i.nc, %.lr.ph19.i133.preheader ], [ %i.ny, %middle.block322 ]
  br label %.lr.ph19.i133

.lr.ph.i130:                                      ; preds = %.lr.ph.i130.preheader327, %.lr.ph.i130
  %.017.i131 = phi ptr [ %i.ot, %.lr.ph.i130 ], [ %.017.i131.ph, %.lr.ph.i130.preheader327 ] ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %.017.i131, i64 4 ; 2 uses
  store i32 %3, ptr %.017.i131, align 4, !tbaa !14
  %i.ou = icmp ult ptr %i.ot, %i.ne
  br i1 %i.ou, label %.lr.ph.i130, label %_ZL15utrie_fillBlockPjiijja.exit135, !llvm.loop !36

.lr.ph19.i133:                                    ; preds = %.lr.ph19.i133.preheader326, %bb.bd
  %.118.i134 = phi ptr [ %i.ox, %bb.bd ], [ %.118.i134.ph, %.lr.ph19.i133.preheader326 ] ; 3 uses
  %i.ov = load i32, ptr %.118.i134, align 4, !tbaa !14
  %i.ow = icmp eq i32 %i.ov, %i.k
  br i1 %i.ow, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %.lr.ph19.i133
  store i32 %3, ptr %.118.i134, align 4, !tbaa !14
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %.lr.ph19.i133
  %i.ox = getelementptr inbounds nuw i8, ptr %.118.i134, i64 4 ; 2 uses
  %i.oy = icmp ult ptr %i.ox, %i.ne
  br i1 %i.oy, label %.lr.ph19.i133, label %_ZL15utrie_fillBlockPjiijja.exit135, !llvm.loop !37

_ZL15utrie_fillBlockPjiijja.exit135:              ; preds = %.lr.ph.i104, %bb.m, %_ZL20utrie_allocDataBlockP8UNewTrie.exit.i118, %bb.ay, %.lr.ph.i130, %bb.bd, %middle.block233, %middle.block271, %middle.block284, %middle.block322, %bb.ba, %_ZL20utrie_allocDataBlockP8UNewTrie.exit.i125, %bb.f, %_ZL20utrie_allocDataBlockP8UNewTrie.exit.i, %.preheader.i106, %.preheader15.i103, %._crit_edge, %bb.c, %bb.a, %bb.b
  %.1 = phi i8 [ 0, %bb.ba ], [ 0, %bb.a ], [ 1, %bb.c ], [ 0, %bb.f ], [ 0, %_ZL20utrie_allocDataBlockP8UNewTrie.exit.i125 ], [ 0, %bb.b ], [ 1, %._crit_edge ], [ 1, %middle.block284 ], [ 1, %middle.block271 ], [ 1, %middle.block322 ], [ 1, %.preheader.i106 ], [ 1, %.preheader15.i103 ], [ 0, %_ZL20utrie_allocDataBlockP8UNewTrie.exit.i ], [ 0, %_ZL20utrie_allocDataBlockP8UNewTrie.exit.i118 ], [ 1, %middle.block233 ], [ 1, %bb.m ], [ 1, %bb.bd ], [ 1, %.lr.ph.i130 ], [ 0, %bb.ay ], [ 1, %.lr.ph.i104 ]
  ret i8 %.1
}

; Function Attrs: mustprogress uwtable
define i32 @utrie_serialize_78(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i8 noundef signext %4, ptr nofree noundef captures(address_is_null) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %5, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %5, align 4, !tbaa !38     ; 2 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq ptr %0, null
  %i.e = icmp slt i32 %2, 0
  %or.cond = or i1 %i.d, %i.e
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = icmp ne i32 %2, 0
  %i.g = icmp eq ptr %1, null
  %or.cond3 = and i1 %i.g, %i.f
  br i1 %or.cond3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 1, ptr %5, align 4, !tbaa !38
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 139419 ; 3 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !24
  %.not85 = icmp eq i8 %i.i, 0
  br i1 %.not85, label %bb.g, label %bb.bc

bb.g:                                             ; preds = %bb.f
  %i.j = icmp eq ptr %3, null
  %spec.store.select = select i1 %i.j, ptr @_ZL21defaultGetFoldedValueP8UNewTrieii, ptr %3
  tail call fastcc void @_ZL13utrie_compactP8UNewTrieaP10UErrorCode(ptr noundef %0, i8 noundef signext 0, i32 %i.b)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 6912 ; 2 uses
  %.sroa.0.0.copyload = load <32 x i32>, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 139400
  %i.m = load i32, ptr %i.l, align 8, !tbaa !20   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 139392 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !12   ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !14
  %i.q = icmp eq i32 %i.m, %i.p
  br i1 %i.q, label %.preheader.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 139412 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !15   ; 4 uses
  %i.t = add nsw i32 %i.s, 32                     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 139408
  %i.v = load i32, ptr %i.u, align 8, !tbaa !22
  %i.w = icmp sgt i32 %i.t, %i.v
  br i1 %i.w, label %_ZL20utrie_allocDataBlockP8UNewTrie.exit.thread.i, label %_ZL20utrie_allocDataBlockP8UNewTrie.exit.i

_ZL20utrie_allocDataBlockP8UNewTrie.exit.i:       ; preds = %bb.h
  store i32 %i.t, ptr %i.r, align 4, !tbaa !15
  %i.x = icmp slt i32 %i.s, 0
  br i1 %i.x, label %_ZL20utrie_allocDataBlockP8UNewTrie.exit.thread.i, label %.lr.ph.i.i

_ZL20utrie_allocDataBlockP8UNewTrie.exit.thread.i: ; preds = %_ZL20utrie_allocDataBlockP8UNewTrie.exit.i, %bb.h
  store i32 7, ptr %5, align 4, !tbaa !38
  br label %_ZL10utrie_foldP8UNewTriePFjS0_iiEP10UErrorCode.exit

.lr.ph.i.i:                                       ; preds = %_ZL20utrie_allocDataBlockP8UNewTrie.exit.i
  %i.y = zext nneg i32 %i.s to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.y ; 8 uses
  %i.aa = insertelement <4 x i32> poison, i32 %i.m, i64 0
  %i.ab = shufflevector <4 x i32> %i.aa, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  store <4 x i32> %i.ab, ptr %i.z, align 4, !tbaa !14
  %.017.i.ptr.4.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <4 x i32> %i.ab, ptr %.017.i.ptr.4.i, align 4, !tbaa !14
  %.017.i.ptr.8.i = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store <4 x i32> %i.ab, ptr %.017.i.ptr.8.i, align 4, !tbaa !14
  %.017.i.ptr.12.i = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  store <4 x i32> %i.ab, ptr %.017.i.ptr.12.i, align 4, !tbaa !14
  %.017.i.ptr.16.i = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  store <4 x i32> %i.ab, ptr %.017.i.ptr.16.i, align 4, !tbaa !14
  %.017.i.ptr.20.i = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  store <4 x i32> %i.ab, ptr %.017.i.ptr.20.i, align 4, !tbaa !14
  %.017.i.ptr.24.i = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  store <4 x i32> %i.ab, ptr %.017.i.ptr.24.i, align 4, !tbaa !14
  %.017.i.ptr.28.i = getelementptr inbounds nuw i8, ptr %i.z, i64 112
  store <4 x i32> %i.ab, ptr %.017.i.ptr.28.i, align 4, !tbaa !14
  %i.ac = sub nsw i32 0, %i.s
  br label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i.i, %bb.g
  %.0.i = phi i32 [ %i.ac, %.lr.ph.i.i ], [ 0, %bb.g ]
  %i.ad = insertelement <4 x i32> poison, i32 %.0.i, i64 0
  %i.ae = shufflevector <4 x i32> %i.ad, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  store <4 x i32> %i.ae, ptr %i.k, align 8, !tbaa !14
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 6928
  store <4 x i32> %i.ae, ptr %i.af, align 8, !tbaa !14
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 6944
  store <4 x i32> %i.ae, ptr %i.ag, align 8, !tbaa !14
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 6960
  store <4 x i32> %i.ae, ptr %i.ah, align 8, !tbaa !14
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 6976
  store <4 x i32> %i.ae, ptr %i.ai, align 8, !tbaa !14
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 6992
  store <4 x i32> %i.ae, ptr %i.aj, align 8, !tbaa !14
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 7008
  store <4 x i32> %i.ae, ptr %i.ak, align 8, !tbaa !14
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 7024
  store <4 x i32> %i.ae, ptr %i.al, align 8, !tbaa !14
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 139412 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 139408
  br label %bb.i

bb.i:                                             ; preds = %bb.ay, %.preheader.i
  %.05272.i = phi i32 [ 2048, %.preheader.i ], [ %.2.i, %bb.ay ] ; 11 uses
  %.15471.i = phi i32 [ 65536, %.preheader.i ], [ %.255.i, %bb.ay ] ; 4 uses
  %i.ao = ashr i32 %.15471.i, 5
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !14
  %.not.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i, label %bb.ax, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = and i32 %.15471.i, -1024                ; 3 uses
  %i.at = ashr exact i32 %i.as, 5                 ; 2 uses
  %i.au = icmp sgt i32 %.05272.i, 2048
  br i1 %i.au, label %.preheader.preheader.i.i, label %_ZL19_findSameIndexBlockPKiii.exit.i

.preheader.preheader.i.i:                         ; preds = %bb.j
  %i.av = sext i32 %i.at to i64
  %i.aw = zext nneg i32 %.05272.i to i64
  %.phi.trans.insert.i.i = getelementptr inbounds [4 x i8], ptr %0, i64 %i.av ; 32 uses
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !14
  %i.ax = getelementptr i8, ptr %.phi.trans.insert.i.i, i64 4
  %i.ay = getelementptr i8, ptr %.phi.trans.insert.i.i, i64 8
  %i.az = getelementptr i8, ptr %.phi.trans.insert.i.i, i64 12
  %i.ba = getelementptr i8, ptr %.phi.trans.insert.i.i, i64 16
  %i.bb = getelementptr i8, ptr %.phi.trans.insert.i.i, i64 20
  %i.bc = getelementptr i8, ptr %.phi.trans.insert.i.i, i64 24
  %i.bd = getelementptr i8, ptr %.phi.trans.insert.i.i, i64 28
  %i.be = getelementptr i8, ptr %.phi.trans.insert.i.i, i64 32
  %i.bf = getelementptr i8, ptr %.phi.trans.insert.i.i, i64 36
  %i.bg = getelementptr i8, ptr %.phi.trans.insert.i.i, i64 40
  %i.bh = getelementptr i8, ptr %.phi.trans.insert.i.i, i64 44
  %i.bi = getelementptr i8, ptr %.phi.trans.insert.i.i, i64 48
  %i.bj = getelementptr i8, ptr %.phi.trans.insert.i.i, i64 52
  %i.bk = getelementptr i8, ptr %.phi.trans.insert.i.i, i64 56
  %i.bl = getelementptr i8, ptr %.phi.trans.insert.i.i, i64 60
  %i.bm = getelementptr i8, ptr %.phi.trans.insert.i.i, i64 64
  %i.bn = getelementptr i8, ptr %.phi.trans.insert.i.i, i64 68
  %i.bo = getelementptr i8, ptr %.phi.trans.insert.i.i, i64 72
  %i.bp = getelementptr i8, ptr %.phi.trans.insert.i.i, i64 76
  %i.bq = getelementptr i8, ptr %.phi.trans.insert.i.i, i64 80
  %i.br = getelementptr i8, ptr %.phi.trans.insert.i.i, i64 84
  %i.bs = getelementptr i8, ptr %.phi.trans.insert.i.i, i64 88
  %i.bt = getelementptr i8, ptr %.phi.trans.insert.i.i, i64 92
  %i.bu = getelementptr i8, ptr %.phi.trans.insert.i.i, i64 96
  %i.bv = getelementptr i8, ptr %.phi.trans.insert.i.i, i64 100
  %i.bw = getelementptr i8, ptr %.phi.trans.insert.i.i, i64 104
  %i.bx = getelementptr i8, ptr %.phi.trans.insert.i.i, i64 108
  %i.by = getelementptr i8, ptr %.phi.trans.insert.i.i, i64 112
  %i.bz = getelementptr i8, ptr %.phi.trans.insert.i.i, i64 116
  %i.ca = getelementptr i8, ptr %.phi.trans.insert.i.i, i64 120
  %i.cb = getelementptr i8, ptr %.phi.trans.insert.i.i, i64 124
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.thread.i.i, %.preheader.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 2048, %.preheader.preheader.i.i ], [ %indvars.iv.next.i.i, %.thread.i.i ] ; 3 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i.i ; 32 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !14
  %.not.i.i = icmp eq i32 %i.cd, %.pre.i.i
  br i1 %.not.i.i, label %bb.k, label %.thread.i.i

bb.k:                                             ; preds = %.preheader.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !14
  %i.cg = load i32, ptr %i.ax, align 4, !tbaa !14
  %.not.1.i.i = icmp eq i32 %i.cf, %i.cg
  br i1 %.not.1.i.i, label %bb.l, label %.thread.i.i

bb.l:                                             ; preds = %bb.k
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !14
  %i.cj = load i32, ptr %i.ay, align 4, !tbaa !14
  %.not.2.i.i = icmp eq i32 %i.ci, %i.cj
  br i1 %.not.2.i.i, label %bb.m, label %.thread.i.i

bb.m:                                             ; preds = %bb.l
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !14
  %i.cm = load i32, ptr %i.az, align 4, !tbaa !14
  %.not.3.i.i = icmp eq i32 %i.cl, %i.cm
  br i1 %.not.3.i.i, label %bb.n, label %.thread.i.i

bb.n:                                             ; preds = %bb.m
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !14
  %i.cp = load i32, ptr %i.ba, align 4, !tbaa !14
  %.not.4.i.i = icmp eq i32 %i.co, %i.cp
  br i1 %.not.4.i.i, label %bb.o, label %.thread.i.i

bb.o:                                             ; preds = %bb.n
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cc, i64 20
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !14
  %i.cs = load i32, ptr %i.bb, align 4, !tbaa !14
  %.not.5.i.i = icmp eq i32 %i.cr, %i.cs
  br i1 %.not.5.i.i, label %bb.p, label %.thread.i.i

bb.p:                                             ; preds = %bb.o
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !14
  %i.cv = load i32, ptr %i.bc, align 4, !tbaa !14
  %.not.6.i.i = icmp eq i32 %i.cu, %i.cv
  br i1 %.not.6.i.i, label %bb.q, label %.thread.i.i

bb.q:                                             ; preds = %bb.p
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cc, i64 28
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !14
  %i.cy = load i32, ptr %i.bd, align 4, !tbaa !14
  %.not.7.i.i = icmp eq i32 %i.cx, %i.cy
  br i1 %.not.7.i.i, label %bb.r, label %.thread.i.i

bb.r:                                             ; preds = %bb.q
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !14
  %i.db = load i32, ptr %i.be, align 4, !tbaa !14
  %.not.8.i.i = icmp eq i32 %i.da, %i.db
  br i1 %.not.8.i.i, label %bb.s, label %.thread.i.i

bb.s:                                             ; preds = %bb.r
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cc, i64 36
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !14
  %i.de = load i32, ptr %i.bf, align 4, !tbaa !14
  %.not.9.i.i = icmp eq i32 %i.dd, %i.de
  br i1 %.not.9.i.i, label %bb.t, label %.thread.i.i

bb.t:                                             ; preds = %bb.s
  %i.df = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !14
  %i.dh = load i32, ptr %i.bg, align 4, !tbaa !14
end_hunk_1
begin_hunk_2_@utrie_serialize_78:bb.a
  %i.el = load i32, ptr %i.bq, align 4, !tbaa !14
  %.not.20.i.i = icmp eq i32 %i.ek, %i.el
  br i1 %.not.20.i.i, label %bb.ae, label %.thread.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.em = getelementptr inbounds nuw i8, ptr %i.cc, i64 84
  %i.en = load i32, ptr %i.em, align 4, !tbaa !14
  %i.eo = load i32, ptr %i.br, align 4, !tbaa !14
  %.not.21.i.i = icmp eq i32 %i.en, %i.eo
  br i1 %.not.21.i.i, label %bb.af, label %.thread.i.i

bb.af:                                            ; preds = %bb.ae
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cc, i64 88
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !14
  %i.er = load i32, ptr %i.bs, align 4, !tbaa !14
  %.not.22.i.i = icmp eq i32 %i.eq, %i.er
  br i1 %.not.22.i.i, label %bb.ag, label %.thread.i.i

bb.ag:                                            ; preds = %bb.af
  %i.es = getelementptr inbounds nuw i8, ptr %i.cc, i64 92
  %i.et = load i32, ptr %i.es, align 4, !tbaa !14
  %i.eu = load i32, ptr %i.bt, align 4, !tbaa !14
  %.not.23.i.i = icmp eq i32 %i.et, %i.eu
  br i1 %.not.23.i.i, label %bb.ah, label %.thread.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cc, i64 96
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !14
  %i.ex = load i32, ptr %i.bu, align 4, !tbaa !14
  %.not.24.i.i = icmp eq i32 %i.ew, %i.ex
  br i1 %.not.24.i.i, label %bb.ai, label %.thread.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.ey = getelementptr inbounds nuw i8, ptr %i.cc, i64 100
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !14
  %i.fa = load i32, ptr %i.bv, align 4, !tbaa !14
  %.not.25.i.i = icmp eq i32 %i.ez, %i.fa
  br i1 %.not.25.i.i, label %bb.aj, label %.thread.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.fb = getelementptr inbounds nuw i8, ptr %i.cc, i64 104
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !14
  %i.fd = load i32, ptr %i.bw, align 4, !tbaa !14
  %.not.26.i.i = icmp eq i32 %i.fc, %i.fd
  br i1 %.not.26.i.i, label %bb.ak, label %.thread.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.fe = getelementptr inbounds nuw i8, ptr %i.cc, i64 108
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !14
  %i.fg = load i32, ptr %i.bx, align 4, !tbaa !14
  %.not.27.i.i = icmp eq i32 %i.ff, %i.fg
  br i1 %.not.27.i.i, label %bb.al, label %.thread.i.i

bb.al:                                            ; preds = %bb.ak
  %i.fh = getelementptr inbounds nuw i8, ptr %i.cc, i64 112
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !14
  %i.fj = load i32, ptr %i.by, align 4, !tbaa !14
  %.not.28.i.i = icmp eq i32 %i.fi, %i.fj
  br i1 %.not.28.i.i, label %bb.am, label %.thread.i.i

bb.am:                                            ; preds = %bb.al
  %i.fk = getelementptr inbounds nuw i8, ptr %i.cc, i64 116
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !14
  %i.fm = load i32, ptr %i.bz, align 4, !tbaa !14
  %.not.29.i.i = icmp eq i32 %i.fl, %i.fm
  br i1 %.not.29.i.i, label %bb.an, label %.thread.i.i

bb.an:                                            ; preds = %bb.am
  %i.fn = getelementptr inbounds nuw i8, ptr %i.cc, i64 120
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !14
  %i.fp = load i32, ptr %i.ca, align 4, !tbaa !14
  %.not.30.i.i = icmp eq i32 %i.fo, %i.fp
  br i1 %.not.30.i.i, label %bb.ao, label %.thread.i.i

bb.ao:                                            ; preds = %bb.an
  %i.fq = getelementptr inbounds nuw i8, ptr %i.cc, i64 124
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !14
  %i.fs = load i32, ptr %i.cb, align 4, !tbaa !14
  %.not.31.i.i = icmp eq i32 %i.fr, %i.fs
  br i1 %.not.31.i.i, label %bb.ap, label %.thread.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.ft = trunc nuw nsw i64 %indvars.iv.i.i to i32
  br label %_ZL19_findSameIndexBlockPKiii.exit.i

.thread.i.i:                                      ; preds = %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %.preheader.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 32 ; 2 uses
  %i.fu = icmp samesign ult i64 %indvars.iv.next.i.i, %i.aw
  br i1 %i.fu, label %.preheader.i.i, label %_ZL19_findSameIndexBlockPKiii.exit.i, !llvm.loop !40

_ZL19_findSameIndexBlockPKiii.exit.i:             ; preds = %.thread.i.i, %bb.ap, %bb.j
  %.015.i.i = phi i32 [ %.05272.i, %bb.j ], [ %i.ft, %bb.ap ], [ %.05272.i, %.thread.i.i ] ; 2 uses
  %i.fv = add nsw i32 %.015.i.i, 32
  %i.fw = tail call noundef i32 %spec.store.select(ptr noundef nonnull %0, i32 noundef %i.as, i32 noundef %i.fv), !inline_history !41 ; 3 uses
  %i.fx = load i8, ptr %i.h, align 1, !tbaa !24
  %.not67.i = icmp eq i8 %i.fx, 0
  br i1 %.not67.i, label %utrie_get32_78.exit.thread.i, label %utrie_get32_78.exit.i

utrie_get32_78.exit.i:                            ; preds = %_ZL19_findSameIndexBlockPKiii.exit.i
  %.not58.i = icmp eq i32 %i.fw, 0
  br i1 %.not58.i, label %bb.aw, label %bb.at

utrie_get32_78.exit.thread.i:                     ; preds = %_ZL19_findSameIndexBlockPKiii.exit.i
  %i.fy = lshr i32 %.15471.i, 10                  ; 2 uses
  %i.fz = add nuw nsw i32 %i.fy, 55232
  %i.ga = lshr i32 %i.fz, 5
  %i.gb = and i32 %i.ga, 2047
  %i.gc = zext nneg i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gc ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !14 ; 4 uses
  %i.gf = load ptr, ptr %i.n, align 8, !tbaa !12  ; 4 uses
  %i.gg = tail call i32 @llvm.abs.i32(i32 %i.ge, i1 true)
  %i.gh = and i32 %i.fy, 31                       ; 2 uses
  %i.gi = add nuw nsw i32 %i.gg, %i.gh
  %i.gj = zext nneg i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %i.gj
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !14
  %.not5864.i = icmp eq i32 %i.fw, %i.gl
  br i1 %.not5864.i, label %bb.aw, label %bb.aq

bb.aq:                                            ; preds = %utrie_get32_78.exit.thread.i
  %i.gm = icmp sgt i32 %i.ge, 0
  br i1 %i.gm, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gn = load i32, ptr %i.am, align 4, !tbaa !15 ; 5 uses
  %i.go = add nsw i32 %i.gn, 32                   ; 2 uses
  %i.gp = load i32, ptr %i.an, align 8, !tbaa !22
  %i.gq = icmp sgt i32 %i.go, %i.gp
  br i1 %i.gq, label %bb.at, label %_ZL20utrie_allocDataBlockP8UNewTrie.exit.i.i.i

_ZL20utrie_allocDataBlockP8UNewTrie.exit.i.i.i:   ; preds = %bb.ar
  store i32 %i.go, ptr %i.am, align 4, !tbaa !15
  %i.gr = icmp slt i32 %i.gn, 0
  br i1 %i.gr, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZL20utrie_allocDataBlockP8UNewTrie.exit.i.i.i
  store i32 %i.gn, ptr %i.gd, align 4, !tbaa !14
  %i.gs = zext nneg i32 %i.gn to i64
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %i.gs
  %i.gu = sext i32 %i.ge to i64
  %i.gv = sub nsw i64 0, %i.gu
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %i.gv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.gt, ptr noundef nonnull align 4 dereferenceable(128) %i.gw, i64 128, i1 false)
  %.pre.i = load ptr, ptr %i.n, align 8, !tbaa !12
  br label %bb.au

bb.at:                                            ; preds = %_ZL20utrie_allocDataBlockP8UNewTrie.exit.i.i.i, %bb.ar, %utrie_get32_78.exit.i
  store i32 7, ptr %5, align 4, !tbaa !38
  br label %_ZL10utrie_foldP8UNewTriePFjS0_iiEP10UErrorCode.exit

bb.au:                                            ; preds = %bb.as, %bb.aq
  %i.gx = phi ptr [ %.pre.i, %bb.as ], [ %i.gf, %bb.aq ]
  %.0.i.i.i = phi i32 [ %i.gn, %bb.as ], [ %i.ge, %bb.aq ]
  %i.gy = add nuw nsw i32 %.0.i.i.i, %i.gh
  %i.gz = zext nneg i32 %i.gy to i64
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %i.gz
  store i32 %i.fw, ptr %i.ha, align 4, !tbaa !14
  %i.hb = icmp eq i32 %.015.i.i, %.05272.i
  br i1 %i.hb, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.hc = sext i32 %.05272.i to i64
  %i.hd = getelementptr inbounds [4 x i8], ptr %0, i64 %i.hc
  %i.he = sext i32 %i.at to i64
  %i.hf = getelementptr inbounds [4 x i8], ptr %0, i64 %i.he
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.hd, ptr noundef nonnull align 4 dereferenceable(128) %i.hf, i64 128, i1 false)
  %i.hg = add nsw i32 %.05272.i, 32
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %utrie_get32_78.exit.thread.i, %utrie_get32_78.exit.i
  %.1.i = phi i32 [ %i.hg, %bb.av ], [ %.05272.i, %bb.au ], [ %.05272.i, %utrie_get32_78.exit.i ], [ %.05272.i, %utrie_get32_78.exit.thread.i ]
  %i.hh = add nsw i32 %i.as, 1024
  br label %bb.ay

bb.ax:                                            ; preds = %bb.i
  %i.hi = add nsw i32 %.15471.i, 32
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.255.i = phi i32 [ %i.hh, %bb.aw ], [ %i.hi, %bb.ax ] ; 2 uses
  %.2.i = phi i32 [ %.1.i, %bb.aw ], [ %.05272.i, %bb.ax ] ; 4 uses
  %i.hj = icmp slt i32 %.255.i, 1114112
  br i1 %i.hj, label %bb.i, label %bb.az, !llvm.loop !42

bb.az:                                            ; preds = %bb.ay
  %i.hk = icmp sgt i32 %.2.i, 34815
  br i1 %i.hk, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store i32 8, ptr %5, align 4, !tbaa !38
  br label %_ZL10utrie_foldP8UNewTriePFjS0_iiEP10UErrorCode.exit

bb.bb:                                            ; preds = %bb.az
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 8192 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 8320
  %i.hn = shl i32 %.2.i, 2
  %i.ho = add i32 %i.hn, -8192
  %i.hp = sext i32 %i.ho to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hm, ptr nonnull align 4 %i.hl, i64 %i.hp, i1 false)
  store <32 x i32> %.sroa.0.0.copyload, ptr %i.hl, align 8
  %i.hq = add nsw i32 %.2.i, 32
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 139404
  store i32 %i.hq, ptr %i.hr, align 4, !tbaa !21
  %.val.pre = load i32, ptr %5, align 4, !tbaa !38
  br label %_ZL10utrie_foldP8UNewTriePFjS0_iiEP10UErrorCode.exit

_ZL10utrie_foldP8UNewTriePFjS0_iiEP10UErrorCode.exit: ; preds = %_ZL20utrie_allocDataBlockP8UNewTrie.exit.thread.i, %bb.at, %bb.ba, %bb.bb
  %.val = phi i32 [ 7, %_ZL20utrie_allocDataBlockP8UNewTrie.exit.thread.i ], [ 7, %bb.at ], [ 8, %bb.ba ], [ %.val.pre, %bb.bb ]
  tail call fastcc void @_ZL13utrie_compactP8UNewTrieaP10UErrorCode(ptr noundef %0, i8 noundef signext 1, i32 %.val)
  store i8 1, ptr %i.h, align 1, !tbaa !24
  %i.hs = load i32, ptr %5, align 4, !tbaa !38
  %i.ht = icmp slt i32 %i.hs, 1
  br i1 %i.ht, label %bb.bc, label %.loopexit

bb.bc:                                            ; preds = %_ZL10utrie_foldP8UNewTriePFjS0_iiEP10UErrorCode.exit, %bb.f
  %.not87 = icmp eq i8 %4, 0                      ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 139412
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !15 ; 10 uses
  br i1 %.not87, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 139404
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !21
  %i.hy = add nsw i32 %i.hx, %i.hv
  br label %bb.be

bb.be:                                            ; preds = %bb.bc, %bb.bd
  %i.hz = phi i32 [ %i.hy, %bb.bd ], [ %i.hv, %bb.bc ]
  %i.ia = icmp sgt i32 %i.hz, 262143
  br i1 %i.ia, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 8, ptr %5, align 4, !tbaa !38
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 139404
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !21 ; 13 uses
  %i.id = shl nsw i32 %i.ic, 1
  %i.ie = add i32 %i.id, 16
  %. = select i1 %.not87, i32 2, i32 1
  %i.if = shl nsw i32 %i.hv, %.
  %.0 = add nsw i32 %i.ie, %i.if                  ; 6 uses
  %i.ig = icmp sgt i32 %.0, %2
  br i1 %i.ig, label %.loopexit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  store i32 1416784229, ptr %1, align 4, !tbaa !43
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %spec.select = select i1 %.not87, i32 293, i32 37 ; 2 uses
  store i32 %spec.select, ptr %i.ii, align 4, !tbaa !45
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 139418
  %i.ik = load i8, ptr %i.ij, align 2, !tbaa !23
  %.not88 = icmp eq i8 %i.ik, 0
  br i1 %.not88, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.il = or disjoint i32 %spec.select, 512
  store i32 %i.il, ptr %i.ii, align 4, !tbaa !45
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.ic, ptr %i.im, align 4, !tbaa !46
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.hv, ptr %i.in, align 4, !tbaa !47
  %i.io = icmp sgt i32 %i.ic, 0                   ; 2 uses
  br i1 %.not87, label %.preheader, label %.preheader90

.preheader90:                                     ; preds = %bb.bj
  br i1 %i.io, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader90
  %i.ip = zext nneg i32 %i.ic to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.ic, 8
  br i1 %min.iters.check, label %.lr.ph.preheader165, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.ip, 2147483640              ; 5 uses
  %i.iq = trunc nuw nsw i64 %n.vec to i32
  %i.ir = sub nsw i32 %i.ic, %i.iq
  %i.is = shl nuw nsw i64 %n.vec, 1
  %i.it = getelementptr i8, ptr %i.ih, i64 %i.is  ; 2 uses
  %i.iu = shl nuw nsw i64 %n.vec, 2
  %i.iv = getelementptr i8, ptr %0, i64 %i.iu
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ic, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.iw = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.ih, i64 %i.iw ; 2 uses
  %i.ix = shl i64 %index, 2
  %next.gep127 = getelementptr i8, ptr %0, i64 %i.ix ; 2 uses
  %i.iy = getelementptr i8, ptr %next.gep127, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep127, align 4, !tbaa !14
  %wide.load128 = load <4 x i32>, ptr %i.iy, align 4, !tbaa !14
  %i.iz = add <4 x i32> %wide.load, %broadcast.splat
  %i.ja = add <4 x i32> %wide.load128, %broadcast.splat
  %i.jb = lshr <4 x i32> %i.iz, splat (i32 2)
  %i.jc = lshr <4 x i32> %i.ja, splat (i32 2)
  %i.jd = trunc <4 x i32> %i.jb to <4 x i16>
  %i.je = trunc <4 x i32> %i.jc to <4 x i16>
  %i.jf = getelementptr i8, ptr %next.gep, i64 8
  store <4 x i16> %i.jd, ptr %next.gep, align 2, !tbaa !48
  store <4 x i16> %i.je, ptr %i.jf, align 2, !tbaa !48
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jg = icmp eq i64 %index.next, %n.vec
  br i1 %i.jg, label %middle.block, label %vector.body, !llvm.loop !50

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ip
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader165

.lr.ph.preheader165:                              ; preds = %.lr.ph.preheader, %middle.block
  %.07494.ph = phi i32 [ %i.ic, %.lr.ph.preheader ], [ %i.ir, %middle.block ]
  %.07593.ph = phi ptr [ %i.ih, %.lr.ph.preheader ], [ %i.it, %middle.block ]
  %.07892.ph = phi ptr [ %0, %.lr.ph.preheader ], [ %i.iv, %middle.block ]
  br label %.lr.ph

.preheader:                                       ; preds = %bb.bj
  br i1 %i.io, label %.lr.ph103.preheader, label %._crit_edge104

.lr.ph103.preheader:                              ; preds = %.preheader
  %i.jh = zext nneg i32 %i.ic to i64              ; 2 uses
  %min.iters.check148 = icmp ult i32 %i.ic, 8
  br i1 %min.iters.check148, label %.lr.ph103.preheader163, label %vector.ph149

vector.ph149:                                     ; preds = %.lr.ph103.preheader
  %n.vec150 = and i64 %i.jh, 2147483640           ; 5 uses
  %i.ji = trunc nuw nsw i64 %n.vec150 to i32
  %i.jj = sub nsw i32 %i.ic, %i.ji
  %i.jk = shl nuw nsw i64 %n.vec150, 1
  %i.jl = getelementptr i8, ptr %i.ih, i64 %i.jk  ; 2 uses
  %i.jm = shl nuw nsw i64 %n.vec150, 2
  %i.jn = getelementptr i8, ptr %0, i64 %i.jm
  br label %vector.body151

vector.body151:                                   ; preds = %vector.body151, %vector.ph149
  %index152 = phi i64 [ 0, %vector.ph149 ], [ %index.next157, %vector.body151 ] ; 3 uses
  %i.jo = shl i64 %index152, 1
  %next.gep153 = getelementptr i8, ptr %i.ih, i64 %i.jo ; 2 uses
  %i.jp = shl i64 %index152, 2
  %next.gep154 = getelementptr i8, ptr %0, i64 %i.jp ; 2 uses
  %i.jq = getelementptr i8, ptr %next.gep154, i64 16
  %wide.load155 = load <4 x i32>, ptr %next.gep154, align 4, !tbaa !14
  %wide.load156 = load <4 x i32>, ptr %i.jq, align 4, !tbaa !14
  %i.jr = lshr <4 x i32> %wide.load155, splat (i32 2)
  %i.js = lshr <4 x i32> %wide.load156, splat (i32 2)
  %i.jt = trunc <4 x i32> %i.jr to <4 x i16>
  %i.ju = trunc <4 x i32> %i.js to <4 x i16>
  %i.jv = getelementptr i8, ptr %next.gep153, i64 8
  store <4 x i16> %i.jt, ptr %next.gep153, align 2, !tbaa !48
  store <4 x i16> %i.ju, ptr %i.jv, align 2, !tbaa !48
  %index.next157 = add nuw i64 %index152, 8       ; 2 uses
  %i.jw = icmp eq i64 %index.next157, %n.vec150
  br i1 %i.jw, label %middle.block158, label %vector.body151, !llvm.loop !51

middle.block158:                                  ; preds = %vector.body151
  %cmp.n159 = icmp eq i64 %n.vec150, %i.jh
  br i1 %cmp.n159, label %._crit_edge104, label %.lr.ph103.preheader163

.lr.ph103.preheader163:                           ; preds = %.lr.ph103.preheader, %middle.block158
  %.2102.ph = phi i32 [ %i.ic, %.lr.ph103.preheader ], [ %i.jj, %middle.block158 ]
  %.277101.ph = phi ptr [ %i.ih, %.lr.ph103.preheader ], [ %i.jl, %middle.block158 ]
  %.280100.ph = phi ptr [ %0, %.lr.ph103.preheader ], [ %i.jn, %middle.block158 ]
  br label %.lr.ph103

.lr.ph:                                           ; preds = %.lr.ph.preheader165, %.lr.ph
  %.07494 = phi i32 [ %i.kd, %.lr.ph ], [ %.07494.ph, %.lr.ph.preheader165 ] ; 2 uses
  %.07593 = phi ptr [ %i.kc, %.lr.ph ], [ %.07593.ph, %.lr.ph.preheader165 ] ; 2 uses
  %.07892 = phi ptr [ %i.jx, %.lr.ph ], [ %.07892.ph, %.lr.ph.preheader165 ] ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.07892, i64 4
  %i.jy = load i32, ptr %.07892, align 4, !tbaa !14
  %i.jz = add i32 %i.jy, %i.ic
  %i.ka = lshr i32 %i.jz, 2
  %i.kb = trunc i32 %i.ka to i16
  %i.kc = getelementptr inbounds nuw i8, ptr %.07593, i64 2 ; 2 uses
  store i16 %i.kb, ptr %.07593, align 2, !tbaa !48
  %i.kd = add nsw i32 %.07494, -1
  %i.ke = icmp samesign ugt i32 %.07494, 1
  br i1 %i.ke, label %.lr.ph, label %._crit_edge, !llvm.loop !52

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %.preheader90
  %.075.lcssa = phi ptr [ %i.ih, %.preheader90 ], [ %i.it, %middle.block ], [ %i.kc, %.lr.ph ] ; 3 uses
  %i.kf = icmp sgt i32 %i.hv, 0
  br i1 %i.kf, label %.lr.ph99.preheader, label %.loopexit

.lr.ph99.preheader:                               ; preds = %._crit_edge
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 139392
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !12 ; 3 uses
  %i.ki = zext nneg i32 %i.hv to i64              ; 2 uses
  %min.iters.check132 = icmp ult i32 %i.hv, 8
  br i1 %min.iters.check132, label %.lr.ph99.preheader164, label %vector.ph133

vector.ph133:                                     ; preds = %.lr.ph99.preheader
  %n.vec134 = and i64 %i.ki, 2147483640           ; 5 uses
  %i.kj = trunc nuw nsw i64 %n.vec134 to i32
  %i.kk = sub nsw i32 %i.hv, %i.kj
  %i.kl = shl nuw nsw i64 %n.vec134, 1
  %i.km = getelementptr i8, ptr %.075.lcssa, i64 %i.kl
  %i.kn = shl nuw nsw i64 %n.vec134, 2
  %i.ko = getelementptr i8, ptr %i.kh, i64 %i.kn
  br label %vector.body135

vector.body135:                                   ; preds = %vector.body135, %vector.ph133
end_hunk_2
begin_hunk_3_@utrie_enum_78:bb.a
  %.not224.us = icmp eq i8 %i.dd, 0
  br i1 %.not224.us, label %.loopexit236, label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  %.9176.us = phi i32 [ %.8175.us, %bb.ap ], [ %.4185.us, %bb.ar ], [ %.4185.us, %bb.aq ]
  %.10.us = phi i32 [ %.9.us, %bb.ap ], [ %.0367, %bb.ar ], [ %.0367, %bb.aq ]
  %i.de = add nuw nsw i32 %.4185.us, 32
  br label %.loopexit.split.us.us

bb.at:                                            ; preds = %.preheader237.split.us
  %i.df = add nuw nsw i32 %.4185.us, 32
  br label %.loopexit.split.us.us

.loopexit.split.us.us:                            ; preds = %bb.aw, %bb.at, %bb.as
  %.12201.us = phi i32 [ %.8197.us, %bb.at ], [ %i.j, %bb.as ], [ %.11200.us.us, %bb.aw ] ; 2 uses
  %.6187.us = phi i32 [ %i.df, %bb.at ], [ %i.de, %bb.as ], [ %i.dn, %bb.aw ] ; 2 uses
  %.12179.us = phi i32 [ %.8175.us, %bb.at ], [ %.9176.us, %bb.as ], [ %.11178.us.us, %bb.aw ] ; 2 uses
  %.14.us = phi i32 [ %.9.us, %bb.at ], [ %.10.us, %bb.as ], [ %.13.us.us, %bb.aw ] ; 2 uses
  %indvars.iv.next345 = add nuw nsw i64 %indvars.iv344, 1
  %i.dg = trunc nuw i64 %indvars.iv344 to i32
  %i.dh = icmp sgt i32 %i.cm, %i.dg
  br i1 %i.dh, label %.preheader237.split.us, label %.loopexit239, !llvm.loop !78

.preheader.us:                                    ; preds = %.preheader.us.peel.next, %bb.aw
  %indvars.iv338 = phi i64 [ 1, %.preheader.us.peel.next ], [ %indvars.iv.next339, %bb.aw ] ; 2 uses
  %.11294.us.us = phi i32 [ %i.cr, %.preheader.us.peel.next ], [ %.13.us.us, %bb.aw ]
  %.10177292.us.us = phi i32 [ %.11178.us.us.peel, %.preheader.us.peel.next ], [ %.11178.us.us, %bb.aw ] ; 3 uses
  %.5186290.us.us = phi i32 [ %i.db, %.preheader.us.peel.next ], [ %i.dn, %bb.aw ] ; 5 uses
  %.10199289.us.us = phi i32 [ %.11200.us.us.peel, %.preheader.us.peel.next ], [ %.11200.us.us, %bb.aw ] ; 3 uses
  %gep387 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep386, i64 %indvars.iv338
  %i.di = load i16, ptr %gep387, align 2, !tbaa !48
  %i.dj = zext i16 %i.di to i32
  %i.dk = tail call noundef i32 %spec.store.select(ptr noundef %3, i32 noundef %i.dj) ; 3 uses
  %.not220.us.us = icmp eq i32 %i.dk, %.10199289.us.us
  br i1 %.not220.us.us, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %.preheader.us
  %i.dl = icmp slt i32 %.10177292.us.us, %.5186290.us.us
  br i1 %i.dl, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.dm = tail call noundef signext i8 %2(ptr noundef %3, i32 noundef %.10177292.us.us, i32 noundef %.5186290.us.us, i32 noundef %.10199289.us.us)
  %.not221.us.us = icmp eq i8 %i.dm, 0
  br i1 %.not221.us.us, label %.loopexit236, label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av, %.preheader.us
  %.11200.us.us = phi i32 [ %.10199289.us.us, %.preheader.us ], [ %i.dk, %bb.av ], [ %i.dk, %bb.au ] ; 2 uses
  %.11178.us.us = phi i32 [ %.10177292.us.us, %.preheader.us ], [ %.5186290.us.us, %bb.av ], [ %.5186290.us.us, %bb.au ] ; 2 uses
  %.13.us.us = phi i32 [ %.11294.us.us, %.preheader.us ], [ -1, %bb.av ], [ -1, %bb.au ] ; 2 uses
  %i.dn = add nuw nsw i32 %.5186290.us.us, 1      ; 2 uses
  %indvars.iv.next339 = add nuw nsw i64 %indvars.iv338, 1 ; 2 uses
  %exitcond341.not = icmp eq i64 %indvars.iv.next339, 32
  br i1 %exitcond341.not, label %.loopexit.split.us.us, label %.preheader.us, !llvm.loop !79

bb.ax:                                            ; preds = %bb.al
  %.not225 = icmp eq i32 %.5194302, %i.j
  br i1 %.not225, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.do = icmp slt i32 %.5172304, %.3184303
  br i1 %i.do, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.dp = tail call noundef signext i8 %2(ptr noundef %3, i32 noundef %.5172304, i32 noundef %.3184303, i32 noundef %.5194302)
  %.not226 = icmp eq i8 %i.dp, 0
  br i1 %.not226, label %.loopexit236, label %bb.ba

bb.ba:                                            ; preds = %bb.ay, %bb.az, %bb.ax
  %.7174 = phi i32 [ %.5172304, %bb.ax ], [ %.3184303, %bb.az ], [ %.3184303, %bb.ay ]
  %.8 = phi i32 [ %.6306, %bb.ax ], [ %.0367, %bb.az ], [ %.0367, %bb.ay ]
  %i.dq = add nuw nsw i32 %.3184303, 1024
  br label %.loopexit239

.preheader237.split:                              ; preds = %.preheader237, %.loopexit.split
  %indvars.iv335 = phi i64 [ %indvars.iv.next336, %.loopexit.split ], [ %i.cn, %.preheader237 ] ; 3 uses
  %.8197 = phi i32 [ %.12201, %.loopexit.split ], [ %.5194302, %.preheader237 ] ; 6 uses
  %.4185 = phi i32 [ %.6187, %.loopexit.split ], [ %.3184303, %.preheader237 ] ; 11 uses
  %.8175 = phi i32 [ %.12179, %.loopexit.split ], [ %.5172304, %.preheader237 ] ; 7 uses
  %.9 = phi i32 [ %.14, %.loopexit.split ], [ %.6306, %.preheader237 ] ; 3 uses
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv335
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !48
  %i.dt = zext i16 %i.ds to i32
  %i.du = shl nuw nsw i32 %i.dt, 2                ; 4 uses
  %i.dv = icmp eq i32 %i.du, %.9
  br i1 %i.dv, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.preheader237.split
  %i.dw = add nuw nsw i32 %.4185, 32
  br label %.loopexit.split

bb.bc:                                            ; preds = %.preheader237.split
  %i.dx = icmp eq i32 %i.du, %.0367
  br i1 %i.dx, label %bb.bf, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.bc
  %i.dy = zext nneg i32 %i.du to i64              ; 2 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.dy
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !14
  %i.eb = tail call noundef i32 %spec.store.select(ptr noundef %3, i32 noundef %i.ea) ; 3 uses
  %.not220.peel = icmp eq i32 %i.eb, %.8197
  br i1 %.not220.peel, label %.preheader.peel.next, label %bb.bd

bb.bd:                                            ; preds = %.preheader.preheader
  %i.ec = icmp slt i32 %.8175, %.4185
  br i1 %i.ec, label %bb.be, label %.preheader.peel.next

bb.be:                                            ; preds = %bb.bd
  %i.ed = tail call noundef signext i8 %2(ptr noundef %3, i32 noundef %.8175, i32 noundef %.4185, i32 noundef %.8197)
  %.not221.peel = icmp eq i8 %i.ed, 0
  br i1 %.not221.peel, label %.loopexit236, label %.preheader.peel.next

.preheader.peel.next:                             ; preds = %.preheader.preheader, %bb.be, %bb.bd
  %.11200.peel = phi i32 [ %.8197, %.preheader.preheader ], [ %i.eb, %bb.be ], [ %i.eb, %bb.bd ]
  %.11178.peel = phi i32 [ %.8175, %.preheader.preheader ], [ %.4185, %bb.be ], [ %.4185, %bb.bd ]
  %i.ee = add nuw nsw i32 %.4185, 1
  %invariant.gep384 = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.dy
  br label %.preheader

bb.bf:                                            ; preds = %bb.bc
  %.not223 = icmp eq i32 %.8197, %i.j
  br i1 %.not223, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ef = icmp slt i32 %.8175, %.4185
  br i1 %i.ef, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.eg = tail call noundef signext i8 %2(ptr noundef %3, i32 noundef %.8175, i32 noundef %.4185, i32 noundef %.8197)
  %.not224 = icmp eq i8 %i.eg, 0
  br i1 %.not224, label %.loopexit236, label %bb.bi

bb.bi:                                            ; preds = %bb.bg, %bb.bh, %bb.bf
  %.9176 = phi i32 [ %.8175, %bb.bf ], [ %.4185, %bb.bh ], [ %.4185, %bb.bg ]
  %.10 = phi i32 [ %.9, %bb.bf ], [ %.0367, %bb.bh ], [ %.0367, %bb.bg ]
  %i.eh = add nuw nsw i32 %.4185, 32
  br label %.loopexit.split

.preheader:                                       ; preds = %.preheader.peel.next, %bb.bl
  %indvars.iv329 = phi i64 [ 1, %.preheader.peel.next ], [ %indvars.iv.next330, %bb.bl ] ; 2 uses
  %.11294 = phi i32 [ %i.du, %.preheader.peel.next ], [ %.13, %bb.bl ]
  %.10177292 = phi i32 [ %.11178.peel, %.preheader.peel.next ], [ %.11178, %bb.bl ] ; 3 uses
  %.5186290 = phi i32 [ %i.ee, %.preheader.peel.next ], [ %i.em, %bb.bl ] ; 5 uses
  %.10199289 = phi i32 [ %.11200.peel, %.preheader.peel.next ], [ %.11200, %bb.bl ] ; 3 uses
  %gep385 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep384, i64 %indvars.iv329
  %i.ei = load i32, ptr %gep385, align 4, !tbaa !14
  %i.ej = tail call noundef i32 %spec.store.select(ptr noundef %3, i32 noundef %i.ei) ; 3 uses
  %.not220 = icmp eq i32 %i.ej, %.10199289
  br i1 %.not220, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %.preheader
  %i.ek = icmp slt i32 %.10177292, %.5186290
  br i1 %i.ek, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.el = tail call noundef signext i8 %2(ptr noundef %3, i32 noundef %.10177292, i32 noundef %.5186290, i32 noundef %.10199289)
  %.not221 = icmp eq i8 %i.el, 0
  br i1 %.not221, label %.loopexit236, label %bb.bl

bb.bl:                                            ; preds = %bb.bj, %bb.bk, %.preheader
  %.11200 = phi i32 [ %.10199289, %.preheader ], [ %i.ej, %bb.bk ], [ %i.ej, %bb.bj ] ; 2 uses
  %.11178 = phi i32 [ %.10177292, %.preheader ], [ %.5186290, %bb.bk ], [ %.5186290, %bb.bj ] ; 2 uses
  %.13 = phi i32 [ %.11294, %.preheader ], [ -1, %bb.bk ], [ -1, %bb.bj ] ; 2 uses
  %i.em = add nuw nsw i32 %.5186290, 1            ; 2 uses
  %indvars.iv.next330 = add nuw nsw i64 %indvars.iv329, 1 ; 2 uses
  %exitcond332.not = icmp eq i64 %indvars.iv.next330, 32
  br i1 %exitcond332.not, label %.loopexit.split, label %.preheader, !llvm.loop !80

.loopexit.split:                                  ; preds = %bb.bl, %bb.bb, %bb.bi
  %.12201 = phi i32 [ %.8197, %bb.bb ], [ %i.j, %bb.bi ], [ %.11200, %bb.bl ] ; 2 uses
  %.6187 = phi i32 [ %i.dw, %bb.bb ], [ %i.eh, %bb.bi ], [ %i.em, %bb.bl ] ; 2 uses
  %.12179 = phi i32 [ %.8175, %bb.bb ], [ %.9176, %bb.bi ], [ %.11178, %bb.bl ] ; 2 uses
  %.14 = phi i32 [ %.9, %bb.bb ], [ %.10, %bb.bi ], [ %.13, %bb.bl ] ; 2 uses
  %indvars.iv.next336 = add nuw nsw i64 %indvars.iv335, 1
  %i.en = trunc nuw i64 %indvars.iv335 to i32
  %i.eo = icmp sgt i32 %i.cm, %i.en
  br i1 %i.eo, label %.preheader237.split, label %.loopexit239, !llvm.loop !78

.loopexit239:                                     ; preds = %.loopexit.split, %.loopexit.split.us.us, %bb.ba
  %.13202 = phi i32 [ %i.j, %bb.ba ], [ %.12201.us, %.loopexit.split.us.us ], [ %.12201, %.loopexit.split ]
  %.7188 = phi i32 [ %i.dq, %bb.ba ], [ %.6187.us, %.loopexit.split.us.us ], [ %.6187, %.loopexit.split ]
  %.13180 = phi i32 [ %.7174, %bb.ba ], [ %.12179.us, %.loopexit.split.us.us ], [ %.12179, %.loopexit.split ]
  %.15 = phi i32 [ %.8, %bb.ba ], [ %.14.us, %.loopexit.split.us.us ], [ %.14, %.loopexit.split ]
  %i.ep = add nsw i32 %.0166305, 1
  br label %.backedge

bb.bm:                                            ; preds = %.backedge
  %i.eq = tail call noundef signext i8 %2(ptr noundef %3, i32 noundef %.5172.be, i32 noundef %.3184.be, i32 noundef %.5194.be) ; 0 uses
  br label %.loopexit236

.loopexit236:                                     ; preds = %bb.y, %bb.v, %bb.ab, %bb.k, %bb.h, %bb.o, %bb.az, %bb.ag, %bb.bh, %bb.be, %bb.ar, %bb.ao, %bb.bk, %bb.av, %bb.a, %bb.b, %bb.bm
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_ZL13enumSameValuePKvj(ptr nofree readnone captures(none) %0, i32 noundef returned %1) unnamed_addr #10 {
bb.a:
  ret i32 %1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !6, i64 139416}
!9 = !{!"_ZTS8UNewTrie", !6, i64 0, !10, i64 139392, !5, i64 139400, !5, i64 139404, !5, i64 139408, !5, i64 139412, !6, i64 139416, !6, i64 139417, !6, i64 139418, !6, i64 139419, !6, i64 139420}
!10 = !{!"p1 int", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!9, !10, i64 139392}
!13 = !{!9, !6, i64 139417}
!14 = !{!5, !5, i64 0}
!15 = !{!9, !5, i64 139412}
!16 = distinct !{!16, !17, !18, !19}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"llvm.loop.isvectorized", i32 1}
!19 = !{!"llvm.loop.unroll.runtime.disable"}
!20 = !{!9, !5, i64 139400}
!21 = !{!9, !5, i64 139404}
!22 = !{!9, !5, i64 139408}
!23 = !{!9, !6, i64 139418}
!24 = !{!9, !6, i64 139419}
!25 = distinct !{!25, !17, !18, !19}
!26 = !{!6, !6, i64 0}
!27 = distinct !{!27, !17, !19, !18}
!28 = distinct !{!28, !17, !19, !18}
!29 = distinct !{!29, !17, !18, !19}
!30 = distinct !{!30, !17, !18, !19}
!31 = distinct !{!31, !17, !19, !18}
!32 = distinct !{!32, !17, !19, !18}
!33 = distinct !{!33, !17}
!34 = distinct !{!34, !17, !18, !19}
!35 = distinct !{!35, !17, !18, !19}
!36 = distinct !{!36, !17, !19, !18}
!37 = distinct !{!37, !17, !19, !18}
!38 = !{!39, !39, i64 0}
!39 = !{!"_ZTS10UErrorCode", !6, i64 0}
!40 = distinct !{!40, !17}
!41 = distinct !{null}
!42 = distinct !{!42, !17}
!43 = !{!44, !5, i64 0}
!44 = !{!"_ZTS11UTrieHeader", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!45 = !{!44, !5, i64 4}
!46 = !{!44, !5, i64 8}
!47 = !{!44, !5, i64 12}
!48 = !{!49, !49, i64 0}
!49 = !{!"short", !6, i64 0}
!50 = distinct !{!50, !17, !18, !19}
!51 = distinct !{!51, !17, !18, !19}
!52 = distinct !{!52, !17, !19, !18}
!53 = distinct !{!53, !17, !18, !19}
!54 = distinct !{!54, !17, !19, !18}
!55 = distinct !{!55, !17, !19, !18}
!56 = distinct !{!56, !17}
!57 = distinct !{!57, !17}
!58 = distinct !{!58, !17}
!59 = distinct !{!59, !17}
!60 = distinct !{!60, !17, !18, !19}
!61 = distinct !{!61, !17, !18}
!62 = distinct !{!62, !17}
!63 = !{!64, !6, i64 36}
!64 = !{!"_ZTS5UTrie", !65, i64 0, !10, i64 8, !11, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !6, i64 36}
!65 = !{!"p1 short", !11, i64 0}
!66 = !{!64, !5, i64 24}
!67 = !{!64, !5, i64 28}
!68 = !{!64, !65, i64 0}
!69 = !{!64, !10, i64 8}
!70 = !{!64, !5, i64 32}
!71 = !{!64, !11, i64 16}
!72 = distinct !{!72, !17, !18, !19}
!73 = distinct !{!73, !17}
!74 = distinct !{!74, !17, !75}
!75 = !{!"llvm.loop.peeled.count", i32 1}
!76 = distinct !{!76, !17, !75}
!77 = distinct !{!77, !17}
!78 = distinct !{!78, !17}
!79 = distinct !{!79, !17, !75}
!80 = distinct !{!80, !17, !75}
end_hunk_3
