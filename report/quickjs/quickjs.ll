Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/quickjs?download=true
inline.NumInlined: 10959
inline.NumDeleted: 614
loop-unroll.NumCompletelyUnrolled: 89
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 180
begin_hunk_0_@js_math_imul:bb.a
  %i.w = trunc nuw i64 %i.v to i32                ; 2 uses
  %i.x = icmp slt i64 %.sroa.017.0.in.i.i.i, 0
  %i.y = icmp ne i64 %i.v, 2147483648
  %or.cond.i.i.i = select i1 %i.x, i1 %i.y, i1 false
  %i.z = sub nsw i32 0, %i.w
  %spec.select.i.i.i = select i1 %or.cond.i.i.i, i32 %i.z, i32 %i.w
  br label %bb.i

bb.h:                                             ; preds = %js_dup.exit.i.i
  %i.aa = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %.sroa.017.0.in.i.i.i, i64 %.sroa.6.0.i.i.i, i32 noundef 0) #51, !inline_history !101 ; 2 uses
  %i.ab = extractvalue { i64, i64 } %i.aa, 0
  %i.ac = extractvalue { i64, i64 } %i.aa, 1      ; 2 uses
  %i.ad = and i64 %i.ac, 4294967295
  %i.ae = icmp eq i64 %i.ad, 6
  br i1 %i.ae, label %JS_ToUint32.exit, label %js_dup.exit.i.i

bb.i:                                             ; preds = %bb.f, %bb.c, %bb.e, %bb.g
  %storemerge.i.i.i.ph = phi i32 [ %spec.select.i.i.i, %bb.g ], [ %i.o, %bb.e ], [ %.sroa.017.0.extract.trunc.i.i.i, %bb.c ], [ 0, %bb.f ]
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ag = load i64, ptr %i.af, align 8            ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ai = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = icmp ugt i32 %i.aj, -10
  br i1 %i.ak, label %bb.j, label %js_dup.exit.i.i7.preheader

bb.j:                                             ; preds = %bb.i
  %i.al = inttoptr i64 %i.ag to ptr
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -4 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !191
  %i.ao = add nsw i32 %i.an, 1
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !191
  br label %js_dup.exit.i.i7.preheader

js_dup.exit.i.i7.preheader:                       ; preds = %bb.j, %bb.i
  br label %js_dup.exit.i.i7

js_dup.exit.i.i7:                                 ; preds = %js_dup.exit.i.i7.preheader, %bb.p
  %.sroa.017.0.in.i.i.i8 = phi i64 [ %i.bh, %bb.p ], [ %i.ag, %js_dup.exit.i.i7.preheader ] ; 6 uses
  %.sroa.6.0.i.i.i9 = phi i64 [ %i.bi, %bb.p ], [ %i.ai, %js_dup.exit.i.i7.preheader ] ; 2 uses
  %i.ap = trunc i64 %.sroa.6.0.i.i.i9 to i32
  switch i32 %i.ap, label %bb.p [
    i32 0, label %bb.k
    i32 1, label %bb.k
    i32 2, label %bb.k
    i32 3, label %bb.k
    i32 8, label %bb.l
  ]

bb.k:                                             ; preds = %js_dup.exit.i.i7, %js_dup.exit.i.i7, %js_dup.exit.i.i7, %js_dup.exit.i.i7
  %.sroa.017.0.extract.trunc.i.i.i15 = trunc i64 %.sroa.017.0.in.i.i.i8 to i32
  br label %bb.q

bb.l:                                             ; preds = %js_dup.exit.i.i7
  %i.aq = lshr i64 %.sroa.017.0.in.i.i.i8, 52
  %i.ar = trunc nuw nsw i64 %i.aq to i32
  %i.as = and i32 %i.ar, 2047                     ; 3 uses
  %i.at = icmp samesign ult i32 %i.as, 1054
  br i1 %i.at, label %bb.m, label %bb.n, !prof !325

