Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/_codecs_jp?download=true
inline.NumInlined: 24
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@shift_jis_encode:bb.a
  br label %.thread

bb.f:                                             ; preds = %PyUnicode_READ.exit
  switch i32 %.0.i, label %bb.h [
    i32 165, label %.thread
    i32 8254, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  br label %.thread

bb.h:                                             ; preds = %bb.f
  %i.n = add i32 %.0.i, -65377
  %or.cond = icmp ult i32 %i.n, 63
  br i1 %or.cond, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = icmp ugt i32 %.0.i, 65535
  br i1 %i.o, label %.thread83, label %.thread103

bb.j:                                             ; preds = %bb.h
  %i.p = trunc i32 %.0.i to i8
  %i.q = add i8 %i.p, 64
  br label %.thread

.thread:                                          ; preds = %bb.j, %bb.g, %bb.f, %bb.e
  %.05578 = phi i8 [ %i.q, %bb.j ], [ 126, %bb.g ], [ 92, %bb.f ], [ %i.m, %bb.e ]
  %i.r = icmp slt i64 %.05987, 1
  br i1 %i.r, label %.thread83, label %bb.k

bb.k:                                             ; preds = %.thread
  %i.s = load ptr, ptr %6, align 8, !tbaa !28
  store i8 %.05578, ptr %i.s, align 1, !tbaa !26
  br label %bb.r, !llvm.loop !81

.thread103:                                       ; preds = %bb.i
  %i.t = icmp slt i64 %.05987, 2
  br i1 %i.t, label %.thread83, label %bb.l

bb.l:                                             ; preds = %.thread103
  %i.u = lshr i32 %.0.i, 8
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr [16 x i8], ptr @jisxcommon_encmap, i64 %i.v ; 3 uses
  %i.x = load ptr, ptr %i.w, align 16, !tbaa !33  ; 2 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = and i32 %.0.i, 255                       ; 3 uses
  %i.z = getelementptr i8, ptr %i.w, i64 8
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !34
  %i.ab = zext i8 %i.aa to i32                    ; 2 uses
  %.not68 = icmp samesign ult i32 %i.y, %i.ab
  br i1 %.not68, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = getelementptr i8, ptr %i.w, i64 9
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !35
  %i.ae = zext i8 %i.ad to i32
  %.not69 = icmp samesign ugt i32 %i.y, %i.ae
  br i1 %.not69, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = sub nuw nsw i32 %i.y, %i.ab
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr [2 x i8], ptr %i.x, i64 %i.ag
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !30 ; 3 uses
  %.not70 = icmp eq i16 %i.ai, -1
  br i1 %.not70, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  %i.aj = icmp eq i32 %.0.i, 65340
  br i1 %i.aj, label %.thread79, label %.thread83

bb.q:                                             ; preds = %bb.o
  %.not71 = icmp sgt i16 %i.ai, -1
  br i1 %.not71, label %.thread79, label %.thread83

.thread79:                                        ; preds = %bb.p, %bb.q
  %.2 = phi i16 [ %i.ai, %bb.q ], [ 8512, %bb.p ] ; 2 uses
  %i.ak = lshr i16 %.2, 8
  %i.al = zext nneg i16 %i.ak to i32
  %i.am = add nsw i32 %i.al, -33                  ; 3 uses
  %i.an = and i32 %i.am, 1
  %.not72 = icmp eq i32 %i.an, 0
  %i.ao = select i1 %.not72, i32 0, i32 94
  %narrow = add nuw i16 %.2, 223
  %i.ap = zext i16 %narrow to i32
  %i.aq = add nuw nsw i32 %i.ao, %i.ap            ; 2 uses
  %i.ar = lshr i32 %i.am, 1
  %i.as = and i32 %i.am, 510
  %i.at = icmp samesign ult i32 %i.as, 62
  %.v = select i1 %i.at, i32 129, i32 193
  %i.au = add nuw i32 %.v, %i.ar
  %i.av = trunc i32 %i.au to i8
  %i.aw = load ptr, ptr %6, align 8, !tbaa !28
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !26
  %i.ax = and i32 %i.aq, 255
  %i.ay = icmp samesign ult i32 %i.ax, 63
  %.v73 = select i1 %i.ay, i32 64, i32 65
  %i.az = add nuw nsw i32 %.v73, %i.aq
  %i.ba = trunc i32 %i.az to i8
  %i.bb = load ptr, ptr %6, align 8, !tbaa !28
  %i.bc = getelementptr i8, ptr %i.bb, i64 1
  store i8 %i.ba, ptr %i.bc, align 1, !tbaa !26
  br label %bb.r

bb.r:                                             ; preds = %.thread79, %bb.k
  %.sink109 = phi i64 [ 2, %.thread79 ], [ 1, %bb.k ]
  %.sink = phi i64 [ -2, %.thread79 ], [ -1, %bb.k ]
  %i.bd = load i64, ptr %4, align 8, !tbaa !29
  %i.be = add i64 %i.bd, 1                        ; 3 uses
  store i64 %i.be, ptr %4, align 8, !tbaa !29
  %i.bf = load ptr, ptr %6, align 8, !tbaa !28
  %i.bg = getelementptr i8, ptr %i.bf, i64 %.sink109
  store ptr %i.bg, ptr %6, align 8, !tbaa !28
  %i.bh = add nsw i64 %.05987, %.sink
  %i.bi = icmp slt i64 %i.be, %5
  br i1 %i.bi, label %.lr.ph, label %.thread83

.thread83:                                        ; preds = %bb.r, %bb.i, %.thread, %bb.p, %.thread103, %bb.q, %bb.a
  %.258 = phi i64 [ 0, %bb.a ], [ 1, %bb.i ], [ 1, %bb.q ], [ -1, %.thread103 ], [ 1, %bb.p ], [ -1, %.thread ], [ 0, %bb.r ]
  ret i64 %.258
}

; Function Attrs: nounwind uwtable
define internal range(i64 -4, 2) i64 @shift_jis_decode(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef captures(none) %2, i64 noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph.preheader, label %.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %.pre = load ptr, ptr %2, align 8, !tbaa !28
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.p
  %i.b = phi ptr [ %i.au, %bb.p ], [ %.pre, %.lr.ph.preheader ] ; 2 uses
  %.06987 = phi i64 [ %i.av, %bb.p ], [ %3, %.lr.ph.preheader ] ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !26    ; 8 uses
  %i.d = zext i8 %i.c to i32                      ; 2 uses
  %i.e = icmp sgt i8 %i.c, -1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.f = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.d) #10
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %.thread, label %bb.p

bb.c:                                             ; preds = %.lr.ph
  %i.h = add nsw i8 %i.c, 95
  %or.cond = icmp ult i8 %i.h, 63
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = add nuw nsw i32 %i.d, 65216
  %i.j = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.i) #10
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %.thread, label %bb.p

bb.e:                                             ; preds = %bb.c
  %i.l = icmp ne i8 %i.c, -128
  %i.m = icmp samesign ult i8 %i.c, -96
  %or.cond5 = and i1 %i.l, %i.m
  %i.n = add nsw i8 %i.c, 32
  %or.cond8 = icmp ult i8 %i.n, 11
  %or.cond83 = select i1 %or.cond5, i1 true, i1 %or.cond8
  br i1 %or.cond83, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.o = icmp eq i64 %.06987, 1
  br i1 %i.o, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr i8, ptr %i.b, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !26    ; 4 uses
  %i.r = icmp ult i8 %i.q, 64
  br i1 %i.r, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  switch i8 %i.q, label %bb.i [
    i8 -1, label %.thread
    i8 -2, label %.thread
    i8 -3, label %.thread
    i8 127, label %.thread
  ]

bb.i:                                             ; preds = %bb.h
  %i.s = icmp samesign ult i8 %i.c, -32
  %.v = select i1 %i.s, i8 127, i8 63
  %i.t = add nsw i8 %.v, %i.c
  %i.u = icmp slt i8 %i.q, 0
  %.v79 = select i1 %i.u, i8 -65, i8 -64
  %i.v = add i8 %.v79, %i.q                       ; 2 uses
  %i.w = shl i8 %i.t, 1
  %i.x = icmp ugt i8 %i.v, 93                     ; 2 uses
  %i.y = zext i1 %i.x to i8
  %i.z = or disjoint i8 %i.w, %i.y                ; 2 uses
  %i.aa = select i1 %i.x, i8 -61, i8 33
  %i.ab = add i8 %i.aa, %i.v                      ; 4 uses
  %i.ac = icmp eq i8 %i.z, 0
  %i.ad = icmp eq i8 %i.ab, 64
  %or.cond17 = and i1 %i.ac, %i.ad
  br i1 %or.cond17, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ae = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef 65340) #10
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %.thread, label %bb.p, !llvm.loop !82

bb.k:                                             ; preds = %bb.i
  %i.ag = add i8 %i.z, 33
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr [16 x i8], ptr @jisx0208_decmap, i64 %i.ah ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 16, !tbaa !37 ; 2 uses
  %.not = icmp eq ptr %i.aj, null
  br i1 %.not, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr i8, ptr %i.ai, i64 8
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !38  ; 2 uses
  %.not80 = icmp ult i8 %i.ab, %i.al
  br i1 %.not80, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr i8, ptr %i.ai, i64 9
  %i.an = load i8, ptr %i.am, align 1, !tbaa !39
  %.not81 = icmp ugt i8 %i.ab, %i.an
  br i1 %.not81, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %5 = sub nuw i8 %i.ab, %i.al
  %6 = zext i8 %5 to i64
  %i.ao = getelementptr [2 x i8], ptr %i.aj, i64 %6
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !30 ; 2 uses
  %.not82 = icmp eq i16 %i.ap, -2
  br i1 %.not82, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aq = zext i16 %i.ap to i32
  %i.ar = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.aq) #10
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %.thread, label %bb.p, !llvm.loop !82

