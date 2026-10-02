Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/binascii?download=true
inline.NumInlined: 74
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@PyBytesWriter_FinishWithPointer

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

declare i32 @_PyLong_Size_t_Converter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @base85_decode_impl(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !22
  %i.b = getelementptr i8, ptr %1, i64 16         ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !23   ; 3 uses
  %i.d = add i64 %i.c, 4
  %i.e = udiv i64 %i.d, 5
  %i.f = shl nuw i64 %i.e, 2
  %i.g = tail call ptr @PyBytesWriter_Create(i64 noundef %i.f) #6 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @PyBytesWriter_GetData(ptr noundef nonnull %i.g) #6 ; 2 uses
  %i.j = icmp sgt i64 %i.c, 0
  br i1 %i.j, label %.lr.ph85, label %._crit_edge

.lr.ph85:                                         ; preds = %bb.b, %.loopexit
  %i.k = phi i1 [ %i.bb, %.loopexit ], [ true, %bb.b ]
  %.04984 = phi i32 [ %.150, %.loopexit ], [ 0, %bb.b ] ; 2 uses
  %.05183 = phi i32 [ %.152, %.loopexit ], [ 0, %bb.b ] ; 3 uses
  %.05382 = phi ptr [ %.2, %.loopexit ], [ %i.i, %bb.b ] ; 7 uses
  %.05681 = phi i64 [ %i.az, %.loopexit ], [ %i.c, %bb.b ] ; 7 uses
  %.05780 = phi ptr [ %i.ba, %.loopexit ], [ %i.a, %bb.b ] ; 2 uses
  br i1 %i.k, label %bb.c, label %.thread

bb.c:                                             ; preds = %.lr.ph85
  %i.l = load i8, ptr %.05780, align 1, !tbaa !17
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr i8, ptr %2, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !17    ; 2 uses
  %i.p = zext nneg i8 %i.o to i32
  %i.q = icmp ult i8 %i.o, 85
  br i1 %i.q, label %.thread, label %bb.i

.thread:                                          ; preds = %.lr.ph85, %bb.c
  %.04866 = phi i32 [ %i.p, %bb.c ], [ 84, %.lr.ph85 ] ; 3 uses
  %i.r = icmp eq i32 %.04984, 4
  br i1 %i.r, label %bb.d, label %bb.h

bb.d:                                             ; preds = %.thread
  %i.s = icmp ugt i32 %.05183, 50529027
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = mul nuw i32 %.05183, 85                  ; 2 uses
  %i.u = xor i32 %.04866, -1
  %i.v = icmp ugt i32 %i.t, %i.u
  br i1 %i.v, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.w = tail call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %.not64 = icmp eq ptr %i.w, null
  br i1 %.not64, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !14
  %i.y = load i64, ptr %i.b, align 8, !tbaa !23
  %i.z = sub i64 %i.y, %.05681
  %.fr = freeze i64 %i.z                          ; 2 uses
  %i.aa = srem i64 %.fr, 5
  %i.ab = sub nsw i64 %.fr, %i.aa
  %i.ac = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.x, ptr noundef nonnull @.str.49, ptr noundef %3, i64 noundef %i.ab) #6 ; 0 uses
  br label %bb.l

bb.h:                                             ; preds = %.thread
  %i.ad = mul i32 %.05183, 85
  %i.ae = add i32 %.04866, %i.ad
  %i.af = add i32 %.04984, 1
  br label %.loopexit