bb.m:                                             ; preds = %bb.l
  %.sroa.017.0.i.le.i.i14 = bitcast i64 %.sroa.017.0.in.i.i.i8 to double
  %i.au = fptosi double %.sroa.017.0.i.le.i.i14 to i32
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.av = icmp samesign ult i32 %i.as, 1107
  br i1 %i.av, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.aw = and i64 %.sroa.017.0.in.i.i.i8, 4503599627370495
  %i.ax = or disjoint i64 %i.aw, 4503599627370496
  %i.ay = add nsw i32 %i.as, -1043
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = shl i64 %i.ax, %i.az
  %i.bb = lshr i64 %i.ba, 32                      ; 2 uses
  %i.bc = trunc nuw i64 %i.bb to i32              ; 2 uses
  %i.bd = icmp slt i64 %.sroa.017.0.in.i.i.i8, 0
  %i.be = icmp ne i64 %i.bb, 2147483648
  %or.cond.i.i.i12 = select i1 %i.bd, i1 %i.be, i1 false
  %i.bf = sub nsw i32 0, %i.bc
  %spec.select.i.i.i13 = select i1 %or.cond.i.i.i12, i32 %i.bf, i32 %i.bc
  br label %bb.q

bb.p:                                             ; preds = %js_dup.exit.i.i7
  %i.bg = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %.sroa.017.0.in.i.i.i8, i64 %.sroa.6.0.i.i.i9, i32 noundef 0) #51, !inline_history !101 ; 2 uses
  %i.bh = extractvalue { i64, i64 } %i.bg, 0
  %i.bi = extractvalue { i64, i64 } %i.bg, 1      ; 2 uses
  %i.bj = and i64 %i.bi, 4294967295
  %i.bk = icmp eq i64 %i.bj, 6
  br i1 %i.bk, label %JS_ToUint32.exit, label %js_dup.exit.i.i7

bb.q:                                             ; preds = %bb.n, %bb.k, %bb.m, %bb.o
  %storemerge.i.i.i10.ph = phi i32 [ %spec.select.i.i.i13, %bb.o ], [ %i.au, %bb.m ], [ %.sroa.017.0.extract.trunc.i.i.i15, %bb.k ], [ 0, %bb.n ]
  %i.bl = mul i32 %storemerge.i.i.i10.ph, %storemerge.i.i.i.ph
  %.sroa.0.0.insert.ext.i = zext i32 %i.bl to i64
  br label %JS_ToUint32.exit

