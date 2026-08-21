Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/utrie?download=true
inline.NumInlined: 27
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 27
begin_hunk_0_@utrie_clone_78:bb.a

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

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
  %i.l = and i32 %1, 31                           ; 5 uses
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %_ZL15utrie_fillBlockPjiijja.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = lshr i32 %1, 5
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.n ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !14   ; 3 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %_ZL18utrie_getDataBlockP8UNewTriei.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 139412 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !15   ; 5 uses
  %i.t = add nsw i32 %i.s, 32                     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 139408
  %i.v = load i32, ptr %i.u, align 8, !tbaa !22
  %i.w = icmp sgt i32 %i.t, %i.v
  br i1 %i.w, label %_ZL15utrie_fillBlockPjiijja.exit135, label %_ZL20utrie_allocDataBlockP8UNewTrie.exit.i

_ZL20utrie_allocDataBlockP8UNewTrie.exit.i:       ; preds = %bb.f
  store i32 %i.t, ptr %i.r, align 4, !tbaa !15
  %i.x = icmp slt i32 %i.s, 0
  br i1 %i.x, label %_ZL15utrie_fillBlockPjiijja.exit135, label %bb.g

bb.g:                                             ; preds = %_ZL20utrie_allocDataBlockP8UNewTrie.exit.i
  store i32 %i.s, ptr %i.o, align 4, !tbaa !14
  %i.y = zext nneg i32 %i.s to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.y
  %i.aa = sext i32 %i.p to i64
  %i.ab = sub nsw i64 0, %i.aa
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.z, ptr noundef nonnull align 4 dereferenceable(128) %i.ac, i64 128, i1 false)
  br label %_ZL18utrie_getDataBlockP8UNewTriei.exit

_ZL18utrie_getDataBlockP8UNewTriei.exit:          ; preds = %bb.g, %bb.e
  %.0.i = phi i32 [ %i.s, %bb.g ], [ %i.p, %bb.e ]
  %i.ad = add nuw nsw i32 %1, 32
  %i.ae = and i32 %i.ad, 4194272                  ; 5 uses
  %.not98 = icmp samesign ugt i32 %i.ae, %2
  %i.af = load ptr, ptr %i.i, align 8, !tbaa !12  ; 7 uses
  %i.ag = zext nneg i32 %.0.i to i64              ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag ; 40 uses
  br i1 %.not98, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZL18utrie_getDataBlockP8UNewTriei.exit
  %i.ai = shl nuw nsw i32 %i.l, 2
  %.idx = zext nneg i32 %i.ai to i64              ; 20 uses
  %.not.i = icmp eq i8 %4, 0
  %5 = lshr exact i64 %.idx, 2
  %6 = sub nuw nsw i64 32, %5                     ; 4 uses
  %min.iters.check197 = icmp samesign ugt i32 %i.l, 24 ; 2 uses
  br i1 %.not.i, label %.lr.ph19.i.preheader, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.h
  br i1 %min.iters.check197, label %.lr.ph.i.preheader335, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %6, 56                         ; 5 uses
  %i.aj = shl nuw nsw i64 %n.vec, 2
  %i.ak = add nuw nsw i64 %i.aj, %.idx
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.al, align 4, !tbaa !14
  store <4 x i32> %broadcast.splat, ptr %i.am, align 4, !tbaa !14
  %i.an = icmp eq i64 %n.vec, 8
  br i1 %i.an, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.idx ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.ap, align 4, !tbaa !14
  store <4 x i32> %broadcast.splat, ptr %i.aq, align 4, !tbaa !14
  %i.ar = icmp eq i64 %n.vec, 16
  br i1 %i.ar, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.at, align 4, !tbaa !14
  store <4 x i32> %broadcast.splat, ptr %i.au, align 4, !tbaa !14
  %i.av = icmp eq i64 %n.vec, 24
  br i1 %i.av, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ah, i64 96
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.ax, align 4, !tbaa !14
  store <4 x i32> %broadcast.splat, ptr %i.ay, align 4, !tbaa !14
  br label %middle.block

middle.block:                                     ; preds = %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %6, %n.vec
  br i1 %cmp.n, label %_ZL15utrie_fillBlockPjiijja.exit, label %.lr.ph.i.preheader335

.lr.ph.i.preheader335:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.017.i.idx.ph = phi i64 [ %.idx, %.lr.ph.i.preheader ], [ %i.ak, %middle.block ]
  br label %.lr.ph.i

.lr.ph19.i.preheader:                             ; preds = %bb.h
  br i1 %min.iters.check197, label %.lr.ph19.i.preheader334, label %vector.ph198

vector.ph198:                                     ; preds = %.lr.ph19.i.preheader
  %n.vec199 = and i64 %6, 56                      ; 5 uses
  %i.az = shl nuw nsw i64 %n.vec199, 2
  %i.ba = add nuw nsw i64 %i.az, %.idx
  %broadcast.splatinsert200 = insertelement <4 x i32> poison, i32 %i.k, i64 0
  %broadcast.splat201 = shufflevector <4 x i32> %broadcast.splatinsert200, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %wide.load = load <4 x i32>, ptr %i.bb, align 4, !tbaa !14
  %wide.load204 = load <4 x i32>, ptr %i.bc, align 4, !tbaa !14
  %i.bd = icmp eq <4 x i32> %wide.load, %broadcast.splat201 ; 4 uses
  %i.be = icmp eq <4 x i32> %wide.load204, %broadcast.splat201 ; 4 uses
  %i.bf = extractelement <4 x i1> %i.bd, i64 0
  br i1 %i.bf, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.ph198
  store i32 %3, ptr %i.bb, align 4, !tbaa !14
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.ph198
  %i.bg = extractelement <4 x i1> %i.bd, i64 1
  br i1 %i.bg, label %pred.store.if205, label %pred.store.continue206

pred.store.if205:                                 ; preds = %pred.store.continue
  %i.bh = getelementptr i8, ptr %i.ah, i64 %.idx
  %i.bi = getelementptr i8, ptr %i.bh, i64 4
  store i32 %3, ptr %i.bi, align 4, !tbaa !14
  br label %pred.store.continue206

pred.store.continue206:                           ; preds = %pred.store.if205, %pred.store.continue
  %i.bj = extractelement <4 x i1> %i.bd, i64 2
  br i1 %i.bj, label %pred.store.if207, label %pred.store.continue208

pred.store.if207:                                 ; preds = %pred.store.continue206
  %i.bk = getelementptr i8, ptr %i.ah, i64 %.idx
  %i.bl = getelementptr i8, ptr %i.bk, i64 8
  store i32 %3, ptr %i.bl, align 4, !tbaa !14
  br label %pred.store.continue208

pred.store.continue208:                           ; preds = %pred.store.if207, %pred.store.continue206
  %i.bm = extractelement <4 x i1> %i.bd, i64 3
  br i1 %i.bm, label %pred.store.if209, label %pred.store.continue210

pred.store.if209:                                 ; preds = %pred.store.continue208
  %i.bn = getelementptr i8, ptr %i.ah, i64 %.idx
  %i.bo = getelementptr i8, ptr %i.bn, i64 12
  store i32 %3, ptr %i.bo, align 4, !tbaa !14
  br label %pred.store.continue210

pred.store.continue210:                           ; preds = %pred.store.if209, %pred.store.continue208
  %i.bp = extractelement <4 x i1> %i.be, i64 0
  br i1 %i.bp, label %pred.store.if211, label %pred.store.continue212

pred.store.if211:                                 ; preds = %pred.store.continue210
  %i.bq = getelementptr i8, ptr %i.ah, i64 %.idx
  %i.br = getelementptr i8, ptr %i.bq, i64 16
  store i32 %3, ptr %i.br, align 4, !tbaa !14
  br label %pred.store.continue212

pred.store.continue212:                           ; preds = %pred.store.if211, %pred.store.continue210
  %i.bs = extractelement <4 x i1> %i.be, i64 1
  br i1 %i.bs, label %pred.store.if213, label %pred.store.continue214

pred.store.if213:                                 ; preds = %pred.store.continue212
  %i.bt = getelementptr i8, ptr %i.ah, i64 %.idx
  %i.bu = getelementptr i8, ptr %i.bt, i64 20
  store i32 %3, ptr %i.bu, align 4, !tbaa !14
  br label %pred.store.continue214

pred.store.continue214:                           ; preds = %pred.store.if213, %pred.store.continue212
  %i.bv = extractelement <4 x i1> %i.be, i64 2
  br i1 %i.bv, label %pred.store.if215, label %pred.store.continue216

pred.store.if215:                                 ; preds = %pred.store.continue214
  %i.bw = getelementptr i8, ptr %i.ah, i64 %.idx
  %i.bx = getelementptr i8, ptr %i.bw, i64 24
  store i32 %3, ptr %i.bx, align 4, !tbaa !14
  br label %pred.store.continue216

pred.store.continue216:                           ; preds = %pred.store.if215, %pred.store.continue214
  %i.by = extractelement <4 x i1> %i.be, i64 3
  br i1 %i.by, label %pred.store.if217, label %pred.store.continue218

pred.store.if217:                                 ; preds = %pred.store.continue216
  %i.bz = getelementptr i8, ptr %i.ah, i64 %.idx
  %i.ca = getelementptr i8, ptr %i.bz, i64 28
  store i32 %3, ptr %i.ca, align 4, !tbaa !14
  br label %pred.store.continue218

