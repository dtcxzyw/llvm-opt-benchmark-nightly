inline.NumInlined: 27
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 30
begin_hunk_0_@utrie_set32_78:bb.a
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
  %narrow327 = sub nuw nsw i32 32, %i.ak
  %i.al = zext nneg i32 %narrow327 to i64         ; 4 uses
  %min.iters.check195 = icmp samesign ugt i32 %i.ak, 24 ; 2 uses
  br i1 %.not.i, label %.lr.ph19.i.preheader, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.h
  br i1 %min.iters.check195, label %.lr.ph.i.preheader337, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.al, 56                      ; 5 uses
  %i.am = shl nuw nsw i64 %n.vec, 2
  %i.an = add nuw nsw i64 %i.am, %.idx
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.ao, align 4
  store <4 x i32> %broadcast.splat, ptr %i.ap, align 4
  %i.aq = icmp eq i64 %n.vec, 8
  br i1 %i.aq, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.idx ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.as, align 4
  store <4 x i32> %broadcast.splat, ptr %i.at, align 4
  %i.au = icmp eq i64 %n.vec, 16
  br i1 %i.au, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %.idx ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.aw, align 4
  store <4 x i32> %broadcast.splat, ptr %i.ax, align 4
  %i.ay = icmp eq i64 %n.vec, 24
  br i1 %i.ay, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.az = getelementptr inbounds nuw i8, ptr %i.ai, i64 96
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %.idx ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.ba, align 4
  store <4 x i32> %broadcast.splat, ptr %i.bb, align 4
  br label %middle.block

middle.block:                                     ; preds = %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %n.vec, %i.al
  br i1 %cmp.n, label %_ZL15utrie_fillBlockPjiijja.exit, label %.lr.ph.i.preheader337

.lr.ph.i.preheader337:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.017.i.idx.ph = phi i64 [ %.idx, %.lr.ph.i.preheader ], [ %i.an, %middle.block ]
  br label %.lr.ph.i

.lr.ph19.i.preheader:                             ; preds = %bb.h
  br i1 %min.iters.check195, label %.lr.ph19.i.preheader336, label %vector.ph196

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
  %i.ct = getelementptr i8, ptr %i.cs, i64 12
  store i32 %3, ptr %i.ct, align 4
  br label %pred.store.continue209.1

pred.store.continue209.1:                         ; preds = %pred.store.if208.1, %pred.store.continue207.1
  %i.cu = extractelement <4 x i1> %i.cj, i64 0
  br i1 %i.cu, label %pred.store.if210.1, label %pred.store.continue211.1

pred.store.if210.1:                               ; preds = %pred.store.continue209.1
  %i.cv = getelementptr i8, ptr %i.ai, i64 %i.cf
  %i.cw = getelementptr i8, ptr %i.cv, i64 16
  store i32 %3, ptr %i.cw, align 4
  br label %pred.store.continue211.1

pred.store.continue211.1:                         ; preds = %pred.store.if210.1, %pred.store.continue209.1
  %i.cx = extractelement <4 x i1> %i.cj, i64 1
  br i1 %i.cx, label %pred.store.if212.1, label %pred.store.continue213.1

pred.store.if212.1:                               ; preds = %pred.store.continue211.1
  %i.cy = getelementptr i8, ptr %i.ai, i64 %i.cf
  %i.cz = getelementptr i8, ptr %i.cy, i64 20
  store i32 %3, ptr %i.cz, align 4
  br label %pred.store.continue213.1

pred.store.continue213.1:                         ; preds = %pred.store.if212.1, %pred.store.continue211.1
  %i.da = extractelement <4 x i1> %i.cj, i64 2
  br i1 %i.da, label %pred.store.if214.1, label %pred.store.continue215.1

pred.store.if214.1:                               ; preds = %pred.store.continue213.1
  %i.db = getelementptr i8, ptr %i.ai, i64 %i.cf
  %i.dc = getelementptr i8, ptr %i.db, i64 24
  store i32 %3, ptr %i.dc, align 4
  br label %pred.store.continue215.1

pred.store.continue215.1:                         ; preds = %pred.store.if214.1, %pred.store.continue213.1
  %i.dd = extractelement <4 x i1> %i.cj, i64 3
  br i1 %i.dd, label %pred.store.if216.1, label %pred.store.continue217.1

pred.store.if216.1:                               ; preds = %pred.store.continue215.1
  %i.de = getelementptr i8, ptr %i.ai, i64 %i.cf
  %i.df = getelementptr i8, ptr %i.de, i64 28
  store i32 %3, ptr %i.df, align 4
  br label %pred.store.continue217.1

pred.store.continue217.1:                         ; preds = %pred.store.if216.1, %pred.store.continue215.1
  %i.dg = icmp eq i64 %n.vec198, 16
  br i1 %i.dg, label %middle.block219, label %vector.body201.2

vector.body201.2:                                 ; preds = %pred.store.continue217.1
  %i.dh = add nuw nsw i64 %.idx, 64               ; 8 uses
end_hunk_0