JS_ToUint32.exit:                                 ; preds = %bb.h, %bb.p, %bb.q
  %.sroa.05.0 = phi i64 [ %.sroa.0.0.insert.ext.i, %bb.q ], [ 0, %bb.p ], [ 0, %bb.h ]
  %.sroa.6.0 = phi i64 [ 0, %bb.q ], [ 6, %bb.p ], [ 6, %bb.h ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.05.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.6.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_math_clz32(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree noundef readonly captures(none) %4) #2 {
bb.a:
  %i.a = load i64, ptr %4, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = trunc i64 %i.c to i32
  %i.e = icmp ugt i32 %i.d, -10
  br i1 %i.e, label %bb.b, label %js_dup.exit.i.i.preheader

bb.b:                                             ; preds = %bb.a
  %i.f = inttoptr i64 %i.a to ptr
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !191
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 4, !tbaa !191
  br label %js_dup.exit.i.i.preheader

js_dup.exit.i.i.preheader:                        ; preds = %bb.b, %bb.a
  br label %js_dup.exit.i.i

js_dup.exit.i.i:                                  ; preds = %js_dup.exit.i.i.preheader, %bb.h
  %.sroa.017.0.in.i.i.i = phi i64 [ %i.ab, %bb.h ], [ %i.a, %js_dup.exit.i.i.preheader ] ; 6 uses
  %.sroa.6.0.i.i.i = phi i64 [ %i.ac, %bb.h ], [ %i.c, %js_dup.exit.i.i.preheader ] ; 2 uses
  %i.j = trunc i64 %.sroa.6.0.i.i.i to i32
  switch i32 %i.j, label %bb.h [
    i32 0, label %bb.c
    i32 1, label %bb.c
    i32 2, label %bb.c
    i32 3, label %bb.c
    i32 8, label %bb.d
  ]

bb.c:                                             ; preds = %js_dup.exit.i.i, %js_dup.exit.i.i, %js_dup.exit.i.i, %js_dup.exit.i.i
  %.sroa.017.0.extract.trunc.i.i.i = trunc i64 %.sroa.017.0.in.i.i.i to i32
  br label %bb.i

bb.d:                                             ; preds = %js_dup.exit.i.i
  %i.k = lshr i64 %.sroa.017.0.in.i.i.i, 52
  %i.l = trunc nuw nsw i64 %i.k to i32
  %i.m = and i32 %i.l, 2047                       ; 3 uses
  %i.n = icmp samesign ult i32 %i.m, 1054
  br i1 %i.n, label %bb.e, label %bb.f, !prof !325

bb.e:                                             ; preds = %bb.d
  %.sroa.017.0.i.le.i.i = bitcast i64 %.sroa.017.0.in.i.i.i to double
  %i.o = fptosi double %.sroa.017.0.i.le.i.i to i32
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.p = icmp samesign ult i32 %i.m, 1107
  br i1 %i.p, label %bb.g, label %JS_ToUint32.exit

bb.g:                                             ; preds = %bb.f
  %i.q = and i64 %.sroa.017.0.in.i.i.i, 4503599627370495
  %i.r = or disjoint i64 %i.q, 4503599627370496
  %i.s = add nsw i32 %i.m, -1043
  %i.t = zext nneg i32 %i.s to i64
  %i.u = shl i64 %i.r, %i.t
  %i.v = lshr i64 %i.u, 32                        ; 2 uses
  %i.w = trunc nuw i64 %i.v to i32                ; 2 uses
  %i.x = icmp slt i64 %.sroa.017.0.in.i.i.i, 0
  %i.y = icmp ne i64 %i.v, 2147483648
  %or.cond.i.i.i = select i1 %i.x, i1 %i.y, i1 false
  %i.z = sub nsw i32 0, %i.w
  %spec.select.i.i.i = select i1 %or.cond.i.i.i, i32 %i.z, i32 %i.w
  br label %bb.i

bb.h:                                             ; preds = %js_dup.exit.i.i
  %i.aa = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %.sroa.017.0.in.i.i.i, i64 %.sroa.6.0.i.i.i, i32 noundef 0) #51, !inline_history !101 ; 2 uses
  %i.ab = extractvalue { i64, i64 } %i.aa, 0
  %i.ac = extractvalue { i64, i64 } %i.aa, 1      ; 2 uses
  %i.ad = and i64 %i.ac, 4294967295
  %i.ae = icmp eq i64 %i.ad, 6
  br i1 %i.ae, label %JS_ToUint32.exit, label %js_dup.exit.i.i

bb.i:                                             ; preds = %bb.c, %bb.e, %bb.g
  %storemerge.i.i.i.ph = phi i32 [ %spec.select.i.i.i, %bb.g ], [ %i.o, %bb.e ], [ %.sroa.017.0.extract.trunc.i.i.i, %bb.c ]
  %i.af = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %storemerge.i.i.i.ph, i1 false)
  %i.ag = zext nneg i32 %i.af to i64
  br label %JS_ToUint32.exit

JS_ToUint32.exit:                                 ; preds = %bb.h, %bb.f, %bb.i
  %.sroa.02.0 = phi i64 [ %i.ag, %bb.i ], [ 32, %bb.f ], [ 0, %bb.h ]
  %.sroa.4.0 = phi i64 [ 0, %bb.i ], [ 0, %bb.f ], [ 6, %bb.h ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.02.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.4.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_math_sumPrecise(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree noundef readonly captures(none) %4) #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %5 = alloca %struct.SumPreciseState, align 8    ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  %i.b = load i64, ptr %4, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = tail call fastcc { i64, i64 } @JS_GetIterator(ptr noundef %0, i64 %i.b, i64 %i.d, i1 noundef zeroext false) ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0        ; 7 uses
  %i.g = extractvalue { i64, i64 } %i.e, 1        ; 8 uses
  %i.h = and i64 %i.g, 4294967295
  %i.i = icmp eq i64 %i.h, 6
  br i1 %i.i, label %JS_FreeValue.exit60, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef %0, i64 %i.f, i64 %i.g, i32 noundef 114, i64 %i.f, i64 %i.g, i1 noundef zeroext false), !inline_history !373 ; 2 uses
  %i.k = extractvalue { i64, i64 } %i.j, 0        ; 4 uses
  %i.l = extractvalue { i64, i64 } %i.j, 1        ; 5 uses
  %i.m = and i64 %i.l, 4294967295
  %i.n = icmp eq i64 %i.m, 6
  br i1 %i.n, label %sum_precise_get_result.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %5, align 8, !tbaa !240
  %i.o = call fastcc { i64, i64 } @JS_IteratorNext(ptr noundef %0, i64 %i.f, i64 %i.g, i64 %i.k, i64 %i.l, i32 noundef 0, ptr noundef null, ptr noundef nonnull %i.a) ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.o, 1        ; 2 uses
  %i.q = and i64 %i.p, 4294967295
  %i.r = icmp eq i64 %i.q, 6
  br i1 %i.r, label %sum_precise_get_result.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %sum_precise_add.exit
  %i.s = phi i32 [ %i.dh, %sum_precise_add.exit ], [ 0, %bb.c ] ; 7 uses
  %i.t = phi i32 [ %i.di, %sum_precise_add.exit ], [ 1, %bb.c ] ; 19 uses
  %i.u = phi i64 [ %i.dk, %sum_precise_add.exit ], [ %i.p, %bb.c ] ; 2 uses
  %.pn = phi { i64, i64 } [ %i.dj, %sum_precise_add.exit ], [ %i.o, %bb.c ]
  %i.v = extractvalue { i64, i64 } %.pn, 0        ; 4 uses
  %i.w = load i32, ptr %i.a, align 4, !tbaa !191
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.d, label %bb.v

