Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/utrie?download=true
inline.NumInlined: 27
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 27
begin_hunk_0_@utrie_getData_78:bb.a
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
  %i.c = load i8, ptr %i.b, align 1, !tbaa !23
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
  %i.o = load i32, ptr %i.n, align 8, !tbaa !21
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
  %i.c = load i8, ptr %i.b, align 1, !tbaa !23
  %i.d = icmp ne i8 %i.c, 0
  %i.e = icmp ugt i32 %1, 1114111
  %or.cond = or i1 %i.e, %i.d
  br i1 %or.cond, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not19 = icmp eq ptr %2, null
  br i1 %.not19, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %2, align 1, !tbaa !44
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
  store i8 %i.k, ptr %2, align 1, !tbaa !44
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
  %i.c = load i8, ptr %i.b, align 1, !tbaa !23
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
  %i.v = load i32, ptr %i.u, align 8, !tbaa !21
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
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag ; 31 uses
  br i1 %.not98, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZL18utrie_getDataBlockP8UNewTriei.exit
  %i.ai = shl nuw nsw i32 %i.l, 2
  %.idx = zext nneg i32 %i.ai to i64              ; 18 uses
  %.not.i = icmp eq i8 %4, 0
  %i.aj = lshr exact i64 %.idx, 2
  %i.ak = sub nuw nsw i64 32, %i.aj               ; 4 uses
  %min.iters.check197 = icmp samesign ugt i32 %i.l, 24 ; 2 uses
  br i1 %.not.i, label %.lr.ph19.i.preheader, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.h
  br i1 %min.iters.check197, label %.lr.ph.i.preheader334, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.ak, 56                      ; 4 uses
  %i.al = shl nuw nsw i64 %n.vec, 2
  %i.am = add nuw nsw i64 %i.al, %.idx
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.an, align 4, !tbaa !14
  store <4 x i32> %broadcast.splat, ptr %i.ao, align 4, !tbaa !14
  %i.ap = icmp eq i64 %n.vec, 8
  br i1 %i.ap, label %middle.block, label %vector.body.2.a

vector.body.2.a:                                  ; preds = %vector.ph
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.ar, align 4, !tbaa !14
  store <4 x i32> %broadcast.splat, ptr %i.as, align 4, !tbaa !14
  %i.at = icmp eq i64 %n.vec, 16
  br i1 %i.at, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2.a
  %i.au = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %.idx ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.av, align 4, !tbaa !14
  store <4 x i32> %broadcast.splat, ptr %i.aw, align 4, !tbaa !14
  br label %middle.block

middle.block:                                     ; preds = %vector.body.3, %vector.body.2.a, %vector.ph
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %_ZL15utrie_fillBlockPjiijja.exit, label %.lr.ph.i.preheader334

.lr.ph.i.preheader334:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.017.i.idx.ph = phi i64 [ %.idx, %.lr.ph.i.preheader ], [ %i.am, %middle.block ]
  br label %.lr.ph.i

.lr.ph19.i.preheader:                             ; preds = %bb.h
  br i1 %min.iters.check197, label %.lr.ph19.i.preheader333, label %vector.ph198

vector.ph198:                                     ; preds = %.lr.ph19.i.preheader
  %n.vec199 = and i64 %i.ak, 56                   ; 4 uses
  %i.ax = shl nuw nsw i64 %n.vec199, 2
  %i.ay = add nuw nsw i64 %i.ax, %.idx
  %broadcast.splatinsert200 = insertelement <4 x i32> poison, i32 %i.k, i64 0
  %broadcast.splat201 = shufflevector <4 x i32> %broadcast.splatinsert200, <4 x i32> poison, <4 x i32> zeroinitializer ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %wide.load = load <4 x i32>, ptr %i.az, align 4, !tbaa !14
  %wide.load204 = load <4 x i32>, ptr %i.ba, align 4, !tbaa !14
  %i.bb = icmp eq <4 x i32> %wide.load, %broadcast.splat201 ; 4 uses
  %i.bc = icmp eq <4 x i32> %wide.load204, %broadcast.splat201 ; 4 uses
  %i.bd = extractelement <4 x i1> %i.bb, i64 0
  br i1 %i.bd, label %pred.store.if.1.a, label %pred.store.continue.1.a