bb.p:                                             ; preds = %bb.d, %bb.b, %bb.o, %bb.j
  %.sink125 = phi i64 [ 2, %bb.o ], [ 2, %bb.j ], [ 1, %bb.b ], [ 1, %bb.d ]
  %.sink = phi i64 [ -2, %bb.o ], [ -2, %bb.j ], [ -1, %bb.b ], [ -1, %bb.d ]
  %i.at = load ptr, ptr %2, align 8, !tbaa !28
  %i.au = getelementptr i8, ptr %i.at, i64 %.sink125 ; 2 uses
  store ptr %i.au, ptr %2, align 8, !tbaa !28
  %i.av = add nsw i64 %.06987, %.sink             ; 2 uses
  %i.aw = icmp sgt i64 %i.av, 0
  br i1 %i.aw, label %.lr.ph, label %.thread

.thread:                                          ; preds = %bb.p, %bb.k, %bb.b, %bb.d, %bb.o, %bb.f, %bb.g, %bb.j, %bb.h, %bb.h, %bb.h, %bb.h, %bb.n, %bb.m, %bb.l, %bb.e, %bb.a
  %.3 = phi i64 [ 0, %bb.a ], [ 1, %bb.k ], [ 1, %bb.e ], [ 1, %bb.l ], [ 1, %bb.m ], [ 1, %bb.n ], [ 1, %bb.h ], [ 1, %bb.h ], [ 1, %bb.h ], [ 1, %bb.h ], [ -4, %bb.j ], [ 1, %bb.g ], [ -2, %bb.f ], [ -4, %bb.o ], [ -4, %bb.d ], [ -4, %bb.b ], [ 0, %bb.p ]
  ret i64 %.3
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i64 -1, 2) i64 @cp932_encode(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, i64 noundef %5, ptr nofree noundef captures(none) %6, i64 noundef %7, i32 %8) #6 {
bb.a:
  %i.a = load i64, ptr %4, align 8, !tbaa !29     ; 2 uses
  %i.b = icmp slt i64 %i.a, %5
  br i1 %i.b, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.a, %bb.ac
  %i.c = phi i64 [ %i.ck, %bb.ac ], [ %i.a, %bb.a ] ; 3 uses
  %.086115 = phi i64 [ %i.cn, %bb.ac ], [ %7, %bb.a ] ; 5 uses
  switch i32 %2, label %bb.d [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr i8, ptr %3, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !26
  %i.f = zext i8 %i.e to i32
  br label %PyUnicode_READ.exit

bb.c:                                             ; preds = %.lr.ph
  %i.g = getelementptr [2 x i8], ptr %3, i64 %i.c
  %i.h = load i16, ptr %i.g, align 2, !tbaa !30
  %i.i = zext i16 %i.h to i32
  br label %PyUnicode_READ.exit

bb.d:                                             ; preds = %.lr.ph
  %i.j = getelementptr [4 x i8], ptr %3, i64 %i.c
  %i.k = load i32, ptr %i.j, align 4, !tbaa !10
  br label %PyUnicode_READ.exit

PyUnicode_READ.exit:                              ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi i32 [ %i.f, %bb.b ], [ %i.i, %bb.c ], [ %i.k, %bb.d ] ; 12 uses
  %i.l = icmp ult i32 %.0.i, 129
  br i1 %i.l, label %bb.e, label %bb.g

bb.e:                                             ; preds = %PyUnicode_READ.exit
  %i.m = icmp slt i64 %.086115, 1
  br i1 %i.m, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = trunc nuw i32 %.0.i to i8
  %i.o = load ptr, ptr %6, align 8, !tbaa !28
  store i8 %i.n, ptr %i.o, align 1, !tbaa !26
  br label %bb.ac, !llvm.loop !83

bb.g:                                             ; preds = %PyUnicode_READ.exit
  %i.p = add i32 %.0.i, -65377
  %or.cond = icmp ult i32 %i.p, 63
  br i1 %or.cond, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.q = icmp slt i64 %.086115, 1
  br i1 %i.q, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = trunc i32 %.0.i to i8
  %i.s = add nuw i8 %i.r, 64
  %i.t = load ptr, ptr %6, align 8, !tbaa !28
  store i8 %i.s, ptr %i.t, align 1, !tbaa !26
  br label %bb.ac, !llvm.loop !83

bb.j:                                             ; preds = %bb.g
  %i.u = and i32 %.0.i, -4
  %or.cond3 = icmp eq i32 %i.u, 63728
  br i1 %or.cond3, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.v = icmp slt i64 %.086115, 1
  br i1 %i.v, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = icmp eq i32 %.0.i, 63728
  %i.x = trunc i32 %.0.i to i8
  %i.y = or disjoint i8 %i.x, 12
  %.sink = select i1 %i.w, i8 -96, i8 %i.y
  %i.z = load ptr, ptr %6, align 8, !tbaa !28
  store i8 %.sink, ptr %i.z, align 1, !tbaa !26
  br label %bb.ac, !llvm.loop !83

bb.m:                                             ; preds = %bb.j
  %i.aa = icmp ugt i32 %.0.i, 65535
  br i1 %i.aa, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ab = icmp slt i64 %.086115, 2
  br i1 %i.ab, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = lshr i32 %.0.i, 8
  %i.ad = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.ae = getelementptr [16 x i8], ptr @cp932ext_encmap, i64 %i.ad ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 16, !tbaa !33 ; 2 uses
  %.not = icmp eq ptr %i.af, null
  br i1 %.not, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ag = and i32 %.0.i, 255                      ; 3 uses
  %i.ah = getelementptr i8, ptr %i.ae, i64 8
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !34
  %i.aj = zext i8 %i.ai to i32                    ; 2 uses
  %.not99 = icmp samesign ult i32 %i.ag, %i.aj
  br i1 %.not99, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ak = getelementptr i8, ptr %i.ae, i64 9
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !35
  %i.am = zext i8 %i.al to i32
  %.not100 = icmp samesign ugt i32 %i.ag, %i.am
  br i1 %.not100, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.an = sub nuw nsw i32 %i.ag, %i.aj
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr [2 x i8], ptr %i.af, i64 %i.ao
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !30 ; 3 uses
  %.not101 = icmp eq i16 %i.aq, -1
  br i1 %.not101, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ar = lshr i16 %i.aq, 8
  %i.as = trunc nuw i16 %i.ar to i8
  %i.at = load ptr, ptr %6, align 8, !tbaa !28
  store i8 %i.as, ptr %i.at, align 1, !tbaa !26
  %i.au = trunc i16 %i.aq to i8
  br label %bb.ab

bb.t:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %i.av = getelementptr [16 x i8], ptr @jisxcommon_encmap, i64 %i.ad ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 16, !tbaa !33 ; 2 uses
  %.not102 = icmp eq ptr %i.aw, null
  br i1 %.not102, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ax = and i32 %.0.i, 255                      ; 3 uses
  %i.ay = getelementptr i8, ptr %i.av, i64 8
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !34
  %i.ba = zext i8 %i.az to i32                    ; 2 uses
  %.not103 = icmp samesign ult i32 %i.ax, %i.ba
  br i1 %.not103, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bb = getelementptr i8, ptr %i.av, i64 9
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !35
  %i.bd = zext i8 %i.bc to i32
  %.not104 = icmp samesign ugt i32 %i.ax, %i.bd
  br i1 %.not104, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.be = sub nuw nsw i32 %i.ax, %i.ba
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr [2 x i8], ptr %i.aw, i64 %i.bf
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !30 ; 4 uses
  %.not105 = icmp eq i16 %i.bh, -1
  br i1 %.not105, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.not106 = icmp sgt i16 %i.bh, -1
  br i1 %.not106, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x
  %i.bi = lshr i16 %i.bh, 8
  %i.bj = zext nneg i16 %i.bi to i32
  %i.bk = add nsw i32 %i.bj, -33                  ; 3 uses
  %i.bl = and i32 %i.bk, 1
  %.not107 = icmp eq i32 %i.bl, 0
  %i.bm = select i1 %.not107, i32 0, i32 94
  %narrow = add nuw i16 %i.bh, 223
  %i.bn = zext i16 %narrow to i32
  %i.bo = add nuw nsw i32 %i.bm, %i.bn            ; 2 uses
  %i.bp = lshr i32 %i.bk, 1
  %i.bq = and i32 %i.bk, 510
  %i.br = icmp samesign ult i32 %i.bq, 62
  %.v108 = select i1 %i.br, i32 129, i32 193
  %i.bs = add nuw i32 %.v108, %i.bp
  %i.bt = trunc i32 %i.bs to i8
  %i.bu = load ptr, ptr %6, align 8, !tbaa !28
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !26
  %i.bv = and i32 %i.bo, 255
  %i.bw = icmp samesign ult i32 %i.bv, 63
  %.v109 = select i1 %i.bw, i32 64, i32 65
  %i.bx = add nuw nsw i32 %.v109, %i.bo
  %i.by = trunc i32 %i.bx to i8
  br label %bb.ab

bb.z:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.t
  %i.bz = add nsw i32 %.0.i, -57344               ; 2 uses
  %or.cond5 = icmp ult i32 %i.bz, 1880
  br i1 %or.cond5, label %bb.aa, label %.thread

bb.aa:                                            ; preds = %bb.z
  %.lhs.trunc = trunc nuw nsw i32 %i.bz to i16    ; 2 uses
  %i.ca = udiv i16 %.lhs.trunc, 188
  %i.cb = urem i16 %.lhs.trunc, 188               ; 2 uses
  %.zext114 = trunc nuw i16 %i.cb to i8
  %i.cc = trunc nuw nsw i16 %i.ca to i8
  %i.cd = or disjoint i8 %i.cc, -16
  %i.ce = load ptr, ptr %6, align 8, !tbaa !28
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !26
  %i.cf = icmp samesign ult i16 %i.cb, 63
  %.v = select i1 %i.cf, i8 64, i8 65
  %i.cg = add nuw i8 %.v, %.zext114
  br label %bb.ab

bb.ab:                                            ; preds = %bb.y, %bb.aa, %bb.s
  %.sink142 = phi i8 [ %i.by, %bb.y ], [ %i.cg, %bb.aa ], [ %i.au, %bb.s ]
  %i.ch = load ptr, ptr %6, align 8, !tbaa !28
  %i.ci = getelementptr i8, ptr %i.ch, i64 1
  store i8 %.sink142, ptr %i.ci, align 1, !tbaa !26
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.l, %bb.i, %bb.f
  %.sink148 = phi i64 [ 2, %bb.ab ], [ 1, %bb.l ], [ 1, %bb.i ], [ 1, %bb.f ]
  %.sink145 = phi i64 [ -2, %bb.ab ], [ -1, %bb.l ], [ -1, %bb.i ], [ -1, %bb.f ]
  %i.cj = load i64, ptr %4, align 8, !tbaa !29
  %i.ck = add i64 %i.cj, 1                        ; 3 uses
  store i64 %i.ck, ptr %4, align 8, !tbaa !29
  %i.cl = load ptr, ptr %6, align 8, !tbaa !28
  %i.cm = getelementptr i8, ptr %i.cl, i64 %.sink148
  store ptr %i.cm, ptr %6, align 8, !tbaa !28
  %i.cn = add nsw i64 %.086115, %.sink145
  %i.co = icmp slt i64 %i.ck, %5
  br i1 %i.co, label %.lr.ph, label %.thread

.thread:                                          ; preds = %bb.ac, %bb.x, %bb.e, %bb.h, %bb.k, %bb.m, %bb.n, %bb.z, %bb.a
  %.2 = phi i64 [ 0, %bb.a ], [ 1, %bb.x ], [ 1, %bb.z ], [ -1, %bb.n ], [ 1, %bb.m ], [ -1, %bb.k ], [ -1, %bb.h ], [ -1, %bb.e ], [ 0, %bb.ac ]
  ret i64 %.2
}