bb.d:                                             ; preds = %.lr.ph
  %i.x = trunc i64 %i.u to i32                    ; 2 uses
  switch i32 %i.x, label %bb.f [
    i32 8, label %bb.i
    i32 0, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %.sroa.014.0.extract.trunc = trunc i64 %i.v to i32
  %i.y = sitofp i32 %.sroa.014.0.extract.trunc to double
  %i.z = bitcast double %i.y to i64
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !232
  %i.ac = icmp ugt i32 %i.x, -10
  br i1 %i.ac, label %bb.g, label %JS_FreeValue.exit

bb.g:                                             ; preds = %bb.f
  %i.ad = inttoptr i64 %i.v to ptr
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -4 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !191 ; 2 uses
  %i.ag = add nsw i32 %i.af, -1
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !191
  %i.ah = icmp slt i32 %i.af, 2
  br i1 %i.ah, label %bb.h, label %JS_FreeValue.exit

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @js_free_value_rt(ptr noundef %i.ab, i64 %i.v, i64 %i.u), !inline_history !291
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %bb.f, %bb.g, %bb.h
  %i.ai = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef nonnull %0, ptr noundef nonnull @.str.738) ; 0 uses
  %i.aj = tail call fastcc i32 @JS_IteratorClose(ptr noundef nonnull %0, i64 %i.f, i64 %i.g, i1 noundef zeroext true) ; 0 uses
  br label %sum_precise_get_result.exit

bb.i:                                             ; preds = %bb.d, %bb.e
  %.0 = phi i64 [ %i.z, %bb.e ], [ %i.v, %bb.d ]  ; 6 uses
  %.neg.i = ashr i64 %.0, 63                      ; 4 uses
  %i.ak = lshr i64 %.0, 63                        ; 4 uses
  %i.al = trunc nuw nsw i64 %i.ak to i32
  %i.am = lshr i64 %.0, 52
  %i.an = trunc nuw nsw i64 %i.am to i32
  %i.ao = and i32 %i.an, 2047                     ; 2 uses
  %i.ap = and i64 %.0, 4503599627370495           ; 4 uses
  switch i32 %i.ao, label %bb.n [
    i32 2047, label %bb.j
    i32 0, label %bb.l
  ], !prof !641

bb.j:                                             ; preds = %bb.i
  %i.aq = icmp ne i64 %i.ap, 0
  %i.ar = icmp eq i32 %i.s, 4
  %or.cond = select i1 %i.aq, i1 true, i1 %i.ar
  br i1 %or.cond, label %sum_precise_add.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = icmp slt i64 %.0, 0
  %or.cond140.v.i = select i1 %i.as, i32 2, i32 3
  %or.cond140.i = icmp eq i32 %i.s, %or.cond140.v.i
  %i.at = or disjoint i32 %i.al, 2
  %spec.select = select i1 %or.cond140.i, i32 4, i32 %i.at
  br label %sum_precise_add.exit

