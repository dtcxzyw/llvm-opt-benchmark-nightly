Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/slowfloat?download=true
inline.NumInlined: 295
inline.NumDeleted: 28
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@slow_f16_le:bb.a
  switch i8 %i.c, label %bb.f [
    i8 31, label %bb.b
    i8 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %.not32.i = icmp eq i16 %i.d, 0
  br i1 %.not32.i, label %bb.c, label %f16ToFloatX.exit

bb.c:                                             ; preds = %bb.b
  br label %f16ToFloatX.exit

bb.d:                                             ; preds = %bb.a
  %.not31.i = icmp eq i16 %i.d, 0
  br i1 %.not31.i, label %f16ToFloatX.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %.026.i = phi i8 [ %i.g, %.preheader.i ], [ -14, %bb.d ]
  %.0.i = phi i64 [ %i.h, %.preheader.i ], [ %i.f, %bb.d ] ; 2 uses
  %i.g = add i8 %.026.i, -1                       ; 2 uses
  %i.h = shl nuw nsw i64 %.0.i, 1                 ; 2 uses
  %i.i = icmp ult i64 %.0.i, 18014398509481984
  br i1 %i.i, label %.preheader.i, label %bb.e

bb.e:                                             ; preds = %.preheader.i
  %i.j = sext i8 %i.g to i64
  br label %f16ToFloatX.exit

bb.f:                                             ; preds = %bb.a
  %i.k = zext nneg i8 %i.c to i64
  %i.l = add nsw i64 %i.k, -15
  %i.m = or disjoint i64 %i.f, 36028797018963968
  br label %f16ToFloatX.exit

f16ToFloatX.exit:                                 ; preds = %bb.d, %bb.b, %bb.c, %bb.e, %bb.f
  %.sroa.1539.0 = phi i64 [ %i.l, %bb.f ], [ undef, %bb.c ], [ %i.j, %bb.e ], [ undef, %bb.b ], [ undef, %bb.d ] ; 4 uses
  %.sroa.1037.0 = phi i8 [ 0, %bb.f ], [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %bb.b ], [ 1, %bb.d ] ; 4 uses
  %.sroa.635.0 = phi i1 [ false, %bb.f ], [ true, %bb.c ], [ false, %bb.e ], [ false, %bb.b ], [ false, %bb.d ] ; 2 uses
  %.sroa.033.0 = phi i1 [ false, %bb.f ], [ false, %bb.c ], [ false, %bb.e ], [ true, %bb.b ], [ false, %bb.d ]
  %.1.i = phi i64 [ %i.m, %bb.f ], [ 0, %bb.c ], [ %i.h, %bb.e ], [ %i.f, %bb.b ], [ 0, %bb.d ] ; 3 uses
  %i.n = lshr i16 %1, 10
  %i.o = trunc nuw nsw i16 %i.n to i8
  %i.p = and i8 %i.o, 31                          ; 2 uses
  %i.q = and i16 %1, 1023                         ; 3 uses
  %i.r = zext nneg i16 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 45                 ; 2 uses
  switch i8 %i.p, label %bb.j [
    i8 31, label %bb.g
    i8 0, label %bb.h
  ]

bb.g:                                             ; preds = %f16ToFloatX.exit
  %.not32.i10 = icmp eq i16 %i.q, 0
  br i1 %.not32.i10, label %f16ToFloatX.exit11, label %f16ToFloatX.exit11.thread

f16ToFloatX.exit11.thread:                        ; preds = %bb.g
  %i.t = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.u = or i8 %i.t, 16
  store i8 %i.u, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  br label %floatXLe.exit

bb.h:                                             ; preds = %f16ToFloatX.exit
  %.not31.i5 = icmp eq i16 %i.q, 0
  br i1 %.not31.i5, label %f16ToFloatX.exit11, label %.preheader.i6

.preheader.i6:                                    ; preds = %bb.h, %.preheader.i6
  %.026.i7 = phi i8 [ %i.v, %.preheader.i6 ], [ -14, %bb.h ]
  %.0.i8 = phi i64 [ %i.w, %.preheader.i6 ], [ %i.s, %bb.h ] ; 2 uses
  %i.v = add i8 %.026.i7, -1                      ; 2 uses
  %i.w = shl nuw nsw i64 %.0.i8, 1                ; 2 uses
  %i.x = icmp ult i64 %.0.i8, 18014398509481984
  br i1 %i.x, label %.preheader.i6, label %bb.i

bb.i:                                             ; preds = %.preheader.i6
  %i.y = sext i8 %i.v to i64
  br label %f16ToFloatX.exit11

bb.j:                                             ; preds = %f16ToFloatX.exit
  %i.z = zext nneg i8 %i.p to i64
  %i.aa = add nsw i64 %i.z, -15
  %i.ab = or disjoint i64 %i.s, 36028797018963968
  br label %f16ToFloatX.exit11

f16ToFloatX.exit11:                               ; preds = %bb.g, %bb.h, %bb.i, %bb.j
  %.sroa.1725.0 = phi i64 [ %i.aa, %bb.j ], [ undef, %bb.h ], [ %i.y, %bb.i ], [ undef, %bb.g ] ; 4 uses
  %.sroa.10.0 = phi i1 [ false, %bb.j ], [ true, %bb.h ], [ false, %bb.i ], [ false, %bb.g ] ; 3 uses
  %.sroa.6.0 = phi i8 [ %.sroa.1037.0, %bb.j ], [ %.sroa.1037.0, %bb.h ], [ %.sroa.1037.0, %bb.i ], [ 1, %bb.g ] ; 2 uses
  %.1.i9 = phi i64 [ %i.ab, %bb.j ], [ 0, %bb.h ], [ %i.w, %bb.i ], [ 0, %bb.g ] ; 3 uses
  br i1 %.sroa.033.0, label %bb.k, label %.thread

bb.k:                                             ; preds = %f16ToFloatX.exit11
  %i.ac = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.ad = or i8 %i.ac, 16
  store i8 %i.ad, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  br label %floatXLe.exit

.thread:                                          ; preds = %f16ToFloatX.exit11
  %i.ae = trunc nuw i8 %.sroa.1037.0 to i1
  %or.cond75 = and i1 %.sroa.10.0, %i.ae
  br i1 %or.cond75, label %floatXLe.exit, label %bb.l

bb.l:                                             ; preds = %.thread
  %i.af = icmp slt i16 %0, 0                      ; 2 uses
  %.not.i.unshifted = xor i16 %1, %0
  %.not.i = icmp sgt i16 %.not.i.unshifted, -1
  br i1 %.not.i, label %bb.m, label %floatXLe.exit

bb.m:                                             ; preds = %bb.l
  br i1 %i.af, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %or.cond76 = or i1 %.sroa.635.0, %.sroa.10.0
  br i1 %or.cond76, label %floatXLe.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %brmerge.not.i = icmp eq i8 %.sroa.6.0, 0
  br i1 %brmerge.not.i, label %bb.p, label %floatXLe.exit

bb.p:                                             ; preds = %bb.o
  %i.ag = icmp slt i64 %.sroa.1725.0, %.sroa.1539.0
  br i1 %i.ag, label %floatXLe.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ah = icmp slt i64 %.sroa.1539.0, %.sroa.1725.0
  br i1 %i.ah, label %floatXLe.exit, label %.sink.split.i

bb.r:                                             ; preds = %bb.m
  %brmerge33.not.i = icmp eq i8 %.sroa.6.0, 0
  br i1 %brmerge33.not.i, label %bb.s, label %floatXLe.exit

bb.s:                                             ; preds = %bb.r
  %or.cond77 = or i1 %.sroa.635.0, %.sroa.10.0
  br i1 %or.cond77, label %floatXLe.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ai = icmp slt i64 %.sroa.1539.0, %.sroa.1725.0
  br i1 %i.ai, label %floatXLe.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aj = icmp slt i64 %.sroa.1725.0, %.sroa.1539.0
  br i1 %i.aj, label %floatXLe.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.u, %bb.q
  %.sink.i.sroa.phi14.sroa.speculated = phi i64 [ %.1.i9, %bb.q ], [ %.1.i, %bb.u ]
  %.sink51.i.sroa.phi18.sroa.speculated = phi i64 [ %.1.i, %bb.q ], [ %.1.i9, %bb.u ]
  %i.ak = icmp ult i64 %.sink.i.sroa.phi14.sroa.speculated, %.sink51.i.sroa.phi18.sroa.speculated
  %i.al = icmp eq i64 %.1.i9, %.1.i
  %i.am = select i1 %i.ak, i1 true, i1 %i.al
  br label %floatXLe.exit

floatXLe.exit:                                    ; preds = %bb.k, %.thread, %f16ToFloatX.exit11.thread, %bb.l, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %.sink.split.i
  %.0.i12 = phi i1 [ false, %bb.u ], [ false, %bb.k ], [ true, %.thread ], [ %i.af, %bb.l ], [ true, %bb.n ], [ false, %bb.o ], [ true, %bb.p ], [ %i.am, %.sink.split.i ], [ false, %bb.q ], [ true, %bb.r ], [ false, %bb.s ], [ true, %bb.t ], [ false, %f16ToFloatX.exit11.thread ]
  ret i1 %.0.i12
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local zeroext i1 @slow_f16_lt(i16 %0, i16 %1) local_unnamed_addr #3 {
bb.a:
  %i.a = lshr i16 %0, 10
  %i.b = trunc nuw nsw i16 %i.a to i8
  %i.c = and i8 %i.b, 31                          ; 2 uses
  %i.d = and i16 %0, 1023                         ; 3 uses
  %i.e = zext nneg i16 %i.d to i64
  %i.f = shl nuw nsw i64 %i.e, 45                 ; 3 uses
  switch i8 %i.c, label %bb.f [
    i8 31, label %bb.b
    i8 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %.not32.i = icmp eq i16 %i.d, 0
  br i1 %.not32.i, label %bb.c, label %f16ToFloatX.exit

bb.c:                                             ; preds = %bb.b
  br label %f16ToFloatX.exit

bb.d:                                             ; preds = %bb.a
  %.not31.i = icmp eq i16 %i.d, 0
  br i1 %.not31.i, label %f16ToFloatX.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %.026.i = phi i8 [ %i.g, %.preheader.i ], [ -14, %bb.d ]
  %.0.i = phi i64 [ %i.h, %.preheader.i ], [ %i.f, %bb.d ] ; 2 uses
  %i.g = add i8 %.026.i, -1                       ; 2 uses
  %i.h = shl nuw nsw i64 %.0.i, 1                 ; 2 uses
  %i.i = icmp ult i64 %.0.i, 18014398509481984
  br i1 %i.i, label %.preheader.i, label %bb.e

bb.e:                                             ; preds = %.preheader.i
  %i.j = sext i8 %i.g to i64
  br label %f16ToFloatX.exit

bb.f:                                             ; preds = %bb.a
  %i.k = zext nneg i8 %i.c to i64
  %i.l = add nsw i64 %i.k, -15
  %i.m = or disjoint i64 %i.f, 36028797018963968
  br label %f16ToFloatX.exit

f16ToFloatX.exit:                                 ; preds = %bb.d, %bb.b, %bb.c, %bb.e, %bb.f
  %.sroa.1425.0 = phi i64 [ %i.l, %bb.f ], [ undef, %bb.c ], [ %i.j, %bb.e ], [ undef, %bb.b ], [ undef, %bb.d ] ; 4 uses
  %brmerge3644.i = phi i1 [ false, %bb.f ], [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.b ], [ true, %bb.d ]
  %.sroa.9.0 = phi i8 [ 0, %bb.f ], [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %bb.b ], [ 1, %bb.d ] ; 3 uses
  %.sroa.624.0 = phi i1 [ false, %bb.f ], [ true, %bb.c ], [ false, %bb.e ], [ false, %bb.b ], [ false, %bb.d ]
  %.sroa.022.0 = phi i1 [ false, %bb.f ], [ false, %bb.c ], [ false, %bb.e ], [ true, %bb.b ], [ false, %bb.d ]
  %.1.i = phi i64 [ %i.m, %bb.f ], [ 0, %bb.c ], [ %i.h, %bb.e ], [ %i.f, %bb.b ], [ 0, %bb.d ] ; 2 uses
  %i.n = lshr i16 %1, 10
  %i.o = trunc nuw nsw i16 %i.n to i8
  %i.p = and i8 %i.o, 31                          ; 2 uses
  %i.q = and i16 %1, 1023                         ; 3 uses
  %i.r = zext nneg i16 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 45                 ; 2 uses
  switch i8 %i.p, label %bb.j [
    i8 31, label %bb.g
    i8 0, label %bb.h
  ]

bb.g:                                             ; preds = %f16ToFloatX.exit
  %.not32.i10 = icmp eq i16 %i.q, 0
  br i1 %.not32.i10, label %f16ToFloatX.exit11, label %f16ToFloatX.exit11.thread

f16ToFloatX.exit11.thread:                        ; preds = %bb.g
  %i.t = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.u = or i8 %i.t, 16
  store i8 %i.u, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  br label %floatXLt.exit

bb.h:                                             ; preds = %f16ToFloatX.exit
  %.not31.i5 = icmp eq i16 %i.q, 0
  br i1 %.not31.i5, label %f16ToFloatX.exit11, label %.preheader.i6

.preheader.i6:                                    ; preds = %bb.h, %.preheader.i6
  %.026.i7 = phi i8 [ %i.v, %.preheader.i6 ], [ -14, %bb.h ]
  %.0.i8 = phi i64 [ %i.w, %.preheader.i6 ], [ %i.s, %bb.h ] ; 2 uses
  %i.v = add i8 %.026.i7, -1                      ; 2 uses
  %i.w = shl nuw nsw i64 %.0.i8, 1                ; 2 uses
  %i.x = icmp ult i64 %.0.i8, 18014398509481984
  br i1 %i.x, label %.preheader.i6, label %bb.i

bb.i:                                             ; preds = %.preheader.i6
  %i.y = sext i8 %i.v to i64
  br label %f16ToFloatX.exit11

bb.j:                                             ; preds = %f16ToFloatX.exit
  %i.z = zext nneg i8 %i.p to i64
  %i.aa = add nsw i64 %i.z, -15
  %i.ab = or disjoint i64 %i.s, 36028797018963968
  br label %f16ToFloatX.exit11

f16ToFloatX.exit11:                               ; preds = %bb.g, %bb.h, %bb.i, %bb.j
  %.sroa.1818.0 = phi i64 [ %i.aa, %bb.j ], [ undef, %bb.h ], [ %i.y, %bb.i ], [ undef, %bb.g ] ; 4 uses
  %.sroa.11.0 = phi i1 [ false, %bb.j ], [ true, %bb.h ], [ false, %bb.i ], [ false, %bb.g ] ; 3 uses
  %.sroa.6.0 = phi i8 [ 0, %bb.j ], [ 0, %bb.h ], [ 0, %bb.i ], [ 1, %bb.g ] ; 3 uses
  %.1.i9 = phi i64 [ %i.ab, %bb.j ], [ 0, %bb.h ], [ %i.w, %bb.i ], [ 0, %bb.g ] ; 2 uses
  br i1 %.sroa.022.0, label %bb.k, label %.thread

bb.k:                                             ; preds = %f16ToFloatX.exit11
  %i.ac = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.ad = or i8 %i.ac, 16
  store i8 %i.ad, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  br label %floatXLt.exit

.thread:                                          ; preds = %f16ToFloatX.exit11
  %.old = trunc nuw i8 %.sroa.9.0 to i1
  %or.cond62.old = and i1 %.sroa.11.0, %.old
  br i1 %or.cond62.old, label %floatXLt.exit, label %bb.l

bb.l:                                             ; preds = %.thread
  %.not.i.unshifted = xor i16 %1, %0
  %.not.i = icmp sgt i16 %.not.i.unshifted, -1
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = icmp slt i16 %0, 0
  br label %floatXLt.exit

bb.n:                                             ; preds = %bb.l
  br i1 %.sroa.624.0, label %bb.o, label %.thread.i

bb.o:                                             ; preds = %bb.n
  %i.af = trunc nuw i8 %.sroa.6.0 to i1
  br i1 %i.af, label %floatXLt.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ag = icmp slt i16 %0, 0
  %spec.select.i = or i1 %i.ag, %brmerge3644.i
  br label %floatXLt.exit

.thread.i:                                        ; preds = %bb.n
  %i.ah = icmp slt i16 %0, 0
  br i1 %i.ah, label %bb.q, label %bb.u

bb.q:                                             ; preds = %.thread.i
  br i1 %.sroa.11.0, label %floatXLt.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ai = or i8 %.sroa.6.0, %.sroa.9.0
  %brmerge.not.i = icmp eq i8 %i.ai, 0
  br i1 %brmerge.not.i, label %bb.s, label %floatXLt.exit

bb.s:                                             ; preds = %bb.r
  %i.aj = icmp slt i64 %.sroa.1818.0, %.sroa.1425.0
  br i1 %i.aj, label %floatXLt.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ak = icmp sge i64 %.sroa.1425.0, %.sroa.1818.0
  %i.al = icmp ult i64 %.1.i9, %.1.i
  %spec.select = select i1 %i.ak, i1 %i.al, i1 false
  br label %floatXLt.exit

bb.u:                                             ; preds = %.thread.i
  %i.am = or i8 %.sroa.6.0, %.sroa.9.0
  %brmerge36.not.i = icmp ne i8 %i.am, 0          ; 2 uses
  %brmerge = or i1 %.sroa.11.0, %brmerge36.not.i
  br i1 %brmerge, label %floatXLt.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.an = icmp slt i64 %.sroa.1425.0, %.sroa.1818.0
  br i1 %i.an, label %floatXLt.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ao = icmp sge i64 %.sroa.1818.0, %.sroa.1425.0
  %i.ap = icmp ult i64 %.1.i, %.1.i9
  %spec.select63 = select i1 %i.ao, i1 %i.ap, i1 false
  br label %floatXLt.exit

floatXLt.exit:                                    ; preds = %bb.u, %bb.k, %bb.w, %bb.t, %.thread, %f16ToFloatX.exit11.thread, %bb.m, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.v
  %.0.i12 = phi i1 [ true, %bb.q ], [ false, %bb.k ], [ %i.ae, %bb.m ], [ false, %.thread ], [ false, %bb.o ], [ %spec.select63, %bb.w ], [ false, %bb.r ], [ true, %bb.s ], [ %spec.select.i, %bb.p ], [ %spec.select, %bb.t ], [ %brmerge36.not.i, %bb.u ], [ false, %f16ToFloatX.exit11.thread ], [ true, %bb.v ]
  ret i1 %.0.i12
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local zeroext i1 @slow_f16_eq_signaling(i16 %0, i16 %1) local_unnamed_addr #3 {
bb.a:
  %i.a = lshr i16 %0, 10
  %i.b = trunc nuw nsw i16 %i.a to i8
  %i.c = and i8 %i.b, 31                          ; 2 uses
  %i.d = and i16 %0, 1023                         ; 3 uses
  %i.e = zext nneg i16 %i.d to i64
  %i.f = shl nuw nsw i64 %i.e, 45                 ; 3 uses
  switch i8 %i.c, label %bb.f [
    i8 31, label %bb.b
    i8 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %.not32.i = icmp eq i16 %i.d, 0
  br i1 %.not32.i, label %bb.c, label %f16ToFloatX.exit

bb.c:                                             ; preds = %bb.b
  br label %f16ToFloatX.exit

bb.d:                                             ; preds = %bb.a
  %.not31.i = icmp eq i16 %i.d, 0
  br i1 %.not31.i, label %f16ToFloatX.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %.026.i = phi i8 [ %i.g, %.preheader.i ], [ -14, %bb.d ]
  %.0.i = phi i64 [ %i.h, %.preheader.i ], [ %i.f, %bb.d ] ; 2 uses
  %i.g = add i8 %.026.i, -1                       ; 2 uses
  %i.h = shl nuw nsw i64 %.0.i, 1                 ; 2 uses
  %i.i = icmp ult i64 %.0.i, 18014398509481984
  br i1 %i.i, label %.preheader.i, label %bb.e

bb.e:                                             ; preds = %.preheader.i
  %i.j = sext i8 %i.g to i64
  br label %f16ToFloatX.exit

bb.f:                                             ; preds = %bb.a
  %i.k = zext nneg i8 %i.c to i64
  %i.l = add nsw i64 %i.k, -15
  %i.m = or disjoint i64 %i.f, 36028797018963968
  br label %f16ToFloatX.exit

f16ToFloatX.exit:                                 ; preds = %bb.d, %bb.b, %bb.c, %bb.e, %bb.f
  %.sroa.1421.0 = phi i64 [ %i.l, %bb.f ], [ undef, %bb.c ], [ %i.j, %bb.e ], [ undef, %bb.b ], [ undef, %bb.d ]
  %.sroa.918.0 = phi i1 [ false, %bb.f ], [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.b ], [ true, %bb.d ]
  %.sroa.617.0 = phi i8 [ 0, %bb.f ], [ 1, %bb.c ], [ 0, %bb.e ], [ 0, %bb.b ], [ 0, %bb.d ] ; 2 uses
  %.sroa.015.0 = phi i1 [ false, %bb.f ], [ false, %bb.c ], [ false, %bb.e ], [ true, %bb.b ], [ false, %bb.d ]
  %.1.i = phi i64 [ %i.m, %bb.f ], [ 0, %bb.c ], [ %i.h, %bb.e ], [ %i.f, %bb.b ], [ 0, %bb.d ]
  %i.n = lshr i16 %1, 10
  %i.o = trunc nuw nsw i16 %i.n to i8
  %i.p = and i8 %i.o, 31                          ; 2 uses
  %i.q = and i16 %1, 1023                         ; 3 uses
  %i.r = zext nneg i16 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 45                 ; 2 uses
  switch i8 %i.p, label %bb.j [
    i8 31, label %bb.g
    i8 0, label %bb.h
  ]

bb.g:                                             ; preds = %f16ToFloatX.exit
  %.not32.i10 = icmp eq i16 %i.q, 0
  br i1 %.not32.i10, label %f16ToFloatX.exit11, label %f16ToFloatX.exit11.thread

f16ToFloatX.exit11.thread:                        ; preds = %bb.g
  %i.t = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.u = or i8 %i.t, 16
  store i8 %i.u, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  br label %floatXEq.exit

bb.h:                                             ; preds = %f16ToFloatX.exit
  %.not31.i5 = icmp eq i16 %i.q, 0
  br i1 %.not31.i5, label %f16ToFloatX.exit11, label %.preheader.i6

.preheader.i6:                                    ; preds = %bb.h, %.preheader.i6
  %.026.i7 = phi i8 [ %i.v, %.preheader.i6 ], [ -14, %bb.h ]
  %.0.i8 = phi i64 [ %i.w, %.preheader.i6 ], [ %i.s, %bb.h ] ; 2 uses
  %i.v = add i8 %.026.i7, -1                      ; 2 uses
  %i.w = shl nuw nsw i64 %.0.i8, 1                ; 2 uses
  %i.x = icmp ult i64 %.0.i8, 18014398509481984
  br i1 %i.x, label %.preheader.i6, label %bb.i

bb.i:                                             ; preds = %.preheader.i6
  %i.y = sext i8 %i.v to i64
  br label %f16ToFloatX.exit11

bb.j:                                             ; preds = %f16ToFloatX.exit
  %i.z = zext nneg i8 %i.p to i64
  %i.aa = add nsw i64 %i.z, -15
  %i.ab = or disjoint i64 %i.s, 36028797018963968
  br label %f16ToFloatX.exit11

f16ToFloatX.exit11:                               ; preds = %bb.g, %bb.h, %bb.i, %bb.j
  %.sroa.1414.0 = phi i64 [ %i.aa, %bb.j ], [ undef, %bb.h ], [ %i.y, %bb.i ], [ undef, %bb.g ]
  %.sroa.9.0 = phi i1 [ false, %bb.j ], [ %.sroa.918.0, %bb.h ], [ false, %bb.i ], [ false, %bb.g ]
  %.sroa.6.0 = phi i8 [ 0, %bb.j ], [ 0, %bb.h ], [ 0, %bb.i ], [ 1, %bb.g ] ; 2 uses
  %.1.i9 = phi i64 [ %i.ab, %bb.j ], [ 0, %bb.h ], [ %i.w, %bb.i ], [ 0, %bb.g ]
  br i1 %.sroa.015.0, label %bb.k, label %.thread

bb.k:                                             ; preds = %f16ToFloatX.exit11
  %i.ac = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.ad = or i8 %i.ac, 16
  store i8 %i.ad, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  br label %floatXEq.exit

.thread:                                          ; preds = %f16ToFloatX.exit11
  br i1 %.sroa.9.0, label %floatXEq.exit, label %bb.l

bb.l:                                             ; preds = %.thread
  %.not.i.unshifted = xor i16 %1, %0
  %.not.i = icmp sgt i16 %.not.i.unshifted, -1
  br i1 %.not.i, label %bb.m, label %floatXEq.exit

bb.m:                                             ; preds = %bb.l
  %i.ae = or i8 %.sroa.6.0, %.sroa.617.0
  %brmerge.not.i = icmp eq i8 %i.ae, 0
  %i.af = and i8 %.sroa.6.0, %.sroa.617.0
  %.mux.i = icmp ne i8 %i.af, 0
  br i1 %brmerge.not.i, label %bb.n, label %floatXEq.exit

bb.n:                                             ; preds = %bb.m
  %i.ag = icmp eq i64 %.sroa.1421.0, %.sroa.1414.0
  %i.ah = icmp eq i64 %.1.i, %.1.i9
  %spec.select = select i1 %i.ag, i1 %i.ah, i1 false
  br label %floatXEq.exit

floatXEq.exit:                                    ; preds = %bb.k, %bb.n, %.thread, %f16ToFloatX.exit11.thread, %bb.l, %bb.m
  %.0.i12 = phi i1 [ %.mux.i, %bb.m ], [ false, %bb.k ], [ true, %.thread ], [ false, %bb.l ], [ false, %f16ToFloatX.exit11.thread ], [ %spec.select, %bb.n ]
  ret i1 %.0.i12
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local zeroext i1 @slow_f16_le_quiet(i16 %0, i16 %1) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i16 %0, 10
  %i.b = trunc nuw nsw i16 %i.a to i8
  %i.c = and i8 %i.b, 31                          ; 2 uses
  %i.d = and i16 %0, 1023                         ; 3 uses
  %i.e = zext nneg i16 %i.d to i64
  %i.f = shl nuw nsw i64 %i.e, 45                 ; 3 uses
  switch i8 %i.c, label %bb.f [
    i8 31, label %bb.b
    i8 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %.not32.i = icmp eq i16 %i.d, 0
  br i1 %.not32.i, label %bb.c, label %f16ToFloatX.exit

bb.c:                                             ; preds = %bb.b
  br label %f16ToFloatX.exit

bb.d:                                             ; preds = %bb.a
  %.not31.i = icmp eq i16 %i.d, 0
  br i1 %.not31.i, label %f16ToFloatX.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %.026.i = phi i8 [ %i.g, %.preheader.i ], [ -14, %bb.d ]
  %.0.i = phi i64 [ %i.h, %.preheader.i ], [ %i.f, %bb.d ] ; 2 uses
  %i.g = add i8 %.026.i, -1                       ; 2 uses
  %i.h = shl nuw nsw i64 %.0.i, 1                 ; 2 uses
  %i.i = icmp ult i64 %.0.i, 18014398509481984
  br i1 %i.i, label %.preheader.i, label %bb.e

bb.e:                                             ; preds = %.preheader.i
  %i.j = sext i8 %i.g to i64
  br label %f16ToFloatX.exit

bb.f:                                             ; preds = %bb.a
  %i.k = zext nneg i8 %i.c to i64
  %i.l = add nsw i64 %i.k, -15
  %i.m = or disjoint i64 %i.f, 36028797018963968
  br label %f16ToFloatX.exit

f16ToFloatX.exit:                                 ; preds = %bb.d, %bb.b, %bb.c, %bb.e, %bb.f
  %.sroa.1435.0 = phi i64 [ %i.l, %bb.f ], [ undef, %bb.c ], [ %i.j, %bb.e ], [ undef, %bb.b ], [ undef, %bb.d ] ; 4 uses
  %.sroa.933.0 = phi i8 [ 0, %bb.f ], [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %bb.b ], [ 1, %bb.d ] ; 4 uses
  %.sroa.531.0 = phi i1 [ false, %bb.f ], [ true, %bb.c ], [ false, %bb.e ], [ false, %bb.b ], [ false, %bb.d ] ; 2 uses
  %.sroa.030.0 = phi i1 [ false, %bb.f ], [ false, %bb.c ], [ false, %bb.e ], [ true, %bb.b ], [ false, %bb.d ]
  %.1.i = phi i64 [ %i.m, %bb.f ], [ 0, %bb.c ], [ %i.h, %bb.e ], [ %i.f, %bb.b ], [ 0, %bb.d ] ; 3 uses
  %i.n = lshr i16 %1, 10
  %i.o = trunc nuw nsw i16 %i.n to i8
  %i.p = and i8 %i.o, 31                          ; 2 uses
  %i.q = and i16 %1, 1023                         ; 3 uses
  %i.r = zext nneg i16 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 45                 ; 2 uses
  switch i8 %i.p, label %bb.j [
    i8 31, label %bb.g
    i8 0, label %bb.h
  ]

bb.g:                                             ; preds = %f16ToFloatX.exit
  %.not32.i8 = icmp eq i16 %i.q, 0
  br i1 %.not32.i8, label %f16ToFloatX.exit9, label %floatXLe.exit

bb.h:                                             ; preds = %f16ToFloatX.exit
  %.not31.i3 = icmp eq i16 %i.q, 0
  br i1 %.not31.i3, label %f16ToFloatX.exit9, label %.preheader.i4

.preheader.i4:                                    ; preds = %bb.h, %.preheader.i4
  %.026.i5 = phi i8 [ %i.t, %.preheader.i4 ], [ -14, %bb.h ]
  %.0.i6 = phi i64 [ %i.u, %.preheader.i4 ], [ %i.s, %bb.h ] ; 2 uses
  %i.t = add i8 %.026.i5, -1                      ; 2 uses
  %i.u = shl nuw nsw i64 %.0.i6, 1                ; 2 uses
  %i.v = icmp ult i64 %.0.i6, 18014398509481984
  br i1 %i.v, label %.preheader.i4, label %bb.i

bb.i:                                             ; preds = %.preheader.i4
  %i.w = sext i8 %i.t to i64
  br label %f16ToFloatX.exit9

bb.j:                                             ; preds = %f16ToFloatX.exit
  %i.x = zext nneg i8 %i.p to i64
  %i.y = add nsw i64 %i.x, -15
  %i.z = or disjoint i64 %i.s, 36028797018963968
  br label %f16ToFloatX.exit9

f16ToFloatX.exit9:                                ; preds = %bb.g, %bb.h, %bb.i, %bb.j
  %.sroa.1622.0 = phi i64 [ %i.y, %bb.j ], [ undef, %bb.h ], [ %i.w, %bb.i ], [ undef, %bb.g ] ; 4 uses
  %.sroa.9.0 = phi i1 [ false, %bb.j ], [ true, %bb.h ], [ false, %bb.i ], [ false, %bb.g ] ; 3 uses
  %.sroa.5.0 = phi i8 [ %.sroa.933.0, %bb.j ], [ %.sroa.933.0, %bb.h ], [ %.sroa.933.0, %bb.i ], [ 1, %bb.g ] ; 2 uses
  %.1.i7 = phi i64 [ %i.z, %bb.j ], [ 0, %bb.h ], [ %i.u, %bb.i ], [ 0, %bb.g ] ; 3 uses
  br i1 %.sroa.030.0, label %floatXLe.exit, label %bb.k

bb.k:                                             ; preds = %f16ToFloatX.exit9
  %i.aa = trunc nuw i8 %.sroa.933.0 to i1
  %or.cond39 = and i1 %.sroa.9.0, %i.aa
  br i1 %or.cond39, label %floatXLe.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = icmp slt i16 %0, 0                      ; 2 uses
  %.not.i.unshifted = xor i16 %1, %0
  %.not.i = icmp sgt i16 %.not.i.unshifted, -1
  br i1 %.not.i, label %bb.m, label %floatXLe.exit

bb.m:                                             ; preds = %bb.l
  br i1 %i.ab, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %or.cond40 = or i1 %.sroa.531.0, %.sroa.9.0
  br i1 %or.cond40, label %floatXLe.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %brmerge.not.i = icmp eq i8 %.sroa.5.0, 0
  br i1 %brmerge.not.i, label %bb.p, label %floatXLe.exit

bb.p:                                             ; preds = %bb.o
  %i.ac = icmp slt i64 %.sroa.1622.0, %.sroa.1435.0
  br i1 %i.ac, label %floatXLe.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ad = icmp slt i64 %.sroa.1435.0, %.sroa.1622.0
  br i1 %i.ad, label %floatXLe.exit, label %.sink.split.i

bb.r:                                             ; preds = %bb.m
  %brmerge33.not.i = icmp eq i8 %.sroa.5.0, 0
  br i1 %brmerge33.not.i, label %bb.s, label %floatXLe.exit

bb.s:                                             ; preds = %bb.r
  %or.cond41 = or i1 %.sroa.531.0, %.sroa.9.0
  br i1 %or.cond41, label %floatXLe.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ae = icmp slt i64 %.sroa.1435.0, %.sroa.1622.0
  br i1 %i.ae, label %floatXLe.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.af = icmp slt i64 %.sroa.1622.0, %.sroa.1435.0
  br i1 %i.af, label %floatXLe.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.u, %bb.q
  %.sink.i.sroa.phi12.sroa.speculated = phi i64 [ %.1.i7, %bb.q ], [ %.1.i, %bb.u ]
  %.sink51.i.sroa.phi16.sroa.speculated = phi i64 [ %.1.i, %bb.q ], [ %.1.i7, %bb.u ]
  %i.ag = icmp ult i64 %.sink.i.sroa.phi12.sroa.speculated, %.sink51.i.sroa.phi16.sroa.speculated
  %i.ah = icmp eq i64 %.1.i7, %.1.i
  %i.ai = select i1 %i.ag, i1 true, i1 %i.ah
  br label %floatXLe.exit

floatXLe.exit:                                    ; preds = %bb.g, %bb.k, %f16ToFloatX.exit9, %bb.l, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %.sink.split.i
  %.0.i10 = phi i1 [ false, %bb.u ], [ false, %f16ToFloatX.exit9 ], [ true, %bb.k ], [ %i.ab, %bb.l ], [ true, %bb.n ], [ false, %bb.o ], [ true, %bb.p ], [ %i.ai, %.sink.split.i ], [ false, %bb.q ], [ true, %bb.r ], [ false, %bb.s ], [ true, %bb.t ], [ false, %bb.g ]
  ret i1 %.0.i10
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local zeroext i1 @slow_f16_lt_quiet(i16 %0, i16 %1) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i16 %0, 10
  %i.b = trunc nuw nsw i16 %i.a to i8
  %i.c = and i8 %i.b, 31                          ; 2 uses
  %i.d = and i16 %0, 1023                         ; 3 uses
  %i.e = zext nneg i16 %i.d to i64
  %i.f = shl nuw nsw i64 %i.e, 45                 ; 3 uses
  switch i8 %i.c, label %bb.f [
    i8 31, label %bb.b
    i8 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %.not32.i = icmp eq i16 %i.d, 0
  br i1 %.not32.i, label %bb.c, label %f16ToFloatX.exit

bb.c:                                             ; preds = %bb.b
  br label %f16ToFloatX.exit

bb.d:                                             ; preds = %bb.a
  %.not31.i = icmp eq i16 %i.d, 0
  br i1 %.not31.i, label %f16ToFloatX.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %.026.i = phi i8 [ %i.g, %.preheader.i ], [ -14, %bb.d ]
  %.0.i = phi i64 [ %i.h, %.preheader.i ], [ %i.f, %bb.d ] ; 2 uses
  %i.g = add i8 %.026.i, -1                       ; 2 uses
  %i.h = shl nuw nsw i64 %.0.i, 1                 ; 2 uses
  %i.i = icmp ult i64 %.0.i, 18014398509481984
  br i1 %i.i, label %.preheader.i, label %bb.e

bb.e:                                             ; preds = %.preheader.i
  %i.j = sext i8 %i.g to i64
  br label %f16ToFloatX.exit

bb.f:                                             ; preds = %bb.a
  %i.k = zext nneg i8 %i.c to i64
  %i.l = add nsw i64 %i.k, -15
  %i.m = or disjoint i64 %i.f, 36028797018963968
  br label %f16ToFloatX.exit

f16ToFloatX.exit:                                 ; preds = %bb.d, %bb.b, %bb.c, %bb.e, %bb.f
  %.sroa.1321.0 = phi i64 [ %i.l, %bb.f ], [ undef, %bb.c ], [ %i.j, %bb.e ], [ undef, %bb.b ], [ undef, %bb.d ] ; 4 uses
  %brmerge3644.i = phi i1 [ false, %bb.f ], [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.b ], [ true, %bb.d ]
  %.sroa.8.0 = phi i8 [ 0, %bb.f ], [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %bb.b ], [ 1, %bb.d ] ; 3 uses
  %.sroa.520.0 = phi i1 [ false, %bb.f ], [ true, %bb.c ], [ false, %bb.e ], [ false, %bb.b ], [ false, %bb.d ]
  %.sroa.019.0 = phi i1 [ false, %bb.f ], [ false, %bb.c ], [ false, %bb.e ], [ true, %bb.b ], [ false, %bb.d ]
  %.1.i = phi i64 [ %i.m, %bb.f ], [ 0, %bb.c ], [ %i.h, %bb.e ], [ %i.f, %bb.b ], [ 0, %bb.d ] ; 2 uses
  %i.n = lshr i16 %1, 10
  %i.o = trunc nuw nsw i16 %i.n to i8
  %i.p = and i8 %i.o, 31                          ; 2 uses
  %i.q = and i16 %1, 1023                         ; 3 uses
  %i.r = zext nneg i16 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 45                 ; 2 uses
  switch i8 %i.p, label %bb.j [
    i8 31, label %bb.g
    i8 0, label %bb.h
  ]

bb.g:                                             ; preds = %f16ToFloatX.exit
  %.not32.i8 = icmp eq i16 %i.q, 0
  br i1 %.not32.i8, label %f16ToFloatX.exit9, label %floatXLt.exit

bb.h:                                             ; preds = %f16ToFloatX.exit
  %.not31.i3 = icmp eq i16 %i.q, 0
  br i1 %.not31.i3, label %f16ToFloatX.exit9, label %.preheader.i4

.preheader.i4:                                    ; preds = %bb.h, %.preheader.i4
  %.026.i5 = phi i8 [ %i.t, %.preheader.i4 ], [ -14, %bb.h ]
  %.0.i6 = phi i64 [ %i.u, %.preheader.i4 ], [ %i.s, %bb.h ] ; 2 uses
  %i.t = add i8 %.026.i5, -1                      ; 2 uses
  %i.u = shl nuw nsw i64 %.0.i6, 1                ; 2 uses
  %i.v = icmp ult i64 %.0.i6, 18014398509481984
  br i1 %i.v, label %.preheader.i4, label %bb.i

bb.i:                                             ; preds = %.preheader.i4
  %i.w = sext i8 %i.t to i64
  br label %f16ToFloatX.exit9

bb.j:                                             ; preds = %f16ToFloatX.exit
  %i.x = zext nneg i8 %i.p to i64
  %i.y = add nsw i64 %i.x, -15
  %i.z = or disjoint i64 %i.s, 36028797018963968
  br label %f16ToFloatX.exit9

f16ToFloatX.exit9:                                ; preds = %bb.g, %bb.h, %bb.i, %bb.j
  %.sroa.1715.0 = phi i64 [ %i.y, %bb.j ], [ undef, %bb.h ], [ %i.w, %bb.i ], [ undef, %bb.g ] ; 4 uses
  %.sroa.10.0 = phi i1 [ false, %bb.j ], [ true, %bb.h ], [ false, %bb.i ], [ false, %bb.g ] ; 3 uses
  %.sroa.5.0 = phi i8 [ 0, %bb.j ], [ 0, %bb.h ], [ 0, %bb.i ], [ 1, %bb.g ] ; 3 uses
  %.1.i7 = phi i64 [ %i.z, %bb.j ], [ 0, %bb.h ], [ %i.u, %bb.i ], [ 0, %bb.g ] ; 2 uses
  %i.aa = trunc nuw i8 %.sroa.8.0 to i1
  %or.cond26 = and i1 %.sroa.10.0, %i.aa
  %or.cond29 = select i1 %.sroa.019.0, i1 true, i1 %or.cond26
  br i1 %or.cond29, label %floatXLt.exit, label %bb.k

bb.k:                                             ; preds = %f16ToFloatX.exit9
  %.not.i.unshifted = xor i16 %1, %0
  %.not.i = icmp sgt i16 %.not.i.unshifted, -1
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = icmp slt i16 %0, 0
  br label %floatXLt.exit

bb.m:                                             ; preds = %bb.k
  br i1 %.sroa.520.0, label %bb.n, label %.thread.i

bb.n:                                             ; preds = %bb.m
  %i.ac = trunc nuw i8 %.sroa.5.0 to i1
  br i1 %i.ac, label %floatXLt.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = icmp slt i16 %0, 0
  %spec.select.i = or i1 %i.ad, %brmerge3644.i
  br label %floatXLt.exit

.thread.i:                                        ; preds = %bb.m
  %i.ae = icmp slt i16 %0, 0
  br i1 %i.ae, label %bb.p, label %bb.t

bb.p:                                             ; preds = %.thread.i
  br i1 %.sroa.10.0, label %floatXLt.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = or i8 %.sroa.5.0, %.sroa.8.0
  %brmerge.not.i = icmp eq i8 %i.af, 0
  br i1 %brmerge.not.i, label %bb.r, label %floatXLt.exit

bb.r:                                             ; preds = %bb.q
  %i.ag = icmp slt i64 %.sroa.1715.0, %.sroa.1321.0
  br i1 %i.ag, label %floatXLt.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ah = icmp sge i64 %.sroa.1321.0, %.sroa.1715.0
  %i.ai = icmp ult i64 %.1.i7, %.1.i
  %spec.select = select i1 %i.ah, i1 %i.ai, i1 false
  br label %floatXLt.exit

bb.t:                                             ; preds = %.thread.i
  %i.aj = or i8 %.sroa.5.0, %.sroa.8.0
  %brmerge36.not.i = icmp ne i8 %i.aj, 0          ; 2 uses
  %brmerge = or i1 %.sroa.10.0, %brmerge36.not.i
  br i1 %brmerge, label %floatXLt.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ak = icmp slt i64 %.sroa.1321.0, %.sroa.1715.0
  br i1 %i.ak, label %floatXLt.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.al = icmp sge i64 %.sroa.1715.0, %.sroa.1321.0
  %i.am = icmp ult i64 %.1.i, %.1.i7
  %spec.select27 = select i1 %i.al, i1 %i.am, i1 false
  br label %floatXLt.exit

floatXLt.exit:                                    ; preds = %bb.g, %bb.t, %bb.v, %bb.s, %f16ToFloatX.exit9, %bb.l, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.u
  %.0.i10 = phi i1 [ %spec.select.i, %bb.o ], [ false, %f16ToFloatX.exit9 ], [ %i.ab, %bb.l ], [ true, %bb.u ], [ false, %bb.n ], [ %spec.select27, %bb.v ], [ false, %bb.q ], [ true, %bb.r ], [ true, %bb.p ], [ %spec.select, %bb.s ], [ %brmerge36.not.i, %bb.t ], [ false, %bb.g ]
  ret i1 %.0.i10
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 4294967296) i64 @slow_f32_to_ui32(i32 %0, i8 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.floatX, align 8             ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.a = zext i32 %0 to i64                       ; 2 uses
  store i8 0, ptr %3, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  store i8 0, ptr %i.b, align 1, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  store i8 0, ptr %i.c, align 2, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 3
  %.lobit.i = lshr i32 %0, 31
  %i.e = trunc nuw nsw i32 %.lobit.i to i8
  store i8 %i.e, ptr %i.d, align 1, !tbaa !18
  %i.f = lshr i64 %i.a, 23                        ; 2 uses
  %i.g = shl nuw i64 %i.a, 32
  %i.h = and i64 %i.g, 36028792723996672          ; 5 uses
  %trunc.i = trunc i64 %i.f to i8
  switch i8 %trunc.i, label %bb.h [
    i8 -1, label %bb.b
    i8 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %.not32.i = icmp eq i64 %i.h, 0
  br i1 %.not32.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %3, align 8, !tbaa !16
  br label %f32ToFloatX.exit

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %i.b, align 1, !tbaa !17
  br label %f32ToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %.not31.i = icmp eq i64 %i.h, 0
  br i1 %.not31.i, label %bb.f, label %.preheader.i

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.c, align 2, !tbaa !19
  br label %f32ToFloatX.exit

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.026.i = phi i64 [ %i.i, %.preheader.i ], [ -126, %bb.e ]
  %.0.i = phi i64 [ %i.j, %.preheader.i ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = add nsw i64 %.026.i, -1                  ; 2 uses
  %i.j = shl nuw nsw i64 %.0.i, 1                 ; 2 uses
  %i.k = icmp ult i64 %.0.i, 18014398509481984
  br i1 %i.k, label %.preheader.i, label %bb.g

bb.g:                                             ; preds = %.preheader.i
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.i, ptr %i.l, align 8, !tbaa !20
  br label %f32ToFloatX.exit

bb.h:                                             ; preds = %bb.a
  %i.m = and i64 %i.f, 255
  %i.n = add nsw i64 %i.m, -127
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !20
  %i.p = or disjoint i64 %i.h, 36028797018963968
  br label %f32ToFloatX.exit

f32ToFloatX.exit:                                 ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.h
  %.1.i = phi i64 [ %i.h, %bb.c ], [ 0, %bb.d ], [ %i.p, %bb.h ], [ %i.j, %bb.g ], [ 0, %bb.f ]
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %.1.i, ptr %i.r, align 8, !tbaa !21
  store i64 0, ptr %i.q, align 8, !tbaa !22
  %i.s = call fastcc i64 @floatXToUI32(ptr noundef %3, i8 noundef zeroext %1, i1 noundef zeroext %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i64 %i.s
}

; Function Attrs: nounwind uwtable
define dso_local i64 @slow_f32_to_ui64(i32 %0, i8 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.floatX, align 8             ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.a = zext i32 %0 to i64                       ; 2 uses
  store i8 0, ptr %3, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  store i8 0, ptr %i.b, align 1, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  store i8 0, ptr %i.c, align 2, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 3
  %.lobit.i = lshr i32 %0, 31
  %i.e = trunc nuw nsw i32 %.lobit.i to i8
  store i8 %i.e, ptr %i.d, align 1, !tbaa !18
  %i.f = lshr i64 %i.a, 23                        ; 2 uses
  %i.g = shl nuw i64 %i.a, 32
  %i.h = and i64 %i.g, 36028792723996672          ; 5 uses
  %trunc.i = trunc i64 %i.f to i8
  switch i8 %trunc.i, label %bb.h [
    i8 -1, label %bb.b
    i8 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %.not32.i = icmp eq i64 %i.h, 0
  br i1 %.not32.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %3, align 8, !tbaa !16
  br label %f32ToFloatX.exit

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %i.b, align 1, !tbaa !17
  br label %f32ToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %.not31.i = icmp eq i64 %i.h, 0
  br i1 %.not31.i, label %bb.f, label %.preheader.i

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.c, align 2, !tbaa !19
  br label %f32ToFloatX.exit

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.026.i = phi i64 [ %i.i, %.preheader.i ], [ -126, %bb.e ]
  %.0.i = phi i64 [ %i.j, %.preheader.i ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = add nsw i64 %.026.i, -1                  ; 2 uses
  %i.j = shl nuw nsw i64 %.0.i, 1                 ; 2 uses
  %i.k = icmp ult i64 %.0.i, 18014398509481984
  br i1 %i.k, label %.preheader.i, label %bb.g

bb.g:                                             ; preds = %.preheader.i
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.i, ptr %i.l, align 8, !tbaa !20
  br label %f32ToFloatX.exit

bb.h:                                             ; preds = %bb.a
  %i.m = and i64 %i.f, 255
  %i.n = add nsw i64 %i.m, -127
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !20
  %i.p = or disjoint i64 %i.h, 36028797018963968
  br label %f32ToFloatX.exit

f32ToFloatX.exit:                                 ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.h
  %.1.i = phi i64 [ %i.h, %bb.c ], [ 0, %bb.d ], [ %i.p, %bb.h ], [ %i.j, %bb.g ], [ 0, %bb.f ]
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %.1.i, ptr %i.r, align 8, !tbaa !21
  store i64 0, ptr %i.q, align 8, !tbaa !22
  %i.s = call fastcc i64 @floatXToUI64(ptr noundef %3, i8 noundef zeroext %1, i1 noundef zeroext %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i64 %i.s
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -2147483648, 2147483648) i64 @slow_f32_to_i32(i32 %0, i8 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.floatX, align 8             ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.a = zext i32 %0 to i64                       ; 2 uses
  store i8 0, ptr %3, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  store i8 0, ptr %i.b, align 1, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  store i8 0, ptr %i.c, align 2, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 3
  %.lobit.i = lshr i32 %0, 31
  %i.e = trunc nuw nsw i32 %.lobit.i to i8
  store i8 %i.e, ptr %i.d, align 1, !tbaa !18
  %i.f = lshr i64 %i.a, 23                        ; 2 uses
  %i.g = shl nuw i64 %i.a, 32
  %i.h = and i64 %i.g, 36028792723996672          ; 5 uses
  %trunc.i = trunc i64 %i.f to i8
  switch i8 %trunc.i, label %bb.h [
    i8 -1, label %bb.b
    i8 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %.not32.i = icmp eq i64 %i.h, 0
  br i1 %.not32.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %3, align 8, !tbaa !16
  br label %f32ToFloatX.exit

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %i.b, align 1, !tbaa !17
  br label %f32ToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %.not31.i = icmp eq i64 %i.h, 0
  br i1 %.not31.i, label %bb.f, label %.preheader.i

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.c, align 2, !tbaa !19
  br label %f32ToFloatX.exit

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
end_hunk_0
begin_hunk_1_@slow_f32_eq:bb.a

floatXEq.exit:                                    ; preds = %bb.f, %f32ToFloatX.exit10, %bb.k, %bb.i, %bb.j
  %.0.i11 = phi i1 [ %.mux.i, %bb.j ], [ %not..sroa.013.0, %f32ToFloatX.exit10 ], [ %spec.select, %bb.k ], [ false, %bb.i ], [ false, %bb.f ]
  ret i1 %.0.i11
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local zeroext i1 @slow_f32_le(i32 %0, i32 %1) local_unnamed_addr #3 {
bb.a:
  %i.a = zext i32 %0 to i64                       ; 2 uses
  %i.b = lshr i64 %i.a, 23                        ; 2 uses
  %i.c = shl nuw i64 %i.a, 32
  %i.d = and i64 %i.c, 36028792723996672          ; 5 uses
  %trunc.i = trunc i64 %i.b to i8
  switch i8 %trunc.i, label %bb.e [
    i8 -1, label %bb.b
    i8 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %.not32.i = icmp eq i64 %i.d, 0
  br i1 %.not32.i, label %bb.c, label %f32ToFloatX.exit

bb.c:                                             ; preds = %bb.b
  br label %f32ToFloatX.exit

bb.d:                                             ; preds = %bb.a
  %.not31.i = icmp eq i64 %i.d, 0
  br i1 %.not31.i, label %f32ToFloatX.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %.026.i = phi i64 [ %i.e, %.preheader.i ], [ -126, %bb.d ]
  %.0.i = phi i64 [ %i.f, %.preheader.i ], [ %i.d, %bb.d ] ; 2 uses
  %i.e = add nsw i64 %.026.i, -1                  ; 2 uses
  %i.f = shl nuw nsw i64 %.0.i, 1                 ; 2 uses
  %i.g = icmp ult i64 %.0.i, 18014398509481984
  br i1 %i.g, label %.preheader.i, label %f32ToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %i.h = and i64 %i.b, 255
  %i.i = add nsw i64 %i.h, -127
  %i.j = or disjoint i64 %i.d, 36028797018963968
  br label %f32ToFloatX.exit

f32ToFloatX.exit:                                 ; preds = %.preheader.i, %bb.d, %bb.b, %bb.c, %bb.e
  %.sroa.1540.0 = phi i64 [ %i.i, %bb.e ], [ undef, %bb.c ], [ undef, %bb.d ], [ undef, %bb.b ], [ %i.e, %.preheader.i ] ; 4 uses
  %.sroa.1038.0 = phi i8 [ 0, %bb.e ], [ 0, %bb.c ], [ 1, %bb.d ], [ 0, %bb.b ], [ 0, %.preheader.i ] ; 4 uses
  %.sroa.636.0 = phi i1 [ false, %bb.e ], [ true, %bb.c ], [ false, %bb.d ], [ false, %bb.b ], [ false, %.preheader.i ] ; 2 uses
  %.sroa.034.0 = phi i1 [ false, %bb.e ], [ false, %bb.c ], [ false, %bb.d ], [ true, %bb.b ], [ false, %.preheader.i ]
  %.1.i = phi i64 [ %i.j, %bb.e ], [ 0, %bb.c ], [ 0, %bb.d ], [ %i.d, %bb.b ], [ %i.f, %.preheader.i ] ; 3 uses
  %i.k = zext i32 %1 to i64                       ; 2 uses
  %i.l = lshr i64 %i.k, 23                        ; 2 uses
  %i.m = shl nuw i64 %i.k, 32
  %i.n = and i64 %i.m, 36028792723996672          ; 4 uses
  %trunc.i5 = trunc i64 %i.l to i8
  switch i8 %trunc.i5, label %bb.h [
    i8 -1, label %bb.f
    i8 0, label %bb.g
  ]

bb.f:                                             ; preds = %f32ToFloatX.exit
  %.not32.i11 = icmp eq i64 %i.n, 0
  br i1 %.not32.i11, label %f32ToFloatX.exit12, label %f32ToFloatX.exit12.thread

f32ToFloatX.exit12.thread:                        ; preds = %bb.f
  %i.o = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.p = or i8 %i.o, 16
  store i8 %i.p, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  br label %floatXLe.exit

bb.g:                                             ; preds = %f32ToFloatX.exit
  %.not31.i6 = icmp eq i64 %i.n, 0
  br i1 %.not31.i6, label %f32ToFloatX.exit12, label %.preheader.i7

.preheader.i7:                                    ; preds = %bb.g, %.preheader.i7
  %.026.i8 = phi i64 [ %i.q, %.preheader.i7 ], [ -126, %bb.g ]
  %.0.i9 = phi i64 [ %i.r, %.preheader.i7 ], [ %i.n, %bb.g ] ; 2 uses
  %i.q = add nsw i64 %.026.i8, -1                 ; 2 uses
  %i.r = shl nuw nsw i64 %.0.i9, 1                ; 2 uses
  %i.s = icmp ult i64 %.0.i9, 18014398509481984
  br i1 %i.s, label %.preheader.i7, label %f32ToFloatX.exit12

bb.h:                                             ; preds = %f32ToFloatX.exit
  %i.t = and i64 %i.l, 255
  %i.u = add nsw i64 %i.t, -127
  %i.v = or disjoint i64 %i.n, 36028797018963968
  br label %f32ToFloatX.exit12

f32ToFloatX.exit12:                               ; preds = %.preheader.i7, %bb.f, %bb.g, %bb.h
  %.sroa.1726.0 = phi i64 [ %i.u, %bb.h ], [ undef, %bb.f ], [ undef, %bb.g ], [ %i.q, %.preheader.i7 ] ; 4 uses
  %.sroa.10.0 = phi i1 [ false, %bb.h ], [ false, %bb.f ], [ true, %bb.g ], [ false, %.preheader.i7 ] ; 3 uses
  %.sroa.6.0 = phi i8 [ %.sroa.1038.0, %bb.h ], [ 1, %bb.f ], [ %.sroa.1038.0, %bb.g ], [ %.sroa.1038.0, %.preheader.i7 ] ; 2 uses
  %.1.i10 = phi i64 [ %i.v, %bb.h ], [ 0, %bb.f ], [ 0, %bb.g ], [ %i.r, %.preheader.i7 ] ; 3 uses
  br i1 %.sroa.034.0, label %bb.i, label %.thread

bb.i:                                             ; preds = %f32ToFloatX.exit12
  %i.w = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.x = or i8 %i.w, 16
  store i8 %i.x, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  br label %floatXLe.exit

.thread:                                          ; preds = %f32ToFloatX.exit12
  %i.y = trunc nuw i8 %.sroa.1038.0 to i1
  %or.cond76 = and i1 %.sroa.10.0, %i.y
  br i1 %or.cond76, label %floatXLe.exit, label %bb.j

bb.j:                                             ; preds = %.thread
  %i.z = icmp slt i32 %0, 0                       ; 2 uses
  %.not.i.unshifted = xor i32 %1, %0
  %.not.i = icmp sgt i32 %.not.i.unshifted, -1
  br i1 %.not.i, label %bb.k, label %floatXLe.exit

bb.k:                                             ; preds = %bb.j
  br i1 %i.z, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %or.cond77 = or i1 %.sroa.636.0, %.sroa.10.0
  br i1 %or.cond77, label %floatXLe.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %brmerge.not.i = icmp eq i8 %.sroa.6.0, 0
  br i1 %brmerge.not.i, label %bb.n, label %floatXLe.exit

bb.n:                                             ; preds = %bb.m
  %i.aa = icmp slt i64 %.sroa.1726.0, %.sroa.1540.0
  br i1 %i.aa, label %floatXLe.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = icmp slt i64 %.sroa.1540.0, %.sroa.1726.0
  br i1 %i.ab, label %floatXLe.exit, label %.sink.split.i

bb.p:                                             ; preds = %bb.k
  %brmerge33.not.i = icmp eq i8 %.sroa.6.0, 0
  br i1 %brmerge33.not.i, label %bb.q, label %floatXLe.exit

bb.q:                                             ; preds = %bb.p
  %or.cond78 = or i1 %.sroa.636.0, %.sroa.10.0
  br i1 %or.cond78, label %floatXLe.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ac = icmp slt i64 %.sroa.1540.0, %.sroa.1726.0
  br i1 %i.ac, label %floatXLe.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ad = icmp slt i64 %.sroa.1726.0, %.sroa.1540.0
  br i1 %i.ad, label %floatXLe.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.s, %bb.o
  %.sink.i.sroa.phi15.sroa.speculated = phi i64 [ %.1.i10, %bb.o ], [ %.1.i, %bb.s ]
  %.sink51.i.sroa.phi19.sroa.speculated = phi i64 [ %.1.i, %bb.o ], [ %.1.i10, %bb.s ]
  %i.ae = icmp ult i64 %.sink.i.sroa.phi15.sroa.speculated, %.sink51.i.sroa.phi19.sroa.speculated
  %i.af = icmp eq i64 %.1.i10, %.1.i
  %i.ag = select i1 %i.ae, i1 true, i1 %i.af
  br label %floatXLe.exit

floatXLe.exit:                                    ; preds = %bb.i, %.thread, %f32ToFloatX.exit12.thread, %bb.j, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %.sink.split.i
  %.0.i13 = phi i1 [ false, %bb.s ], [ false, %bb.i ], [ true, %.thread ], [ %i.z, %bb.j ], [ true, %bb.l ], [ false, %bb.m ], [ true, %bb.n ], [ %i.ag, %.sink.split.i ], [ false, %bb.o ], [ true, %bb.p ], [ false, %bb.q ], [ true, %bb.r ], [ false, %f32ToFloatX.exit12.thread ]
  ret i1 %.0.i13
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local zeroext i1 @slow_f32_lt(i32 %0, i32 %1) local_unnamed_addr #3 {
bb.a:
  %i.a = zext i32 %0 to i64                       ; 2 uses
  %i.b = lshr i64 %i.a, 23                        ; 2 uses
  %i.c = shl nuw i64 %i.a, 32
  %i.d = and i64 %i.c, 36028792723996672          ; 5 uses
  %trunc.i = trunc i64 %i.b to i8
  switch i8 %trunc.i, label %bb.e [
    i8 -1, label %bb.b
    i8 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %.not32.i = icmp eq i64 %i.d, 0
  br i1 %.not32.i, label %bb.c, label %f32ToFloatX.exit

bb.c:                                             ; preds = %bb.b
  br label %f32ToFloatX.exit

bb.d:                                             ; preds = %bb.a
  %.not31.i = icmp eq i64 %i.d, 0
  br i1 %.not31.i, label %f32ToFloatX.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %.026.i = phi i64 [ %i.e, %.preheader.i ], [ -126, %bb.d ]
  %.0.i = phi i64 [ %i.f, %.preheader.i ], [ %i.d, %bb.d ] ; 2 uses
  %i.e = add nsw i64 %.026.i, -1                  ; 2 uses
  %i.f = shl nuw nsw i64 %.0.i, 1                 ; 2 uses
  %i.g = icmp ult i64 %.0.i, 18014398509481984
  br i1 %i.g, label %.preheader.i, label %f32ToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %i.h = and i64 %i.b, 255
  %i.i = add nsw i64 %i.h, -127
  %i.j = or disjoint i64 %i.d, 36028797018963968
  br label %f32ToFloatX.exit

f32ToFloatX.exit:                                 ; preds = %.preheader.i, %bb.d, %bb.b, %bb.c, %bb.e
  %.sroa.1426.0 = phi i64 [ %i.i, %bb.e ], [ undef, %bb.c ], [ undef, %bb.d ], [ undef, %bb.b ], [ %i.e, %.preheader.i ] ; 4 uses
  %brmerge3644.i = phi i1 [ false, %bb.e ], [ false, %bb.c ], [ true, %bb.d ], [ false, %bb.b ], [ false, %.preheader.i ]
  %.sroa.9.0 = phi i8 [ 0, %bb.e ], [ 0, %bb.c ], [ 1, %bb.d ], [ 0, %bb.b ], [ 0, %.preheader.i ] ; 3 uses
  %.sroa.625.0 = phi i1 [ false, %bb.e ], [ true, %bb.c ], [ false, %bb.d ], [ false, %bb.b ], [ false, %.preheader.i ]
  %.sroa.023.0 = phi i1 [ false, %bb.e ], [ false, %bb.c ], [ false, %bb.d ], [ true, %bb.b ], [ false, %.preheader.i ]
  %.1.i = phi i64 [ %i.j, %bb.e ], [ 0, %bb.c ], [ 0, %bb.d ], [ %i.d, %bb.b ], [ %i.f, %.preheader.i ] ; 2 uses
  %i.k = zext i32 %1 to i64                       ; 2 uses
  %i.l = lshr i64 %i.k, 23                        ; 2 uses
  %i.m = shl nuw i64 %i.k, 32
  %i.n = and i64 %i.m, 36028792723996672          ; 4 uses
  %trunc.i5 = trunc i64 %i.l to i8
  switch i8 %trunc.i5, label %bb.h [
    i8 -1, label %bb.f
    i8 0, label %bb.g
  ]

bb.f:                                             ; preds = %f32ToFloatX.exit
  %.not32.i11 = icmp eq i64 %i.n, 0
  br i1 %.not32.i11, label %f32ToFloatX.exit12, label %f32ToFloatX.exit12.thread

f32ToFloatX.exit12.thread:                        ; preds = %bb.f
  %i.o = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.p = or i8 %i.o, 16
  store i8 %i.p, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  br label %floatXLt.exit

bb.g:                                             ; preds = %f32ToFloatX.exit
  %.not31.i6 = icmp eq i64 %i.n, 0
  br i1 %.not31.i6, label %f32ToFloatX.exit12, label %.preheader.i7

.preheader.i7:                                    ; preds = %bb.g, %.preheader.i7
  %.026.i8 = phi i64 [ %i.q, %.preheader.i7 ], [ -126, %bb.g ]
  %.0.i9 = phi i64 [ %i.r, %.preheader.i7 ], [ %i.n, %bb.g ] ; 2 uses
  %i.q = add nsw i64 %.026.i8, -1                 ; 2 uses
  %i.r = shl nuw nsw i64 %.0.i9, 1                ; 2 uses
  %i.s = icmp ult i64 %.0.i9, 18014398509481984
  br i1 %i.s, label %.preheader.i7, label %f32ToFloatX.exit12

bb.h:                                             ; preds = %f32ToFloatX.exit
  %i.t = and i64 %i.l, 255
  %i.u = add nsw i64 %i.t, -127
  %i.v = or disjoint i64 %i.n, 36028797018963968
  br label %f32ToFloatX.exit12

f32ToFloatX.exit12:                               ; preds = %.preheader.i7, %bb.f, %bb.g, %bb.h
  %.sroa.1819.0 = phi i64 [ %i.u, %bb.h ], [ undef, %bb.f ], [ undef, %bb.g ], [ %i.q, %.preheader.i7 ] ; 4 uses
  %.sroa.11.0 = phi i1 [ false, %bb.h ], [ false, %bb.f ], [ true, %bb.g ], [ false, %.preheader.i7 ] ; 3 uses
  %.sroa.6.0 = phi i8 [ 0, %bb.h ], [ 1, %bb.f ], [ 0, %bb.g ], [ 0, %.preheader.i7 ] ; 3 uses
  %.1.i10 = phi i64 [ %i.v, %bb.h ], [ 0, %bb.f ], [ 0, %bb.g ], [ %i.r, %.preheader.i7 ] ; 2 uses
  br i1 %.sroa.023.0, label %bb.i, label %.thread

bb.i:                                             ; preds = %f32ToFloatX.exit12
  %i.w = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.x = or i8 %i.w, 16
  store i8 %i.x, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  br label %floatXLt.exit

.thread:                                          ; preds = %f32ToFloatX.exit12
  %.old = trunc nuw i8 %.sroa.9.0 to i1
  %or.cond63.old = and i1 %.sroa.11.0, %.old
  br i1 %or.cond63.old, label %floatXLt.exit, label %bb.j

bb.j:                                             ; preds = %.thread
  %.not.i.unshifted = xor i32 %1, %0
  %.not.i = icmp sgt i32 %.not.i.unshifted, -1
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = icmp slt i32 %0, 0
  br label %floatXLt.exit

bb.l:                                             ; preds = %bb.j
  br i1 %.sroa.625.0, label %bb.m, label %.thread.i

bb.m:                                             ; preds = %bb.l
  %i.z = trunc nuw i8 %.sroa.6.0 to i1
  br i1 %i.z, label %floatXLt.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = icmp slt i32 %0, 0
  %spec.select.i = or i1 %i.aa, %brmerge3644.i
  br label %floatXLt.exit

.thread.i:                                        ; preds = %bb.l
  %i.ab = icmp slt i32 %0, 0
  br i1 %i.ab, label %bb.o, label %bb.s

bb.o:                                             ; preds = %.thread.i
  br i1 %.sroa.11.0, label %floatXLt.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ac = or i8 %.sroa.6.0, %.sroa.9.0
  %brmerge.not.i = icmp eq i8 %i.ac, 0
  br i1 %brmerge.not.i, label %bb.q, label %floatXLt.exit

bb.q:                                             ; preds = %bb.p
  %i.ad = icmp slt i64 %.sroa.1819.0, %.sroa.1426.0
  br i1 %i.ad, label %floatXLt.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ae = icmp sge i64 %.sroa.1426.0, %.sroa.1819.0
  %i.af = icmp ult i64 %.1.i10, %.1.i
  %spec.select = select i1 %i.ae, i1 %i.af, i1 false
  br label %floatXLt.exit

bb.s:                                             ; preds = %.thread.i
  %i.ag = or i8 %.sroa.6.0, %.sroa.9.0
  %brmerge36.not.i = icmp ne i8 %i.ag, 0          ; 2 uses
  %brmerge = or i1 %.sroa.11.0, %brmerge36.not.i
  br i1 %brmerge, label %floatXLt.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ah = icmp slt i64 %.sroa.1426.0, %.sroa.1819.0
  br i1 %i.ah, label %floatXLt.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ai = icmp sge i64 %.sroa.1819.0, %.sroa.1426.0
  %i.aj = icmp ult i64 %.1.i, %.1.i10
  %spec.select64 = select i1 %i.ai, i1 %i.aj, i1 false
  br label %floatXLt.exit

floatXLt.exit:                                    ; preds = %bb.s, %bb.i, %bb.u, %bb.r, %.thread, %f32ToFloatX.exit12.thread, %bb.k, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.t
  %.0.i13 = phi i1 [ true, %bb.o ], [ false, %bb.i ], [ %i.y, %bb.k ], [ false, %.thread ], [ false, %bb.m ], [ %spec.select64, %bb.u ], [ false, %bb.p ], [ true, %bb.q ], [ %spec.select.i, %bb.n ], [ %spec.select, %bb.r ], [ %brmerge36.not.i, %bb.s ], [ false, %f32ToFloatX.exit12.thread ], [ true, %bb.t ]
  ret i1 %.0.i13
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local zeroext i1 @slow_f32_eq_signaling(i32 %0, i32 %1) local_unnamed_addr #3 {
bb.a:
  %i.a = zext i32 %0 to i64                       ; 2 uses
  %i.b = lshr i64 %i.a, 23                        ; 2 uses
  %i.c = shl nuw i64 %i.a, 32
  %i.d = and i64 %i.c, 36028792723996672          ; 5 uses
  %trunc.i = trunc i64 %i.b to i8
  switch i8 %trunc.i, label %bb.e [
    i8 -1, label %bb.b
    i8 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %.not32.i = icmp eq i64 %i.d, 0
  br i1 %.not32.i, label %bb.c, label %f32ToFloatX.exit

bb.c:                                             ; preds = %bb.b
  br label %f32ToFloatX.exit

bb.d:                                             ; preds = %bb.a
  %.not31.i = icmp eq i64 %i.d, 0
  br i1 %.not31.i, label %f32ToFloatX.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %.026.i = phi i64 [ %i.e, %.preheader.i ], [ -126, %bb.d ]
  %.0.i = phi i64 [ %i.f, %.preheader.i ], [ %i.d, %bb.d ] ; 2 uses
  %i.e = add nsw i64 %.026.i, -1                  ; 2 uses
  %i.f = shl nuw nsw i64 %.0.i, 1                 ; 2 uses
  %i.g = icmp ult i64 %.0.i, 18014398509481984
  br i1 %i.g, label %.preheader.i, label %f32ToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %i.h = and i64 %i.b, 255
  %i.i = add nsw i64 %i.h, -127
  %i.j = or disjoint i64 %i.d, 36028797018963968
  br label %f32ToFloatX.exit

f32ToFloatX.exit:                                 ; preds = %.preheader.i, %bb.d, %bb.b, %bb.c, %bb.e
  %.sroa.1422.0 = phi i64 [ %i.i, %bb.e ], [ undef, %bb.c ], [ undef, %bb.d ], [ undef, %bb.b ], [ %i.e, %.preheader.i ]
  %.sroa.919.0 = phi i1 [ false, %bb.e ], [ false, %bb.c ], [ true, %bb.d ], [ false, %bb.b ], [ false, %.preheader.i ]
  %.sroa.618.0 = phi i8 [ 0, %bb.e ], [ 1, %bb.c ], [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %.preheader.i ] ; 2 uses
  %.sroa.016.0 = phi i1 [ false, %bb.e ], [ false, %bb.c ], [ false, %bb.d ], [ true, %bb.b ], [ false, %.preheader.i ]
  %.1.i = phi i64 [ %i.j, %bb.e ], [ 0, %bb.c ], [ 0, %bb.d ], [ %i.d, %bb.b ], [ %i.f, %.preheader.i ]
  %i.k = zext i32 %1 to i64                       ; 2 uses
  %i.l = lshr i64 %i.k, 23                        ; 2 uses
  %i.m = shl nuw i64 %i.k, 32
  %i.n = and i64 %i.m, 36028792723996672          ; 4 uses
  %trunc.i5 = trunc i64 %i.l to i8
  switch i8 %trunc.i5, label %bb.h [
    i8 -1, label %bb.f
    i8 0, label %bb.g
  ]

bb.f:                                             ; preds = %f32ToFloatX.exit
  %.not32.i11 = icmp eq i64 %i.n, 0
  br i1 %.not32.i11, label %f32ToFloatX.exit12, label %f32ToFloatX.exit12.thread

f32ToFloatX.exit12.thread:                        ; preds = %bb.f
  %i.o = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.p = or i8 %i.o, 16
  store i8 %i.p, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  br label %floatXEq.exit

bb.g:                                             ; preds = %f32ToFloatX.exit
  %.not31.i6 = icmp eq i64 %i.n, 0
  br i1 %.not31.i6, label %f32ToFloatX.exit12, label %.preheader.i7

.preheader.i7:                                    ; preds = %bb.g, %.preheader.i7
  %.026.i8 = phi i64 [ %i.q, %.preheader.i7 ], [ -126, %bb.g ]
  %.0.i9 = phi i64 [ %i.r, %.preheader.i7 ], [ %i.n, %bb.g ] ; 2 uses
  %i.q = add nsw i64 %.026.i8, -1                 ; 2 uses
  %i.r = shl nuw nsw i64 %.0.i9, 1                ; 2 uses
  %i.s = icmp ult i64 %.0.i9, 18014398509481984
  br i1 %i.s, label %.preheader.i7, label %f32ToFloatX.exit12

bb.h:                                             ; preds = %f32ToFloatX.exit
  %i.t = and i64 %i.l, 255
  %i.u = add nsw i64 %i.t, -127
  %i.v = or disjoint i64 %i.n, 36028797018963968
  br label %f32ToFloatX.exit12

f32ToFloatX.exit12:                               ; preds = %.preheader.i7, %bb.f, %bb.g, %bb.h
  %.sroa.1415.0 = phi i64 [ %i.u, %bb.h ], [ undef, %bb.f ], [ undef, %bb.g ], [ %i.q, %.preheader.i7 ]
  %.sroa.9.0 = phi i1 [ false, %bb.h ], [ false, %bb.f ], [ %.sroa.919.0, %bb.g ], [ false, %.preheader.i7 ]
  %.sroa.6.0 = phi i8 [ 0, %bb.h ], [ 1, %bb.f ], [ 0, %bb.g ], [ 0, %.preheader.i7 ] ; 2 uses
  %.1.i10 = phi i64 [ %i.v, %bb.h ], [ 0, %bb.f ], [ 0, %bb.g ], [ %i.r, %.preheader.i7 ]
  br i1 %.sroa.016.0, label %bb.i, label %.thread

bb.i:                                             ; preds = %f32ToFloatX.exit12
  %i.w = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.x = or i8 %i.w, 16
  store i8 %i.x, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  br label %floatXEq.exit

.thread:                                          ; preds = %f32ToFloatX.exit12
  br i1 %.sroa.9.0, label %floatXEq.exit, label %bb.j

bb.j:                                             ; preds = %.thread
  %.not.i.unshifted = xor i32 %1, %0
  %.not.i = icmp sgt i32 %.not.i.unshifted, -1
  br i1 %.not.i, label %bb.k, label %floatXEq.exit

bb.k:                                             ; preds = %bb.j
  %i.y = or i8 %.sroa.6.0, %.sroa.618.0
  %brmerge.not.i = icmp eq i8 %i.y, 0
  %i.z = and i8 %.sroa.6.0, %.sroa.618.0
  %.mux.i = icmp ne i8 %i.z, 0
  br i1 %brmerge.not.i, label %bb.l, label %floatXEq.exit

bb.l:                                             ; preds = %bb.k
  %i.aa = icmp eq i64 %.sroa.1422.0, %.sroa.1415.0
  %i.ab = icmp eq i64 %.1.i, %.1.i10
  %spec.select = select i1 %i.aa, i1 %i.ab, i1 false
  br label %floatXEq.exit

floatXEq.exit:                                    ; preds = %bb.i, %bb.l, %.thread, %f32ToFloatX.exit12.thread, %bb.j, %bb.k
  %.0.i13 = phi i1 [ %.mux.i, %bb.k ], [ false, %bb.i ], [ true, %.thread ], [ false, %bb.j ], [ false, %f32ToFloatX.exit12.thread ], [ %spec.select, %bb.l ]
  ret i1 %.0.i13
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local zeroext i1 @slow_f32_le_quiet(i32 %0, i32 %1) local_unnamed_addr #2 {
bb.a:
  %i.a = zext i32 %0 to i64                       ; 2 uses
  %i.b = lshr i64 %i.a, 23                        ; 2 uses
  %i.c = shl nuw i64 %i.a, 32
  %i.d = and i64 %i.c, 36028792723996672          ; 5 uses
  %trunc.i = trunc i64 %i.b to i8
  switch i8 %trunc.i, label %bb.e [
    i8 -1, label %bb.b
    i8 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %.not32.i = icmp eq i64 %i.d, 0
  br i1 %.not32.i, label %bb.c, label %f32ToFloatX.exit

bb.c:                                             ; preds = %bb.b
  br label %f32ToFloatX.exit

bb.d:                                             ; preds = %bb.a
  %.not31.i = icmp eq i64 %i.d, 0
  br i1 %.not31.i, label %f32ToFloatX.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %.026.i = phi i64 [ %i.e, %.preheader.i ], [ -126, %bb.d ]
  %.0.i = phi i64 [ %i.f, %.preheader.i ], [ %i.d, %bb.d ] ; 2 uses
  %i.e = add nsw i64 %.026.i, -1                  ; 2 uses
  %i.f = shl nuw nsw i64 %.0.i, 1                 ; 2 uses
  %i.g = icmp ult i64 %.0.i, 18014398509481984
  br i1 %i.g, label %.preheader.i, label %f32ToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %i.h = and i64 %i.b, 255
  %i.i = add nsw i64 %i.h, -127
  %i.j = or disjoint i64 %i.d, 36028797018963968
  br label %f32ToFloatX.exit

f32ToFloatX.exit:                                 ; preds = %.preheader.i, %bb.d, %bb.b, %bb.c, %bb.e
  %.sroa.1436.0 = phi i64 [ %i.i, %bb.e ], [ undef, %bb.c ], [ undef, %bb.d ], [ undef, %bb.b ], [ %i.e, %.preheader.i ] ; 4 uses
  %.sroa.934.0 = phi i8 [ 0, %bb.e ], [ 0, %bb.c ], [ 1, %bb.d ], [ 0, %bb.b ], [ 0, %.preheader.i ] ; 4 uses
  %.sroa.532.0 = phi i1 [ false, %bb.e ], [ true, %bb.c ], [ false, %bb.d ], [ false, %bb.b ], [ false, %.preheader.i ] ; 2 uses
  %.sroa.031.0 = phi i1 [ false, %bb.e ], [ false, %bb.c ], [ false, %bb.d ], [ true, %bb.b ], [ false, %.preheader.i ]
  %.1.i = phi i64 [ %i.j, %bb.e ], [ 0, %bb.c ], [ 0, %bb.d ], [ %i.d, %bb.b ], [ %i.f, %.preheader.i ] ; 3 uses
  %i.k = zext i32 %1 to i64                       ; 2 uses
  %i.l = lshr i64 %i.k, 23                        ; 2 uses
  %i.m = shl nuw i64 %i.k, 32
  %i.n = and i64 %i.m, 36028792723996672          ; 4 uses
  %trunc.i3 = trunc i64 %i.l to i8
  switch i8 %trunc.i3, label %bb.h [
    i8 -1, label %bb.f
    i8 0, label %bb.g
  ]

bb.f:                                             ; preds = %f32ToFloatX.exit
  %.not32.i9 = icmp eq i64 %i.n, 0
  br i1 %.not32.i9, label %f32ToFloatX.exit10, label %floatXLe.exit

bb.g:                                             ; preds = %f32ToFloatX.exit
  %.not31.i4 = icmp eq i64 %i.n, 0
  br i1 %.not31.i4, label %f32ToFloatX.exit10, label %.preheader.i5

.preheader.i5:                                    ; preds = %bb.g, %.preheader.i5
  %.026.i6 = phi i64 [ %i.o, %.preheader.i5 ], [ -126, %bb.g ]
  %.0.i7 = phi i64 [ %i.p, %.preheader.i5 ], [ %i.n, %bb.g ] ; 2 uses
  %i.o = add nsw i64 %.026.i6, -1                 ; 2 uses
  %i.p = shl nuw nsw i64 %.0.i7, 1                ; 2 uses
  %i.q = icmp ult i64 %.0.i7, 18014398509481984
  br i1 %i.q, label %.preheader.i5, label %f32ToFloatX.exit10

bb.h:                                             ; preds = %f32ToFloatX.exit
  %i.r = and i64 %i.l, 255
  %i.s = add nsw i64 %i.r, -127
  %i.t = or disjoint i64 %i.n, 36028797018963968
  br label %f32ToFloatX.exit10

f32ToFloatX.exit10:                               ; preds = %.preheader.i5, %bb.f, %bb.g, %bb.h
  %.sroa.1623.0 = phi i64 [ %i.s, %bb.h ], [ undef, %bb.f ], [ undef, %bb.g ], [ %i.o, %.preheader.i5 ] ; 4 uses
  %.sroa.9.0 = phi i1 [ false, %bb.h ], [ false, %bb.f ], [ true, %bb.g ], [ false, %.preheader.i5 ] ; 3 uses
  %.sroa.5.0 = phi i8 [ %.sroa.934.0, %bb.h ], [ 1, %bb.f ], [ %.sroa.934.0, %bb.g ], [ %.sroa.934.0, %.preheader.i5 ] ; 2 uses
  %.1.i8 = phi i64 [ %i.t, %bb.h ], [ 0, %bb.f ], [ 0, %bb.g ], [ %i.p, %.preheader.i5 ] ; 3 uses
  br i1 %.sroa.031.0, label %floatXLe.exit, label %bb.i

bb.i:                                             ; preds = %f32ToFloatX.exit10
  %i.u = trunc nuw i8 %.sroa.934.0 to i1
  %or.cond40 = and i1 %.sroa.9.0, %i.u
  br i1 %or.cond40, label %floatXLe.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = icmp slt i32 %0, 0                       ; 2 uses
  %.not.i.unshifted = xor i32 %1, %0
  %.not.i = icmp sgt i32 %.not.i.unshifted, -1
  br i1 %.not.i, label %bb.k, label %floatXLe.exit

bb.k:                                             ; preds = %bb.j
  br i1 %i.v, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %or.cond41 = or i1 %.sroa.532.0, %.sroa.9.0
  br i1 %or.cond41, label %floatXLe.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %brmerge.not.i = icmp eq i8 %.sroa.5.0, 0
  br i1 %brmerge.not.i, label %bb.n, label %floatXLe.exit

bb.n:                                             ; preds = %bb.m
  %i.w = icmp slt i64 %.sroa.1623.0, %.sroa.1436.0
  br i1 %i.w, label %floatXLe.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.x = icmp slt i64 %.sroa.1436.0, %.sroa.1623.0
  br i1 %i.x, label %floatXLe.exit, label %.sink.split.i

bb.p:                                             ; preds = %bb.k
  %brmerge33.not.i = icmp eq i8 %.sroa.5.0, 0
  br i1 %brmerge33.not.i, label %bb.q, label %floatXLe.exit

bb.q:                                             ; preds = %bb.p
  %or.cond42 = or i1 %.sroa.532.0, %.sroa.9.0
  br i1 %or.cond42, label %floatXLe.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.y = icmp slt i64 %.sroa.1436.0, %.sroa.1623.0
  br i1 %i.y, label %floatXLe.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.z = icmp slt i64 %.sroa.1623.0, %.sroa.1436.0
  br i1 %i.z, label %floatXLe.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.s, %bb.o
  %.sink.i.sroa.phi13.sroa.speculated = phi i64 [ %.1.i8, %bb.o ], [ %.1.i, %bb.s ]
  %.sink51.i.sroa.phi17.sroa.speculated = phi i64 [ %.1.i, %bb.o ], [ %.1.i8, %bb.s ]
  %i.aa = icmp ult i64 %.sink.i.sroa.phi13.sroa.speculated, %.sink51.i.sroa.phi17.sroa.speculated
  %i.ab = icmp eq i64 %.1.i8, %.1.i
  %i.ac = select i1 %i.aa, i1 true, i1 %i.ab
  br label %floatXLe.exit

floatXLe.exit:                                    ; preds = %bb.f, %bb.i, %f32ToFloatX.exit10, %bb.j, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %.sink.split.i
  %.0.i11 = phi i1 [ false, %bb.s ], [ false, %f32ToFloatX.exit10 ], [ true, %bb.i ], [ %i.v, %bb.j ], [ true, %bb.l ], [ false, %bb.m ], [ true, %bb.n ], [ %i.ac, %.sink.split.i ], [ false, %bb.o ], [ true, %bb.p ], [ false, %bb.q ], [ true, %bb.r ], [ false, %bb.f ]
  ret i1 %.0.i11
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local zeroext i1 @slow_f32_lt_quiet(i32 %0, i32 %1) local_unnamed_addr #2 {
bb.a:
  %i.a = zext i32 %0 to i64                       ; 2 uses
  %i.b = lshr i64 %i.a, 23                        ; 2 uses
  %i.c = shl nuw i64 %i.a, 32
  %i.d = and i64 %i.c, 36028792723996672          ; 5 uses
  %trunc.i = trunc i64 %i.b to i8
  switch i8 %trunc.i, label %bb.e [
    i8 -1, label %bb.b
    i8 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %.not32.i = icmp eq i64 %i.d, 0
  br i1 %.not32.i, label %bb.c, label %f32ToFloatX.exit

bb.c:                                             ; preds = %bb.b
  br label %f32ToFloatX.exit

bb.d:                                             ; preds = %bb.a
  %.not31.i = icmp eq i64 %i.d, 0
  br i1 %.not31.i, label %f32ToFloatX.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %.026.i = phi i64 [ %i.e, %.preheader.i ], [ -126, %bb.d ]
  %.0.i = phi i64 [ %i.f, %.preheader.i ], [ %i.d, %bb.d ] ; 2 uses
  %i.e = add nsw i64 %.026.i, -1                  ; 2 uses
  %i.f = shl nuw nsw i64 %.0.i, 1                 ; 2 uses
  %i.g = icmp ult i64 %.0.i, 18014398509481984
  br i1 %i.g, label %.preheader.i, label %f32ToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %i.h = and i64 %i.b, 255
  %i.i = add nsw i64 %i.h, -127
  %i.j = or disjoint i64 %i.d, 36028797018963968
  br label %f32ToFloatX.exit

f32ToFloatX.exit:                                 ; preds = %.preheader.i, %bb.d, %bb.b, %bb.c, %bb.e
  %.sroa.1322.0 = phi i64 [ %i.i, %bb.e ], [ undef, %bb.c ], [ undef, %bb.d ], [ undef, %bb.b ], [ %i.e, %.preheader.i ] ; 4 uses
  %brmerge3644.i = phi i1 [ false, %bb.e ], [ false, %bb.c ], [ true, %bb.d ], [ false, %bb.b ], [ false, %.preheader.i ]
  %.sroa.8.0 = phi i8 [ 0, %bb.e ], [ 0, %bb.c ], [ 1, %bb.d ], [ 0, %bb.b ], [ 0, %.preheader.i ] ; 3 uses
  %.sroa.521.0 = phi i1 [ false, %bb.e ], [ true, %bb.c ], [ false, %bb.d ], [ false, %bb.b ], [ false, %.preheader.i ]
  %.sroa.020.0 = phi i1 [ false, %bb.e ], [ false, %bb.c ], [ false, %bb.d ], [ true, %bb.b ], [ false, %.preheader.i ]
  %.1.i = phi i64 [ %i.j, %bb.e ], [ 0, %bb.c ], [ 0, %bb.d ], [ %i.d, %bb.b ], [ %i.f, %.preheader.i ] ; 2 uses
  %i.k = zext i32 %1 to i64                       ; 2 uses
  %i.l = lshr i64 %i.k, 23                        ; 2 uses
  %i.m = shl nuw i64 %i.k, 32
  %i.n = and i64 %i.m, 36028792723996672          ; 4 uses
  %trunc.i3 = trunc i64 %i.l to i8
  switch i8 %trunc.i3, label %bb.h [
    i8 -1, label %bb.f
    i8 0, label %bb.g
  ]

bb.f:                                             ; preds = %f32ToFloatX.exit
  %.not32.i9 = icmp eq i64 %i.n, 0
  br i1 %.not32.i9, label %f32ToFloatX.exit10, label %floatXLt.exit

bb.g:                                             ; preds = %f32ToFloatX.exit
  %.not31.i4 = icmp eq i64 %i.n, 0
  br i1 %.not31.i4, label %f32ToFloatX.exit10, label %.preheader.i5

.preheader.i5:                                    ; preds = %bb.g, %.preheader.i5
  %.026.i6 = phi i64 [ %i.o, %.preheader.i5 ], [ -126, %bb.g ]
  %.0.i7 = phi i64 [ %i.p, %.preheader.i5 ], [ %i.n, %bb.g ] ; 2 uses
  %i.o = add nsw i64 %.026.i6, -1                 ; 2 uses
  %i.p = shl nuw nsw i64 %.0.i7, 1                ; 2 uses
  %i.q = icmp ult i64 %.0.i7, 18014398509481984
  br i1 %i.q, label %.preheader.i5, label %f32ToFloatX.exit10

bb.h:                                             ; preds = %f32ToFloatX.exit
  %i.r = and i64 %i.l, 255
  %i.s = add nsw i64 %i.r, -127
  %i.t = or disjoint i64 %i.n, 36028797018963968
  br label %f32ToFloatX.exit10

f32ToFloatX.exit10:                               ; preds = %.preheader.i5, %bb.f, %bb.g, %bb.h
  %.sroa.1716.0 = phi i64 [ %i.s, %bb.h ], [ undef, %bb.f ], [ undef, %bb.g ], [ %i.o, %.preheader.i5 ] ; 4 uses
  %.sroa.10.0 = phi i1 [ false, %bb.h ], [ false, %bb.f ], [ true, %bb.g ], [ false, %.preheader.i5 ] ; 3 uses
  %.sroa.5.0 = phi i8 [ 0, %bb.h ], [ 1, %bb.f ], [ 0, %bb.g ], [ 0, %.preheader.i5 ] ; 3 uses
  %.1.i8 = phi i64 [ %i.t, %bb.h ], [ 0, %bb.f ], [ 0, %bb.g ], [ %i.p, %.preheader.i5 ] ; 2 uses
  %i.u = trunc nuw i8 %.sroa.8.0 to i1
  %or.cond27 = and i1 %.sroa.10.0, %i.u
  %or.cond30 = select i1 %.sroa.020.0, i1 true, i1 %or.cond27
  br i1 %or.cond30, label %floatXLt.exit, label %bb.i

bb.i:                                             ; preds = %f32ToFloatX.exit10
  %.not.i.unshifted = xor i32 %1, %0
  %.not.i = icmp sgt i32 %.not.i.unshifted, -1
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = icmp slt i32 %0, 0
  br label %floatXLt.exit

bb.k:                                             ; preds = %bb.i
  br i1 %.sroa.521.0, label %bb.l, label %.thread.i

bb.l:                                             ; preds = %bb.k
  %i.w = trunc nuw i8 %.sroa.5.0 to i1
  br i1 %i.w, label %floatXLt.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = icmp slt i32 %0, 0
  %spec.select.i = or i1 %i.x, %brmerge3644.i
  br label %floatXLt.exit

.thread.i:                                        ; preds = %bb.k
  %i.y = icmp slt i32 %0, 0
  br i1 %i.y, label %bb.n, label %bb.r

bb.n:                                             ; preds = %.thread.i
  br i1 %.sroa.10.0, label %floatXLt.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.z = or i8 %.sroa.5.0, %.sroa.8.0
  %brmerge.not.i = icmp eq i8 %i.z, 0
  br i1 %brmerge.not.i, label %bb.p, label %floatXLt.exit

bb.p:                                             ; preds = %bb.o
  %i.aa = icmp slt i64 %.sroa.1716.0, %.sroa.1322.0
  br i1 %i.aa, label %floatXLt.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ab = icmp sge i64 %.sroa.1322.0, %.sroa.1716.0
  %i.ac = icmp ult i64 %.1.i8, %.1.i
  %spec.select = select i1 %i.ab, i1 %i.ac, i1 false
  br label %floatXLt.exit

bb.r:                                             ; preds = %.thread.i
  %i.ad = or i8 %.sroa.5.0, %.sroa.8.0
  %brmerge36.not.i = icmp ne i8 %i.ad, 0          ; 2 uses
  %brmerge = or i1 %.sroa.10.0, %brmerge36.not.i
  br i1 %brmerge, label %floatXLt.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ae = icmp slt i64 %.sroa.1322.0, %.sroa.1716.0
  br i1 %i.ae, label %floatXLt.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.af = icmp sge i64 %.sroa.1716.0, %.sroa.1322.0
  %i.ag = icmp ult i64 %.1.i, %.1.i8
  %spec.select28 = select i1 %i.af, i1 %i.ag, i1 false
  br label %floatXLt.exit

floatXLt.exit:                                    ; preds = %bb.f, %bb.r, %bb.t, %bb.q, %f32ToFloatX.exit10, %bb.j, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.s
  %.0.i11 = phi i1 [ %spec.select.i, %bb.m ], [ false, %f32ToFloatX.exit10 ], [ %i.v, %bb.j ], [ true, %bb.s ], [ false, %bb.l ], [ %spec.select28, %bb.t ], [ false, %bb.o ], [ true, %bb.p ], [ true, %bb.n ], [ %spec.select, %bb.q ], [ %brmerge36.not.i, %bb.r ], [ false, %bb.f ]
  ret i1 %.0.i11
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 4294967296) i64 @slow_f64_to_ui32(i64 %0, i8 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.floatX, align 8             ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store i8 0, ptr %3, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  store i8 0, ptr %i.a, align 1, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  store i8 0, ptr %i.b, align 2, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 3
  %.lobit.i = lshr i64 %0, 63
  %i.d = trunc nuw nsw i64 %.lobit.i to i8
  store i8 %i.d, ptr %i.c, align 1, !tbaa !18
  %i.e = lshr i64 %0, 52
  %i.f = and i64 %i.e, 2047                       ; 2 uses
  %i.g = and i64 %0, 4503599627370495             ; 5 uses
  switch i64 %i.f, label %bb.h [
    i64 2047, label %bb.b
    i64 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %.not31.i = icmp eq i64 %i.g, 0
  br i1 %.not31.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %3, align 8, !tbaa !16
  br label %f64ToFloatX.exit

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %i.a, align 1, !tbaa !17
  br label %f64ToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %.not30.i = icmp eq i64 %i.g, 0
  br i1 %.not30.i, label %bb.f, label %.preheader.i

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.b, align 2, !tbaa !19
  br label %f64ToFloatX.exit

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.025.i = phi i64 [ %i.h, %.preheader.i ], [ -1022, %bb.e ]
  %.0.i = phi i64 [ %i.i, %.preheader.i ], [ %i.g, %bb.e ] ; 2 uses
  %i.h = add nsw i64 %.025.i, -1                  ; 2 uses
  %i.i = shl nuw nsw i64 %.0.i, 1                 ; 2 uses
  %i.j = icmp samesign ult i64 %.0.i, 2251799813685248
  br i1 %i.j, label %.preheader.i, label %bb.g

bb.g:                                             ; preds = %.preheader.i
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.h, ptr %i.k, align 8, !tbaa !20
  br label %f64ToFloatX.exit

bb.h:                                             ; preds = %bb.a
  %i.l = add nsw i64 %i.f, -1023
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !20
  %i.n = or disjoint i64 %i.g, 4503599627370496
  br label %f64ToFloatX.exit

f64ToFloatX.exit:                                 ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.h
  %.1.i = phi i64 [ %i.g, %bb.c ], [ 0, %bb.d ], [ %i.n, %bb.h ], [ %i.i, %bb.g ], [ 0, %bb.f ]
  %i.o = shl i64 %.1.i, 3
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.o, ptr %i.q, align 8, !tbaa !21
  store i64 0, ptr %i.p, align 8, !tbaa !22
  %i.r = call fastcc i64 @floatXToUI32(ptr noundef %3, i8 noundef zeroext %1, i1 noundef zeroext %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i64 %i.r
}

; Function Attrs: nounwind uwtable
define dso_local i64 @slow_f64_to_ui64(i64 %0, i8 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.floatX, align 8             ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store i8 0, ptr %3, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  store i8 0, ptr %i.a, align 1, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  store i8 0, ptr %i.b, align 2, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 3
  %.lobit.i = lshr i64 %0, 63
  %i.d = trunc nuw nsw i64 %.lobit.i to i8
  store i8 %i.d, ptr %i.c, align 1, !tbaa !18
  %i.e = lshr i64 %0, 52
  %i.f = and i64 %i.e, 2047                       ; 2 uses
  %i.g = and i64 %0, 4503599627370495             ; 5 uses
  switch i64 %i.f, label %bb.h [
    i64 2047, label %bb.b
    i64 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %.not31.i = icmp eq i64 %i.g, 0
  br i1 %.not31.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %3, align 8, !tbaa !16
  br label %f64ToFloatX.exit

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %i.a, align 1, !tbaa !17
  br label %f64ToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %.not30.i = icmp eq i64 %i.g, 0
  br i1 %.not30.i, label %bb.f, label %.preheader.i

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.b, align 2, !tbaa !19
  br label %f64ToFloatX.exit

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.025.i = phi i64 [ %i.h, %.preheader.i ], [ -1022, %bb.e ]
  %.0.i = phi i64 [ %i.i, %.preheader.i ], [ %i.g, %bb.e ] ; 2 uses
  %i.h = add nsw i64 %.025.i, -1                  ; 2 uses
  %i.i = shl nuw nsw i64 %.0.i, 1                 ; 2 uses
  %i.j = icmp samesign ult i64 %.0.i, 2251799813685248
  br i1 %i.j, label %.preheader.i, label %bb.g

bb.g:                                             ; preds = %.preheader.i
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.h, ptr %i.k, align 8, !tbaa !20
  br label %f64ToFloatX.exit

bb.h:                                             ; preds = %bb.a
  %i.l = add nsw i64 %i.f, -1023
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !20
  %i.n = or disjoint i64 %i.g, 4503599627370496
  br label %f64ToFloatX.exit

f64ToFloatX.exit:                                 ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.h
  %.1.i = phi i64 [ %i.g, %bb.c ], [ 0, %bb.d ], [ %i.n, %bb.h ], [ %i.i, %bb.g ], [ 0, %bb.f ]
  %i.o = shl i64 %.1.i, 3
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.o, ptr %i.q, align 8, !tbaa !21
  store i64 0, ptr %i.p, align 8, !tbaa !22
  %i.r = call fastcc i64 @floatXToUI64(ptr noundef %3, i8 noundef zeroext %1, i1 noundef zeroext %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i64 %i.r
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -2147483648, 2147483648) i64 @slow_f64_to_i32(i64 %0, i8 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.floatX, align 8             ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store i8 0, ptr %3, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  store i8 0, ptr %i.a, align 1, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  store i8 0, ptr %i.b, align 2, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 3
  %.lobit.i = lshr i64 %0, 63
  %i.d = trunc nuw nsw i64 %.lobit.i to i8
  store i8 %i.d, ptr %i.c, align 1, !tbaa !18
  %i.e = lshr i64 %0, 52
  %i.f = and i64 %i.e, 2047                       ; 2 uses
  %i.g = and i64 %0, 4503599627370495             ; 5 uses
  switch i64 %i.f, label %bb.h [
    i64 2047, label %bb.b
    i64 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %.not31.i = icmp eq i64 %i.g, 0
  br i1 %.not31.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %3, align 8, !tbaa !16
  br label %f64ToFloatX.exit

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %i.a, align 1, !tbaa !17
  br label %f64ToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %.not30.i = icmp eq i64 %i.g, 0
  br i1 %.not30.i, label %bb.f, label %.preheader.i

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.b, align 2, !tbaa !19
  br label %f64ToFloatX.exit

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.025.i = phi i64 [ %i.h, %.preheader.i ], [ -1022, %bb.e ]
  %.0.i = phi i64 [ %i.i, %.preheader.i ], [ %i.g, %bb.e ] ; 2 uses
  %i.h = add nsw i64 %.025.i, -1                  ; 2 uses
  %i.i = shl nuw nsw i64 %.0.i, 1                 ; 2 uses
  %i.j = icmp samesign ult i64 %.0.i, 2251799813685248
  br i1 %i.j, label %.preheader.i, label %bb.g
end_hunk_1
begin_hunk_2_@slow_f64_eq:bb.a
bb.k:                                             ; preds = %bb.j
  %i.s = icmp eq i64 %.sroa.1317.0, %.sroa.1311.0
  %.unshifted = xor i64 %.1.i7, %.1.i
  %.mask = and i64 %.unshifted, 2305843009213693951
  %i.t = icmp eq i64 %.mask, 0
  %spec.select = select i1 %i.s, i1 %i.t, i1 false
  br label %floatXEq.exit

floatXEq.exit:                                    ; preds = %bb.f, %f64ToFloatX.exit9, %bb.k, %bb.i, %bb.j
  %.0.i10 = phi i1 [ %.mux.i, %bb.j ], [ %not..sroa.012.0, %f64ToFloatX.exit9 ], [ %spec.select, %bb.k ], [ false, %bb.i ], [ false, %bb.f ]
  ret i1 %.0.i10
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local zeroext i1 @slow_f64_le(i64 %0, i64 %1) local_unnamed_addr #3 {
bb.a:
  %i.a = lshr i64 %0, 52
  %i.b = and i64 %i.a, 2047                       ; 2 uses
  %i.c = and i64 %0, 4503599627370495             ; 5 uses
  switch i64 %i.b, label %bb.e [
    i64 2047, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %.not31.i = icmp eq i64 %i.c, 0
  br i1 %.not31.i, label %bb.c, label %f64ToFloatX.exit

bb.c:                                             ; preds = %bb.b
  br label %f64ToFloatX.exit

bb.d:                                             ; preds = %bb.a
  %.not30.i = icmp eq i64 %i.c, 0
  br i1 %.not30.i, label %f64ToFloatX.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %.025.i = phi i64 [ %i.d, %.preheader.i ], [ -1022, %bb.d ]
  %.0.i = phi i64 [ %i.e, %.preheader.i ], [ %i.c, %bb.d ] ; 2 uses
  %i.d = add nsw i64 %.025.i, -1                  ; 2 uses
  %i.e = shl nuw nsw i64 %.0.i, 1                 ; 2 uses
  %i.f = icmp samesign ult i64 %.0.i, 2251799813685248
  br i1 %i.f, label %.preheader.i, label %f64ToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.b, -1023
  %i.h = or disjoint i64 %i.c, 4503599627370496
  br label %f64ToFloatX.exit

f64ToFloatX.exit:                                 ; preds = %.preheader.i, %bb.d, %bb.b, %bb.c, %bb.e
  %.sroa.1539.0 = phi i64 [ %i.g, %bb.e ], [ undef, %bb.c ], [ undef, %bb.d ], [ undef, %bb.b ], [ %i.d, %.preheader.i ] ; 4 uses
  %.sroa.1037.0 = phi i8 [ 0, %bb.e ], [ 0, %bb.c ], [ 1, %bb.d ], [ 0, %bb.b ], [ 0, %.preheader.i ] ; 4 uses
  %.sroa.635.0 = phi i1 [ false, %bb.e ], [ true, %bb.c ], [ false, %bb.d ], [ false, %bb.b ], [ false, %.preheader.i ] ; 2 uses
  %.sroa.033.0 = phi i1 [ false, %bb.e ], [ false, %bb.c ], [ false, %bb.d ], [ true, %bb.b ], [ false, %.preheader.i ]
  %.1.i = phi i64 [ %i.h, %bb.e ], [ 0, %bb.c ], [ 0, %bb.d ], [ %i.c, %bb.b ], [ %i.e, %.preheader.i ]
  %i.i = shl i64 %.1.i, 3                         ; 3 uses
  %i.j = lshr i64 %1, 52
  %i.k = and i64 %i.j, 2047                       ; 2 uses
  %i.l = and i64 %1, 4503599627370495             ; 4 uses
  switch i64 %i.k, label %bb.h [
    i64 2047, label %bb.f
    i64 0, label %bb.g
  ]

bb.f:                                             ; preds = %f64ToFloatX.exit
  %.not31.i10 = icmp eq i64 %i.l, 0
  br i1 %.not31.i10, label %f64ToFloatX.exit11, label %f64ToFloatX.exit11.thread

f64ToFloatX.exit11.thread:                        ; preds = %bb.f
  %i.m = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.n = or i8 %i.m, 16
  store i8 %i.n, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  br label %floatXLe.exit

bb.g:                                             ; preds = %f64ToFloatX.exit
  %.not30.i5 = icmp eq i64 %i.l, 0
  br i1 %.not30.i5, label %f64ToFloatX.exit11, label %.preheader.i6

.preheader.i6:                                    ; preds = %bb.g, %.preheader.i6
  %.025.i7 = phi i64 [ %i.o, %.preheader.i6 ], [ -1022, %bb.g ]
  %.0.i8 = phi i64 [ %i.p, %.preheader.i6 ], [ %i.l, %bb.g ] ; 2 uses
  %i.o = add nsw i64 %.025.i7, -1                 ; 2 uses
  %i.p = shl nuw nsw i64 %.0.i8, 1                ; 2 uses
  %i.q = icmp samesign ult i64 %.0.i8, 2251799813685248
  br i1 %i.q, label %.preheader.i6, label %f64ToFloatX.exit11

bb.h:                                             ; preds = %f64ToFloatX.exit
  %i.r = add nsw i64 %i.k, -1023
  %i.s = or disjoint i64 %i.l, 4503599627370496
  br label %f64ToFloatX.exit11

f64ToFloatX.exit11:                               ; preds = %.preheader.i6, %bb.f, %bb.g, %bb.h
  %.sroa.1725.0 = phi i64 [ %i.r, %bb.h ], [ undef, %bb.f ], [ undef, %bb.g ], [ %i.o, %.preheader.i6 ] ; 4 uses
  %.sroa.10.0 = phi i1 [ false, %bb.h ], [ false, %bb.f ], [ true, %bb.g ], [ false, %.preheader.i6 ] ; 3 uses
  %.sroa.6.0 = phi i8 [ %.sroa.1037.0, %bb.h ], [ 1, %bb.f ], [ %.sroa.1037.0, %bb.g ], [ %.sroa.1037.0, %.preheader.i6 ] ; 2 uses
  %.1.i9 = phi i64 [ %i.s, %bb.h ], [ 0, %bb.f ], [ 0, %bb.g ], [ %i.p, %.preheader.i6 ]
  %i.t = shl i64 %.1.i9, 3                        ; 3 uses
  br i1 %.sroa.033.0, label %bb.i, label %.thread

bb.i:                                             ; preds = %f64ToFloatX.exit11
  %i.u = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.v = or i8 %i.u, 16
  store i8 %i.v, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  br label %floatXLe.exit

.thread:                                          ; preds = %f64ToFloatX.exit11
  %i.w = trunc nuw i8 %.sroa.1037.0 to i1
  %or.cond71 = and i1 %.sroa.10.0, %i.w
  br i1 %or.cond71, label %floatXLe.exit, label %bb.j

bb.j:                                             ; preds = %.thread
  %i.x = icmp slt i64 %0, 0                       ; 2 uses
  %.not.i.unshifted = xor i64 %1, %0
  %.not.i = icmp sgt i64 %.not.i.unshifted, -1
  br i1 %.not.i, label %bb.k, label %floatXLe.exit

bb.k:                                             ; preds = %bb.j
  br i1 %i.x, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %or.cond72 = or i1 %.sroa.635.0, %.sroa.10.0
  br i1 %or.cond72, label %floatXLe.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %brmerge.not.i = icmp eq i8 %.sroa.6.0, 0
  br i1 %brmerge.not.i, label %bb.n, label %floatXLe.exit

bb.n:                                             ; preds = %bb.m
  %i.y = icmp slt i64 %.sroa.1725.0, %.sroa.1539.0
  br i1 %i.y, label %floatXLe.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.z = icmp slt i64 %.sroa.1539.0, %.sroa.1725.0
  br i1 %i.z, label %floatXLe.exit, label %.sink.split.i

bb.p:                                             ; preds = %bb.k
  %brmerge33.not.i = icmp eq i8 %.sroa.6.0, 0
  br i1 %brmerge33.not.i, label %bb.q, label %floatXLe.exit

bb.q:                                             ; preds = %bb.p
  %or.cond73 = or i1 %.sroa.635.0, %.sroa.10.0
  br i1 %or.cond73, label %floatXLe.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aa = icmp slt i64 %.sroa.1539.0, %.sroa.1725.0
  br i1 %i.aa, label %floatXLe.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ab = icmp slt i64 %.sroa.1725.0, %.sroa.1539.0
  br i1 %i.ab, label %floatXLe.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.s, %bb.o
  %.sink.i.sroa.phi14.sroa.speculated = phi i64 [ %i.t, %bb.o ], [ %i.i, %bb.s ]
  %.sink51.i.sroa.phi18.sroa.speculated = phi i64 [ %i.i, %bb.o ], [ %i.t, %bb.s ]
  %i.ac = icmp ult i64 %.sink.i.sroa.phi14.sroa.speculated, %.sink51.i.sroa.phi18.sroa.speculated
  %i.ad = icmp eq i64 %i.t, %i.i
  %i.ae = select i1 %i.ac, i1 true, i1 %i.ad
  br label %floatXLe.exit

floatXLe.exit:                                    ; preds = %bb.i, %.thread, %f64ToFloatX.exit11.thread, %bb.j, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %.sink.split.i
  %.0.i12 = phi i1 [ false, %bb.s ], [ false, %bb.i ], [ true, %.thread ], [ %i.x, %bb.j ], [ true, %bb.l ], [ false, %bb.m ], [ true, %bb.n ], [ %i.ae, %.sink.split.i ], [ false, %bb.o ], [ true, %bb.p ], [ false, %bb.q ], [ true, %bb.r ], [ false, %f64ToFloatX.exit11.thread ]
  ret i1 %.0.i12
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local zeroext i1 @slow_f64_lt(i64 %0, i64 %1) local_unnamed_addr #3 {
bb.a:
  %i.a = lshr i64 %0, 52
  %i.b = and i64 %i.a, 2047                       ; 2 uses
  %i.c = and i64 %0, 4503599627370495             ; 5 uses
  switch i64 %i.b, label %bb.e [
    i64 2047, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %.not31.i = icmp eq i64 %i.c, 0
  br i1 %.not31.i, label %bb.c, label %f64ToFloatX.exit

bb.c:                                             ; preds = %bb.b
  br label %f64ToFloatX.exit

bb.d:                                             ; preds = %bb.a
  %.not30.i = icmp eq i64 %i.c, 0
  br i1 %.not30.i, label %f64ToFloatX.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %.025.i = phi i64 [ %i.d, %.preheader.i ], [ -1022, %bb.d ]
  %.0.i = phi i64 [ %i.e, %.preheader.i ], [ %i.c, %bb.d ] ; 2 uses
  %i.d = add nsw i64 %.025.i, -1                  ; 2 uses
  %i.e = shl nuw nsw i64 %.0.i, 1                 ; 2 uses
  %i.f = icmp samesign ult i64 %.0.i, 2251799813685248
  br i1 %i.f, label %.preheader.i, label %f64ToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.b, -1023
  %i.h = or disjoint i64 %i.c, 4503599627370496
  br label %f64ToFloatX.exit

f64ToFloatX.exit:                                 ; preds = %.preheader.i, %bb.d, %bb.b, %bb.c, %bb.e
  %.sroa.1425.0 = phi i64 [ %i.g, %bb.e ], [ undef, %bb.c ], [ undef, %bb.d ], [ undef, %bb.b ], [ %i.d, %.preheader.i ] ; 4 uses
  %brmerge3644.i = phi i1 [ false, %bb.e ], [ false, %bb.c ], [ true, %bb.d ], [ false, %bb.b ], [ false, %.preheader.i ]
  %.sroa.9.0 = phi i8 [ 0, %bb.e ], [ 0, %bb.c ], [ 1, %bb.d ], [ 0, %bb.b ], [ 0, %.preheader.i ] ; 3 uses
  %.sroa.624.0 = phi i1 [ false, %bb.e ], [ true, %bb.c ], [ false, %bb.d ], [ false, %bb.b ], [ false, %.preheader.i ]
  %.sroa.022.0 = phi i1 [ false, %bb.e ], [ false, %bb.c ], [ false, %bb.d ], [ true, %bb.b ], [ false, %.preheader.i ]
  %.1.i = phi i64 [ %i.h, %bb.e ], [ 0, %bb.c ], [ 0, %bb.d ], [ %i.c, %bb.b ], [ %i.e, %.preheader.i ]
  %i.i = shl i64 %.1.i, 3                         ; 2 uses
  %i.j = lshr i64 %1, 52
  %i.k = and i64 %i.j, 2047                       ; 2 uses
  %i.l = and i64 %1, 4503599627370495             ; 4 uses
  switch i64 %i.k, label %bb.h [
    i64 2047, label %bb.f
    i64 0, label %bb.g
  ]

bb.f:                                             ; preds = %f64ToFloatX.exit
  %.not31.i10 = icmp eq i64 %i.l, 0
  br i1 %.not31.i10, label %f64ToFloatX.exit11, label %f64ToFloatX.exit11.thread

f64ToFloatX.exit11.thread:                        ; preds = %bb.f
  %i.m = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.n = or i8 %i.m, 16
  store i8 %i.n, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  br label %floatXLt.exit

bb.g:                                             ; preds = %f64ToFloatX.exit
  %.not30.i5 = icmp eq i64 %i.l, 0
  br i1 %.not30.i5, label %f64ToFloatX.exit11, label %.preheader.i6

.preheader.i6:                                    ; preds = %bb.g, %.preheader.i6
  %.025.i7 = phi i64 [ %i.o, %.preheader.i6 ], [ -1022, %bb.g ]
  %.0.i8 = phi i64 [ %i.p, %.preheader.i6 ], [ %i.l, %bb.g ] ; 2 uses
  %i.o = add nsw i64 %.025.i7, -1                 ; 2 uses
  %i.p = shl nuw nsw i64 %.0.i8, 1                ; 2 uses
  %i.q = icmp samesign ult i64 %.0.i8, 2251799813685248
  br i1 %i.q, label %.preheader.i6, label %f64ToFloatX.exit11

bb.h:                                             ; preds = %f64ToFloatX.exit
  %i.r = add nsw i64 %i.k, -1023
  %i.s = or disjoint i64 %i.l, 4503599627370496
  br label %f64ToFloatX.exit11

f64ToFloatX.exit11:                               ; preds = %.preheader.i6, %bb.f, %bb.g, %bb.h
  %.sroa.1818.0 = phi i64 [ %i.r, %bb.h ], [ undef, %bb.f ], [ undef, %bb.g ], [ %i.o, %.preheader.i6 ] ; 4 uses
  %.sroa.11.0 = phi i1 [ false, %bb.h ], [ false, %bb.f ], [ true, %bb.g ], [ false, %.preheader.i6 ] ; 3 uses
  %.sroa.6.0 = phi i8 [ 0, %bb.h ], [ 1, %bb.f ], [ 0, %bb.g ], [ 0, %.preheader.i6 ] ; 3 uses
  %.1.i9 = phi i64 [ %i.s, %bb.h ], [ 0, %bb.f ], [ 0, %bb.g ], [ %i.p, %.preheader.i6 ]
  %i.t = shl i64 %.1.i9, 3                        ; 2 uses
  br i1 %.sroa.022.0, label %bb.i, label %.thread

bb.i:                                             ; preds = %f64ToFloatX.exit11
  %i.u = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.v = or i8 %i.u, 16
  store i8 %i.v, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  br label %floatXLt.exit

.thread:                                          ; preds = %f64ToFloatX.exit11
  %.old = trunc nuw i8 %.sroa.9.0 to i1
  %or.cond58.old = and i1 %.sroa.11.0, %.old
  br i1 %or.cond58.old, label %floatXLt.exit, label %bb.j

bb.j:                                             ; preds = %.thread
  %.not.i.unshifted = xor i64 %1, %0
  %.not.i = icmp sgt i64 %.not.i.unshifted, -1
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = icmp slt i64 %0, 0
  br label %floatXLt.exit

bb.l:                                             ; preds = %bb.j
  br i1 %.sroa.624.0, label %bb.m, label %.thread.i

bb.m:                                             ; preds = %bb.l
  %i.x = trunc nuw i8 %.sroa.6.0 to i1
  br i1 %i.x, label %floatXLt.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.y = icmp slt i64 %0, 0
  %spec.select.i = or i1 %i.y, %brmerge3644.i
  br label %floatXLt.exit

.thread.i:                                        ; preds = %bb.l
  %i.z = icmp slt i64 %0, 0
  br i1 %i.z, label %bb.o, label %bb.s

bb.o:                                             ; preds = %.thread.i
  br i1 %.sroa.11.0, label %floatXLt.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aa = or i8 %.sroa.6.0, %.sroa.9.0
  %brmerge.not.i = icmp eq i8 %i.aa, 0
  br i1 %brmerge.not.i, label %bb.q, label %floatXLt.exit

bb.q:                                             ; preds = %bb.p
  %i.ab = icmp slt i64 %.sroa.1818.0, %.sroa.1425.0
  br i1 %i.ab, label %floatXLt.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ac = icmp sge i64 %.sroa.1425.0, %.sroa.1818.0
  %i.ad = icmp ult i64 %i.t, %i.i
  %spec.select = select i1 %i.ac, i1 %i.ad, i1 false
  br label %floatXLt.exit

bb.s:                                             ; preds = %.thread.i
  %i.ae = or i8 %.sroa.6.0, %.sroa.9.0
  %brmerge36.not.i = icmp ne i8 %i.ae, 0          ; 2 uses
  %brmerge = or i1 %.sroa.11.0, %brmerge36.not.i
  br i1 %brmerge, label %floatXLt.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.af = icmp slt i64 %.sroa.1425.0, %.sroa.1818.0
  br i1 %i.af, label %floatXLt.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ag = icmp sge i64 %.sroa.1818.0, %.sroa.1425.0
  %i.ah = icmp ult i64 %i.i, %i.t
  %spec.select59 = select i1 %i.ag, i1 %i.ah, i1 false
  br label %floatXLt.exit

floatXLt.exit:                                    ; preds = %bb.s, %bb.i, %bb.u, %bb.r, %.thread, %f64ToFloatX.exit11.thread, %bb.k, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.t
  %.0.i12 = phi i1 [ true, %bb.o ], [ false, %bb.i ], [ %i.w, %bb.k ], [ false, %.thread ], [ false, %bb.m ], [ %spec.select59, %bb.u ], [ false, %bb.p ], [ true, %bb.q ], [ %spec.select.i, %bb.n ], [ %spec.select, %bb.r ], [ %brmerge36.not.i, %bb.s ], [ false, %f64ToFloatX.exit11.thread ], [ true, %bb.t ]
  ret i1 %.0.i12
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local zeroext i1 @slow_f64_eq_signaling(i64 %0, i64 %1) local_unnamed_addr #3 {
bb.a:
  %i.a = lshr i64 %0, 52
  %i.b = and i64 %i.a, 2047                       ; 2 uses
  %i.c = and i64 %0, 4503599627370495             ; 5 uses
  switch i64 %i.b, label %bb.e [
    i64 2047, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %.not31.i = icmp eq i64 %i.c, 0
  br i1 %.not31.i, label %bb.c, label %f64ToFloatX.exit

bb.c:                                             ; preds = %bb.b
  br label %f64ToFloatX.exit

bb.d:                                             ; preds = %bb.a
  %.not30.i = icmp eq i64 %i.c, 0
  br i1 %.not30.i, label %f64ToFloatX.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %.025.i = phi i64 [ %i.d, %.preheader.i ], [ -1022, %bb.d ]
  %.0.i = phi i64 [ %i.e, %.preheader.i ], [ %i.c, %bb.d ] ; 2 uses
  %i.d = add nsw i64 %.025.i, -1                  ; 2 uses
  %i.e = shl nuw nsw i64 %.0.i, 1                 ; 2 uses
  %i.f = icmp samesign ult i64 %.0.i, 2251799813685248
  br i1 %i.f, label %.preheader.i, label %f64ToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.b, -1023
  %i.h = or disjoint i64 %i.c, 4503599627370496
  br label %f64ToFloatX.exit

f64ToFloatX.exit:                                 ; preds = %.preheader.i, %bb.d, %bb.b, %bb.c, %bb.e
  %.sroa.1421.0 = phi i64 [ %i.g, %bb.e ], [ undef, %bb.c ], [ undef, %bb.d ], [ undef, %bb.b ], [ %i.d, %.preheader.i ]
  %.sroa.918.0 = phi i1 [ false, %bb.e ], [ false, %bb.c ], [ true, %bb.d ], [ false, %bb.b ], [ false, %.preheader.i ]
  %.sroa.617.0 = phi i8 [ 0, %bb.e ], [ 1, %bb.c ], [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %.preheader.i ] ; 2 uses
  %.sroa.015.0 = phi i1 [ false, %bb.e ], [ false, %bb.c ], [ false, %bb.d ], [ true, %bb.b ], [ false, %.preheader.i ]
  %.1.i = phi i64 [ %i.h, %bb.e ], [ 0, %bb.c ], [ 0, %bb.d ], [ %i.c, %bb.b ], [ %i.e, %.preheader.i ]
  %i.i = lshr i64 %1, 52
  %i.j = and i64 %i.i, 2047                       ; 2 uses
  %i.k = and i64 %1, 4503599627370495             ; 4 uses
  switch i64 %i.j, label %bb.h [
    i64 2047, label %bb.f
    i64 0, label %bb.g
  ]

bb.f:                                             ; preds = %f64ToFloatX.exit
  %.not31.i10 = icmp eq i64 %i.k, 0
  br i1 %.not31.i10, label %f64ToFloatX.exit11, label %f64ToFloatX.exit11.thread

f64ToFloatX.exit11.thread:                        ; preds = %bb.f
  %i.l = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.m = or i8 %i.l, 16
  store i8 %i.m, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  br label %floatXEq.exit

bb.g:                                             ; preds = %f64ToFloatX.exit
  %.not30.i5 = icmp eq i64 %i.k, 0
  br i1 %.not30.i5, label %f64ToFloatX.exit11, label %.preheader.i6

.preheader.i6:                                    ; preds = %bb.g, %.preheader.i6
  %.025.i7 = phi i64 [ %i.n, %.preheader.i6 ], [ -1022, %bb.g ]
  %.0.i8 = phi i64 [ %i.o, %.preheader.i6 ], [ %i.k, %bb.g ] ; 2 uses
  %i.n = add nsw i64 %.025.i7, -1                 ; 2 uses
  %i.o = shl nuw nsw i64 %.0.i8, 1                ; 2 uses
  %i.p = icmp samesign ult i64 %.0.i8, 2251799813685248
  br i1 %i.p, label %.preheader.i6, label %f64ToFloatX.exit11

bb.h:                                             ; preds = %f64ToFloatX.exit
  %i.q = add nsw i64 %i.j, -1023
  %i.r = or disjoint i64 %i.k, 4503599627370496
  br label %f64ToFloatX.exit11

f64ToFloatX.exit11:                               ; preds = %.preheader.i6, %bb.f, %bb.g, %bb.h
  %.sroa.1414.0 = phi i64 [ %i.q, %bb.h ], [ undef, %bb.f ], [ undef, %bb.g ], [ %i.n, %.preheader.i6 ]
  %.sroa.9.0 = phi i1 [ false, %bb.h ], [ false, %bb.f ], [ %.sroa.918.0, %bb.g ], [ false, %.preheader.i6 ]
  %.sroa.6.0 = phi i8 [ 0, %bb.h ], [ 1, %bb.f ], [ 0, %bb.g ], [ 0, %.preheader.i6 ] ; 2 uses
  %.1.i9 = phi i64 [ %i.r, %bb.h ], [ 0, %bb.f ], [ 0, %bb.g ], [ %i.o, %.preheader.i6 ]
  br i1 %.sroa.015.0, label %bb.i, label %.thread

bb.i:                                             ; preds = %f64ToFloatX.exit11
  %i.s = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.t = or i8 %i.s, 16
  store i8 %i.t, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  br label %floatXEq.exit

.thread:                                          ; preds = %f64ToFloatX.exit11
  br i1 %.sroa.9.0, label %floatXEq.exit, label %bb.j

bb.j:                                             ; preds = %.thread
  %.not.i.unshifted = xor i64 %1, %0
  %.not.i = icmp sgt i64 %.not.i.unshifted, -1
  br i1 %.not.i, label %bb.k, label %floatXEq.exit

bb.k:                                             ; preds = %bb.j
  %i.u = or i8 %.sroa.6.0, %.sroa.617.0
  %brmerge.not.i = icmp eq i8 %i.u, 0
  %i.v = and i8 %.sroa.6.0, %.sroa.617.0
  %.mux.i = icmp ne i8 %i.v, 0
  br i1 %brmerge.not.i, label %bb.l, label %floatXEq.exit

bb.l:                                             ; preds = %bb.k
  %i.w = icmp eq i64 %.sroa.1421.0, %.sroa.1414.0
  %.unshifted = xor i64 %.1.i9, %.1.i
  %.mask = and i64 %.unshifted, 2305843009213693951
  %i.x = icmp eq i64 %.mask, 0
  %spec.select = select i1 %i.w, i1 %i.x, i1 false
  br label %floatXEq.exit

floatXEq.exit:                                    ; preds = %bb.i, %bb.l, %.thread, %f64ToFloatX.exit11.thread, %bb.j, %bb.k
  %.0.i12 = phi i1 [ %.mux.i, %bb.k ], [ false, %bb.i ], [ true, %.thread ], [ false, %bb.j ], [ false, %f64ToFloatX.exit11.thread ], [ %spec.select, %bb.l ]
  ret i1 %.0.i12
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local zeroext i1 @slow_f64_le_quiet(i64 %0, i64 %1) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i64 %0, 52
  %i.b = and i64 %i.a, 2047                       ; 2 uses
  %i.c = and i64 %0, 4503599627370495             ; 5 uses
  switch i64 %i.b, label %bb.e [
    i64 2047, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %.not31.i = icmp eq i64 %i.c, 0
  br i1 %.not31.i, label %bb.c, label %f64ToFloatX.exit

bb.c:                                             ; preds = %bb.b
  br label %f64ToFloatX.exit

bb.d:                                             ; preds = %bb.a
  %.not30.i = icmp eq i64 %i.c, 0
  br i1 %.not30.i, label %f64ToFloatX.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %.025.i = phi i64 [ %i.d, %.preheader.i ], [ -1022, %bb.d ]
  %.0.i = phi i64 [ %i.e, %.preheader.i ], [ %i.c, %bb.d ] ; 2 uses
  %i.d = add nsw i64 %.025.i, -1                  ; 2 uses
  %i.e = shl nuw nsw i64 %.0.i, 1                 ; 2 uses
  %i.f = icmp samesign ult i64 %.0.i, 2251799813685248
  br i1 %i.f, label %.preheader.i, label %f64ToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.b, -1023
  %i.h = or disjoint i64 %i.c, 4503599627370496
  br label %f64ToFloatX.exit

f64ToFloatX.exit:                                 ; preds = %.preheader.i, %bb.d, %bb.b, %bb.c, %bb.e
  %.sroa.1435.0 = phi i64 [ %i.g, %bb.e ], [ undef, %bb.c ], [ undef, %bb.d ], [ undef, %bb.b ], [ %i.d, %.preheader.i ] ; 4 uses
  %.sroa.933.0 = phi i8 [ 0, %bb.e ], [ 0, %bb.c ], [ 1, %bb.d ], [ 0, %bb.b ], [ 0, %.preheader.i ] ; 4 uses
  %.sroa.531.0 = phi i1 [ false, %bb.e ], [ true, %bb.c ], [ false, %bb.d ], [ false, %bb.b ], [ false, %.preheader.i ] ; 2 uses
  %.sroa.030.0 = phi i1 [ false, %bb.e ], [ false, %bb.c ], [ false, %bb.d ], [ true, %bb.b ], [ false, %.preheader.i ]
  %.1.i = phi i64 [ %i.h, %bb.e ], [ 0, %bb.c ], [ 0, %bb.d ], [ %i.c, %bb.b ], [ %i.e, %.preheader.i ]
  %i.i = shl i64 %.1.i, 3                         ; 3 uses
  %i.j = lshr i64 %1, 52
  %i.k = and i64 %i.j, 2047                       ; 2 uses
  %i.l = and i64 %1, 4503599627370495             ; 4 uses
  switch i64 %i.k, label %bb.h [
    i64 2047, label %bb.f
    i64 0, label %bb.g
  ]

bb.f:                                             ; preds = %f64ToFloatX.exit
  %.not31.i8 = icmp eq i64 %i.l, 0
  br i1 %.not31.i8, label %f64ToFloatX.exit9, label %floatXLe.exit

bb.g:                                             ; preds = %f64ToFloatX.exit
  %.not30.i3 = icmp eq i64 %i.l, 0
  br i1 %.not30.i3, label %f64ToFloatX.exit9, label %.preheader.i4

.preheader.i4:                                    ; preds = %bb.g, %.preheader.i4
  %.025.i5 = phi i64 [ %i.m, %.preheader.i4 ], [ -1022, %bb.g ]
  %.0.i6 = phi i64 [ %i.n, %.preheader.i4 ], [ %i.l, %bb.g ] ; 2 uses
  %i.m = add nsw i64 %.025.i5, -1                 ; 2 uses
  %i.n = shl nuw nsw i64 %.0.i6, 1                ; 2 uses
  %i.o = icmp samesign ult i64 %.0.i6, 2251799813685248
  br i1 %i.o, label %.preheader.i4, label %f64ToFloatX.exit9

bb.h:                                             ; preds = %f64ToFloatX.exit
  %i.p = add nsw i64 %i.k, -1023
  %i.q = or disjoint i64 %i.l, 4503599627370496
  br label %f64ToFloatX.exit9

f64ToFloatX.exit9:                                ; preds = %.preheader.i4, %bb.f, %bb.g, %bb.h
  %.sroa.1622.0 = phi i64 [ %i.p, %bb.h ], [ undef, %bb.f ], [ undef, %bb.g ], [ %i.m, %.preheader.i4 ] ; 4 uses
  %.sroa.9.0 = phi i1 [ false, %bb.h ], [ false, %bb.f ], [ true, %bb.g ], [ false, %.preheader.i4 ] ; 3 uses
  %.sroa.5.0 = phi i8 [ %.sroa.933.0, %bb.h ], [ 1, %bb.f ], [ %.sroa.933.0, %bb.g ], [ %.sroa.933.0, %.preheader.i4 ] ; 2 uses
  %.1.i7 = phi i64 [ %i.q, %bb.h ], [ 0, %bb.f ], [ 0, %bb.g ], [ %i.n, %.preheader.i4 ]
  %i.r = shl i64 %.1.i7, 3                        ; 3 uses
  br i1 %.sroa.030.0, label %floatXLe.exit, label %bb.i

bb.i:                                             ; preds = %f64ToFloatX.exit9
  %i.s = trunc nuw i8 %.sroa.933.0 to i1
  %or.cond39 = and i1 %.sroa.9.0, %i.s
  br i1 %or.cond39, label %floatXLe.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = icmp slt i64 %0, 0                       ; 2 uses
  %.not.i.unshifted = xor i64 %1, %0
  %.not.i = icmp sgt i64 %.not.i.unshifted, -1
  br i1 %.not.i, label %bb.k, label %floatXLe.exit

bb.k:                                             ; preds = %bb.j
  br i1 %i.t, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %or.cond40 = or i1 %.sroa.531.0, %.sroa.9.0
  br i1 %or.cond40, label %floatXLe.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %brmerge.not.i = icmp eq i8 %.sroa.5.0, 0
  br i1 %brmerge.not.i, label %bb.n, label %floatXLe.exit

bb.n:                                             ; preds = %bb.m
  %i.u = icmp slt i64 %.sroa.1622.0, %.sroa.1435.0
  br i1 %i.u, label %floatXLe.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.v = icmp slt i64 %.sroa.1435.0, %.sroa.1622.0
  br i1 %i.v, label %floatXLe.exit, label %.sink.split.i

bb.p:                                             ; preds = %bb.k
  %brmerge33.not.i = icmp eq i8 %.sroa.5.0, 0
  br i1 %brmerge33.not.i, label %bb.q, label %floatXLe.exit

bb.q:                                             ; preds = %bb.p
  %or.cond41 = or i1 %.sroa.531.0, %.sroa.9.0
  br i1 %or.cond41, label %floatXLe.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.w = icmp slt i64 %.sroa.1435.0, %.sroa.1622.0
  br i1 %i.w, label %floatXLe.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.x = icmp slt i64 %.sroa.1622.0, %.sroa.1435.0
  br i1 %i.x, label %floatXLe.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.s, %bb.o
  %.sink.i.sroa.phi12.sroa.speculated = phi i64 [ %i.r, %bb.o ], [ %i.i, %bb.s ]
  %.sink51.i.sroa.phi16.sroa.speculated = phi i64 [ %i.i, %bb.o ], [ %i.r, %bb.s ]
  %i.y = icmp ult i64 %.sink.i.sroa.phi12.sroa.speculated, %.sink51.i.sroa.phi16.sroa.speculated
  %i.z = icmp eq i64 %i.r, %i.i
  %i.aa = select i1 %i.y, i1 true, i1 %i.z
  br label %floatXLe.exit

floatXLe.exit:                                    ; preds = %bb.f, %bb.i, %f64ToFloatX.exit9, %bb.j, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %.sink.split.i
  %.0.i10 = phi i1 [ false, %bb.s ], [ false, %f64ToFloatX.exit9 ], [ true, %bb.i ], [ %i.t, %bb.j ], [ true, %bb.l ], [ false, %bb.m ], [ true, %bb.n ], [ %i.aa, %.sink.split.i ], [ false, %bb.o ], [ true, %bb.p ], [ false, %bb.q ], [ true, %bb.r ], [ false, %bb.f ]
  ret i1 %.0.i10
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local zeroext i1 @slow_f64_lt_quiet(i64 %0, i64 %1) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i64 %0, 52
  %i.b = and i64 %i.a, 2047                       ; 2 uses
  %i.c = and i64 %0, 4503599627370495             ; 5 uses
  switch i64 %i.b, label %bb.e [
    i64 2047, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %.not31.i = icmp eq i64 %i.c, 0
  br i1 %.not31.i, label %bb.c, label %f64ToFloatX.exit

bb.c:                                             ; preds = %bb.b
  br label %f64ToFloatX.exit

bb.d:                                             ; preds = %bb.a
  %.not30.i = icmp eq i64 %i.c, 0
  br i1 %.not30.i, label %f64ToFloatX.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %.025.i = phi i64 [ %i.d, %.preheader.i ], [ -1022, %bb.d ]
  %.0.i = phi i64 [ %i.e, %.preheader.i ], [ %i.c, %bb.d ] ; 2 uses
  %i.d = add nsw i64 %.025.i, -1                  ; 2 uses
  %i.e = shl nuw nsw i64 %.0.i, 1                 ; 2 uses
  %i.f = icmp samesign ult i64 %.0.i, 2251799813685248
  br i1 %i.f, label %.preheader.i, label %f64ToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.b, -1023
  %i.h = or disjoint i64 %i.c, 4503599627370496
  br label %f64ToFloatX.exit

f64ToFloatX.exit:                                 ; preds = %.preheader.i, %bb.d, %bb.b, %bb.c, %bb.e
  %.sroa.1321.0 = phi i64 [ %i.g, %bb.e ], [ undef, %bb.c ], [ undef, %bb.d ], [ undef, %bb.b ], [ %i.d, %.preheader.i ] ; 4 uses
  %brmerge3644.i = phi i1 [ false, %bb.e ], [ false, %bb.c ], [ true, %bb.d ], [ false, %bb.b ], [ false, %.preheader.i ]
  %.sroa.8.0 = phi i8 [ 0, %bb.e ], [ 0, %bb.c ], [ 1, %bb.d ], [ 0, %bb.b ], [ 0, %.preheader.i ] ; 3 uses
  %.sroa.520.0 = phi i1 [ false, %bb.e ], [ true, %bb.c ], [ false, %bb.d ], [ false, %bb.b ], [ false, %.preheader.i ]
  %.sroa.019.0 = phi i1 [ false, %bb.e ], [ false, %bb.c ], [ false, %bb.d ], [ true, %bb.b ], [ false, %.preheader.i ]
  %.1.i = phi i64 [ %i.h, %bb.e ], [ 0, %bb.c ], [ 0, %bb.d ], [ %i.c, %bb.b ], [ %i.e, %.preheader.i ]
  %i.i = shl i64 %.1.i, 3                         ; 2 uses
  %i.j = lshr i64 %1, 52
  %i.k = and i64 %i.j, 2047                       ; 2 uses
  %i.l = and i64 %1, 4503599627370495             ; 4 uses
  switch i64 %i.k, label %bb.h [
    i64 2047, label %bb.f
    i64 0, label %bb.g
  ]

bb.f:                                             ; preds = %f64ToFloatX.exit
  %.not31.i8 = icmp eq i64 %i.l, 0
  br i1 %.not31.i8, label %f64ToFloatX.exit9, label %floatXLt.exit

bb.g:                                             ; preds = %f64ToFloatX.exit
  %.not30.i3 = icmp eq i64 %i.l, 0
  br i1 %.not30.i3, label %f64ToFloatX.exit9, label %.preheader.i4

.preheader.i4:                                    ; preds = %bb.g, %.preheader.i4
  %.025.i5 = phi i64 [ %i.m, %.preheader.i4 ], [ -1022, %bb.g ]
  %.0.i6 = phi i64 [ %i.n, %.preheader.i4 ], [ %i.l, %bb.g ] ; 2 uses
  %i.m = add nsw i64 %.025.i5, -1                 ; 2 uses
  %i.n = shl nuw nsw i64 %.0.i6, 1                ; 2 uses
  %i.o = icmp samesign ult i64 %.0.i6, 2251799813685248
  br i1 %i.o, label %.preheader.i4, label %f64ToFloatX.exit9

bb.h:                                             ; preds = %f64ToFloatX.exit
  %i.p = add nsw i64 %i.k, -1023
  %i.q = or disjoint i64 %i.l, 4503599627370496
  br label %f64ToFloatX.exit9

f64ToFloatX.exit9:                                ; preds = %.preheader.i4, %bb.f, %bb.g, %bb.h
  %.sroa.1715.0 = phi i64 [ %i.p, %bb.h ], [ undef, %bb.f ], [ undef, %bb.g ], [ %i.m, %.preheader.i4 ] ; 4 uses
  %.sroa.10.0 = phi i1 [ false, %bb.h ], [ false, %bb.f ], [ true, %bb.g ], [ false, %.preheader.i4 ] ; 3 uses
  %.sroa.5.0 = phi i8 [ 0, %bb.h ], [ 1, %bb.f ], [ 0, %bb.g ], [ 0, %.preheader.i4 ] ; 3 uses
  %.1.i7 = phi i64 [ %i.q, %bb.h ], [ 0, %bb.f ], [ 0, %bb.g ], [ %i.n, %.preheader.i4 ]
  %i.r = shl i64 %.1.i7, 3                        ; 2 uses
  %i.s = trunc nuw i8 %.sroa.8.0 to i1
  %or.cond26 = and i1 %.sroa.10.0, %i.s
  %or.cond29 = select i1 %.sroa.019.0, i1 true, i1 %or.cond26
  br i1 %or.cond29, label %floatXLt.exit, label %bb.i

bb.i:                                             ; preds = %f64ToFloatX.exit9
  %.not.i.unshifted = xor i64 %1, %0
  %.not.i = icmp sgt i64 %.not.i.unshifted, -1
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = icmp slt i64 %0, 0
  br label %floatXLt.exit

bb.k:                                             ; preds = %bb.i
  br i1 %.sroa.520.0, label %bb.l, label %.thread.i

bb.l:                                             ; preds = %bb.k
  %i.u = trunc nuw i8 %.sroa.5.0 to i1
  br i1 %i.u, label %floatXLt.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = icmp slt i64 %0, 0
  %spec.select.i = or i1 %i.v, %brmerge3644.i
  br label %floatXLt.exit

.thread.i:                                        ; preds = %bb.k
  %i.w = icmp slt i64 %0, 0
  br i1 %i.w, label %bb.n, label %bb.r

bb.n:                                             ; preds = %.thread.i
  br i1 %.sroa.10.0, label %floatXLt.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.x = or i8 %.sroa.5.0, %.sroa.8.0
  %brmerge.not.i = icmp eq i8 %i.x, 0
  br i1 %brmerge.not.i, label %bb.p, label %floatXLt.exit

bb.p:                                             ; preds = %bb.o
  %i.y = icmp slt i64 %.sroa.1715.0, %.sroa.1321.0
  br i1 %i.y, label %floatXLt.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.z = icmp sge i64 %.sroa.1321.0, %.sroa.1715.0
  %i.aa = icmp ult i64 %i.r, %i.i
  %spec.select = select i1 %i.z, i1 %i.aa, i1 false
  br label %floatXLt.exit

bb.r:                                             ; preds = %.thread.i
  %i.ab = or i8 %.sroa.5.0, %.sroa.8.0
  %brmerge36.not.i = icmp ne i8 %i.ab, 0          ; 2 uses
  %brmerge = or i1 %.sroa.10.0, %brmerge36.not.i
  br i1 %brmerge, label %floatXLt.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ac = icmp slt i64 %.sroa.1321.0, %.sroa.1715.0
  br i1 %i.ac, label %floatXLt.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ad = icmp sge i64 %.sroa.1715.0, %.sroa.1321.0
  %i.ae = icmp ult i64 %i.i, %i.r
  %spec.select27 = select i1 %i.ad, i1 %i.ae, i1 false
  br label %floatXLt.exit

floatXLt.exit:                                    ; preds = %bb.f, %bb.r, %bb.t, %bb.q, %f64ToFloatX.exit9, %bb.j, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.s
  %.0.i10 = phi i1 [ %spec.select.i, %bb.m ], [ false, %f64ToFloatX.exit9 ], [ %i.t, %bb.j ], [ true, %bb.s ], [ false, %bb.l ], [ %spec.select27, %bb.t ], [ false, %bb.o ], [ true, %bb.p ], [ true, %bb.n ], [ %spec.select, %bb.q ], [ %brmerge36.not.i, %bb.r ], [ false, %bb.f ]
  ret i1 %.0.i10
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 4294967296) i64 @slow_extF80M_to_ui32(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.floatX, align 8             ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %.val = load i64, ptr %0, align 8, !tbaa !32    ; 7 uses
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val2 = load i16, ptr %i.a, align 8, !tbaa !30 ; 2 uses
  store i8 0, ptr %3, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  store i8 0, ptr %i.b, align 1, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  store i8 0, ptr %i.c, align 2, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 3
  %.lobit.i = lshr i16 %.val2, 15
  %i.e = trunc nuw nsw i16 %.lobit.i to i8
  store i8 %i.e, ptr %i.d, align 1, !tbaa !18
  %i.f = and i16 %.val2, 32767                    ; 2 uses
  %i.g = icmp eq i16 %i.f, 32767
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = and i64 %.val, 9223372036854775807
  %.not31.i = icmp eq i64 %i.h, 0
  br i1 %.not31.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %3, align 8, !tbaa !16
  br label %extF80MToFloatX.exit

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %i.b, align 1, !tbaa !17
  br label %extF80MToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %narrow.i = tail call i16 @llvm.umax.i16(i16 %i.f, i16 1)
  %spec.select.i = zext nneg i16 %narrow.i to i64
  %i.i = add nsw i64 %spec.select.i, -16383       ; 3 uses
  %.not29.i = icmp sgt i64 %.val, -1
  br i1 %.not29.i, label %bb.f, label %.loopexit.i

bb.f:                                             ; preds = %bb.e
  %.not30.i = icmp eq i64 %.val, 0
  br i1 %.not30.i, label %bb.g, label %.preheader.i

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.c, align 2, !tbaa !19
  br label %.loopexit.i

.preheader.i:                                     ; preds = %bb.f, %.preheader.i
  %.1.i = phi i64 [ %i.j, %.preheader.i ], [ %i.i, %bb.f ]
  %.sroa.01.0.i = phi i64 [ %i.k, %.preheader.i ], [ %.val, %bb.f ]
  %i.j = add nsw i64 %.1.i, -1                    ; 2 uses
  %i.k = shl nuw i64 %.sroa.01.0.i, 1             ; 3 uses
  %i.l = icmp sgt i64 %i.k, -1
  br i1 %i.l, label %.preheader.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader.i, %bb.g, %bb.e
  %.2.i = phi i64 [ %i.i, %bb.e ], [ %i.i, %bb.g ], [ %i.j, %.preheader.i ]
  %.sroa.01.1.i = phi i64 [ %.val, %bb.e ], [ 0, %bb.g ], [ %i.k, %.preheader.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.2.i, ptr %i.m, align 8, !tbaa !20
  br label %extF80MToFloatX.exit

extF80MToFloatX.exit:                             ; preds = %bb.c, %bb.d, %.loopexit.i
  %.sroa.01.2.i = phi i64 [ %.val, %bb.c ], [ %.val, %bb.d ], [ %.sroa.01.1.i, %.loopexit.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.01.2.i, i64 0, i32 noundef 56) #10 ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.o, 0
  %i.q = extractvalue { i64, i64 } %i.o, 1
  store i64 %i.p, ptr %i.n, align 8, !tbaa !26
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.q, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !26
  %i.r = call fastcc i64 @floatXToUI32(ptr noundef %3, i8 noundef zeroext %1, i1 noundef zeroext %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i64 %i.r
}

; Function Attrs: nounwind uwtable
define dso_local i64 @slow_extF80M_to_ui64(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.floatX, align 8             ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %.val = load i64, ptr %0, align 8, !tbaa !32    ; 7 uses
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val2 = load i16, ptr %i.a, align 8, !tbaa !30 ; 2 uses
  store i8 0, ptr %3, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  store i8 0, ptr %i.b, align 1, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  store i8 0, ptr %i.c, align 2, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 3
  %.lobit.i = lshr i16 %.val2, 15
  %i.e = trunc nuw nsw i16 %.lobit.i to i8
  store i8 %i.e, ptr %i.d, align 1, !tbaa !18
  %i.f = and i16 %.val2, 32767                    ; 2 uses
  %i.g = icmp eq i16 %i.f, 32767
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = and i64 %.val, 9223372036854775807
  %.not31.i = icmp eq i64 %i.h, 0
  br i1 %.not31.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %3, align 8, !tbaa !16
  br label %extF80MToFloatX.exit

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %i.b, align 1, !tbaa !17
  br label %extF80MToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %narrow.i = tail call i16 @llvm.umax.i16(i16 %i.f, i16 1)
  %spec.select.i = zext nneg i16 %narrow.i to i64
  %i.i = add nsw i64 %spec.select.i, -16383       ; 3 uses
  %.not29.i = icmp sgt i64 %.val, -1
  br i1 %.not29.i, label %bb.f, label %.loopexit.i

bb.f:                                             ; preds = %bb.e
  %.not30.i = icmp eq i64 %.val, 0
  br i1 %.not30.i, label %bb.g, label %.preheader.i

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.c, align 2, !tbaa !19
  br label %.loopexit.i

.preheader.i:                                     ; preds = %bb.f, %.preheader.i
  %.1.i = phi i64 [ %i.j, %.preheader.i ], [ %i.i, %bb.f ]
  %.sroa.01.0.i = phi i64 [ %i.k, %.preheader.i ], [ %.val, %bb.f ]
  %i.j = add nsw i64 %.1.i, -1                    ; 2 uses
  %i.k = shl nuw i64 %.sroa.01.0.i, 1             ; 3 uses
  %i.l = icmp sgt i64 %i.k, -1
  br i1 %i.l, label %.preheader.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader.i, %bb.g, %bb.e
  %.2.i = phi i64 [ %i.i, %bb.e ], [ %i.i, %bb.g ], [ %i.j, %.preheader.i ]
  %.sroa.01.1.i = phi i64 [ %.val, %bb.e ], [ 0, %bb.g ], [ %i.k, %.preheader.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.2.i, ptr %i.m, align 8, !tbaa !20
  br label %extF80MToFloatX.exit

extF80MToFloatX.exit:                             ; preds = %bb.c, %bb.d, %.loopexit.i
  %.sroa.01.2.i = phi i64 [ %.val, %bb.c ], [ %.val, %bb.d ], [ %.sroa.01.1.i, %.loopexit.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.01.2.i, i64 0, i32 noundef 56) #10 ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.o, 0
  %i.q = extractvalue { i64, i64 } %i.o, 1
  store i64 %i.p, ptr %i.n, align 8, !tbaa !26
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.q, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !26
  %i.r = call fastcc i64 @floatXToUI64(ptr noundef %3, i8 noundef zeroext %1, i1 noundef zeroext %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i64 %i.r
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -2147483648, 2147483648) i64 @slow_extF80M_to_i32(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.floatX, align 8             ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %.val = load i64, ptr %0, align 8, !tbaa !32    ; 7 uses
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val2 = load i16, ptr %i.a, align 8, !tbaa !30 ; 2 uses
  store i8 0, ptr %3, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  store i8 0, ptr %i.b, align 1, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  store i8 0, ptr %i.c, align 2, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 3
  %.lobit.i = lshr i16 %.val2, 15
  %i.e = trunc nuw nsw i16 %.lobit.i to i8
  store i8 %i.e, ptr %i.d, align 1, !tbaa !18
  %i.f = and i16 %.val2, 32767                    ; 2 uses
  %i.g = icmp eq i16 %i.f, 32767
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = and i64 %.val, 9223372036854775807
  %.not31.i = icmp eq i64 %i.h, 0
  br i1 %.not31.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %3, align 8, !tbaa !16
  br label %extF80MToFloatX.exit

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %i.b, align 1, !tbaa !17
  br label %extF80MToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %narrow.i = tail call i16 @llvm.umax.i16(i16 %i.f, i16 1)
  %spec.select.i = zext nneg i16 %narrow.i to i64
  %i.i = add nsw i64 %spec.select.i, -16383       ; 3 uses
  %.not29.i = icmp sgt i64 %.val, -1
  br i1 %.not29.i, label %bb.f, label %.loopexit.i

end_hunk_2
begin_hunk_3_@slow_extF80M_eq:bb.a
  %.not.i.unshifted = xor i16 %.val2, %.val4
  %.not.i = icmp sgt i16 %.not.i.unshifted, -1
  br i1 %.not.i, label %bb.i, label %floatXEq.exit

bb.i:                                             ; preds = %bb.h
  %i.w = or i8 %.sroa.5.0, %.sroa.522.0
  %brmerge.not.i = icmp eq i8 %i.w, 0
  %i.x = and i8 %.sroa.5.0, %.sroa.522.0
  %.mux.i = icmp ne i8 %i.x, 0
  br i1 %brmerge.not.i, label %bb.j, label %floatXEq.exit

bb.j:                                             ; preds = %bb.i
  %i.y = icmp eq i64 %.sroa.1326.0, %.sroa.1320.0
  br i1 %i.y, label %bb.k, label %floatXEq.exit

bb.k:                                             ; preds = %bb.j
  %i.z = icmp eq i64 %i.k, %i.v
  %i.aa = icmp eq i64 %i.j, %i.u
  %i.ab = select i1 %i.z, i1 %i.aa, i1 false
  br label %floatXEq.exit

floatXEq.exit:                                    ; preds = %extF80MToFloatX.exit19, %bb.h, %bb.i, %bb.j, %bb.k
  %.0.i = phi i1 [ %.mux.i, %bb.i ], [ %not.or.cond, %extF80MToFloatX.exit19 ], [ %i.ab, %bb.k ], [ false, %bb.h ], [ false, %bb.j ]
  ret i1 %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @slow_extF80M_le(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %.val5 = load i64, ptr %0, align 8, !tbaa !32   ; 6 uses
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val6 = load i16, ptr %i.a, align 8, !tbaa !30 ; 3 uses
  %i.b = and i16 %.val6, 32767                    ; 2 uses
  %i.c = icmp eq i16 %i.b, 32767
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %.val5, 9223372036854775807
  %.not31.i = icmp eq i64 %i.d, 0                 ; 2 uses
  %not..not31.i = xor i1 %.not31.i, true
  br label %extF80MToFloatX.exit

bb.c:                                             ; preds = %bb.a
  %narrow.i = tail call i16 @llvm.umax.i16(i16 %i.b, i16 1)
  %spec.select.i = zext nneg i16 %narrow.i to i64
  %i.e = add nsw i64 %spec.select.i, -16383       ; 3 uses
  %.not29.i = icmp sgt i64 %.val5, -1
  br i1 %.not29.i, label %bb.d, label %extF80MToFloatX.exit

bb.d:                                             ; preds = %bb.c
  %.not30.i = icmp eq i64 %.val5, 0
  br i1 %.not30.i, label %extF80MToFloatX.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %.1.i = phi i64 [ %i.f, %.preheader.i ], [ %i.e, %bb.d ]
  %.sroa.01.0.i = phi i64 [ %i.g, %.preheader.i ], [ %.val5, %bb.d ]
  %i.f = add nsw i64 %.1.i, -1                    ; 2 uses
  %i.g = shl nuw i64 %.sroa.01.0.i, 1             ; 3 uses
  %i.h = icmp sgt i64 %i.g, -1
  br i1 %i.h, label %.preheader.i, label %extF80MToFloatX.exit

extF80MToFloatX.exit:                             ; preds = %.preheader.i, %bb.b, %bb.c, %bb.d
  %.sroa.1548.0 = phi i64 [ %i.e, %bb.d ], [ undef, %bb.b ], [ %i.e, %bb.c ], [ %i.f, %.preheader.i ] ; 4 uses
  %.sroa.1046.1 = phi i8 [ 1, %bb.d ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %.preheader.i ] ; 4 uses
  %.sroa.644.0 = phi i1 [ false, %bb.d ], [ %.not31.i, %bb.b ], [ false, %bb.c ], [ false, %.preheader.i ] ; 2 uses
  %.sroa.042.0 = phi i1 [ false, %bb.d ], [ %not..not31.i, %bb.b ], [ false, %bb.c ], [ false, %.preheader.i ]
  %.sroa.01.2.i = phi i64 [ 0, %bb.d ], [ %.val5, %bb.b ], [ %.val5, %bb.c ], [ %i.g, %.preheader.i ]
  %i.i = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.01.2.i, i64 0, i32 noundef 56) #10 ; 2 uses
  %i.j = extractvalue { i64, i64 } %i.i, 0        ; 2 uses
  %i.k = extractvalue { i64, i64 } %i.i, 1        ; 3 uses
  %.val = load i64, ptr %1, align 8, !tbaa !32    ; 7 uses
  %i.l = getelementptr i8, ptr %1, i64 8
  %.val4 = load i16, ptr %i.l, align 8, !tbaa !30 ; 2 uses
  %i.m = and i16 %.val4, 32767                    ; 2 uses
  %i.n = icmp eq i16 %i.m, 32767
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %extF80MToFloatX.exit
  %i.o = and i64 %.val, 9223372036854775807
  %.not31.i20 = icmp eq i64 %i.o, 0
  br i1 %.not31.i20, label %extF80MToFloatX.exit21, label %extF80MToFloatX.exit21.thread

extF80MToFloatX.exit21.thread:                    ; preds = %bb.e
  %i.p = tail call { i64, i64 } @shortShiftLeft128(i64 %.val, i64 0, i32 noundef 56) #10 ; 0 uses
  %i.q = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.r = or i8 %i.q, 16
  store i8 %i.r, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  br label %floatXLe.exit

bb.f:                                             ; preds = %extF80MToFloatX.exit
  %narrow.i8 = tail call i16 @llvm.umax.i16(i16 %i.m, i16 1)
  %spec.select.i9 = zext nneg i16 %narrow.i8 to i64
  %i.s = add nsw i64 %spec.select.i9, -16383      ; 3 uses
  %.not29.i10 = icmp sgt i64 %.val, -1
  br i1 %.not29.i10, label %bb.g, label %extF80MToFloatX.exit21

bb.g:                                             ; preds = %bb.f
  %.not30.i16 = icmp eq i64 %.val, 0
  br i1 %.not30.i16, label %extF80MToFloatX.exit21, label %.preheader.i17

.preheader.i17:                                   ; preds = %bb.g, %.preheader.i17
  %.1.i18 = phi i64 [ %i.t, %.preheader.i17 ], [ %i.s, %bb.g ]
  %.sroa.01.0.i19 = phi i64 [ %i.u, %.preheader.i17 ], [ %.val, %bb.g ]
  %i.t = add nsw i64 %.1.i18, -1                  ; 2 uses
  %i.u = shl nuw i64 %.sroa.01.0.i19, 1           ; 3 uses
  %i.v = icmp sgt i64 %i.u, -1
  br i1 %i.v, label %.preheader.i17, label %extF80MToFloatX.exit21

extF80MToFloatX.exit21:                           ; preds = %.preheader.i17, %bb.e, %bb.f, %bb.g
  %.sroa.1734.0 = phi i64 [ undef, %bb.e ], [ %i.s, %bb.g ], [ %i.s, %bb.f ], [ %i.t, %.preheader.i17 ] ; 4 uses
  %.sroa.10.1 = phi i1 [ false, %bb.e ], [ true, %bb.g ], [ false, %bb.f ], [ false, %.preheader.i17 ] ; 3 uses
  %.sroa.6.0 = phi i8 [ 1, %bb.e ], [ %.sroa.1046.1, %bb.g ], [ %.sroa.1046.1, %bb.f ], [ %.sroa.1046.1, %.preheader.i17 ] ; 2 uses
  %.sroa.01.2.i14 = phi i64 [ %.val, %bb.e ], [ 0, %bb.g ], [ %.val, %bb.f ], [ %i.u, %.preheader.i17 ]
  %i.w = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.01.2.i14, i64 0, i32 noundef 56) #10 ; 2 uses
  %i.x = extractvalue { i64, i64 } %i.w, 0        ; 2 uses
  %i.y = extractvalue { i64, i64 } %i.w, 1        ; 3 uses
  br i1 %.sroa.042.0, label %bb.h, label %.thread

bb.h:                                             ; preds = %extF80MToFloatX.exit21
  %i.z = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.aa = or i8 %i.z, 16
  store i8 %i.aa, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  br label %floatXLe.exit

.thread:                                          ; preds = %extF80MToFloatX.exit21
  %i.ab = trunc nuw i8 %.sroa.1046.1 to i1
  %or.cond83 = and i1 %.sroa.10.1, %i.ab
  br i1 %or.cond83, label %floatXLe.exit, label %bb.i

bb.i:                                             ; preds = %.thread
  %i.ac = icmp slt i16 %.val6, 0                  ; 2 uses
  %.not.i.unshifted = xor i16 %.val4, %.val6
  %.not.i = icmp sgt i16 %.not.i.unshifted, -1
  br i1 %.not.i, label %bb.j, label %floatXLe.exit

bb.j:                                             ; preds = %bb.i
  br i1 %i.ac, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %or.cond84 = or i1 %.sroa.644.0, %.sroa.10.1
  br i1 %or.cond84, label %floatXLe.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %brmerge.not.i = icmp eq i8 %.sroa.6.0, 0
  br i1 %brmerge.not.i, label %bb.m, label %floatXLe.exit

bb.m:                                             ; preds = %bb.l
  %i.ad = icmp slt i64 %.sroa.1734.0, %.sroa.1548.0
  br i1 %i.ad, label %floatXLe.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = icmp slt i64 %.sroa.1548.0, %.sroa.1734.0
  br i1 %i.ae, label %floatXLe.exit, label %.sink.split.i

bb.o:                                             ; preds = %bb.j
  %brmerge33.not.i = icmp eq i8 %.sroa.6.0, 0
  br i1 %brmerge33.not.i, label %bb.p, label %floatXLe.exit

bb.p:                                             ; preds = %bb.o
  %or.cond85 = or i1 %.sroa.644.0, %.sroa.10.1
  br i1 %or.cond85, label %floatXLe.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = icmp slt i64 %.sroa.1548.0, %.sroa.1734.0
  br i1 %i.af, label %floatXLe.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ag = icmp slt i64 %.sroa.1734.0, %.sroa.1548.0
  br i1 %i.ag, label %floatXLe.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.r, %bb.n
  %.sink.i.sroa.phi.sroa.speculated = phi i64 [ %i.x, %bb.n ], [ %i.j, %bb.r ]
  %.sink.i.sroa.phi23.sroa.speculated = phi i64 [ %i.y, %bb.n ], [ %i.k, %bb.r ]
  %.sink51.i.sroa.phi.sroa.speculated = phi i64 [ %i.j, %bb.n ], [ %i.x, %bb.r ]
  %.sink51.i.sroa.phi27.sroa.speculated = phi i64 [ %i.k, %bb.n ], [ %i.y, %bb.r ]
  %i.ah = icmp ult i64 %.sink.i.sroa.phi23.sroa.speculated, %.sink51.i.sroa.phi27.sroa.speculated
  %i.ai = icmp eq i64 %i.y, %i.k
  %i.aj = icmp ule i64 %.sink.i.sroa.phi.sroa.speculated, %.sink51.i.sroa.phi.sroa.speculated
  %i.ak = select i1 %i.ai, i1 %i.aj, i1 false
  %i.al = select i1 %i.ah, i1 true, i1 %i.ak
  br label %floatXLe.exit

floatXLe.exit:                                    ; preds = %bb.h, %.thread, %extF80MToFloatX.exit21.thread, %bb.i, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %.sink.split.i
  %.0.i = phi i1 [ false, %bb.r ], [ false, %bb.h ], [ true, %.thread ], [ %i.ac, %bb.i ], [ true, %bb.k ], [ false, %bb.l ], [ true, %bb.m ], [ %i.al, %.sink.split.i ], [ false, %bb.n ], [ true, %bb.o ], [ false, %bb.p ], [ true, %bb.q ], [ false, %extF80MToFloatX.exit21.thread ]
  ret i1 %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @slow_extF80M_lt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %.val5 = load i64, ptr %0, align 8, !tbaa !32   ; 6 uses
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val6 = load i16, ptr %i.a, align 8, !tbaa !30 ; 5 uses
  %i.b = and i16 %.val6, 32767                    ; 2 uses
  %i.c = icmp eq i16 %i.b, 32767
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %.val5, 9223372036854775807
  %.not31.i = icmp eq i64 %i.d, 0                 ; 2 uses
  %not..not31.i = xor i1 %.not31.i, true
  br label %extF80MToFloatX.exit

bb.c:                                             ; preds = %bb.a
  %narrow.i = tail call i16 @llvm.umax.i16(i16 %i.b, i16 1)
  %spec.select.i = zext nneg i16 %narrow.i to i64
  %i.e = add nsw i64 %spec.select.i, -16383       ; 3 uses
  %.not29.i = icmp sgt i64 %.val5, -1
  br i1 %.not29.i, label %bb.d, label %extF80MToFloatX.exit

bb.d:                                             ; preds = %bb.c
  %.not30.i = icmp eq i64 %.val5, 0
  br i1 %.not30.i, label %extF80MToFloatX.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %.1.i = phi i64 [ %i.f, %.preheader.i ], [ %i.e, %bb.d ]
  %.sroa.01.0.i = phi i64 [ %i.g, %.preheader.i ], [ %.val5, %bb.d ]
  %i.f = add nsw i64 %.1.i, -1                    ; 2 uses
  %i.g = shl nuw i64 %.sroa.01.0.i, 1             ; 3 uses
  %i.h = icmp sgt i64 %i.g, -1
  br i1 %i.h, label %.preheader.i, label %extF80MToFloatX.exit

extF80MToFloatX.exit:                             ; preds = %.preheader.i, %bb.b, %bb.c, %bb.d
  %.sroa.1435.0 = phi i64 [ %i.e, %bb.d ], [ undef, %bb.b ], [ %i.e, %bb.c ], [ %i.f, %.preheader.i ] ; 4 uses
  %brmerge3644.i = phi i1 [ true, %bb.d ], [ false, %bb.b ], [ false, %bb.c ], [ false, %.preheader.i ]
  %.sroa.9.1 = phi i8 [ 1, %bb.d ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %.preheader.i ] ; 3 uses
  %.sroa.634.0 = phi i1 [ false, %bb.d ], [ %.not31.i, %bb.b ], [ false, %bb.c ], [ false, %.preheader.i ]
  %.sroa.032.0 = phi i1 [ false, %bb.d ], [ %not..not31.i, %bb.b ], [ false, %bb.c ], [ false, %.preheader.i ]
  %.sroa.01.2.i = phi i64 [ 0, %bb.d ], [ %.val5, %bb.b ], [ %.val5, %bb.c ], [ %i.g, %.preheader.i ]
  %i.i = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.01.2.i, i64 0, i32 noundef 56) #10 ; 2 uses
  %i.j = extractvalue { i64, i64 } %i.i, 0        ; 2 uses
  %i.k = extractvalue { i64, i64 } %i.i, 1        ; 4 uses
  %.val = load i64, ptr %1, align 8, !tbaa !32    ; 7 uses
  %i.l = getelementptr i8, ptr %1, i64 8
  %.val4 = load i16, ptr %i.l, align 8, !tbaa !30 ; 2 uses
  %i.m = and i16 %.val4, 32767                    ; 2 uses
  %i.n = icmp eq i16 %i.m, 32767
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %extF80MToFloatX.exit
  %i.o = and i64 %.val, 9223372036854775807
  %.not31.i20 = icmp eq i64 %i.o, 0
  br i1 %.not31.i20, label %extF80MToFloatX.exit21, label %extF80MToFloatX.exit21.thread

extF80MToFloatX.exit21.thread:                    ; preds = %bb.e
  %i.p = tail call { i64, i64 } @shortShiftLeft128(i64 %.val, i64 0, i32 noundef 56) #10 ; 0 uses
  %i.q = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.r = or i8 %i.q, 16
  store i8 %i.r, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  br label %floatXLt.exit

bb.f:                                             ; preds = %extF80MToFloatX.exit
  %narrow.i8 = tail call i16 @llvm.umax.i16(i16 %i.m, i16 1)
  %spec.select.i9 = zext nneg i16 %narrow.i8 to i64
  %i.s = add nsw i64 %spec.select.i9, -16383      ; 3 uses
  %.not29.i10 = icmp sgt i64 %.val, -1
  br i1 %.not29.i10, label %bb.g, label %extF80MToFloatX.exit21

bb.g:                                             ; preds = %bb.f
  %.not30.i16 = icmp eq i64 %.val, 0
  br i1 %.not30.i16, label %extF80MToFloatX.exit21, label %.preheader.i17

.preheader.i17:                                   ; preds = %bb.g, %.preheader.i17
  %.1.i18 = phi i64 [ %i.t, %.preheader.i17 ], [ %i.s, %bb.g ]
  %.sroa.01.0.i19 = phi i64 [ %i.u, %.preheader.i17 ], [ %.val, %bb.g ]
  %i.t = add nsw i64 %.1.i18, -1                  ; 2 uses
  %i.u = shl nuw i64 %.sroa.01.0.i19, 1           ; 3 uses
  %i.v = icmp sgt i64 %i.u, -1
  br i1 %i.v, label %.preheader.i17, label %extF80MToFloatX.exit21

extF80MToFloatX.exit21:                           ; preds = %.preheader.i17, %bb.e, %bb.f, %bb.g
  %.sroa.1828.0 = phi i64 [ undef, %bb.e ], [ %i.s, %bb.g ], [ %i.s, %bb.f ], [ %i.t, %.preheader.i17 ] ; 4 uses
  %.sroa.11.1 = phi i1 [ false, %bb.e ], [ true, %bb.g ], [ false, %bb.f ], [ false, %.preheader.i17 ] ; 3 uses
  %.sroa.6.0 = phi i8 [ 1, %bb.e ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %.preheader.i17 ] ; 3 uses
  %.sroa.01.2.i14 = phi i64 [ %.val, %bb.e ], [ 0, %bb.g ], [ %.val, %bb.f ], [ %i.u, %.preheader.i17 ]
  %i.w = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.01.2.i14, i64 0, i32 noundef 56) #10 ; 2 uses
  %i.x = extractvalue { i64, i64 } %i.w, 0        ; 2 uses
  %i.y = extractvalue { i64, i64 } %i.w, 1        ; 4 uses
  br i1 %.sroa.032.0, label %bb.h, label %.thread

bb.h:                                             ; preds = %extF80MToFloatX.exit21
  %i.z = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.aa = or i8 %i.z, 16
  store i8 %i.aa, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  br label %floatXLt.exit

.thread:                                          ; preds = %extF80MToFloatX.exit21
  %.old = trunc nuw i8 %.sroa.9.1 to i1
  %or.cond70.old = and i1 %.sroa.11.1, %.old
  br i1 %or.cond70.old, label %floatXLt.exit, label %bb.i

bb.i:                                             ; preds = %.thread
  %.not.i.unshifted = xor i16 %.val4, %.val6
  %.not.i = icmp sgt i16 %.not.i.unshifted, -1
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = icmp slt i16 %.val6, 0
  br label %floatXLt.exit

bb.k:                                             ; preds = %bb.i
  br i1 %.sroa.634.0, label %bb.l, label %.thread.i

bb.l:                                             ; preds = %bb.k
  %i.ac = trunc nuw i8 %.sroa.6.0 to i1
  br i1 %i.ac, label %floatXLt.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = icmp slt i16 %.val6, 0
  %spec.select.i22 = or i1 %i.ad, %brmerge3644.i
  br label %floatXLt.exit

.thread.i:                                        ; preds = %bb.k
  %i.ae = icmp slt i16 %.val6, 0
  br i1 %i.ae, label %bb.n, label %bb.s

bb.n:                                             ; preds = %.thread.i
  br i1 %.sroa.11.1, label %floatXLt.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = or i8 %.sroa.6.0, %.sroa.9.1
  %brmerge.not.i = icmp eq i8 %i.af, 0
  br i1 %brmerge.not.i, label %bb.p, label %floatXLt.exit

bb.p:                                             ; preds = %bb.o
  %i.ag = icmp slt i64 %.sroa.1828.0, %.sroa.1435.0
  br i1 %i.ag, label %floatXLt.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ah = icmp slt i64 %.sroa.1435.0, %.sroa.1828.0
  br i1 %i.ah, label %floatXLt.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ai = icmp ult i64 %i.y, %i.k
  %i.aj = icmp eq i64 %i.y, %i.k
  %i.ak = icmp ult i64 %i.x, %i.j
  %i.al = select i1 %i.aj, i1 %i.ak, i1 false
  %i.am = select i1 %i.ai, i1 true, i1 %i.al
  br label %floatXLt.exit

bb.s:                                             ; preds = %.thread.i
  %i.an = or i8 %.sroa.6.0, %.sroa.9.1
  %brmerge36.not.i = icmp ne i8 %i.an, 0          ; 2 uses
  %brmerge = or i1 %.sroa.11.1, %brmerge36.not.i
  br i1 %brmerge, label %floatXLt.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ao = icmp slt i64 %.sroa.1435.0, %.sroa.1828.0
  br i1 %i.ao, label %floatXLt.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ap = icmp slt i64 %.sroa.1828.0, %.sroa.1435.0
  br i1 %i.ap, label %floatXLt.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aq = icmp ult i64 %i.k, %i.y
  %i.ar = icmp eq i64 %i.k, %i.y
  %i.as = icmp ult i64 %i.j, %i.x
  %i.at = select i1 %i.ar, i1 %i.as, i1 false
  %i.au = select i1 %i.aq, i1 true, i1 %i.at
  br label %floatXLt.exit

floatXLt.exit:                                    ; preds = %bb.s, %bb.h, %.thread, %extF80MToFloatX.exit21.thread, %bb.j, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.t, %bb.u, %bb.v
  %.0.i = phi i1 [ %i.au, %bb.v ], [ false, %bb.h ], [ %i.ab, %bb.j ], [ false, %.thread ], [ false, %bb.l ], [ false, %bb.u ], [ false, %bb.o ], [ true, %bb.p ], [ %i.am, %bb.r ], [ false, %bb.q ], [ %brmerge36.not.i, %bb.s ], [ %spec.select.i22, %bb.m ], [ true, %bb.t ], [ false, %extF80MToFloatX.exit21.thread ], [ true, %bb.n ]
  ret i1 %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @slow_extF80M_eq_signaling(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %.val5 = load i64, ptr %0, align 8, !tbaa !32   ; 6 uses
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val6 = load i16, ptr %i.a, align 8, !tbaa !30 ; 2 uses
  %i.b = and i16 %.val6, 32767                    ; 2 uses
  %i.c = icmp eq i16 %i.b, 32767
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %.val5, 9223372036854775807
  %.not31.i = icmp eq i64 %i.d, 0                 ; 2 uses
  %spec.select = zext i1 %.not31.i to i8
  %not..not31.i = xor i1 %.not31.i, true
  br label %extF80MToFloatX.exit

bb.c:                                             ; preds = %bb.a
  %narrow.i = tail call i16 @llvm.umax.i16(i16 %i.b, i16 1)
  %spec.select.i = zext nneg i16 %narrow.i to i64
  %i.e = add nsw i64 %spec.select.i, -16383       ; 3 uses
  %.not29.i = icmp sgt i64 %.val5, -1
  br i1 %.not29.i, label %bb.d, label %extF80MToFloatX.exit

bb.d:                                             ; preds = %bb.c
  %.not30.i = icmp eq i64 %.val5, 0
  br i1 %.not30.i, label %extF80MToFloatX.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %.1.i = phi i64 [ %i.f, %.preheader.i ], [ %i.e, %bb.d ]
  %.sroa.01.0.i = phi i64 [ %i.g, %.preheader.i ], [ %.val5, %bb.d ]
  %i.f = add nsw i64 %.1.i, -1                    ; 2 uses
  %i.g = shl nuw i64 %.sroa.01.0.i, 1             ; 3 uses
  %i.h = icmp sgt i64 %i.g, -1
  br i1 %i.h, label %.preheader.i, label %extF80MToFloatX.exit

extF80MToFloatX.exit:                             ; preds = %.preheader.i, %bb.b, %bb.c, %bb.d
  %.sroa.1430.0 = phi i64 [ %i.e, %bb.d ], [ undef, %bb.b ], [ %i.e, %bb.c ], [ %i.f, %.preheader.i ]
  %.sroa.927.1 = phi i1 [ true, %bb.d ], [ false, %bb.b ], [ false, %bb.c ], [ false, %.preheader.i ]
  %.sroa.626.0 = phi i8 [ 0, %bb.d ], [ %spec.select, %bb.b ], [ 0, %bb.c ], [ 0, %.preheader.i ] ; 2 uses
  %.sroa.024.0 = phi i1 [ false, %bb.d ], [ %not..not31.i, %bb.b ], [ false, %bb.c ], [ false, %.preheader.i ]
  %.sroa.01.2.i = phi i64 [ 0, %bb.d ], [ %.val5, %bb.b ], [ %.val5, %bb.c ], [ %i.g, %.preheader.i ]
  %i.i = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.01.2.i, i64 0, i32 noundef 56) #10 ; 2 uses
  %i.j = extractvalue { i64, i64 } %i.i, 0
  %i.k = extractvalue { i64, i64 } %i.i, 1
  %.val = load i64, ptr %1, align 8, !tbaa !32    ; 7 uses
  %i.l = getelementptr i8, ptr %1, i64 8
  %.val4 = load i16, ptr %i.l, align 8, !tbaa !30 ; 2 uses
  %i.m = and i16 %.val4, 32767                    ; 2 uses
  %i.n = icmp eq i16 %i.m, 32767
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %extF80MToFloatX.exit
  %i.o = and i64 %.val, 9223372036854775807
  %.not31.i20 = icmp eq i64 %i.o, 0
  br i1 %.not31.i20, label %extF80MToFloatX.exit21, label %extF80MToFloatX.exit21.thread

extF80MToFloatX.exit21.thread:                    ; preds = %bb.e
  %i.p = tail call { i64, i64 } @shortShiftLeft128(i64 %.val, i64 0, i32 noundef 56) #10 ; 0 uses
  %i.q = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.r = or i8 %i.q, 16
  store i8 %i.r, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  br label %floatXEq.exit

bb.f:                                             ; preds = %extF80MToFloatX.exit
  %narrow.i8 = tail call i16 @llvm.umax.i16(i16 %i.m, i16 1)
  %spec.select.i9 = zext nneg i16 %narrow.i8 to i64
  %i.s = add nsw i64 %spec.select.i9, -16383      ; 3 uses
  %.not29.i10 = icmp sgt i64 %.val, -1
  br i1 %.not29.i10, label %bb.g, label %extF80MToFloatX.exit21

bb.g:                                             ; preds = %bb.f
  %.not30.i16 = icmp eq i64 %.val, 0
  br i1 %.not30.i16, label %extF80MToFloatX.exit21, label %.preheader.i17

.preheader.i17:                                   ; preds = %bb.g, %.preheader.i17
  %.1.i18 = phi i64 [ %i.t, %.preheader.i17 ], [ %i.s, %bb.g ]
  %.sroa.01.0.i19 = phi i64 [ %i.u, %.preheader.i17 ], [ %.val, %bb.g ]
  %i.t = add nsw i64 %.1.i18, -1                  ; 2 uses
  %i.u = shl nuw i64 %.sroa.01.0.i19, 1           ; 3 uses
  %i.v = icmp sgt i64 %i.u, -1
  br i1 %i.v, label %.preheader.i17, label %extF80MToFloatX.exit21

extF80MToFloatX.exit21:                           ; preds = %.preheader.i17, %bb.e, %bb.f, %bb.g
  %.sroa.1423.0 = phi i64 [ undef, %bb.e ], [ %i.s, %bb.g ], [ %i.s, %bb.f ], [ %i.t, %.preheader.i17 ]
  %.sroa.9.1 = phi i1 [ false, %bb.e ], [ %.sroa.927.1, %bb.g ], [ false, %bb.f ], [ false, %.preheader.i17 ]
  %.sroa.6.0 = phi i8 [ 1, %bb.e ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %.preheader.i17 ] ; 2 uses
  %.sroa.01.2.i14 = phi i64 [ %.val, %bb.e ], [ 0, %bb.g ], [ %.val, %bb.f ], [ %i.u, %.preheader.i17 ]
  %i.w = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.01.2.i14, i64 0, i32 noundef 56) #10 ; 2 uses
  %i.x = extractvalue { i64, i64 } %i.w, 0
  %i.y = extractvalue { i64, i64 } %i.w, 1
  br i1 %.sroa.024.0, label %bb.h, label %.thread

bb.h:                                             ; preds = %extF80MToFloatX.exit21
  %i.z = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.aa = or i8 %i.z, 16
  store i8 %i.aa, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  br label %floatXEq.exit

.thread:                                          ; preds = %extF80MToFloatX.exit21
  br i1 %.sroa.9.1, label %floatXEq.exit, label %bb.i

bb.i:                                             ; preds = %.thread
  %.not.i.unshifted = xor i16 %.val4, %.val6
  %.not.i = icmp sgt i16 %.not.i.unshifted, -1
  br i1 %.not.i, label %bb.j, label %floatXEq.exit

bb.j:                                             ; preds = %bb.i
  %i.ab = or i8 %.sroa.6.0, %.sroa.626.0
  %brmerge.not.i = icmp eq i8 %i.ab, 0
  %i.ac = and i8 %.sroa.6.0, %.sroa.626.0
  %.mux.i = icmp ne i8 %i.ac, 0
  br i1 %brmerge.not.i, label %bb.k, label %floatXEq.exit

bb.k:                                             ; preds = %bb.j
  %i.ad = icmp eq i64 %.sroa.1430.0, %.sroa.1423.0
  br i1 %i.ad, label %bb.l, label %floatXEq.exit

bb.l:                                             ; preds = %bb.k
  %i.ae = icmp eq i64 %i.k, %i.y
  %i.af = icmp eq i64 %i.j, %i.x
  %i.ag = select i1 %i.ae, i1 %i.af, i1 false
  br label %floatXEq.exit

floatXEq.exit:                                    ; preds = %bb.h, %.thread, %extF80MToFloatX.exit21.thread, %bb.i, %bb.j, %bb.k, %bb.l
  %.0.i = phi i1 [ %.mux.i, %bb.j ], [ false, %bb.h ], [ true, %.thread ], [ false, %bb.i ], [ false, %extF80MToFloatX.exit21.thread ], [ %i.ag, %bb.l ], [ false, %bb.k ]
  ret i1 %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @slow_extF80M_le_quiet(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %.val3 = load i64, ptr %0, align 8, !tbaa !32   ; 6 uses
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val4 = load i16, ptr %i.a, align 8, !tbaa !30 ; 3 uses
  %i.b = and i16 %.val4, 32767                    ; 2 uses
  %i.c = icmp eq i16 %i.b, 32767
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %.val3, 9223372036854775807
  %.not31.i = icmp eq i64 %i.d, 0                 ; 2 uses
  %not..not31.i = xor i1 %.not31.i, true
  br label %extF80MToFloatX.exit

bb.c:                                             ; preds = %bb.a
  %narrow.i = tail call i16 @llvm.umax.i16(i16 %i.b, i16 1)
  %spec.select.i = zext nneg i16 %narrow.i to i64
  %i.e = add nsw i64 %spec.select.i, -16383       ; 3 uses
  %.not29.i = icmp sgt i64 %.val3, -1
  br i1 %.not29.i, label %bb.d, label %extF80MToFloatX.exit

bb.d:                                             ; preds = %bb.c
  %.not30.i = icmp eq i64 %.val3, 0
  br i1 %.not30.i, label %extF80MToFloatX.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %.1.i = phi i64 [ %i.f, %.preheader.i ], [ %i.e, %bb.d ]
  %.sroa.01.0.i = phi i64 [ %i.g, %.preheader.i ], [ %.val3, %bb.d ]
  %i.f = add nsw i64 %.1.i, -1                    ; 2 uses
  %i.g = shl nuw i64 %.sroa.01.0.i, 1             ; 3 uses
  %i.h = icmp sgt i64 %i.g, -1
  br i1 %i.h, label %.preheader.i, label %extF80MToFloatX.exit

extF80MToFloatX.exit:                             ; preds = %.preheader.i, %bb.b, %bb.c, %bb.d
  %.sroa.1444.0 = phi i64 [ %i.e, %bb.d ], [ undef, %bb.b ], [ %i.e, %bb.c ], [ %i.f, %.preheader.i ] ; 4 uses
  %.sroa.942.1 = phi i8 [ 1, %bb.d ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %.preheader.i ] ; 5 uses
  %.sroa.540.0 = phi i1 [ false, %bb.d ], [ %.not31.i, %bb.b ], [ false, %bb.c ], [ false, %.preheader.i ] ; 2 uses
  %.sroa.039.0 = phi i1 [ false, %bb.d ], [ %not..not31.i, %bb.b ], [ false, %bb.c ], [ false, %.preheader.i ]
  %.sroa.01.2.i = phi i64 [ 0, %bb.d ], [ %.val3, %bb.b ], [ %.val3, %bb.c ], [ %i.g, %.preheader.i ]
  %i.i = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.01.2.i, i64 0, i32 noundef 56) #10 ; 2 uses
  %i.j = extractvalue { i64, i64 } %i.i, 0        ; 2 uses
  %i.k = extractvalue { i64, i64 } %i.i, 1        ; 3 uses
  %.val = load i64, ptr %1, align 8, !tbaa !32    ; 6 uses
  %i.l = getelementptr i8, ptr %1, i64 8
  %.val2 = load i16, ptr %i.l, align 8, !tbaa !30 ; 2 uses
  %i.m = and i16 %.val2, 32767                    ; 2 uses
  %i.n = icmp eq i16 %i.m, 32767
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %extF80MToFloatX.exit
  %i.o = and i64 %.val, 9223372036854775807
  %.not31.i18 = icmp eq i64 %i.o, 0               ; 2 uses
  %spec.select49 = zext i1 %.not31.i18 to i8
  %not..not31.i18 = xor i1 %.not31.i18, true
  %i.p = or i8 %.sroa.942.1, %spec.select49
  br label %extF80MToFloatX.exit19

bb.f:                                             ; preds = %extF80MToFloatX.exit
  %narrow.i6 = tail call i16 @llvm.umax.i16(i16 %i.m, i16 1)
  %spec.select.i7 = zext nneg i16 %narrow.i6 to i64
  %i.q = add nsw i64 %spec.select.i7, -16383      ; 3 uses
  %.not29.i8 = icmp sgt i64 %.val, -1
  br i1 %.not29.i8, label %bb.g, label %extF80MToFloatX.exit19

bb.g:                                             ; preds = %bb.f
  %.not30.i14 = icmp eq i64 %.val, 0
  br i1 %.not30.i14, label %extF80MToFloatX.exit19, label %.preheader.i15

.preheader.i15:                                   ; preds = %bb.g, %.preheader.i15
  %.1.i16 = phi i64 [ %i.r, %.preheader.i15 ], [ %i.q, %bb.g ]
  %.sroa.01.0.i17 = phi i64 [ %i.s, %.preheader.i15 ], [ %.val, %bb.g ]
  %i.r = add nsw i64 %.1.i16, -1                  ; 2 uses
  %i.s = shl nuw i64 %.sroa.01.0.i17, 1           ; 3 uses
  %i.t = icmp sgt i64 %i.s, -1
  br i1 %i.t, label %.preheader.i15, label %extF80MToFloatX.exit19

extF80MToFloatX.exit19:                           ; preds = %.preheader.i15, %bb.e, %bb.f, %bb.g
  %.sroa.1631.0 = phi i64 [ %i.q, %bb.g ], [ undef, %bb.e ], [ %i.q, %bb.f ], [ %i.r, %.preheader.i15 ] ; 4 uses
  %.sroa.9.1 = phi i1 [ true, %bb.g ], [ false, %bb.e ], [ false, %bb.f ], [ false, %.preheader.i15 ] ; 3 uses
  %.sroa.5.0 = phi i8 [ %.sroa.942.1, %bb.g ], [ %i.p, %bb.e ], [ %.sroa.942.1, %bb.f ], [ %.sroa.942.1, %.preheader.i15 ] ; 2 uses
  %.sroa.0.0 = phi i1 [ false, %bb.g ], [ %not..not31.i18, %bb.e ], [ false, %bb.f ], [ false, %.preheader.i15 ]
  %.sroa.01.2.i12 = phi i64 [ 0, %bb.g ], [ %.val, %bb.e ], [ %.val, %bb.f ], [ %i.s, %.preheader.i15 ]
  %i.u = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.01.2.i12, i64 0, i32 noundef 56) #10 ; 2 uses
  %i.v = extractvalue { i64, i64 } %i.u, 0        ; 2 uses
  %i.w = extractvalue { i64, i64 } %i.u, 1        ; 3 uses
  %or.cond = select i1 %.sroa.039.0, i1 true, i1 %.sroa.0.0
  br i1 %or.cond, label %floatXLe.exit, label %bb.h

bb.h:                                             ; preds = %extF80MToFloatX.exit19
  %i.x = trunc nuw i8 %.sroa.942.1 to i1
  %or.cond51 = and i1 %.sroa.9.1, %i.x
  br i1 %or.cond51, label %floatXLe.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = icmp slt i16 %.val4, 0                   ; 2 uses
  %.not.i.unshifted = xor i16 %.val2, %.val4
  %.not.i = icmp sgt i16 %.not.i.unshifted, -1
  br i1 %.not.i, label %bb.j, label %floatXLe.exit

bb.j:                                             ; preds = %bb.i
  br i1 %i.y, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %or.cond52 = or i1 %.sroa.540.0, %.sroa.9.1
  br i1 %or.cond52, label %floatXLe.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %brmerge.not.i = icmp eq i8 %.sroa.5.0, 0
  br i1 %brmerge.not.i, label %bb.m, label %floatXLe.exit

bb.m:                                             ; preds = %bb.l
  %i.z = icmp slt i64 %.sroa.1631.0, %.sroa.1444.0
  br i1 %i.z, label %floatXLe.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = icmp slt i64 %.sroa.1444.0, %.sroa.1631.0
  br i1 %i.aa, label %floatXLe.exit, label %.sink.split.i

bb.o:                                             ; preds = %bb.j
  %brmerge33.not.i = icmp eq i8 %.sroa.5.0, 0
  br i1 %brmerge33.not.i, label %bb.p, label %floatXLe.exit

bb.p:                                             ; preds = %bb.o
  %or.cond53 = or i1 %.sroa.540.0, %.sroa.9.1
  br i1 %or.cond53, label %floatXLe.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ab = icmp slt i64 %.sroa.1444.0, %.sroa.1631.0
  br i1 %i.ab, label %floatXLe.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ac = icmp slt i64 %.sroa.1631.0, %.sroa.1444.0
  br i1 %i.ac, label %floatXLe.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.r, %bb.n
  %.sink.i.sroa.phi.sroa.speculated = phi i64 [ %i.v, %bb.n ], [ %i.j, %bb.r ]
  %.sink.i.sroa.phi21.sroa.speculated = phi i64 [ %i.w, %bb.n ], [ %i.k, %bb.r ]
  %.sink51.i.sroa.phi.sroa.speculated = phi i64 [ %i.j, %bb.n ], [ %i.v, %bb.r ]
  %.sink51.i.sroa.phi25.sroa.speculated = phi i64 [ %i.k, %bb.n ], [ %i.w, %bb.r ]
  %i.ad = icmp ult i64 %.sink.i.sroa.phi21.sroa.speculated, %.sink51.i.sroa.phi25.sroa.speculated
  %i.ae = icmp eq i64 %i.w, %i.k
  %i.af = icmp ule i64 %.sink.i.sroa.phi.sroa.speculated, %.sink51.i.sroa.phi.sroa.speculated
  %i.ag = select i1 %i.ae, i1 %i.af, i1 false
  %i.ah = select i1 %i.ad, i1 true, i1 %i.ag
  br label %floatXLe.exit

floatXLe.exit:                                    ; preds = %bb.h, %extF80MToFloatX.exit19, %bb.i, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %.sink.split.i
  %.0.i = phi i1 [ false, %bb.r ], [ false, %extF80MToFloatX.exit19 ], [ true, %bb.h ], [ %i.y, %bb.i ], [ true, %bb.k ], [ false, %bb.l ], [ true, %bb.m ], [ %i.ah, %.sink.split.i ], [ false, %bb.n ], [ true, %bb.o ], [ false, %bb.p ], [ true, %bb.q ]
  ret i1 %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @slow_extF80M_lt_quiet(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %.val3 = load i64, ptr %0, align 8, !tbaa !32   ; 6 uses
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val4 = load i16, ptr %i.a, align 8, !tbaa !30 ; 5 uses
  %i.b = and i16 %.val4, 32767                    ; 2 uses
  %i.c = icmp eq i16 %i.b, 32767
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %.val3, 9223372036854775807
  %.not31.i = icmp eq i64 %i.d, 0                 ; 2 uses
  %not..not31.i = xor i1 %.not31.i, true
  br label %extF80MToFloatX.exit

bb.c:                                             ; preds = %bb.a
  %narrow.i = tail call i16 @llvm.umax.i16(i16 %i.b, i16 1)
  %spec.select.i = zext nneg i16 %narrow.i to i64
  %i.e = add nsw i64 %spec.select.i, -16383       ; 3 uses
  %.not29.i = icmp sgt i64 %.val3, -1
  br i1 %.not29.i, label %bb.d, label %extF80MToFloatX.exit

bb.d:                                             ; preds = %bb.c
  %.not30.i = icmp eq i64 %.val3, 0
  br i1 %.not30.i, label %extF80MToFloatX.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %.1.i = phi i64 [ %i.f, %.preheader.i ], [ %i.e, %bb.d ]
  %.sroa.01.0.i = phi i64 [ %i.g, %.preheader.i ], [ %.val3, %bb.d ]
  %i.f = add nsw i64 %.1.i, -1                    ; 2 uses
  %i.g = shl nuw i64 %.sroa.01.0.i, 1             ; 3 uses
  %i.h = icmp sgt i64 %i.g, -1
  br i1 %i.h, label %.preheader.i, label %extF80MToFloatX.exit

extF80MToFloatX.exit:                             ; preds = %.preheader.i, %bb.b, %bb.c, %bb.d
  %.sroa.1331.0 = phi i64 [ %i.e, %bb.d ], [ undef, %bb.b ], [ %i.e, %bb.c ], [ %i.f, %.preheader.i ] ; 4 uses
  %brmerge3644.i = phi i1 [ true, %bb.d ], [ false, %bb.b ], [ false, %bb.c ], [ false, %.preheader.i ]
  %.sroa.8.1 = phi i8 [ 1, %bb.d ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %.preheader.i ] ; 3 uses
  %.sroa.530.0 = phi i1 [ false, %bb.d ], [ %.not31.i, %bb.b ], [ false, %bb.c ], [ false, %.preheader.i ]
  %.sroa.029.0 = phi i1 [ false, %bb.d ], [ %not..not31.i, %bb.b ], [ false, %bb.c ], [ false, %.preheader.i ]
  %.sroa.01.2.i = phi i64 [ 0, %bb.d ], [ %.val3, %bb.b ], [ %.val3, %bb.c ], [ %i.g, %.preheader.i ]
  %i.i = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.01.2.i, i64 0, i32 noundef 56) #10 ; 2 uses
  %i.j = extractvalue { i64, i64 } %i.i, 0        ; 2 uses
  %i.k = extractvalue { i64, i64 } %i.i, 1        ; 4 uses
  %.val = load i64, ptr %1, align 8, !tbaa !32    ; 6 uses
  %i.l = getelementptr i8, ptr %1, i64 8
  %.val2 = load i16, ptr %i.l, align 8, !tbaa !30 ; 2 uses
  %i.m = and i16 %.val2, 32767                    ; 2 uses
  %i.n = icmp eq i16 %i.m, 32767
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %extF80MToFloatX.exit
  %i.o = and i64 %.val, 9223372036854775807
  %.not31.i18 = icmp eq i64 %i.o, 0               ; 2 uses
  %spec.select36 = zext i1 %.not31.i18 to i8
  %not..not31.i18 = xor i1 %.not31.i18, true
  br label %extF80MToFloatX.exit19

bb.f:                                             ; preds = %extF80MToFloatX.exit
  %narrow.i6 = tail call i16 @llvm.umax.i16(i16 %i.m, i16 1)
  %spec.select.i7 = zext nneg i16 %narrow.i6 to i64
  %i.p = add nsw i64 %spec.select.i7, -16383      ; 3 uses
  %.not29.i8 = icmp sgt i64 %.val, -1
  br i1 %.not29.i8, label %bb.g, label %extF80MToFloatX.exit19

bb.g:                                             ; preds = %bb.f
  %.not30.i14 = icmp eq i64 %.val, 0
  br i1 %.not30.i14, label %extF80MToFloatX.exit19, label %.preheader.i15

.preheader.i15:                                   ; preds = %bb.g, %.preheader.i15
  %.1.i16 = phi i64 [ %i.q, %.preheader.i15 ], [ %i.p, %bb.g ]
  %.sroa.01.0.i17 = phi i64 [ %i.r, %.preheader.i15 ], [ %.val, %bb.g ]
  %i.q = add nsw i64 %.1.i16, -1                  ; 2 uses
  %i.r = shl nuw i64 %.sroa.01.0.i17, 1           ; 3 uses
  %i.s = icmp sgt i64 %i.r, -1
  br i1 %i.s, label %.preheader.i15, label %extF80MToFloatX.exit19

extF80MToFloatX.exit19:                           ; preds = %.preheader.i15, %bb.e, %bb.f, %bb.g
  %.sroa.1725.0 = phi i64 [ %i.p, %bb.g ], [ undef, %bb.e ], [ %i.p, %bb.f ], [ %i.q, %.preheader.i15 ] ; 4 uses
  %.sroa.10.1 = phi i1 [ true, %bb.g ], [ false, %bb.e ], [ false, %bb.f ], [ false, %.preheader.i15 ] ; 3 uses
  %.sroa.5.0 = phi i8 [ 0, %bb.g ], [ %spec.select36, %bb.e ], [ 0, %bb.f ], [ 0, %.preheader.i15 ] ; 3 uses
  %.sroa.0.0 = phi i1 [ false, %bb.g ], [ %not..not31.i18, %bb.e ], [ false, %bb.f ], [ false, %.preheader.i15 ]
  %.sroa.01.2.i12 = phi i64 [ 0, %bb.g ], [ %.val, %bb.e ], [ %.val, %bb.f ], [ %i.r, %.preheader.i15 ]
  %i.t = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.01.2.i12, i64 0, i32 noundef 56) #10 ; 2 uses
  %i.u = extractvalue { i64, i64 } %i.t, 0        ; 2 uses
  %i.v = extractvalue { i64, i64 } %i.t, 1        ; 4 uses
  %or.cond = select i1 %.sroa.029.0, i1 true, i1 %.sroa.0.0
  %i.w = trunc nuw i8 %.sroa.8.1 to i1
  %or.cond38 = and i1 %.sroa.10.1, %i.w
  %or.cond40 = select i1 %or.cond, i1 true, i1 %or.cond38
  br i1 %or.cond40, label %floatXLt.exit, label %bb.h

bb.h:                                             ; preds = %extF80MToFloatX.exit19
  %.not.i.unshifted = xor i16 %.val2, %.val4
  %.not.i = icmp sgt i16 %.not.i.unshifted, -1
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = icmp slt i16 %.val4, 0
  br label %floatXLt.exit

bb.j:                                             ; preds = %bb.h
  br i1 %.sroa.530.0, label %bb.k, label %.thread.i

bb.k:                                             ; preds = %bb.j
  %i.y = trunc nuw i8 %.sroa.5.0 to i1
  br i1 %i.y, label %floatXLt.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = icmp slt i16 %.val4, 0
  %spec.select.i20 = or i1 %i.z, %brmerge3644.i
  br label %floatXLt.exit

.thread.i:                                        ; preds = %bb.j
  %i.aa = icmp slt i16 %.val4, 0
  br i1 %i.aa, label %bb.m, label %bb.r

bb.m:                                             ; preds = %.thread.i
  br i1 %.sroa.10.1, label %floatXLt.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ab = or i8 %.sroa.5.0, %.sroa.8.1
  %brmerge.not.i = icmp eq i8 %i.ab, 0
  br i1 %brmerge.not.i, label %bb.o, label %floatXLt.exit

bb.o:                                             ; preds = %bb.n
  %i.ac = icmp slt i64 %.sroa.1725.0, %.sroa.1331.0
  br i1 %i.ac, label %floatXLt.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ad = icmp slt i64 %.sroa.1331.0, %.sroa.1725.0
  br i1 %i.ad, label %floatXLt.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ae = icmp ult i64 %i.v, %i.k
  %i.af = icmp eq i64 %i.v, %i.k
  %i.ag = icmp ult i64 %i.u, %i.j
  %i.ah = select i1 %i.af, i1 %i.ag, i1 false
  %i.ai = select i1 %i.ae, i1 true, i1 %i.ah
  br label %floatXLt.exit

bb.r:                                             ; preds = %.thread.i
  %i.aj = or i8 %.sroa.5.0, %.sroa.8.1
  %brmerge36.not.i = icmp ne i8 %i.aj, 0          ; 2 uses
  %brmerge = or i1 %.sroa.10.1, %brmerge36.not.i
  br i1 %brmerge, label %floatXLt.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ak = icmp slt i64 %.sroa.1331.0, %.sroa.1725.0
  br i1 %i.ak, label %floatXLt.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.al = icmp slt i64 %.sroa.1725.0, %.sroa.1331.0
  br i1 %i.al, label %floatXLt.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.am = icmp ult i64 %i.k, %i.v
  %i.an = icmp eq i64 %i.k, %i.v
  %i.ao = icmp ult i64 %i.j, %i.u
  %i.ap = select i1 %i.an, i1 %i.ao, i1 false
  %i.aq = select i1 %i.am, i1 true, i1 %i.ap
  br label %floatXLt.exit

floatXLt.exit:                                    ; preds = %bb.r, %extF80MToFloatX.exit19, %bb.i, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.s, %bb.t, %bb.u
  %.0.i = phi i1 [ %i.aq, %bb.u ], [ false, %extF80MToFloatX.exit19 ], [ %i.x, %bb.i ], [ true, %bb.m ], [ false, %bb.k ], [ false, %bb.t ], [ false, %bb.n ], [ true, %bb.o ], [ %i.ai, %bb.q ], [ false, %bb.p ], [ %brmerge36.not.i, %bb.r ], [ %spec.select.i20, %bb.l ], [ true, %bb.s ]
  ret i1 %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 4294967296) i64 @slow_f128M_to_ui32(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.floatX, align 8             ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %.val = load i64, ptr %0, align 8, !tbaa !34    ; 5 uses
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val2 = load i64, ptr %i.a, align 8, !tbaa !33 ; 3 uses
  store i8 0, ptr %3, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  store i8 0, ptr %i.b, align 1, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  store i8 0, ptr %i.c, align 2, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 3
  %.lobit.i = lshr i64 %.val2, 63
  %i.e = trunc nuw nsw i64 %.lobit.i to i8
  store i8 %i.e, ptr %i.d, align 1, !tbaa !18
  %i.f = lshr i64 %.val2, 48
  %i.g = and i64 %i.f, 32767                      ; 2 uses
  %i.h = and i64 %.val2, 281474976710655          ; 5 uses
  switch i64 %i.g, label %bb.h [
    i64 32767, label %bb.b
    i64 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ne i64 %i.h, 0
  %i.j = icmp ne i64 %.val, 0
  %or.cond.i = select i1 %i.i, i1 true, i1 %i.j
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %3, align 8, !tbaa !16
  br label %f128MToFloatX.exit

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %i.b, align 1, !tbaa !17
  br label %f128MToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %i.k = icmp ne i64 %i.h, 0
  %i.l = icmp ne i64 %.val, 0
  %or.cond5.i = select i1 %i.k, i1 true, i1 %i.l
  br i1 %or.cond5.i, label %.preheader.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.c, align 2, !tbaa !19
  br label %f128MToFloatX.exit

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.sroa.08.0.i = phi i64 [ %i.o, %.preheader.i ], [ %.val, %bb.e ]
  %.sroa.8.0.i = phi i64 [ %i.p, %.preheader.i ], [ %i.h, %bb.e ]
  %.0.i = phi i64 [ %i.m, %.preheader.i ], [ -16382, %bb.e ]
  %i.m = add nsw i64 %.0.i, -1                    ; 2 uses
  %i.n = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.08.0.i, i64 %.sroa.8.0.i, i32 noundef 1) #10 ; 2 uses
  %i.o = extractvalue { i64, i64 } %i.n, 0        ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.n, 1        ; 3 uses
  %i.q = icmp ult i64 %i.p, 281474976710656
  br i1 %i.q, label %.preheader.i, label %bb.g

bb.g:                                             ; preds = %.preheader.i
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.m, ptr %i.r, align 8, !tbaa !20
  br label %f128MToFloatX.exit

bb.h:                                             ; preds = %bb.a
  %i.s = add nsw i64 %i.g, -16383
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !20
  %i.u = or disjoint i64 %i.h, 281474976710656
  br label %f128MToFloatX.exit

f128MToFloatX.exit:                               ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.h
  %.sroa.08.1.i = phi i64 [ %.val, %bb.c ], [ 0, %bb.d ], [ %.val, %bb.h ], [ %i.o, %bb.g ], [ 0, %bb.f ]
  %.sroa.8.1.i = phi i64 [ %i.h, %bb.c ], [ 0, %bb.d ], [ %i.u, %bb.h ], [ %i.p, %bb.g ], [ 0, %bb.f ]
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.w = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.08.1.i, i64 %.sroa.8.1.i, i32 noundef 7) #10 ; 2 uses
  %i.x = extractvalue { i64, i64 } %i.w, 0
  %i.y = extractvalue { i64, i64 } %i.w, 1
  store i64 %i.x, ptr %i.v, align 8, !tbaa !26
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.y, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !26
  %i.z = call fastcc i64 @floatXToUI32(ptr noundef %3, i8 noundef zeroext %1, i1 noundef zeroext %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i64 %i.z
}

; Function Attrs: nounwind uwtable
define dso_local i64 @slow_f128M_to_ui64(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.floatX, align 8             ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %.val = load i64, ptr %0, align 8, !tbaa !34    ; 5 uses
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val2 = load i64, ptr %i.a, align 8, !tbaa !33 ; 3 uses
  store i8 0, ptr %3, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  store i8 0, ptr %i.b, align 1, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  store i8 0, ptr %i.c, align 2, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 3
  %.lobit.i = lshr i64 %.val2, 63
  %i.e = trunc nuw nsw i64 %.lobit.i to i8
  store i8 %i.e, ptr %i.d, align 1, !tbaa !18
  %i.f = lshr i64 %.val2, 48
  %i.g = and i64 %i.f, 32767                      ; 2 uses
  %i.h = and i64 %.val2, 281474976710655          ; 5 uses
  switch i64 %i.g, label %bb.h [
    i64 32767, label %bb.b
    i64 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ne i64 %i.h, 0
  %i.j = icmp ne i64 %.val, 0
  %or.cond.i = select i1 %i.i, i1 true, i1 %i.j
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %3, align 8, !tbaa !16
  br label %f128MToFloatX.exit

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %i.b, align 1, !tbaa !17
  br label %f128MToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %i.k = icmp ne i64 %i.h, 0
  %i.l = icmp ne i64 %.val, 0
  %or.cond5.i = select i1 %i.k, i1 true, i1 %i.l
  br i1 %or.cond5.i, label %.preheader.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.c, align 2, !tbaa !19
  br label %f128MToFloatX.exit

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.sroa.08.0.i = phi i64 [ %i.o, %.preheader.i ], [ %.val, %bb.e ]
  %.sroa.8.0.i = phi i64 [ %i.p, %.preheader.i ], [ %i.h, %bb.e ]
  %.0.i = phi i64 [ %i.m, %.preheader.i ], [ -16382, %bb.e ]
  %i.m = add nsw i64 %.0.i, -1                    ; 2 uses
  %i.n = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.08.0.i, i64 %.sroa.8.0.i, i32 noundef 1) #10 ; 2 uses
  %i.o = extractvalue { i64, i64 } %i.n, 0        ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.n, 1        ; 3 uses
  %i.q = icmp ult i64 %i.p, 281474976710656
  br i1 %i.q, label %.preheader.i, label %bb.g

bb.g:                                             ; preds = %.preheader.i
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.m, ptr %i.r, align 8, !tbaa !20
  br label %f128MToFloatX.exit

bb.h:                                             ; preds = %bb.a
  %i.s = add nsw i64 %i.g, -16383
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !20
  %i.u = or disjoint i64 %i.h, 281474976710656
  br label %f128MToFloatX.exit

f128MToFloatX.exit:                               ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.h
  %.sroa.08.1.i = phi i64 [ %.val, %bb.c ], [ 0, %bb.d ], [ %.val, %bb.h ], [ %i.o, %bb.g ], [ 0, %bb.f ]
  %.sroa.8.1.i = phi i64 [ %i.h, %bb.c ], [ 0, %bb.d ], [ %i.u, %bb.h ], [ %i.p, %bb.g ], [ 0, %bb.f ]
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.w = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.08.1.i, i64 %.sroa.8.1.i, i32 noundef 7) #10 ; 2 uses
  %i.x = extractvalue { i64, i64 } %i.w, 0
  %i.y = extractvalue { i64, i64 } %i.w, 1
  store i64 %i.x, ptr %i.v, align 8, !tbaa !26
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.y, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !26
  %i.z = call fastcc i64 @floatXToUI64(ptr noundef %3, i8 noundef zeroext %1, i1 noundef zeroext %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i64 %i.z
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -2147483648, 2147483648) i64 @slow_f128M_to_i32(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.floatX, align 8             ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %.val = load i64, ptr %0, align 8, !tbaa !34    ; 5 uses
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val2 = load i64, ptr %i.a, align 8, !tbaa !33 ; 3 uses
  store i8 0, ptr %3, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  store i8 0, ptr %i.b, align 1, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  store i8 0, ptr %i.c, align 2, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 3
  %.lobit.i = lshr i64 %.val2, 63
  %i.e = trunc nuw nsw i64 %.lobit.i to i8
  store i8 %i.e, ptr %i.d, align 1, !tbaa !18
  %i.f = lshr i64 %.val2, 48
  %i.g = and i64 %i.f, 32767                      ; 2 uses
  %i.h = and i64 %.val2, 281474976710655          ; 5 uses
  switch i64 %i.g, label %bb.h [
    i64 32767, label %bb.b
    i64 0, label %bb.e
end_hunk_3
begin_hunk_4_@slow_f128M_le:bb.a

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %.sroa.08.0.i = phi i64 [ %i.k, %.preheader.i ], [ %.val5, %bb.d ]
  %.sroa.8.0.i = phi i64 [ %i.l, %.preheader.i ], [ %i.d, %bb.d ]
  %.0.i = phi i64 [ %i.i, %.preheader.i ], [ -16382, %bb.d ]
  %i.i = add nsw i64 %.0.i, -1                    ; 2 uses
  %i.j = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.08.0.i, i64 %.sroa.8.0.i, i32 noundef 1) #10 ; 2 uses
  %i.k = extractvalue { i64, i64 } %i.j, 0        ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.j, 1        ; 3 uses
  %i.m = icmp ult i64 %i.l, 281474976710656
  br i1 %i.m, label %.preheader.i, label %f128MToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %i.n = add nsw i64 %i.c, -16383
  %i.o = or disjoint i64 %i.d, 281474976710656
  br label %f128MToFloatX.exit

f128MToFloatX.exit:                               ; preds = %.preheader.i, %bb.d, %bb.b, %bb.c, %bb.e
  %.sroa.1545.0 = phi i64 [ %i.n, %bb.e ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.d ], [ %i.i, %.preheader.i ] ; 4 uses
  %.sroa.1043.0 = phi i8 [ 0, %bb.e ], [ 0, %bb.b ], [ 0, %bb.c ], [ 1, %bb.d ], [ 0, %.preheader.i ] ; 4 uses
  %.sroa.641.0 = phi i1 [ false, %bb.e ], [ false, %bb.b ], [ true, %bb.c ], [ false, %bb.d ], [ false, %.preheader.i ] ; 2 uses
  %.sroa.039.0 = phi i1 [ false, %bb.e ], [ true, %bb.b ], [ false, %bb.c ], [ false, %bb.d ], [ false, %.preheader.i ]
  %.sroa.08.1.i = phi i64 [ %.val5, %bb.e ], [ %.val5, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ %i.k, %.preheader.i ]
  %.sroa.8.1.i = phi i64 [ %i.o, %bb.e ], [ %i.d, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ %i.l, %.preheader.i ]
  %i.p = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.08.1.i, i64 %.sroa.8.1.i, i32 noundef 7) #10 ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.p, 0        ; 2 uses
  %i.r = extractvalue { i64, i64 } %i.p, 1        ; 3 uses
  %.val = load i64, ptr %1, align 8, !tbaa !34    ; 5 uses
  %i.s = getelementptr i8, ptr %1, i64 8
  %.val4 = load i64, ptr %i.s, align 8, !tbaa !33 ; 3 uses
  %i.t = lshr i64 %.val4, 48
  %i.u = and i64 %i.t, 32767                      ; 2 uses
  %i.v = and i64 %.val4, 281474976710655          ; 5 uses
  switch i64 %i.u, label %bb.h [
    i64 32767, label %bb.f
    i64 0, label %bb.g
  ]

bb.f:                                             ; preds = %f128MToFloatX.exit
  %i.w = icmp ne i64 %i.v, 0
  %i.x = icmp ne i64 %.val, 0
  %or.cond.i16 = select i1 %i.w, i1 true, i1 %i.x
  br i1 %or.cond.i16, label %f128MToFloatX.exit17.thread, label %f128MToFloatX.exit17

f128MToFloatX.exit17.thread:                      ; preds = %bb.f
  %i.y = tail call { i64, i64 } @shortShiftLeft128(i64 %.val, i64 %i.v, i32 noundef 7) #10 ; 0 uses
  %i.z = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.aa = or i8 %i.z, 16
  store i8 %i.aa, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  br label %floatXLe.exit

bb.g:                                             ; preds = %f128MToFloatX.exit
  %i.ab = icmp ne i64 %i.v, 0
  %i.ac = icmp ne i64 %.val, 0
  %or.cond5.i8 = select i1 %i.ab, i1 true, i1 %i.ac
  br i1 %or.cond5.i8, label %.preheader.i12, label %f128MToFloatX.exit17

.preheader.i12:                                   ; preds = %bb.g, %.preheader.i12
  %.sroa.08.0.i13 = phi i64 [ %i.af, %.preheader.i12 ], [ %.val, %bb.g ]
  %.sroa.8.0.i14 = phi i64 [ %i.ag, %.preheader.i12 ], [ %i.v, %bb.g ]
  %.0.i15 = phi i64 [ %i.ad, %.preheader.i12 ], [ -16382, %bb.g ]
  %i.ad = add nsw i64 %.0.i15, -1                 ; 2 uses
  %i.ae = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.08.0.i13, i64 %.sroa.8.0.i14, i32 noundef 1) #10 ; 2 uses
  %i.af = extractvalue { i64, i64 } %i.ae, 0      ; 2 uses
  %i.ag = extractvalue { i64, i64 } %i.ae, 1      ; 3 uses
  %i.ah = icmp ult i64 %i.ag, 281474976710656
  br i1 %i.ah, label %.preheader.i12, label %f128MToFloatX.exit17

bb.h:                                             ; preds = %f128MToFloatX.exit
  %i.ai = add nsw i64 %i.u, -16383
  %i.aj = or disjoint i64 %i.v, 281474976710656
  br label %f128MToFloatX.exit17

f128MToFloatX.exit17:                             ; preds = %.preheader.i12, %bb.f, %bb.g, %bb.h
  %.sroa.1731.0 = phi i64 [ %i.ai, %bb.h ], [ undef, %bb.f ], [ undef, %bb.g ], [ %i.ad, %.preheader.i12 ] ; 4 uses
  %.sroa.10.0 = phi i1 [ false, %bb.h ], [ false, %bb.f ], [ true, %bb.g ], [ false, %.preheader.i12 ] ; 3 uses
  %.sroa.6.0 = phi i8 [ %.sroa.1043.0, %bb.h ], [ 1, %bb.f ], [ %.sroa.1043.0, %bb.g ], [ %.sroa.1043.0, %.preheader.i12 ] ; 2 uses
  %.sroa.08.1.i9 = phi i64 [ %.val, %bb.h ], [ 0, %bb.f ], [ 0, %bb.g ], [ %i.af, %.preheader.i12 ]
  %.sroa.8.1.i10 = phi i64 [ %i.aj, %bb.h ], [ 0, %bb.f ], [ 0, %bb.g ], [ %i.ag, %.preheader.i12 ]
  %i.ak = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.08.1.i9, i64 %.sroa.8.1.i10, i32 noundef 7) #10 ; 2 uses
  %i.al = extractvalue { i64, i64 } %i.ak, 0      ; 2 uses
  %i.am = extractvalue { i64, i64 } %i.ak, 1      ; 3 uses
  br i1 %.sroa.039.0, label %bb.i, label %.thread

bb.i:                                             ; preds = %f128MToFloatX.exit17
  %i.an = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.ao = or i8 %i.an, 16
  store i8 %i.ao, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  br label %floatXLe.exit

.thread:                                          ; preds = %f128MToFloatX.exit17
  %i.ap = trunc nuw i8 %.sroa.1043.0 to i1
  %or.cond80 = and i1 %.sroa.10.0, %i.ap
  br i1 %or.cond80, label %floatXLe.exit, label %bb.j

bb.j:                                             ; preds = %.thread
  %i.aq = icmp slt i64 %.val6, 0                  ; 2 uses
  %.not.i.unshifted = xor i64 %.val4, %.val6
  %.not.i = icmp sgt i64 %.not.i.unshifted, -1
  br i1 %.not.i, label %bb.k, label %floatXLe.exit

bb.k:                                             ; preds = %bb.j
  br i1 %i.aq, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %or.cond81 = or i1 %.sroa.641.0, %.sroa.10.0
  br i1 %or.cond81, label %floatXLe.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %brmerge.not.i = icmp eq i8 %.sroa.6.0, 0
  br i1 %brmerge.not.i, label %bb.n, label %floatXLe.exit

bb.n:                                             ; preds = %bb.m
  %i.ar = icmp slt i64 %.sroa.1731.0, %.sroa.1545.0
  br i1 %i.ar, label %floatXLe.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = icmp slt i64 %.sroa.1545.0, %.sroa.1731.0
  br i1 %i.as, label %floatXLe.exit, label %.sink.split.i

bb.p:                                             ; preds = %bb.k
  %brmerge33.not.i = icmp eq i8 %.sroa.6.0, 0
  br i1 %brmerge33.not.i, label %bb.q, label %floatXLe.exit

bb.q:                                             ; preds = %bb.p
  %or.cond82 = or i1 %.sroa.641.0, %.sroa.10.0
  br i1 %or.cond82, label %floatXLe.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.at = icmp slt i64 %.sroa.1545.0, %.sroa.1731.0
  br i1 %i.at, label %floatXLe.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.au = icmp slt i64 %.sroa.1731.0, %.sroa.1545.0
  br i1 %i.au, label %floatXLe.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.s, %bb.o
  %.sink.i.sroa.phi.sroa.speculated = phi i64 [ %i.al, %bb.o ], [ %i.q, %bb.s ]
  %.sink.i.sroa.phi20.sroa.speculated = phi i64 [ %i.am, %bb.o ], [ %i.r, %bb.s ]
  %.sink51.i.sroa.phi.sroa.speculated = phi i64 [ %i.q, %bb.o ], [ %i.al, %bb.s ]
  %.sink51.i.sroa.phi24.sroa.speculated = phi i64 [ %i.r, %bb.o ], [ %i.am, %bb.s ]
  %i.av = icmp ult i64 %.sink.i.sroa.phi20.sroa.speculated, %.sink51.i.sroa.phi24.sroa.speculated
  %i.aw = icmp eq i64 %i.am, %i.r
  %i.ax = icmp ule i64 %.sink.i.sroa.phi.sroa.speculated, %.sink51.i.sroa.phi.sroa.speculated
  %i.ay = select i1 %i.aw, i1 %i.ax, i1 false
  %i.az = select i1 %i.av, i1 true, i1 %i.ay
  br label %floatXLe.exit

floatXLe.exit:                                    ; preds = %bb.i, %.thread, %f128MToFloatX.exit17.thread, %bb.j, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %.sink.split.i
  %.0.i18 = phi i1 [ false, %bb.s ], [ false, %bb.i ], [ true, %.thread ], [ %i.aq, %bb.j ], [ true, %bb.l ], [ false, %bb.m ], [ true, %bb.n ], [ %i.az, %.sink.split.i ], [ false, %bb.o ], [ true, %bb.p ], [ false, %bb.q ], [ true, %bb.r ], [ false, %f128MToFloatX.exit17.thread ]
  ret i1 %.0.i18
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @slow_f128M_lt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %.val5 = load i64, ptr %0, align 8, !tbaa !34   ; 5 uses
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val6 = load i64, ptr %i.a, align 8, !tbaa !33 ; 6 uses
  %i.b = lshr i64 %.val6, 48
  %i.c = and i64 %i.b, 32767                      ; 2 uses
  %i.d = and i64 %.val6, 281474976710655          ; 5 uses
  switch i64 %i.c, label %bb.e [
    i64 32767, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp ne i64 %.val5, 0
  %or.cond.i = select i1 %i.e, i1 true, i1 %i.f
  br i1 %or.cond.i, label %f128MToFloatX.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br label %f128MToFloatX.exit

bb.d:                                             ; preds = %bb.a
  %i.g = icmp ne i64 %i.d, 0
  %i.h = icmp ne i64 %.val5, 0
  %or.cond5.i = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond5.i, label %.preheader.i, label %f128MToFloatX.exit

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %.sroa.08.0.i = phi i64 [ %i.k, %.preheader.i ], [ %.val5, %bb.d ]
  %.sroa.8.0.i = phi i64 [ %i.l, %.preheader.i ], [ %i.d, %bb.d ]
  %.0.i = phi i64 [ %i.i, %.preheader.i ], [ -16382, %bb.d ]
  %i.i = add nsw i64 %.0.i, -1                    ; 2 uses
  %i.j = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.08.0.i, i64 %.sroa.8.0.i, i32 noundef 1) #10 ; 2 uses
  %i.k = extractvalue { i64, i64 } %i.j, 0        ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.j, 1        ; 3 uses
  %i.m = icmp ult i64 %i.l, 281474976710656
  br i1 %i.m, label %.preheader.i, label %f128MToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %i.n = add nsw i64 %i.c, -16383
  %i.o = or disjoint i64 %i.d, 281474976710656
  br label %f128MToFloatX.exit

f128MToFloatX.exit:                               ; preds = %.preheader.i, %bb.d, %bb.b, %bb.c, %bb.e
  %.sroa.1431.0 = phi i64 [ %i.n, %bb.e ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.d ], [ %i.i, %.preheader.i ] ; 4 uses
  %brmerge3644.i = phi i1 [ false, %bb.e ], [ false, %bb.b ], [ false, %bb.c ], [ true, %bb.d ], [ false, %.preheader.i ]
  %.sroa.9.0 = phi i8 [ 0, %bb.e ], [ 0, %bb.b ], [ 0, %bb.c ], [ 1, %bb.d ], [ 0, %.preheader.i ] ; 3 uses
  %.sroa.630.0 = phi i1 [ false, %bb.e ], [ false, %bb.b ], [ true, %bb.c ], [ false, %bb.d ], [ false, %.preheader.i ]
  %.sroa.028.0 = phi i1 [ false, %bb.e ], [ true, %bb.b ], [ false, %bb.c ], [ false, %bb.d ], [ false, %.preheader.i ]
  %.sroa.08.1.i = phi i64 [ %.val5, %bb.e ], [ %.val5, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ %i.k, %.preheader.i ]
  %.sroa.8.1.i = phi i64 [ %i.o, %bb.e ], [ %i.d, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ %i.l, %.preheader.i ]
  %i.p = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.08.1.i, i64 %.sroa.8.1.i, i32 noundef 7) #10 ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.p, 0        ; 2 uses
  %i.r = extractvalue { i64, i64 } %i.p, 1        ; 4 uses
  %.val = load i64, ptr %1, align 8, !tbaa !34    ; 5 uses
  %i.s = getelementptr i8, ptr %1, i64 8
  %.val4 = load i64, ptr %i.s, align 8, !tbaa !33 ; 3 uses
  %i.t = lshr i64 %.val4, 48
  %i.u = and i64 %i.t, 32767                      ; 2 uses
  %i.v = and i64 %.val4, 281474976710655          ; 5 uses
  switch i64 %i.u, label %bb.h [
    i64 32767, label %bb.f
    i64 0, label %bb.g
  ]

bb.f:                                             ; preds = %f128MToFloatX.exit
  %i.w = icmp ne i64 %i.v, 0
  %i.x = icmp ne i64 %.val, 0
  %or.cond.i16 = select i1 %i.w, i1 true, i1 %i.x
  br i1 %or.cond.i16, label %f128MToFloatX.exit17.thread, label %f128MToFloatX.exit17

f128MToFloatX.exit17.thread:                      ; preds = %bb.f
  %i.y = tail call { i64, i64 } @shortShiftLeft128(i64 %.val, i64 %i.v, i32 noundef 7) #10 ; 0 uses
  %i.z = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.aa = or i8 %i.z, 16
  store i8 %i.aa, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  br label %floatXLt.exit

bb.g:                                             ; preds = %f128MToFloatX.exit
  %i.ab = icmp ne i64 %i.v, 0
  %i.ac = icmp ne i64 %.val, 0
  %or.cond5.i8 = select i1 %i.ab, i1 true, i1 %i.ac
  br i1 %or.cond5.i8, label %.preheader.i12, label %f128MToFloatX.exit17

.preheader.i12:                                   ; preds = %bb.g, %.preheader.i12
  %.sroa.08.0.i13 = phi i64 [ %i.af, %.preheader.i12 ], [ %.val, %bb.g ]
  %.sroa.8.0.i14 = phi i64 [ %i.ag, %.preheader.i12 ], [ %i.v, %bb.g ]
  %.0.i15 = phi i64 [ %i.ad, %.preheader.i12 ], [ -16382, %bb.g ]
  %i.ad = add nsw i64 %.0.i15, -1                 ; 2 uses
  %i.ae = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.08.0.i13, i64 %.sroa.8.0.i14, i32 noundef 1) #10 ; 2 uses
  %i.af = extractvalue { i64, i64 } %i.ae, 0      ; 2 uses
  %i.ag = extractvalue { i64, i64 } %i.ae, 1      ; 3 uses
  %i.ah = icmp ult i64 %i.ag, 281474976710656
  br i1 %i.ah, label %.preheader.i12, label %f128MToFloatX.exit17

bb.h:                                             ; preds = %f128MToFloatX.exit
  %i.ai = add nsw i64 %i.u, -16383
  %i.aj = or disjoint i64 %i.v, 281474976710656
  br label %f128MToFloatX.exit17

f128MToFloatX.exit17:                             ; preds = %.preheader.i12, %bb.f, %bb.g, %bb.h
  %.sroa.1824.0 = phi i64 [ %i.ai, %bb.h ], [ undef, %bb.f ], [ undef, %bb.g ], [ %i.ad, %.preheader.i12 ] ; 4 uses
  %.sroa.11.0 = phi i1 [ false, %bb.h ], [ false, %bb.f ], [ true, %bb.g ], [ false, %.preheader.i12 ] ; 3 uses
  %.sroa.6.0 = phi i8 [ 0, %bb.h ], [ 1, %bb.f ], [ 0, %bb.g ], [ 0, %.preheader.i12 ] ; 3 uses
  %.sroa.08.1.i9 = phi i64 [ %.val, %bb.h ], [ 0, %bb.f ], [ 0, %bb.g ], [ %i.af, %.preheader.i12 ]
  %.sroa.8.1.i10 = phi i64 [ %i.aj, %bb.h ], [ 0, %bb.f ], [ 0, %bb.g ], [ %i.ag, %.preheader.i12 ]
  %i.ak = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.08.1.i9, i64 %.sroa.8.1.i10, i32 noundef 7) #10 ; 2 uses
  %i.al = extractvalue { i64, i64 } %i.ak, 0      ; 2 uses
  %i.am = extractvalue { i64, i64 } %i.ak, 1      ; 4 uses
  br i1 %.sroa.028.0, label %bb.i, label %.thread

bb.i:                                             ; preds = %f128MToFloatX.exit17
  %i.an = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.ao = or i8 %i.an, 16
  store i8 %i.ao, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  br label %floatXLt.exit

.thread:                                          ; preds = %f128MToFloatX.exit17
  %.old = trunc nuw i8 %.sroa.9.0 to i1
  %or.cond67.old = and i1 %.sroa.11.0, %.old
  br i1 %or.cond67.old, label %floatXLt.exit, label %bb.j

bb.j:                                             ; preds = %.thread
  %.not.i.unshifted = xor i64 %.val4, %.val6
  %.not.i = icmp sgt i64 %.not.i.unshifted, -1
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = icmp slt i64 %.val6, 0
  br label %floatXLt.exit

bb.l:                                             ; preds = %bb.j
  br i1 %.sroa.630.0, label %bb.m, label %.thread.i

bb.m:                                             ; preds = %bb.l
  %i.aq = trunc nuw i8 %.sroa.6.0 to i1
  br i1 %i.aq, label %floatXLt.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = icmp slt i64 %.val6, 0
  %spec.select.i = or i1 %i.ar, %brmerge3644.i
  br label %floatXLt.exit

.thread.i:                                        ; preds = %bb.l
  %i.as = icmp slt i64 %.val6, 0
  br i1 %i.as, label %bb.o, label %bb.t

bb.o:                                             ; preds = %.thread.i
  br i1 %.sroa.11.0, label %floatXLt.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.at = or i8 %.sroa.6.0, %.sroa.9.0
  %brmerge.not.i = icmp eq i8 %i.at, 0
  br i1 %brmerge.not.i, label %bb.q, label %floatXLt.exit

bb.q:                                             ; preds = %bb.p
  %i.au = icmp slt i64 %.sroa.1824.0, %.sroa.1431.0
  br i1 %i.au, label %floatXLt.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.av = icmp slt i64 %.sroa.1431.0, %.sroa.1824.0
  br i1 %i.av, label %floatXLt.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aw = icmp ult i64 %i.am, %i.r
  %i.ax = icmp eq i64 %i.am, %i.r
  %i.ay = icmp ult i64 %i.al, %i.q
  %i.az = select i1 %i.ax, i1 %i.ay, i1 false
  %i.ba = select i1 %i.aw, i1 true, i1 %i.az
  br label %floatXLt.exit

bb.t:                                             ; preds = %.thread.i
  %i.bb = or i8 %.sroa.6.0, %.sroa.9.0
  %brmerge36.not.i = icmp ne i8 %i.bb, 0          ; 2 uses
  %brmerge = or i1 %.sroa.11.0, %brmerge36.not.i
  br i1 %brmerge, label %floatXLt.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bc = icmp slt i64 %.sroa.1431.0, %.sroa.1824.0
  br i1 %i.bc, label %floatXLt.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bd = icmp slt i64 %.sroa.1824.0, %.sroa.1431.0
  br i1 %i.bd, label %floatXLt.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.be = icmp ult i64 %i.r, %i.am
  %i.bf = icmp eq i64 %i.r, %i.am
  %i.bg = icmp ult i64 %i.q, %i.al
  %i.bh = select i1 %i.bf, i1 %i.bg, i1 false
  %i.bi = select i1 %i.be, i1 true, i1 %i.bh
  br label %floatXLt.exit

floatXLt.exit:                                    ; preds = %bb.t, %bb.i, %.thread, %f128MToFloatX.exit17.thread, %bb.k, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.u, %bb.v, %bb.w
  %.0.i18 = phi i1 [ %i.bi, %bb.w ], [ false, %bb.i ], [ %i.ap, %bb.k ], [ false, %.thread ], [ false, %bb.m ], [ false, %bb.v ], [ false, %bb.p ], [ true, %bb.q ], [ %i.ba, %bb.s ], [ false, %bb.r ], [ %brmerge36.not.i, %bb.t ], [ %spec.select.i, %bb.n ], [ true, %bb.u ], [ false, %f128MToFloatX.exit17.thread ], [ true, %bb.o ]
  ret i1 %.0.i18
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @slow_f128M_eq_signaling(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %.val5 = load i64, ptr %0, align 8, !tbaa !34   ; 5 uses
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val6 = load i64, ptr %i.a, align 8, !tbaa !33 ; 3 uses
  %i.b = lshr i64 %.val6, 48
  %i.c = and i64 %i.b, 32767                      ; 2 uses
  %i.d = and i64 %.val6, 281474976710655          ; 5 uses
  switch i64 %i.c, label %bb.e [
    i64 32767, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp ne i64 %.val5, 0
  %or.cond.i = select i1 %i.e, i1 true, i1 %i.f
  br i1 %or.cond.i, label %f128MToFloatX.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br label %f128MToFloatX.exit

bb.d:                                             ; preds = %bb.a
  %i.g = icmp ne i64 %i.d, 0
  %i.h = icmp ne i64 %.val5, 0
  %or.cond5.i = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond5.i, label %.preheader.i, label %f128MToFloatX.exit

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %.sroa.08.0.i = phi i64 [ %i.k, %.preheader.i ], [ %.val5, %bb.d ]
  %.sroa.8.0.i = phi i64 [ %i.l, %.preheader.i ], [ %i.d, %bb.d ]
  %.0.i = phi i64 [ %i.i, %.preheader.i ], [ -16382, %bb.d ]
  %i.i = add nsw i64 %.0.i, -1                    ; 2 uses
  %i.j = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.08.0.i, i64 %.sroa.8.0.i, i32 noundef 1) #10 ; 2 uses
  %i.k = extractvalue { i64, i64 } %i.j, 0        ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.j, 1        ; 3 uses
  %i.m = icmp ult i64 %i.l, 281474976710656
  br i1 %i.m, label %.preheader.i, label %f128MToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %i.n = add nsw i64 %i.c, -16383
  %i.o = or disjoint i64 %i.d, 281474976710656
  br label %f128MToFloatX.exit

f128MToFloatX.exit:                               ; preds = %.preheader.i, %bb.d, %bb.b, %bb.c, %bb.e
  %.sroa.1427.0 = phi i64 [ %i.n, %bb.e ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.d ], [ %i.i, %.preheader.i ]
  %.sroa.924.0 = phi i1 [ false, %bb.e ], [ false, %bb.b ], [ false, %bb.c ], [ true, %bb.d ], [ false, %.preheader.i ]
  %.sroa.623.0 = phi i8 [ 0, %bb.e ], [ 0, %bb.b ], [ 1, %bb.c ], [ 0, %bb.d ], [ 0, %.preheader.i ] ; 2 uses
  %.sroa.021.0 = phi i1 [ false, %bb.e ], [ true, %bb.b ], [ false, %bb.c ], [ false, %bb.d ], [ false, %.preheader.i ]
  %.sroa.08.1.i = phi i64 [ %.val5, %bb.e ], [ %.val5, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ %i.k, %.preheader.i ]
  %.sroa.8.1.i = phi i64 [ %i.o, %bb.e ], [ %i.d, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ %i.l, %.preheader.i ]
  %i.p = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.08.1.i, i64 %.sroa.8.1.i, i32 noundef 7) #10 ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.p, 0
  %i.r = extractvalue { i64, i64 } %i.p, 1
  %.val = load i64, ptr %1, align 8, !tbaa !34    ; 5 uses
  %i.s = getelementptr i8, ptr %1, i64 8
  %.val4 = load i64, ptr %i.s, align 8, !tbaa !33 ; 3 uses
  %i.t = lshr i64 %.val4, 48
  %i.u = and i64 %i.t, 32767                      ; 2 uses
  %i.v = and i64 %.val4, 281474976710655          ; 5 uses
  switch i64 %i.u, label %bb.h [
    i64 32767, label %bb.f
    i64 0, label %bb.g
  ]

bb.f:                                             ; preds = %f128MToFloatX.exit
  %i.w = icmp ne i64 %i.v, 0
  %i.x = icmp ne i64 %.val, 0
  %or.cond.i16 = select i1 %i.w, i1 true, i1 %i.x
  br i1 %or.cond.i16, label %f128MToFloatX.exit17.thread, label %f128MToFloatX.exit17

f128MToFloatX.exit17.thread:                      ; preds = %bb.f
  %i.y = tail call { i64, i64 } @shortShiftLeft128(i64 %.val, i64 %i.v, i32 noundef 7) #10 ; 0 uses
  %i.z = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.aa = or i8 %i.z, 16
  store i8 %i.aa, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  br label %floatXEq.exit

bb.g:                                             ; preds = %f128MToFloatX.exit
  %i.ab = icmp ne i64 %i.v, 0
  %i.ac = icmp ne i64 %.val, 0
  %or.cond5.i8 = select i1 %i.ab, i1 true, i1 %i.ac
  br i1 %or.cond5.i8, label %.preheader.i12, label %f128MToFloatX.exit17

.preheader.i12:                                   ; preds = %bb.g, %.preheader.i12
  %.sroa.08.0.i13 = phi i64 [ %i.af, %.preheader.i12 ], [ %.val, %bb.g ]
  %.sroa.8.0.i14 = phi i64 [ %i.ag, %.preheader.i12 ], [ %i.v, %bb.g ]
  %.0.i15 = phi i64 [ %i.ad, %.preheader.i12 ], [ -16382, %bb.g ]
  %i.ad = add nsw i64 %.0.i15, -1                 ; 2 uses
  %i.ae = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.08.0.i13, i64 %.sroa.8.0.i14, i32 noundef 1) #10 ; 2 uses
  %i.af = extractvalue { i64, i64 } %i.ae, 0      ; 2 uses
  %i.ag = extractvalue { i64, i64 } %i.ae, 1      ; 3 uses
  %i.ah = icmp ult i64 %i.ag, 281474976710656
  br i1 %i.ah, label %.preheader.i12, label %f128MToFloatX.exit17

bb.h:                                             ; preds = %f128MToFloatX.exit
  %i.ai = add nsw i64 %i.u, -16383
  %i.aj = or disjoint i64 %i.v, 281474976710656
  br label %f128MToFloatX.exit17

f128MToFloatX.exit17:                             ; preds = %.preheader.i12, %bb.f, %bb.g, %bb.h
  %.sroa.1420.0 = phi i64 [ %i.ai, %bb.h ], [ undef, %bb.f ], [ undef, %bb.g ], [ %i.ad, %.preheader.i12 ]
  %.sroa.9.0 = phi i1 [ false, %bb.h ], [ false, %bb.f ], [ %.sroa.924.0, %bb.g ], [ false, %.preheader.i12 ]
  %.sroa.6.0 = phi i8 [ 0, %bb.h ], [ 1, %bb.f ], [ 0, %bb.g ], [ 0, %.preheader.i12 ] ; 2 uses
  %.sroa.08.1.i9 = phi i64 [ %.val, %bb.h ], [ 0, %bb.f ], [ 0, %bb.g ], [ %i.af, %.preheader.i12 ]
  %.sroa.8.1.i10 = phi i64 [ %i.aj, %bb.h ], [ 0, %bb.f ], [ 0, %bb.g ], [ %i.ag, %.preheader.i12 ]
  %i.ak = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.08.1.i9, i64 %.sroa.8.1.i10, i32 noundef 7) #10 ; 2 uses
  %i.al = extractvalue { i64, i64 } %i.ak, 0
  %i.am = extractvalue { i64, i64 } %i.ak, 1
  br i1 %.sroa.021.0, label %bb.i, label %.thread

bb.i:                                             ; preds = %f128MToFloatX.exit17
  %i.an = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.ao = or i8 %i.an, 16
  store i8 %i.ao, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  br label %floatXEq.exit

.thread:                                          ; preds = %f128MToFloatX.exit17
  br i1 %.sroa.9.0, label %floatXEq.exit, label %bb.j

bb.j:                                             ; preds = %.thread
  %.not.i.unshifted = xor i64 %.val4, %.val6
  %.not.i = icmp sgt i64 %.not.i.unshifted, -1
  br i1 %.not.i, label %bb.k, label %floatXEq.exit

bb.k:                                             ; preds = %bb.j
  %i.ap = or i8 %.sroa.6.0, %.sroa.623.0
  %brmerge.not.i = icmp eq i8 %i.ap, 0
  %i.aq = and i8 %.sroa.6.0, %.sroa.623.0
  %.mux.i = icmp ne i8 %i.aq, 0
  br i1 %brmerge.not.i, label %bb.l, label %floatXEq.exit

bb.l:                                             ; preds = %bb.k
  %i.ar = icmp eq i64 %.sroa.1427.0, %.sroa.1420.0
  br i1 %i.ar, label %bb.m, label %floatXEq.exit

bb.m:                                             ; preds = %bb.l
  %i.as = icmp eq i64 %i.r, %i.am
  %i.at = icmp eq i64 %i.q, %i.al
  %i.au = select i1 %i.as, i1 %i.at, i1 false
  br label %floatXEq.exit

floatXEq.exit:                                    ; preds = %bb.i, %.thread, %f128MToFloatX.exit17.thread, %bb.j, %bb.k, %bb.l, %bb.m
  %.0.i18 = phi i1 [ %.mux.i, %bb.k ], [ false, %bb.i ], [ true, %.thread ], [ false, %bb.j ], [ false, %f128MToFloatX.exit17.thread ], [ %i.au, %bb.m ], [ false, %bb.l ]
  ret i1 %.0.i18
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @slow_f128M_le_quiet(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %.val3 = load i64, ptr %0, align 8, !tbaa !34   ; 5 uses
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val4 = load i64, ptr %i.a, align 8, !tbaa !33 ; 4 uses
  %i.b = lshr i64 %.val4, 48
  %i.c = and i64 %i.b, 32767                      ; 2 uses
  %i.d = and i64 %.val4, 281474976710655          ; 5 uses
  switch i64 %i.c, label %bb.e [
    i64 32767, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp ne i64 %.val3, 0
  %or.cond.i = select i1 %i.e, i1 true, i1 %i.f
  br i1 %or.cond.i, label %f128MToFloatX.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br label %f128MToFloatX.exit

bb.d:                                             ; preds = %bb.a
  %i.g = icmp ne i64 %i.d, 0
  %i.h = icmp ne i64 %.val3, 0
  %or.cond5.i = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond5.i, label %.preheader.i, label %f128MToFloatX.exit

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %.sroa.08.0.i = phi i64 [ %i.k, %.preheader.i ], [ %.val3, %bb.d ]
  %.sroa.8.0.i = phi i64 [ %i.l, %.preheader.i ], [ %i.d, %bb.d ]
  %.0.i = phi i64 [ %i.i, %.preheader.i ], [ -16382, %bb.d ]
  %i.i = add nsw i64 %.0.i, -1                    ; 2 uses
  %i.j = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.08.0.i, i64 %.sroa.8.0.i, i32 noundef 1) #10 ; 2 uses
  %i.k = extractvalue { i64, i64 } %i.j, 0        ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.j, 1        ; 3 uses
  %i.m = icmp ult i64 %i.l, 281474976710656
  br i1 %i.m, label %.preheader.i, label %f128MToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %i.n = add nsw i64 %i.c, -16383
  %i.o = or disjoint i64 %i.d, 281474976710656
  br label %f128MToFloatX.exit

f128MToFloatX.exit:                               ; preds = %.preheader.i, %bb.d, %bb.b, %bb.c, %bb.e
  %.sroa.1441.0 = phi i64 [ %i.n, %bb.e ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.d ], [ %i.i, %.preheader.i ] ; 4 uses
  %.sroa.939.0 = phi i8 [ 0, %bb.e ], [ 0, %bb.b ], [ 0, %bb.c ], [ 1, %bb.d ], [ 0, %.preheader.i ] ; 4 uses
  %.sroa.537.0 = phi i1 [ false, %bb.e ], [ false, %bb.b ], [ true, %bb.c ], [ false, %bb.d ], [ false, %.preheader.i ] ; 2 uses
  %.sroa.036.0 = phi i1 [ false, %bb.e ], [ true, %bb.b ], [ false, %bb.c ], [ false, %bb.d ], [ false, %.preheader.i ]
  %.sroa.08.1.i = phi i64 [ %.val3, %bb.e ], [ %.val3, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ %i.k, %.preheader.i ]
  %.sroa.8.1.i = phi i64 [ %i.o, %bb.e ], [ %i.d, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ %i.l, %.preheader.i ]
  %i.p = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.08.1.i, i64 %.sroa.8.1.i, i32 noundef 7) #10 ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.p, 0        ; 2 uses
  %i.r = extractvalue { i64, i64 } %i.p, 1        ; 3 uses
  %.val = load i64, ptr %1, align 8, !tbaa !34    ; 5 uses
  %i.s = getelementptr i8, ptr %1, i64 8
  %.val2 = load i64, ptr %i.s, align 8, !tbaa !33 ; 3 uses
  %i.t = lshr i64 %.val2, 48
  %i.u = and i64 %i.t, 32767                      ; 2 uses
  %i.v = and i64 %.val2, 281474976710655          ; 5 uses
  switch i64 %i.u, label %bb.h [
    i64 32767, label %bb.f
    i64 0, label %bb.g
  ]

bb.f:                                             ; preds = %f128MToFloatX.exit
  %i.w = icmp ne i64 %i.v, 0
  %i.x = icmp ne i64 %.val, 0
  %or.cond.i14 = select i1 %i.w, i1 true, i1 %i.x
  br i1 %or.cond.i14, label %floatXLe.exit.critedge, label %f128MToFloatX.exit15

bb.g:                                             ; preds = %f128MToFloatX.exit
  %i.y = icmp ne i64 %i.v, 0
  %i.z = icmp ne i64 %.val, 0
  %or.cond5.i6 = select i1 %i.y, i1 true, i1 %i.z
  br i1 %or.cond5.i6, label %.preheader.i10, label %f128MToFloatX.exit15

.preheader.i10:                                   ; preds = %bb.g, %.preheader.i10
  %.sroa.08.0.i11 = phi i64 [ %i.ac, %.preheader.i10 ], [ %.val, %bb.g ]
  %.sroa.8.0.i12 = phi i64 [ %i.ad, %.preheader.i10 ], [ %i.v, %bb.g ]
  %.0.i13 = phi i64 [ %i.aa, %.preheader.i10 ], [ -16382, %bb.g ]
  %i.aa = add nsw i64 %.0.i13, -1                 ; 2 uses
  %i.ab = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.08.0.i11, i64 %.sroa.8.0.i12, i32 noundef 1) #10 ; 2 uses
  %i.ac = extractvalue { i64, i64 } %i.ab, 0      ; 2 uses
  %i.ad = extractvalue { i64, i64 } %i.ab, 1      ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 281474976710656
  br i1 %i.ae, label %.preheader.i10, label %f128MToFloatX.exit15

bb.h:                                             ; preds = %f128MToFloatX.exit
  %i.af = add nsw i64 %i.u, -16383
  %i.ag = or disjoint i64 %i.v, 281474976710656
  br label %f128MToFloatX.exit15

f128MToFloatX.exit15:                             ; preds = %.preheader.i10, %bb.f, %bb.g, %bb.h
  %.sroa.1628.0 = phi i64 [ %i.af, %bb.h ], [ undef, %bb.f ], [ undef, %bb.g ], [ %i.aa, %.preheader.i10 ] ; 4 uses
  %.sroa.9.0 = phi i1 [ false, %bb.h ], [ false, %bb.f ], [ true, %bb.g ], [ false, %.preheader.i10 ] ; 3 uses
  %.sroa.5.0 = phi i8 [ %.sroa.939.0, %bb.h ], [ 1, %bb.f ], [ %.sroa.939.0, %bb.g ], [ %.sroa.939.0, %.preheader.i10 ] ; 2 uses
  %.sroa.08.1.i7 = phi i64 [ %.val, %bb.h ], [ 0, %bb.f ], [ 0, %bb.g ], [ %i.ac, %.preheader.i10 ]
  %.sroa.8.1.i8 = phi i64 [ %i.ag, %bb.h ], [ 0, %bb.f ], [ 0, %bb.g ], [ %i.ad, %.preheader.i10 ]
  %i.ah = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.08.1.i7, i64 %.sroa.8.1.i8, i32 noundef 7) #10 ; 2 uses
  %i.ai = extractvalue { i64, i64 } %i.ah, 0      ; 2 uses
  %i.aj = extractvalue { i64, i64 } %i.ah, 1      ; 3 uses
  br i1 %.sroa.036.0, label %floatXLe.exit, label %bb.i

bb.i:                                             ; preds = %f128MToFloatX.exit15
  %i.ak = trunc nuw i8 %.sroa.939.0 to i1
  %or.cond45 = and i1 %.sroa.9.0, %i.ak
  br i1 %or.cond45, label %floatXLe.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = icmp slt i64 %.val4, 0                  ; 2 uses
  %.not.i.unshifted = xor i64 %.val2, %.val4
  %.not.i = icmp sgt i64 %.not.i.unshifted, -1
  br i1 %.not.i, label %bb.k, label %floatXLe.exit

bb.k:                                             ; preds = %bb.j
  br i1 %i.al, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %or.cond46 = or i1 %.sroa.537.0, %.sroa.9.0
  br i1 %or.cond46, label %floatXLe.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %brmerge.not.i = icmp eq i8 %.sroa.5.0, 0
  br i1 %brmerge.not.i, label %bb.n, label %floatXLe.exit

bb.n:                                             ; preds = %bb.m
  %i.am = icmp slt i64 %.sroa.1628.0, %.sroa.1441.0
  br i1 %i.am, label %floatXLe.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = icmp slt i64 %.sroa.1441.0, %.sroa.1628.0
  br i1 %i.an, label %floatXLe.exit, label %.sink.split.i

bb.p:                                             ; preds = %bb.k
  %brmerge33.not.i = icmp eq i8 %.sroa.5.0, 0
  br i1 %brmerge33.not.i, label %bb.q, label %floatXLe.exit

bb.q:                                             ; preds = %bb.p
  %or.cond47 = or i1 %.sroa.537.0, %.sroa.9.0
  br i1 %or.cond47, label %floatXLe.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ao = icmp slt i64 %.sroa.1441.0, %.sroa.1628.0
  br i1 %i.ao, label %floatXLe.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ap = icmp slt i64 %.sroa.1628.0, %.sroa.1441.0
  br i1 %i.ap, label %floatXLe.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.s, %bb.o
  %.sink.i.sroa.phi.sroa.speculated = phi i64 [ %i.ai, %bb.o ], [ %i.q, %bb.s ]
  %.sink.i.sroa.phi18.sroa.speculated = phi i64 [ %i.aj, %bb.o ], [ %i.r, %bb.s ]
  %.sink51.i.sroa.phi.sroa.speculated = phi i64 [ %i.q, %bb.o ], [ %i.ai, %bb.s ]
  %.sink51.i.sroa.phi22.sroa.speculated = phi i64 [ %i.r, %bb.o ], [ %i.aj, %bb.s ]
  %i.aq = icmp ult i64 %.sink.i.sroa.phi18.sroa.speculated, %.sink51.i.sroa.phi22.sroa.speculated
  %i.ar = icmp eq i64 %i.aj, %i.r
  %i.as = icmp ule i64 %.sink.i.sroa.phi.sroa.speculated, %.sink51.i.sroa.phi.sroa.speculated
  %i.at = select i1 %i.ar, i1 %i.as, i1 false
  %i.au = select i1 %i.aq, i1 true, i1 %i.at
  br label %floatXLe.exit

floatXLe.exit.critedge:                           ; preds = %bb.f
  %i.av = tail call { i64, i64 } @shortShiftLeft128(i64 %.val, i64 %i.v, i32 noundef 7) #10 ; 0 uses
  br label %floatXLe.exit

floatXLe.exit:                                    ; preds = %floatXLe.exit.critedge, %bb.i, %f128MToFloatX.exit15, %bb.j, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %.sink.split.i
  %.0.i16 = phi i1 [ false, %bb.s ], [ false, %f128MToFloatX.exit15 ], [ true, %bb.i ], [ %i.al, %bb.j ], [ true, %bb.l ], [ false, %bb.m ], [ true, %bb.n ], [ %i.au, %.sink.split.i ], [ false, %bb.o ], [ true, %bb.p ], [ false, %bb.q ], [ true, %bb.r ], [ false, %floatXLe.exit.critedge ]
  ret i1 %.0.i16
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @slow_f128M_lt_quiet(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %.val3 = load i64, ptr %0, align 8, !tbaa !34   ; 5 uses
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val4 = load i64, ptr %i.a, align 8, !tbaa !33 ; 6 uses
  %i.b = lshr i64 %.val4, 48
  %i.c = and i64 %i.b, 32767                      ; 2 uses
  %i.d = and i64 %.val4, 281474976710655          ; 5 uses
  switch i64 %i.c, label %bb.e [
    i64 32767, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp ne i64 %.val3, 0
  %or.cond.i = select i1 %i.e, i1 true, i1 %i.f
  br i1 %or.cond.i, label %f128MToFloatX.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br label %f128MToFloatX.exit

bb.d:                                             ; preds = %bb.a
  %i.g = icmp ne i64 %i.d, 0
  %i.h = icmp ne i64 %.val3, 0
  %or.cond5.i = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond5.i, label %.preheader.i, label %f128MToFloatX.exit

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %.sroa.08.0.i = phi i64 [ %i.k, %.preheader.i ], [ %.val3, %bb.d ]
  %.sroa.8.0.i = phi i64 [ %i.l, %.preheader.i ], [ %i.d, %bb.d ]
  %.0.i = phi i64 [ %i.i, %.preheader.i ], [ -16382, %bb.d ]
  %i.i = add nsw i64 %.0.i, -1                    ; 2 uses
  %i.j = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.08.0.i, i64 %.sroa.8.0.i, i32 noundef 1) #10 ; 2 uses
  %i.k = extractvalue { i64, i64 } %i.j, 0        ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.j, 1        ; 3 uses
  %i.m = icmp ult i64 %i.l, 281474976710656
  br i1 %i.m, label %.preheader.i, label %f128MToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %i.n = add nsw i64 %i.c, -16383
  %i.o = or disjoint i64 %i.d, 281474976710656
  br label %f128MToFloatX.exit

f128MToFloatX.exit:                               ; preds = %.preheader.i, %bb.d, %bb.b, %bb.c, %bb.e
  %.sroa.1327.0 = phi i64 [ %i.n, %bb.e ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.d ], [ %i.i, %.preheader.i ] ; 4 uses
  %brmerge3644.i = phi i1 [ false, %bb.e ], [ false, %bb.b ], [ false, %bb.c ], [ true, %bb.d ], [ false, %.preheader.i ]
  %.sroa.8.0 = phi i8 [ 0, %bb.e ], [ 0, %bb.b ], [ 0, %bb.c ], [ 1, %bb.d ], [ 0, %.preheader.i ] ; 3 uses
  %.sroa.526.0 = phi i1 [ false, %bb.e ], [ false, %bb.b ], [ true, %bb.c ], [ false, %bb.d ], [ false, %.preheader.i ]
  %.sroa.025.0 = phi i1 [ false, %bb.e ], [ true, %bb.b ], [ false, %bb.c ], [ false, %bb.d ], [ false, %.preheader.i ]
  %.sroa.08.1.i = phi i64 [ %.val3, %bb.e ], [ %.val3, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ %i.k, %.preheader.i ]
  %.sroa.8.1.i = phi i64 [ %i.o, %bb.e ], [ %i.d, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ %i.l, %.preheader.i ]
  %i.p = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.08.1.i, i64 %.sroa.8.1.i, i32 noundef 7) #10 ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.p, 0        ; 2 uses
  %i.r = extractvalue { i64, i64 } %i.p, 1        ; 4 uses
  %.val = load i64, ptr %1, align 8, !tbaa !34    ; 5 uses
  %i.s = getelementptr i8, ptr %1, i64 8
  %.val2 = load i64, ptr %i.s, align 8, !tbaa !33 ; 3 uses
  %i.t = lshr i64 %.val2, 48
  %i.u = and i64 %i.t, 32767                      ; 2 uses
  %i.v = and i64 %.val2, 281474976710655          ; 5 uses
  switch i64 %i.u, label %bb.h [
    i64 32767, label %bb.f
    i64 0, label %bb.g
  ]

bb.f:                                             ; preds = %f128MToFloatX.exit
  %i.w = icmp ne i64 %i.v, 0
  %i.x = icmp ne i64 %.val, 0
  %or.cond.i14 = select i1 %i.w, i1 true, i1 %i.x
  br i1 %or.cond.i14, label %f128MToFloatX.exit15.thread, label %f128MToFloatX.exit15

f128MToFloatX.exit15.thread:                      ; preds = %bb.f
  %i.y = tail call { i64, i64 } @shortShiftLeft128(i64 %.val, i64 %i.v, i32 noundef 7) #10 ; 0 uses
  br label %floatXLt.exit

bb.g:                                             ; preds = %f128MToFloatX.exit
  %i.z = icmp ne i64 %i.v, 0
  %i.aa = icmp ne i64 %.val, 0
  %or.cond5.i6 = select i1 %i.z, i1 true, i1 %i.aa
  br i1 %or.cond5.i6, label %.preheader.i10, label %f128MToFloatX.exit15

.preheader.i10:                                   ; preds = %bb.g, %.preheader.i10
  %.sroa.08.0.i11 = phi i64 [ %i.ad, %.preheader.i10 ], [ %.val, %bb.g ]
  %.sroa.8.0.i12 = phi i64 [ %i.ae, %.preheader.i10 ], [ %i.v, %bb.g ]
  %.0.i13 = phi i64 [ %i.ab, %.preheader.i10 ], [ -16382, %bb.g ]
  %i.ab = add nsw i64 %.0.i13, -1                 ; 2 uses
  %i.ac = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.08.0.i11, i64 %.sroa.8.0.i12, i32 noundef 1) #10 ; 2 uses
  %i.ad = extractvalue { i64, i64 } %i.ac, 0      ; 2 uses
  %i.ae = extractvalue { i64, i64 } %i.ac, 1      ; 3 uses
  %i.af = icmp ult i64 %i.ae, 281474976710656
  br i1 %i.af, label %.preheader.i10, label %f128MToFloatX.exit15

bb.h:                                             ; preds = %f128MToFloatX.exit
  %i.ag = add nsw i64 %i.u, -16383
  %i.ah = or disjoint i64 %i.v, 281474976710656
  br label %f128MToFloatX.exit15

f128MToFloatX.exit15:                             ; preds = %.preheader.i10, %bb.f, %bb.g, %bb.h
  %.sroa.1721.0 = phi i64 [ %i.ag, %bb.h ], [ undef, %bb.f ], [ undef, %bb.g ], [ %i.ab, %.preheader.i10 ] ; 4 uses
  %.sroa.10.0 = phi i1 [ false, %bb.h ], [ false, %bb.f ], [ true, %bb.g ], [ false, %.preheader.i10 ] ; 3 uses
  %.sroa.5.0 = phi i8 [ 0, %bb.h ], [ 1, %bb.f ], [ 0, %bb.g ], [ 0, %.preheader.i10 ] ; 3 uses
  %.sroa.08.1.i7 = phi i64 [ %.val, %bb.h ], [ 0, %bb.f ], [ 0, %bb.g ], [ %i.ad, %.preheader.i10 ]
  %.sroa.8.1.i8 = phi i64 [ %i.ah, %bb.h ], [ 0, %bb.f ], [ 0, %bb.g ], [ %i.ae, %.preheader.i10 ]
  %i.ai = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.08.1.i7, i64 %.sroa.8.1.i8, i32 noundef 7) #10 ; 2 uses
  %i.aj = extractvalue { i64, i64 } %i.ai, 0      ; 2 uses
  %i.ak = extractvalue { i64, i64 } %i.ai, 1      ; 4 uses
  %i.al = trunc nuw i8 %.sroa.8.0 to i1
  %or.cond32 = and i1 %.sroa.10.0, %i.al
  %or.cond34 = select i1 %.sroa.025.0, i1 true, i1 %or.cond32
  br i1 %or.cond34, label %floatXLt.exit, label %bb.i

bb.i:                                             ; preds = %f128MToFloatX.exit15
  %.not.i.unshifted = xor i64 %.val2, %.val4
  %.not.i = icmp sgt i64 %.not.i.unshifted, -1
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = icmp slt i64 %.val4, 0
  br label %floatXLt.exit

bb.k:                                             ; preds = %bb.i
  br i1 %.sroa.526.0, label %bb.l, label %.thread.i

bb.l:                                             ; preds = %bb.k
  %i.an = trunc nuw i8 %.sroa.5.0 to i1
  br i1 %i.an, label %floatXLt.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = icmp slt i64 %.val4, 0
  %spec.select.i = or i1 %i.ao, %brmerge3644.i
  br label %floatXLt.exit

.thread.i:                                        ; preds = %bb.k
  %i.ap = icmp slt i64 %.val4, 0
  br i1 %i.ap, label %bb.n, label %bb.s

bb.n:                                             ; preds = %.thread.i
  br i1 %.sroa.10.0, label %floatXLt.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aq = or i8 %.sroa.5.0, %.sroa.8.0
  %brmerge.not.i = icmp eq i8 %i.aq, 0
  br i1 %brmerge.not.i, label %bb.p, label %floatXLt.exit

bb.p:                                             ; preds = %bb.o
  %i.ar = icmp slt i64 %.sroa.1721.0, %.sroa.1327.0
  br i1 %i.ar, label %floatXLt.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.as = icmp slt i64 %.sroa.1327.0, %.sroa.1721.0
  br i1 %i.as, label %floatXLt.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.at = icmp ult i64 %i.ak, %i.r
  %i.au = icmp eq i64 %i.ak, %i.r
  %i.av = icmp ult i64 %i.aj, %i.q
  %i.aw = select i1 %i.au, i1 %i.av, i1 false
  %i.ax = select i1 %i.at, i1 true, i1 %i.aw
  br label %floatXLt.exit

bb.s:                                             ; preds = %.thread.i
  %i.ay = or i8 %.sroa.5.0, %.sroa.8.0
  %brmerge36.not.i = icmp ne i8 %i.ay, 0          ; 2 uses
  %brmerge = or i1 %.sroa.10.0, %brmerge36.not.i
  br i1 %brmerge, label %floatXLt.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.az = icmp slt i64 %.sroa.1327.0, %.sroa.1721.0
  br i1 %i.az, label %floatXLt.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ba = icmp slt i64 %.sroa.1721.0, %.sroa.1327.0
  br i1 %i.ba, label %floatXLt.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bb = icmp ult i64 %i.r, %i.ak
  %i.bc = icmp eq i64 %i.r, %i.ak
  %i.bd = icmp ult i64 %i.q, %i.aj
  %i.be = select i1 %i.bc, i1 %i.bd, i1 false
  %i.bf = select i1 %i.bb, i1 true, i1 %i.be
  br label %floatXLt.exit

floatXLt.exit:                                    ; preds = %f128MToFloatX.exit15.thread, %bb.s, %f128MToFloatX.exit15, %bb.j, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.t, %bb.u, %bb.v
  %.0.i16 = phi i1 [ %i.bf, %bb.v ], [ false, %f128MToFloatX.exit15 ], [ %i.am, %bb.j ], [ true, %bb.n ], [ false, %bb.l ], [ false, %bb.u ], [ false, %bb.o ], [ true, %bb.p ], [ %i.ax, %bb.r ], [ false, %bb.q ], [ %brmerge36.not.i, %bb.s ], [ %spec.select.i, %bb.m ], [ true, %bb.t ], [ false, %f128MToFloatX.exit15.thread ]
  ret i1 %.0.i16
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare { i64, i64 } @shortShiftRightJam128(i64, i64, i32 noundef) local_unnamed_addr #4

declare { i64, i64 } @shortShiftLeft128(i64, i64, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @roundFloatXTo24(i1 noundef zeroext %0, ptr nofree noundef nonnull captures(none) %1, i8 noundef zeroext %2) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !21   ; 3 uses
  %i.d = load i64, ptr %i.a, align 8, !tbaa !22
  %i.e = icmp ne i64 %i.d, 0
  %i.f = zext i1 %i.e to i64
  %.masked = and i64 %i.c, 4294967295             ; 3 uses
  %i.g = or i64 %.masked, %i.f                    ; 2 uses
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = and i64 %i.c, -4294967296                ; 8 uses
  %i.i = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %spec.select.v = select i1 %0, i8 3, i8 1
  %spec.select = or i8 %i.i, %spec.select.v
  store i8 %spec.select, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  switch i8 %2, label %bb.i [
    i8 0, label %bb.c
    i8 1, label %bb.k
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
    i8 6, label %bb.h
  ]

bb.c:                                             ; preds = %bb.b
  %i.j = icmp samesign ult i64 %.masked, 2147483648
  br i1 %i.j, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp eq i64 %i.g, 2147483648
  %i.l = and i64 %i.c, 4294967296
  %.not22 = icmp eq i64 %i.l, 0
  %or.cond = and i1 %.not22, %i.k
  br i1 %or.cond, label %bb.k, label %bb.i

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.n = load i8, ptr %i.m, align 1, !tbaa !18, !range !23, !noundef !24
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.i, label %bb.k

bb.f:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.q = load i8, ptr %i.p, align 1, !tbaa !18, !range !23, !noundef !24
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.k, label %bb.i

bb.g:                                             ; preds = %bb.b
  %i.s = icmp samesign ult i64 %.masked, 2147483648
  br i1 %i.s, label %bb.k, label %bb.i

bb.h:                                             ; preds = %bb.b
  %i.t = or i64 %i.h, 4294967296
  br label %bb.k

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.b
  %i.u = add i64 %i.h, 4294967296                 ; 2 uses
  %i.v = icmp eq i64 %i.u, 72057594037927936
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !20
  %i.y = add nsw i64 %i.x, 1
  store i64 %i.y, ptr %i.w, align 8, !tbaa !20
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %bb.i, %bb.j, %bb.g, %bb.f, %bb.e, %bb.b, %bb.c, %bb.h
  %.0 = phi i64 [ 36028797018963968, %bb.j ], [ %i.u, %bb.i ], [ %i.h, %bb.c ], [ %i.h, %bb.d ], [ %i.h, %bb.b ], [ %i.h, %bb.e ], [ %i.h, %bb.f ], [ %i.h, %bb.g ], [ %i.t, %bb.h ]
  store i64 %.0, ptr %i.b, align 8, !tbaa !21
  store i64 0, ptr %i.a, align 8, !tbaa !22
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @roundFloatXTo53(i1 noundef zeroext %0, ptr nofree noundef nonnull captures(none) %1, i8 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !21   ; 3 uses
  %i.d = and i64 %i.c, 7                          ; 3 uses
  %i.e = load i64, ptr %i.a, align 8, !tbaa !22
  %i.f = icmp ne i64 %i.e, 0
  %i.g = zext i1 %i.f to i64
  %i.h = or i64 %i.d, %i.g                        ; 2 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = and i64 %i.c, -8                         ; 8 uses
  br i1 %3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.k = or i8 %i.j, 1
  store i8 %i.k, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  br i1 %0, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.m = or i8 %i.l, 2
  store i8 %i.m, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  switch i8 %2, label %bb.m [
    i8 0, label %bb.g
    i8 1, label %bb.o
    i8 2, label %bb.i
    i8 3, label %bb.j
    i8 4, label %bb.k
    i8 6, label %bb.l
  ]

bb.g:                                             ; preds = %bb.f
  %i.n = icmp samesign ult i64 %i.d, 4
  br i1 %i.n, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = icmp eq i64 %i.h, 4
  %i.p = and i64 %i.c, 8
  %.not23 = icmp eq i64 %i.p, 0
  %or.cond = and i1 %.not23, %i.o
  br i1 %or.cond, label %bb.o, label %bb.m

bb.i:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.r = load i8, ptr %i.q, align 1, !tbaa !18, !range !23, !noundef !24
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.m, label %bb.o

bb.j:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.u = load i8, ptr %i.t, align 1, !tbaa !18, !range !23, !noundef !24
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.o, label %bb.m

bb.k:                                             ; preds = %bb.f
  %i.w = icmp samesign ult i64 %i.d, 4
  br i1 %i.w, label %bb.o, label %bb.m

bb.l:                                             ; preds = %bb.f
  %i.x = or i64 %i.i, 8
  br label %bb.o

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.f
  %i.y = add i64 %i.i, 8                          ; 2 uses
  %i.z = icmp eq i64 %i.y, 72057594037927936
  br i1 %i.z, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !20
  %i.ac = add nsw i64 %i.ab, 1
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !20
  br label %bb.o

bb.o:                                             ; preds = %bb.h, %bb.m, %bb.n, %bb.k, %bb.j, %bb.i, %bb.f, %bb.g, %bb.l
  %.0 = phi i64 [ 36028797018963968, %bb.n ], [ %i.y, %bb.m ], [ %i.i, %bb.g ], [ %i.i, %bb.h ], [ %i.i, %bb.f ], [ %i.i, %bb.i ], [ %i.i, %bb.j ], [ %i.i, %bb.k ], [ %i.x, %bb.l ]
  store i64 %.0, ptr %i.b, align 8, !tbaa !21
  store i64 0, ptr %i.a, align 8, !tbaa !22
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @roundFloatXTo64(i1 noundef zeroext %0, ptr nofree noundef nonnull captures(none) %1, i8 noundef zeroext %2) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !22   ; 3 uses
  %i.c = and i64 %i.b, 72057594037927935          ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.b, -72057594037927936         ; 7 uses
  %i.e = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
end_hunk_4
