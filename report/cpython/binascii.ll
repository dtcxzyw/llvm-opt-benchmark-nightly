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
  br i1 %i.i, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.j = add nsw i64 %.16.val, -2
  %i.k = lshr exact i64 %i.j, 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %.0294 = phi i64 [ %i.ac, %bb.h ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.0303 = phi i64 [ %i.ae, %bb.h ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.l = getelementptr i8, ptr %.0.val, i64 %.0303 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !17
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr i8, ptr @_PyLong_DigitValue, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !17    ; 2 uses
  %i.q = getelementptr i8, ptr %i.l, i64 1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !17
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr i8, ptr @_PyLong_DigitValue, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !17    ; 2 uses
  %i.v = icmp ugt i8 %i.p, 15
  %i.w = icmp ugt i8 %i.u, 15
  %or.cond = select i1 %i.v, i1 true, i1 %i.w
  br i1 %or.cond, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.lr.ph
  %i.x = tail call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !14
  tail call void @PyErr_SetString(ptr noundef %i.z, ptr noundef nonnull @.str.54) #6
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph
  %i.aa = shl nuw i8 %i.p, 4
  %i.ab = or disjoint i8 %i.u, %i.aa
  %i.ac = add nuw nsw i64 %.0294, 1
  %i.ad = getelementptr i8, ptr %i.h, i64 %.0294
  store i8 %i.ab, ptr %i.ad, align 1, !tbaa !17
  %i.ae = add nuw nsw i64 %.0303, 2
  %exitcond.not = icmp eq i64 %.0294, %i.k
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !73

._crit_edge:                                      ; preds = %bb.h, %bb.e
  %i.af = tail call ptr @PyBytesWriter_Finish(ptr noundef nonnull %i.f) #6
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.f
  tail call void @PyBytesWriter_Discard(ptr noundef nonnull %i.f) #6
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.i, %._crit_edge, %bb.b, %bb.c
  %.2 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.d ], [ %i.af, %._crit_edge ], [ null, %bb.i ]
  ret ptr %.2
}

end_hunk_0