bb.l:                                             ; preds = %bb.i
  %i.au = icmp eq i64 %i.ap, 0
  br i1 %i.au, label %bb.m, label %bb.o, !prof !325

bb.m:                                             ; preds = %bb.l
  %i.av = icmp ne i32 %i.s, 0
  %i.aw = icmp slt i64 %.0, 0
  %or.cond5.i = or i1 %i.aw, %i.av
  %spec.store.select = select i1 %or.cond5.i, i32 %i.s, i32 1
  br label %sum_precise_add.exit

bb.n:                                             ; preds = %bb.i
  %i.ax = or disjoint i64 %i.ap, 4503599627370496
  %i.ay = add nsw i32 %i.ao, -1                   ; 2 uses
  %i.az = lshr i32 %i.ay, 6
  %i.ba = and i32 %i.ay, 63
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %.0128.i = phi i32 [ %i.ba, %bb.n ], [ 0, %bb.l ] ; 3 uses
  %.0122.i = phi i32 [ %i.az, %bb.n ], [ 0, %bb.l ] ; 6 uses
  %.0.i = phi i64 [ %i.ax, %bb.n ], [ %i.ap, %bb.l ] ; 2 uses
  %i.bb = icmp ugt i32 %i.s, 1
  br i1 %i.bb, label %sum_precise_add.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = sext i32 %i.t to i64                    ; 5 uses
  %i.bd = getelementptr [8 x i8], ptr %5, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.bd, i64 -8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !240
  %i.bg = ashr i64 %i.bf, 63                      ; 4 uses
  %.not143.i = icmp sgt i32 %i.t, %.0122.i
  br i1 %.not143.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.p
  %i.bh = add nuw nsw i32 %.0122.i, 1
  %i.bi = sub i32 %.0122.i, %i.t                  ; 2 uses
  %i.bj = zext i32 %i.bi to i64
  %i.bk = add nuw nsw i64 %i.bj, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.bi, 3
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.bk, 8589934588              ; 3 uses
  %i.bl = add nsw i64 %n.vec, %i.bc
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bg, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %5, i64 %i.bc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %gep, align 8, !tbaa !240
  store <2 x i64> %broadcast.splat, ptr %i.bm, align 8, !tbaa !240
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !2214

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bk, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.bc, %.lr.ph.preheader.i ], [ %i.bl, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.bo = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv.i
  store i64 %i.bg, ptr %i.bo, align 8, !tbaa !240
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.bh, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !2215

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %bb.p
  %i.bp = zext nneg i32 %.0128.i to i64
  %i.bq = shl i64 %.0.i, %i.bp
  %i.br = zext nneg i32 %.0122.i to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.br ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !240 ; 2 uses
  %i.bu = xor i64 %i.bq, %.neg.i
  %i.bv = add i64 %i.bt, %i.bu                    ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.bt
  %i.bx = add i64 %i.bv, %i.ak                    ; 2 uses
  %i.by = icmp ult i64 %i.bx, %i.ak
  %i.bz = or i1 %i.bw, %i.by
  %i.ca = zext i1 %i.bz to i64                    ; 3 uses
  store i64 %i.bx, ptr %i.bs, align 8, !tbaa !240
  %i.cb = icmp samesign ugt i32 %.0128.i, 11
  br i1 %i.cb, label %bb.q, label %bb.s

bb.q:                                             ; preds = %._crit_edge.i
  %i.cc = add nuw nsw i32 %.0122.i, 1             ; 3 uses
  %.not137.i = icmp slt i32 %i.cc, %i.t
  %.phi.trans.insert.i = zext nneg i32 %i.cc to i64
  %.phi.trans.insert153.i = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.phi.trans.insert.i ; 2 uses
  br i1 %.not137.i, label %._crit_edge152.i, label %bb.r

._crit_edge152.i:                                 ; preds = %bb.q
  %.pre.i = load i64, ptr %.phi.trans.insert153.i, align 8, !tbaa !240
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge152.i
  %i.cd = phi i64 [ %.pre.i, %._crit_edge152.i ], [ %i.bg, %bb.q ] ; 2 uses
  %i.ce = sub nuw nsw i32 64, %.0128.i
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = lshr i64 %.0.i, %i.cf
  %i.ch = xor i64 %i.cg, %.neg.i
  %i.ci = add i64 %i.cd, %i.ch                    ; 2 uses
  %i.cj = icmp ult i64 %i.ci, %i.cd
  %i.ck = add i64 %i.ci, %i.ca                    ; 2 uses
  %i.cl = icmp ult i64 %i.ck, %i.ca
  %i.cm = or i1 %i.cj, %i.cl
  %i.cn = zext i1 %i.cm to i64
  store i64 %i.ck, ptr %.phi.trans.insert153.i, align 8, !tbaa !240
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i
  %.1123.i = phi i32 [ %i.cc, %bb.r ], [ %.0122.i, %._crit_edge.i ] ; 2 uses
  %.0121.i = phi i64 [ %i.cn, %bb.r ], [ %i.ca, %._crit_edge.i ] ; 2 uses
  %i.co = add nuw nsw i32 %.1123.i, 1             ; 3 uses
  %.not138.i = icmp slt i32 %i.co, %i.t
  br i1 %.not138.i, label %.preheader.preheader.i, label %..loopexit_crit_edge.i

..loopexit_crit_edge.i:                           ; preds = %bb.s
  %.pre154.i = zext nneg i32 %i.co to i64
  br label %.loopexit.i

.preheader.preheader.i:                           ; preds = %bb.s
  %i.cp = zext nneg i32 %.1123.i to i64
  %i.cq = add nuw nsw i64 %i.cp, 1
  %wide.trip.count.i = zext nneg i32 %i.t to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.t, %.preheader.preheader.i
  %indvars.iv148.i = phi i64 [ %i.cq, %.preheader.preheader.i ], [ %indvars.iv.next149.i, %bb.t ] ; 2 uses
  %.1146.i = phi i64 [ %.0121.i, %.preheader.preheader.i ], [ %i.cz, %bb.t ] ; 3 uses
  %i.cr = icmp eq i64 %.1146.i, %i.ak
  br i1 %i.cr, label %sum_precise_add.exit, label %bb.t

bb.t:                                             ; preds = %.preheader.i
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv148.i ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !240 ; 2 uses
  %i.cu = add i64 %i.ct, %.neg.i                  ; 2 uses
  %i.cv = icmp ult i64 %i.cu, %i.ct
  %i.cw = add i64 %i.cu, %.1146.i                 ; 2 uses
  %i.cx = icmp ult i64 %i.cw, %.1146.i
  %i.cy = or i1 %i.cv, %i.cx
  %i.cz = zext i1 %i.cy to i64                    ; 2 uses
  store i64 %i.cw, ptr %i.cs, align 8, !tbaa !240
  %indvars.iv.next149.i = add nuw nsw i64 %indvars.iv148.i, 1 ; 2 uses
  %exitcond151.not.i = icmp eq i64 %indvars.iv.next149.i, %wide.trip.count.i
  br i1 %exitcond151.not.i, label %.loopexit.i, label %.preheader.i, !llvm.loop !2216

.loopexit.i:                                      ; preds = %bb.t, %..loopexit_crit_edge.i
  %.pre-phi155.i = phi i64 [ %.pre154.i, %..loopexit_crit_edge.i ], [ %i.bc, %bb.t ]
  %.0124.i = phi i32 [ %i.co, %..loopexit_crit_edge.i ], [ %i.t, %bb.t ] ; 2 uses
  %.2.i = phi i64 [ %.0121.i, %..loopexit_crit_edge.i ], [ %i.cz, %bb.t ]
  %i.da = add nsw i64 %i.bg, %.neg.i
  %i.db = add nsw i64 %i.da, %.2.i                ; 2 uses
  %i.dc = getelementptr [8 x i8], ptr %5, i64 %.pre-phi155.i ; 2 uses
  %i.dd = getelementptr i8, ptr %i.dc, i64 -8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !240
  %i.df = ashr i64 %i.de, 63
  %.not139.i = icmp eq i64 %i.db, %i.df
  br i1 %.not139.i, label %sum_precise_add.exit, label %bb.u

bb.u:                                             ; preds = %.loopexit.i
  %i.dg = add nuw nsw i32 %.0124.i, 1
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !240
  br label %sum_precise_add.exit

sum_precise_add.exit:                             ; preds = %.preheader.i, %bb.k, %.loopexit.i, %bb.u, %bb.j, %bb.m, %bb.o
  %i.dh = phi i32 [ %spec.store.select, %bb.m ], [ 4, %bb.j ], [ 1, %bb.u ], [ 1, %.loopexit.i ], [ %i.s, %bb.o ], [ %spec.select, %bb.k ], [ 1, %.preheader.i ]
  %i.di = phi i32 [ %i.t, %bb.m ], [ %i.t, %bb.j ], [ %i.dg, %bb.u ], [ %.0124.i, %.loopexit.i ], [ %i.t, %bb.o ], [ %i.t, %bb.k ], [ %i.t, %.preheader.i ]
  %i.dj = call fastcc { i64, i64 } @JS_IteratorNext(ptr noundef %0, i64 %i.f, i64 %i.g, i64 %i.k, i64 %i.l, i32 noundef 0, ptr noundef null, ptr noundef nonnull %i.a) ; 2 uses
  %i.dk = extractvalue { i64, i64 } %i.dj, 1      ; 2 uses
  %i.dl = and i64 %i.dk, 4294967295
  %i.dm = icmp eq i64 %i.dl, 6
  br i1 %i.dm, label %sum_precise_get_result.exit, label %.lr.ph

bb.v:                                             ; preds = %.lr.ph
  switch i32 %i.s, label %sum_precise_get_result.exit [
    i32 1, label %bb.z
    i32 4, label %bb.y
    i32 2, label %bb.w
    i32 3, label %bb.x
  ]

bb.w:                                             ; preds = %bb.v
  br label %sum_precise_get_result.exit

bb.x:                                             ; preds = %bb.v
  br label %sum_precise_get_result.exit

bb.y:                                             ; preds = %bb.v
  br label %sum_precise_get_result.exit

bb.z:                                             ; preds = %bb.v
  %i.dn = sext i32 %i.t to i64
  %i.do = getelementptr [8 x i8], ptr %5, i64 %i.dn
  %i.dp = getelementptr i8, ptr %i.do, i64 -8
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !240 ; 2 uses
  %i.dr = and i64 %i.dq, -9223372036854775808     ; 3 uses
  %.not85.i = icmp slt i64 %i.dq, 0
  %i.ds = icmp sgt i32 %i.t, 0                    ; 2 uses
  %or.cond96.i = and i1 %i.ds, %.not85.i
  br i1 %or.cond96.i, label %.lr.ph.preheader.i53, label %.loopexit89.i

.lr.ph.preheader.i53:                             ; preds = %bb.z
  %wide.trip.count.i54 = zext nneg i32 %i.t to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i54, 1
  %i.dt = icmp eq i32 %i.t, 1
  br i1 %i.dt, label %.lr.ph.i55.epil.preheader, label %.lr.ph.preheader.i53.new

.lr.ph.preheader.i53.new:                         ; preds = %.lr.ph.preheader.i53
  %unroll_iter = and i64 %wide.trip.count.i54, 2147483646
  br label %.lr.ph.i55

.lr.ph.i55:                                       ; preds = %.lr.ph.i55, %.lr.ph.preheader.i53.new
  %indvars.iv.i56 = phi i64 [ 0, %.lr.ph.preheader.i53.new ], [ %indvars.iv.next.i57.1, %.lr.ph.i55 ] ; 3 uses
  %.07591.i = phi i64 [ 1, %.lr.ph.preheader.i53.new ], [ %i.eg, %.lr.ph.i55 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i53.new ], [ %niter.next.1, %.lr.ph.i55 ]
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.i56 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !240
  %i.dw = xor i64 %i.dv, -1
  %i.dx = add i64 %.07591.i, %i.dw                ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %.07591.i
  %i.dz = zext i1 %i.dy to i64                    ; 2 uses
  store i64 %i.dx, ptr %i.du, align 8, !tbaa !240
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.i56
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !240
  %i.ed = xor i64 %i.ec, -1
  %i.ee = add i64 %i.dz, %i.ed                    ; 2 uses
  %i.ef = icmp ult i64 %i.ee, %i.dz
  %i.eg = zext i1 %i.ef to i64                    ; 2 uses
  store i64 %i.ee, ptr %i.eb, align 8, !tbaa !240
  %indvars.iv.next.i57.1 = add nuw nsw i64 %indvars.iv.i56, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph93.i.preheader.loopexit.unr-lcssa, label %.lr.ph.i55, !llvm.loop !2217

.loopexit89.i:                                    ; preds = %bb.z
  br i1 %i.ds, label %.lr.ph93.i.preheader, label %.critedge.i

.lr.ph93.i.preheader.loopexit.unr-lcssa:          ; preds = %.lr.ph.i55
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph93.i.preheader, label %.lr.ph.i55.epil.preheader

.lr.ph.i55.epil.preheader:                        ; preds = %.lr.ph93.i.preheader.loopexit.unr-lcssa, %.lr.ph.preheader.i53
  %indvars.iv.i56.epil.init = phi i64 [ 0, %.lr.ph.preheader.i53 ], [ %indvars.iv.next.i57.1, %.lr.ph93.i.preheader.loopexit.unr-lcssa ]
  %.07591.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i53 ], [ %i.eg, %.lr.ph93.i.preheader.loopexit.unr-lcssa ]
  %lcmp.mod136 = trunc i32 %i.t to i1
  tail call void @llvm.assume(i1 %lcmp.mod136)
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.i56.epil.init ; 2 uses
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !240
  %i.ej = xor i64 %i.ei, -1
  %i.ek = add i64 %.07591.i.epil.init, %i.ej
  store i64 %i.ek, ptr %i.eh, align 8, !tbaa !240
  br label %.lr.ph93.i.preheader