pred.store.if.1.a:                                ; preds = %vector.ph198
  store i32 %3, ptr %i.az, align 4, !tbaa !14
  br label %pred.store.continue.1.a

pred.store.continue.1.a:                          ; preds = %pred.store.if.1.a, %vector.ph198
  %i.be = extractelement <4 x i1> %i.bb, i64 1
  br i1 %i.be, label %pred.store.if205.1.a, label %pred.store.continue206.1.a

pred.store.if205.1.a:                             ; preds = %pred.store.continue.1.a
  %i.bf = getelementptr i8, ptr %i.ah, i64 %.idx
  %i.bg = getelementptr i8, ptr %i.bf, i64 4
  store i32 %3, ptr %i.bg, align 4, !tbaa !14
  br label %pred.store.continue206.1.a

pred.store.continue206.1.a:                       ; preds = %pred.store.if205.1.a, %pred.store.continue.1.a
  %i.bh = extractelement <4 x i1> %i.bb, i64 2
  br i1 %i.bh, label %pred.store.if207.1.a, label %pred.store.continue208.1.a

pred.store.if207.1.a:                             ; preds = %pred.store.continue206.1.a
  %i.bi = getelementptr i8, ptr %i.ah, i64 %.idx
  %i.bj = getelementptr i8, ptr %i.bi, i64 8
  store i32 %3, ptr %i.bj, align 4, !tbaa !14
  br label %pred.store.continue208.1.a

pred.store.continue208.1.a:                       ; preds = %pred.store.if207.1.a, %pred.store.continue206.1.a
  %i.bk = extractelement <4 x i1> %i.bb, i64 3
  br i1 %i.bk, label %pred.store.if209.1.a, label %pred.store.continue210.1.a

pred.store.if209.1.a:                             ; preds = %pred.store.continue208.1.a
  %i.bl = getelementptr i8, ptr %i.ah, i64 %.idx
  %i.bm = getelementptr i8, ptr %i.bl, i64 12
  store i32 %3, ptr %i.bm, align 4, !tbaa !14
  br label %pred.store.continue210.1.a

pred.store.continue210.1.a:                       ; preds = %pred.store.if209.1.a, %pred.store.continue208.1.a
  %i.bn = extractelement <4 x i1> %i.bc, i64 0
  br i1 %i.bn, label %pred.store.if211.1.a, label %pred.store.continue212.1.a

pred.store.if211.1.a:                             ; preds = %pred.store.continue210.1.a
  %i.bo = getelementptr i8, ptr %i.ah, i64 %.idx
  %i.bp = getelementptr i8, ptr %i.bo, i64 16
  store i32 %3, ptr %i.bp, align 4, !tbaa !14
  br label %pred.store.continue212.1.a

pred.store.continue212.1.a:                       ; preds = %pred.store.if211.1.a, %pred.store.continue210.1.a
  %i.bq = extractelement <4 x i1> %i.bc, i64 1
  br i1 %i.bq, label %pred.store.if213.1.a, label %pred.store.continue214.1.a

pred.store.if213.1.a:                             ; preds = %pred.store.continue212.1.a
  %i.br = getelementptr i8, ptr %i.ah, i64 %.idx
  %i.bs = getelementptr i8, ptr %i.br, i64 20
  store i32 %3, ptr %i.bs, align 4, !tbaa !14
  br label %pred.store.continue214.1.a

pred.store.continue214.1.a:                       ; preds = %pred.store.if213.1.a, %pred.store.continue212.1.a
  %i.bt = extractelement <4 x i1> %i.bc, i64 2
  br i1 %i.bt, label %pred.store.if215.1.a, label %pred.store.continue216.1.a

pred.store.if215.1.a:                             ; preds = %pred.store.continue214.1.a
  %i.bu = getelementptr i8, ptr %i.ah, i64 %.idx
  %i.bv = getelementptr i8, ptr %i.bu, i64 24
  store i32 %3, ptr %i.bv, align 4, !tbaa !14
  br label %pred.store.continue216.1.a