; Function Attrs: nounwind uwtable
define internal range(i64 -4, 2) i64 @cp932_decode(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef captures(none) %2, i64 noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph.preheader, label %.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %.pre = load ptr, ptr %2, align 8, !tbaa !28
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.z
  %i.b = phi ptr [ %i.bs, %bb.z ], [ %.pre, %.lr.ph.preheader ] ; 2 uses
  %.099126 = phi i64 [ %i.bt, %bb.z ], [ %3, %.lr.ph.preheader ] ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !26    ; 11 uses
  %i.d = zext i8 %i.c to i32                      ; 4 uses
  %i.e = icmp ult i8 %i.c, -127
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.f = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.d) #10
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %.thread, label %bb.z, !llvm.loop !84

bb.c:                                             ; preds = %.lr.ph
  %i.h = add nsw i8 %i.c, 96
  %or.cond = icmp ult i8 %i.h, 64
  br i1 %or.cond, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = icmp eq i8 %i.c, -96
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef 63728) #10
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %.thread, label %bb.z, !llvm.loop !84

bb.f:                                             ; preds = %bb.d
  %i.l = add nuw nsw i32 %i.d, 65216
  %i.m = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.l) #10
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %.thread, label %bb.z, !llvm.loop !84

bb.g:                                             ; preds = %bb.c
  %i.o = icmp samesign ugt i8 %i.c, -4
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.p = add nuw nsw i32 %i.d, 63476
  %i.q = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.p) #10
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %.thread, label %bb.z, !llvm.loop !84

bb.i:                                             ; preds = %bb.g
  %i.s = icmp eq i64 %.099126, 1
  br i1 %i.s, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr i8, ptr %i.b, i64 1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !26    ; 11 uses
  %i.v = zext i8 %i.c to i64
  %i.w = getelementptr [16 x i8], ptr @cp932ext_decmap, i64 %i.v ; 3 uses
  %i.x = load ptr, ptr %i.w, align 16, !tbaa !37  ; 2 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr i8, ptr %i.w, i64 8
  %i.z = load i8, ptr %i.y, align 8, !tbaa !38    ; 2 uses
  %.not112 = icmp ult i8 %i.u, %i.z
  br i1 %.not112, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr i8, ptr %i.w, i64 9
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !39
  %.not113 = icmp ugt i8 %i.u, %i.ab
  br i1 %.not113, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %5 = sub nuw i8 %i.u, %i.z
  %6 = zext i8 %5 to i64
  %i.ac = getelementptr [2 x i8], ptr %i.x, i64 %6
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !30 ; 2 uses
  %.not114 = icmp eq i16 %i.ad, -2
  br i1 %.not114, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = zext i16 %i.ad to i32
  %i.af = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.ae) #10
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %.thread, label %bb.z

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %i.ah = icmp samesign ult i8 %i.c, -96
  %i.ai = add nsw i8 %i.c, 32
  %or.cond8 = icmp ult i8 %i.ai, 11
  %or.cond121 = select i1 %i.ah, i1 true, i1 %or.cond8
  br i1 %or.cond121, label %bb.p, label %bb.w

bb.p:                                             ; preds = %bb.o
  %i.aj = icmp ult i8 %i.u, 64
  br i1 %i.aj, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  switch i8 %i.u, label %bb.r [
    i8 -1, label %.thread
    i8 -2, label %.thread
    i8 -3, label %.thread
    i8 127, label %.thread
  ]

bb.r:                                             ; preds = %bb.q
  %i.ak = icmp samesign ult i8 %i.c, -32
  %.v115 = select i1 %i.ak, i8 127, i8 63
  %i.al = add nsw i8 %.v115, %i.c
  %i.am = icmp slt i8 %i.u, 0
  %.v116 = select i1 %i.am, i8 -65, i8 -64
  %i.an = add i8 %.v116, %i.u                     ; 2 uses
  %i.ao = shl i8 %i.al, 1
  %i.ap = icmp ugt i8 %i.an, 93                   ; 2 uses
  %i.aq = zext i1 %i.ap to i8
  %i.ar = add i8 %i.ao, 33
  %i.as = add i8 %i.ar, %i.aq
  %i.at = zext i8 %i.as to i64
  %i.au = getelementptr [16 x i8], ptr @jisx0208_decmap, i64 %i.at ; 3 uses
  %i.av = load ptr, ptr %i.au, align 16, !tbaa !37 ; 2 uses
  %.not117 = icmp eq ptr %i.av, null
  br i1 %.not117, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aw = select i1 %i.ap, i8 -61, i8 33
  %i.ax = add i8 %i.aw, %i.an                     ; 3 uses
  %i.ay = getelementptr i8, ptr %i.au, i64 8
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !38  ; 2 uses
  %.not118 = icmp ult i8 %i.ax, %i.az
  br i1 %.not118, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ba = getelementptr i8, ptr %i.au, i64 9
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !39
  %.not119 = icmp ugt i8 %i.ax, %i.bb
  br i1 %.not119, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %7 = sub nuw i8 %i.ax, %i.az
  %8 = zext i8 %7 to i64
  %i.bc = getelementptr [2 x i8], ptr %i.av, i64 %8
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !30 ; 2 uses
  %.not120 = icmp eq i16 %i.bd, -2
  br i1 %.not120, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.be = zext i16 %i.bd to i32
  %i.bf = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.be) #10
  %i.bg = icmp slt i32 %i.bf, 0
  br i1 %i.bg, label %.thread, label %bb.z

bb.w:                                             ; preds = %bb.o
  %i.bh = add nsw i8 %i.c, 16
  %or.cond17 = icmp ult i8 %i.bh, 10
  br i1 %or.cond17, label %bb.x, label %.thread

bb.x:                                             ; preds = %bb.w
  %i.bi = add i8 %i.u, -64
  %or.cond20 = icmp ult i8 %i.bi, 63
  %or.cond23 = icmp slt i8 %i.u, -3
  %or.cond122 = or i1 %or.cond23, %or.cond20
  br i1 %or.cond122, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x
  %i.bj = zext i8 %i.u to i32
  %i.bk = mul nuw nsw i32 %i.d, 188
  %i.bl = icmp slt i8 %i.u, 0
  %.v = select i1 %i.bl, i32 -65, i32 -64
  %i.bm = add nuw nsw i32 %i.bk, 12224
  %i.bn = add nuw nsw i32 %i.bm, %i.bj
  %i.bo = add nsw i32 %i.bn, %.v
  %i.bp = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.bo) #10
  %i.bq = icmp slt i32 %i.bp, 0
  br i1 %i.bq, label %.thread, label %bb.z

bb.z:                                             ; preds = %bb.v, %bb.y, %bb.n, %bb.h, %bb.f, %bb.e, %bb.b
  %.sink174 = phi i64 [ 1, %bb.h ], [ 1, %bb.f ], [ 1, %bb.b ], [ 1, %bb.e ], [ 2, %bb.n ], [ 2, %bb.y ], [ 2, %bb.v ]
  %.sink = phi i64 [ -1, %bb.h ], [ -1, %bb.f ], [ -1, %bb.b ], [ -1, %bb.e ], [ -2, %bb.n ], [ -2, %bb.y ], [ -2, %bb.v ]
  %i.br = load ptr, ptr %2, align 8, !tbaa !28
  %i.bs = getelementptr i8, ptr %i.br, i64 %.sink174 ; 2 uses
  store ptr %i.bs, ptr %2, align 8, !tbaa !28
  %i.bt = add nsw i64 %.099126, %.sink            ; 2 uses
  %i.bu = icmp sgt i64 %i.bt, 0
  br i1 %i.bu, label %.lr.ph, label %.thread