bb.i:                                             ; preds = %bb.c
  %i.ag = tail call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %.not = icmp eq ptr %i.ag, null
  br i1 %.not, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !14
  %i.ai = load i64, ptr %i.b, align 8, !tbaa !23
  %i.aj = sub i64 %i.ai, %.05681
  %i.ak = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ah, ptr noundef nonnull @.str.50, ptr noundef %3, i64 noundef %i.aj) #6 ; 0 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.e
  %i.al = add i32 %.04866, %i.t                   ; 4 uses
  %i.am = icmp sgt i64 %.05681, -3
  br i1 %i.am, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.k
  %i.an = lshr i32 %i.al, 24
  %i.ao = trunc nuw i32 %i.an to i8
  %i.ap = getelementptr i8, ptr %.05382, i64 1    ; 2 uses
  store i8 %i.ao, ptr %.05382, align 1, !tbaa !17
  %.not99 = icmp eq i64 %.05681, -2
  br i1 %.not99, label %.loopexit, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.aq = lshr i32 %i.al, 16
  %i.ar = trunc i32 %i.aq to i8
  %i.as = getelementptr i8, ptr %.05382, i64 2    ; 2 uses
  store i8 %i.ar, ptr %i.ap, align 1, !tbaa !17
  %i.at = icmp sgt i64 %.05681, -1
  br i1 %i.at, label %.lr.ph.2, label %.loopexit

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.au = lshr i32 %i.al, 8
  %i.av = trunc i32 %i.au to i8
  %i.aw = getelementptr i8, ptr %.05382, i64 3    ; 2 uses
  store i8 %i.av, ptr %i.as, align 1, !tbaa !17
  %.not100 = icmp eq i64 %.05681, 0
  br i1 %.not100, label %.loopexit, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.ax = trunc i32 %i.al to i8
  %i.ay = getelementptr i8, ptr %.05382, i64 4
  store i8 %i.ax, ptr %i.aw, align 1, !tbaa !17
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %bb.k, %bb.h
  %.2 = phi ptr [ %.05382, %bb.h ], [ %.05382, %bb.k ], [ %i.ap, %.lr.ph ], [ %i.as, %.lr.ph.1 ], [ %i.aw, %.lr.ph.2 ], [ %i.ay, %.lr.ph.3 ] ; 2 uses
  %.152 = phi i32 [ %i.ae, %bb.h ], [ 0, %bb.k ], [ 0, %.lr.ph.3 ], [ 0, %.lr.ph.2 ], [ 0, %.lr.ph.1 ], [ 0, %.lr.ph ]
  %.150 = phi i32 [ %i.af, %bb.h ], [ 0, %bb.k ], [ 0, %.lr.ph.3 ], [ 0, %.lr.ph.2 ], [ 0, %.lr.ph.1 ], [ 0, %.lr.ph ] ; 2 uses
  %i.az = add i64 %.05681, -1                     ; 2 uses
  %i.ba = getelementptr i8, ptr %.05780, i64 1
  %i.bb = icmp sgt i64 %i.az, 0                   ; 2 uses
  %i.bc = icmp ne i32 %.150, 0
  %i.bd = select i1 %i.bb, i1 true, i1 %i.bc
  br i1 %i.bd, label %.lr.ph85, label %._crit_edge, !llvm.loop !71

._crit_edge:                                      ; preds = %.loopexit, %bb.b
  %.053.lcssa = phi ptr [ %i.i, %bb.b ], [ %.2, %.loopexit ]
  %i.be = tail call ptr @PyBytesWriter_FinishWithPointer(ptr noundef nonnull %i.g, ptr noundef %.053.lcssa) #6
  br label %bb.m