.lr.ph93.i.preheader:                             ; preds = %.lr.ph.i55.epil.preheader, %.lr.ph93.i.preheader.loopexit.unr-lcssa, %.loopexit89.i
  br label %.lr.ph93.i

.lr.ph93.i:                                       ; preds = %.lr.ph93.i.preheader, %bb.aa
  %.07292.i = phi i32 [ %i.eq, %bb.aa ], [ %i.t, %.lr.ph93.i.preheader ] ; 4 uses
  %i.el = zext nneg i32 %.07292.i to i64
  %i.em = getelementptr [8 x i8], ptr %5, i64 %i.el
  %i.en = getelementptr i8, ptr %i.em, i64 -8
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !240
  %i.ep = icmp eq i64 %i.eo, 0
  br i1 %i.ep, label %bb.aa, label %.critedge.i

bb.aa:                                            ; preds = %.lr.ph93.i
  %i.eq = add nsw i32 %.07292.i, -1
  %i.er = icmp sgt i32 %.07292.i, 1
  br i1 %i.er, label %.lr.ph93.i, label %sum_precise_get_result.exit, !llvm.loop !2218

.critedge.i:                                      ; preds = %.lr.ph93.i, %.loopexit89.i
  %.072.lcssa.i = phi i32 [ %i.t, %.loopexit89.i ], [ %.07292.i, %.lr.ph93.i ] ; 5 uses
  switch i32 %.072.lcssa.i, label %bb.ad [
    i32 0, label %sum_precise_get_result.exit
    i32 1, label %bb.ab
  ]