.thread:                                          ; preds = %bb.z, %bb.x, %bb.b, %bb.e, %bb.f, %bb.h, %bb.i, %bb.n, %bb.p, %bb.v, %bb.r, %bb.y, %bb.q, %bb.q, %bb.q, %bb.q, %bb.u, %bb.t, %bb.s, %bb.w, %bb.a
  %.2 = phi i64 [ 0, %bb.a ], [ 1, %bb.x ], [ 1, %bb.w ], [ 1, %bb.s ], [ 1, %bb.t ], [ 1, %bb.u ], [ 1, %bb.q ], [ 1, %bb.q ], [ 1, %bb.q ], [ 1, %bb.q ], [ -4, %bb.y ], [ 1, %bb.r ], [ -4, %bb.v ], [ 1, %bb.p ], [ -4, %bb.n ], [ -2, %bb.i ], [ -4, %bb.h ], [ -4, %bb.f ], [ -4, %bb.e ], [ -4, %bb.b ], [ 0, %bb.z ]
  ret i64 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i64 -1, 2) i64 @euc_jp_encode(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, i64 noundef %5, ptr nofree noundef captures(none) %6, i64 noundef %7, i32 %8) #6 {
bb.a:
  %i.a = load i64, ptr %4, align 8, !tbaa !29     ; 2 uses
  %i.b = icmp slt i64 %i.a, %5
  br i1 %i.b, label %.lr.ph, label %.thread81

.lr.ph:                                           ; preds = %bb.a, %bb.x
  %i.c = phi i64 [ %i.bk, %bb.x ], [ %i.a, %bb.a ] ; 3 uses
  %.06585 = phi i64 [ %i.bn, %bb.x ], [ %7, %bb.a ] ; 7 uses
  switch i32 %2, label %bb.d [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr i8, ptr %3, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !26
  %i.f = zext i8 %i.e to i32
  br label %PyUnicode_READ.exit

bb.c:                                             ; preds = %.lr.ph
  %i.g = getelementptr [2 x i8], ptr %3, i64 %i.c
  %i.h = load i16, ptr %i.g, align 2, !tbaa !30
  %i.i = zext i16 %i.h to i32
  br label %PyUnicode_READ.exit

bb.d:                                             ; preds = %.lr.ph
  %i.j = getelementptr [4 x i8], ptr %3, i64 %i.c
  %i.k = load i32, ptr %i.j, align 4, !tbaa !10
  br label %PyUnicode_READ.exit

PyUnicode_READ.exit:                              ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi i32 [ %i.f, %bb.b ], [ %i.i, %bb.c ], [ %i.k, %bb.d ] ; 8 uses
  %i.l = icmp ult i32 %.0.i, 128
  br i1 %i.l, label %bb.e, label %bb.g

bb.e:                                             ; preds = %PyUnicode_READ.exit
  %i.m = icmp slt i64 %.06585, 1
  br i1 %i.m, label %.thread81, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = trunc nuw nsw i32 %.0.i to i8
  %i.o = load ptr, ptr %6, align 8, !tbaa !28
  store i8 %i.n, ptr %i.o, align 1, !tbaa !26
  br label %bb.x, !llvm.loop !85

bb.g:                                             ; preds = %PyUnicode_READ.exit
  %i.p = icmp ugt i32 %.0.i, 65535
  br i1 %i.p, label %.thread81, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = lshr i32 %.0.i, 8
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr [16 x i8], ptr @jisxcommon_encmap, i64 %i.r ; 3 uses
  %i.t = load ptr, ptr %i.s, align 16, !tbaa !33  ; 2 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = and i32 %.0.i, 255                       ; 3 uses
  %i.v = getelementptr i8, ptr %i.s, i64 8
  %i.w = load i8, ptr %i.v, align 8, !tbaa !34
  %i.x = zext i8 %i.w to i32                      ; 2 uses
  %.not74 = icmp samesign ult i32 %i.u, %i.x
  br i1 %.not74, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr i8, ptr %i.s, i64 9
  %i.z = load i8, ptr %i.y, align 1, !tbaa !35
  %i.aa = zext i8 %i.z to i32
  %.not75 = icmp samesign ugt i32 %i.u, %i.aa
  br i1 %.not75, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = sub nuw nsw i32 %i.u, %i.x
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr [2 x i8], ptr %i.t, i64 %i.ac
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !30 ; 5 uses
  %.not76 = icmp eq i16 %i.ae, -1
  br i1 %.not76, label %bb.l, label %bb.t

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %i.af = add nsw i32 %.0.i, -65377
  %or.cond = icmp ult i32 %i.af, 63
  br i1 %or.cond, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ag = icmp slt i64 %.06585, 2
  br i1 %i.ag, label %.thread81, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ah = load ptr, ptr %6, align 8, !tbaa !28
  store i8 -114, ptr %i.ah, align 1, !tbaa !26
  %i.ai = trunc i32 %.0.i to i8
  %i.aj = add nuw i8 %i.ai, 64
  %i.ak = load ptr, ptr %6, align 8, !tbaa !28
  %i.al = getelementptr i8, ptr %i.ak, i64 1
  store i8 %i.aj, ptr %i.al, align 1, !tbaa !26
  br label %bb.x, !llvm.loop !85

bb.o:                                             ; preds = %bb.l
  %trunc = trunc nuw i32 %.0.i to i16
  switch i16 %trunc, label %.thread81 [
    i16 -196, label %.thread
    i16 165, label %bb.p
    i16 8254, label %bb.r
  ]

bb.p:                                             ; preds = %bb.o
  %i.am = icmp slt i64 %.06585, 1
  br i1 %i.am, label %.thread81, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.an = load ptr, ptr %6, align 8, !tbaa !28
  store i8 92, ptr %i.an, align 1, !tbaa !26
  br label %bb.x, !llvm.loop !85

bb.r:                                             ; preds = %bb.o
  %i.ao = icmp slt i64 %.06585, 1
  br i1 %i.ao, label %.thread81, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ap = load ptr, ptr %6, align 8, !tbaa !28
  store i8 126, ptr %i.ap, align 1, !tbaa !26
  br label %bb.x, !llvm.loop !85

bb.t:                                             ; preds = %bb.k
  %.not77 = icmp sgt i16 %i.ae, -1
  br i1 %.not77, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aq = icmp slt i64 %.06585, 3
  br i1 %i.aq, label %.thread81, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ar = load ptr, ptr %6, align 8, !tbaa !28
  store i8 -113, ptr %i.ar, align 1, !tbaa !26
  %i.as = lshr i16 %i.ae, 8
  %i.at = trunc nuw i16 %i.as to i8
  %i.au = load ptr, ptr %6, align 8, !tbaa !28
  %i.av = getelementptr i8, ptr %i.au, i64 1
  store i8 %i.at, ptr %i.av, align 1, !tbaa !26
  %i.aw = trunc i16 %i.ae to i8
  %i.ax = or i8 %i.aw, -128
  %i.ay = load ptr, ptr %6, align 8, !tbaa !28
  %i.az = getelementptr i8, ptr %i.ay, i64 2
  store i8 %i.ax, ptr %i.az, align 1, !tbaa !26
  br label %bb.x

.thread:                                          ; preds = %bb.o, %bb.t
  %.06380 = phi i16 [ %i.ae, %bb.t ], [ 8512, %bb.o ] ; 2 uses
  %i.ba = icmp slt i64 %.06585, 2
  br i1 %i.ba, label %.thread81, label %bb.w

bb.w:                                             ; preds = %.thread
  %i.bb = lshr i16 %.06380, 8
  %i.bc = trunc nuw nsw i16 %i.bb to i8
  %i.bd = or disjoint i8 %i.bc, -128
  %i.be = load ptr, ptr %6, align 8, !tbaa !28
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !26
  %i.bf = trunc i16 %.06380 to i8
  %i.bg = or i8 %i.bf, -128
  %i.bh = load ptr, ptr %6, align 8, !tbaa !28
  %i.bi = getelementptr i8, ptr %i.bh, i64 1
  store i8 %i.bg, ptr %i.bi, align 1, !tbaa !26
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.s, %bb.q, %bb.n, %bb.f
  %.sink110 = phi i64 [ 3, %bb.v ], [ 2, %bb.w ], [ 1, %bb.s ], [ 1, %bb.q ], [ 2, %bb.n ], [ 1, %bb.f ]
  %.sink = phi i64 [ -3, %bb.v ], [ -2, %bb.w ], [ -1, %bb.s ], [ -1, %bb.q ], [ -2, %bb.n ], [ -1, %bb.f ]
  %i.bj = load i64, ptr %4, align 8, !tbaa !29
  %i.bk = add i64 %i.bj, 1                        ; 3 uses
  store i64 %i.bk, ptr %4, align 8, !tbaa !29
  %i.bl = load ptr, ptr %6, align 8, !tbaa !28
  %i.bm = getelementptr i8, ptr %i.bl, i64 %.sink110
  store ptr %i.bm, ptr %6, align 8, !tbaa !28
  %i.bn = add nsw i64 %.06585, %.sink
  %i.bo = icmp slt i64 %i.bk, %5
  br i1 %i.bo, label %.lr.ph, label %.thread81

.thread81:                                        ; preds = %bb.x, %bb.r, %bb.e, %bb.o, %.thread, %bb.u, %bb.g, %bb.m, %bb.p, %bb.a
  %.2 = phi i64 [ 0, %bb.a ], [ -1, %bb.r ], [ -1, %bb.p ], [ -1, %bb.m ], [ 1, %bb.g ], [ -1, %bb.u ], [ -1, %.thread ], [ 1, %bb.o ], [ -1, %bb.e ], [ 0, %bb.x ]
  ret i64 %.2
}