bb.l:                                             ; preds = %bb.f, %bb.i, %bb.g, %bb.j
  tail call void @PyBytesWriter_Discard(ptr noundef nonnull %i.g) #6
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %bb.l, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %i.be, %._crit_edge ], [ null, %bb.l ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @base85_encode_impl(ptr noundef %0, ptr nofree readonly captures(none) %.0.val, i64 %.16.val, i32 noundef range(i32 0, -2147483648) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = add i64 %.16.val, 3
  %i.b = lshr i64 %i.a, 2
  %i.c = mul i64 %i.b, 5                          ; 3 uses
  %.not = icmp eq i32 %1, 0                       ; 2 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = srem i64 %.16.val, 4                     ; 2 uses
  %.not80 = icmp eq i64 %i.d, 0
  br i1 %.not80, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.neg = add nsw i64 %i.d, -4
  %i.e = add i64 %.neg, %i.c
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.072 = phi i64 [ %i.c, %bb.a ], [ %i.e, %bb.c ], [ %i.c, %bb.b ] ; 2 uses
  %i.f = icmp slt i64 %.072, 0
  br i1 %i.f, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.g = tail call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !14
  %i.j = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.i, ptr noundef nonnull @.str.51, ptr noundef %3) #6 ; 0 uses
  br label %bb.p

bb.g:                                             ; preds = %bb.d
  %i.k = tail call ptr @PyBytesWriter_Create(i64 noundef %.072) #6 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = tail call ptr @PyBytesWriter_GetData(ptr noundef nonnull %i.k) #6 ; 2 uses
  %i.n = icmp sgt i64 %.16.val, 3
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h, %.lr.ph
  %.0703 = phi ptr [ %i.ap, %.lr.ph ], [ %i.m, %bb.h ] ; 6 uses
  %.0732 = phi i64 [ %i.aq, %.lr.ph ], [ %.16.val, %bb.h ] ; 2 uses
  %.0741 = phi ptr [ %i.ar, %.lr.ph ], [ %.0.val, %bb.h ] ; 2 uses
  %4 = load i32, ptr %.0741, align 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)      ; 5 uses
  %i.o = urem i32 %5, 85
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr i8, ptr %2, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !17
  %i.s = getelementptr i8, ptr %.0703, i64 4
  store i8 %i.r, ptr %i.s, align 1, !tbaa !17
  %i.t = udiv i32 %5, 85
  %i.u = urem i32 %i.t, 85
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr i8, ptr %2, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !17
  %i.y = getelementptr i8, ptr %.0703, i64 3
  store i8 %i.x, ptr %i.y, align 1, !tbaa !17
  %i.z = udiv i32 %5, 7225
  %i.aa = urem i32 %i.z, 85
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr i8, ptr %2, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !17
  %i.ae = getelementptr i8, ptr %.0703, i64 2
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !17
  %i.af = udiv i32 %5, 614125
  %.lhs.trunc = trunc nuw nsw i32 %i.af to i16
  %i.ag = urem i16 %.lhs.trunc, 85
  %i.ah = zext nneg i16 %i.ag to i64
  %i.ai = getelementptr i8, ptr %2, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !17
  %i.ak = getelementptr i8, ptr %.0703, i64 1
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !17
  %i.al = udiv i32 %5, 52200625
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr i8, ptr %2, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !17
  store i8 %i.ao, ptr %.0703, align 1, !tbaa !17
  %i.ap = getelementptr i8, ptr %.0703, i64 5     ; 2 uses
  %i.aq = add nsw i64 %.0732, -4                  ; 2 uses
  %i.ar = getelementptr i8, ptr %.0741, i64 4     ; 2 uses
  %i.as = icmp samesign ugt i64 %.0732, 7
  br i1 %i.as, label %.lr.ph, label %._crit_edge, !llvm.loop !72

._crit_edge:                                      ; preds = %.lr.ph, %bb.h
  %.074.lcssa = phi ptr [ %.0.val, %bb.h ], [ %i.ar, %.lr.ph ] ; 3 uses
  %.073.lcssa = phi i64 [ %.16.val, %bb.h ], [ %i.aq, %.lr.ph ] ; 4 uses
  %.070.lcssa = phi ptr [ %i.m, %bb.h ], [ %i.ap, %.lr.ph ] ; 7 uses
  %i.at = icmp sgt i64 %.073.lcssa, 0
  br i1 %i.at, label %.preheader.1, label %bb.o

.preheader.1:                                     ; preds = %._crit_edge
  %i.au = load i8, ptr %.074.lcssa, align 1, !tbaa !17
  %i.av = zext i8 %i.au to i32                    ; 2 uses
  %.not15 = icmp eq i64 %.073.lcssa, 1
  br i1 %.not15, label %.preheader.2.thread, label %.preheader.2

.preheader.2.thread:                              ; preds = %.preheader.1
  %i.aw = shl nuw nsw i32 %i.av, 16
  br label %bb.j