pred.store.continue218:                           ; preds = %pred.store.if217, %pred.store.continue216
  %i.cb = icmp eq i64 %n.vec199, 8
  br i1 %i.cb, label %middle.block220, label %vector.body202.1

vector.body202.1:                                 ; preds = %pred.store.continue218
  %i.cc = add nuw nsw i64 %.idx, 32               ; 8 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.cc ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %wide.load.1 = load <4 x i32>, ptr %i.cd, align 4, !tbaa !14
  %wide.load204.1 = load <4 x i32>, ptr %i.ce, align 4, !tbaa !14
  %i.cf = icmp eq <4 x i32> %wide.load.1, %broadcast.splat201 ; 4 uses
  %i.cg = icmp eq <4 x i32> %wide.load204.1, %broadcast.splat201 ; 4 uses
  %i.ch = extractelement <4 x i1> %i.cf, i64 0
  br i1 %i.ch, label %pred.store.if.1, label %pred.store.continue.1

pred.store.if.1:                                  ; preds = %vector.body202.1
  store i32 %3, ptr %i.cd, align 4, !tbaa !14
  br label %pred.store.continue.1

pred.store.continue.1:                            ; preds = %pred.store.if.1, %vector.body202.1
  %i.ci = extractelement <4 x i1> %i.cf, i64 1
  br i1 %i.ci, label %pred.store.if205.1, label %pred.store.continue206.1

pred.store.if205.1:                               ; preds = %pred.store.continue.1
  %i.cj = getelementptr i8, ptr %i.ah, i64 %i.cc
  %i.ck = getelementptr i8, ptr %i.cj, i64 4
  store i32 %3, ptr %i.ck, align 4, !tbaa !14
  br label %pred.store.continue206.1

pred.store.continue206.1:                         ; preds = %pred.store.if205.1, %pred.store.continue.1
  %i.cl = extractelement <4 x i1> %i.cf, i64 2
  br i1 %i.cl, label %pred.store.if207.1, label %pred.store.continue208.1

pred.store.if207.1:                               ; preds = %pred.store.continue206.1
  %i.cm = getelementptr i8, ptr %i.ah, i64 %i.cc
  %i.cn = getelementptr i8, ptr %i.cm, i64 8
  store i32 %3, ptr %i.cn, align 4, !tbaa !14
  br label %pred.store.continue208.1

pred.store.continue208.1:                         ; preds = %pred.store.if207.1, %pred.store.continue206.1
  %i.co = extractelement <4 x i1> %i.cf, i64 3
  br i1 %i.co, label %pred.store.if209.1, label %pred.store.continue210.1

pred.store.if209.1:                               ; preds = %pred.store.continue208.1
  %i.cp = getelementptr i8, ptr %i.ah, i64 %i.cc
  %i.cq = getelementptr i8, ptr %i.cp, i64 12
  store i32 %3, ptr %i.cq, align 4, !tbaa !14
  br label %pred.store.continue210.1

pred.store.continue210.1:                         ; preds = %pred.store.if209.1, %pred.store.continue208.1
  %i.cr = extractelement <4 x i1> %i.cg, i64 0
  br i1 %i.cr, label %pred.store.if211.1, label %pred.store.continue212.1

pred.store.if211.1:                               ; preds = %pred.store.continue210.1
  %i.cs = getelementptr i8, ptr %i.ah, i64 %i.cc
  %i.ct = getelementptr i8, ptr %i.cs, i64 16
  store i32 %3, ptr %i.ct, align 4, !tbaa !14
  br label %pred.store.continue212.1

pred.store.continue212.1:                         ; preds = %pred.store.if211.1, %pred.store.continue210.1
  %i.cu = extractelement <4 x i1> %i.cg, i64 1
  br i1 %i.cu, label %pred.store.if213.1, label %pred.store.continue214.1

pred.store.if213.1:                               ; preds = %pred.store.continue212.1
  %i.cv = getelementptr i8, ptr %i.ah, i64 %i.cc
  %i.cw = getelementptr i8, ptr %i.cv, i64 20
  store i32 %3, ptr %i.cw, align 4, !tbaa !14
  br label %pred.store.continue214.1

pred.store.continue214.1:                         ; preds = %pred.store.if213.1, %pred.store.continue212.1
  %i.cx = extractelement <4 x i1> %i.cg, i64 2
  br i1 %i.cx, label %pred.store.if215.1, label %pred.store.continue216.1

pred.store.if215.1:                               ; preds = %pred.store.continue214.1
  %i.cy = getelementptr i8, ptr %i.ah, i64 %i.cc
  %i.cz = getelementptr i8, ptr %i.cy, i64 24
  store i32 %3, ptr %i.cz, align 4, !tbaa !14
  br label %pred.store.continue216.1

pred.store.continue216.1:                         ; preds = %pred.store.if215.1, %pred.store.continue214.1
  %i.da = extractelement <4 x i1> %i.cg, i64 3
  br i1 %i.da, label %pred.store.if217.1, label %pred.store.continue218.1

pred.store.if217.1:                               ; preds = %pred.store.continue216.1
  %i.db = getelementptr i8, ptr %i.ah, i64 %i.cc
  %i.dc = getelementptr i8, ptr %i.db, i64 28
  store i32 %3, ptr %i.dc, align 4, !tbaa !14
  br label %pred.store.continue218.1

pred.store.continue218.1:                         ; preds = %pred.store.if217.1, %pred.store.continue216.1
  %i.dd = icmp eq i64 %n.vec199, 16
  br i1 %i.dd, label %middle.block220, label %vector.body202.2

vector.body202.2:                                 ; preds = %pred.store.continue218.1
  %i.de = add nuw nsw i64 %.idx, 64               ; 8 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.de ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %wide.load.2 = load <4 x i32>, ptr %i.df, align 4, !tbaa !14
  %wide.load204.2 = load <4 x i32>, ptr %i.dg, align 4, !tbaa !14
  %i.dh = icmp eq <4 x i32> %wide.load.2, %broadcast.splat201 ; 4 uses
  %i.di = icmp eq <4 x i32> %wide.load204.2, %broadcast.splat201 ; 4 uses
  %i.dj = extractelement <4 x i1> %i.dh, i64 0
  br i1 %i.dj, label %pred.store.if.2, label %pred.store.continue.2

pred.store.if.2:                                  ; preds = %vector.body202.2
  store i32 %3, ptr %i.df, align 4, !tbaa !14
  br label %pred.store.continue.2

pred.store.continue.2:                            ; preds = %pred.store.if.2, %vector.body202.2
  %i.dk = extractelement <4 x i1> %i.dh, i64 1
  br i1 %i.dk, label %pred.store.if205.2, label %pred.store.continue206.2

pred.store.if205.2:                               ; preds = %pred.store.continue.2
  %i.dl = getelementptr i8, ptr %i.ah, i64 %i.de
  %i.dm = getelementptr i8, ptr %i.dl, i64 4
  store i32 %3, ptr %i.dm, align 4, !tbaa !14
  br label %pred.store.continue206.2

pred.store.continue206.2:                         ; preds = %pred.store.if205.2, %pred.store.continue.2
  %i.dn = extractelement <4 x i1> %i.dh, i64 2
  br i1 %i.dn, label %pred.store.if207.2, label %pred.store.continue208.2

pred.store.if207.2:                               ; preds = %pred.store.continue206.2
  %i.do = getelementptr i8, ptr %i.ah, i64 %i.de
  %i.dp = getelementptr i8, ptr %i.do, i64 8
  store i32 %3, ptr %i.dp, align 4, !tbaa !14
  br label %pred.store.continue208.2

pred.store.continue208.2:                         ; preds = %pred.store.if207.2, %pred.store.continue206.2
  %i.dq = extractelement <4 x i1> %i.dh, i64 3
  br i1 %i.dq, label %pred.store.if209.2, label %pred.store.continue210.2

pred.store.if209.2:                               ; preds = %pred.store.continue208.2
  %i.dr = getelementptr i8, ptr %i.ah, i64 %i.de
  %i.ds = getelementptr i8, ptr %i.dr, i64 12
  store i32 %3, ptr %i.ds, align 4, !tbaa !14
  br label %pred.store.continue210.2

pred.store.continue210.2:                         ; preds = %pred.store.if209.2, %pred.store.continue208.2
  %i.dt = extractelement <4 x i1> %i.di, i64 0
  br i1 %i.dt, label %pred.store.if211.2, label %pred.store.continue212.2

pred.store.if211.2:                               ; preds = %pred.store.continue210.2
  %i.du = getelementptr i8, ptr %i.ah, i64 %i.de
  %i.dv = getelementptr i8, ptr %i.du, i64 16
  store i32 %3, ptr %i.dv, align 4, !tbaa !14
  br label %pred.store.continue212.2

pred.store.continue212.2:                         ; preds = %pred.store.if211.2, %pred.store.continue210.2
  %i.dw = extractelement <4 x i1> %i.di, i64 1
  br i1 %i.dw, label %pred.store.if213.2, label %pred.store.continue214.2

pred.store.if213.2:                               ; preds = %pred.store.continue212.2
  %i.dx = getelementptr i8, ptr %i.ah, i64 %i.de
  %i.dy = getelementptr i8, ptr %i.dx, i64 20
  store i32 %3, ptr %i.dy, align 4, !tbaa !14
  br label %pred.store.continue214.2