; Function Attrs: nounwind uwtable
define internal range(i64 -4, 2) i64 @euc_jp_decode(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef captures(none) %2, i64 noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph.preheader, label %.thread102

.lr.ph.preheader:                                 ; preds = %bb.a
  %.pre = load ptr, ptr %2, align 8, !tbaa !28
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.u
  %i.b = phi ptr [ %i.be, %bb.u ], [ %.pre, %.lr.ph.preheader ] ; 5 uses
  %.064106 = phi i64 [ %i.bf, %bb.u ], [ %3, %.lr.ph.preheader ] ; 4 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !26    ; 4 uses
  %i.d = zext i8 %i.c to i32                      ; 2 uses
  %i.e = icmp sgt i8 %i.c, -1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.f = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.d) #10
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %.thread102, label %bb.u, !llvm.loop !86

bb.c:                                             ; preds = %.lr.ph
  switch i8 %i.c, label %bb.m [
    i8 -114, label %bb.d
    i8 -113, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = icmp eq i64 %.064106, 1
  br i1 %i.h, label %.thread102, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %i.b, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !26    ; 2 uses
  %i.k = add i8 %i.j, 95
  %or.cond = icmp ult i8 %i.k, 63
  br i1 %or.cond, label %bb.f, label %.thread102

bb.f:                                             ; preds = %bb.e
  %i.l = zext i8 %i.j to i32
  %i.m = add nuw nsw i32 %i.l, 65216
  %i.n = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.m) #10
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %.thread102, label %bb.u

bb.g:                                             ; preds = %bb.c
  %i.p = icmp samesign ult i64 %.064106, 3
  br i1 %i.p, label %.thread102, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr i8, ptr %i.b, i64 1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !26
  %i.s = xor i8 %i.r, -128
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr [16 x i8], ptr @jisx0212_decmap, i64 %i.t ; 3 uses
  %i.v = load ptr, ptr %i.u, align 16, !tbaa !37  ; 2 uses
  %.not84 = icmp eq ptr %i.v, null
  br i1 %.not84, label %.thread102, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr i8, ptr %i.b, i64 2
  %i.x = load i8, ptr %i.w, align 1, !tbaa !26
  %i.y = xor i8 %i.x, -128                        ; 3 uses
  %i.z = getelementptr i8, ptr %i.u, i64 8
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !38   ; 2 uses
  %.not85 = icmp ult i8 %i.y, %i.aa
  br i1 %.not85, label %.thread102, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr i8, ptr %i.u, i64 9
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !39
  %.not86 = icmp ugt i8 %i.y, %i.ac
  br i1 %.not86, label %.thread102, label %bb.k

bb.k:                                             ; preds = %bb.j
  %5 = sub nuw i8 %i.y, %i.aa
  %6 = zext i8 %5 to i64
  %i.ad = getelementptr [2 x i8], ptr %i.v, i64 %6
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !30 ; 2 uses
  %.not87 = icmp eq i16 %i.ae, -2
  br i1 %.not87, label %.thread102, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = zext i16 %i.ae to i32
  %i.ag = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.af) #10
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %.thread102, label %bb.u

bb.m:                                             ; preds = %bb.c
  %i.ai = icmp eq i64 %.064106, 1
  br i1 %i.ai, label %.thread102, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = getelementptr i8, ptr %i.b, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !26  ; 2 uses
  %i.al = icmp eq i8 %i.c, -95
  %i.am = icmp eq i8 %i.ak, -64
  %or.cond7 = select i1 %i.al, i1 %i.am, i1 false
  br i1 %or.cond7, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.an = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef 65340) #10
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %.thread102, label %bb.u

bb.p:                                             ; preds = %bb.n
  %i.ap = and i32 %i.d, 127
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr [16 x i8], ptr @jisx0208_decmap, i64 %i.aq ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 16, !tbaa !37 ; 2 uses
  %.not = icmp eq ptr %i.as, null
  br i1 %.not, label %.thread102, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.at = xor i8 %i.ak, -128                      ; 3 uses
  %i.au = getelementptr i8, ptr %i.ar, i64 8
  %i.av = load i8, ptr %i.au, align 8, !tbaa !38  ; 2 uses
  %.not81 = icmp ult i8 %i.at, %i.av
  br i1 %.not81, label %.thread102, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aw = getelementptr i8, ptr %i.ar, i64 9
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !39
  %.not82 = icmp ugt i8 %i.at, %i.ax
  br i1 %.not82, label %.thread102, label %bb.s

bb.s:                                             ; preds = %bb.r
  %7 = sub nuw i8 %i.at, %i.av
  %8 = zext i8 %7 to i64
  %i.ay = getelementptr [2 x i8], ptr %i.as, i64 %8
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !30 ; 2 uses
  %.not83 = icmp eq i16 %i.az, -2
  br i1 %.not83, label %.thread102, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ba = zext i16 %i.az to i32
  %i.bb = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.ba) #10
  %i.bc = icmp slt i32 %i.bb, 0
  br i1 %i.bc, label %.thread102, label %bb.u

bb.u:                                             ; preds = %bb.o, %bb.t, %bb.l, %bb.f, %bb.b
  %.sink150 = phi i64 [ 1, %bb.b ], [ 2, %bb.f ], [ 3, %bb.l ], [ 2, %bb.t ], [ 2, %bb.o ]
  %.sink = phi i64 [ -1, %bb.b ], [ -2, %bb.f ], [ -3, %bb.l ], [ -2, %bb.t ], [ -2, %bb.o ]
  %i.bd = load ptr, ptr %2, align 8, !tbaa !28
  %i.be = getelementptr i8, ptr %i.bd, i64 %.sink150 ; 2 uses
  store ptr %i.be, ptr %2, align 8, !tbaa !28
  %i.bf = add nsw i64 %.064106, %.sink            ; 2 uses
  %i.bg = icmp sgt i64 %i.bf, 0
  br i1 %i.bg, label %.lr.ph, label %.thread102

.thread102:                                       ; preds = %bb.u, %bb.b, %bb.f, %bb.d, %bb.e, %bb.l, %bb.g, %bb.k, %bb.j, %bb.i, %bb.h, %bb.t, %bb.m, %bb.o, %bb.s, %bb.r, %bb.q, %bb.p, %bb.a
  %.6 = phi i64 [ 0, %bb.a ], [ -4, %bb.b ], [ -2, %bb.d ], [ -2, %bb.g ], [ -4, %bb.f ], [ -4, %bb.l ], [ 1, %bb.e ], [ -4, %bb.t ], [ 1, %bb.h ], [ 1, %bb.i ], [ 1, %bb.j ], [ 1, %bb.k ], [ 1, %bb.p ], [ 1, %bb.q ], [ 1, %bb.r ], [ 1, %bb.s ], [ -4, %bb.o ], [ -2, %bb.m ], [ 0, %bb.u ]
  ret i64 %.6
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i64 -2, 2) i64 @shift_jis_2004_encode(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, i64 noundef %5, ptr nofree noundef captures(none) %6, i64 noundef %7, i32 noundef %8) #6 {
bb.a:
  %i.a = load i64, ptr %4, align 8, !tbaa !29     ; 2 uses
  %i.b = icmp slt i64 %i.a, %5
  br i1 %i.b, label %.lr.ph, label %.thread233