.preheader.2:                                     ; preds = %.preheader.1
  %i.ax = getelementptr i8, ptr %.074.lcssa, i64 1
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !17
  %i.az = zext i8 %i.ay to i32
  %i.ba = shl nuw nsw i32 %i.av, 16
  %i.bb = shl nuw nsw i32 %i.az, 8
  %i.bc = or disjoint i32 %i.ba, %i.bb            ; 2 uses
  %i.bd = icmp samesign ugt i64 %.073.lcssa, 2
  br i1 %i.bd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.preheader.2
  %i.be = getelementptr i8, ptr %.074.lcssa, i64 2
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !17
  %i.bg = zext i8 %i.bf to i32
  %i.bh = or disjoint i32 %i.bc, %i.bg
  br label %bb.j

bb.j:                                             ; preds = %.preheader.2, %bb.i, %.preheader.2.thread
  %.1.2 = phi i32 [ %i.bh, %bb.i ], [ %i.bc, %.preheader.2 ], [ %i.aw, %.preheader.2.thread ]
  %i.bi = shl nuw i32 %.1.2, 8                    ; 5 uses
  %i.bj = add nuw nsw i64 %.073.lcssa, 1
  %i.bk = select i1 %.not, i64 %i.bj, i64 5       ; 4 uses
  %i.bl = icmp samesign ugt i64 %i.bk, 4
  br i1 %i.bl, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.j
  %i.bm = urem i32 %i.bi, 85
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr i8, ptr %2, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !17
  %i.bq = getelementptr i8, ptr %.070.lcssa, i64 4
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !17
  br label %.thread18

bb.k:                                             ; preds = %bb.j
  %i.br = icmp eq i64 %i.bk, 4
  br i1 %i.br, label %.thread18, label %bb.l

.thread18:                                        ; preds = %bb.k, %.thread
  %i.bs = udiv i32 %i.bi, 85
  %i.bt = urem i32 %i.bs, 85
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr i8, ptr %2, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !17
  %i.bx = getelementptr i8, ptr %.070.lcssa, i64 3
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !17
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.by = icmp samesign ugt i64 %i.bk, 2
  br i1 %i.by, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.thread18, %bb.l
  %i.bz = udiv i32 %i.bi, 7225
  %i.ca = urem i32 %i.bz, 85
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = getelementptr i8, ptr %2, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !17
  %i.ce = getelementptr i8, ptr %.070.lcssa, i64 2
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !17
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cf = udiv i32 %i.bi, 614125
  %.lhs.trunc19 = trunc nuw nsw i32 %i.cf to i16
  %i.cg = urem i16 %.lhs.trunc19, 85
  %i.ch = zext nneg i16 %i.cg to i64
  %i.ci = getelementptr i8, ptr %2, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !17
  %i.ck = getelementptr i8, ptr %.070.lcssa, i64 1
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !17
  %i.cl = udiv i32 %i.bi, 52200625
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = getelementptr i8, ptr %2, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !17
  store i8 %i.co, ptr %.070.lcssa, align 1, !tbaa !17
  %i.cp = getelementptr i8, ptr %.070.lcssa, i64 %i.bk
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge
  %.171 = phi ptr [ %i.cp, %bb.n ], [ %.070.lcssa, %._crit_edge ]
  %i.cq = tail call ptr @PyBytesWriter_FinishWithPointer(ptr noundef nonnull %i.k, ptr noundef %.171) #6
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.g, %bb.f, %bb.e
  %.269 = phi ptr [ null, %bb.f ], [ null, %bb.e ], [ %i.cq, %bb.o ], [ null, %bb.g ]
  ret ptr %.269
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @binascii_a2b_hex_impl(ptr noundef %0, ptr nofree readonly captures(none) %.0.val, i64 %.16.val) unnamed_addr #0 {
bb.a:
  %i.a = and i64 %.16.val, 1
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !14
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.53) #6
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.e = ashr exact i64 %.16.val, 1
  %i.f = tail call ptr @PyBytesWriter_Create(i64 noundef %i.e) #6 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @PyBytesWriter_GetData(ptr noundef nonnull %i.f) #6
  %i.i = icmp sgt i64 %.16.val, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e, %bb.h
  %.0294 = phi i64 [ %i.aa, %bb.h ], [ 0, %bb.e ] ; 2 uses
  %.0303 = phi i64 [ %i.ac, %bb.h ], [ 0, %bb.e ] ; 2 uses
  %i.j = getelementptr i8, ptr %.0.val, i64 %.0303 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !17
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr i8, ptr @_PyLong_DigitValue, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !17    ; 2 uses
  %i.o = getelementptr i8, ptr %i.j, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !17
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr i8, ptr @_PyLong_DigitValue, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !17    ; 2 uses
  %i.t = icmp ugt i8 %i.n, 15
  %i.u = icmp ugt i8 %i.s, 15
  %or.cond = select i1 %i.t, i1 true, i1 %i.u
  br i1 %or.cond, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.lr.ph
  %i.v = tail call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !14
  tail call void @PyErr_SetString(ptr noundef %i.x, ptr noundef nonnull @.str.54) #6
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph
  %i.y = shl nuw i8 %i.n, 4
  %i.z = or disjoint i8 %i.s, %i.y
  %i.aa = add i64 %.0294, 1
  %i.ab = getelementptr i8, ptr %i.h, i64 %.0294
  store i8 %i.z, ptr %i.ab, align 1, !tbaa !17
  %i.ac = add i64 %.0303, 2                       ; 2 uses
  %i.ad = icmp slt i64 %i.ac, %.16.val
  br i1 %i.ad, label %.lr.ph, label %._crit_edge, !llvm.loop !73