pred.store.continue214.2:                         ; preds = %pred.store.if213.2, %pred.store.continue212.2
  %i.dz = extractelement <4 x i1> %i.di, i64 2
  br i1 %i.dz, label %pred.store.if215.2, label %pred.store.continue216.2

pred.store.if215.2:                               ; preds = %pred.store.continue214.2
  %i.ea = getelementptr i8, ptr %i.ah, i64 %i.de
  %i.eb = getelementptr i8, ptr %i.ea, i64 24
  store i32 %3, ptr %i.eb, align 4, !tbaa !14
  br label %pred.store.continue216.2

pred.store.continue216.2:                         ; preds = %pred.store.if215.2, %pred.store.continue214.2
  %i.ec = extractelement <4 x i1> %i.di, i64 3
  br i1 %i.ec, label %pred.store.if217.2, label %pred.store.continue218.2

pred.store.if217.2:                               ; preds = %pred.store.continue216.2
  %i.ed = getelementptr i8, ptr %i.ah, i64 %i.de
  %i.ee = getelementptr i8, ptr %i.ed, i64 28
  store i32 %3, ptr %i.ee, align 4, !tbaa !14
  br label %pred.store.continue218.2

pred.store.continue218.2:                         ; preds = %pred.store.if217.2, %pred.store.continue216.2
  %i.ef = icmp eq i64 %n.vec199, 24
  br i1 %i.ef, label %middle.block220, label %vector.body202.3

vector.body202.3:                                 ; preds = %pred.store.continue218.2
  %i.eg = add nuw nsw i64 %.idx, 96               ; 8 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.eg ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %wide.load.3 = load <4 x i32>, ptr %i.eh, align 4, !tbaa !14
  %wide.load204.3 = load <4 x i32>, ptr %i.ei, align 4, !tbaa !14
  %i.ej = icmp eq <4 x i32> %wide.load.3, %broadcast.splat201 ; 4 uses
  %i.ek = icmp eq <4 x i32> %wide.load204.3, %broadcast.splat201 ; 4 uses
  %i.el = extractelement <4 x i1> %i.ej, i64 0
  br i1 %i.el, label %pred.store.if.3, label %pred.store.continue.3

pred.store.if.3:                                  ; preds = %vector.body202.3
  store i32 %3, ptr %i.eh, align 4, !tbaa !14
  br label %pred.store.continue.3

pred.store.continue.3:                            ; preds = %pred.store.if.3, %vector.body202.3
  %i.em = extractelement <4 x i1> %i.ej, i64 1
  br i1 %i.em, label %pred.store.if205.3, label %pred.store.continue206.3

pred.store.if205.3:                               ; preds = %pred.store.continue.3
  %i.en = getelementptr i8, ptr %i.ah, i64 %i.eg
  %i.eo = getelementptr i8, ptr %i.en, i64 4
  store i32 %3, ptr %i.eo, align 4, !tbaa !14
  br label %pred.store.continue206.3

pred.store.continue206.3:                         ; preds = %pred.store.if205.3, %pred.store.continue.3
  %i.ep = extractelement <4 x i1> %i.ej, i64 2
  br i1 %i.ep, label %pred.store.if207.3, label %pred.store.continue208.3

pred.store.if207.3:                               ; preds = %pred.store.continue206.3
  %i.eq = getelementptr i8, ptr %i.ah, i64 %i.eg
  %i.er = getelementptr i8, ptr %i.eq, i64 8
  store i32 %3, ptr %i.er, align 4, !tbaa !14
  br label %pred.store.continue208.3

pred.store.continue208.3:                         ; preds = %pred.store.if207.3, %pred.store.continue206.3
  %i.es = extractelement <4 x i1> %i.ej, i64 3
  br i1 %i.es, label %pred.store.if209.3, label %pred.store.continue210.3

pred.store.if209.3:                               ; preds = %pred.store.continue208.3
  %i.et = getelementptr i8, ptr %i.ah, i64 %i.eg
  %i.eu = getelementptr i8, ptr %i.et, i64 12
  store i32 %3, ptr %i.eu, align 4, !tbaa !14
  br label %pred.store.continue210.3

pred.store.continue210.3:                         ; preds = %pred.store.if209.3, %pred.store.continue208.3
  %i.ev = extractelement <4 x i1> %i.ek, i64 0
  br i1 %i.ev, label %pred.store.if211.3, label %pred.store.continue212.3

pred.store.if211.3:                               ; preds = %pred.store.continue210.3
  %i.ew = getelementptr i8, ptr %i.ah, i64 %i.eg
  %i.ex = getelementptr i8, ptr %i.ew, i64 16
  store i32 %3, ptr %i.ex, align 4, !tbaa !14
  br label %pred.store.continue212.3

pred.store.continue212.3:                         ; preds = %pred.store.if211.3, %pred.store.continue210.3
  %i.ey = extractelement <4 x i1> %i.ek, i64 1
  br i1 %i.ey, label %pred.store.if213.3, label %pred.store.continue214.3

pred.store.if213.3:                               ; preds = %pred.store.continue212.3
  %i.ez = getelementptr i8, ptr %i.ah, i64 %i.eg
  %i.fa = getelementptr i8, ptr %i.ez, i64 20
  store i32 %3, ptr %i.fa, align 4, !tbaa !14
  br label %pred.store.continue214.3

pred.store.continue214.3:                         ; preds = %pred.store.if213.3, %pred.store.continue212.3
  %i.fb = extractelement <4 x i1> %i.ek, i64 2
  br i1 %i.fb, label %pred.store.if215.3, label %pred.store.continue216.3

pred.store.if215.3:                               ; preds = %pred.store.continue214.3
  %i.fc = getelementptr i8, ptr %i.ah, i64 %i.eg
  %i.fd = getelementptr i8, ptr %i.fc, i64 24
  store i32 %3, ptr %i.fd, align 4, !tbaa !14
  br label %pred.store.continue216.3

pred.store.continue216.3:                         ; preds = %pred.store.if215.3, %pred.store.continue214.3
  %i.fe = extractelement <4 x i1> %i.ek, i64 3
  br i1 %i.fe, label %pred.store.if217.3, label %middle.block220

pred.store.if217.3:                               ; preds = %pred.store.continue216.3
  %i.ff = getelementptr i8, ptr %i.ah, i64 %i.eg
  %i.fg = getelementptr i8, ptr %i.ff, i64 28
  store i32 %3, ptr %i.fg, align 4, !tbaa !14
  br label %middle.block220

middle.block220:                                  ; preds = %pred.store.continue216.3, %pred.store.if217.3, %pred.store.continue218.2, %pred.store.continue218.1, %pred.store.continue218
  %cmp.n221 = icmp eq i64 %6, %n.vec199
  br i1 %cmp.n221, label %_ZL15utrie_fillBlockPjiijja.exit, label %.lr.ph19.i.preheader334

.lr.ph19.i.preheader334:                          ; preds = %.lr.ph19.i.preheader, %middle.block220
  %.118.i.idx.ph = phi i64 [ %.idx, %.lr.ph19.i.preheader ], [ %i.ba, %middle.block220 ]
  br label %.lr.ph19.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader335, %.lr.ph.i
  %.017.i.idx = phi i64 [ %.017.i.add, %.lr.ph.i ], [ %.017.i.idx.ph, %.lr.ph.i.preheader335 ] ; 3 uses
  %.017.i.ptr = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.017.i.idx
  %.017.i.add = add nuw nsw i64 %.017.i.idx, 4
  store i32 %3, ptr %.017.i.ptr, align 4, !tbaa !14
  %i.fh = icmp samesign ult i64 %.017.i.idx, 124
  br i1 %i.fh, label %.lr.ph.i, label %_ZL15utrie_fillBlockPjiijja.exit, !llvm.loop !27

.lr.ph19.i:                                       ; preds = %.lr.ph19.i.preheader334, %bb.j
  %.118.i.idx = phi i64 [ %.118.i.add, %bb.j ], [ %.118.i.idx.ph, %.lr.ph19.i.preheader334 ] ; 3 uses
  %.118.i.ptr = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.118.i.idx ; 2 uses
  %i.fi = load i32, ptr %.118.i.ptr, align 4, !tbaa !14
  %i.fj = icmp eq i32 %i.fi, %i.k
  br i1 %i.fj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph19.i
  store i32 %3, ptr %.118.i.ptr, align 4, !tbaa !14
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph19.i
  %.118.i.add = add nuw nsw i64 %.118.i.idx, 4
  %i.fk = icmp samesign ult i64 %.118.i.idx, 124
  br i1 %i.fk, label %.lr.ph19.i, label %_ZL15utrie_fillBlockPjiijja.exit, !llvm.loop !28

bb.k:                                             ; preds = %_ZL18utrie_getDataBlockP8UNewTriei.exit
  %i.fl = and i32 %2, 31                          ; 2 uses
  %i.fm = zext nneg i32 %i.fl to i64              ; 3 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.fm ; 2 uses
  %i.fo = zext nneg i32 %i.l to i64               ; 3 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.fo ; 13 uses
  %.not.i102 = icmp eq i8 %4, 0
  %i.fq = icmp samesign ult i32 %i.l, %i.fl       ; 2 uses
  br i1 %.not.i102, label %.preheader.i106, label %.preheader15.i103