pred.store.continue216.1.a:                       ; preds = %pred.store.if215.1.a, %pred.store.continue214.1.a
  %i.bw = extractelement <4 x i1> %i.bc, i64 3
  br i1 %i.bw, label %pred.store.if217.1.a, label %pred.store.continue218.1.a

pred.store.if217.1.a:                             ; preds = %pred.store.continue216.1.a
  %i.bx = getelementptr i8, ptr %i.ah, i64 %.idx
  %i.by = getelementptr i8, ptr %i.bx, i64 28
  store i32 %3, ptr %i.by, align 4, !tbaa !14
  br label %pred.store.continue218.1.a

pred.store.continue218.1.a:                       ; preds = %pred.store.if217.1.a, %pred.store.continue216.1.a
  %i.bz = icmp eq i64 %n.vec199, 8
  br i1 %i.bz, label %middle.block220, label %vector.body202.2.a

vector.body202.2.a:                               ; preds = %pred.store.continue218.1.a
  %i.ca = add nuw nsw i64 %.idx, 32               ; 8 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ca ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %wide.load.2.a = load <4 x i32>, ptr %i.cb, align 4, !tbaa !14
  %wide.load204.2.a = load <4 x i32>, ptr %i.cc, align 4, !tbaa !14
  %i.cd = icmp eq <4 x i32> %wide.load.2.a, %broadcast.splat201 ; 4 uses
  %i.ce = icmp eq <4 x i32> %wide.load204.2.a, %broadcast.splat201 ; 4 uses
  %i.cf = extractelement <4 x i1> %i.cd, i64 0
  br i1 %i.cf, label %pred.store.if.2.a, label %pred.store.continue.2.a

pred.store.if.2.a:                                ; preds = %vector.body202.2.a
  store i32 %3, ptr %i.cb, align 4, !tbaa !14
  br label %pred.store.continue.2.a

pred.store.continue.2.a:                          ; preds = %pred.store.if.2.a, %vector.body202.2.a
  %i.cg = extractelement <4 x i1> %i.cd, i64 1
  br i1 %i.cg, label %pred.store.if205.2.a, label %pred.store.continue206.2.a

pred.store.if205.2.a:                             ; preds = %pred.store.continue.2.a
  %i.ch = getelementptr i8, ptr %i.ah, i64 %i.ca
  %i.ci = getelementptr i8, ptr %i.ch, i64 4
  store i32 %3, ptr %i.ci, align 4, !tbaa !14
  br label %pred.store.continue206.2.a

pred.store.continue206.2.a:                       ; preds = %pred.store.if205.2.a, %pred.store.continue.2.a
  %i.cj = extractelement <4 x i1> %i.cd, i64 2
  br i1 %i.cj, label %pred.store.if207.2.a, label %pred.store.continue208.2.a

pred.store.if207.2.a:                             ; preds = %pred.store.continue206.2.a
  %i.ck = getelementptr i8, ptr %i.ah, i64 %i.ca
  %i.cl = getelementptr i8, ptr %i.ck, i64 8
  store i32 %3, ptr %i.cl, align 4, !tbaa !14
  br label %pred.store.continue208.2.a

pred.store.continue208.2.a:                       ; preds = %pred.store.if207.2.a, %pred.store.continue206.2.a
  %i.cm = extractelement <4 x i1> %i.cd, i64 3
  br i1 %i.cm, label %pred.store.if209.2.a, label %pred.store.continue210.2.a

pred.store.if209.2.a:                             ; preds = %pred.store.continue208.2.a
  %i.cn = getelementptr i8, ptr %i.ah, i64 %i.ca
  %i.co = getelementptr i8, ptr %i.cn, i64 12
  store i32 %3, ptr %i.co, align 4, !tbaa !14
  br label %pred.store.continue210.2.a

pred.store.continue210.2.a:                       ; preds = %pred.store.if209.2.a, %pred.store.continue208.2.a
  %i.cp = extractelement <4 x i1> %i.ce, i64 0
  br i1 %i.cp, label %pred.store.if211.2.a, label %pred.store.continue212.2.a