.lr.ph:                                           ; preds = %bb.a
  %i.c = and i32 %8, 1
  %i.d = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.not186 = icmp eq i32 %i.c, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.as
  %i.e = phi i64 [ %i.a, %.lr.ph ], [ %i.ef, %bb.as ] ; 5 uses
  %.0152238 = phi i64 [ %7, %.lr.ph ], [ %i.ei, %bb.as ] ; 3 uses
  switch i32 %2, label %bb.e [
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %3, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !26
  %i.h = zext i8 %i.g to i32
  br label %PyUnicode_READ.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr [2 x i8], ptr %3, i64 %i.e
  %i.j = load i16, ptr %i.i, align 2, !tbaa !30
  %i.k = zext i16 %i.j to i32
  br label %PyUnicode_READ.exit

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr [4 x i8], ptr %3, i64 %i.e
  %i.m = load i32, ptr %i.l, align 4, !tbaa !10
  br label %PyUnicode_READ.exit

PyUnicode_READ.exit:                              ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi i32 [ %i.h, %bb.c ], [ %i.k, %bb.d ], [ %i.m, %bb.e ]
  %.0.i.fr = freeze i32 %.0.i                     ; 18 uses
  %i.n = icmp ult i32 %.0.i.fr, 128
  br i1 %i.n, label %switch.early.test, label %bb.f

switch.early.test:                                ; preds = %PyUnicode_READ.exit
  switch i32 %.0.i.fr, label %.thread.thread [
    i32 92, label %.thread
    i32 126, label %.thread
  ]

.thread.thread:                                   ; preds = %switch.early.test
  %i.o = trunc nuw nsw i32 %.0.i.fr to i16
  br label %.thread197

bb.f:                                             ; preds = %PyUnicode_READ.exit
  switch i32 %.0.i.fr, label %bb.h [
    i32 165, label %.thread197
    i32 8254, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  br label %.thread197

bb.h:                                             ; preds = %bb.f
  %i.p = add i32 %.0.i.fr, -65377
  %or.cond5 = icmp ult i32 %i.p, 63
  br i1 %or.cond5, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.q = trunc nuw i32 %.0.i.fr to i16
  %i.r = add nsw i16 %i.q, 320
  br label %.thread

.thread:                                          ; preds = %switch.early.test, %switch.early.test, %bb.h, %bb.i
  %.0145 = phi i16 [ -1, %switch.early.test ], [ -1, %bb.h ], [ %i.r, %bb.i ], [ -1, %switch.early.test ] ; 4 uses
  %i.s = add nsw i16 %.0145, -161
  %or.cond8 = icmp ult i16 %i.s, 63
  br i1 %or.cond8, label %.thread197, label %bb.k

.thread197:                                       ; preds = %.thread.thread, %bb.f, %bb.g, %.thread
  %.0145201 = phi i16 [ %.0145, %.thread ], [ 92, %bb.f ], [ 126, %bb.g ], [ %i.o, %.thread.thread ]
  %i.t = icmp slt i64 %.0152238, 1
  br i1 %i.t, label %.thread233, label %bb.j

bb.j:                                             ; preds = %.thread197
  %i.u = trunc nuw i16 %.0145201 to i8
  %i.v = load ptr, ptr %6, align 8, !tbaa !28
  store i8 %i.u, ptr %i.v, align 1, !tbaa !26
  br label %bb.as, !llvm.loop !87

bb.k:                                             ; preds = %.thread
  %i.w = icmp slt i64 %.0152238, 2
  br i1 %i.w, label %.thread233, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = icmp eq i16 %.0145, -1
  br i1 %i.x, label %bb.m, label %.thread309

.thread309:                                       ; preds = %bb.l
  %i.y = zext nneg i16 %.0145 to i32              ; 2 uses
  %i.z = add nsw i32 %i.y, -33
  br label %bb.aq

bb.m:                                             ; preds = %bb.l
  %i.aa = icmp ult i32 %.0.i.fr, 65536
  br i1 %i.aa, label %bb.n, label %bb.af

bb.n:                                             ; preds = %bb.m
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !40
  %i.ac = icmp eq ptr %i.ab, inttoptr (i64 2000 to ptr)
  br i1 %i.ac, label %bb.o, label %.thread202

bb.o:                                             ; preds = %bb.n
  %trunc = trunc nuw i32 %.0.i.fr to i16
  switch i16 %trunc, label %bb.p [
    i16 -25828, label %.thread233
    i16 32363, label %.thread233
    i16 30246, label %.thread233
    i16 24183, label %.thread233
    i16 23643, label %.thread233
    i16 23032, label %.thread233
    i16 22099, label %.thread233
    i16 21534, label %.thread233
    i16 21085, label %.thread233
    i16 20465, label %.thread233
  ]

bb.p:                                             ; preds = %bb.o
  %i.ad = icmp eq i32 %.0.i.fr, 39709
  br i1 %i.ad, label %.thread226, label %.thread202

.thread202:                                       ; preds = %bb.n, %bb.p
  %i.ae = lshr i32 %.0.i.fr, 8
  %i.af = zext nneg i32 %i.ae to i64              ; 2 uses
  %i.ag = getelementptr [16 x i8], ptr @jisx0213_bmp_encmap, i64 %i.af ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 16, !tbaa !33 ; 2 uses
  %.not176 = icmp eq ptr %i.ah, null
  br i1 %.not176, label %bb.ab, label %bb.q

bb.q:                                             ; preds = %.thread202
  %i.ai = and i32 %.0.i.fr, 255                   ; 3 uses
  %i.aj = getelementptr i8, ptr %i.ag, i64 8
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !34
  %i.al = zext i8 %i.ak to i32                    ; 2 uses
  %.not177 = icmp samesign ult i32 %i.ai, %i.al
  br i1 %.not177, label %bb.ab, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.am = getelementptr i8, ptr %i.ag, i64 9
  %i.an = load i8, ptr %i.am, align 1, !tbaa !35
  %i.ao = zext i8 %i.an to i32
  %.not178 = icmp samesign ugt i32 %i.ai, %i.ao
  br i1 %.not178, label %bb.ab, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ap = sub nuw nsw i32 %i.ai, %i.al
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr [2 x i8], ptr %i.ah, i64 %i.aq
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !30 ; 2 uses
  switch i16 %i.as, label %bb.al [
    i16 -1, label %bb.ab
    i16 -2, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s
  %i.at = sub i64 %5, %i.e
  %i.au = icmp slt i64 %i.at, 2
  br i1 %i.au, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  br i1 %.not186, label %.thread233, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.av = trunc nuw i32 %.0.i.fr to i16
  %i.aw = tail call fastcc zeroext i16 @find_pairencmap(i16 noundef zeroext %i.av, i16 noundef zeroext 0) ; 2 uses
end_hunk_0
begin_hunk_1_@shift_jis_2004_encode:bb.a
  %.not188 = icmp eq i32 %i.dq, 0
  %i.dr = add nuw nsw i32 %i.dp, 61
  %spec.select189 = select i1 %.not188, i32 %i.do, i32 %i.dr ; 2 uses
  %i.ds = ashr i32 %.0144, 1                      ; 2 uses
  %i.dt = icmp slt i32 %i.ds, 31
  %i.du = select i1 %i.dt, i32 129, i32 193
  %i.dv = add nsw i32 %i.du, %i.ds
  %i.dw = trunc i32 %i.dv to i8
  %i.dx = load ptr, ptr %6, align 8, !tbaa !28
  store i8 %i.dw, ptr %i.dx, align 1, !tbaa !26
  %i.dy = icmp slt i32 %spec.select189, 63
  %i.dz = select i1 %i.dy, i32 64, i32 65
  %i.ea = add nsw i32 %i.dz, %spec.select189
  %i.eb = trunc i32 %i.ea to i8
  %i.ec = load ptr, ptr %6, align 8, !tbaa !28
  %i.ed = getelementptr i8, ptr %i.ec, i64 1
  store i8 %i.eb, ptr %i.ed, align 1, !tbaa !26
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.j
  %.2216.sink = phi i64 [ %.2216, %bb.ar ], [ 1, %bb.j ]
  %.sink315 = phi i64 [ 2, %bb.ar ], [ 1, %bb.j ]
  %.sink = phi i64 [ -2, %bb.ar ], [ -1, %bb.j ]
  %i.ee = load i64, ptr %4, align 8, !tbaa !29
  %i.ef = add i64 %i.ee, %.2216.sink              ; 3 uses
  store i64 %i.ef, ptr %4, align 8, !tbaa !29
  %i.eg = load ptr, ptr %6, align 8, !tbaa !28
  %i.eh = getelementptr i8, ptr %i.eg, i64 %.sink315
  store ptr %i.eh, ptr %6, align 8, !tbaa !28
  %i.ei = add nsw i64 %.0152238, %.sink
  %i.ej = icmp slt i64 %i.ef, %5
  br i1 %i.ej, label %bb.b, label %.thread233

.thread233:                                       ; preds = %bb.as, %bb.ah, %.thread197, %bb.k, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.v, %bb.aa, %bb.u, %bb.af, %bb.ab, %bb.ag, %bb.ae, %bb.ad, %bb.ac, %bb.ak, %bb.aj, %bb.ai, %bb.a
  %.4 = phi i64 [ 0, %bb.a ], [ 1, %bb.ah ], [ 1, %bb.ai ], [ 1, %bb.aj ], [ 1, %bb.ak ], [ 1, %bb.ac ], [ 1, %bb.ad ], [ 1, %bb.v ], [ 1, %bb.o ], [ 1, %bb.o ], [ 1, %bb.o ], [ 1, %bb.o ], [ 1, %bb.o ], [ 1, %bb.o ], [ 1, %bb.o ], [ 1, %bb.o ], [ 1, %bb.ae ], [ 1, %bb.ag ], [ 1, %bb.ab ], [ 1, %bb.af ], [ -2, %bb.u ], [ 1, %bb.aa ], [ 1, %bb.o ], [ 1, %bb.o ], [ -1, %bb.k ], [ -1, %.thread197 ], [ 0, %bb.as ]
  ret i64 %.4
}

; Function Attrs: nounwind uwtable
define internal range(i64 -4, 3) i64 @shift_jis_2004_decode(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i64 noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph, label %.thread287

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.c = getelementptr i8, ptr %4, i64 20
  %i.d = getelementptr i8, ptr %4, i64 24
  %i.e = getelementptr i8, ptr %4, i64 32         ; 5 uses
  %i.f = getelementptr i8, ptr %4, i64 16         ; 2 uses
  %i.g = getelementptr i8, ptr %4, i64 8          ; 2 uses
  %.pre = load ptr, ptr %2, align 8, !tbaa !28
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.bm
  %i.h = phi ptr [ %.pre, %.lr.ph ], [ %i.fo, %bb.bm ] ; 2 uses
  %.0220294 = phi i64 [ %3, %.lr.ph ], [ %i.fp, %bb.bm ] ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !26    ; 10 uses
  %i.j = zext i8 %i.i to i32                      ; 3 uses
  %i.k = icmp ult i8 %i.i, 92
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.j) #10
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %.thread287, label %bb.bm

bb.d:                                             ; preds = %bb.b
  %i.n = icmp eq i8 %i.i, 92
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef 165) #10
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %.thread287, label %bb.bm

bb.f:                                             ; preds = %bb.d
  %i.q = icmp ult i8 %i.i, 126
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.j) #10
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %.thread287, label %bb.bm

bb.h:                                             ; preds = %bb.f
  switch i8 %i.i, label %bb.k [
    i8 126, label %bb.i
    i8 127, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.t = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef 8254) #10
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %.thread287, label %bb.bm

bb.j:                                             ; preds = %bb.h
  %i.v = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef 127) #10
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %.thread287, label %bb.bm

bb.k:                                             ; preds = %bb.h
  %i.x = add nsw i8 %i.i, 95
  %or.cond = icmp ult i8 %i.x, 63
  br i1 %or.cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.y = add nuw nsw i32 %i.j, 65216
  %i.z = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.y) #10
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %.thread287, label %bb.bm

bb.m:                                             ; preds = %bb.k
  %i.ab = add nsw i8 %i.i, 127
  %or.cond5 = icmp ult i8 %i.ab, 31
  %i.ac = add nsw i8 %i.i, 32
  %or.cond8 = icmp ult i8 %i.ac, 29
  %or.cond278 = or i1 %or.cond5, %or.cond8
  br i1 %or.cond278, label %bb.n, label %.thread287

bb.n:                                             ; preds = %bb.m
  %i.ad = icmp eq i64 %.0220294, 1
  br i1 %i.ad, label %.thread287, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = getelementptr i8, ptr %i.h, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !26  ; 4 uses
  %i.ag = icmp ult i8 %i.af, 64
  br i1 %i.ag, label %.thread287, label %bb.p