bb.ab:                                            ; preds = %.critedge.i
  %i.es = load i64, ptr %5, align 8, !tbaa !240   ; 2 uses
  %i.et = icmp ult i64 %i.es, 4503599627370496
  br i1 %i.et, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.eu = or disjoint i64 %i.es, %i.dr
  br label %sum_precise_get_result.exit

bb.ad:                                            ; preds = %bb.ab, %.critedge.i
  %i.ev = shl nsw i32 %.072.lcssa.i, 6
  %i.ew = add nsw i32 %.072.lcssa.i, -1           ; 3 uses
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds [8 x i8], ptr %5, i64 %i.ex
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !240 ; 3 uses
  %i.fa = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ez, i1 true) ; 4 uses
  %i.fb = trunc nuw nsw i64 %i.fa to i32
  %i.fc = sub nsw i32 %i.ev, %i.fb
  %.not86.i = icmp eq i64 %i.fa, 0
  br i1 %.not86.i, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fd = shl i64 %i.ez, %i.fa                    ; 2 uses
  %i.fe = icmp sgt i32 %.072.lcssa.i, 1
  br i1 %i.fe, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ff = add nsw i32 %.072.lcssa.i, -2           ; 2 uses
  %i.fg = sub nuw nsw i64 64, %i.fa               ; 2 uses
end_hunk_0