pred.store.if211.2.a:                             ; preds = %pred.store.continue210.2.a
  %i.cq = getelementptr i8, ptr %i.ah, i64 %i.ca
  %i.cr = getelementptr i8, ptr %i.cq, i64 16
  store i32 %3, ptr %i.cr, align 4, !tbaa !14
  br label %pred.store.continue212.2.a

pred.store.continue212.2.a:                       ; preds = %pred.store.if211.2.a, %pred.store.continue210.2.a
  %i.cs = extractelement <4 x i1> %i.ce, i64 1
  br i1 %i.cs, label %pred.store.if213.2.a, label %pred.store.continue214.2.a

pred.store.if213.2.a:                             ; preds = %pred.store.continue212.2.a
  %i.ct = getelementptr i8, ptr %i.ah, i64 %i.ca
  %i.cu = getelementptr i8, ptr %i.ct, i64 20
  store i32 %3, ptr %i.cu, align 4, !tbaa !14
  br label %pred.store.continue214.2.a

pred.store.continue214.2.a:                       ; preds = %pred.store.if213.2.a, %pred.store.continue212.2.a
  %i.cv = extractelement <4 x i1> %i.ce, i64 2
  br i1 %i.cv, label %pred.store.if215.2.a, label %pred.store.continue216.2.a

pred.store.if215.2.a:                             ; preds = %pred.store.continue214.2.a
  %i.cw = getelementptr i8, ptr %i.ah, i64 %i.ca
  %i.cx = getelementptr i8, ptr %i.cw, i64 24
  store i32 %3, ptr %i.cx, align 4, !tbaa !14
  br label %pred.store.continue216.2.a

pred.store.continue216.2.a:                       ; preds = %pred.store.if215.2.a, %pred.store.continue214.2.a
  %i.cy = extractelement <4 x i1> %i.ce, i64 3
  br i1 %i.cy, label %pred.store.if217.2.a, label %pred.store.continue218.2

pred.store.if217.2.a:                             ; preds = %pred.store.continue216.2.a
  %i.cz = getelementptr i8, ptr %i.ah, i64 %i.ca
  %i.da = getelementptr i8, ptr %i.cz, i64 28
  store i32 %3, ptr %i.da, align 4, !tbaa !14
  br label %pred.store.continue218.2

pred.store.continue218.2:                         ; preds = %pred.store.if217.2.a, %pred.store.continue216.2.a
  %i.db = icmp eq i64 %n.vec199, 16
  br i1 %i.db, label %middle.block220, label %vector.body202.3

vector.body202.3:                                 ; preds = %pred.store.continue218.2
  %i.dc = add nuw nsw i64 %.idx, 64               ; 8 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.dc ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %wide.load.3 = load <4 x i32>, ptr %i.dd, align 4, !tbaa !14
  %wide.load204.3 = load <4 x i32>, ptr %i.de, align 4, !tbaa !14
  %i.df = icmp eq <4 x i32> %wide.load.3, %broadcast.splat201 ; 4 uses
  %i.dg = icmp eq <4 x i32> %wide.load204.3, %broadcast.splat201 ; 4 uses
  %i.dh = extractelement <4 x i1> %i.df, i64 0
  br i1 %i.dh, label %pred.store.if.3, label %pred.store.continue.3

pred.store.if.3:                                  ; preds = %vector.body202.3
  store i32 %3, ptr %i.dd, align 4, !tbaa !14
  br label %pred.store.continue.3

pred.store.continue.3:                            ; preds = %pred.store.if.3, %vector.body202.3
  %i.di = extractelement <4 x i1> %i.df, i64 1
  br i1 %i.di, label %pred.store.if205.3, label %pred.store.continue206.3

pred.store.if205.3:                               ; preds = %pred.store.continue.3
  %i.dj = getelementptr i8, ptr %i.ah, i64 %i.dc
  %i.dk = getelementptr i8, ptr %i.dj, i64 4
  store i32 %3, ptr %i.dk, align 4, !tbaa !14
  br label %pred.store.continue206.3

pred.store.continue206.3:                         ; preds = %pred.store.if205.3, %pred.store.continue.3
  %i.dl = extractelement <4 x i1> %i.df, i64 2
  br i1 %i.dl, label %pred.store.if207.3, label %pred.store.continue208.3