.preheader15.i103:                                ; preds = %bb.k
  br i1 %i.fq, label %.lr.ph.i104.preheader, label %_ZL15utrie_fillBlockPjiijja.exit135

.lr.ph.i104.preheader:                            ; preds = %.preheader15.i103
  %i.fr = ptrtoaddr ptr %i.af to i64              ; 2 uses
  %i.fs = shl nuw nsw i64 %i.ag, 2                ; 2 uses
  %i.ft = shl nuw nsw i64 %i.fo, 2                ; 2 uses
  %i.fu = add i64 %i.fs, %i.fr                    ; 2 uses
  %i.fv = add i64 %i.fu, %i.ft
  %i.fw = add i64 %i.fv, 4
  %i.fx = shl nuw nsw i64 %i.fm, 2
  %i.fy = add i64 %i.fu, %i.fx
  %i.fz = tail call i64 @llvm.umax.i64(i64 %i.fw, i64 %i.fy)
  %i.ga = xor i64 %i.fr, -1
  %i.gb = add i64 %i.fz, %i.ga
  %i.gc = add nuw nsw i64 %i.fs, %i.ft
  %i.gd = sub i64 %i.gb, %i.gc                    ; 2 uses
  %i.ge = lshr i64 %i.gd, 2
  %i.gf = add nuw nsw i64 %i.ge, 1                ; 2 uses
  %min.iters.check224 = icmp ult i64 %i.gd, 28
  br i1 %min.iters.check224, label %.lr.ph.i104.preheader332, label %vector.ph225

vector.ph225:                                     ; preds = %.lr.ph.i104.preheader
  %n.vec226 = and i64 %i.gf, 9223372036854775800  ; 3 uses
  %i.gg = shl i64 %n.vec226, 2
  %i.gh = getelementptr i8, ptr %i.fp, i64 %i.gg
  %broadcast.splatinsert227 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat228 = shufflevector <4 x i32> %broadcast.splatinsert227, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body229

vector.body229:                                   ; preds = %vector.body229, %vector.ph225
  %index230 = phi i64 [ 0, %vector.ph225 ], [ %index.next231, %vector.body229 ] ; 2 uses
  %i.gi = shl i64 %index230, 2
  %next.gep = getelementptr i8, ptr %i.fp, i64 %i.gi ; 2 uses
  %i.gj = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat228, ptr %next.gep, align 4, !tbaa !14
  store <4 x i32> %broadcast.splat228, ptr %i.gj, align 4, !tbaa !14
  %index.next231 = add nuw i64 %index230, 8       ; 2 uses
  %i.gk = icmp eq i64 %index.next231, %n.vec226
  br i1 %i.gk, label %middle.block232, label %vector.body229, !llvm.loop !29

middle.block232:                                  ; preds = %vector.body229
  %cmp.n233 = icmp eq i64 %i.gf, %n.vec226
  br i1 %cmp.n233, label %_ZL15utrie_fillBlockPjiijja.exit135, label %.lr.ph.i104.preheader332

.lr.ph.i104.preheader332:                         ; preds = %.lr.ph.i104.preheader, %middle.block232
  %.017.i105.ph = phi ptr [ %i.fp, %.lr.ph.i104.preheader ], [ %i.gh, %middle.block232 ]
  br label %.lr.ph.i104

.preheader.i106:                                  ; preds = %bb.k
  br i1 %i.fq, label %.lr.ph19.i107.preheader, label %_ZL15utrie_fillBlockPjiijja.exit135

.lr.ph19.i107.preheader:                          ; preds = %.preheader.i106
  %i.gl = ptrtoaddr ptr %i.af to i64              ; 2 uses
  %i.gm = shl nuw nsw i64 %i.ag, 2                ; 2 uses
  %i.gn = shl nuw nsw i64 %i.fo, 2                ; 2 uses
  %i.go = add i64 %i.gm, %i.gl                    ; 2 uses
  %i.gp = add i64 %i.go, %i.gn
  %i.gq = add i64 %i.gp, 4
  %i.gr = shl nuw nsw i64 %i.fm, 2
  %i.gs = add i64 %i.go, %i.gr
  %i.gt = tail call i64 @llvm.umax.i64(i64 %i.gq, i64 %i.gs)
  %i.gu = xor i64 %i.gl, -1
  %i.gv = add i64 %i.gt, %i.gu
  %i.gw = add nuw nsw i64 %i.gm, %i.gn
  %i.gx = sub i64 %i.gv, %i.gw                    ; 2 uses
  %i.gy = lshr i64 %i.gx, 2
  %i.gz = add nuw nsw i64 %i.gy, 1                ; 2 uses
  %min.iters.check236 = icmp ult i64 %i.gx, 28
  br i1 %min.iters.check236, label %.lr.ph19.i107.preheader330, label %vector.ph237

vector.ph237:                                     ; preds = %.lr.ph19.i107.preheader
  %n.vec238 = and i64 %i.gz, 9223372036854775800  ; 3 uses
  %i.ha = shl i64 %n.vec238, 2
  %i.hb = getelementptr i8, ptr %i.fp, i64 %i.ha
  %broadcast.splatinsert239 = insertelement <4 x i32> poison, i32 %i.k, i64 0
  %broadcast.splat240 = shufflevector <4 x i32> %broadcast.splatinsert239, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body241

vector.body241:                                   ; preds = %pred.store.continue268, %vector.ph237
  %index242 = phi i64 [ 0, %vector.ph237 ], [ %index.next269, %pred.store.continue268 ] ; 2 uses
  %i.hc = shl i64 %index242, 2                    ; 8 uses
  %next.gep243 = getelementptr i8, ptr %i.fp, i64 %i.hc ; 3 uses
  %i.hd = getelementptr i8, ptr %i.fp, i64 %i.hc
  %next.gep244 = getelementptr i8, ptr %i.hd, i64 4
  %i.he = getelementptr i8, ptr %i.fp, i64 %i.hc
  %next.gep245 = getelementptr i8, ptr %i.he, i64 8
  %i.hf = getelementptr i8, ptr %i.fp, i64 %i.hc
  %next.gep246 = getelementptr i8, ptr %i.hf, i64 12
  %i.hg = getelementptr i8, ptr %i.fp, i64 %i.hc
  %next.gep247 = getelementptr i8, ptr %i.hg, i64 16
  %i.hh = getelementptr i8, ptr %i.fp, i64 %i.hc
  %next.gep248 = getelementptr i8, ptr %i.hh, i64 20
  %i.hi = getelementptr i8, ptr %i.fp, i64 %i.hc
  %next.gep249 = getelementptr i8, ptr %i.hi, i64 24
  %i.hj = getelementptr i8, ptr %i.fp, i64 %i.hc
  %next.gep250 = getelementptr i8, ptr %i.hj, i64 28
  %i.hk = getelementptr i8, ptr %next.gep243, i64 16
  %wide.load251 = load <4 x i32>, ptr %next.gep243, align 4, !tbaa !14
  %wide.load252 = load <4 x i32>, ptr %i.hk, align 4, !tbaa !14
  %i.hl = icmp eq <4 x i32> %wide.load251, %broadcast.splat240 ; 4 uses
  %i.hm = icmp eq <4 x i32> %wide.load252, %broadcast.splat240 ; 4 uses
  %i.hn = extractelement <4 x i1> %i.hl, i64 0
  br i1 %i.hn, label %pred.store.if253, label %pred.store.continue254

pred.store.if253:                                 ; preds = %vector.body241
  store i32 %3, ptr %next.gep243, align 4, !tbaa !14
  br label %pred.store.continue254

pred.store.continue254:                           ; preds = %pred.store.if253, %vector.body241
  %i.ho = extractelement <4 x i1> %i.hl, i64 1
  br i1 %i.ho, label %pred.store.if255, label %pred.store.continue256

pred.store.if255:                                 ; preds = %pred.store.continue254
  store i32 %3, ptr %next.gep244, align 4, !tbaa !14
  br label %pred.store.continue256

pred.store.continue256:                           ; preds = %pred.store.if255, %pred.store.continue254
  %i.hp = extractelement <4 x i1> %i.hl, i64 2
  br i1 %i.hp, label %pred.store.if257, label %pred.store.continue258

pred.store.if257:                                 ; preds = %pred.store.continue256
  store i32 %3, ptr %next.gep245, align 4, !tbaa !14
  br label %pred.store.continue258

pred.store.continue258:                           ; preds = %pred.store.if257, %pred.store.continue256
  %i.hq = extractelement <4 x i1> %i.hl, i64 3
  br i1 %i.hq, label %pred.store.if259, label %pred.store.continue260

pred.store.if259:                                 ; preds = %pred.store.continue258
  store i32 %3, ptr %next.gep246, align 4, !tbaa !14
  br label %pred.store.continue260

pred.store.continue260:                           ; preds = %pred.store.if259, %pred.store.continue258
  %i.hr = extractelement <4 x i1> %i.hm, i64 0
  br i1 %i.hr, label %pred.store.if261, label %pred.store.continue262

pred.store.if261:                                 ; preds = %pred.store.continue260
  store i32 %3, ptr %next.gep247, align 4, !tbaa !14
  br label %pred.store.continue262

