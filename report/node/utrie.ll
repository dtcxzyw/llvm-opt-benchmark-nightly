inline.NumInlined: 27
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 30
begin_hunk_0_@utrie_getData_78:bb.a
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 139412
  %i.d = load i32, ptr %i.c, align 4
  store i32 %i.d, ptr %1, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 139392
  %i.f = load ptr, ptr %i.e, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local signext range(i8 0, 2) i8 @utrie_set32_78(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %_ZL18utrie_getDataBlockP8UNewTriei.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 139419
  %i.c = load i8, ptr %i.b, align 1
  %i.d = icmp ne i8 %i.c, 0
  %i.e = icmp ugt i32 %1, 1114111
  %or.cond = or i1 %i.e, %i.d
  br i1 %or.cond, label %_ZL18utrie_getDataBlockP8UNewTriei.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = lshr i32 %1, 5
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 4              ; 3 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZL18utrie_getDataBlockP8UNewTriei.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 139412 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4              ; 5 uses
  %i.m = add nsw i32 %i.l, 32                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 139408
  %i.o = load i32, ptr %i.n, align 8
  %i.p = icmp sgt i32 %i.m, %i.o
  br i1 %i.p, label %_ZL18utrie_getDataBlockP8UNewTriei.exit.thread, label %_ZL20utrie_allocDataBlockP8UNewTrie.exit.i

_ZL20utrie_allocDataBlockP8UNewTrie.exit.i:       ; preds = %bb.d
  store i32 %i.m, ptr %i.k, align 4
  %i.q = icmp slt i32 %i.l, 0
  br i1 %i.q, label %_ZL18utrie_getDataBlockP8UNewTriei.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZL20utrie_allocDataBlockP8UNewTrie.exit.i
  store i32 %i.l, ptr %i.h, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 139392
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
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
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = and i32 %1, 31
  %i.ab = add nuw nsw i32 %.0.i, %i.aa
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ac
  store i32 %2, ptr %i.ad, align 4
  br label %_ZL18utrie_getDataBlockP8UNewTriei.exit.thread

_ZL18utrie_getDataBlockP8UNewTriei.exit.thread:   ; preds = %bb.d, %_ZL20utrie_allocDataBlockP8UNewTrie.exit.i, %bb.a, %bb.b, %_ZL18utrie_getDataBlockP8UNewTriei.exit
  %.0 = phi i8 [ 1, %_ZL18utrie_getDataBlockP8UNewTriei.exit ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %_ZL20utrie_allocDataBlockP8UNewTrie.exit.i ], [ 0, %bb.d ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @utrie_get32_78(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 139419
  %i.c = load i8, ptr %i.b, align 1
  %i.d = icmp ne i8 %i.c, 0
  %i.e = icmp ugt i32 %1, 1114111
  %or.cond = or i1 %i.e, %i.d
  br i1 %or.cond, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not19 = icmp eq ptr %2, null
  br i1 %.not19, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %2, align 1
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.f = lshr i32 %1, 5
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = icmp eq i32 %i.i, 0
  %i.k = zext i1 %i.j to i8
  store i8 %i.k, ptr %2, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 139392
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call i32 @llvm.abs.i32(i32 %i.i, i1 true)
  %i.o = and i32 %1, 31
  %i.p = add nuw nsw i32 %i.n, %i.o
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.d, %bb.g
  %.0 = phi i32 [ %i.s, %bb.g ], [ 0, %bb.d ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local signext range(i8 0, 2) i8 @utrie_setRange32_78(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef signext %4) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %_ZL15utrie_fillBlockPjiijja.exit135, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 139419
  %i.c = load i8, ptr %i.b, align 1
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
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 139392 ; 8 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load i32, ptr %i.j, align 4              ; 39 uses
  %i.l = and i32 %1, 31                           ; 4 uses
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %_ZL15utrie_fillBlockPjiijja.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = lshr i32 %1, 5
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.n ; 2 uses
  %i.p = load i32, ptr %i.o, align 4              ; 3 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %_ZL18utrie_getDataBlockP8UNewTriei.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 139412 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4              ; 5 uses
  %i.t = add nsw i32 %i.s, 32                     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 139408
  %i.v = load i32, ptr %i.u, align 8
  %i.w = icmp sgt i32 %i.t, %i.v
  br i1 %i.w, label %_ZL15utrie_fillBlockPjiijja.exit135, label %_ZL20utrie_allocDataBlockP8UNewTrie.exit.i

_ZL20utrie_allocDataBlockP8UNewTrie.exit.i:       ; preds = %bb.f
  store i32 %i.t, ptr %i.r, align 4
  %i.x = icmp slt i32 %i.s, 0
  br i1 %i.x, label %_ZL15utrie_fillBlockPjiijja.exit135, label %bb.g

bb.g:                                             ; preds = %_ZL20utrie_allocDataBlockP8UNewTrie.exit.i
  store i32 %i.s, ptr %i.o, align 4
  %i.y = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.z = zext nneg i32 %i.s to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.z
  %i.ab = sext i32 %i.p to i64
  %i.ac = sub nsw i64 0, %i.ab
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.aa, ptr noundef nonnull align 4 dereferenceable(128) %i.ad, i64 128, i1 false)
  br label %_ZL18utrie_getDataBlockP8UNewTriei.exit

_ZL18utrie_getDataBlockP8UNewTriei.exit:          ; preds = %bb.g, %bb.e
  %.0.i = phi i32 [ %i.s, %bb.g ], [ %i.p, %bb.e ]
  %i.ae = add nuw nsw i32 %1, 32
  %i.af = and i32 %i.ae, 4194272                  ; 5 uses
  %.not98 = icmp samesign ugt i32 %i.af, %2
  %i.ag = load ptr, ptr %i.i, align 8             ; 3 uses
  %i.ah = zext nneg i32 %.0.i to i64              ; 5 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ah ; 40 uses
  br i1 %.not98, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZL18utrie_getDataBlockP8UNewTriei.exit
  %i.aj = shl nuw nsw i32 %i.l, 2
  %.idx = zext nneg i32 %i.aj to i64              ; 19 uses
  %.not.i = icmp eq i8 %4, 0
  %i.ak = and i32 %1, 31                          ; 2 uses
  %narrow330 = sub nuw nsw i32 32, %i.ak
  %i.al = zext nneg i32 %narrow330 to i64         ; 4 uses
  %min.iters.check195 = icmp samesign ugt i32 %i.ak, 24 ; 2 uses
  br i1 %.not.i, label %.lr.ph19.i.preheader, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.h
  br i1 %min.iters.check195, label %.lr.ph.i.preheader340, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.al, 56                      ; 5 uses
  %i.am = shl nuw nsw i64 %n.vec, 2
  %i.an = add nuw nsw i64 %i.am, %.idx
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  %i.ao = getelementptr i8, ptr %i.ai, i64 %.idx  ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.ao, align 4
  store <4 x i32> %broadcast.splat, ptr %i.ap, align 4
  %i.aq = icmp eq i64 %n.vec, 8
  br i1 %i.aq, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.ar = getelementptr i8, ptr %i.ai, i64 32
  %i.as = getelementptr i8, ptr %i.ar, i64 %.idx  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.as, align 4
  store <4 x i32> %broadcast.splat, ptr %i.at, align 4
  %i.au = icmp eq i64 %n.vec, 16
  br i1 %i.au, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.av = getelementptr i8, ptr %i.ai, i64 64
  %i.aw = getelementptr i8, ptr %i.av, i64 %.idx  ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.aw, align 4
  store <4 x i32> %broadcast.splat, ptr %i.ax, align 4
  %i.ay = icmp eq i64 %n.vec, 24
  br i1 %i.ay, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.az = getelementptr i8, ptr %i.ai, i64 96
  %i.ba = getelementptr i8, ptr %i.az, i64 %.idx  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.ba, align 4
  store <4 x i32> %broadcast.splat, ptr %i.bb, align 4
  br label %middle.block

middle.block:                                     ; preds = %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %n.vec, %i.al
  br i1 %cmp.n, label %_ZL15utrie_fillBlockPjiijja.exit, label %.lr.ph.i.preheader340

.lr.ph.i.preheader340:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.017.i.idx.ph = phi i64 [ %.idx, %.lr.ph.i.preheader ], [ %i.an, %middle.block ]
  br label %.lr.ph.i

.lr.ph19.i.preheader:                             ; preds = %bb.h
  br i1 %min.iters.check195, label %.lr.ph19.i.preheader339, label %vector.ph196

vector.ph196:                                     ; preds = %.lr.ph19.i.preheader
  %n.vec198 = and i64 %i.al, 56                   ; 5 uses
  %i.bc = shl nuw nsw i64 %n.vec198, 2
  %i.bd = add nuw nsw i64 %i.bc, %.idx
  %broadcast.splatinsert199 = insertelement <4 x i32> poison, i32 %i.k, i64 0
  %broadcast.splat200 = shufflevector <4 x i32> %broadcast.splatinsert199, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %wide.load = load <4 x i32>, ptr %i.be, align 4
  %wide.load203 = load <4 x i32>, ptr %i.bf, align 4
  %i.bg = icmp eq <4 x i32> %wide.load, %broadcast.splat200 ; 4 uses
  %i.bh = icmp eq <4 x i32> %wide.load203, %broadcast.splat200 ; 4 uses
  %i.bi = extractelement <4 x i1> %i.bg, i64 0
  br i1 %i.bi, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.ph196
  store i32 %3, ptr %i.be, align 4
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.ph196
  %i.bj = extractelement <4 x i1> %i.bg, i64 1
  br i1 %i.bj, label %pred.store.if204, label %pred.store.continue205

pred.store.if204:                                 ; preds = %pred.store.continue
  %i.bk = getelementptr i8, ptr %i.ai, i64 %.idx
  %i.bl = getelementptr i8, ptr %i.bk, i64 4
  store i32 %3, ptr %i.bl, align 4
  br label %pred.store.continue205

pred.store.continue205:                           ; preds = %pred.store.if204, %pred.store.continue
  %i.bm = extractelement <4 x i1> %i.bg, i64 2
  br i1 %i.bm, label %pred.store.if206, label %pred.store.continue207

pred.store.if206:                                 ; preds = %pred.store.continue205
  %i.bn = getelementptr i8, ptr %i.ai, i64 %.idx
  %i.bo = getelementptr i8, ptr %i.bn, i64 8
  store i32 %3, ptr %i.bo, align 4
  br label %pred.store.continue207

pred.store.continue207:                           ; preds = %pred.store.if206, %pred.store.continue205
  %i.bp = extractelement <4 x i1> %i.bg, i64 3
  br i1 %i.bp, label %pred.store.if208, label %pred.store.continue209

pred.store.if208:                                 ; preds = %pred.store.continue207
  %i.bq = getelementptr i8, ptr %i.ai, i64 %.idx
  %i.br = getelementptr i8, ptr %i.bq, i64 12
  store i32 %3, ptr %i.br, align 4
  br label %pred.store.continue209

pred.store.continue209:                           ; preds = %pred.store.if208, %pred.store.continue207
  %i.bs = extractelement <4 x i1> %i.bh, i64 0
  br i1 %i.bs, label %pred.store.if210, label %pred.store.continue211

pred.store.if210:                                 ; preds = %pred.store.continue209
  %i.bt = getelementptr i8, ptr %i.ai, i64 %.idx
  %i.bu = getelementptr i8, ptr %i.bt, i64 16
  store i32 %3, ptr %i.bu, align 4
  br label %pred.store.continue211

pred.store.continue211:                           ; preds = %pred.store.if210, %pred.store.continue209
  %i.bv = extractelement <4 x i1> %i.bh, i64 1
  br i1 %i.bv, label %pred.store.if212, label %pred.store.continue213

pred.store.if212:                                 ; preds = %pred.store.continue211
  %i.bw = getelementptr i8, ptr %i.ai, i64 %.idx
  %i.bx = getelementptr i8, ptr %i.bw, i64 20
  store i32 %3, ptr %i.bx, align 4
  br label %pred.store.continue213

pred.store.continue213:                           ; preds = %pred.store.if212, %pred.store.continue211
  %i.by = extractelement <4 x i1> %i.bh, i64 2
  br i1 %i.by, label %pred.store.if214, label %pred.store.continue215

pred.store.if214:                                 ; preds = %pred.store.continue213
  %i.bz = getelementptr i8, ptr %i.ai, i64 %.idx
  %i.ca = getelementptr i8, ptr %i.bz, i64 24
  store i32 %3, ptr %i.ca, align 4
  br label %pred.store.continue215

pred.store.continue215:                           ; preds = %pred.store.if214, %pred.store.continue213
  %i.cb = extractelement <4 x i1> %i.bh, i64 3
  br i1 %i.cb, label %pred.store.if216, label %pred.store.continue217

pred.store.if216:                                 ; preds = %pred.store.continue215
  %i.cc = getelementptr i8, ptr %i.ai, i64 %.idx
  %i.cd = getelementptr i8, ptr %i.cc, i64 28
  store i32 %3, ptr %i.cd, align 4
  br label %pred.store.continue217

pred.store.continue217:                           ; preds = %pred.store.if216, %pred.store.continue215
  %i.ce = icmp eq i64 %n.vec198, 8
  br i1 %i.ce, label %middle.block219, label %vector.body201.1

vector.body201.1:                                 ; preds = %pred.store.continue217
  %i.cf = add nuw nsw i64 %.idx, 32               ; 8 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.cf ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %wide.load.1 = load <4 x i32>, ptr %i.cg, align 4
  %wide.load203.1 = load <4 x i32>, ptr %i.ch, align 4
  %i.ci = icmp eq <4 x i32> %wide.load.1, %broadcast.splat200 ; 4 uses
  %i.cj = icmp eq <4 x i32> %wide.load203.1, %broadcast.splat200 ; 4 uses
  %i.ck = extractelement <4 x i1> %i.ci, i64 0
  br i1 %i.ck, label %pred.store.if.1, label %pred.store.continue.1

pred.store.if.1:                                  ; preds = %vector.body201.1
  store i32 %3, ptr %i.cg, align 4
  br label %pred.store.continue.1

pred.store.continue.1:                            ; preds = %pred.store.if.1, %vector.body201.1
  %i.cl = extractelement <4 x i1> %i.ci, i64 1
  br i1 %i.cl, label %pred.store.if204.1, label %pred.store.continue205.1

pred.store.if204.1:                               ; preds = %pred.store.continue.1
  %i.cm = getelementptr i8, ptr %i.ai, i64 %i.cf
  %i.cn = getelementptr i8, ptr %i.cm, i64 4
  store i32 %3, ptr %i.cn, align 4
  br label %pred.store.continue205.1

pred.store.continue205.1:                         ; preds = %pred.store.if204.1, %pred.store.continue.1
  %i.co = extractelement <4 x i1> %i.ci, i64 2
  br i1 %i.co, label %pred.store.if206.1, label %pred.store.continue207.1

pred.store.if206.1:                               ; preds = %pred.store.continue205.1
  %i.cp = getelementptr i8, ptr %i.ai, i64 %i.cf
  %i.cq = getelementptr i8, ptr %i.cp, i64 8
  store i32 %3, ptr %i.cq, align 4
  br label %pred.store.continue207.1

pred.store.continue207.1:                         ; preds = %pred.store.if206.1, %pred.store.continue205.1
  %i.cr = extractelement <4 x i1> %i.ci, i64 3
  br i1 %i.cr, label %pred.store.if208.1, label %pred.store.continue209.1

pred.store.if208.1:                               ; preds = %pred.store.continue207.1
  %i.cs = getelementptr i8, ptr %i.ai, i64 %i.cf
end_hunk_0
begin_hunk_1_@utrie_setRange32_78:bb.a

pred.store.if.2:                                  ; preds = %vector.body201.2
  store i32 %3, ptr %i.di, align 4
  br label %pred.store.continue.2

pred.store.continue.2:                            ; preds = %pred.store.if.2, %vector.body201.2
  %i.dn = extractelement <4 x i1> %i.dk, i64 1
  br i1 %i.dn, label %pred.store.if204.2, label %pred.store.continue205.2

pred.store.if204.2:                               ; preds = %pred.store.continue.2
  %i.do = getelementptr i8, ptr %i.ai, i64 %i.dh
  %i.dp = getelementptr i8, ptr %i.do, i64 4
  store i32 %3, ptr %i.dp, align 4
  br label %pred.store.continue205.2

pred.store.continue205.2:                         ; preds = %pred.store.if204.2, %pred.store.continue.2
  %i.dq = extractelement <4 x i1> %i.dk, i64 2
  br i1 %i.dq, label %pred.store.if206.2, label %pred.store.continue207.2

pred.store.if206.2:                               ; preds = %pred.store.continue205.2
  %i.dr = getelementptr i8, ptr %i.ai, i64 %i.dh
  %i.ds = getelementptr i8, ptr %i.dr, i64 8
  store i32 %3, ptr %i.ds, align 4
  br label %pred.store.continue207.2

pred.store.continue207.2:                         ; preds = %pred.store.if206.2, %pred.store.continue205.2
  %i.dt = extractelement <4 x i1> %i.dk, i64 3
  br i1 %i.dt, label %pred.store.if208.2, label %pred.store.continue209.2

pred.store.if208.2:                               ; preds = %pred.store.continue207.2
  %i.du = getelementptr i8, ptr %i.ai, i64 %i.dh
  %i.dv = getelementptr i8, ptr %i.du, i64 12
  store i32 %3, ptr %i.dv, align 4
  br label %pred.store.continue209.2

pred.store.continue209.2:                         ; preds = %pred.store.if208.2, %pred.store.continue207.2
  %i.dw = extractelement <4 x i1> %i.dl, i64 0
  br i1 %i.dw, label %pred.store.if210.2, label %pred.store.continue211.2

pred.store.if210.2:                               ; preds = %pred.store.continue209.2
  %i.dx = getelementptr i8, ptr %i.ai, i64 %i.dh
  %i.dy = getelementptr i8, ptr %i.dx, i64 16
  store i32 %3, ptr %i.dy, align 4
  br label %pred.store.continue211.2

pred.store.continue211.2:                         ; preds = %pred.store.if210.2, %pred.store.continue209.2
  %i.dz = extractelement <4 x i1> %i.dl, i64 1
  br i1 %i.dz, label %pred.store.if212.2, label %pred.store.continue213.2

pred.store.if212.2:                               ; preds = %pred.store.continue211.2
  %i.ea = getelementptr i8, ptr %i.ai, i64 %i.dh
  %i.eb = getelementptr i8, ptr %i.ea, i64 20
  store i32 %3, ptr %i.eb, align 4
  br label %pred.store.continue213.2

pred.store.continue213.2:                         ; preds = %pred.store.if212.2, %pred.store.continue211.2
  %i.ec = extractelement <4 x i1> %i.dl, i64 2
  br i1 %i.ec, label %pred.store.if214.2, label %pred.store.continue215.2

pred.store.if214.2:                               ; preds = %pred.store.continue213.2
  %i.ed = getelementptr i8, ptr %i.ai, i64 %i.dh
  %i.ee = getelementptr i8, ptr %i.ed, i64 24
  store i32 %3, ptr %i.ee, align 4
  br label %pred.store.continue215.2

pred.store.continue215.2:                         ; preds = %pred.store.if214.2, %pred.store.continue213.2
  %i.ef = extractelement <4 x i1> %i.dl, i64 3
  br i1 %i.ef, label %pred.store.if216.2, label %pred.store.continue217.2

pred.store.if216.2:                               ; preds = %pred.store.continue215.2
  %i.eg = getelementptr i8, ptr %i.ai, i64 %i.dh
  %i.eh = getelementptr i8, ptr %i.eg, i64 28
  store i32 %3, ptr %i.eh, align 4
  br label %pred.store.continue217.2

pred.store.continue217.2:                         ; preds = %pred.store.if216.2, %pred.store.continue215.2
  %i.ei = icmp eq i64 %n.vec198, 24
  br i1 %i.ei, label %middle.block219, label %vector.body201.3

vector.body201.3:                                 ; preds = %pred.store.continue217.2
  %i.ej = add nuw nsw i64 %.idx, 96               ; 8 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ej ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %wide.load.3 = load <4 x i32>, ptr %i.ek, align 4
  %wide.load203.3 = load <4 x i32>, ptr %i.el, align 4
  %i.em = icmp eq <4 x i32> %wide.load.3, %broadcast.splat200 ; 4 uses
  %i.en = icmp eq <4 x i32> %wide.load203.3, %broadcast.splat200 ; 4 uses
  %i.eo = extractelement <4 x i1> %i.em, i64 0
  br i1 %i.eo, label %pred.store.if.3, label %pred.store.continue.3

pred.store.if.3:                                  ; preds = %vector.body201.3
  store i32 %3, ptr %i.ek, align 4
  br label %pred.store.continue.3

pred.store.continue.3:                            ; preds = %pred.store.if.3, %vector.body201.3
  %i.ep = extractelement <4 x i1> %i.em, i64 1
  br i1 %i.ep, label %pred.store.if204.3, label %pred.store.continue205.3

pred.store.if204.3:                               ; preds = %pred.store.continue.3
  %i.eq = getelementptr i8, ptr %i.ai, i64 %i.ej
  %i.er = getelementptr i8, ptr %i.eq, i64 4
  store i32 %3, ptr %i.er, align 4
  br label %pred.store.continue205.3

pred.store.continue205.3:                         ; preds = %pred.store.if204.3, %pred.store.continue.3
  %i.es = extractelement <4 x i1> %i.em, i64 2
  br i1 %i.es, label %pred.store.if206.3, label %pred.store.continue207.3

pred.store.if206.3:                               ; preds = %pred.store.continue205.3
  %i.et = getelementptr i8, ptr %i.ai, i64 %i.ej
  %i.eu = getelementptr i8, ptr %i.et, i64 8
  store i32 %3, ptr %i.eu, align 4
  br label %pred.store.continue207.3

pred.store.continue207.3:                         ; preds = %pred.store.if206.3, %pred.store.continue205.3
  %i.ev = extractelement <4 x i1> %i.em, i64 3
  br i1 %i.ev, label %pred.store.if208.3, label %pred.store.continue209.3

pred.store.if208.3:                               ; preds = %pred.store.continue207.3
  %i.ew = getelementptr i8, ptr %i.ai, i64 %i.ej
  %i.ex = getelementptr i8, ptr %i.ew, i64 12
  store i32 %3, ptr %i.ex, align 4
  br label %pred.store.continue209.3

pred.store.continue209.3:                         ; preds = %pred.store.if208.3, %pred.store.continue207.3
  %i.ey = extractelement <4 x i1> %i.en, i64 0
  br i1 %i.ey, label %pred.store.if210.3, label %pred.store.continue211.3

pred.store.if210.3:                               ; preds = %pred.store.continue209.3
  %i.ez = getelementptr i8, ptr %i.ai, i64 %i.ej
  %i.fa = getelementptr i8, ptr %i.ez, i64 16
  store i32 %3, ptr %i.fa, align 4
  br label %pred.store.continue211.3

pred.store.continue211.3:                         ; preds = %pred.store.if210.3, %pred.store.continue209.3
  %i.fb = extractelement <4 x i1> %i.en, i64 1
  br i1 %i.fb, label %pred.store.if212.3, label %pred.store.continue213.3

pred.store.if212.3:                               ; preds = %pred.store.continue211.3
  %i.fc = getelementptr i8, ptr %i.ai, i64 %i.ej
  %i.fd = getelementptr i8, ptr %i.fc, i64 20
  store i32 %3, ptr %i.fd, align 4
  br label %pred.store.continue213.3

pred.store.continue213.3:                         ; preds = %pred.store.if212.3, %pred.store.continue211.3
  %i.fe = extractelement <4 x i1> %i.en, i64 2
  br i1 %i.fe, label %pred.store.if214.3, label %pred.store.continue215.3

pred.store.if214.3:                               ; preds = %pred.store.continue213.3
  %i.ff = getelementptr i8, ptr %i.ai, i64 %i.ej
  %i.fg = getelementptr i8, ptr %i.ff, i64 24
  store i32 %3, ptr %i.fg, align 4
  br label %pred.store.continue215.3

pred.store.continue215.3:                         ; preds = %pred.store.if214.3, %pred.store.continue213.3
  %i.fh = extractelement <4 x i1> %i.en, i64 3
  br i1 %i.fh, label %pred.store.if216.3, label %middle.block219

pred.store.if216.3:                               ; preds = %pred.store.continue215.3
  %i.fi = getelementptr i8, ptr %i.ai, i64 %i.ej
  %i.fj = getelementptr i8, ptr %i.fi, i64 28
  store i32 %3, ptr %i.fj, align 4
  br label %middle.block219

middle.block219:                                  ; preds = %pred.store.continue215.3, %pred.store.if216.3, %pred.store.continue217.2, %pred.store.continue217.1, %pred.store.continue217
  %cmp.n220 = icmp eq i64 %n.vec198, %i.al
  br i1 %cmp.n220, label %_ZL15utrie_fillBlockPjiijja.exit, label %.lr.ph19.i.preheader339

.lr.ph19.i.preheader339:                          ; preds = %.lr.ph19.i.preheader, %middle.block219
  %.118.i.idx.ph = phi i64 [ %.idx, %.lr.ph19.i.preheader ], [ %i.bd, %middle.block219 ]
  br label %.lr.ph19.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader340, %.lr.ph.i
  %.017.i.idx = phi i64 [ %.017.i.add, %.lr.ph.i ], [ %.017.i.idx.ph, %.lr.ph.i.preheader340 ] ; 3 uses
  %.017.i.ptr = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.017.i.idx
  %.017.i.add = add nuw nsw i64 %.017.i.idx, 4
  store i32 %3, ptr %.017.i.ptr, align 4
  %i.fk = icmp samesign ult i64 %.017.i.idx, 124
  br i1 %i.fk, label %.lr.ph.i, label %_ZL15utrie_fillBlockPjiijja.exit, !llvm.loop !7

.lr.ph19.i:                                       ; preds = %.lr.ph19.i.preheader339, %bb.j
  %.118.i.idx = phi i64 [ %.118.i.add, %bb.j ], [ %.118.i.idx.ph, %.lr.ph19.i.preheader339 ] ; 3 uses
  %.118.i.ptr = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.118.i.idx ; 2 uses
  %i.fl = load i32, ptr %.118.i.ptr, align 4
  %i.fm = icmp eq i32 %i.fl, %i.k
  br i1 %i.fm, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph19.i
  store i32 %3, ptr %.118.i.ptr, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph19.i
  %.118.i.add = add nuw nsw i64 %.118.i.idx, 4
  %i.fn = icmp samesign ult i64 %.118.i.idx, 124
  br i1 %i.fn, label %.lr.ph19.i, label %_ZL15utrie_fillBlockPjiijja.exit, !llvm.loop !10

bb.k:                                             ; preds = %_ZL18utrie_getDataBlockP8UNewTriei.exit
  %i.fo = and i32 %2, 31                          ; 2 uses
  %i.fp = zext nneg i32 %i.fo to i64              ; 3 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.fp ; 2 uses
  %i.fr = zext nneg i32 %i.l to i64               ; 5 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.fr ; 13 uses
  %.not.i102 = icmp eq i8 %4, 0
  %i.ft = icmp samesign ult i32 %i.l, %i.fo       ; 2 uses
  br i1 %.not.i102, label %.preheader.i106, label %.preheader15.i103

.preheader15.i103:                                ; preds = %bb.k
  br i1 %i.ft, label %.lr.ph.i104.preheader, label %_ZL15utrie_fillBlockPjiijja.exit135

.lr.ph.i104.preheader:                            ; preds = %.preheader15.i103
  %5 = ptrtoint ptr %i.ag to i64                  ; 2 uses
  %i.fu = shl nuw nsw i64 %i.ah, 2
  %6 = shl nuw nsw i64 %i.fr, 2
  %7 = add i64 %i.fu, %5                          ; 2 uses
  %i.fv = add i64 %7, %6
  %i.fw = add i64 %i.fv, 4
  %i.fx = shl nuw nsw i64 %i.fp, 2
  %i.fy = add i64 %7, %i.fx
  %umax = tail call i64 @llvm.umax.i64(i64 %i.fw, i64 %i.fy)
  %8 = add nuw nsw i64 %i.ah, %i.fr
  %9 = shl nuw nsw i64 %8, 2
  %i.fz = add i64 %9, %5
  %10 = xor i64 %i.fz, -1
  %11 = add i64 %umax, %10                        ; 2 uses
  %i.ga = lshr i64 %11, 2
  %i.gb = add nuw nsw i64 %i.ga, 1                ; 2 uses
  %min.iters.check223 = icmp ult i64 %11, 28
  br i1 %min.iters.check223, label %.lr.ph.i104.preheader337, label %vector.ph224

vector.ph224:                                     ; preds = %.lr.ph.i104.preheader
  %n.vec226 = and i64 %i.gb, 9223372036854775800  ; 3 uses
  %i.gc = shl i64 %n.vec226, 2
  %i.gd = getelementptr i8, ptr %i.fs, i64 %i.gc
  %broadcast.splatinsert227 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat228 = shufflevector <4 x i32> %broadcast.splatinsert227, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body229

vector.body229:                                   ; preds = %vector.body229, %vector.ph224
  %index230 = phi i64 [ 0, %vector.ph224 ], [ %index.next231, %vector.body229 ] ; 2 uses
  %i.ge = shl i64 %index230, 2
  %next.gep = getelementptr i8, ptr %i.fs, i64 %i.ge ; 2 uses
  %i.gf = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat228, ptr %next.gep, align 4
  store <4 x i32> %broadcast.splat228, ptr %i.gf, align 4
  %index.next231 = add nuw i64 %index230, 8       ; 2 uses
  %i.gg = icmp eq i64 %index.next231, %n.vec226
  br i1 %i.gg, label %middle.block232, label %vector.body229, !llvm.loop !11

middle.block232:                                  ; preds = %vector.body229
  %cmp.n233 = icmp eq i64 %i.gb, %n.vec226
  br i1 %cmp.n233, label %_ZL15utrie_fillBlockPjiijja.exit135, label %.lr.ph.i104.preheader337

.lr.ph.i104.preheader337:                         ; preds = %.lr.ph.i104.preheader, %middle.block232
  %.017.i105.ph = phi ptr [ %i.fs, %.lr.ph.i104.preheader ], [ %i.gd, %middle.block232 ]
  br label %.lr.ph.i104

.preheader.i106:                                  ; preds = %bb.k
  br i1 %i.ft, label %.lr.ph19.i107.preheader, label %_ZL15utrie_fillBlockPjiijja.exit135

.lr.ph19.i107.preheader:                          ; preds = %.preheader.i106
  %12 = ptrtoint ptr %i.ag to i64                 ; 2 uses
  %i.gh = shl nuw nsw i64 %i.ah, 2
  %13 = shl nuw nsw i64 %i.fr, 2
  %14 = add i64 %i.gh, %12                        ; 2 uses
  %i.gi = add i64 %14, %13
  %i.gj = add i64 %i.gi, 4
  %i.gk = shl nuw nsw i64 %i.fp, 2
  %i.gl = add i64 %14, %i.gk
  %umax235 = tail call i64 @llvm.umax.i64(i64 %i.gj, i64 %i.gl)
  %15 = add nuw nsw i64 %i.ah, %i.fr
  %16 = shl nuw nsw i64 %15, 2
  %i.gm = add i64 %16, %12
  %17 = xor i64 %i.gm, -1
  %18 = add i64 %umax235, %17                     ; 2 uses
  %i.gn = lshr i64 %18, 2
  %i.go = add nuw nsw i64 %i.gn, 1                ; 2 uses
  %min.iters.check237 = icmp ult i64 %18, 28
  br i1 %min.iters.check237, label %.lr.ph19.i107.preheader335, label %vector.ph238

vector.ph238:                                     ; preds = %.lr.ph19.i107.preheader
  %n.vec240 = and i64 %i.go, 9223372036854775800  ; 3 uses
  %i.gp = shl i64 %n.vec240, 2
  %i.gq = getelementptr i8, ptr %i.fs, i64 %i.gp
  %broadcast.splatinsert241 = insertelement <4 x i32> poison, i32 %i.k, i64 0
  %broadcast.splat242 = shufflevector <4 x i32> %broadcast.splatinsert241, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body243

vector.body243:                                   ; preds = %pred.store.continue270, %vector.ph238
  %index244 = phi i64 [ 0, %vector.ph238 ], [ %index.next271, %pred.store.continue270 ] ; 2 uses
  %i.gr = shl i64 %index244, 2                    ; 8 uses
  %next.gep245.a = getelementptr i8, ptr %i.fs, i64 %i.gr ; 3 uses
  %i.gs = getelementptr i8, ptr %i.fs, i64 %i.gr
  %next.gep246.a = getelementptr i8, ptr %i.gs, i64 4
  %i.gt = getelementptr i8, ptr %i.fs, i64 %i.gr
  %next.gep247.a = getelementptr i8, ptr %i.gt, i64 8
  %i.gu = getelementptr i8, ptr %i.fs, i64 %i.gr
  %next.gep248.a = getelementptr i8, ptr %i.gu, i64 12
  %i.gv = getelementptr i8, ptr %i.fs, i64 %i.gr
  %next.gep249.a = getelementptr i8, ptr %i.gv, i64 16
  %i.gw = getelementptr i8, ptr %i.fs, i64 %i.gr
  %next.gep250.a = getelementptr i8, ptr %i.gw, i64 20
  %i.gx = getelementptr i8, ptr %i.fs, i64 %i.gr
  %next.gep251.a = getelementptr i8, ptr %i.gx, i64 24
  %i.gy = getelementptr i8, ptr %i.fs, i64 %i.gr
  %next.gep252 = getelementptr i8, ptr %i.gy, i64 28
  %i.gz = getelementptr i8, ptr %next.gep245.a, i64 16
  %wide.load253.a = load <4 x i32>, ptr %next.gep245.a, align 4
  %wide.load254 = load <4 x i32>, ptr %i.gz, align 4
  %i.ha = icmp eq <4 x i32> %wide.load253.a, %broadcast.splat242 ; 4 uses
  %i.hb = icmp eq <4 x i32> %wide.load254, %broadcast.splat242 ; 4 uses
  %i.hc = extractelement <4 x i1> %i.ha, i64 0
  br i1 %i.hc, label %pred.store.if255, label %pred.store.continue256

pred.store.if255:                                 ; preds = %vector.body243
  store i32 %3, ptr %next.gep245.a, align 4
  br label %pred.store.continue256

pred.store.continue256:                           ; preds = %pred.store.if255, %vector.body243
  %i.hd = extractelement <4 x i1> %i.ha, i64 1
  br i1 %i.hd, label %pred.store.if257, label %pred.store.continue258

pred.store.if257:                                 ; preds = %pred.store.continue256
  store i32 %3, ptr %next.gep246.a, align 4
  br label %pred.store.continue258

pred.store.continue258:                           ; preds = %pred.store.if257, %pred.store.continue256
  %i.he = extractelement <4 x i1> %i.ha, i64 2
  br i1 %i.he, label %pred.store.if259, label %pred.store.continue260

pred.store.if259:                                 ; preds = %pred.store.continue258
  store i32 %3, ptr %next.gep247.a, align 4
  br label %pred.store.continue260

pred.store.continue260:                           ; preds = %pred.store.if259, %pred.store.continue258
  %i.hf = extractelement <4 x i1> %i.ha, i64 3
  br i1 %i.hf, label %pred.store.if261, label %pred.store.continue262

pred.store.if261:                                 ; preds = %pred.store.continue260
  store i32 %3, ptr %next.gep248.a, align 4
  br label %pred.store.continue262

pred.store.continue262:                           ; preds = %pred.store.if261, %pred.store.continue260
  %i.hg = extractelement <4 x i1> %i.hb, i64 0
  br i1 %i.hg, label %pred.store.if263, label %pred.store.continue264

pred.store.if263:                                 ; preds = %pred.store.continue262
  store i32 %3, ptr %next.gep249.a, align 4
  br label %pred.store.continue264

pred.store.continue264:                           ; preds = %pred.store.if263, %pred.store.continue262
  %i.hh = extractelement <4 x i1> %i.hb, i64 1
  br i1 %i.hh, label %pred.store.if265, label %pred.store.continue266

pred.store.if265:                                 ; preds = %pred.store.continue264
  store i32 %3, ptr %next.gep250.a, align 4
  br label %pred.store.continue266

pred.store.continue266:                           ; preds = %pred.store.if265, %pred.store.continue264
  %i.hi = extractelement <4 x i1> %i.hb, i64 2
  br i1 %i.hi, label %pred.store.if267, label %pred.store.continue268

pred.store.if267:                                 ; preds = %pred.store.continue266
  store i32 %3, ptr %next.gep251.a, align 4
  br label %pred.store.continue268

pred.store.continue268:                           ; preds = %pred.store.if267, %pred.store.continue266
  %i.hj = extractelement <4 x i1> %i.hb, i64 3
  br i1 %i.hj, label %pred.store.if269, label %pred.store.continue270

pred.store.if269:                                 ; preds = %pred.store.continue268
  store i32 %3, ptr %next.gep252, align 4
  br label %pred.store.continue270

pred.store.continue270:                           ; preds = %pred.store.if269, %pred.store.continue268
  %index.next271 = add nuw i64 %index244, 8       ; 2 uses
  %i.hk = icmp eq i64 %index.next271, %n.vec240
  br i1 %i.hk, label %middle.block272, label %vector.body243, !llvm.loop !12

middle.block272:                                  ; preds = %pred.store.continue270
  %cmp.n273 = icmp eq i64 %i.go, %n.vec240
  br i1 %cmp.n273, label %_ZL15utrie_fillBlockPjiijja.exit135, label %.lr.ph19.i107.preheader335

.lr.ph19.i107.preheader335:                       ; preds = %.lr.ph19.i107.preheader, %middle.block272
  %.118.i108.ph = phi ptr [ %i.fs, %.lr.ph19.i107.preheader ], [ %i.gq, %middle.block272 ]
  br label %.lr.ph19.i107

.lr.ph.i104:                                      ; preds = %.lr.ph.i104.preheader337, %.lr.ph.i104
  %.017.i105 = phi ptr [ %i.hl, %.lr.ph.i104 ], [ %.017.i105.ph, %.lr.ph.i104.preheader337 ] ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.017.i105, i64 4 ; 2 uses
  store i32 %3, ptr %.017.i105, align 4
  %i.hm = icmp ult ptr %i.hl, %i.fq
  br i1 %i.hm, label %.lr.ph.i104, label %_ZL15utrie_fillBlockPjiijja.exit135, !llvm.loop !13

.lr.ph19.i107:                                    ; preds = %.lr.ph19.i107.preheader335, %bb.m
  %.118.i108 = phi ptr [ %i.hp, %bb.m ], [ %.118.i108.ph, %.lr.ph19.i107.preheader335 ] ; 3 uses
  %i.hn = load i32, ptr %.118.i108, align 4
  %i.ho = icmp eq i32 %i.hn, %i.k
  br i1 %i.ho, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph19.i107
  store i32 %3, ptr %.118.i108, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph19.i107
  %i.hp = getelementptr inbounds nuw i8, ptr %.118.i108, i64 4 ; 2 uses
  %i.hq = icmp ult ptr %i.hp, %i.fq
  br i1 %i.hq, label %.lr.ph19.i107, label %_ZL15utrie_fillBlockPjiijja.exit135, !llvm.loop !14

_ZL15utrie_fillBlockPjiijja.exit:                 ; preds = %.lr.ph.i, %bb.j, %middle.block, %middle.block219, %bb.d
  %.184 = phi i32 [ %1, %bb.d ], [ %i.af, %middle.block219 ], [ %i.af, %middle.block ], [ %i.af, %bb.j ], [ %i.af, %.lr.ph.i ] ; 3 uses
  %i.hr = and i32 %2, 31                          ; 2 uses
  %i.hs = and i32 %2, 2097120                     ; 2 uses
  %i.ht = icmp slt i32 %.184, %i.hs
  br i1 %i.ht, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZL15utrie_fillBlockPjiijja.exit
  %i.hu = icmp ne i32 %3, %i.k
  %. = sext i1 %i.hu to i32
  %i.hv = icmp ne i8 %4, 0
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 139412 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 139408
  %.not.i110 = icmp eq i8 %4, 0
  %i.hy = zext nneg i32 %.184 to i64
  %i.hz = insertelement <4 x i32> poison, i32 %3, i64 0
  %i.ia = shufflevector <4 x i32> %i.hz, <4 x i32> poison, <4 x i32> zeroinitializer ; 16 uses
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %_ZL15utrie_fillBlockPjiijja.exit117
  %indvars.iv = phi i64 [ %i.hy, %.lr.ph ], [ %indvars.iv.next, %_ZL15utrie_fillBlockPjiijja.exit117 ] ; 2 uses
  %.182152 = phi i32 [ %., %.lr.ph ], [ %.2, %_ZL15utrie_fillBlockPjiijja.exit117 ] ; 7 uses
  %i.ib = lshr i64 %indvars.iv, 5
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ib ; 4 uses
  %i.id = load i32, ptr %i.ic, align 4            ; 5 uses
  %i.ie = icmp sgt i32 %i.id, 0
  %i.if = load ptr, ptr %i.i, align 8             ; 2 uses
  br i1 %i.ie, label %bb.o, label %bb.av

bb.o:                                             ; preds = %bb.n
  %i.ig = zext nneg i32 %i.id to i64
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.ig ; 41 uses
  br i1 %.not.i110, label %.lr.ph19.i115.preheader, label %.lr.ph.i112.preheader

.lr.ph.i112.preheader:                            ; preds = %bb.o
  store <4 x i32> %i.ia, ptr %i.ih, align 4
  %.017.i113.ptr.4 = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  store <4 x i32> %i.ia, ptr %.017.i113.ptr.4, align 4
  %.017.i113.ptr.8 = getelementptr inbounds nuw i8, ptr %i.ih, i64 32
  store <4 x i32> %i.ia, ptr %.017.i113.ptr.8, align 4
  %.017.i113.ptr.12 = getelementptr inbounds nuw i8, ptr %i.ih, i64 48
  store <4 x i32> %i.ia, ptr %.017.i113.ptr.12, align 4
  %.017.i113.ptr.16 = getelementptr inbounds nuw i8, ptr %i.ih, i64 64
  store <4 x i32> %i.ia, ptr %.017.i113.ptr.16, align 4
  %.017.i113.ptr.20 = getelementptr inbounds nuw i8, ptr %i.ih, i64 80
  store <4 x i32> %i.ia, ptr %.017.i113.ptr.20, align 4
  %.017.i113.ptr.24 = getelementptr inbounds nuw i8, ptr %i.ih, i64 96
  store <4 x i32> %i.ia, ptr %.017.i113.ptr.24, align 4
  %.017.i113.ptr.28 = getelementptr inbounds nuw i8, ptr %i.ih, i64 112
  store <4 x i32> %i.ia, ptr %.017.i113.ptr.28, align 4
  br label %_ZL15utrie_fillBlockPjiijja.exit117

.lr.ph19.i115.preheader:                          ; preds = %bb.o
  %i.ii = load i32, ptr %i.ih, align 4
  %i.ij = icmp eq i32 %i.ii, %i.k
  br i1 %i.ij, label %bb.p, label %.lr.ph19.i115.1

bb.p:                                             ; preds = %.lr.ph19.i115.preheader
  store i32 %3, ptr %i.ih, align 4
  br label %.lr.ph19.i115.1

.lr.ph19.i115.1:                                  ; preds = %bb.p, %.lr.ph19.i115.preheader
  %.118.i116.ptr.1 = getelementptr inbounds nuw i8, ptr %i.ih, i64 4 ; 2 uses
  %i.ik = load i32, ptr %.118.i116.ptr.1, align 4
  %i.il = icmp eq i32 %i.ik, %i.k
  br i1 %i.il, label %bb.q, label %.lr.ph19.i115.2

bb.q:                                             ; preds = %.lr.ph19.i115.1
  store i32 %3, ptr %.118.i116.ptr.1, align 4
end_hunk_1
begin_hunk_2_@utrie_setRange32_78:bb.a
  %i.kc = load i32, ptr %.118.i116.ptr.23, align 4
  %i.kd = icmp eq i32 %i.kc, %i.k
  br i1 %i.kd, label %bb.am, label %.lr.ph19.i115.24

bb.am:                                            ; preds = %.lr.ph19.i115.23
  store i32 %3, ptr %.118.i116.ptr.23, align 4
  br label %.lr.ph19.i115.24

.lr.ph19.i115.24:                                 ; preds = %bb.am, %.lr.ph19.i115.23
  %.118.i116.ptr.24 = getelementptr inbounds nuw i8, ptr %i.ih, i64 96 ; 2 uses
  %i.ke = load i32, ptr %.118.i116.ptr.24, align 4
  %i.kf = icmp eq i32 %i.ke, %i.k
  br i1 %i.kf, label %bb.an, label %.lr.ph19.i115.25

bb.an:                                            ; preds = %.lr.ph19.i115.24
  store i32 %3, ptr %.118.i116.ptr.24, align 4
  br label %.lr.ph19.i115.25

.lr.ph19.i115.25:                                 ; preds = %bb.an, %.lr.ph19.i115.24
  %.118.i116.ptr.25 = getelementptr inbounds nuw i8, ptr %i.ih, i64 100 ; 2 uses
  %i.kg = load i32, ptr %.118.i116.ptr.25, align 4
  %i.kh = icmp eq i32 %i.kg, %i.k
  br i1 %i.kh, label %bb.ao, label %.lr.ph19.i115.26

bb.ao:                                            ; preds = %.lr.ph19.i115.25
  store i32 %3, ptr %.118.i116.ptr.25, align 4
  br label %.lr.ph19.i115.26

.lr.ph19.i115.26:                                 ; preds = %bb.ao, %.lr.ph19.i115.25
  %.118.i116.ptr.26 = getelementptr inbounds nuw i8, ptr %i.ih, i64 104 ; 2 uses
  %i.ki = load i32, ptr %.118.i116.ptr.26, align 4
  %i.kj = icmp eq i32 %i.ki, %i.k
  br i1 %i.kj, label %bb.ap, label %.lr.ph19.i115.27

bb.ap:                                            ; preds = %.lr.ph19.i115.26
  store i32 %3, ptr %.118.i116.ptr.26, align 4
  br label %.lr.ph19.i115.27

.lr.ph19.i115.27:                                 ; preds = %bb.ap, %.lr.ph19.i115.26
  %.118.i116.ptr.27 = getelementptr inbounds nuw i8, ptr %i.ih, i64 108 ; 2 uses
  %i.kk = load i32, ptr %.118.i116.ptr.27, align 4
  %i.kl = icmp eq i32 %i.kk, %i.k
  br i1 %i.kl, label %bb.aq, label %.lr.ph19.i115.28

bb.aq:                                            ; preds = %.lr.ph19.i115.27
  store i32 %3, ptr %.118.i116.ptr.27, align 4
  br label %.lr.ph19.i115.28

.lr.ph19.i115.28:                                 ; preds = %bb.aq, %.lr.ph19.i115.27
  %.118.i116.ptr.28 = getelementptr inbounds nuw i8, ptr %i.ih, i64 112 ; 2 uses
  %i.km = load i32, ptr %.118.i116.ptr.28, align 4
  %i.kn = icmp eq i32 %i.km, %i.k
  br i1 %i.kn, label %bb.ar, label %.lr.ph19.i115.29

bb.ar:                                            ; preds = %.lr.ph19.i115.28
  store i32 %3, ptr %.118.i116.ptr.28, align 4
  br label %.lr.ph19.i115.29

.lr.ph19.i115.29:                                 ; preds = %bb.ar, %.lr.ph19.i115.28
  %.118.i116.ptr.29 = getelementptr inbounds nuw i8, ptr %i.ih, i64 116 ; 2 uses
  %i.ko = load i32, ptr %.118.i116.ptr.29, align 4
  %i.kp = icmp eq i32 %i.ko, %i.k
  br i1 %i.kp, label %bb.as, label %.lr.ph19.i115.30

bb.as:                                            ; preds = %.lr.ph19.i115.29
  store i32 %3, ptr %.118.i116.ptr.29, align 4
  br label %.lr.ph19.i115.30

.lr.ph19.i115.30:                                 ; preds = %bb.as, %.lr.ph19.i115.29
  %.118.i116.ptr.30 = getelementptr inbounds nuw i8, ptr %i.ih, i64 120 ; 2 uses
  %i.kq = load i32, ptr %.118.i116.ptr.30, align 4
  %i.kr = icmp eq i32 %i.kq, %i.k
  br i1 %i.kr, label %bb.at, label %.lr.ph19.i115.31

bb.at:                                            ; preds = %.lr.ph19.i115.30
  store i32 %3, ptr %.118.i116.ptr.30, align 4
  br label %.lr.ph19.i115.31

.lr.ph19.i115.31:                                 ; preds = %bb.at, %.lr.ph19.i115.30
  %.118.i116.ptr.31 = getelementptr inbounds nuw i8, ptr %i.ih, i64 124 ; 2 uses
  %i.ks = load i32, ptr %.118.i116.ptr.31, align 4
  %i.kt = icmp eq i32 %i.ks, %i.k
  br i1 %i.kt, label %bb.au, label %_ZL15utrie_fillBlockPjiijja.exit117

bb.au:                                            ; preds = %.lr.ph19.i115.31
  store i32 %3, ptr %.118.i116.ptr.31, align 4
  br label %_ZL15utrie_fillBlockPjiijja.exit117

bb.av:                                            ; preds = %bb.n
  %i.ku = sub nsw i32 0, %i.id
  %i.kv = zext nneg i32 %i.ku to i64
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.kv
  %i.kx = load i32, ptr %i.kw, align 4
  %.not100 = icmp ne i32 %i.kx, %3
  %i.ky = icmp eq i32 %i.id, 0
  %or.cond5 = or i1 %i.hv, %i.ky
  %or.cond153 = and i1 %.not100, %or.cond5
  br i1 %or.cond153, label %bb.aw, label %_ZL15utrie_fillBlockPjiijja.exit117

bb.aw:                                            ; preds = %bb.av
  %i.kz = icmp sgt i32 %.182152, -1
  br i1 %i.kz, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.la = sub nsw i32 0, %.182152
  store i32 %i.la, ptr %i.ic, align 4
  br label %_ZL15utrie_fillBlockPjiijja.exit117

bb.ay:                                            ; preds = %bb.aw
  %i.lb = load i32, ptr %i.hw, align 4            ; 6 uses
  %i.lc = add nsw i32 %i.lb, 32                   ; 2 uses
  %i.ld = load i32, ptr %i.hx, align 8
  %i.le = icmp sgt i32 %i.lc, %i.ld
  br i1 %i.le, label %_ZL15utrie_fillBlockPjiijja.exit135, label %_ZL20utrie_allocDataBlockP8UNewTrie.exit.i118

_ZL20utrie_allocDataBlockP8UNewTrie.exit.i118:    ; preds = %bb.ay
  store i32 %i.lc, ptr %i.hw, align 4
  %i.lf = icmp slt i32 %i.lb, 0
  br i1 %i.lf, label %_ZL15utrie_fillBlockPjiijja.exit135, label %.lr.ph.i122

.lr.ph.i122:                                      ; preds = %_ZL20utrie_allocDataBlockP8UNewTrie.exit.i118
  store i32 %i.lb, ptr %i.ic, align 4
  %i.lg = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.lh = zext nneg i32 %i.lb to i64              ; 2 uses
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.lg, i64 %i.lh
  %i.lj = sext i32 %i.id to i64
  %i.lk = sub nsw i64 0, %i.lj
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.lg, i64 %i.lk
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.li, ptr noundef nonnull align 4 dereferenceable(128) %i.ll, i64 128, i1 false)
  %i.lm = sub nsw i32 0, %i.lb
  store i32 %i.lm, ptr %i.ic, align 4
  %i.ln = load ptr, ptr %i.i, align 8
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %i.lh ; 8 uses
  store <4 x i32> %i.ia, ptr %i.lo, align 4
  %.017.i123.ptr.4 = getelementptr inbounds nuw i8, ptr %i.lo, i64 16
  store <4 x i32> %i.ia, ptr %.017.i123.ptr.4, align 4
  %.017.i123.ptr.8 = getelementptr inbounds nuw i8, ptr %i.lo, i64 32
  store <4 x i32> %i.ia, ptr %.017.i123.ptr.8, align 4
  %.017.i123.ptr.12 = getelementptr inbounds nuw i8, ptr %i.lo, i64 48
  store <4 x i32> %i.ia, ptr %.017.i123.ptr.12, align 4
  %.017.i123.ptr.16 = getelementptr inbounds nuw i8, ptr %i.lo, i64 64
  store <4 x i32> %i.ia, ptr %.017.i123.ptr.16, align 4
  %.017.i123.ptr.20 = getelementptr inbounds nuw i8, ptr %i.lo, i64 80
  store <4 x i32> %i.ia, ptr %.017.i123.ptr.20, align 4
  %.017.i123.ptr.24 = getelementptr inbounds nuw i8, ptr %i.lo, i64 96
  store <4 x i32> %i.ia, ptr %.017.i123.ptr.24, align 4
  %.017.i123.ptr.28 = getelementptr inbounds nuw i8, ptr %i.lo, i64 112
  store <4 x i32> %i.ia, ptr %.017.i123.ptr.28, align 4
  br label %_ZL15utrie_fillBlockPjiijja.exit117

_ZL15utrie_fillBlockPjiijja.exit117:              ; preds = %.lr.ph19.i115.31, %bb.au, %.lr.ph.i122, %.lr.ph.i112.preheader, %bb.av, %bb.ax
  %.2 = phi i32 [ %.182152, %bb.av ], [ %.182152, %bb.ax ], [ %.182152, %.lr.ph.i112.preheader ], [ %i.lb, %.lr.ph.i122 ], [ %.182152, %bb.au ], [ %.182152, %.lr.ph19.i115.31 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32 ; 2 uses
  %i.lp = trunc nuw i64 %indvars.iv.next to i32   ; 2 uses
  %i.lq = icmp sgt i32 %i.hs, %i.lp
  br i1 %i.lq, label %bb.n, label %._crit_edge, !llvm.loop !15

._crit_edge:                                      ; preds = %_ZL15utrie_fillBlockPjiijja.exit117, %_ZL15utrie_fillBlockPjiijja.exit
  %.285.lcssa = phi i32 [ %.184, %_ZL15utrie_fillBlockPjiijja.exit ], [ %i.lp, %_ZL15utrie_fillBlockPjiijja.exit117 ]
  %.not99 = icmp eq i32 %i.hr, 0
  br i1 %.not99, label %_ZL15utrie_fillBlockPjiijja.exit135, label %bb.az

bb.az:                                            ; preds = %._crit_edge
  %i.lr = lshr i32 %.285.lcssa, 5
  %i.ls = zext nneg i32 %i.lr to i64
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ls ; 2 uses
  %i.lu = load i32, ptr %i.lt, align 4            ; 3 uses
  %i.lv = icmp sgt i32 %i.lu, 0
  br i1 %i.lv, label %._ZL18utrie_getDataBlockP8UNewTriei.exit127_crit_edge, label %bb.ba

._ZL18utrie_getDataBlockP8UNewTriei.exit127_crit_edge: ; preds = %bb.az
  %.pre = zext nneg i32 %i.lu to i64
  br label %_ZL18utrie_getDataBlockP8UNewTriei.exit127

bb.ba:                                            ; preds = %bb.az
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 139412 ; 2 uses
  %i.lx = load i32, ptr %i.lw, align 4            ; 4 uses
  %i.ly = add nsw i32 %i.lx, 32                   ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 139408
  %i.ma = load i32, ptr %i.lz, align 8
  %i.mb = icmp sgt i32 %i.ly, %i.ma
  br i1 %i.mb, label %_ZL15utrie_fillBlockPjiijja.exit135, label %_ZL20utrie_allocDataBlockP8UNewTrie.exit.i125

_ZL20utrie_allocDataBlockP8UNewTrie.exit.i125:    ; preds = %bb.ba
  store i32 %i.ly, ptr %i.lw, align 4
  %i.mc = icmp slt i32 %i.lx, 0
  br i1 %i.mc, label %_ZL15utrie_fillBlockPjiijja.exit135, label %bb.bb

bb.bb:                                            ; preds = %_ZL20utrie_allocDataBlockP8UNewTrie.exit.i125
  store i32 %i.lx, ptr %i.lt, align 4
  %i.md = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.me = zext nneg i32 %i.lx to i64              ; 2 uses
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.me
  %i.mg = sext i32 %i.lu to i64
  %i.mh = sub nsw i64 0, %i.mg
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.mh
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.mf, ptr noundef nonnull align 4 dereferenceable(128) %i.mi, i64 128, i1 false)
  br label %_ZL18utrie_getDataBlockP8UNewTriei.exit127

_ZL18utrie_getDataBlockP8UNewTriei.exit127:       ; preds = %._ZL18utrie_getDataBlockP8UNewTriei.exit127_crit_edge, %bb.bb
  %.pre-phi = phi i64 [ %.pre, %._ZL18utrie_getDataBlockP8UNewTriei.exit127_crit_edge ], [ %i.me, %bb.bb ] ; 3 uses
  %i.mj = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %.pre-phi ; 14 uses
  %i.ml = zext nneg i32 %i.hr to i64              ; 2 uses
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %i.ml ; 2 uses
  %.not.i128 = icmp eq i8 %4, 0
  %19 = ptrtoint ptr %i.mj to i64                 ; 2 uses
  %i.mn = shl nuw nsw i64 %.pre-phi, 2
  %20 = shl nuw nsw i64 %i.ml, 2
  %21 = add i64 %i.mn, %19                        ; 2 uses
  %i.mo = add i64 %21, %20
  %i.mp = add i64 %21, 4
  %umax290 = tail call i64 @llvm.umax.i64(i64 %i.mo, i64 %i.mp)
  %22 = shl nuw nsw i64 %.pre-phi, 2
  %i.mq = add i64 %22, %19
  %23 = xor i64 %i.mq, -1
  %24 = add i64 %umax290, %23                     ; 2 uses
  %i.mr = lshr i64 %24, 2
  %i.ms = add nuw nsw i64 %i.mr, 1                ; 4 uses
  %min.iters.check292 = icmp ult i64 %24, 28      ; 2 uses
  br i1 %.not.i128, label %.lr.ph19.i133.preheader, label %.lr.ph.i130.preheader

.lr.ph.i130.preheader:                            ; preds = %_ZL18utrie_getDataBlockP8UNewTriei.exit127
  br i1 %min.iters.check292, label %.lr.ph.i130.preheader332, label %vector.ph278

vector.ph278:                                     ; preds = %.lr.ph.i130.preheader
  %n.vec280 = and i64 %i.ms, 9223372036854775800  ; 3 uses
  %i.mt = shl i64 %n.vec280, 2
  %i.mu = getelementptr i8, ptr %i.mk, i64 %i.mt
  %broadcast.splatinsert281 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat282 = shufflevector <4 x i32> %broadcast.splatinsert281, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body283

vector.body283:                                   ; preds = %vector.body283, %vector.ph278
  %index284 = phi i64 [ 0, %vector.ph278 ], [ %index.next286, %vector.body283 ] ; 2 uses
  %i.mv = shl i64 %index284, 2
  %next.gep285 = getelementptr i8, ptr %i.mk, i64 %i.mv ; 2 uses
  %i.mw = getelementptr i8, ptr %next.gep285, i64 16
  store <4 x i32> %broadcast.splat282, ptr %next.gep285, align 4
  store <4 x i32> %broadcast.splat282, ptr %i.mw, align 4
  %index.next286 = add nuw i64 %index284, 8       ; 2 uses
  %i.mx = icmp eq i64 %index.next286, %n.vec280
  br i1 %i.mx, label %middle.block287, label %vector.body283, !llvm.loop !16

middle.block287:                                  ; preds = %vector.body283
  %cmp.n288 = icmp eq i64 %i.ms, %n.vec280
  br i1 %cmp.n288, label %_ZL15utrie_fillBlockPjiijja.exit135, label %.lr.ph.i130.preheader332

.lr.ph.i130.preheader332:                         ; preds = %.lr.ph.i130.preheader, %middle.block287
  %.017.i131.ph = phi ptr [ %i.mk, %.lr.ph.i130.preheader ], [ %i.mu, %middle.block287 ]
  br label %.lr.ph.i130

.lr.ph19.i133.preheader:                          ; preds = %_ZL18utrie_getDataBlockP8UNewTriei.exit127
  br i1 %min.iters.check292, label %.lr.ph19.i133.preheader331, label %vector.ph293

vector.ph293:                                     ; preds = %.lr.ph19.i133.preheader
  %n.vec295 = and i64 %i.ms, 9223372036854775800  ; 3 uses
  %i.my = shl i64 %n.vec295, 2
  %i.mz = getelementptr i8, ptr %i.mk, i64 %i.my
  %broadcast.splatinsert296 = insertelement <4 x i32> poison, i32 %i.k, i64 0
  %broadcast.splat297 = shufflevector <4 x i32> %broadcast.splatinsert296, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body298

vector.body298:                                   ; preds = %pred.store.continue325, %vector.ph293
  %index299 = phi i64 [ 0, %vector.ph293 ], [ %index.next326, %pred.store.continue325 ] ; 2 uses
  %i.na = shl i64 %index299, 2                    ; 8 uses
  %next.gep300.a = getelementptr i8, ptr %i.mk, i64 %i.na ; 3 uses
  %i.nb = getelementptr i8, ptr %i.mk, i64 %i.na
  %next.gep301.a = getelementptr i8, ptr %i.nb, i64 4
  %i.nc = getelementptr i8, ptr %i.mk, i64 %i.na
  %next.gep302.a = getelementptr i8, ptr %i.nc, i64 8
  %i.nd = getelementptr i8, ptr %i.mk, i64 %i.na
  %next.gep303.a = getelementptr i8, ptr %i.nd, i64 12
  %i.ne = getelementptr i8, ptr %i.mk, i64 %i.na
  %next.gep304.a = getelementptr i8, ptr %i.ne, i64 16
  %i.nf = getelementptr i8, ptr %i.mk, i64 %i.na
  %next.gep305 = getelementptr i8, ptr %i.nf, i64 20
  %i.ng = getelementptr i8, ptr %i.mk, i64 %i.na
  %next.gep306 = getelementptr i8, ptr %i.ng, i64 24
  %i.nh = getelementptr i8, ptr %i.mk, i64 %i.na
  %next.gep307 = getelementptr i8, ptr %i.nh, i64 28
  %i.ni = getelementptr i8, ptr %next.gep300.a, i64 16
  %wide.load308 = load <4 x i32>, ptr %next.gep300.a, align 4
  %wide.load309 = load <4 x i32>, ptr %i.ni, align 4
  %i.nj = icmp eq <4 x i32> %wide.load308, %broadcast.splat297 ; 4 uses
  %i.nk = icmp eq <4 x i32> %wide.load309, %broadcast.splat297 ; 4 uses
  %i.nl = extractelement <4 x i1> %i.nj, i64 0
  br i1 %i.nl, label %pred.store.if310, label %pred.store.continue311

pred.store.if310:                                 ; preds = %vector.body298
  store i32 %3, ptr %next.gep300.a, align 4
  br label %pred.store.continue311

pred.store.continue311:                           ; preds = %pred.store.if310, %vector.body298
  %i.nm = extractelement <4 x i1> %i.nj, i64 1
  br i1 %i.nm, label %pred.store.if312, label %pred.store.continue313

pred.store.if312:                                 ; preds = %pred.store.continue311
  store i32 %3, ptr %next.gep301.a, align 4
  br label %pred.store.continue313

pred.store.continue313:                           ; preds = %pred.store.if312, %pred.store.continue311
  %i.nn = extractelement <4 x i1> %i.nj, i64 2
  br i1 %i.nn, label %pred.store.if314, label %pred.store.continue315

pred.store.if314:                                 ; preds = %pred.store.continue313
  store i32 %3, ptr %next.gep302.a, align 4
  br label %pred.store.continue315

pred.store.continue315:                           ; preds = %pred.store.if314, %pred.store.continue313
  %i.no = extractelement <4 x i1> %i.nj, i64 3
  br i1 %i.no, label %pred.store.if316, label %pred.store.continue317

pred.store.if316:                                 ; preds = %pred.store.continue315
  store i32 %3, ptr %next.gep303.a, align 4
  br label %pred.store.continue317

pred.store.continue317:                           ; preds = %pred.store.if316, %pred.store.continue315
  %i.np = extractelement <4 x i1> %i.nk, i64 0
  br i1 %i.np, label %pred.store.if318, label %pred.store.continue319

pred.store.if318:                                 ; preds = %pred.store.continue317
  store i32 %3, ptr %next.gep304.a, align 4
  br label %pred.store.continue319

pred.store.continue319:                           ; preds = %pred.store.if318, %pred.store.continue317
  %i.nq = extractelement <4 x i1> %i.nk, i64 1
  br i1 %i.nq, label %pred.store.if320, label %pred.store.continue321

pred.store.if320:                                 ; preds = %pred.store.continue319
  store i32 %3, ptr %next.gep305, align 4
  br label %pred.store.continue321

pred.store.continue321:                           ; preds = %pred.store.if320, %pred.store.continue319
  %i.nr = extractelement <4 x i1> %i.nk, i64 2
  br i1 %i.nr, label %pred.store.if322, label %pred.store.continue323

pred.store.if322:                                 ; preds = %pred.store.continue321
  store i32 %3, ptr %next.gep306, align 4
  br label %pred.store.continue323

pred.store.continue323:                           ; preds = %pred.store.if322, %pred.store.continue321
  %i.ns = extractelement <4 x i1> %i.nk, i64 3
  br i1 %i.ns, label %pred.store.if324, label %pred.store.continue325

pred.store.if324:                                 ; preds = %pred.store.continue323
  store i32 %3, ptr %next.gep307, align 4
  br label %pred.store.continue325

pred.store.continue325:                           ; preds = %pred.store.if324, %pred.store.continue323
  %index.next326 = add nuw i64 %index299, 8       ; 2 uses
  %i.nt = icmp eq i64 %index.next326, %n.vec295
  br i1 %i.nt, label %middle.block327, label %vector.body298, !llvm.loop !17

middle.block327:                                  ; preds = %pred.store.continue325
  %cmp.n328 = icmp eq i64 %i.ms, %n.vec295
  br i1 %cmp.n328, label %_ZL15utrie_fillBlockPjiijja.exit135, label %.lr.ph19.i133.preheader331

.lr.ph19.i133.preheader331:                       ; preds = %.lr.ph19.i133.preheader, %middle.block327
  %.118.i134.ph = phi ptr [ %i.mk, %.lr.ph19.i133.preheader ], [ %i.mz, %middle.block327 ]
  br label %.lr.ph19.i133

.lr.ph.i130:                                      ; preds = %.lr.ph.i130.preheader332, %.lr.ph.i130
  %.017.i131 = phi ptr [ %i.nu, %.lr.ph.i130 ], [ %.017.i131.ph, %.lr.ph.i130.preheader332 ] ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %.017.i131, i64 4 ; 2 uses
  store i32 %3, ptr %.017.i131, align 4
  %i.nv = icmp ult ptr %i.nu, %i.mm
  br i1 %i.nv, label %.lr.ph.i130, label %_ZL15utrie_fillBlockPjiijja.exit135, !llvm.loop !18

.lr.ph19.i133:                                    ; preds = %.lr.ph19.i133.preheader331, %bb.bd
  %.118.i134 = phi ptr [ %i.ny, %bb.bd ], [ %.118.i134.ph, %.lr.ph19.i133.preheader331 ] ; 3 uses
  %i.nw = load i32, ptr %.118.i134, align 4
  %i.nx = icmp eq i32 %i.nw, %i.k
  br i1 %i.nx, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %.lr.ph19.i133
  store i32 %3, ptr %.118.i134, align 4
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %.lr.ph19.i133
  %i.ny = getelementptr inbounds nuw i8, ptr %.118.i134, i64 4 ; 2 uses
  %i.nz = icmp ult ptr %i.ny, %i.mm
  br i1 %i.nz, label %.lr.ph19.i133, label %_ZL15utrie_fillBlockPjiijja.exit135, !llvm.loop !19

_ZL15utrie_fillBlockPjiijja.exit135:              ; preds = %.lr.ph.i104, %bb.m, %_ZL20utrie_allocDataBlockP8UNewTrie.exit.i118, %bb.ay, %.lr.ph.i130, %bb.bd, %middle.block232, %middle.block272, %middle.block287, %middle.block327, %bb.ba, %_ZL20utrie_allocDataBlockP8UNewTrie.exit.i125, %bb.f, %_ZL20utrie_allocDataBlockP8UNewTrie.exit.i, %.preheader.i106, %.preheader15.i103, %._crit_edge, %bb.c, %bb.a, %bb.b
  %.1 = phi i8 [ 0, %bb.ba ], [ 0, %bb.a ], [ 1, %bb.c ], [ 0, %bb.f ], [ 0, %_ZL20utrie_allocDataBlockP8UNewTrie.exit.i125 ], [ 0, %bb.b ], [ 1, %._crit_edge ], [ 1, %middle.block287 ], [ 1, %middle.block272 ], [ 1, %middle.block327 ], [ 1, %.preheader.i106 ], [ 1, %.preheader15.i103 ], [ 0, %_ZL20utrie_allocDataBlockP8UNewTrie.exit.i ], [ 0, %_ZL20utrie_allocDataBlockP8UNewTrie.exit.i118 ], [ 1, %middle.block232 ], [ 1, %bb.m ], [ 1, %bb.bd ], [ 1, %.lr.ph.i130 ], [ 0, %bb.ay ], [ 1, %.lr.ph.i104 ]
  ret i8 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i32 @utrie_serialize_78(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i8 noundef signext %4, ptr nofree noundef captures(address_is_null) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i32], align 16              ; 4 uses
  %i.b = icmp eq ptr %5, null
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %5, align 4                ; 2 uses
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
  store i32 1, ptr %5, align 4
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 139419 ; 3 uses
  %i.j = load i8, ptr %i.i, align 1
end_hunk_2