pred.store.if207.3:                               ; preds = %pred.store.continue206.3
  %i.dm = getelementptr i8, ptr %i.ah, i64 %i.dc
  %i.dn = getelementptr i8, ptr %i.dm, i64 8
  store i32 %3, ptr %i.dn, align 4, !tbaa !14
  br label %pred.store.continue208.3

pred.store.continue208.3:                         ; preds = %pred.store.if207.3, %pred.store.continue206.3
  %i.do = extractelement <4 x i1> %i.df, i64 3
  br i1 %i.do, label %pred.store.if209.3, label %pred.store.continue210.3

pred.store.if209.3:                               ; preds = %pred.store.continue208.3
  %i.dp = getelementptr i8, ptr %i.ah, i64 %i.dc
  %i.dq = getelementptr i8, ptr %i.dp, i64 12
  store i32 %3, ptr %i.dq, align 4, !tbaa !14
  br label %pred.store.continue210.3

pred.store.continue210.3:                         ; preds = %pred.store.if209.3, %pred.store.continue208.3
  %i.dr = extractelement <4 x i1> %i.dg, i64 0
  br i1 %i.dr, label %pred.store.if211.3, label %pred.store.continue212.3

pred.store.if211.3:                               ; preds = %pred.store.continue210.3
  %i.ds = getelementptr i8, ptr %i.ah, i64 %i.dc
  %i.dt = getelementptr i8, ptr %i.ds, i64 16
  store i32 %3, ptr %i.dt, align 4, !tbaa !14
  br label %pred.store.continue212.3

pred.store.continue212.3:                         ; preds = %pred.store.if211.3, %pred.store.continue210.3
  %i.du = extractelement <4 x i1> %i.dg, i64 1
  br i1 %i.du, label %pred.store.if213.3, label %pred.store.continue214.3

pred.store.if213.3:                               ; preds = %pred.store.continue212.3
  %i.dv = getelementptr i8, ptr %i.ah, i64 %i.dc
  %i.dw = getelementptr i8, ptr %i.dv, i64 20
  store i32 %3, ptr %i.dw, align 4, !tbaa !14
  br label %pred.store.continue214.3

pred.store.continue214.3:                         ; preds = %pred.store.if213.3, %pred.store.continue212.3
  %i.dx = extractelement <4 x i1> %i.dg, i64 2
  br i1 %i.dx, label %pred.store.if215.3, label %pred.store.continue216.3

pred.store.if215.3:                               ; preds = %pred.store.continue214.3
  %i.dy = getelementptr i8, ptr %i.ah, i64 %i.dc
  %i.dz = getelementptr i8, ptr %i.dy, i64 24
  store i32 %3, ptr %i.dz, align 4, !tbaa !14
  br label %pred.store.continue216.3

pred.store.continue216.3:                         ; preds = %pred.store.if215.3, %pred.store.continue214.3
  %i.ea = extractelement <4 x i1> %i.dg, i64 3
  br i1 %i.ea, label %pred.store.if217.3, label %middle.block220

pred.store.if217.3:                               ; preds = %pred.store.continue216.3
  %i.eb = getelementptr i8, ptr %i.ah, i64 %i.dc
  %i.ec = getelementptr i8, ptr %i.eb, i64 28
  store i32 %3, ptr %i.ec, align 4, !tbaa !14
  br label %middle.block220

middle.block220:                                  ; preds = %pred.store.continue216.3, %pred.store.if217.3, %pred.store.continue218.2, %pred.store.continue218.1.a
  %cmp.n221 = icmp eq i64 %i.ak, %n.vec199
  br i1 %cmp.n221, label %_ZL15utrie_fillBlockPjiijja.exit, label %.lr.ph19.i.preheader333