bb.p:                                             ; preds = %bb.o
  switch i8 %i.af, label %bb.q [
    i8 -1, label %.thread287
    i8 -2, label %.thread287
    i8 -3, label %.thread287
    i8 127, label %.thread287
  ]

bb.q:                                             ; preds = %bb.p
  %i.ah = icmp samesign ult i8 %i.i, -32
  %.v = select i1 %i.ah, i8 127, i8 63
  %i.ai = add nsw i8 %.v, %i.i
  %i.aj = icmp slt i8 %i.af, 0
  %.v253 = select i1 %i.aj, i8 -65, i8 -64
  %i.ak = add i8 %.v253, %i.af                    ; 2 uses
  %i.al = shl i8 %i.ai, 1                         ; 2 uses
  %i.am = icmp ugt i8 %i.ak, 93                   ; 2 uses
  %i.an = zext i1 %i.am to i8
  %i.ao = or disjoint i8 %i.al, %i.an             ; 5 uses
  %i.ap = select i1 %i.am, i8 -61, i8 33
  %i.aq = add i8 %i.ap, %i.ak                     ; 23 uses
  %i.ar = icmp ult i8 %i.al, 94
  br i1 %i.ar, label %bb.r, label %bb.ba

bb.r:                                             ; preds = %bb.q
  %narrow = add nuw i8 %i.ao, 33                  ; 6 uses
  %i.as = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.at = icmp eq ptr %i.as, inttoptr (i64 2000 to ptr)
  br i1 %i.at, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.au = icmp eq i8 %narrow, 46
  %i.av = icmp eq i8 %i.aq, 33
  %or.cond17 = and i1 %i.av, %i.au
  br i1 %or.cond17, label %.thread287, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aw = icmp eq i8 %narrow, 47
  %i.ax = icmp eq i8 %i.aq, 126                   ; 2 uses
  %or.cond20 = and i1 %i.ax, %i.aw
  br i1 %or.cond20, label %.thread287, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ay = icmp eq i8 %narrow, 79
  %i.az = icmp eq i8 %i.aq, 84
  %or.cond26291 = or i1 %i.az, %i.ax
  %or.cond279 = and i1 %i.ay, %or.cond26291
  br i1 %or.cond279, label %.thread287, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ba = icmp eq i8 %narrow, 116
  %i.bb = icmp eq i8 %i.aq, 39
  %or.cond29 = and i1 %i.bb, %i.ba
  br i1 %or.cond29, label %.thread287, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bc = icmp eq i8 %narrow, 126
  %i.bd = add i8 %i.aq, -122
  %or.cond44293 = icmp ult i8 %i.bd, 5
  %or.cond283 = and i1 %i.bc, %or.cond44293
  br i1 %or.cond283, label %.thread287, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.r
  %i.be = zext nneg i8 %narrow to i64             ; 4 uses
  %i.bf = getelementptr [16 x i8], ptr @jisx0208_decmap, i64 %i.be ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 16, !tbaa !37 ; 2 uses
  %.not261 = icmp eq ptr %i.bg, null
  br i1 %.not261, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bh = getelementptr i8, ptr %i.bf, i64 8
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !38  ; 2 uses
  %.not262 = icmp ult i8 %i.aq, %i.bi
  br i1 %.not262, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bj = getelementptr i8, ptr %i.bf, i64 9
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !39
  %.not263 = icmp ugt i8 %i.aq, %i.bk
  br i1 %.not263, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %5 = sub nuw i8 %i.aq, %i.bi
  %6 = zext i8 %5 to i64
  %i.bl = getelementptr [2 x i8], ptr %i.bg, i64 %6
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !30 ; 2 uses
  %.not264 = icmp eq i16 %i.bm, -2
  br i1 %.not264, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bn = zext i16 %i.bm to i32
  %i.bo = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.bn) #10
  %i.bp = icmp slt i32 %i.bo, 0
  br i1 %i.bp, label %.thread287, label %bb.bm, !llvm.loop !88

bb.ac:                                            ; preds = %bb.aa, %bb.z, %bb.y, %bb.x
  %i.bq = getelementptr [16 x i8], ptr @jisx0213_1_bmp_decmap, i64 %i.be ; 3 uses
  %i.br = load ptr, ptr %i.bq, align 16, !tbaa !37 ; 2 uses
  %.not265 = icmp eq ptr %i.br, null
  br i1 %.not265, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bs = getelementptr i8, ptr %i.bq, i64 8
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !38  ; 2 uses
  %.not266 = icmp ult i8 %i.aq, %i.bt
  br i1 %.not266, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bu = getelementptr i8, ptr %i.bq, i64 9
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !39
  %.not267 = icmp ugt i8 %i.aq, %i.bv
  br i1 %.not267, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %7 = sub nuw i8 %i.aq, %i.bt
  %8 = zext i8 %7 to i64
  %i.bw = getelementptr [2 x i8], ptr %i.br, i64 %8
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !30 ; 2 uses
  %.not268 = icmp eq i16 %i.bx, -2
  br i1 %.not268, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.by = zext i16 %i.bx to i32
  %i.bz = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.by) #10
  %i.ca = icmp slt i32 %i.bz, 0
  br i1 %i.ca, label %.thread287, label %bb.bm, !llvm.loop !88

bb.ah:                                            ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac
  %i.cb = getelementptr [16 x i8], ptr @jisx0213_1_emp_decmap, i64 %i.be ; 3 uses
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !37 ; 2 uses
  %.not269 = icmp eq ptr %i.cc, null
  br i1 %.not269, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cd = getelementptr i8, ptr %i.cb, i64 8
  %i.ce = load i8, ptr %i.cd, align 8, !tbaa !38  ; 2 uses
  %.not270 = icmp ult i8 %i.aq, %i.ce
  br i1 %.not270, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cf = getelementptr i8, ptr %i.cb, i64 9
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !39
  %.not271 = icmp ugt i8 %i.aq, %i.cg
  br i1 %.not271, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %9 = sub nuw i8 %i.aq, %i.ce
  %10 = zext i8 %9 to i64
  %i.ch = getelementptr [2 x i8], ptr %i.cc, i64 %10
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !30 ; 2 uses
  %.not272 = icmp eq i16 %i.ci, -2
  br i1 %.not272, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cj = zext i16 %i.ci to i32
  %i.ck = or disjoint i32 %i.cj, 131072
  %i.cl = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.ck) #10
  %i.cm = icmp slt i32 %i.cl, 0
  br i1 %i.cm, label %.thread287, label %bb.bm, !llvm.loop !88

bb.am:                                            ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah
  %i.cn = getelementptr [16 x i8], ptr @jisx0213_pair_decmap, i64 %i.be ; 3 uses
  %i.co = load ptr, ptr %i.cn, align 16, !tbaa !43 ; 2 uses
  %.not273 = icmp eq ptr %i.co, null
  br i1 %.not273, label %.thread287, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cp = getelementptr i8, ptr %i.cn, i64 8
  %i.cq = load i8, ptr %i.cp, align 8, !tbaa !44  ; 2 uses
  %.not274 = icmp ult i8 %i.aq, %i.cq
  br i1 %.not274, label %.thread287, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cr = getelementptr i8, ptr %i.cn, i64 9
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !45
  %.not275 = icmp ugt i8 %i.aq, %i.cs
  br i1 %.not275, label %.thread287, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %11 = sub nuw i8 %i.aq, %i.cq
  %12 = zext i8 %11 to i64
  %i.ct = getelementptr [4 x i8], ptr %i.co, i64 %12
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !10 ; 5 uses
  %.not276 = icmp eq i32 %i.cu, 65534
  br i1 %.not276, label %.thread287, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cv = lshr i32 %i.cu, 16                      ; 4 uses
  %i.cw = and i32 %i.cu, 65535                    ; 2 uses
  %i.cx = tail call i32 @llvm.umax.i32(i32 %i.cv, i32 %i.cw) ; 2 uses
  %i.cy = load i32, ptr %i.c, align 4, !tbaa !47
  %.not277 = icmp ugt i32 %i.cx, %i.cy
  br i1 %.not277, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cz = load i64, ptr %i.d, align 8, !tbaa !48
  %i.da = load i64, ptr %i.e, align 8, !tbaa !49  ; 2 uses
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = icmp sgt i64 %i.db, 1
  br i1 %i.dc, label %.thread, label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar
  %i.dd = tail call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %4, i64 noundef 2, i32 noundef %i.cx) #10
  %i.de = icmp slt i32 %i.dd, 0
  br i1 %i.de, label %.thread287, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.as
  %.pre361 = load i64, ptr %i.e, align 8, !tbaa !49
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.ar
  %i.df = phi i64 [ %.pre361, %..thread_crit_edge ], [ %i.da, %bb.ar ] ; 5 uses
  %i.dg = load i32, ptr %i.f, align 8, !tbaa !50
  %i.dh = load ptr, ptr %i.g, align 8, !tbaa !51  ; 5 uses
  switch i32 %i.dg, label %bb.av [
    i32 1, label %bb.at
    i32 2, label %bb.au
  ]

bb.at:                                            ; preds = %.thread
  %i.di = trunc i32 %i.cv to i8
  %i.dj = getelementptr i8, ptr %i.dh, i64 %i.df
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !26
  %.pre362 = load ptr, ptr %i.g, align 8, !tbaa !51
  %.pre363 = load i64, ptr %i.e, align 8, !tbaa !49
  br label %PyUnicode_WRITE.exit

bb.au:                                            ; preds = %.thread
  %i.dk = trunc nuw i32 %i.cv to i16
  %i.dl = getelementptr [2 x i8], ptr %i.dh, i64 %i.df
  store i16 %i.dk, ptr %i.dl, align 2, !tbaa !30
  br label %PyUnicode_WRITE.exit