pred.store.continue262:                           ; preds = %pred.store.if261, %pred.store.continue260
  %i.hs = extractelement <4 x i1> %i.hm, i64 1
  br i1 %i.hs, label %pred.store.if263, label %pred.store.continue264

pred.store.if263:                                 ; preds = %pred.store.continue262
  store i32 %3, ptr %next.gep248, align 4, !tbaa !14
  br label %pred.store.continue264

pred.store.continue264:                           ; preds = %pred.store.if263, %pred.store.continue262
  %i.ht = extractelement <4 x i1> %i.hm, i64 2
  br i1 %i.ht, label %pred.store.if265, label %pred.store.continue266

pred.store.if265:                                 ; preds = %pred.store.continue264
  store i32 %3, ptr %next.gep249, align 4, !tbaa !14
  br label %pred.store.continue266

pred.store.continue266:                           ; preds = %pred.store.if265, %pred.store.continue264
  %i.hu = extractelement <4 x i1> %i.hm, i64 3
  br i1 %i.hu, label %pred.store.if267, label %pred.store.continue268

pred.store.if267:                                 ; preds = %pred.store.continue266
  store i32 %3, ptr %next.gep250, align 4, !tbaa !14
  br label %pred.store.continue268

pred.store.continue268:                           ; preds = %pred.store.if267, %pred.store.continue266
  %index.next269 = add nuw i64 %index242, 8       ; 2 uses
  %i.hv = icmp eq i64 %index.next269, %n.vec238
  br i1 %i.hv, label %middle.block270, label %vector.body241, !llvm.loop !30

middle.block270:                                  ; preds = %pred.store.continue268
  %cmp.n271 = icmp eq i64 %i.gz, %n.vec238
  br i1 %cmp.n271, label %_ZL15utrie_fillBlockPjiijja.exit135, label %.lr.ph19.i107.preheader330

.lr.ph19.i107.preheader330:                       ; preds = %.lr.ph19.i107.preheader, %middle.block270
  %.118.i108.ph = phi ptr [ %i.fp, %.lr.ph19.i107.preheader ], [ %i.hb, %middle.block270 ]
  br label %.lr.ph19.i107

.lr.ph.i104:                                      ; preds = %.lr.ph.i104.preheader332, %.lr.ph.i104
  %.017.i105 = phi ptr [ %i.hw, %.lr.ph.i104 ], [ %.017.i105.ph, %.lr.ph.i104.preheader332 ] ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.017.i105, i64 4 ; 2 uses
  store i32 %3, ptr %.017.i105, align 4, !tbaa !14
  %i.hx = icmp ult ptr %i.hw, %i.fn
  br i1 %i.hx, label %.lr.ph.i104, label %_ZL15utrie_fillBlockPjiijja.exit135, !llvm.loop !31

.lr.ph19.i107:                                    ; preds = %.lr.ph19.i107.preheader330, %bb.m
  %.118.i108 = phi ptr [ %i.ia, %bb.m ], [ %.118.i108.ph, %.lr.ph19.i107.preheader330 ] ; 3 uses
  %i.hy = load i32, ptr %.118.i108, align 4, !tbaa !14
  %i.hz = icmp eq i32 %i.hy, %i.k
  br i1 %i.hz, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph19.i107
  store i32 %3, ptr %.118.i108, align 4, !tbaa !14
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph19.i107
  %i.ia = getelementptr inbounds nuw i8, ptr %.118.i108, i64 4 ; 2 uses
  %i.ib = icmp ult ptr %i.ia, %i.fn
  br i1 %i.ib, label %.lr.ph19.i107, label %_ZL15utrie_fillBlockPjiijja.exit135, !llvm.loop !32

_ZL15utrie_fillBlockPjiijja.exit:                 ; preds = %.lr.ph.i, %bb.j, %middle.block, %middle.block220, %bb.d
  %i.ic = phi ptr [ %i.j, %bb.d ], [ %i.af, %middle.block220 ], [ %i.af, %middle.block ], [ %i.af, %bb.j ], [ %i.af, %.lr.ph.i ] ; 3 uses
  %.184 = phi i32 [ %1, %bb.d ], [ %i.ae, %middle.block220 ], [ %i.ae, %middle.block ], [ %i.ae, %bb.j ], [ %i.ae, %.lr.ph.i ] ; 3 uses
  %i.id = and i32 %2, 31                          ; 2 uses
  %i.ie = and i32 %2, 2097120                     ; 2 uses
  %i.if = icmp slt i32 %.184, %i.ie
  br i1 %i.if, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZL15utrie_fillBlockPjiijja.exit
  %i.ig = icmp ne i32 %3, %i.k
  %. = sext i1 %i.ig to i32
  %i.ih = icmp ne i8 %4, 0
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 139412 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 139408
  %.not.i110 = icmp eq i8 %4, 0
  %i.ik = zext nneg i32 %.184 to i64
  %i.il = insertelement <4 x i32> poison, i32 %3, i64 0
  %i.im = shufflevector <4 x i32> %i.il, <4 x i32> poison, <4 x i32> zeroinitializer ; 16 uses
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %_ZL15utrie_fillBlockPjiijja.exit117
  %i.in = phi ptr [ %i.ic, %.lr.ph ], [ %i.mb, %_ZL15utrie_fillBlockPjiijja.exit117 ] ; 9 uses
  %i.io = phi ptr [ %i.ic, %.lr.ph ], [ %i.mc, %_ZL15utrie_fillBlockPjiijja.exit117 ] ; 5 uses
  %indvars.iv = phi i64 [ %i.ik, %.lr.ph ], [ %indvars.iv.next, %_ZL15utrie_fillBlockPjiijja.exit117 ] ; 2 uses
  %.1152 = phi i32 [ %., %.lr.ph ], [ %.2, %_ZL15utrie_fillBlockPjiijja.exit117 ] ; 7 uses
  %i.ip = lshr i64 %indvars.iv, 5
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ip ; 4 uses
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !14 ; 5 uses
  %i.is = icmp sgt i32 %i.ir, 0
  br i1 %i.is, label %bb.o, label %bb.av

bb.o:                                             ; preds = %bb.n
  %i.it = zext nneg i32 %i.ir to i64
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %i.it ; 41 uses
  br i1 %.not.i110, label %.lr.ph19.i115.preheader, label %.lr.ph.i112.preheader

.lr.ph.i112.preheader:                            ; preds = %bb.o
  store <4 x i32> %i.im, ptr %i.iu, align 4, !tbaa !14
  %.017.i113.ptr.4 = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  store <4 x i32> %i.im, ptr %.017.i113.ptr.4, align 4, !tbaa !14
  %.017.i113.ptr.8 = getelementptr inbounds nuw i8, ptr %i.iu, i64 32
  store <4 x i32> %i.im, ptr %.017.i113.ptr.8, align 4, !tbaa !14
  %.017.i113.ptr.12 = getelementptr inbounds nuw i8, ptr %i.iu, i64 48
  store <4 x i32> %i.im, ptr %.017.i113.ptr.12, align 4, !tbaa !14
  %.017.i113.ptr.16 = getelementptr inbounds nuw i8, ptr %i.iu, i64 64
  store <4 x i32> %i.im, ptr %.017.i113.ptr.16, align 4, !tbaa !14
  %.017.i113.ptr.20 = getelementptr inbounds nuw i8, ptr %i.iu, i64 80
  store <4 x i32> %i.im, ptr %.017.i113.ptr.20, align 4, !tbaa !14
  %.017.i113.ptr.24 = getelementptr inbounds nuw i8, ptr %i.iu, i64 96
  store <4 x i32> %i.im, ptr %.017.i113.ptr.24, align 4, !tbaa !14
  %.017.i113.ptr.28 = getelementptr inbounds nuw i8, ptr %i.iu, i64 112
  store <4 x i32> %i.im, ptr %.017.i113.ptr.28, align 4, !tbaa !14
  br label %_ZL15utrie_fillBlockPjiijja.exit117

.lr.ph19.i115.preheader:                          ; preds = %bb.o
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !14
  %i.iw = icmp eq i32 %i.iv, %i.k
  br i1 %i.iw, label %bb.p, label %.lr.ph19.i115.1

bb.p:                                             ; preds = %.lr.ph19.i115.preheader
  store i32 %3, ptr %i.iu, align 4, !tbaa !14
  br label %.lr.ph19.i115.1

.lr.ph19.i115.1:                                  ; preds = %bb.p, %.lr.ph19.i115.preheader
  %.118.i116.ptr.1 = getelementptr inbounds nuw i8, ptr %i.iu, i64 4 ; 2 uses
  %i.ix = load i32, ptr %.118.i116.ptr.1, align 4, !tbaa !14
end_hunk_0
begin_hunk_1_@utrie_setRange32_78:bb.a
  br i1 %i.kq, label %bb.am, label %.lr.ph19.i115.24

bb.am:                                            ; preds = %.lr.ph19.i115.23
  store i32 %3, ptr %.118.i116.ptr.23, align 4, !tbaa !14
  br label %.lr.ph19.i115.24

.lr.ph19.i115.24:                                 ; preds = %bb.am, %.lr.ph19.i115.23
  %.118.i116.ptr.24 = getelementptr inbounds nuw i8, ptr %i.iu, i64 96 ; 2 uses
  %i.kr = load i32, ptr %.118.i116.ptr.24, align 4, !tbaa !14
  %i.ks = icmp eq i32 %i.kr, %i.k
  br i1 %i.ks, label %bb.an, label %.lr.ph19.i115.25

