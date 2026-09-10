Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/quickjs?download=true
inline.NumInlined: 10959
inline.NumDeleted: 614
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 85
loop-unroll.NumUnrolled: 175
begin_hunk_0_@__JS_FindAtom:bb.a
  %.010.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.y, %hash_string8.exit.loopexit.unr-lcssa ]
  %.079.i.epil.init = phi i32 [ 1, %.lr.ph.i.preheader ], [ %i.x, %hash_string8.exit.loopexit.unr-lcssa ]
  %lcmp.mod14 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod14)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.010.i.epil = phi i64 [ %i.ae, %.lr.ph.i.epil ], [ %.010.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.079.i.epil = phi i32 [ %i.ad, %.lr.ph.i.epil ], [ %.079.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.z = mul i32 %.079.i.epil, 263
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %.010.i.epil
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !218
  %i.ac = zext i8 %i.ab to i32
  %i.ad = add i32 %i.z, %i.ac                     ; 2 uses
  %i.ae = add nuw i64 %.010.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %hash_string8.exit, label %.lr.ph.i.epil, !llvm.loop !1036

hash_string8.exit:                                ; preds = %hash_string8.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %.07.lcssa.i = phi i32 [ 1, %bb.a ], [ %i.x, %hash_string8.exit.loopexit.unr-lcssa ], [ %i.ad, %.lr.ph.i.epil ]
  %i.af = trunc i64 %2 to i32
  %i.ag = mul i32 %i.af, 29918791
  %i.ah = xor i32 %.07.lcssa.i, %i.ag
  %i.ai = and i32 %i.ah, 268435455                ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !242
  %i.al = add nsw i32 %i.ak, -1
  %i.am = and i32 %i.ai, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !243
  %i.ap = zext nneg i32 %i.am to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ap
  %.036 = load i32, ptr %i.aq, align 4, !tbaa !191 ; 2 uses
  %.not37 = icmp eq i32 %.036, 0
  br i1 %.not37, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %hash_string8.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !297
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %.038 = phi i32 [ %.036, %.lr.ph ], [ %.0, %bb.j ] ; 4 uses
  %i.at = zext i32 %.038 to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !299 ; 7 uses
  %i.aw = load i64, ptr %i.av, align 8            ; 5 uses
  %i.ax = lshr i64 %i.aw, 32
  %i.ay = trunc nuw i64 %i.ax to i32
  %i.az = and i32 %i.ay, 268435455
  %i.ba = icmp eq i32 %i.az, %i.ai
  %.mask = and i64 %i.aw, -4611686018427387904
  %i.bb = icmp eq i64 %.mask, 4611686018427387904
  %or.cond = and i1 %i.bb, %i.ba
  %i.bc = and i64 %i.aw, 2147483647
  %i.bd = icmp eq i64 %i.bc, %2
  %or.cond27 = and i1 %i.bd, %or.cond
  %i.be = and i64 %i.aw, 2147483648
  %i.bf = icmp eq i64 %i.be, 0
  %or.cond29 = and i1 %i.bf, %or.cond27
  br i1 %or.cond29, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.bg = lshr i64 %i.aw, 60
  %i.bh = trunc nuw nsw i64 %i.bg to i32
  %i.bi = and i32 %i.bh, 3
  switch i32 %i.bi, label %default.unreachable [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  %i.bj = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  br label %str8.exit

bb.e:                                             ; preds = %bb.c
  %i.bk = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !389
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !390
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bp
  br label %str8.exit

bb.f:                                             ; preds = %bb.c
  %i.br = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !239
  br label %str8.exit

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.g:                                             ; preds = %bb.c
  tail call void @abort() #50
  unreachable

str8.exit:                                        ; preds = %bb.d, %bb.e, %bb.f
  %.0.i.i = phi ptr [ %i.bj, %bb.d ], [ %i.bq, %bb.e ], [ %i.bs, %bb.f ]
  %bcmp = tail call i32 @bcmp(ptr %.0.i.i, ptr %1, i64 %2)
  %i.bt = icmp eq i32 %bcmp, 0
  br i1 %i.bt, label %bb.h, label %bb.j

bb.h:                                             ; preds = %str8.exit
  %i.bu = icmp slt i32 %.038, 242
  br i1 %i.bu, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bv = getelementptr inbounds i8, ptr %i.av, i64 -4 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !191
  %i.bx = add nsw i32 %i.bw, 1
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !191
  br label %.loopexit

bb.j:                                             ; preds = %str8.exit, %bb.b
  %i.by = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.0 = load i32, ptr %i.by, align 8, !tbaa !191  ; 2 uses
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !1037

.loopexit:                                        ; preds = %bb.j, %hash_string8.exit, %bb.h, %bb.i
  %.033 = phi i32 [ %.038, %bb.i ], [ %.038, %bb.h ], [ 0, %hash_string8.exit ], [ 0, %bb.j ]
  ret i32 %.033
}

; Function Attrs: nounwind uwtable
define { i64, i64 } @JS_NewStringLen(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %bb.b, label %bb.c, !prof !192

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !232
  %i.f = getelementptr i8, ptr %i.e, i64 1104
  %.val = load ptr, ptr %i.f, align 8, !tbaa !297
  %i.g = getelementptr i8, ptr %.val, i64 384
  %.val.val = load ptr, ptr %i.g, align 8, !tbaa !299 ; 2 uses
  %i.h = ptrtoint ptr %.val.val to i64
  %i.i = getelementptr inbounds i8, ptr %.val.val, i64 -4 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !191
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 4, !tbaa !191
  br label %js_alloc_string.exit.thread

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #49
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.c
  %n.vec = and i64 %2, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.p, %vector.body ]
  %vec.phi112 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.q, %vector.body ]
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %wide.load = load <4 x i8>, ptr %i.l, align 1, !tbaa !218
  %wide.load113 = load <4 x i8>, ptr %i.m, align 1, !tbaa !218
  %i.n = zext <4 x i8> %wide.load to <4 x i32>
  %i.o = zext <4 x i8> %wide.load113 to <4 x i32>
  %i.p = or <4 x i32> %vec.phi, %i.n              ; 2 uses
  %i.q = or <4 x i32> %vec.phi112, %i.o           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !1038

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.q, %i.p
  %i.s = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.c, %middle.block
  %.045.i.ph = phi i32 [ 0, %bb.c ], [ %i.s, %middle.block ]
  %.03244.i.ph = phi i64 [ 0, %bb.c ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.045.i = phi i32 [ %i.w, %scalar.ph ], [ %.045.i.ph, %scalar.ph.preheader ]
  %.03244.i = phi i64 [ %i.x, %scalar.ph ], [ %.03244.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %.03244.i
  %i.u = load i8, ptr %i.t, align 1, !tbaa !218
  %i.v = zext i8 %i.u to i32
  %i.w = or i32 %.045.i, %i.v                     ; 2 uses
  %i.x = add nuw i64 %.03244.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.x, %2
  br i1 %exitcond.not.i, label %.loopexit, label %scalar.ph, !llvm.loop !1039

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %.lcssa111 = phi i32 [ %i.s, %middle.block ], [ %i.w, %scalar.ph ]
  %3 = icmp samesign ugt i32 %.lcssa111, 127
  br i1 %3, label %.lr.ph.i, label %utf8_scan.exit

.lr.ph.i:                                         ; preds = %.loopexit
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  %i.z = ptrtoint ptr %i.y to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %.lr.ph.i
  %.02748.i = phi i32 [ 1, %.lr.ph.i ], [ %.3.i, %bb.k ] ; 4 uses
  %.02847.i = phi i64 [ 0, %.lr.ph.i ], [ %.230.i, %bb.k ] ; 2 uses
  %.03346.i = phi ptr [ %1, %.lr.ph.i ], [ %.134.i, %bb.k ] ; 5 uses
  %i.aa = add i64 %.02847.i, 1                    ; 4 uses
  %.ptr.i = getelementptr inbounds nuw i8, ptr %.03346.i, i64 1 ; 2 uses
  %i.ab = load i8, ptr %.03346.i, align 1, !tbaa !218 ; 3 uses
  %i.ac = icmp slt i8 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.ad = ptrtoint ptr %.03346.i to i64
  %i.ae = sub i64 %i.z, %i.ad                     ; 2 uses
  switch i64 %i.ae, label %utf8_decode_len.exit.i [
    i64 0, label %.thread.i
    i64 1, label %bb.h
    i64 2, label %bb.f
    i64 3, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.af = icmp samesign ult i8 %i.ab, -32
  br i1 %i.af, label %utf8_decode_len.exit.i, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ag = icmp samesign ult i8 %i.ab, -16
  br i1 %i.ag, label %utf8_decode_len.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  br label %.thread.i

.thread.i:                                        ; preds = %bb.h, %bb.e
  %i.ah = phi i32 [ 10, %bb.h ], [ 2, %bb.e ]
  %storemerge.idx.i = phi i64 [ 1, %bb.h ], [ %i.ae, %bb.e ]
  %storemerge.ptr.i = getelementptr inbounds nuw i8, ptr %.03346.i, i64 %storemerge.idx.i ; 2 uses
  store ptr %storemerge.ptr.i, ptr %i.b, align 8, !tbaa !364
  %i.ai = or i32 %i.ah, %.02748.i
  br label %bb.k

utf8_decode_len.exit.i:                           ; preds = %bb.g, %bb.f, %bb.e
  %i.aj = call fastcc i32 @utf8_decode(ptr noundef nonnull %.03346.i, ptr noundef nonnull %i.b) ; 2 uses
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !364 ; 4 uses
  %i.al = icmp eq ptr %i.ak, %.ptr.i
  %i.am = or i32 %.02748.i, 8
  %spec.select.i = select i1 %i.al, i32 %i.am, i32 %.02748.i ; 3 uses
  %i.an = icmp ugt i32 %i.aj, 255
  br i1 %i.an, label %bb.i, label %bb.k

bb.i:                                             ; preds = %utf8_decode_len.exit.i
  %i.ao = or i32 %spec.select.i, 2
  %i.ap = icmp ugt i32 %i.aj, 65535
  br i1 %i.ap, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aq = add i64 %.02847.i, 2
  %i.ar = or i32 %spec.select.i, 6
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %utf8_decode_len.exit.i, %.thread.i, %bb.d
  %.134.i = phi ptr [ %.ptr.i, %bb.d ], [ %i.ak, %bb.i ], [ %i.ak, %bb.j ], [ %i.ak, %utf8_decode_len.exit.i ], [ %storemerge.ptr.i, %.thread.i ] ; 2 uses
  %.230.i = phi i64 [ %i.aa, %bb.d ], [ %i.aa, %bb.i ], [ %i.aq, %bb.j ], [ %i.aa, %utf8_decode_len.exit.i ], [ %i.aa, %.thread.i ] ; 2 uses
  %.3.i = phi i32 [ %.02748.i, %bb.d ], [ %i.ao, %bb.i ], [ %i.ar, %bb.j ], [ %spec.select.i, %utf8_decode_len.exit.i ], [ %i.ai, %.thread.i ] ; 2 uses
  %i.as = icmp ult ptr %.134.i, %i.y
  br i1 %i.as, label %bb.d, label %utf8_scan.exit, !llvm.loop !1040

utf8_scan.exit:                                   ; preds = %bb.k, %.loopexit
  %.331.i = phi i64 [ %2, %.loopexit ], [ %.230.i, %bb.k ] ; 14 uses
  %.4.i = phi i32 [ 0, %.loopexit ], [ %.3.i, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #49
  %i.at = icmp ugt i64 %.331.i, 1073741823
  br i1 %i.at, label %bb.l, label %bb.m, !prof !192

bb.l:                                             ; preds = %utf8_scan.exit
  %i.au = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowRangeError(ptr noundef %0, ptr noundef nonnull @.str.3) ; 0 uses
  br label %js_alloc_string.exit.thread

bb.m:                                             ; preds = %utf8_scan.exit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !232 ; 21 uses
  switch i32 %.4.i, label %bb.aj [
    i32 0, label %bb.n
    i32 1, label %bb.v
  ]

bb.n:                                             ; preds = %bb.m
  %i.ax = add nuw nsw i64 %.331.i, 25             ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 40 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 48 ; 3 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !196
  %i.bb = add i64 %i.ba, %i.ax
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !197
  %i.be = add i64 %i.bd, -1
  %i.bf = icmp ugt i64 %i.bb, %i.be
  br i1 %i.bf, label %bb.t, label %bb.o, !prof !192

bb.o:                                             ; preds = %bb.n
  %i.bg = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %i.aw, i64 noundef %i.ax) ; 8 uses
  %.not.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i, label %._crit_edge91, label %bb.p

._crit_edge91:                                    ; preds = %bb.o
  %.pre92 = load ptr, ptr %i.av, align 8, !tbaa !232
  br label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.bh = load i64, ptr %i.ay, align 8, !tbaa !217
  %i.bi = add i64 %i.bh, 1
  store i64 %i.bi, ptr %i.ay, align 8, !tbaa !217
  %i.bj = getelementptr inbounds i8, ptr %i.bg, i64 -8 ; 3 uses
  %i.bk = load i16, ptr %i.bj, align 8, !tbaa !218
  %i.bl = icmp eq i16 %i.bk, -1
  br i1 %i.bl, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aw, i64 1064
  %i.bn = icmp eq ptr %i.bj, %i.bm
  br i1 %i.bn, label %str8.exit39, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !219
  %i.bq = tail call i64 %i.bp(ptr noundef nonnull %i.bj) #49, !inline_history !24 ; 2 uses
  %.not15.i.i.i = icmp eq i64 %i.bq, 0
  %i.br = select i1 %.not15.i.i.i, i64 8, i64 %i.bq
  br label %str8.exit39

bb.s:                                             ; preds = %bb.p
  %i.bs = getelementptr inbounds i8, ptr %i.bg, i64 -6
  %i.bt = load i8, ptr %i.bs, align 2, !tbaa !218
  %i.bu = zext i8 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.bu
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !221
  %i.bx = zext i16 %i.bw to i64
  br label %str8.exit39

bb.t:                                             ; preds = %._crit_edge91, %bb.n
  %i.by = phi ptr [ %.pre92, %._crit_edge91 ], [ %i.aw, %bb.n ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 1256 ; 3 uses
  %i.ca = load i8, ptr %i.bz, align 8, !tbaa !233, !range !234, !noundef !235
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %js_alloc_string.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i8 1, ptr %i.bz, align 8, !tbaa !233
  %i.cc = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !393 ; 0 uses
  store i8 0, ptr %i.bz, align 8, !tbaa !233
  br label %js_alloc_string.exit.thread

str8.exit39:                                      ; preds = %bb.q, %bb.r, %bb.s
  %.011.i.i.i = phi i64 [ 8, %bb.q ], [ %i.br, %bb.r ], [ %i.bx, %bb.s ]
  %i.cd = load i64, ptr %i.az, align 8, !tbaa !196
  %i.ce = add i64 %i.cd, %.011.i.i.i
  store i64 %i.ce, ptr %i.az, align 8, !tbaa !196
  %i.cf = getelementptr inbounds i8, ptr %i.bg, i64 -4
  store i32 1, ptr %i.cf, align 4, !tbaa !191
  store i64 %.331.i, ptr %i.bg, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i32 0, ptr %i.cg, align 8, !tbaa !249
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bg, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ch, ptr align 1 %1, i64 %.331.i, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.331.i
  store i8 0, ptr %i.ci, align 1, !tbaa !218
  br label %utf8_decode_buf8.exit

bb.v:                                             ; preds = %bb.m
  %i.cj = add nuw nsw i64 %.331.i, 25             ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.aw, i64 40 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.aw, i64 48 ; 3 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !196
  %i.cn = add i64 %i.cm, %i.cj
  %i.co = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !197
  %i.cq = add i64 %i.cp, -1
  %i.cr = icmp ugt i64 %i.cn, %i.cq
  br i1 %i.cr, label %bb.ab, label %bb.w, !prof !192

bb.w:                                             ; preds = %bb.v
  %i.cs = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %i.aw, i64 noundef %i.cj) ; 9 uses
  %.not.i.i61 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i61, label %._crit_edge, label %bb.x

._crit_edge:                                      ; preds = %bb.w
  %.pre = load ptr, ptr %i.av, align 8, !tbaa !232
  br label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.ct = load i64, ptr %i.ck, align 8, !tbaa !217
  %i.cu = add i64 %i.ct, 1
  store i64 %i.cu, ptr %i.ck, align 8, !tbaa !217
  %i.cv = getelementptr inbounds i8, ptr %i.cs, i64 -8 ; 3 uses
  %i.cw = load i16, ptr %i.cv, align 8, !tbaa !218
  %i.cx = icmp eq i16 %i.cw, -1
end_hunk_0
begin_hunk_1_@string_buffer_end:bb.a
  %i.ak = load i64, ptr %.1, align 8
  %i.al = lshr i64 %i.ak, 60
  %i.am = trunc nuw nsw i64 %i.al to i32
  %i.an = and i32 %i.am, 3
  switch i32 %i.an, label %default.unreachable [
    i32 0, label %bb.j
    i32 1, label %bb.k
    i32 2, label %bb.l
    i32 3, label %bb.m
  ]

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.1, i64 24
  br label %str8.exit

bb.k:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.1, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !389
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %.1, i64 32
  %i.at = load i32, ptr %i.as, align 8, !tbaa !390
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.au
  br label %str8.exit

bb.l:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.1, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !239
  br label %str8.exit

default.unreachable:                              ; preds = %bb.i
  unreachable

bb.m:                                             ; preds = %bb.i
  tail call void @abort() #50
  unreachable

str8.exit:                                        ; preds = %bb.j, %bb.k, %bb.l
  %.0.i.i = phi ptr [ %i.ao, %bb.j ], [ %i.av, %bb.k ], [ %i.ax, %bb.l ]
  %i.ay = load i32, ptr %i.e, align 8, !tbaa !646
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds i8, ptr %.0.i.i, i64 %i.az
  store i8 0, ptr %i.ba, align 1, !tbaa !218
  %.pre = load i32, ptr %i.ai, align 8, !tbaa !647
  br label %bb.n

bb.n:                                             ; preds = %str8.exit, %bb.h
  %i.bb = phi i32 [ %.pre, %str8.exit ], [ %i.aj, %bb.h ]
  %i.bc = load i64, ptr %.1, align 8
  %i.bd = shl i32 %i.bb, 31
  %i.be = zext i32 %i.bd to i64
  %i.bf = and i64 %i.bc, -2147483649
  %i.bg = or disjoint i64 %i.bf, %i.be            ; 2 uses
  store i64 %i.bg, ptr %.1, align 8
  %i.bh = load i32, ptr %i.e, align 8, !tbaa !646
  %i.bi = and i32 %i.bh, 2147483647
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = and i64 %i.bg, -2147483648
  %i.bl = or disjoint i64 %i.bk, %i.bj
  store i64 %i.bl, ptr %.1, align 8
  store ptr null, ptr %i.a, align 8, !tbaa !649
  %i.bm = ptrtoint ptr %.1 to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %bb.n, %bb.c
  %.sroa.0.0 = phi i64 [ %i.bm, %bb.n ], [ %i.p, %bb.c ], [ 0, %bb.a ]
  %.sroa.5.0 = phi i64 [ -7, %bb.n ], [ -7, %bb.c ], [ 6, %bb.a ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.5.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext i1 @lre_check_stack_overflow(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !232
  %i.c = getelementptr i8, ptr %i.b, i64 1232
  %.val = load i64, ptr %i.c, align 8, !tbaa !263
  %i.d = tail call ptr @llvm.frameaddress.p0(i32 0)
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = sub i64 %i.e, %1
  %i.g = icmp ult i64 %i.f, %.val
  ret i1 %i.g
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @lre_check_timeout(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !232  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1272
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !306  ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1280
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !307
  %i.g = tail call i32 %i.d(ptr noundef nonnull %i.b, ptr noundef %i.f) #49
  %i.h = icmp ne i32 %i.g, 0
  %i.i = zext i1 %i.h to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = phi i32 [ 0, %bb.a ], [ %i.i, %bb.b ]
  ret i32 %i.j
}

; Function Attrs: nounwind uwtable
define hidden ptr @lre_realloc(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !232
  %i.c = tail call ptr @js_realloc_rt(ptr noundef %i.b, ptr noundef %1, i64 noundef %2)
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @JS_AddIntrinsicRegExpCompiler(ptr nofree noundef writeonly captures(none) initializes((568, 576)) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 568
  store ptr @js_compile_regexp, ptr %i.a, align 8, !tbaa !375
  ret void
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_compile_regexp(ptr noundef %0, i64 %1, i64 %2, i64 %3, i64 %4) #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [64 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #49
  %i.d = and i64 %4, 4294967295
  %i.e = icmp eq i64 %i.d, 3
  br i1 %i.e, label %JS_FreeCString.exit62.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = call ptr @JS_ToCStringLen2(ptr noundef %0, ptr noundef nonnull %i.a, i64 %3, i64 %4, i1 noundef zeroext false), !inline_history !30 ; 6 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.x, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.g = load i64, ptr %i.a, align 8, !tbaa !240  ; 2 uses
  %.not84 = icmp eq i64 %i.g, 0
  br i1 %.not84, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.e
  %.083 = phi i32 [ %i.v, %bb.e ], [ 0, %.preheader ] ; 2 uses
  %.05182 = phi i64 [ %i.w, %bb.e ], [ 0, %.preheader ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %.05182
  %i.i = load i8, ptr %i.h, align 1, !tbaa !218
  %switch.tableidx = add i8 %i.i, -100            ; 3 uses
  %i.j = icmp ult i8 %switch.tableidx, 22
  br i1 %i.j, label %switch.hole_check, label %bb.c

switch.hole_check:                                ; preds = %.lr.ph
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 2523689, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.c

switch.lookup:                                    ; preds = %switch.hole_check
  %i.k = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.js_compile_regexp, i64 %i.k
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i32      ; 2 uses
  %i.l = and i32 %.083, %switch.ext
  %.not54 = icmp eq i32 %i.l, 0
  br i1 %.not54, label %bb.e, label %bb.c

bb.c:                                             ; preds = %switch.hole_check, %.lr.ph, %switch.lookup
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !232
  %i.o = getelementptr inbounds i8, ptr %i.f, i64 -28 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !191  ; 2 uses
  %i.q = add nsw i32 %i.p, -1
  store i32 %i.q, ptr %i.o, align 4, !tbaa !191
  %i.r = icmp slt i32 %i.p, 2
  br i1 %i.r, label %bb.d, label %JS_FreeCString.exit

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds i8, ptr %i.f, i64 -24
  %i.t = ptrtoint ptr %i.s to i64
  call fastcc void @js_free_value_rt(ptr noundef %i.n, i64 %i.t, i64 -7), !inline_history !104
  br label %JS_FreeCString.exit

JS_FreeCString.exit:                              ; preds = %bb.c, %bb.d
  %i.u = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowSyntaxError(ptr noundef nonnull %0, ptr noundef nonnull @.str.250) ; 0 uses
  br label %bb.x

bb.e:                                             ; preds = %switch.lookup
  %i.v = or i32 %.083, %switch.ext                ; 2 uses
  %i.w = add nuw i64 %.05182, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1478

._crit_edge:                                      ; preds = %bb.e, %.preheader
  %.0.lcssa = phi i32 [ 0, %.preheader ], [ %i.v, %bb.e ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !232
  %i.z = getelementptr inbounds i8, ptr %i.f, i64 -28 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !191 ; 2 uses
  %i.ab = add nsw i32 %i.aa, -1
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !191
  %i.ac = icmp slt i32 %i.aa, 2
  br i1 %i.ac, label %bb.f, label %JS_FreeCString.exit62

bb.f:                                             ; preds = %._crit_edge
  %i.ad = getelementptr inbounds i8, ptr %i.f, i64 -24
  %i.ae = ptrtoint ptr %i.ad to i64
  call fastcc void @js_free_value_rt(ptr noundef %i.y, i64 %i.ae, i64 -7), !inline_history !104
  br label %JS_FreeCString.exit62

JS_FreeCString.exit62:                            ; preds = %bb.f, %._crit_edge
  %i.af = and i32 %.0.lcssa, 16
  %or.cond.not = icmp eq i32 %i.af, 0
  %.not56 = icmp samesign ult i32 %.0.lcssa, 256
  %or.cond = or i1 %.not56, %or.cond.not
  br i1 %or.cond, label %JS_FreeCString.exit62.thread, label %bb.g

bb.g:                                             ; preds = %JS_FreeCString.exit62
  %i.ag = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowSyntaxError(ptr noundef nonnull %0, ptr noundef nonnull @.str.250) ; 0 uses
  br label %bb.x

JS_FreeCString.exit62.thread:                     ; preds = %bb.a, %JS_FreeCString.exit62
  %.170 = phi i32 [ %.0.lcssa, %JS_FreeCString.exit62 ], [ 0, %bb.a ] ; 2 uses
  %i.ah = and i32 %.170, 272
  %.not57 = icmp eq i32 %i.ah, 0
  %i.ai = call ptr @JS_ToCStringLen2(ptr noundef %0, ptr noundef nonnull %i.a, i64 %1, i64 %2, i1 noundef zeroext %.not57) ; 4 uses
  %.not58 = icmp eq ptr %i.ai, null
  br i1 %.not58, label %bb.x, label %bb.h

bb.h:                                             ; preds = %JS_FreeCString.exit62.thread
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !240
  %i.ak = call ptr @lre_compile(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef 64, ptr noundef nonnull %i.ai, i64 noundef %i.aj, i32 noundef %.170, ptr noundef %0) #49 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !232
  %i.an = getelementptr inbounds i8, ptr %i.ai, i64 -28 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !191 ; 2 uses
  %i.ap = add nsw i32 %i.ao, -1
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !191
  %i.aq = icmp slt i32 %i.ao, 2
  br i1 %i.aq, label %bb.i, label %JS_FreeCString.exit64

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds i8, ptr %i.ai, i64 -24
  %i.as = ptrtoint ptr %i.ar to i64
  call fastcc void @js_free_value_rt(ptr noundef %i.am, i64 %i.as, i64 -7), !inline_history !104
  br label %JS_FreeCString.exit64

JS_FreeCString.exit64:                            ; preds = %bb.h, %bb.i
  %.not59 = icmp eq ptr %i.ak, null
  br i1 %.not59, label %bb.j, label %bb.k

bb.j:                                             ; preds = %JS_FreeCString.exit64
  %i.at = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowSyntaxError(ptr noundef nonnull %0, ptr noundef nonnull @.str.251, ptr noundef nonnull %i.c) ; 0 uses
  br label %bb.x

bb.k:                                             ; preds = %JS_FreeCString.exit64
  %i.au = load ptr, ptr %i.al, align 8, !tbaa !232 ; 9 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 40 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 48 ; 3 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !196
  %i.ay = add i64 %i.ax, 33
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !197
  %i.bb = add i64 %i.ba, -1
  %i.bc = icmp ugt i64 %i.ay, %i.bb
  br i1 %i.bc, label %bb.t, label %bb.l, !prof !192

bb.l:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 632
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 640
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !222 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.bd
  br i1 %i.bg, label %bb.m, label %bb.n, !prof !192

bb.m:                                             ; preds = %bb.l
  %i.bh = call fastcc ptr @arena_new(ptr noundef nonnull %i.au, i32 noundef 4) ; 2 uses
  %.not.i = icmp eq ptr %i.bh, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0.i = phi ptr [ %i.bh, %bb.m ], [ %i.bf, %bb.l ] ; 7 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i, i64 38 ; 2 uses
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !221 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  %i.bl = zext i16 %i.bj to i64
  %i.bm = mul nuw nsw i64 %i.bl, 48
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bm ; 11 uses
  %i.bo = load i16, ptr %i.bn, align 8, !tbaa !218
  store i16 %i.bo, ptr %i.bi, align 2, !tbaa !221
  store i16 %i.bj, ptr %i.bn, align 8, !tbaa !218
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.i, i64 34 ; 2 uses
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !221
  %i.br = add i16 %i.bq, 1                        ; 2 uses
  store i16 %i.br, ptr %i.bp, align 2, !tbaa !221
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i, i64 36
  %i.bt = load i16, ptr %i.bs, align 4, !tbaa !221
  %i.bu = icmp eq i16 %i.br, %i.bt
  br i1 %i.bu, label %bb.o, label %bb.p, !prof !192

bb.o:                                             ; preds = %bb.n
  %i.bv = load ptr, ptr %.0.i, align 8, !tbaa !223 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !222 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !222
  store ptr %i.bv, ptr %i.bx, align 8, !tbaa !223
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i, i8 0, i64 16, i1 false)
  br label %bb.p

._crit_edge.i:                                    ; preds = %bb.m
  %.pre.i = load ptr, ptr %i.al, align 8, !tbaa !232
  br label %bb.t

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %i.ca = load i64, ptr %i.av, align 8, !tbaa !217
  %i.cb = add i64 %i.ca, 1
  store i64 %i.cb, ptr %i.av, align 8, !tbaa !217
  %i.cc = load i16, ptr %i.bn, align 8, !tbaa !218
  %i.cd = icmp eq i16 %i.cc, -1
  br i1 %i.cd, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ce = getelementptr inbounds nuw i8, ptr %i.au, i64 1064
  %i.cf = icmp eq ptr %i.bn, %i.ce
  br i1 %i.cf, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cg = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !219
  %i.ci = call i64 %i.ch(ptr noundef nonnull %i.bn) #49, !inline_history !1479 ; 2 uses
  %.not15.i.i.i.i = icmp eq i64 %i.ci, 0
  %i.cj = select i1 %.not15.i.i.i.i, i64 8, i64 %i.ci
  br label %bb.w

bb.s:                                             ; preds = %bb.p
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bn, i64 2
  %i.cl = load i8, ptr %i.ck, align 2, !tbaa !218
  %i.cm = zext i8 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.cm
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !221
  %i.cp = zext i16 %i.co to i64
  br label %bb.w

bb.t:                                             ; preds = %._crit_edge.i, %bb.k
  %i.cq = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.au, %bb.k ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 1256 ; 3 uses
  %i.cs = load i8, ptr %i.cr, align 8, !tbaa !233, !range !234, !noundef !235
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i8 1, ptr %i.cr, align 8, !tbaa !233
  %i.cu = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #51, !inline_history !1480 ; 0 uses
  store i8 0, ptr %i.cr, align 8, !tbaa !233
  %.pre = load ptr, ptr %i.al, align 8, !tbaa !232
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.cv = phi ptr [ %i.cq, %bb.t ], [ %.pre, %bb.u ]
  call void @js_free_rt(ptr noundef %i.cv, ptr noundef nonnull %i.ak)
  br label %bb.x

bb.w:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.011.i.i.i.i = phi i64 [ 8, %bb.q ], [ %i.cj, %bb.r ], [ %i.cp, %bb.s ]
  %i.cw = load i64, ptr %i.aw, align 8, !tbaa !196
  %i.cx = add i64 %i.cw, %.011.i.i.i.i
  store i64 %i.cx, ptr %i.aw, align 8, !tbaa !196
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  store i32 1, ptr %i.cy, align 4, !tbaa !191
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i32 0, ptr %i.cz, align 8, !tbaa !249
  %i.da = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  store ptr %i.ak, ptr %i.da, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  store i8 0, ptr %i.db, align 8, !tbaa !218
  %i.dc = ptrtoint ptr %i.bz to i64
  %i.dd = load i32, ptr %i.b, align 4, !tbaa !191
  %i.de = and i32 %i.dd, 2147483647
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = or disjoint i64 %i.df, 2305843009213693952
  store i64 %i.dg, ptr %i.bz, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %JS_FreeCString.exit62.thread, %bb.b, %bb.j, %bb.g, %JS_FreeCString.exit
  %i.dh = phi i64 [ 0, %bb.g ], [ 0, %JS_FreeCString.exit62.thread ], [ 0, %bb.j ], [ 0, %bb.b ], [ 0, %JS_FreeCString.exit ], [ %i.dc, %bb.w ], [ 0, %bb.v ]
  %.sroa.10.0 = phi i64 [ 6, %bb.g ], [ 6, %JS_FreeCString.exit62.thread ], [ 6, %bb.j ], [ 6, %bb.b ], [ 6, %JS_FreeCString.exit ], [ -7, %bb.w ], [ 6, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.dh, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.10.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_regexp_constructor(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree noundef readonly captures(none) %4) #2 {
bb.a:
  %5 = alloca %struct.JSValue, align 8            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  %.sroa.052.0.copyload = load i64, ptr %4, align 8, !tbaa !218 ; 16 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !240 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.041.0.copyload = load i64, ptr %i.a, align 8, !tbaa !218 ; 5 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !240 ; 9 uses
  %i.b = and i64 %.sroa.10.0.copyload, 4294967295
  %i.c = icmp eq i64 %i.b, 4294967295             ; 2 uses
  br i1 %i.c, label %bb.b, label %js_is_regexp.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef %0, i64 %.sroa.052.0.copyload, i64 %.sroa.10.0.copyload, i32 noundef 229, i64 %.sroa.052.0.copyload, i64 %.sroa.10.0.copyload, i1 noundef zeroext false), !inline_history !373 ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 1        ; 2 uses
  %trunc.i = trunc i64 %i.e to i32
  switch i32 %trunc.i, label %js_is_regexp.exit [
end_hunk_1
begin_hunk_2_@js_sub_string:bb.a
  %i.cx = lshr i32 %i.cw, 31
  %i.cy = shl i32 %.070, %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  store i32 %i.cy, ptr %i.cz, align 8, !tbaa !390
  %i.da = getelementptr inbounds i8, ptr %.069, i64 -4 ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !191
  %i.dc = add nsw i32 %i.db, 1
  store i32 %i.dc, ptr %i.da, align 4, !tbaa !191
  %i.dd = ptrtoint ptr %i.bp to i64
  br label %js_alloc_string.exit.thread

bb.u:                                             ; preds = %bb.f
  %.not = icmp sgt i32 %i.u, -1
  br i1 %.not, label %bb.ay, label %.preheader

.preheader:                                       ; preds = %bb.u
  %i.de = icmp slt i32 %2, %3
  br i1 %i.de, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %.preheader
  %i.df = lshr i64 %i.t, 60
  %i.dg = trunc nuw nsw i64 %i.df to i32
  %i.dh = and i32 %i.dg, 3
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  switch i32 %i.dh, label %default.unreachable [
    i32 3, label %bb.v
    i32 0, label %str16.exit.us.preheader
    i32 1, label %.lr.ph.split.split.us112
    i32 2, label %.lr.ph.split.split.us119
  ]

str16.exit.us.preheader:                          ; preds = %.lr.ph
  %i.dj = sext i32 %2 to i64                      ; 4 uses
  %wide.trip.count142 = sext i32 %3 to i64        ; 2 uses
  %i.dk = sub nsw i64 %wide.trip.count142, %i.dj  ; 3 uses
  %min.iters.check185 = icmp ult i64 %i.dk, 8
  br i1 %min.iters.check185, label %str16.exit.us.preheader200, label %vector.ph186

vector.ph186:                                     ; preds = %str16.exit.us.preheader
  %n.vec187 = and i64 %i.dk, -8                   ; 3 uses
  %i.dl = add nsw i64 %n.vec187, %i.dj
  %invariant.gep221 = getelementptr [2 x i8], ptr %i.di, i64 %i.dj
  br label %vector.body188

vector.body188:                                   ; preds = %vector.body188, %vector.ph186
  %index189 = phi i64 [ 0, %vector.ph186 ], [ %index.next194, %vector.body188 ] ; 2 uses
  %vec.phi190 = phi <4 x i32> [ zeroinitializer, %vector.ph186 ], [ %i.dp, %vector.body188 ]
  %vec.phi191 = phi <4 x i32> [ zeroinitializer, %vector.ph186 ], [ %i.dq, %vector.body188 ]
  %gep222 = getelementptr [2 x i8], ptr %invariant.gep221, i64 %index189 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %gep222, i64 8
  %wide.load192 = load <4 x i16>, ptr %gep222, align 2, !tbaa !221
  %wide.load193 = load <4 x i16>, ptr %i.dm, align 2, !tbaa !221
  %i.dn = zext <4 x i16> %wide.load192 to <4 x i32>
  %i.do = zext <4 x i16> %wide.load193 to <4 x i32>
  %i.dp = or <4 x i32> %vec.phi190, %i.dn         ; 2 uses
  %i.dq = or <4 x i32> %vec.phi191, %i.do         ; 2 uses
  %index.next194 = add nuw i64 %index189, 8       ; 2 uses
  %i.dr = icmp eq i64 %index.next194, %n.vec187
  br i1 %i.dr, label %middle.block195, label %vector.body188, !llvm.loop !1485

middle.block195:                                  ; preds = %vector.body188
  %bin.rdx196 = or <4 x i32> %i.dq, %i.dp
  %i.ds = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx196) ; 2 uses
  %cmp.n197 = icmp eq i64 %i.dk, %n.vec187
  br i1 %cmp.n197, label %._crit_edge, label %str16.exit.us.preheader200

str16.exit.us.preheader200:                       ; preds = %str16.exit.us.preheader, %middle.block195
  %indvars.iv139.ph = phi i64 [ %i.dj, %str16.exit.us.preheader ], [ %i.dl, %middle.block195 ]
  %.0111.us.ph = phi i32 [ 0, %str16.exit.us.preheader ], [ %i.ds, %middle.block195 ]
  br label %str16.exit.us

str16.exit.us:                                    ; preds = %str16.exit.us.preheader200, %str16.exit.us
  %indvars.iv139 = phi i64 [ %indvars.iv.next140, %str16.exit.us ], [ %indvars.iv139.ph, %str16.exit.us.preheader200 ] ; 2 uses
  %.0111.us = phi i32 [ %i.dw, %str16.exit.us ], [ %.0111.us.ph, %str16.exit.us.preheader200 ]
  %i.dt = getelementptr inbounds [2 x i8], ptr %i.di, i64 %indvars.iv139
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !221
  %i.dv = zext i16 %i.du to i32
  %i.dw = or i32 %.0111.us, %i.dv                 ; 2 uses
  %indvars.iv.next140 = add nsw i64 %indvars.iv139, 1 ; 2 uses
  %exitcond143.not = icmp eq i64 %indvars.iv.next140, %wide.trip.count142
  br i1 %exitcond143.not, label %._crit_edge, label %str16.exit.us, !llvm.loop !1486

.lr.ph.split.split.us112:                         ; preds = %.lr.ph
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dy = load ptr, ptr %i.di, align 8, !tbaa !389
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.ea = load i32, ptr %i.dx, align 8, !tbaa !390
  %i.eb = zext i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.eb ; 2 uses
  %i.ed = sext i32 %2 to i64                      ; 4 uses
  %wide.trip.count137 = sext i32 %3 to i64        ; 2 uses
  %i.ee = sub nsw i64 %wide.trip.count137, %i.ed  ; 3 uses
  %min.iters.check169 = icmp ult i64 %i.ee, 8
  br i1 %min.iters.check169, label %str16.exit.us115.preheader, label %vector.ph170

vector.ph170:                                     ; preds = %.lr.ph.split.split.us112
  %n.vec171 = and i64 %i.ee, -8                   ; 3 uses
  %i.ef = add nsw i64 %n.vec171, %i.ed
  %invariant.gep219 = getelementptr [2 x i8], ptr %i.ec, i64 %i.ed
  br label %vector.body172

vector.body172:                                   ; preds = %vector.body172, %vector.ph170
  %index173 = phi i64 [ 0, %vector.ph170 ], [ %index.next178, %vector.body172 ] ; 2 uses
  %vec.phi174 = phi <4 x i32> [ zeroinitializer, %vector.ph170 ], [ %i.ej, %vector.body172 ]
  %vec.phi175 = phi <4 x i32> [ zeroinitializer, %vector.ph170 ], [ %i.ek, %vector.body172 ]
  %gep220 = getelementptr [2 x i8], ptr %invariant.gep219, i64 %index173 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %gep220, i64 8
  %wide.load176 = load <4 x i16>, ptr %gep220, align 2, !tbaa !221
  %wide.load177 = load <4 x i16>, ptr %i.eg, align 2, !tbaa !221
  %i.eh = zext <4 x i16> %wide.load176 to <4 x i32>
  %i.ei = zext <4 x i16> %wide.load177 to <4 x i32>
  %i.ej = or <4 x i32> %vec.phi174, %i.eh         ; 2 uses
  %i.ek = or <4 x i32> %vec.phi175, %i.ei         ; 2 uses
  %index.next178 = add nuw i64 %index173, 8       ; 2 uses
  %i.el = icmp eq i64 %index.next178, %n.vec171
  br i1 %i.el, label %middle.block179, label %vector.body172, !llvm.loop !1487

middle.block179:                                  ; preds = %vector.body172
  %bin.rdx180 = or <4 x i32> %i.ek, %i.ej
  %i.em = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx180) ; 2 uses
  %cmp.n181 = icmp eq i64 %i.ee, %n.vec171
  br i1 %cmp.n181, label %._crit_edge, label %str16.exit.us115.preheader

str16.exit.us115.preheader:                       ; preds = %.lr.ph.split.split.us112, %middle.block179
  %indvars.iv134.ph = phi i64 [ %i.ed, %.lr.ph.split.split.us112 ], [ %i.ef, %middle.block179 ]
  %.0111.us113.ph = phi i32 [ 0, %.lr.ph.split.split.us112 ], [ %i.em, %middle.block179 ]
  br label %str16.exit.us115

str16.exit.us115:                                 ; preds = %str16.exit.us115.preheader, %str16.exit.us115
  %indvars.iv134 = phi i64 [ %indvars.iv.next135, %str16.exit.us115 ], [ %indvars.iv134.ph, %str16.exit.us115.preheader ] ; 2 uses
  %.0111.us113 = phi i32 [ %i.eq, %str16.exit.us115 ], [ %.0111.us113.ph, %str16.exit.us115.preheader ]
  %i.en = getelementptr inbounds [2 x i8], ptr %i.ec, i64 %indvars.iv134
  %i.eo = load i16, ptr %i.en, align 2, !tbaa !221
  %i.ep = zext i16 %i.eo to i32
  %i.eq = or i32 %.0111.us113, %i.ep              ; 2 uses
  %indvars.iv.next135 = add nsw i64 %indvars.iv134, 1 ; 2 uses
  %exitcond138.not = icmp eq i64 %indvars.iv.next135, %wide.trip.count137
  br i1 %exitcond138.not, label %._crit_edge, label %str16.exit.us115, !llvm.loop !1488

.lr.ph.split.split.us119:                         ; preds = %.lr.ph
  %i.er = load ptr, ptr %i.di, align 8, !tbaa !239 ; 2 uses
  %i.es = sext i32 %2 to i64                      ; 4 uses
  %wide.trip.count = sext i32 %3 to i64           ; 2 uses
  %i.et = sub nsw i64 %wide.trip.count, %i.es     ; 3 uses
  %min.iters.check = icmp ult i64 %i.et, 8
  br i1 %min.iters.check, label %str16.exit.us122.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.split.us119
  %n.vec = and i64 %i.et, -8                      ; 3 uses
  %i.eu = add nsw i64 %n.vec, %i.es
  %invariant.gep = getelementptr [2 x i8], ptr %i.er, i64 %i.es
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ey, %vector.body ]
  %vec.phi166 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ez, %vector.body ]
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %wide.load = load <4 x i16>, ptr %gep, align 2, !tbaa !221
  %wide.load167 = load <4 x i16>, ptr %i.ev, align 2, !tbaa !221
  %i.ew = zext <4 x i16> %wide.load to <4 x i32>
  %i.ex = zext <4 x i16> %wide.load167 to <4 x i32>
  %i.ey = or <4 x i32> %vec.phi, %i.ew            ; 2 uses
  %i.ez = or <4 x i32> %vec.phi166, %i.ex         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fa = icmp eq i64 %index.next, %n.vec
  br i1 %i.fa, label %middle.block, label %vector.body, !llvm.loop !1489

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.ez, %i.ey
  %i.fb = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.et, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %str16.exit.us122.preheader

str16.exit.us122.preheader:                       ; preds = %.lr.ph.split.split.us119, %middle.block
  %indvars.iv.ph = phi i64 [ %i.es, %.lr.ph.split.split.us119 ], [ %i.eu, %middle.block ]
  %.0111.us120.ph = phi i32 [ 0, %.lr.ph.split.split.us119 ], [ %i.fb, %middle.block ]
  br label %str16.exit.us122

str16.exit.us122:                                 ; preds = %str16.exit.us122.preheader, %str16.exit.us122
  %indvars.iv = phi i64 [ %indvars.iv.next, %str16.exit.us122 ], [ %indvars.iv.ph, %str16.exit.us122.preheader ] ; 2 uses
  %.0111.us120 = phi i32 [ %i.ff, %str16.exit.us122 ], [ %.0111.us120.ph, %str16.exit.us122.preheader ]
  %i.fc = getelementptr inbounds [2 x i8], ptr %i.er, i64 %indvars.iv
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !221
  %i.fe = zext i16 %i.fd to i32
  %i.ff = or i32 %.0111.us120, %i.fe              ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %str16.exit.us122, !llvm.loop !1490

default.unreachable:                              ; preds = %str16.exit90, %bb.an, %bb.ay, %._crit_edge128, %bb.ab, %bb.w, %.lr.ph
  unreachable

bb.v:                                             ; preds = %.lr.ph
  tail call void @abort() #50
  unreachable

._crit_edge:                                      ; preds = %str16.exit.us122, %str16.exit.us115, %str16.exit.us, %middle.block, %middle.block179, %middle.block195
  %.0.lcssa = phi i32 [ %i.dw, %str16.exit.us ], [ %i.eq, %str16.exit.us115 ], [ %i.ds, %middle.block195 ], [ %i.em, %middle.block179 ], [ %i.fb, %middle.block ], [ %i.ff, %str16.exit.us122 ]
  %4 = icmp samesign ugt i32 %.0.lcssa, 255
  br i1 %4, label %bb.w, label %._crit_edge.thread

bb.w:                                             ; preds = %._crit_edge
  %i.fg = lshr i64 %i.t, 60
  %i.fh = trunc nuw nsw i64 %i.fg to i32
  %i.fi = and i32 %i.fh, 3
  switch i32 %i.fi, label %default.unreachable [
    i32 0, label %bb.x
    i32 1, label %bb.y
    i32 2, label %bb.z
    i32 3, label %bb.aa
  ]

bb.x:                                             ; preds = %bb.w
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %str16.exit78

bb.y:                                             ; preds = %bb.w
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !389
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !390
  %i.fp = zext i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fp
  br label %str16.exit78

bb.z:                                             ; preds = %bb.w
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !239
  br label %str16.exit78

bb.aa:                                            ; preds = %bb.w
  tail call void @abort() #50
  unreachable

str16.exit78:                                     ; preds = %bb.x, %bb.y, %bb.z
  %.0.i.i76 = phi ptr [ %i.fj, %bb.x ], [ %i.fq, %bb.y ], [ %i.fs, %bb.z ]
  %i.ft = sext i32 %2 to i64
  %i.fu = getelementptr inbounds [2 x i8], ptr %.0.i.i76, i64 %i.ft
  %i.fv = tail call fastcc ptr @js_alloc_string(ptr noundef %0, i32 noundef range(i32 0, -2147483648) %i.a, i32 noundef 1), !inline_history !109 ; 7 uses
  %.not.i = icmp eq ptr %i.fv, null
  br i1 %.not.i, label %js_alloc_string.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %str16.exit78
  %i.fw = load i64, ptr %i.fv, align 8
  %i.fx = lshr i64 %i.fw, 60
  %i.fy = trunc nuw nsw i64 %i.fx to i32
  %i.fz = and i32 %i.fy, 3
  switch i32 %i.fz, label %default.unreachable [
    i32 0, label %bb.ac
    i32 1, label %bb.ad
    i32 2, label %bb.ae
    i32 3, label %bb.af
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  br label %str16.exit.i

bb.ad:                                            ; preds = %bb.ab
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !389
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fv, i64 32
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !390
  %i.gg = zext i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.gg
  br label %str16.exit.i

bb.ae:                                            ; preds = %bb.ab
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !239
  br label %str16.exit.i

bb.af:                                            ; preds = %bb.ab
  tail call void @abort() #50, !inline_history !109
  unreachable

str16.exit.i:                                     ; preds = %bb.ae, %bb.ad, %bb.ac
  %.0.i.i.i = phi ptr [ %i.ga, %bb.ac ], [ %i.gh, %bb.ad ], [ %i.gj, %bb.ae ]
  %i.gk = shl nuw nsw i32 %i.a, 1
  %i.gl = zext nneg i32 %i.gk to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.0.i.i.i, ptr readonly align 2 %i.fu, i64 %i.gl, i1 false)
  %i.gm = ptrtoint ptr %i.fv to i64
  br label %js_alloc_string.exit.thread

._crit_edge.thread:                               ; preds = %.preheader, %._crit_edge
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !232 ; 7 uses
  %narrow = add nuw nsw i32 %i.a, 25
  %i.gp = zext nneg i32 %narrow to i64            ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 40 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 48 ; 3 uses
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !196
  %i.gt = add i64 %i.gs, %i.gp
  %i.gu = getelementptr inbounds nuw i8, ptr %i.go, i64 56
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !197
  %i.gw = add i64 %i.gv, -1
  %i.gx = icmp ugt i64 %i.gt, %i.gw
  br i1 %i.gx, label %bb.al, label %bb.ag, !prof !192

bb.ag:                                            ; preds = %._crit_edge.thread
  %i.gy = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %i.go, i64 noundef %i.gp), !inline_history !668 ; 15 uses
  %.not.i.i.i80 = icmp eq ptr %i.gy, null
  br i1 %.not.i.i.i80, label %._crit_edge.i85, label %bb.ah

._crit_edge.i85:                                  ; preds = %bb.ag
  %.pre.i86 = load ptr, ptr %i.gn, align 8, !tbaa !232
  br label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %i.gz = load i64, ptr %i.gq, align 8, !tbaa !217
  %i.ha = add i64 %i.gz, 1
  store i64 %i.ha, ptr %i.gq, align 8, !tbaa !217
  %i.hb = getelementptr inbounds i8, ptr %i.gy, i64 -8 ; 3 uses
  %i.hc = load i16, ptr %i.hb, align 8, !tbaa !218
  %i.hd = icmp eq i16 %i.hc, -1
  br i1 %i.hd, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.he = getelementptr inbounds nuw i8, ptr %i.go, i64 1064
  %i.hf = icmp eq ptr %i.hb, %i.he
  br i1 %i.hf, label %.lr.ph127, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hg = getelementptr inbounds nuw i8, ptr %i.go, i64 32
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !219
  %i.hi = tail call i64 %i.hh(ptr noundef nonnull %i.hb) #49, !inline_history !108 ; 2 uses
  %.not15.i.i.i.i84 = icmp eq i64 %i.hi, 0
  %i.hj = select i1 %.not15.i.i.i.i84, i64 8, i64 %i.hi
  br label %.lr.ph127

bb.ak:                                            ; preds = %bb.ah
  %i.hk = getelementptr inbounds i8, ptr %i.gy, i64 -6
  %i.hl = load i8, ptr %i.hk, align 2, !tbaa !218
  %i.hm = zext i8 %i.hl to i64
  %i.hn = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.hm
  %i.ho = load i16, ptr %i.hn, align 2, !tbaa !221
  %i.hp = zext i16 %i.ho to i64
  br label %.lr.ph127

bb.al:                                            ; preds = %._crit_edge.i85, %._crit_edge.thread
  %i.hq = phi ptr [ %.pre.i86, %._crit_edge.i85 ], [ %i.go, %._crit_edge.thread ]
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 1256 ; 3 uses
  %i.hs = load i8, ptr %i.hr, align 8, !tbaa !233, !range !234, !noundef !235
  %i.ht = trunc nuw i8 %i.hs to i1
  br i1 %i.ht, label %js_alloc_string.exit.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  store i8 1, ptr %i.hr, align 8, !tbaa !233
  %i.hu = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #51, !inline_history !667 ; 0 uses
  store i8 0, ptr %i.hr, align 8, !tbaa !233
  br label %js_alloc_string.exit.thread

.lr.ph127:                                        ; preds = %bb.ak, %bb.aj, %bb.ai
  %.011.i.i.i.i82 = phi i64 [ 8, %bb.ai ], [ %i.hj, %bb.aj ], [ %i.hp, %bb.ak ]
  %i.hv = load i64, ptr %i.gr, align 8, !tbaa !196
  %i.hw = add i64 %i.hv, %.011.i.i.i.i82
  store i64 %i.hw, ptr %i.gr, align 8, !tbaa !196
  %i.hx = getelementptr inbounds i8, ptr %i.gy, i64 -4
  store i32 1, ptr %i.hx, align 4, !tbaa !191
  %i.hy = zext nneg i32 %i.a to i64               ; 2 uses
  store i64 %i.hy, ptr %i.gy, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  store i32 0, ptr %i.hz, align 8, !tbaa !249
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ic = getelementptr inbounds nuw i8, ptr %i.gy, i64 24 ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.gy, i64 32
  %i.ie = sext i32 %2 to i64
  %wide.trip.count147 = zext nneg i32 %i.a to i64
  br label %bb.an

bb.an:                                            ; preds = %.lr.ph127, %str8.exit
  %indvars.iv144 = phi i64 [ 0, %.lr.ph127 ], [ %indvars.iv.next145, %str8.exit ] ; 3 uses
  %i.if = load i64, ptr %1, align 8
  %i.ig = lshr i64 %i.if, 60
  %i.ih = trunc nuw nsw i64 %i.ig to i32
  %i.ii = and i32 %i.ih, 3
  switch i32 %i.ii, label %default.unreachable [
    i32 0, label %str16.exit90
    i32 1, label %bb.ao
    i32 2, label %bb.ap
    i32 3, label %bb.aq
  ]

bb.ao:                                            ; preds = %bb.an
  %i.ij = load ptr, ptr %i.ia, align 8, !tbaa !389
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 24
  %i.il = load i32, ptr %i.ib, align 8, !tbaa !390
  %i.im = zext i32 %i.il to i64
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.im
  br label %str16.exit90

bb.ap:                                            ; preds = %bb.an
  %i.io = load ptr, ptr %i.ia, align 8, !tbaa !239
  br label %str16.exit90

bb.aq:                                            ; preds = %bb.an
end_hunk_2
begin_hunk_3_@string_buffer_concat:bb.a
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !645
  %i.al = icmp sgt i32 %i.ai, %i.ak
  br i1 %i.al, label %bb.m, label %bb.n

bb.m:                                             ; preds = %str8.exit
  %i.am = tail call fastcc i32 @string_buffer_realloc(ptr noundef nonnull %0, i32 noundef %i.ai, i32 noundef 0), !inline_history !800
  %.not.i = icmp eq i32 %i.am, 0
  br i1 %.not.i, label %bb.n, label %string_buffer_write8.exit

bb.n:                                             ; preds = %bb.m, %str8.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !647
  %.not26.i = icmp eq i32 %i.ao, 0
  br i1 %.not26.i, label %bb.s, label %.preheader

.preheader:                                       ; preds = %bb.n
  %i.ap = icmp sgt i32 %i.af, 0
  br i1 %i.ap, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !649 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %wide.trip.count = zext nneg i32 %i.af to i64
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %str16.exit23
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %str16.exit23 ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv
  %i.av = load i8, ptr %i.au, align 1, !tbaa !218
  %i.aw = zext i8 %i.av to i16
  %i.ax = load i64, ptr %i.ar, align 8
  %i.ay = lshr i64 %i.ax, 60
  %i.az = trunc nuw nsw i64 %i.ay to i32
  %i.ba = and i32 %i.az, 3
  switch i32 %i.ba, label %default.unreachable [
    i32 0, label %str16.exit23
    i32 1, label %bb.p
    i32 2, label %bb.q
    i32 3, label %bb.r
  ]

bb.p:                                             ; preds = %bb.o
  %i.bb = load ptr, ptr %i.as, align 8, !tbaa !389
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load i32, ptr %i.at, align 8, !tbaa !390
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.be
  br label %str16.exit23

bb.q:                                             ; preds = %bb.o
  %i.bg = load ptr, ptr %i.as, align 8, !tbaa !239
  br label %str16.exit23

bb.r:                                             ; preds = %bb.o
  tail call void @abort() #50
  unreachable

str16.exit23:                                     ; preds = %bb.o, %bb.p, %bb.q
  %.0.i.i21 = phi ptr [ %i.bg, %bb.q ], [ %i.bf, %bb.p ], [ %i.as, %bb.o ]
  %i.bh = load i32, ptr %i.ag, align 8, !tbaa !646
  %i.bi = trunc nuw nsw i64 %indvars.iv to i32
  %i.bj = add nsw i32 %i.bh, %i.bi
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [2 x i8], ptr %.0.i.i21, i64 %i.bk
  store i16 %i.aw, ptr %i.bl, align 2, !tbaa !221
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.o, !llvm.loop !146

bb.s:                                             ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !649 ; 5 uses
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = lshr i64 %i.bo, 60
  %i.bq = trunc nuw nsw i64 %i.bp to i32
  %i.br = and i32 %i.bq, 3
  switch i32 %i.br, label %default.unreachable [
    i32 0, label %bb.t
    i32 1, label %bb.u
    i32 2, label %bb.v
    i32 3, label %bb.w
  ]

bb.t:                                             ; preds = %bb.s
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  br label %str8.exit20

bb.u:                                             ; preds = %bb.s
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !389
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !390
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.by
  br label %str8.exit20

bb.v:                                             ; preds = %bb.s
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !239
  br label %str8.exit20

bb.w:                                             ; preds = %bb.s
  tail call void @abort() #50
  unreachable

str8.exit20:                                      ; preds = %bb.t, %bb.u, %bb.v
  %.0.i.i18 = phi ptr [ %i.bs, %bb.t ], [ %i.bz, %bb.u ], [ %i.cb, %bb.v ]
  %i.cc = load i32, ptr %i.ag, align 8, !tbaa !646
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds i8, ptr %.0.i.i18, i64 %i.cd
  %i.cf = sext i32 %i.af to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ce, ptr align 1 %i.ae, i64 %i.cf, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %str16.exit23, %.preheader, %str8.exit20
  %.pn.i = load i32, ptr %i.ag, align 8, !tbaa !646
  %storemerge.i = add nsw i32 %.pn.i, %i.af
  store i32 %storemerge.i, ptr %i.ag, align 8, !tbaa !646
  br label %string_buffer_write8.exit

string_buffer_write8.exit:                        ; preds = %.loopexit, %bb.m, %bb.a, %str16.exit
  %.0 = phi i32 [ 0, %bb.a ], [ %i.s, %str16.exit ], [ 0, %.loopexit ], [ -1, %bb.m ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @string_buffer_write16(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = icmp sgt i32 %2, 0                       ; 2 uses
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %2, 8
  br i1 %min.iters.check, label %.lr.ph.preheader58, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.f, %vector.body ]
  %vec.phi56 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.g, %vector.body ]
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %wide.load = load <4 x i16>, ptr %i.b, align 2, !tbaa !221
  %wide.load57 = load <4 x i16>, ptr %i.c, align 2, !tbaa !221
  %i.d = zext <4 x i16> %wide.load to <4 x i32>
  %i.e = zext <4 x i16> %wide.load57 to <4 x i32>
  %i.f = or <4 x i32> %vec.phi, %i.d              ; 2 uses
  %i.g = or <4 x i32> %vec.phi56, %i.e            ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !1681

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.g, %i.f
  %i.i = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader58

.lr.ph.preheader58:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.03544.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.i, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader58, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader58 ] ; 2 uses
  %.03544 = phi i32 [ %i.m, %.lr.ph ], [ %.03544.ph, %.lr.ph.preheader58 ]
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.k = load i16, ptr %i.j, align 2, !tbaa !221
  %i.l = zext i16 %i.k to i32
  %i.m = or i32 %.03544, %i.l                     ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1682

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.035.lcssa = phi i32 [ 0, %bb.a ], [ %i.i, %middle.block ], [ %i.m, %.lr.ph ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !646
  %i.p = add nsw i32 %i.o, %2                     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.r = load i32, ptr %i.q, align 4, !tbaa !645  ; 2 uses
  %i.s = icmp sgt i32 %i.p, %i.r
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.t = tail call fastcc i32 @string_buffer_realloc(ptr noundef nonnull %0, i32 noundef %i.p, i32 noundef %.035.lcssa)
  %.not40 = icmp eq i32 %i.t, 0
  br i1 %.not40, label %bb.e, label %bb.p

bb.c:                                             ; preds = %._crit_edge
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load i32, ptr %i.u, align 8, !tbaa !647
  %i.w = icmp eq i32 %i.v, 0
  %3 = icmp samesign ugt i32 %.035.lcssa, 255
  %or.cond = select i1 %i.w, i1 %3, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = tail call fastcc i32 @string_buffer_widen(ptr noundef nonnull %0, i32 noundef %i.r)
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !647
  %.not41 = icmp eq i32 %i.z, 0
  br i1 %.not41, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.e
  br i1 %i.a, label %.lr.ph47, label %.loopexit

.lr.ph47:                                         ; preds = %.preheader
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count52 = zext nneg i32 %2 to i64
  br label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !649 ; 5 uses
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = lshr i64 %i.ad, 60
  %i.af = trunc nuw nsw i64 %i.ae to i32
  %i.ag = and i32 %i.af, 3
  switch i32 %i.ag, label %default.unreachable [
    i32 0, label %bb.g
    i32 1, label %bb.h
    i32 2, label %bb.i
    i32 3, label %bb.j
  ]

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  br label %str16.exit

bb.h:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !389
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.am = load i32, ptr %i.al, align 8, !tbaa !390
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.an
  br label %str16.exit

bb.i:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !239
  br label %str16.exit

default.unreachable:                              ; preds = %bb.k, %bb.f
  unreachable

bb.j:                                             ; preds = %bb.f
  tail call void @abort() #50
  unreachable

str16.exit:                                       ; preds = %bb.g, %bb.h, %bb.i
  %.0.i.i = phi ptr [ %i.ah, %bb.g ], [ %i.ao, %bb.h ], [ %i.aq, %bb.i ]
  %i.ar = load i32, ptr %i.n, align 8, !tbaa !646
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [2 x i8], ptr %.0.i.i, i64 %i.as
  %i.au = shl i32 %2, 1
  %i.av = sext i32 %i.au to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.at, ptr align 2 %1, i64 %i.av, i1 false)
  br label %.loopexit

bb.k:                                             ; preds = %.lr.ph47, %str8.exit
  %indvars.iv49 = phi i64 [ 0, %.lr.ph47 ], [ %indvars.iv.next50, %str8.exit ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv49
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !221
  %i.ay = trunc i16 %i.ax to i8
  %i.az = load ptr, ptr %i.aa, align 8, !tbaa !649 ; 5 uses
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = lshr i64 %i.ba, 60
  %i.bc = trunc nuw nsw i64 %i.bb to i32
  %i.bd = and i32 %i.bc, 3
  switch i32 %i.bd, label %default.unreachable [
    i32 0, label %bb.l
    i32 1, label %bb.m
    i32 2, label %bb.n
    i32 3, label %bb.o
  ]

bb.l:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  br label %str8.exit

bb.m:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !389
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !390
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bk
  br label %str8.exit

bb.n:                                             ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !239
  br label %str8.exit

bb.o:                                             ; preds = %bb.k
  tail call void @abort() #50
  unreachable

str8.exit:                                        ; preds = %bb.l, %bb.m, %bb.n
  %.0.i.i42 = phi ptr [ %i.be, %bb.l ], [ %i.bl, %bb.m ], [ %i.bn, %bb.n ]
  %i.bo = load i32, ptr %i.n, align 8, !tbaa !646
  %i.bp = trunc nuw nsw i64 %indvars.iv49 to i32
  %i.bq = add nsw i32 %i.bo, %i.bp
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds i8, ptr %.0.i.i42, i64 %i.br
  store i8 %i.ay, ptr %i.bs, align 1, !tbaa !218
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1 ; 2 uses
  %exitcond53.not = icmp eq i64 %indvars.iv.next50, %wide.trip.count52
  br i1 %exitcond53.not, label %.loopexit, label %bb.k, !llvm.loop !1683

.loopexit:                                        ; preds = %str8.exit, %.preheader, %str16.exit
  %.pn = load i32, ptr %i.n, align 8, !tbaa !646
  %storemerge = add nsw i32 %.pn, %2
  store i32 %storemerge, ptr %i.n, align 8, !tbaa !646
  br label %bb.p

bb.p:                                             ; preds = %bb.d, %bb.b, %.loopexit
  %.036 = phi i32 [ -1, %bb.b ], [ 0, %.loopexit ], [ -1, %bb.d ]
  ret i32 %.036
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @string_buffer_write8(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !646
  %i.c = add nsw i32 %i.b, %2                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !645
  %i.f = icmp sgt i32 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call fastcc i32 @string_buffer_realloc(ptr noundef nonnull %0, i32 noundef %i.c, i32 noundef 0)
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !647
  %.not26 = icmp eq i32 %i.i, 0
  br i1 %.not26, label %bb.h, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.j = icmp sgt i32 %2, 0
  br i1 %i.j, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !649  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %str16.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %str16.exit ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.p = load i8, ptr %i.o, align 1, !tbaa !218
  %i.q = zext i8 %i.p to i16
  %i.r = load i64, ptr %i.l, align 8
  %i.s = lshr i64 %i.r, 60
  %i.t = trunc nuw nsw i64 %i.s to i32
  %i.u = and i32 %i.t, 3
  switch i32 %i.u, label %.unreachabledefault [
    i32 0, label %str16.exit
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !389
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load i32, ptr %i.n, align 8, !tbaa !390
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.y
  br label %str16.exit

bb.f:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.m, align 8, !tbaa !239
  br label %str16.exit

.unreachabledefault:                              ; preds = %bb.d
  unreachable

end_hunk_3