._crit_edge:                                      ; preds = %bb.h, %bb.e
  %i.ae = tail call ptr @PyBytesWriter_Finish(ptr noundef nonnull %i.f) #6
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.f
  tail call void @PyBytesWriter_Discard(ptr noundef nonnull %i.f) #6
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.i, %._crit_edge, %bb.b, %bb.c
  %.2 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.d ], [ %i.ae, %._crit_edge ], [ null, %bb.i ]
  ret ptr %.2
}

declare i32 @PyLong_AsInt(ptr noundef) local_unnamed_addr #1

declare ptr @PyErr_Occurred() local_unnamed_addr #1

declare ptr @_Py_strhex_bytes_with_sep(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @_PyArg_CheckPositional(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @PyLong_AsNativeBytes(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @PyErr_WarnEx(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @PyLong_FromUnsignedLong(i64 noundef) local_unnamed_addr #1

declare ptr @PyEval_SaveThread() local_unnamed_addr #1

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @PyEval_RestoreThread(ptr noundef) local_unnamed_addr #1

declare ptr @PyMem_Calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @PyErr_NoMemory() local_unnamed_addr #1

declare ptr @PyBytes_FromStringAndSize(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @PyMem_Free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @binascii_exec(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @PyModule_GetState(ptr noundef %0) #6 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !16
  %i.d = tail call ptr @PyErr_NewException(ptr noundef nonnull @.str.64, ptr noundef %i.c, ptr noundef null) #6 ; 2 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !14
  %i.e = tail call i32 @PyModule_AddObjectRef(ptr noundef %0, ptr noundef nonnull @.str.65, ptr noundef %i.d) #6
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @PyErr_NewException(ptr noundef nonnull @.str.66, ptr noundef null, ptr noundef null) #6 ; 2 uses
  %i.h = getelementptr i8, ptr %i.a, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !15
  %i.i = tail call i32 @PyModule_AddObjectRef(ptr noundef %0, ptr noundef nonnull @.str.67, ptr noundef %i.g) #6
  %.lobit = ashr i32 %i.i, 31
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %bb.a ], [ %.lobit, %bb.c ]
  ret i32 %.0
}

declare ptr @PyErr_NewException(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @PyModule_AddObjectRef(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !24, !34}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!"p1 _ZTS7_object", !11, i64 0}
!13 = !{!"binascii_state", !12, i64 0, !12, i64 8}
!14 = !{!13, !12, i64 0}
!15 = !{!13, !12, i64 8}
!16 = !{!12, !12, i64 0}
!17 = !{!8, !8, i64 0}
!18 = !{!"long", !8, i64 0}
!19 = !{!"p1 omnipotent char", !11, i64 0}
!20 = !{!"p1 long", !11, i64 0}
!21 = !{!"", !11, i64 0, !12, i64 8, !18, i64 16, !18, i64 24, !9, i64 32, !9, i64 36, !19, i64 40, !20, i64 48, !20, i64 56, !20, i64 64, !11, i64 72}
!22 = !{!21, !11, i64 0}
!23 = !{!21, !18, i64 16}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!21, !12, i64 8}
!26 = !{!"p1 _ZTS11_typeobject", !11, i64 0}
!27 = !{!"_object", !8, i64 0, !26, i64 8}
!28 = !{!"PyVarObject", !27, i64 0, !18, i64 16}
!29 = !{!28, !18, i64 16}
!30 = !{!"llvm.loop.isvectorized", i32 1}
!31 = !{!"llvm.loop.unroll.runtime.disable"}
!32 = !{!"branch_weights", i32 4, i32 12}
!33 = !{!18, !18, i64 0}
!34 = !{!"llvm.loop.peeled.count", i32 1}
!35 = !{!"short", !8, i64 0}
!36 = distinct !{!36, !24}
!37 = distinct !{!37, !24, !30, !31}
!38 = distinct !{!38, !24, !30, !31}
!39 = distinct !{!39, !24, !31, !30}
!40 = distinct !{!40, !24}
!41 = distinct !{!41, !24, !30, !31}
!42 = distinct !{!42, !24, !30, !31}
!43 = distinct !{!43, !24, !31, !30}
!44 = !{!"branch_weights", i32 8, i32 8}
!45 = distinct !{!45, !24}
!46 = distinct !{!46, !24}
!47 = distinct !{!47, !24}
!48 = distinct !{!48, !24}
!49 = distinct !{!49, !24, !30, !31}
!50 = distinct !{!50, !24, !31, !30}
!51 = distinct !{!51, !24, !30, !31}
!52 = distinct !{!52, !24, !30, !31}
!53 = distinct !{!53, !24, !31, !30}
!54 = distinct !{!54, !24}
!55 = distinct !{!55, !24}
!56 = !{!35, !35, i64 0}
!57 = distinct !{!57, !24}
!58 = distinct !{!58, !24}
!59 = distinct !{!59, !24}
!60 = distinct !{!60, !24}
!61 = !{!27, !26, i64 8}
!62 = !{!"p1 _ZTS11PyMethodDef", !11, i64 0}
!63 = !{!"p1 _ZTS11PyMemberDef", !11, i64 0}
!64 = !{!"p1 _ZTS11PyGetSetDef", !11, i64 0}
!65 = !{!"_typeobject", !28, i64 0, !19, i64 24, !18, i64 32, !18, i64 40, !11, i64 48, !18, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !18, i64 168, !19, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !18, i64 208, !11, i64 216, !11, i64 224, !62, i64 232, !63, i64 240, !64, i64 248, !26, i64 256, !12, i64 264, !11, i64 272, !11, i64 280, !18, i64 288, !11, i64 296, !11, i64 304, !11, i64 312, !11, i64 320, !11, i64 328, !12, i64 336, !12, i64 344, !12, i64 352, !11, i64 360, !12, i64 368, !11, i64 376, !9, i64 384, !11, i64 392, !11, i64 400, !8, i64 408, !35, i64 410}
!66 = !{!65, !18, i64 168}
!67 = !{!"_PyUnicodeObject_state", !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0}
!68 = !{!"", !27, i64 0, !18, i64 16, !18, i64 24, !67, i64 32}
!69 = !{!68, !18, i64 16}
!70 = !{!65, !19, i64 24}
!71 = distinct !{!71, !24}
!72 = distinct !{!72, !24}
!73 = distinct !{!73, !24}
end_hunk_0