bb.an:                                            ; preds = %.lr.ph19.i115.24
  store i32 %3, ptr %.118.i116.ptr.24, align 4, !tbaa !14
  br label %.lr.ph19.i115.25

.lr.ph19.i115.25:                                 ; preds = %bb.an, %.lr.ph19.i115.24
  %.118.i116.ptr.25 = getelementptr inbounds nuw i8, ptr %i.iu, i64 100 ; 2 uses
  %i.kt = load i32, ptr %.118.i116.ptr.25, align 4, !tbaa !14
  %i.ku = icmp eq i32 %i.kt, %i.k
  br i1 %i.ku, label %bb.ao, label %.lr.ph19.i115.26

bb.ao:                                            ; preds = %.lr.ph19.i115.25
  store i32 %3, ptr %.118.i116.ptr.25, align 4, !tbaa !14
  br label %.lr.ph19.i115.26

.lr.ph19.i115.26:                                 ; preds = %bb.ao, %.lr.ph19.i115.25
  %.118.i116.ptr.26 = getelementptr inbounds nuw i8, ptr %i.iu, i64 104 ; 2 uses
  %i.kv = load i32, ptr %.118.i116.ptr.26, align 4, !tbaa !14
  %i.kw = icmp eq i32 %i.kv, %i.k
  br i1 %i.kw, label %bb.ap, label %.lr.ph19.i115.27

bb.ap:                                            ; preds = %.lr.ph19.i115.26
  store i32 %3, ptr %.118.i116.ptr.26, align 4, !tbaa !14
  br label %.lr.ph19.i115.27

.lr.ph19.i115.27:                                 ; preds = %bb.ap, %.lr.ph19.i115.26
  %.118.i116.ptr.27 = getelementptr inbounds nuw i8, ptr %i.iu, i64 108 ; 2 uses
  %i.kx = load i32, ptr %.118.i116.ptr.27, align 4, !tbaa !14
  %i.ky = icmp eq i32 %i.kx, %i.k
  br i1 %i.ky, label %bb.aq, label %.lr.ph19.i115.28

bb.aq:                                            ; preds = %.lr.ph19.i115.27
  store i32 %3, ptr %.118.i116.ptr.27, align 4, !tbaa !14
  br label %.lr.ph19.i115.28

.lr.ph19.i115.28:                                 ; preds = %bb.aq, %.lr.ph19.i115.27
  %.118.i116.ptr.28 = getelementptr inbounds nuw i8, ptr %i.iu, i64 112 ; 2 uses
  %i.kz = load i32, ptr %.118.i116.ptr.28, align 4, !tbaa !14
  %i.la = icmp eq i32 %i.kz, %i.k
  br i1 %i.la, label %bb.ar, label %.lr.ph19.i115.29

bb.ar:                                            ; preds = %.lr.ph19.i115.28
  store i32 %3, ptr %.118.i116.ptr.28, align 4, !tbaa !14
  br label %.lr.ph19.i115.29

.lr.ph19.i115.29:                                 ; preds = %bb.ar, %.lr.ph19.i115.28
  %.118.i116.ptr.29 = getelementptr inbounds nuw i8, ptr %i.iu, i64 116 ; 2 uses
  %i.lb = load i32, ptr %.118.i116.ptr.29, align 4, !tbaa !14
  %i.lc = icmp eq i32 %i.lb, %i.k
  br i1 %i.lc, label %bb.as, label %.lr.ph19.i115.30

bb.as:                                            ; preds = %.lr.ph19.i115.29
  store i32 %3, ptr %.118.i116.ptr.29, align 4, !tbaa !14
  br label %.lr.ph19.i115.30

.lr.ph19.i115.30:                                 ; preds = %bb.as, %.lr.ph19.i115.29
  %.118.i116.ptr.30 = getelementptr inbounds nuw i8, ptr %i.iu, i64 120 ; 2 uses
  %i.ld = load i32, ptr %.118.i116.ptr.30, align 4, !tbaa !14
  %i.le = icmp eq i32 %i.ld, %i.k
  br i1 %i.le, label %bb.at, label %.lr.ph19.i115.31

bb.at:                                            ; preds = %.lr.ph19.i115.30
  store i32 %3, ptr %.118.i116.ptr.30, align 4, !tbaa !14
  br label %.lr.ph19.i115.31

.lr.ph19.i115.31:                                 ; preds = %bb.at, %.lr.ph19.i115.30
  %.118.i116.ptr.31 = getelementptr inbounds nuw i8, ptr %i.iu, i64 124 ; 2 uses
  %i.lf = load i32, ptr %.118.i116.ptr.31, align 4, !tbaa !14
  %i.lg = icmp eq i32 %i.lf, %i.k
  br i1 %i.lg, label %bb.au, label %_ZL15utrie_fillBlockPjiijja.exit117

bb.au:                                            ; preds = %.lr.ph19.i115.31
  store i32 %3, ptr %.118.i116.ptr.31, align 4, !tbaa !14
  br label %_ZL15utrie_fillBlockPjiijja.exit117

bb.av:                                            ; preds = %bb.n
  %i.lh = sub nsw i32 0, %i.ir
  %i.li = zext nneg i32 %i.lh to i64
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.li
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !14
  %.not100 = icmp ne i32 %i.lk, %3
  %i.ll = icmp eq i32 %i.ir, 0
  %or.cond5 = or i1 %i.ih, %i.ll
  %or.cond153 = and i1 %.not100, %or.cond5
  br i1 %or.cond153, label %bb.aw, label %_ZL15utrie_fillBlockPjiijja.exit117

bb.aw:                                            ; preds = %bb.av
  %i.lm = icmp sgt i32 %.1152, -1
  br i1 %i.lm, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.ln = sub nsw i32 0, %.1152
  store i32 %i.ln, ptr %i.iq, align 4, !tbaa !14
  br label %_ZL15utrie_fillBlockPjiijja.exit117

bb.ay:                                            ; preds = %bb.aw
  %i.lo = load i32, ptr %i.ii, align 4, !tbaa !15 ; 6 uses
  %i.lp = add nsw i32 %i.lo, 32                   ; 2 uses
  %i.lq = load i32, ptr %i.ij, align 8, !tbaa !22
  %i.lr = icmp sgt i32 %i.lp, %i.lq
  br i1 %i.lr, label %_ZL15utrie_fillBlockPjiijja.exit135, label %_ZL20utrie_allocDataBlockP8UNewTrie.exit.i118

_ZL20utrie_allocDataBlockP8UNewTrie.exit.i118:    ; preds = %bb.ay
  store i32 %i.lp, ptr %i.ii, align 4, !tbaa !15
  %i.ls = icmp slt i32 %i.lo, 0
  br i1 %i.ls, label %_ZL15utrie_fillBlockPjiijja.exit135, label %.lr.ph.i122

.lr.ph.i122:                                      ; preds = %_ZL20utrie_allocDataBlockP8UNewTrie.exit.i118
  store i32 %i.lo, ptr %i.iq, align 4, !tbaa !14
  %i.lt = zext nneg i32 %i.lo to i64              ; 2 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.lt
  %i.lv = sext i32 %i.ir to i64
  %i.lw = sub nsw i64 0, %i.lv
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.lw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.lu, ptr noundef nonnull align 4 dereferenceable(128) %i.lx, i64 128, i1 false)
  %i.ly = sub nsw i32 0, %i.lo
  store i32 %i.ly, ptr %i.iq, align 4, !tbaa !14
  %i.lz = load ptr, ptr %i.i, align 8, !tbaa !12  ; 3 uses
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %i.lt ; 8 uses
  store <4 x i32> %i.im, ptr %i.ma, align 4, !tbaa !14
  %.017.i123.ptr.4 = getelementptr inbounds nuw i8, ptr %i.ma, i64 16
  store <4 x i32> %i.im, ptr %.017.i123.ptr.4, align 4, !tbaa !14
  %.017.i123.ptr.8 = getelementptr inbounds nuw i8, ptr %i.ma, i64 32
  store <4 x i32> %i.im, ptr %.017.i123.ptr.8, align 4, !tbaa !14
  %.017.i123.ptr.12 = getelementptr inbounds nuw i8, ptr %i.ma, i64 48
  store <4 x i32> %i.im, ptr %.017.i123.ptr.12, align 4, !tbaa !14
  %.017.i123.ptr.16 = getelementptr inbounds nuw i8, ptr %i.ma, i64 64
  store <4 x i32> %i.im, ptr %.017.i123.ptr.16, align 4, !tbaa !14
  %.017.i123.ptr.20 = getelementptr inbounds nuw i8, ptr %i.ma, i64 80
  store <4 x i32> %i.im, ptr %.017.i123.ptr.20, align 4, !tbaa !14
  %.017.i123.ptr.24 = getelementptr inbounds nuw i8, ptr %i.ma, i64 96
  store <4 x i32> %i.im, ptr %.017.i123.ptr.24, align 4, !tbaa !14
  %.017.i123.ptr.28 = getelementptr inbounds nuw i8, ptr %i.ma, i64 112
  store <4 x i32> %i.im, ptr %.017.i123.ptr.28, align 4, !tbaa !14
  br label %_ZL15utrie_fillBlockPjiijja.exit117