.lr.ph19.i.preheader333:                          ; preds = %.lr.ph19.i.preheader, %middle.block220
  %.118.i.idx.ph = phi i64 [ %.idx, %.lr.ph19.i.preheader ], [ %i.ay, %middle.block220 ]
  br label %.lr.ph19.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader334, %.lr.ph.i
  %.017.i.idx = phi i64 [ %.017.i.add, %.lr.ph.i ], [ %.017.i.idx.ph, %.lr.ph.i.preheader334 ] ; 3 uses
  %.017.i.ptr = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.017.i.idx
  %.017.i.add = add nuw nsw i64 %.017.i.idx, 4
  store i32 %3, ptr %.017.i.ptr, align 4, !tbaa !14
  %i.ed = icmp samesign ult i64 %.017.i.idx, 124
  br i1 %i.ed, label %.lr.ph.i, label %_ZL15utrie_fillBlockPjiijja.exit, !llvm.loop !45

.lr.ph19.i:                                       ; preds = %.lr.ph19.i.preheader333, %bb.j
  %.118.i.idx = phi i64 [ %.118.i.add, %bb.j ], [ %.118.i.idx.ph, %.lr.ph19.i.preheader333 ] ; 3 uses
  %.118.i.ptr = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.118.i.idx ; 2 uses
  %i.ee = load i32, ptr %.118.i.ptr, align 4, !tbaa !14
  %i.ef = icmp eq i32 %i.ee, %i.k
  br i1 %i.ef, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph19.i
  store i32 %3, ptr %.118.i.ptr, align 4, !tbaa !14
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph19.i
  %.118.i.add = add nuw nsw i64 %.118.i.idx, 4
  %i.eg = icmp samesign ult i64 %.118.i.idx, 124
  br i1 %i.eg, label %.lr.ph19.i, label %_ZL15utrie_fillBlockPjiijja.exit, !llvm.loop !46

bb.k:                                             ; preds = %_ZL18utrie_getDataBlockP8UNewTriei.exit
  %i.eh = and i32 %2, 31                          ; 2 uses
  %i.ei = zext nneg i32 %i.eh to i64              ; 3 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ei ; 2 uses
  %i.ek = zext nneg i32 %i.l to i64               ; 3 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ek ; 13 uses
  %.not.i102 = icmp eq i8 %4, 0
  %i.em = icmp samesign ult i32 %i.l, %i.eh       ; 2 uses
  br i1 %.not.i102, label %.preheader.i106, label %.preheader15.i103

.preheader15.i103:                                ; preds = %bb.k
  br i1 %i.em, label %.lr.ph.i104.preheader, label %_ZL15utrie_fillBlockPjiijja.exit135

.lr.ph.i104.preheader:                            ; preds = %.preheader15.i103
  %i.en = ptrtoaddr ptr %i.af to i64              ; 2 uses
  %i.eo = shl nuw nsw i64 %i.ag, 2                ; 2 uses
  %i.ep = shl nuw nsw i64 %i.ek, 2                ; 2 uses
  %i.eq = add i64 %i.eo, %i.en                    ; 2 uses
  %i.er = add i64 %i.eq, %i.ep
  %i.es = add i64 %i.er, 4
  %i.et = shl nuw nsw i64 %i.ei, 2
  %i.eu = add i64 %i.eq, %i.et
  %i.ev = tail call i64 @llvm.umax.i64(i64 %i.es, i64 %i.eu)
  %i.ew = xor i64 %i.en, -1
  %i.ex = add i64 %i.ev, %i.ew
  %i.ey = add nuw nsw i64 %i.eo, %i.ep
  %i.ez = sub i64 %i.ex, %i.ey                    ; 2 uses
  %i.fa = lshr i64 %i.ez, 2
  %i.fb = add nuw nsw i64 %i.fa, 1                ; 2 uses
  %min.iters.check224 = icmp ult i64 %i.ez, 28
  br i1 %min.iters.check224, label %.lr.ph.i104.preheader331, label %vector.ph225

vector.ph225:                                     ; preds = %.lr.ph.i104.preheader
  %n.vec226 = and i64 %i.fb, 9223372036854775800  ; 3 uses
  %i.fc = shl i64 %n.vec226, 2
  %i.fd = getelementptr i8, ptr %i.el, i64 %i.fc
  %broadcast.splatinsert227 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat228 = shufflevector <4 x i32> %broadcast.splatinsert227, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body229