bb.av:                                            ; preds = %.thread
  %i.dm = getelementptr [4 x i8], ptr %i.dh, i64 %i.df
  store i32 %i.cv, ptr %i.dm, align 4, !tbaa !10
  br label %PyUnicode_WRITE.exit

PyUnicode_WRITE.exit:                             ; preds = %bb.at, %bb.au, %bb.av
  %i.dn = phi i64 [ %.pre363, %bb.at ], [ %i.df, %bb.au ], [ %i.df, %bb.av ] ; 3 uses
  %i.do = phi ptr [ %.pre362, %bb.at ], [ %i.dh, %bb.au ], [ %i.dh, %bb.av ] ; 3 uses
  %i.dp = load i32, ptr %i.f, align 8, !tbaa !50
  %i.dq = add i64 %i.dn, 1                        ; 3 uses
  switch i32 %i.dp, label %bb.ay [
    i32 1, label %bb.aw
    i32 2, label %bb.ax
  ]

bb.aw:                                            ; preds = %PyUnicode_WRITE.exit
  %i.dr = trunc i32 %i.cu to i8
  %i.ds = getelementptr i8, ptr %i.do, i64 %i.dq
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !26
  %.pre364 = load i64, ptr %i.e, align 8, !tbaa !49
  br label %bb.az

bb.ax:                                            ; preds = %PyUnicode_WRITE.exit
  %i.dt = trunc i32 %i.cu to i16
  %i.du = getelementptr [2 x i8], ptr %i.do, i64 %i.dq
  store i16 %i.dt, ptr %i.du, align 2, !tbaa !30
  br label %bb.az

bb.ay:                                            ; preds = %PyUnicode_WRITE.exit
  %i.dv = getelementptr [4 x i8], ptr %i.do, i64 %i.dq
  store i32 %i.cw, ptr %i.dv, align 4, !tbaa !10
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw
  %i.dw = phi i64 [ %i.dn, %bb.ay ], [ %i.dn, %bb.ax ], [ %.pre364, %bb.aw ]
  %i.dx = add i64 %i.dw, 2
  store i64 %i.dx, ptr %i.e, align 8, !tbaa !49
  br label %bb.bm, !llvm.loop !88

bb.ba:                                            ; preds = %bb.q
  %i.dy = icmp ugt i8 %i.ao, 102
  %i.dz = icmp samesign ugt i8 %i.ao, 98
  %i.ea = icmp eq i8 %i.ao, 95
  %or.cond47 = or i1 %i.dz, %i.ea
  %. = select i1 %or.cond47, i8 -55, i8 -61
  %.sink = select i1 %i.dy, i8 7, i8 %.
  %i.eb = add i8 %i.ao, %.sink                    ; 2 uses
  %i.ec = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.ed = icmp eq ptr %i.ec, inttoptr (i64 2000 to ptr)
  %i.ee = icmp eq i8 %i.eb, 125
  %or.cond50 = select i1 %i.ed, i1 %i.ee, i1 false
  %i.ef = zext i8 %i.aq to i32                    ; 2 uses
  %i.eg = icmp eq i8 %i.aq, 59
  %or.cond53 = and i1 %i.eg, %or.cond50
  br i1 %or.cond53, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.eh = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef 39709) #10
  %i.ei = icmp slt i32 %i.eh, 0
  br i1 %i.ei, label %.thread287, label %bb.bm, !llvm.loop !88

bb.bc:                                            ; preds = %bb.ba
  %i.ej = zext i8 %i.eb to i64                    ; 2 uses
  %i.ek = getelementptr [16 x i8], ptr @jisx0213_2_bmp_decmap, i64 %i.ej ; 3 uses
  %i.el = load ptr, ptr %i.ek, align 16, !tbaa !37 ; 2 uses
  %.not = icmp eq ptr %i.el, null
  br i1 %.not, label %bb.bh, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.em = getelementptr i8, ptr %i.ek, i64 8
  %i.en = load i8, ptr %i.em, align 8, !tbaa !38  ; 2 uses
  %i.eo = zext i8 %i.en to i32
  %.not254 = icmp ult i8 %i.aq, %i.en
  br i1 %.not254, label %bb.bh, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ep = getelementptr i8, ptr %i.ek, i64 9
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !39
  %.not255 = icmp ugt i8 %i.aq, %i.eq
  br i1 %.not255, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.er = sub nuw nsw i32 %i.ef, %i.eo
  %i.es = zext nneg i32 %i.er to i64
  %i.et = getelementptr [2 x i8], ptr %i.el, i64 %i.es
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !30 ; 2 uses
  %.not256 = icmp eq i16 %i.eu, -2
  br i1 %.not256, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ev = zext i16 %i.eu to i32
  %i.ew = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.ev) #10
  %i.ex = icmp slt i32 %i.ew, 0
  br i1 %i.ex, label %.thread287, label %bb.bm, !llvm.loop !88

bb.bh:                                            ; preds = %bb.bf, %bb.be, %bb.bd, %bb.bc
  %i.ey = getelementptr [16 x i8], ptr @jisx0213_2_emp_decmap, i64 %i.ej ; 3 uses
  %i.ez = load ptr, ptr %i.ey, align 16, !tbaa !37 ; 2 uses
  %.not257 = icmp eq ptr %i.ez, null
  br i1 %.not257, label %.thread287, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fa = getelementptr i8, ptr %i.ey, i64 8
  %i.fb = load i8, ptr %i.fa, align 8, !tbaa !38  ; 2 uses
  %i.fc = zext i8 %i.fb to i32
  %.not258 = icmp ult i8 %i.aq, %i.fb
  br i1 %.not258, label %.thread287, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fd = getelementptr i8, ptr %i.ey, i64 9
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !39
  %.not259 = icmp ugt i8 %i.aq, %i.fe
  br i1 %.not259, label %.thread287, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ff = sub nuw nsw i32 %i.ef, %i.fc
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = getelementptr [2 x i8], ptr %i.ez, i64 %i.fg
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !30 ; 2 uses
  %.not260 = icmp eq i16 %i.fi, -2
  br i1 %.not260, label %.thread287, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.fj = zext i16 %i.fi to i32
  %i.fk = or disjoint i32 %i.fj, 131072
  %i.fl = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.fk) #10
  %i.fm = icmp slt i32 %i.fl, 0
  br i1 %i.fm, label %.thread287, label %bb.bm, !llvm.loop !88

bb.bm:                                            ; preds = %bb.e, %bb.i, %bb.l, %bb.j, %bb.g, %bb.c, %bb.az, %bb.ag, %bb.al, %bb.ab, %bb.bb, %bb.bg, %bb.bl
  %.sink386 = phi i64 [ 2, %bb.az ], [ 2, %bb.bl ], [ 2, %bb.bg ], [ 2, %bb.bb ], [ 2, %bb.ab ], [ 2, %bb.al ], [ 2, %bb.ag ], [ 1, %bb.c ], [ 1, %bb.g ], [ 1, %bb.j ], [ 1, %bb.l ], [ 1, %bb.i ], [ 1, %bb.e ]
  %.sink383 = phi i64 [ -2, %bb.az ], [ -2, %bb.bl ], [ -2, %bb.bg ], [ -2, %bb.bb ], [ -2, %bb.ab ], [ -2, %bb.al ], [ -2, %bb.ag ], [ -1, %bb.c ], [ -1, %bb.g ], [ -1, %bb.j ], [ -1, %bb.l ], [ -1, %bb.i ], [ -1, %bb.e ]
  %i.fn = load ptr, ptr %2, align 8, !tbaa !28
  %i.fo = getelementptr i8, ptr %i.fn, i64 %.sink386 ; 2 uses
  store ptr %i.fo, ptr %2, align 8, !tbaa !28
  %i.fp = add nsw i64 %.0220294, %.sink383        ; 2 uses
  %i.fq = icmp sgt i64 %i.fp, 0
  br i1 %i.fq, label %bb.b, label %.thread287

.thread287:                                       ; preds = %bb.bm, %bb.bh, %bb.c, %bb.e, %bb.g, %bb.i, %bb.j, %bb.l, %bb.bl, %bb.n, %bb.o, %bb.s, %bb.ab, %bb.ag, %bb.al, %bb.am, %bb.bb, %bb.bg, %bb.p, %bb.p, %bb.p, %bb.p, %bb.w, %bb.v, %bb.u, %bb.t, %bb.ap, %bb.ao, %bb.an, %bb.bk, %bb.bj, %bb.bi, %bb.m, %bb.as, %bb.a
  %.6 = phi i64 [ 0, %bb.a ], [ 1, %bb.bh ], [ -4, %bb.as ], [ 1, %bb.m ], [ 1, %bb.bi ], [ 1, %bb.bj ], [ 1, %bb.bk ], [ 1, %bb.an ], [ 1, %bb.ao ], [ 1, %bb.ap ], [ 2, %bb.t ], [ 2, %bb.u ], [ 2, %bb.v ], [ 2, %bb.w ], [ 1, %bb.p ], [ 1, %bb.p ], [ 1, %bb.p ], [ 1, %bb.p ], [ -4, %bb.bg ], [ -4, %bb.bb ], [ 1, %bb.am ], [ -4, %bb.c ], [ -4, %bb.al ], [ -4, %bb.ag ], [ -4, %bb.ab ], [ 2, %bb.s ], [ 1, %bb.o ], [ -2, %bb.n ], [ -4, %bb.bl ], [ -4, %bb.l ], [ -4, %bb.j ], [ -4, %bb.i ], [ -4, %bb.g ], [ -4, %bb.e ], [ 0, %bb.bm ]
  ret i64 %.6
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i64 -2, 2) i64 @euc_jis_2004_encode(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, i64 noundef %5, ptr nofree noundef captures(none) %6, i64 noundef %7, i32 noundef %8) #6 {
bb.a:
  %i.a = load i64, ptr %4, align 8, !tbaa !29     ; 2 uses
  %i.b = icmp slt i64 %i.a, %5
end_hunk_1