_ZL15utrie_fillBlockPjiijja.exit117:              ; preds = %.lr.ph19.i115.31, %bb.au, %.lr.ph.i122, %.lr.ph.i112.preheader, %bb.av, %bb.ax
  %i.mb = phi ptr [ %i.in, %bb.av ], [ %i.in, %bb.ax ], [ %i.in, %.lr.ph.i112.preheader ], [ %i.lz, %.lr.ph.i122 ], [ %i.in, %bb.au ], [ %i.in, %.lr.ph19.i115.31 ] ; 2 uses
  %i.mc = phi ptr [ %i.io, %bb.av ], [ %i.io, %bb.ax ], [ %i.in, %.lr.ph.i112.preheader ], [ %i.lz, %.lr.ph.i122 ], [ %i.in, %bb.au ], [ %i.in, %.lr.ph19.i115.31 ]
  %.2 = phi i32 [ %.1152, %bb.av ], [ %.1152, %bb.ax ], [ %.1152, %.lr.ph.i112.preheader ], [ %i.lo, %.lr.ph.i122 ], [ %.1152, %bb.au ], [ %.1152, %.lr.ph19.i115.31 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32 ; 2 uses
  %i.md = trunc nuw i64 %indvars.iv.next to i32   ; 2 uses
  %i.me = icmp sgt i32 %i.ie, %i.md
  br i1 %i.me, label %bb.n, label %._crit_edge, !llvm.loop !33

._crit_edge:                                      ; preds = %_ZL15utrie_fillBlockPjiijja.exit117, %_ZL15utrie_fillBlockPjiijja.exit
  %i.mf = phi ptr [ %i.ic, %_ZL15utrie_fillBlockPjiijja.exit ], [ %i.mb, %_ZL15utrie_fillBlockPjiijja.exit117 ] ; 3 uses
  %.285.lcssa = phi i32 [ %.184, %_ZL15utrie_fillBlockPjiijja.exit ], [ %i.md, %_ZL15utrie_fillBlockPjiijja.exit117 ]
  %.not99 = icmp eq i32 %i.id, 0
  br i1 %.not99, label %_ZL15utrie_fillBlockPjiijja.exit135, label %bb.az

bb.az:                                            ; preds = %._crit_edge
  %i.mg = lshr i32 %.285.lcssa, 5
  %i.mh = zext nneg i32 %i.mg to i64
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.mh ; 2 uses
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !14 ; 3 uses
  %i.mk = icmp sgt i32 %i.mj, 0
  br i1 %i.mk, label %._ZL18utrie_getDataBlockP8UNewTriei.exit127_crit_edge, label %bb.ba

._ZL18utrie_getDataBlockP8UNewTriei.exit127_crit_edge: ; preds = %bb.az
  %.pre162 = zext nneg i32 %i.mj to i64
  br label %_ZL18utrie_getDataBlockP8UNewTriei.exit127

bb.ba:                                            ; preds = %bb.az
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 139412 ; 2 uses
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !15 ; 4 uses
  %i.mn = add nsw i32 %i.mm, 32                   ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 139408
  %i.mp = load i32, ptr %i.mo, align 8, !tbaa !22
  %i.mq = icmp sgt i32 %i.mn, %i.mp
  br i1 %i.mq, label %_ZL15utrie_fillBlockPjiijja.exit135, label %_ZL20utrie_allocDataBlockP8UNewTrie.exit.i125

_ZL20utrie_allocDataBlockP8UNewTrie.exit.i125:    ; preds = %bb.ba
  store i32 %i.mn, ptr %i.ml, align 4, !tbaa !15
  %i.mr = icmp slt i32 %i.mm, 0
  br i1 %i.mr, label %_ZL15utrie_fillBlockPjiijja.exit135, label %bb.bb

bb.bb:                                            ; preds = %_ZL20utrie_allocDataBlockP8UNewTrie.exit.i125
  store i32 %i.mm, ptr %i.mi, align 4, !tbaa !14
  %i.ms = zext nneg i32 %i.mm to i64              ; 2 uses
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %i.ms
  %i.mu = sext i32 %i.mj to i64
  %i.mv = sub nsw i64 0, %i.mu
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %i.mv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.mt, ptr noundef nonnull align 4 dereferenceable(128) %i.mw, i64 128, i1 false)
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !12
  br label %_ZL18utrie_getDataBlockP8UNewTriei.exit127

_ZL18utrie_getDataBlockP8UNewTriei.exit127:       ; preds = %._ZL18utrie_getDataBlockP8UNewTriei.exit127_crit_edge, %bb.bb
  %.pre-phi = phi i64 [ %.pre162, %._ZL18utrie_getDataBlockP8UNewTriei.exit127_crit_edge ], [ %i.ms, %bb.bb ] ; 2 uses
  %i.mx = phi ptr [ %i.mf, %._ZL18utrie_getDataBlockP8UNewTriei.exit127_crit_edge ], [ %.pre, %bb.bb ] ; 2 uses
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %.pre-phi ; 14 uses
  %i.mz = zext nneg i32 %i.id to i64              ; 2 uses
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %i.mz ; 2 uses
  %.not.i128 = icmp eq i8 %4, 0
  %i.nb = ptrtoaddr ptr %i.mx to i64              ; 2 uses
  %i.nc = shl nuw nsw i64 %.pre-phi, 2            ; 2 uses
  %i.nd = shl nuw nsw i64 %i.mz, 2
  %i.ne = add i64 %i.nc, %i.nb                    ; 2 uses
  %i.nf = add i64 %i.ne, %i.nd
  %i.ng = add i64 %i.ne, 4
  %i.nh = tail call i64 @llvm.umax.i64(i64 %i.nf, i64 %i.ng)
  %i.ni = xor i64 %i.nb, -1
  %i.nj = add i64 %i.nh, %i.ni
  %i.nk = sub i64 %i.nj, %i.nc                    ; 2 uses
  %i.nl = lshr i64 %i.nk, 2
  %i.nm = add nuw nsw i64 %i.nl, 1                ; 4 uses
  %min.iters.check287 = icmp ult i64 %i.nk, 28    ; 2 uses
  br i1 %.not.i128, label %.lr.ph19.i133.preheader, label %.lr.ph.i130.preheader

.lr.ph.i130.preheader:                            ; preds = %_ZL18utrie_getDataBlockP8UNewTriei.exit127
  br i1 %min.iters.check287, label %.lr.ph.i130.preheader326, label %vector.ph275

vector.ph275:                                     ; preds = %.lr.ph.i130.preheader
  %n.vec276 = and i64 %i.nm, 9223372036854775800  ; 3 uses
  %i.nn = shl i64 %n.vec276, 2
  %i.no = getelementptr i8, ptr %i.my, i64 %i.nn
  %broadcast.splatinsert277 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat278 = shufflevector <4 x i32> %broadcast.splatinsert277, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body279

vector.body279:                                   ; preds = %vector.body279, %vector.ph275
  %index280 = phi i64 [ 0, %vector.ph275 ], [ %index.next282, %vector.body279 ] ; 2 uses
  %i.np = shl i64 %index280, 2
  %next.gep281 = getelementptr i8, ptr %i.my, i64 %i.np ; 2 uses
  %i.nq = getelementptr i8, ptr %next.gep281, i64 16
  store <4 x i32> %broadcast.splat278, ptr %next.gep281, align 4, !tbaa !14
  store <4 x i32> %broadcast.splat278, ptr %i.nq, align 4, !tbaa !14
  %index.next282 = add nuw i64 %index280, 8       ; 2 uses
  %i.nr = icmp eq i64 %index.next282, %n.vec276
  br i1 %i.nr, label %middle.block283, label %vector.body279, !llvm.loop !34

middle.block283:                                  ; preds = %vector.body279
  %cmp.n284 = icmp eq i64 %i.nm, %n.vec276
  br i1 %cmp.n284, label %_ZL15utrie_fillBlockPjiijja.exit135, label %.lr.ph.i130.preheader326

.lr.ph.i130.preheader326:                         ; preds = %.lr.ph.i130.preheader, %middle.block283
  %.017.i131.ph = phi ptr [ %i.my, %.lr.ph.i130.preheader ], [ %i.no, %middle.block283 ]
  br label %.lr.ph.i130

.lr.ph19.i133.preheader:                          ; preds = %_ZL18utrie_getDataBlockP8UNewTriei.exit127
  br i1 %min.iters.check287, label %.lr.ph19.i133.preheader325, label %vector.ph288

vector.ph288:                                     ; preds = %.lr.ph19.i133.preheader
  %n.vec289 = and i64 %i.nm, 9223372036854775800  ; 3 uses
  %i.ns = shl i64 %n.vec289, 2
  %i.nt = getelementptr i8, ptr %i.my, i64 %i.ns
  %broadcast.splatinsert290 = insertelement <4 x i32> poison, i32 %i.k, i64 0
  %broadcast.splat291 = shufflevector <4 x i32> %broadcast.splatinsert290, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body292