vector.body229:                                   ; preds = %vector.body229, %vector.ph225
  %index230 = phi i64 [ 0, %vector.ph225 ], [ %index.next231, %vector.body229 ] ; 2 uses
  %i.fe = shl i64 %index230, 2
  %next.gep = getelementptr i8, ptr %i.el, i64 %i.fe ; 2 uses
  %i.ff = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat228, ptr %next.gep, align 4, !tbaa !14
  store <4 x i32> %broadcast.splat228, ptr %i.ff, align 4, !tbaa !14
  %index.next231 = add nuw i64 %index230, 8       ; 2 uses
  %i.fg = icmp eq i64 %index.next231, %n.vec226
  br i1 %i.fg, label %middle.block232, label %vector.body229, !llvm.loop !47

middle.block232:                                  ; preds = %vector.body229
  %cmp.n233 = icmp eq i64 %i.fb, %n.vec226
  br i1 %cmp.n233, label %_ZL15utrie_fillBlockPjiijja.exit135, label %.lr.ph.i104.preheader331

.lr.ph.i104.preheader331:                         ; preds = %.lr.ph.i104.preheader, %middle.block232
  %.017.i105.ph = phi ptr [ %i.el, %.lr.ph.i104.preheader ], [ %i.fd, %middle.block232 ]
  br label %.lr.ph.i104

.preheader.i106:                                  ; preds = %bb.k
  br i1 %i.em, label %.lr.ph19.i107.preheader, label %_ZL15utrie_fillBlockPjiijja.exit135

.lr.ph19.i107.preheader:                          ; preds = %.preheader.i106
  %i.fh = ptrtoaddr ptr %i.af to i64              ; 2 uses
  %i.fi = shl nuw nsw i64 %i.ag, 2                ; 2 uses
  %i.fj = shl nuw nsw i64 %i.ek, 2                ; 2 uses
  %i.fk = add i64 %i.fi, %i.fh                    ; 2 uses
  %i.fl = add i64 %i.fk, %i.fj
  %i.fm = add i64 %i.fl, 4
  %i.fn = shl nuw nsw i64 %i.ei, 2
  %i.fo = add i64 %i.fk, %i.fn
  %i.fp = tail call i64 @llvm.umax.i64(i64 %i.fm, i64 %i.fo)
  %i.fq = xor i64 %i.fh, -1
  %i.fr = add i64 %i.fp, %i.fq
  %i.fs = add nuw nsw i64 %i.fi, %i.fj
  %i.ft = sub i64 %i.fr, %i.fs                    ; 2 uses
  %i.fu = lshr i64 %i.ft, 2
  %i.fv = add nuw nsw i64 %i.fu, 1                ; 2 uses
  %min.iters.check236 = icmp ult i64 %i.ft, 28
  br i1 %min.iters.check236, label %.lr.ph19.i107.preheader329, label %vector.ph237

vector.ph237:                                     ; preds = %.lr.ph19.i107.preheader
  %n.vec238 = and i64 %i.fv, 9223372036854775800  ; 3 uses
  %i.fw = shl i64 %n.vec238, 2
  %i.fx = getelementptr i8, ptr %i.el, i64 %i.fw
  %broadcast.splatinsert239 = insertelement <4 x i32> poison, i32 %i.k, i64 0
  %broadcast.splat240 = shufflevector <4 x i32> %broadcast.splatinsert239, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body241