vector.body292:                                   ; preds = %pred.store.continue319, %vector.ph288
  %index293 = phi i64 [ 0, %vector.ph288 ], [ %index.next320, %pred.store.continue319 ] ; 2 uses
  %i.nu = shl i64 %index293, 2                    ; 8 uses
  %next.gep294 = getelementptr i8, ptr %i.my, i64 %i.nu ; 3 uses
  %i.nv = getelementptr i8, ptr %i.my, i64 %i.nu
  %next.gep295 = getelementptr i8, ptr %i.nv, i64 4
  %i.nw = getelementptr i8, ptr %i.my, i64 %i.nu
  %next.gep296 = getelementptr i8, ptr %i.nw, i64 8
  %i.nx = getelementptr i8, ptr %i.my, i64 %i.nu
  %next.gep297 = getelementptr i8, ptr %i.nx, i64 12
  %i.ny = getelementptr i8, ptr %i.my, i64 %i.nu
  %next.gep298 = getelementptr i8, ptr %i.ny, i64 16
  %i.nz = getelementptr i8, ptr %i.my, i64 %i.nu
  %next.gep299 = getelementptr i8, ptr %i.nz, i64 20
  %i.oa = getelementptr i8, ptr %i.my, i64 %i.nu
  %next.gep300 = getelementptr i8, ptr %i.oa, i64 24
  %i.ob = getelementptr i8, ptr %i.my, i64 %i.nu
  %next.gep301 = getelementptr i8, ptr %i.ob, i64 28
  %i.oc = getelementptr i8, ptr %next.gep294, i64 16
  %wide.load302 = load <4 x i32>, ptr %next.gep294, align 4, !tbaa !14
  %wide.load303 = load <4 x i32>, ptr %i.oc, align 4, !tbaa !14
  %i.od = icmp eq <4 x i32> %wide.load302, %broadcast.splat291 ; 4 uses
  %i.oe = icmp eq <4 x i32> %wide.load303, %broadcast.splat291 ; 4 uses
  %i.of = extractelement <4 x i1> %i.od, i64 0
  br i1 %i.of, label %pred.store.if304, label %pred.store.continue305

pred.store.if304:                                 ; preds = %vector.body292
  store i32 %3, ptr %next.gep294, align 4, !tbaa !14
  br label %pred.store.continue305

pred.store.continue305:                           ; preds = %pred.store.if304, %vector.body292
  %i.og = extractelement <4 x i1> %i.od, i64 1
  br i1 %i.og, label %pred.store.if306, label %pred.store.continue307

pred.store.if306:                                 ; preds = %pred.store.continue305
  store i32 %3, ptr %next.gep295, align 4, !tbaa !14
  br label %pred.store.continue307

pred.store.continue307:                           ; preds = %pred.store.if306, %pred.store.continue305
  %i.oh = extractelement <4 x i1> %i.od, i64 2
  br i1 %i.oh, label %pred.store.if308, label %pred.store.continue309

pred.store.if308:                                 ; preds = %pred.store.continue307
  store i32 %3, ptr %next.gep296, align 4, !tbaa !14
  br label %pred.store.continue309

pred.store.continue309:                           ; preds = %pred.store.if308, %pred.store.continue307
  %i.oi = extractelement <4 x i1> %i.od, i64 3
  br i1 %i.oi, label %pred.store.if310, label %pred.store.continue311

pred.store.if310:                                 ; preds = %pred.store.continue309
  store i32 %3, ptr %next.gep297, align 4, !tbaa !14
  br label %pred.store.continue311

pred.store.continue311:                           ; preds = %pred.store.if310, %pred.store.continue309
  %i.oj = extractelement <4 x i1> %i.oe, i64 0
  br i1 %i.oj, label %pred.store.if312, label %pred.store.continue313

pred.store.if312:                                 ; preds = %pred.store.continue311
  store i32 %3, ptr %next.gep298, align 4, !tbaa !14
  br label %pred.store.continue313

pred.store.continue313:                           ; preds = %pred.store.if312, %pred.store.continue311
  %i.ok = extractelement <4 x i1> %i.oe, i64 1
  br i1 %i.ok, label %pred.store.if314, label %pred.store.continue315

pred.store.if314:                                 ; preds = %pred.store.continue313
  store i32 %3, ptr %next.gep299, align 4, !tbaa !14
  br label %pred.store.continue315

pred.store.continue315:                           ; preds = %pred.store.if314, %pred.store.continue313
  %i.ol = extractelement <4 x i1> %i.oe, i64 2
  br i1 %i.ol, label %pred.store.if316, label %pred.store.continue317

pred.store.if316:                                 ; preds = %pred.store.continue315
  store i32 %3, ptr %next.gep300, align 4, !tbaa !14
  br label %pred.store.continue317

pred.store.continue317:                           ; preds = %pred.store.if316, %pred.store.continue315
  %i.om = extractelement <4 x i1> %i.oe, i64 3
  br i1 %i.om, label %pred.store.if318, label %pred.store.continue319

pred.store.if318:                                 ; preds = %pred.store.continue317
  store i32 %3, ptr %next.gep301, align 4, !tbaa !14
  br label %pred.store.continue319

pred.store.continue319:                           ; preds = %pred.store.if318, %pred.store.continue317
  %index.next320 = add nuw i64 %index293, 8       ; 2 uses
  %i.on = icmp eq i64 %index.next320, %n.vec289
  br i1 %i.on, label %middle.block321, label %vector.body292, !llvm.loop !35

middle.block321:                                  ; preds = %pred.store.continue319
  %cmp.n322 = icmp eq i64 %i.nm, %n.vec289
  br i1 %cmp.n322, label %_ZL15utrie_fillBlockPjiijja.exit135, label %.lr.ph19.i133.preheader325

.lr.ph19.i133.preheader325:                       ; preds = %.lr.ph19.i133.preheader, %middle.block321
  %.118.i134.ph = phi ptr [ %i.my, %.lr.ph19.i133.preheader ], [ %i.nt, %middle.block321 ]
  br label %.lr.ph19.i133

.lr.ph.i130:                                      ; preds = %.lr.ph.i130.preheader326, %.lr.ph.i130
  %.017.i131 = phi ptr [ %i.oo, %.lr.ph.i130 ], [ %.017.i131.ph, %.lr.ph.i130.preheader326 ] ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %.017.i131, i64 4 ; 2 uses
  store i32 %3, ptr %.017.i131, align 4, !tbaa !14
  %i.op = icmp ult ptr %i.oo, %i.na
  br i1 %i.op, label %.lr.ph.i130, label %_ZL15utrie_fillBlockPjiijja.exit135, !llvm.loop !36

.lr.ph19.i133:                                    ; preds = %.lr.ph19.i133.preheader325, %bb.bd
  %.118.i134 = phi ptr [ %i.os, %bb.bd ], [ %.118.i134.ph, %.lr.ph19.i133.preheader325 ] ; 3 uses
  %i.oq = load i32, ptr %.118.i134, align 4, !tbaa !14
  %i.or = icmp eq i32 %i.oq, %i.k
  br i1 %i.or, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %.lr.ph19.i133
  store i32 %3, ptr %.118.i134, align 4, !tbaa !14
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %.lr.ph19.i133
  %i.os = getelementptr inbounds nuw i8, ptr %.118.i134, i64 4 ; 2 uses
  %i.ot = icmp ult ptr %i.os, %i.na
  br i1 %i.ot, label %.lr.ph19.i133, label %_ZL15utrie_fillBlockPjiijja.exit135, !llvm.loop !37

_ZL15utrie_fillBlockPjiijja.exit135:              ; preds = %.lr.ph.i104, %bb.m, %_ZL20utrie_allocDataBlockP8UNewTrie.exit.i118, %bb.ay, %.lr.ph.i130, %bb.bd, %middle.block232, %middle.block270, %middle.block283, %middle.block321, %bb.ba, %_ZL20utrie_allocDataBlockP8UNewTrie.exit.i125, %bb.f, %_ZL20utrie_allocDataBlockP8UNewTrie.exit.i, %.preheader.i106, %.preheader15.i103, %._crit_edge, %bb.c, %bb.a, %bb.b
  %.182 = phi i8 [ 0, %bb.ba ], [ 0, %bb.a ], [ 1, %bb.c ], [ 0, %bb.f ], [ 0, %_ZL20utrie_allocDataBlockP8UNewTrie.exit.i125 ], [ 0, %bb.b ], [ 1, %._crit_edge ], [ 1, %middle.block283 ], [ 1, %middle.block270 ], [ 1, %middle.block321 ], [ 1, %.preheader.i106 ], [ 1, %.preheader15.i103 ], [ 0, %_ZL20utrie_allocDataBlockP8UNewTrie.exit.i ], [ 0, %_ZL20utrie_allocDataBlockP8UNewTrie.exit.i118 ], [ 1, %middle.block232 ], [ 1, %bb.m ], [ 1, %bb.bd ], [ 1, %.lr.ph.i130 ], [ 0, %bb.ay ], [ 1, %.lr.ph.i104 ]
  ret i8 %.182
}

; Function Attrs: mustprogress uwtable
define i32 @utrie_serialize_78(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i8 noundef signext %4, ptr nofree noundef captures(address_is_null) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i32], align 16              ; 4 uses
  %i.b = icmp eq ptr %5, null
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %5, align 4, !tbaa !38     ; 2 uses
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq ptr %0, null
  %i.f = icmp slt i32 %2, 0
  %or.cond = or i1 %i.e, %i.f
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = icmp ne i32 %2, 0
  %i.h = icmp eq ptr %1, null
  %or.cond3 = and i1 %i.h, %i.g
  br i1 %or.cond3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 1, ptr %5, align 4, !tbaa !38
  br label %.loopexit

end_hunk_1