vector.body241:                                   ; preds = %pred.store.continue268, %vector.ph237
  %index242 = phi i64 [ 0, %vector.ph237 ], [ %index.next269, %pred.store.continue268 ] ; 2 uses
  %i.fy = shl i64 %index242, 2                    ; 8 uses
  %next.gep243 = getelementptr i8, ptr %i.el, i64 %i.fy ; 3 uses
  %i.fz = getelementptr i8, ptr %i.el, i64 %i.fy
  %next.gep244 = getelementptr i8, ptr %i.fz, i64 4
  %i.ga = getelementptr i8, ptr %i.el, i64 %i.fy
  %next.gep245 = getelementptr i8, ptr %i.ga, i64 8
  %i.gb = getelementptr i8, ptr %i.el, i64 %i.fy
  %next.gep246 = getelementptr i8, ptr %i.gb, i64 12
  %i.gc = getelementptr i8, ptr %i.el, i64 %i.fy
  %next.gep247 = getelementptr i8, ptr %i.gc, i64 16
  %i.gd = getelementptr i8, ptr %i.el, i64 %i.fy
  %next.gep248 = getelementptr i8, ptr %i.gd, i64 20
  %i.ge = getelementptr i8, ptr %i.el, i64 %i.fy
  %next.gep249 = getelementptr i8, ptr %i.ge, i64 24
  %i.gf = getelementptr i8, ptr %i.el, i64 %i.fy
  %next.gep250 = getelementptr i8, ptr %i.gf, i64 28
  %i.gg = getelementptr i8, ptr %next.gep243, i64 16
  %wide.load251 = load <4 x i32>, ptr %next.gep243, align 4, !tbaa !14
  %wide.load252 = load <4 x i32>, ptr %i.gg, align 4, !tbaa !14
  %i.gh = icmp eq <4 x i32> %wide.load251, %broadcast.splat240 ; 4 uses
  %i.gi = icmp eq <4 x i32> %wide.load252, %broadcast.splat240 ; 4 uses
  %i.gj = extractelement <4 x i1> %i.gh, i64 0
  br i1 %i.gj, label %pred.store.if253, label %pred.store.continue254

pred.store.if253:                                 ; preds = %vector.body241
  store i32 %3, ptr %next.gep243, align 4, !tbaa !14
  br label %pred.store.continue254

pred.store.continue254:                           ; preds = %pred.store.if253, %vector.body241
  %i.gk = extractelement <4 x i1> %i.gh, i64 1
  br i1 %i.gk, label %pred.store.if255, label %pred.store.continue256

pred.store.if255:                                 ; preds = %pred.store.continue254
  store i32 %3, ptr %next.gep244, align 4, !tbaa !14
  br label %pred.store.continue256

pred.store.continue256:                           ; preds = %pred.store.if255, %pred.store.continue254
  %i.gl = extractelement <4 x i1> %i.gh, i64 2
  br i1 %i.gl, label %pred.store.if257, label %pred.store.continue258

pred.store.if257:                                 ; preds = %pred.store.continue256
  store i32 %3, ptr %next.gep245, align 4, !tbaa !14
  br label %pred.store.continue258

pred.store.continue258:                           ; preds = %pred.store.if257, %pred.store.continue256
  %i.gm = extractelement <4 x i1> %i.gh, i64 3
  br i1 %i.gm, label %pred.store.if259, label %pred.store.continue260

pred.store.if259:                                 ; preds = %pred.store.continue258
  store i32 %3, ptr %next.gep246, align 4, !tbaa !14
  br label %pred.store.continue260

pred.store.continue260:                           ; preds = %pred.store.if259, %pred.store.continue258
  %i.gn = extractelement <4 x i1> %i.gi, i64 0
  br i1 %i.gn, label %pred.store.if261, label %pred.store.continue262

pred.store.if261:                                 ; preds = %pred.store.continue260
  store i32 %3, ptr %next.gep247, align 4, !tbaa !14
  br label %pred.store.continue262

pred.store.continue262:                           ; preds = %pred.store.if261, %pred.store.continue260
  %i.go = extractelement <4 x i1> %i.gi, i64 1
  br i1 %i.go, label %pred.store.if263, label %pred.store.continue264

pred.store.if263:                                 ; preds = %pred.store.continue262
  store i32 %3, ptr %next.gep248, align 4, !tbaa !14
  br label %pred.store.continue264

pred.store.continue264:                           ; preds = %pred.store.if263, %pred.store.continue262
  %i.gp = extractelement <4 x i1> %i.gi, i64 2
  br i1 %i.gp, label %pred.store.if265, label %pred.store.continue266

pred.store.if265:                                 ; preds = %pred.store.continue264
  store i32 %3, ptr %next.gep249, align 4, !tbaa !14
  br label %pred.store.continue266

pred.store.continue266:                           ; preds = %pred.store.if265, %pred.store.continue264
  %i.gq = extractelement <4 x i1> %i.gi, i64 3
end_hunk_0
