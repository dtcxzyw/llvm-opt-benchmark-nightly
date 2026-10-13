Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/ucnv?download=true
inline.NumInlined: 68
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ucnv_setToUCallBack_78
define dso_local void @ucnv_setToUCallBack_78(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %5, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %.not12 = icmp eq ptr %3, null
  br i1 %.not12, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  store ptr %i.d, ptr %3, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.e, align 8
  %.not13 = icmp eq ptr %4, null
  br i1 %.not13, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  store ptr %i.g, ptr %4, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.h, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @ucnv_fromUnicode_78(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1, ptr noundef %2, ptr nofree noundef captures(address_is_null) %3, ptr noundef %4, ptr noundef %5, i8 noundef signext %6, ptr noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %8 = alloca %struct.UConverterFromUnicodeArgs, align 8 ; 11 uses
  store ptr %5, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.b = icmp eq ptr %7, null
  br i1 %i.b, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %7, align 4
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq ptr %0, null
  %i.f = icmp eq ptr %1, null
  %or.cond = or i1 %i.e, %i.f
  %i.g = icmp eq ptr %3, null
  %or.cond3 = or i1 %or.cond, %i.g
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %7, align 4
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %3, align 8                ; 5 uses
  %i.i = load ptr, ptr %1, align 8                ; 3 uses
  %i.j = ptrtoint ptr %4 to i64
  %i.k = add i64 %i.j, 2147483647
  %i.l = icmp ult ptr %4, inttoptr (i64 -2147483647 to ptr)
  %i.m = inttoptr i64 %i.k to ptr
  %i.n = select i1 %i.l, ptr %i.m, ptr inttoptr (i64 -1 to ptr)
  %i.o = icmp eq ptr %i.n, %4
  %spec.select.idx = sext i1 %i.o to i64
  %spec.select = getelementptr inbounds i8, ptr %4, i64 %spec.select.idx ; 5 uses
  %i.p = icmp ult ptr %spec.select, %i.h
  %i.q = icmp ult ptr %2, %i.i
  %or.cond59 = select i1 %i.p, i1 true, i1 %i.q
  br i1 %or.cond59, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = ptrtoint ptr %spec.select to i64
  %i.s = ptrtoint ptr %i.h to i64
  %i.t = sub i64 %i.r, %i.s                       ; 2 uses
  %i.u = icmp ugt i64 %i.t, 2147483646
  %i.v = icmp ugt ptr %spec.select, %i.h
  %or.cond60 = and i1 %i.v, %i.u
  br i1 %or.cond60, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = ptrtoint ptr %2 to i64
  %i.x = ptrtoint ptr %i.i to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = icmp ult i64 %i.y, 2147483648
  %i.aa = icmp ule ptr %2, %i.i
  %or.cond61.not65 = select i1 %i.z, i1 true, i1 %i.aa
  %i.ab = and i64 %i.t, 1
  %.not56 = icmp eq i64 %i.ab, 0
  %or.cond62 = and i1 %.not56, %or.cond61.not65
  br i1 %or.cond62, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  store i32 1, ptr %7, align 4
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 91
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = icmp sgt i8 %i.ad, 0
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = call fastcc noundef signext i8 @_ZL30ucnv_outputOverflowFromUnicodeP10UConverterPPcPKcPPiP10UErrorCode(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef %7)
  %.not57 = icmp eq i8 %i.af, 0
  br i1 %.not57, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j, %bb.i
  %.not58 = icmp eq i8 %6, 0
  %i.ag = icmp eq ptr %i.h, %spec.select
  %or.cond63 = and i1 %.not58, %i.ag
  br i1 %or.cond63, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 281
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = icmp sgt i8 %i.ai, -1
  br i1 %i.aj, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %0, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 2
  store i8 %6, ptr %i.al, align 2
  %i.am = load ptr, ptr %i.a, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 48
  store ptr %i.am, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.h, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %spec.select, ptr %i.ap, align 8
  %i.aq = load ptr, ptr %1, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  store ptr %i.aq, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %2, ptr %i.as, align 8
  store i16 56, ptr %8, align 8
  call fastcc void @_ZL24_fromUnicodeWithCallbackP25UConverterFromUnicodeArgsP10UErrorCode(ptr noundef %8, ptr noundef %7)
  %i.at = load ptr, ptr %i.ao, align 8
  store ptr %i.at, ptr %3, align 8
  %i.au = load ptr, ptr %i.ar, align 8
  store ptr %i.au, ptr %1, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.j, %bb.a, %bb.b, %bb.m, %bb.h, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef signext range(i8 0, 2) i8 @_ZL30ucnv_outputOverflowFromUnicodeP10UConverterPPcPKcPPiP10UErrorCode(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef captures(address_is_null) %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #10 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = load ptr, ptr %1, align 8                ; 3 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %3, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.036 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 91 ; 3 uses
  %i.g = load i8, ptr %i.f, align 1               ; 3 uses
  %i.h = icmp sgt i8 %i.g, 0
  br i1 %i.h, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i8 %i.g to i64     ; 3 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.h ] ; 7 uses
  %.03548 = phi ptr [ %i.b, %.lr.ph.preheader ], [ %i.ah, %bb.h ] ; 4 uses
  %.13747 = phi ptr [ %.036, %.lr.ph.preheader ], [ %.2, %bb.h ] ; 5 uses
  %i.i = icmp eq ptr %.03548, %2
  br i1 %i.i, label %iter.check, label %bb.f

iter.check:                                       ; preds = %.lr.ph
  %i.j = zext nneg i8 %i.g to i64
  %i.k = sub i64 %i.a, %i.c
  %i.l = add nsw i64 %wide.trip.count, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.l)
  %i.m = sub i64 %wide.trip.count, %umin          ; 7 uses
  %min.iters.check = icmp ult i64 %i.m, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check70 = icmp ult i64 %i.m, 16
  br i1 %min.iters.check70, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.n = and i64 %i.m, 12
  %n.vec = and i64 %i.m, -16                      ; 6 uses
  %i.o = add i64 %indvars.iv, %n.vec
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %wide.load = load <8 x i8>, ptr %i.q, align 1
  %wide.load71 = load <8 x i8>, ptr %i.r, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store <8 x i8> %wide.load, ptr %i.s, align 1
  store <8 x i8> %wide.load71, ptr %i.t, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.n, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !10

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec72 = and i64 %i.m, -4                     ; 5 uses
  %i.v = add i64 %indvars.iv, %n.vec72
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index73 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next75, %vec.epilog.vector.body ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %index73
  %wide.load74 = load <4 x i8>, ptr %i.x, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 %index73
  store <4 x i8> %wide.load74, ptr %i.y, align 1
  %index.next75 = add nuw i64 %index73, 4         ; 2 uses
  %i.z = icmp eq i64 %index.next75, %n.vec72
  br i1 %i.z, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !15

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n76 = icmp eq i64 %i.m, %n.vec72
  br i1 %cmp.n76, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv59.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec72, %vec.epilog.middle.block ]
  %indvars.iv57.ph = phi i64 [ %indvars.iv, %iter.check ], [ %i.o, %vec.epilog.iter.check ], [ %i.v, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %vec.epilog.scalar.ph ], [ %indvars.iv59.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %vec.epilog.scalar.ph ], [ %indvars.iv57.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv57
  %i.ab = load i8, ptr %i.aa, align 1
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv59
  store i8 %i.ab, ptr %i.ac, align 1
  %i.ad = icmp samesign ult i64 %indvars.iv.next58, %i.j
  br i1 %i.ad, label %vec.epilog.scalar.ph, label %.loopexit, !llvm.loop !16

.loopexit:                                        ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next60.lcssa = phi i64 [ %n.vec72, %vec.epilog.middle.block ], [ %n.vec, %middle.block ], [ %indvars.iv.next60, %vec.epilog.scalar.ph ]
  %i.ae = trunc i64 %indvars.iv.next60.lcssa to i8
  store i8 %i.ae, ptr %i.f, align 1
  store ptr %.03548, ptr %1, align 8
  %.not43 = icmp eq ptr %.13747, null
  br i1 %.not43, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.loopexit
  store ptr %.13747, ptr %3, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.loopexit
  store i32 15, ptr %4, align 4
  br label %bb.j

bb.f:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %.03548, i64 1 ; 2 uses
  store i8 %i.ag, ptr %.03548, align 1
  %.not42 = icmp eq ptr %.13747, null
  br i1 %.not42, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %.13747, i64 4
  store i32 -1, ptr %.13747, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.2 = phi ptr [ %i.ai, %bb.g ], [ null, %bb.f ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !17

._crit_edge:                                      ; preds = %bb.h, %bb.c
  %.137.lcssa = phi ptr [ %.036, %bb.c ], [ %.2, %bb.h ] ; 2 uses
  %.035.lcssa = phi ptr [ %i.b, %bb.c ], [ %i.ah, %bb.h ]
  store i8 0, ptr %i.f, align 1
  store ptr %.035.lcssa, ptr %1, align 8
  %.not41 = icmp eq ptr %.137.lcssa, null
  br i1 %.not41, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  store ptr %.137.lcssa, ptr %3, align 8
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i, %bb.e
  %.038 = phi i8 [ 1, %bb.e ], [ 0, %bb.i ], [ 0, %._crit_edge ]
  ret i8 %.038
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL24_fromUnicodeWithCallbackP25UConverterFromUnicodeArgsP10UErrorCode(ptr noundef nonnull %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [19 x i16], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  br i1 %i.j, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.sink.split, label %bb.c

.sink.split:                                      ; preds = %bb.b, %bb.a
  %.0143.ph = phi i32 [ 0, %bb.a ], [ -1, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.s = load ptr, ptr %i.r, align 8
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  %.0156 = phi ptr [ %i.p, %bb.b ], [ %i.s, %.sink.split ]
  %.0143 = phi i32 [ 0, %bb.b ], [ %.0143.ph, %.sink.split ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 281 ; 8 uses
  %i.u = load i8, ptr %i.t, align 1               ; 2 uses
  %i.v = icmp sgt i8 %i.u, -1
  br i1 %i.v, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = sext i8 %i.u to i64
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 2
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 212
  %.neg = mul nsw i64 %i.w, -2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 4 %i.ab, i64 %.neg, i1 false)
  store ptr %i.a, ptr %i.d, align 8
  %i.ac = load i8, ptr %i.t, align 1
  %i.ad = sext i8 %i.ac to i64
  %i.ae = sub nsw i64 0, %i.ad
  %i.af = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.ae
  store ptr %i.af, ptr %i.x, align 8
  store i8 0, ptr %i.z, align 2
  store i8 0, ptr %i.t, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.1144 = phi i32 [ -1, %bb.d ], [ %.0143, %bb.c ]
  %.0134 = phi ptr [ %i.e, %bb.d ], [ null, %bb.c ]
  %.0130 = phi ptr [ %i.y, %bb.d ], [ null, %bb.c ]
  %.0126 = phi i32 [ %.0143, %bb.d ], [ 0, %bb.c ]
  %.0125 = phi i8 [ %i.aa, %bb.d ], [ 0, %bb.c ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 84 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 212 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 140 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 142
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 92
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.backedge, %bb.e
  %.0154 = phi ptr [ %i.e, %bb.e ], [ %i.ej, %.loopexit.backedge ]
  %.0152 = phi ptr [ %i.g, %bb.e ], [ %i.ek, %.loopexit.backedge ]
  %.0148 = phi ptr [ %i.i, %bb.e ], [ %.3151, %.loopexit.backedge ]
  %.2145 = phi i32 [ %.1144, %bb.e ], [ %.2145.be, %.loopexit.backedge ]
  %.1135 = phi ptr [ %.0134, %bb.e ], [ %.1135.be, %.loopexit.backedge ]
  %.1131 = phi ptr [ %.0130, %bb.e ], [ %.3133, %.loopexit.backedge ]
  %.1127 = phi i32 [ %.0126, %bb.e ], [ %.3129, %.loopexit.backedge ]
  %.1 = phi i8 [ %.0125, %bb.e ], [ %.3, %.loopexit.backedge ]
  %i.ao = load i32, ptr %1, align 4
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %bb.j, label %bb.f

bb.f:                                             ; preds = %.loopexit
  call void %.0156(ptr noundef nonnull %0, ptr noundef nonnull %1) #14
  %i.aq = load i32, ptr %1, align 4
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = load i8, ptr %i.ag, align 2
  %.not166 = icmp eq i8 %i.as, 0
  br i1 %.not166, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = load ptr, ptr %i.d, align 8
  %i.au = load ptr, ptr %i.ah, align 8
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aw = load i32, ptr %i.ai, align 4
  %i.ax = icmp ne i32 %i.aw, 0
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %bb.f, %bb.g, %bb.h, %bb.i
  %.0140 = phi i1 [ %i.ax, %bb.i ], [ true, %bb.h ], [ true, %bb.g ], [ true, %bb.f ], [ true, %.loopexit ]
  br label %bb.k

bb.k:                                             ; preds = %bb.am, %bb.j
  %.1155 = phi ptr [ %.0154, %bb.j ], [ %i.ej, %bb.am ]
  %.1153 = phi ptr [ %.0152, %bb.j ], [ %i.ek, %bb.am ]
  %.1149 = phi ptr [ %.0148, %bb.j ], [ %.3151, %bb.am ] ; 16 uses
  %.3146 = phi i32 [ %.2145, %bb.j ], [ %.6, %bb.am ] ; 6 uses
  %.0141 = phi i32 [ 0, %bb.j ], [ %.1142, %bb.am ]
  %.not175.not = phi i1 [ false, %bb.j ], [ true, %bb.am ]
  %.2136 = phi ptr [ %.1135, %bb.j ], [ %.3137, %bb.am ] ; 3 uses
  %.2132 = phi ptr [ %.1131, %bb.j ], [ %.3133, %bb.am ] ; 2 uses
  %.2128 = phi i32 [ %.1127, %bb.j ], [ %.3129, %bb.am ] ; 2 uses
  %.2 = phi i8 [ %.1, %bb.j ], [ %.3, %bb.am ]    ; 2 uses
  %.not167 = icmp eq ptr %.1149, null
  br i1 %.not167, label %bb.s, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = load ptr, ptr %i.f, align 8
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %.1153 to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 3 uses
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.be = icmp sgt i32 %.3146, -1
  %i.bf = sub nsw i32 %.3146, %.0141
  %.0.i = select i1 %i.be, i32 %i.bf, i32 -1      ; 11 uses
  %i.bg = shl i64 %i.bb, 2
  %.idx.i = and i64 %i.bg, 8589934588             ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.1149, i64 %.idx.i
  %i.bi = icmp eq i32 %.0.i, 0
  br i1 %i.bi, label %_ZL14_updateOffsetsPiiii.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = ptrtoaddr ptr %.1149 to i64             ; 3 uses
  %i.bk = icmp sgt i32 %.0.i, 0
  %i.bl = add i64 %.idx.i, %i.bj
  %i.bm = add i64 %i.bj, 4
  %i.bn = call i64 @llvm.umax.i64(i64 %i.bl, i64 %i.bm)
  %i.bo = xor i64 %i.bj, -1
  %i.bp = add i64 %i.bn, %i.bo                    ; 3 uses
  br i1 %i.bk, label %.lr.ph24.i.preheader, label %.lr.ph.preheader.i

.lr.ph24.i.preheader:                             ; preds = %bb.n
  %i.bq = lshr i64 %i.bp, 2
  %i.br = add nuw nsw i64 %i.bq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bp, 28
  br i1 %min.iters.check, label %.lr.ph24.i.preheader362, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph24.i.preheader
  %n.vec = and i64 %i.br, 9223372036854775800     ; 3 uses
  %i.bs = shl i64 %n.vec, 2
  %i.bt = getelementptr i8, ptr %.1149, i64 %i.bs
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue361, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue361 ] ; 2 uses
  %i.bu = shl i64 %index, 2                       ; 8 uses
  %next.gep = getelementptr i8, ptr %.1149, i64 %i.bu ; 3 uses
  %i.bv = getelementptr i8, ptr %.1149, i64 %i.bu
  %next.gep340 = getelementptr i8, ptr %i.bv, i64 4
  %i.bw = getelementptr i8, ptr %.1149, i64 %i.bu
  %next.gep341 = getelementptr i8, ptr %i.bw, i64 8
  %i.bx = getelementptr i8, ptr %.1149, i64 %i.bu
  %next.gep342 = getelementptr i8, ptr %i.bx, i64 12
  %i.by = getelementptr i8, ptr %.1149, i64 %i.bu
  %next.gep343 = getelementptr i8, ptr %i.by, i64 16
  %i.bz = getelementptr i8, ptr %.1149, i64 %i.bu
  %next.gep344 = getelementptr i8, ptr %i.bz, i64 20
  %i.ca = getelementptr i8, ptr %.1149, i64 %i.bu
  %next.gep345 = getelementptr i8, ptr %i.ca, i64 24
  %i.cb = getelementptr i8, ptr %.1149, i64 %i.bu
  %next.gep346 = getelementptr i8, ptr %i.cb, i64 28
  %i.cc = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4 ; 5 uses
  %wide.load347 = load <4 x i32>, ptr %i.cc, align 4 ; 5 uses
  %i.cd = icmp sgt <4 x i32> %wide.load, splat (i32 -1) ; 4 uses
  %i.ce = icmp sgt <4 x i32> %wide.load347, splat (i32 -1) ; 4 uses
  %i.cf = extractelement <4 x i1> %i.cd, i64 0
  br i1 %i.cf, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.cg = extractelement <4 x i32> %wide.load, i64 0
  %i.ch = add nuw nsw i32 %i.cg, %.0.i
  store i32 %i.ch, ptr %next.gep, align 4
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.ci = extractelement <4 x i1> %i.cd, i64 1
  br i1 %i.ci, label %pred.store.if348, label %pred.store.continue349

pred.store.if348:                                 ; preds = %pred.store.continue
  %i.cj = extractelement <4 x i32> %wide.load, i64 1
  %i.ck = add nuw nsw i32 %i.cj, %.0.i
  store i32 %i.ck, ptr %next.gep340, align 4
  br label %pred.store.continue349

pred.store.continue349:                           ; preds = %pred.store.if348, %pred.store.continue
  %i.cl = extractelement <4 x i1> %i.cd, i64 2
  br i1 %i.cl, label %pred.store.if350, label %pred.store.continue351

pred.store.if350:                                 ; preds = %pred.store.continue349
  %i.cm = extractelement <4 x i32> %wide.load, i64 2
  %i.cn = add nuw nsw i32 %i.cm, %.0.i
  store i32 %i.cn, ptr %next.gep341, align 4
  br label %pred.store.continue351

pred.store.continue351:                           ; preds = %pred.store.if350, %pred.store.continue349
  %i.co = extractelement <4 x i1> %i.cd, i64 3
  br i1 %i.co, label %pred.store.if352, label %pred.store.continue353

pred.store.if352:                                 ; preds = %pred.store.continue351
  %i.cp = extractelement <4 x i32> %wide.load, i64 3
  %i.cq = add nuw nsw i32 %i.cp, %.0.i
  store i32 %i.cq, ptr %next.gep342, align 4
  br label %pred.store.continue353

pred.store.continue353:                           ; preds = %pred.store.if352, %pred.store.continue351
  %i.cr = extractelement <4 x i1> %i.ce, i64 0
  br i1 %i.cr, label %pred.store.if354, label %pred.store.continue355

pred.store.if354:                                 ; preds = %pred.store.continue353
  %i.cs = extractelement <4 x i32> %wide.load347, i64 0
  %i.ct = add nuw nsw i32 %i.cs, %.0.i
  store i32 %i.ct, ptr %next.gep343, align 4
  br label %pred.store.continue355

pred.store.continue355:                           ; preds = %pred.store.if354, %pred.store.continue353
  %i.cu = extractelement <4 x i1> %i.ce, i64 1
  br i1 %i.cu, label %pred.store.if356, label %pred.store.continue357

pred.store.if356:                                 ; preds = %pred.store.continue355
  %i.cv = extractelement <4 x i32> %wide.load347, i64 1
  %i.cw = add nuw nsw i32 %i.cv, %.0.i
  store i32 %i.cw, ptr %next.gep344, align 4
  br label %pred.store.continue357

pred.store.continue357:                           ; preds = %pred.store.if356, %pred.store.continue355
  %i.cx = extractelement <4 x i1> %i.ce, i64 2
  br i1 %i.cx, label %pred.store.if358, label %pred.store.continue359

pred.store.if358:                                 ; preds = %pred.store.continue357
  %i.cy = extractelement <4 x i32> %wide.load347, i64 2
  %i.cz = add nuw nsw i32 %i.cy, %.0.i
  store i32 %i.cz, ptr %next.gep345, align 4
  br label %pred.store.continue359

pred.store.continue359:                           ; preds = %pred.store.if358, %pred.store.continue357
  %i.da = extractelement <4 x i1> %i.ce, i64 3
  br i1 %i.da, label %pred.store.if360, label %pred.store.continue361

pred.store.if360:                                 ; preds = %pred.store.continue359
  %i.db = extractelement <4 x i32> %wide.load347, i64 3
  %i.dc = add nuw nsw i32 %i.db, %.0.i
  store i32 %i.dc, ptr %next.gep346, align 4
  br label %pred.store.continue361

pred.store.continue361:                           ; preds = %pred.store.if360, %pred.store.continue359
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dd = icmp eq i64 %index.next, %n.vec
  br i1 %i.dd, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %pred.store.continue361
  %cmp.n = icmp eq i64 %i.br, %n.vec
  br i1 %cmp.n, label %_ZL14_updateOffsetsPiiii.exit, label %.lr.ph24.i.preheader362

.lr.ph24.i.preheader362:                          ; preds = %.lr.ph24.i.preheader, %middle.block
  %.01723.i.ph = phi ptr [ %.1149, %.lr.ph24.i.preheader ], [ %i.bt, %middle.block ]
  br label %.lr.ph24.i

.lr.ph.preheader.i:                               ; preds = %bb.n
  %i.de = and i64 %i.bp, -4
  %i.df = add i64 %i.de, 4
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %.1149, i8 -1, i64 %i.df, i1 false)
  br label %_ZL14_updateOffsetsPiiii.exit

.lr.ph24.i:                                       ; preds = %.lr.ph24.i.preheader362, %bb.p
  %.01723.i = phi ptr [ %i.dj, %bb.p ], [ %.01723.i.ph, %.lr.ph24.i.preheader362 ] ; 3 uses
  %i.dg = load i32, ptr %.01723.i, align 4        ; 2 uses
  %i.dh = icmp sgt i32 %i.dg, -1
  br i1 %i.dh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph24.i
  %i.di = add nuw nsw i32 %i.dg, %.0.i
  store i32 %i.di, ptr %.01723.i, align 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph24.i
  %i.dj = getelementptr inbounds nuw i8, ptr %.01723.i, i64 4 ; 2 uses
  %i.dk = icmp ult ptr %i.dj, %i.bh
  br i1 %i.dk, label %.lr.ph24.i, label %_ZL14_updateOffsetsPiiii.exit, !llvm.loop !19

_ZL14_updateOffsetsPiiii.exit:                    ; preds = %bb.p, %middle.block, %bb.m, %.lr.ph.preheader.i
  %i.dl = and i64 %i.bb, 2147483647
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %.1149, i64 %i.dl ; 2 uses
  store ptr %i.dm, ptr %i.h, align 8
  br label %bb.q

bb.q:                                             ; preds = %_ZL14_updateOffsetsPiiii.exit, %bb.l
  %.2150 = phi ptr [ %i.dm, %_ZL14_updateOffsetsPiiii.exit ], [ %.1149, %bb.l ] ; 2 uses
  %i.dn = icmp sgt i32 %.3146, -1
  br i1 %i.dn, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.do = load ptr, ptr %i.d, align 8
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = ptrtoint ptr %.1155 to i64
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = lshr exact i64 %i.dr, 1
  %i.dt = trunc i64 %i.ds to i32
  %i.du = add nsw i32 %.3146, %i.dt
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.k
  %.3151 = phi ptr [ null, %bb.k ], [ %.2150, %bb.r ], [ %.2150, %bb.q ] ; 2 uses
  %.5 = phi i32 [ %.3146, %bb.k ], [ %i.du, %bb.r ], [ %.3146, %bb.q ] ; 4 uses
  %i.dv = load i8, ptr %i.t, align 1              ; 2 uses
  %i.dw = sext i8 %i.dv to i64
  %i.dx = icmp slt i8 %i.dv, 0
  br i1 %i.dx, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.dy = icmp eq ptr %.2136, null
  br i1 %i.dy, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dz = load ptr, ptr %i.d, align 8
  %i.ea = load ptr, ptr %i.ah, align 8
  %i.eb = load i8, ptr %i.ag, align 2
  %.neg168 = mul nsw i64 %i.dw, -2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 4 %i.aj, i64 %.neg168, i1 false)
  store ptr %i.a, ptr %i.d, align 8
  %i.ec = load i8, ptr %i.t, align 1
  %i.ed = sext i8 %i.ec to i64
  %i.ee = sub nsw i64 0, %i.ed
  %i.ef = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.ee
  store ptr %i.ef, ptr %i.ah, align 8
  store i8 0, ptr %i.ag, align 2
  %i.eg = load i8, ptr %i.t, align 1
  %i.eh = sext i8 %i.eg to i32
  %i.ei = add nsw i32 %.5, %i.eh
  %spec.store.select = call i32 @llvm.smax.i32(i32 %i.ei, i32 -1)
  store i8 0, ptr %i.t, align 1
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  store i32 5, ptr %1, align 4
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.s
  %.6 = phi i32 [ %spec.store.select, %bb.u ], [ %.5, %bb.v ], [ %.5, %bb.s ] ; 3 uses
  %.3137 = phi ptr [ %i.dz, %bb.u ], [ %.2136, %bb.v ], [ %.2136, %bb.s ] ; 6 uses
  %.3133 = phi ptr [ %i.ea, %bb.u ], [ %.2132, %bb.v ], [ %.2132, %bb.s ] ; 4 uses
  %.3129 = phi i32 [ %.5, %bb.u ], [ %.2128, %bb.v ], [ %.2128, %bb.s ] ; 3 uses
  %.3 = phi i8 [ %i.eb, %bb.u ], [ %.2, %bb.v ], [ %.2, %bb.s ] ; 4 uses
  %i.ej = load ptr, ptr %i.d, align 8             ; 3 uses
  %i.ek = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.el = load i32, ptr %1, align 4               ; 2 uses
  %i.em = icmp sgt i32 %i.el, 0
  br i1 %i.em, label %bb.ae, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.en = load ptr, ptr %i.ah, align 8
  %i.eo = icmp ult ptr %i.ej, %i.en
  br i1 %i.eo, label %.loopexit.backedge, label %bb.y, !llvm.loop !20

bb.y:                                             ; preds = %bb.x
  %.not170 = icmp eq ptr %.3137, null
  br i1 %.not170, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store ptr %.3137, ptr %i.d, align 8
  store ptr %.3133, ptr %i.ah, align 8
  store i8 %.3, ptr %i.ag, align 2
  br label %.loopexit.backedge

bb.aa:                                            ; preds = %bb.y
  %i.ep = load i8, ptr %i.ag, align 2
  %.not171 = icmp eq i8 %i.ep, 0
  br i1 %.not171, label %.critedge, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eq = load i32, ptr %i.ai, align 4
  %.not172 = icmp eq i32 %i.eq, 0
  br i1 %.not172, label %bb.ac, label %.thread

.thread:                                          ; preds = %bb.ab
  store i32 11, ptr %1, align 4
  br label %bb.aj

bb.ac:                                            ; preds = %bb.ab
  br i1 %.0140, label %.loopexit.backedge, label %bb.ad

.loopexit.backedge:                               ; preds = %bb.x, %bb.ac, %bb.z
  %.2145.be = phi i32 [ %.3129, %bb.z ], [ %.6, %bb.ac ], [ %.6, %bb.x ]
  %.1135.be = phi ptr [ null, %bb.z ], [ null, %bb.ac ], [ %.3137, %bb.x ]
  br label %.loopexit, !llvm.loop !20

bb.ad:                                            ; preds = %bb.ac
  call fastcc void @_ZL6_resetP10UConverter21UConverterResetChoicea(ptr noundef nonnull %i.c, i32 noundef 2, i8 noundef signext 0)
  br label %.critedge

bb.ae:                                            ; preds = %bb.w
  %i.er = add nsw i32 %i.el, -13
  %or.cond3 = icmp ult i32 %i.er, -3
  %or.cond = select i1 %.not175.not, i1 true, i1 %or.cond3
  br i1 %or.cond, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae
  %.not176 = icmp eq ptr %.3137, null
  br i1 %.not176, label %.critedge, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.es = load ptr, ptr %i.ah, align 8
  %i.et = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = sub i64 %i.eu, %i.ev
  %i.ex = lshr exact i64 %i.ew, 1                 ; 2 uses
  %i.ey = trunc i64 %i.ex to i32                  ; 2 uses
  %i.ez = icmp sgt i32 %i.ey, 0
  br i1 %i.ez, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fa = call ptr @u_memcpy_78(ptr noundef nonnull %i.aj, ptr noundef %i.et, i32 noundef %i.ey) #14 ; 0 uses
  %i.fb = trunc i64 %i.ex to i8
  %i.fc = sub i8 0, %i.fb
  store i8 %i.fc, ptr %i.t, align 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  store ptr %.3137, ptr %i.d, align 8
  store ptr %.3133, ptr %i.ah, align 8
  store i8 %.3, ptr %i.ag, align 2
  br label %.critedge

bb.aj:                                            ; preds = %bb.ae, %.thread
  %i.fd = load i32, ptr %i.ai, align 4            ; 5 uses
  %i.fe = icmp ult i32 %i.fd, 65536
  br i1 %i.fe, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ff = trunc nuw i32 %i.fd to i16
  store i16 %i.ff, ptr %i.ak, align 4
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.fg = lshr i32 %i.fd, 10
  %i.fh = trunc i32 %i.fg to i16
  %i.fi = add i16 %i.fh, -10304
  store i16 %i.fi, ptr %i.ak, align 4
  %i.fj = trunc i32 %i.fd to i16
  %i.fk = and i16 %i.fj, 1023
  %i.fl = or disjoint i16 %i.fk, -9216
  store i16 %i.fl, ptr %i.al, align 2
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.1142 = phi i32 [ 1, %bb.ak ], [ 2, %bb.al ]   ; 3 uses
  %i.fm = trunc nuw nsw i32 %.1142 to i8
  store i8 %i.fm, ptr %i.am, align 4
  store i32 0, ptr %i.ai, align 4
  %i.fn = load ptr, ptr %i.c, align 8
  %i.fo = load ptr, ptr %i.an, align 8
  %i.fp = load i32, ptr %1, align 4
  %i.fq = icmp ne i32 %i.fp, 10
  %i.fr = zext i1 %i.fq to i32
  call void %i.fn(ptr noundef %i.fo, ptr noundef nonnull %0, ptr noundef nonnull %i.ak, i32 noundef %.1142, i32 noundef %i.fd, i32 noundef %i.fr, ptr noundef nonnull %1) #14
  br label %bb.k, !llvm.loop !21

.critedge:                                        ; preds = %bb.aa, %bb.af, %bb.ai, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @ucnv_toUnicode_78(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1, ptr noundef %2, ptr nofree noundef captures(address_is_null) %3, ptr noundef %4, ptr noundef %5, i8 noundef signext %6, ptr noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %8 = alloca %struct.UConverterToUnicodeArgs, align 8 ; 11 uses
  store ptr %5, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.b = icmp eq ptr %7, null
  br i1 %i.b, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %7, align 4
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq ptr %0, null
  %i.f = icmp eq ptr %1, null
  %or.cond = or i1 %i.e, %i.f
  %i.g = icmp eq ptr %3, null
  %or.cond3 = or i1 %or.cond, %i.g
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %7, align 4
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %3, align 8                ; 5 uses
  %i.i = load ptr, ptr %1, align 8                ; 3 uses
  %i.j = ptrtoint ptr %2 to i64
  %i.k = add i64 %i.j, 2147483647
  %i.l = icmp ult ptr %2, inttoptr (i64 -2147483647 to ptr)
  %i.m = inttoptr i64 %i.k to ptr
  %i.n = select i1 %i.l, ptr %i.m, ptr inttoptr (i64 -1 to ptr)
  %i.o = icmp eq ptr %i.n, %2
  %spec.select.idx = sext i1 %i.o to i64
  %spec.select = getelementptr inbounds i8, ptr %2, i64 %spec.select.idx ; 5 uses
  %i.p = icmp ult ptr %4, %i.h
  %i.q = icmp ult ptr %spec.select, %i.i
  %or.cond59 = select i1 %i.p, i1 true, i1 %i.q
  br i1 %or.cond59, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = ptrtoint ptr %4 to i64
  %i.s = ptrtoint ptr %i.h to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = icmp ugt i64 %i.t, 2147483647
  %i.v = icmp ugt ptr %4, %i.h
  %or.cond60 = and i1 %i.v, %i.u
  br i1 %or.cond60, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = ptrtoint ptr %spec.select to i64
  %i.x = ptrtoint ptr %i.i to i64
  %i.y = sub i64 %i.w, %i.x                       ; 2 uses
  %i.z = icmp ult i64 %i.y, 2147483647
  %i.aa = icmp ule ptr %spec.select, %i.i
  %or.cond61.not65 = select i1 %i.z, i1 true, i1 %i.aa
  %i.ab = and i64 %i.y, 1
  %.not56 = icmp eq i64 %i.ab, 0
  %or.cond62 = and i1 %or.cond61.not65, %.not56
  br i1 %or.cond62, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  store i32 1, ptr %7, align 4
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 93
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = icmp sgt i8 %i.ad, 0
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = call fastcc noundef signext i8 @_ZL28ucnv_outputOverflowToUnicodeP10UConverterPPDsPKDsPPiP10UErrorCode(ptr noundef %0, ptr noundef %1, ptr noundef %spec.select, ptr noundef nonnull %i.a, ptr noundef %7)
  %.not57 = icmp eq i8 %i.af, 0
  br i1 %.not57, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j, %bb.i
  %.not58 = icmp eq i8 %6, 0
  %i.ag = icmp eq ptr %i.h, %4
  %or.cond63 = and i1 %.not58, %i.ag
  br i1 %or.cond63, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 282
  %i.ai = load i8, ptr %i.ah, align 2
  %i.aj = icmp sgt i8 %i.ai, -1
  br i1 %i.aj, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %0, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 2
  store i8 %6, ptr %i.al, align 2
  %i.am = load ptr, ptr %i.a, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 48
  store ptr %i.am, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.h, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %4, ptr %i.ap, align 8
  %i.aq = load ptr, ptr %1, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  store ptr %i.aq, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %spec.select, ptr %i.as, align 8
  store i16 56, ptr %8, align 8
  call fastcc void @_ZL22_toUnicodeWithCallbackP23UConverterToUnicodeArgsP10UErrorCode(ptr noundef %8, ptr noundef %7)
  %i.at = load ptr, ptr %i.ao, align 8
  store ptr %i.at, ptr %3, align 8
  %i.au = load ptr, ptr %i.ar, align 8
  store ptr %i.au, ptr %1, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.j, %bb.a, %bb.b, %bb.m, %bb.h, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef signext range(i8 0, 2) i8 @_ZL28ucnv_outputOverflowToUnicodeP10UConverterPPDsPKDsPPiP10UErrorCode(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef captures(address_is_null) %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %3, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.036 = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 93 ; 3 uses
  %i.e = load i8, ptr %i.d, align 1               ; 3 uses
  %i.f = icmp sgt i8 %i.e, 0
  br i1 %i.f, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i8 %i.e to i64     ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.h ] ; 9 uses
  %.03548 = phi ptr [ %i.a, %.lr.ph.preheader ], [ %i.ae, %bb.h ] ; 4 uses
  %.13747 = phi ptr [ %.036, %.lr.ph.preheader ], [ %.2, %bb.h ] ; 5 uses
  %i.g = icmp eq ptr %.03548, %2
  br i1 %i.g, label %iter.check, label %bb.f

iter.check:                                       ; preds = %.lr.ph
  %i.h = zext nneg i8 %i.e to i64
  %i.i = add nuw i64 %indvars.iv, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.i, i64 %wide.trip.count)
  %i.j = sub i64 %umax, %indvars.iv               ; 7 uses
  %min.iters.check = icmp ult i64 %i.j, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check71 = icmp ult i64 %i.j, 16
  br i1 %min.iters.check71, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.k = and i64 %i.j, 12
  %n.vec = and i64 %i.j, -16                      ; 6 uses
  %i.l = add i64 %indvars.iv, %n.vec
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <8 x i16>, ptr %i.n, align 2
  %wide.load72 = load <8 x i16>, ptr %i.o, align 2
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <8 x i16> %wide.load, ptr %i.p, align 2
  store <8 x i16> %wide.load72, ptr %i.q, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.k, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !10

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec73 = and i64 %i.j, -4                     ; 5 uses
  %i.s = add i64 %indvars.iv, %n.vec73
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index74 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next76, %vec.epilog.vector.body ] ; 3 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %index74
  %wide.load75 = load <4 x i16>, ptr %i.u, align 2
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %index74
  store <4 x i16> %wide.load75, ptr %i.v, align 2
  %index.next76 = add nuw i64 %index74, 4         ; 2 uses
  %i.w = icmp eq i64 %index.next76, %n.vec73
  br i1 %i.w, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !23

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n77 = icmp eq i64 %i.j, %n.vec73
  br i1 %cmp.n77, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv60.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec73, %vec.epilog.middle.block ]
  %indvars.iv58.ph = phi i64 [ %indvars.iv, %iter.check ], [ %i.l, %vec.epilog.iter.check ], [ %i.s, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %vec.epilog.scalar.ph ], [ %indvars.iv60.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %vec.epilog.scalar.ph ], [ %indvars.iv58.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1 ; 2 uses
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv58
  %i.y = load i16, ptr %i.x, align 2
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv60
  store i16 %i.y, ptr %i.z, align 2
  %i.aa = icmp samesign ult i64 %indvars.iv.next59, %i.h
  br i1 %i.aa, label %vec.epilog.scalar.ph, label %.loopexit, !llvm.loop !24

.loopexit:                                        ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next61.lcssa = phi i64 [ %n.vec73, %vec.epilog.middle.block ], [ %n.vec, %middle.block ], [ %indvars.iv.next61, %vec.epilog.scalar.ph ]
  %i.ab = trunc i64 %indvars.iv.next61.lcssa to i8
  store i8 %i.ab, ptr %i.d, align 1
  store ptr %.03548, ptr %1, align 8
  %.not43 = icmp eq ptr %.13747, null
  br i1 %.not43, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.loopexit
  store ptr %.13747, ptr %3, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.loopexit
  store i32 15, ptr %4, align 4
  br label %bb.j

bb.f:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv
  %i.ad = load i16, ptr %i.ac, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %.03548, i64 2 ; 2 uses
  store i16 %i.ad, ptr %.03548, align 2
  %.not42 = icmp eq ptr %.13747, null
  br i1 %.not42, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %.13747, i64 4
  store i32 -1, ptr %.13747, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.2 = phi ptr [ %i.af, %bb.g ], [ null, %bb.f ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !25

._crit_edge:                                      ; preds = %bb.h, %bb.c
  %.137.lcssa = phi ptr [ %.036, %bb.c ], [ %.2, %bb.h ] ; 2 uses
  %.035.lcssa = phi ptr [ %i.a, %bb.c ], [ %i.ae, %bb.h ]
  store i8 0, ptr %i.d, align 1
  store ptr %.035.lcssa, ptr %1, align 8
  %.not41 = icmp eq ptr %.137.lcssa, null
  br i1 %.not41, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  store ptr %.137.lcssa, ptr %3, align 8
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i, %bb.e
  %.038 = phi i8 [ 1, %bb.e ], [ 0, %bb.i ], [ 0, %._crit_edge ]
  ret i8 %.038
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL22_toUnicodeWithCallbackP23UConverterToUnicodeArgsP10UErrorCode(ptr noundef nonnull %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [31 x i8], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  br i1 %i.j, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.sink.split, label %bb.c

.sink.split:                                      ; preds = %bb.b, %bb.a
  %.0144.ph = phi i32 [ 0, %bb.a ], [ -1, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.s = load ptr, ptr %i.r, align 8
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  %.0157 = phi ptr [ %i.p, %bb.b ], [ %i.s, %.sink.split ]
  %.0144 = phi i32 [ 0, %bb.b ], [ %.0144.ph, %.sink.split ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 282 ; 9 uses
  %i.u = load i8, ptr %i.t, align 2               ; 2 uses
  %i.v = icmp sgt i8 %i.u, -1
  br i1 %i.v, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = sext i8 %i.u to i64
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 2
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 250
  %i.ac = sub nsw i64 0, %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 2 %i.ab, i64 %i.ac, i1 false)
  store ptr %i.a, ptr %i.d, align 8
  %i.ad = load i8, ptr %i.t, align 2
  %i.ae = sext i8 %i.ad to i64
  %i.af = sub nsw i64 0, %i.ae
  %i.ag = getelementptr inbounds i8, ptr %i.a, i64 %i.af
  store ptr %i.ag, ptr %i.x, align 8
  store i8 0, ptr %i.z, align 2
  store i8 0, ptr %i.t, align 2
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.1145 = phi i32 [ -1, %bb.d ], [ %.0144, %bb.c ]
  %.0136 = phi ptr [ %i.e, %bb.d ], [ null, %bb.c ]
  %.0132 = phi ptr [ %i.y, %bb.d ], [ null, %bb.c ]
  %.0128 = phi i32 [ %.0144, %bb.d ], [ 0, %bb.c ]
  %.0127 = phi i8 [ %i.aa, %bb.d ], [ 0, %bb.c ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 250 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 90 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 65
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 284 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.backedge, %bb.e
  %.0155 = phi ptr [ %i.e, %bb.e ], [ %i.en, %.loopexit.backedge ]
  %.0153 = phi ptr [ %i.g, %bb.e ], [ %i.eo, %.loopexit.backedge ]
  %.0149 = phi ptr [ %i.i, %bb.e ], [ %.3152, %.loopexit.backedge ]
  %.2146 = phi i32 [ %.1145, %bb.e ], [ %.2146.be, %.loopexit.backedge ]
  %.1137 = phi ptr [ %.0136, %bb.e ], [ %.1137.be, %.loopexit.backedge ]
  %.1133 = phi ptr [ %.0132, %bb.e ], [ %.3135, %.loopexit.backedge ]
  %.1129 = phi i32 [ %.0128, %bb.e ], [ %.3131, %.loopexit.backedge ]
  %.1 = phi i8 [ %.0127, %bb.e ], [ %.3, %.loopexit.backedge ]
  %i.ar = load i32, ptr %1, align 4
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %bb.j, label %bb.f

bb.f:                                             ; preds = %.loopexit
  call void %.0157(ptr noundef nonnull %0, ptr noundef nonnull %1) #14
  %i.at = load i32, ptr %1, align 4
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = load i8, ptr %i.ah, align 2
  %.not166 = icmp eq i8 %i.av, 0
  br i1 %.not166, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = load ptr, ptr %i.d, align 8
  %i.ax = load ptr, ptr %i.ai, align 8
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.az = load i8, ptr %i.aj, align 8
  %i.ba = icmp ne i8 %i.az, 0
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %bb.f, %bb.g, %bb.h, %bb.i
  %.0142 = phi i1 [ %i.ba, %bb.i ], [ true, %bb.h ], [ true, %bb.g ], [ true, %bb.f ], [ true, %.loopexit ]
  br label %bb.k

bb.k:                                             ; preds = %bb.aq, %bb.j
  %.1156 = phi ptr [ %.0155, %bb.j ], [ %i.en, %bb.aq ]
  %.1154 = phi ptr [ %.0153, %bb.j ], [ %i.eo, %bb.aq ]
  %.1150 = phi ptr [ %.0149, %bb.j ], [ %.3152, %bb.aq ] ; 16 uses
  %.3147 = phi i32 [ %.2146, %bb.j ], [ %.6, %bb.aq ] ; 6 uses
  %.0143 = phi i32 [ 0, %bb.j ], [ %i.fr, %bb.aq ]
  %.not173 = phi i1 [ true, %bb.j ], [ false, %bb.aq ]
  %.2138 = phi ptr [ %.1137, %bb.j ], [ %.3139, %bb.aq ] ; 3 uses
  %.2134 = phi ptr [ %.1133, %bb.j ], [ %.3135, %bb.aq ] ; 2 uses
  %.2130 = phi i32 [ %.1129, %bb.j ], [ %.3131, %bb.aq ] ; 2 uses
  %.2 = phi i8 [ %.1, %bb.j ], [ %.3, %bb.aq ]    ; 2 uses
  %.not167 = icmp eq ptr %.1150, null
  br i1 %.not167, label %bb.s, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = load ptr, ptr %i.f, align 8
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %.1154 to i64
  %i.be = sub i64 %i.bc, %i.bd                    ; 2 uses
  %i.bf = lshr exact i64 %i.be, 1                 ; 2 uses
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.bi = icmp sgt i32 %.3147, -1
  %i.bj = sub nsw i32 %.3147, %.0143
  %.0.i = select i1 %i.bi, i32 %i.bj, i32 -1      ; 11 uses
  %i.bk = shl i64 %i.be, 1
  %.idx.i = and i64 %i.bk, 8589934588             ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.1150, i64 %.idx.i
  %i.bm = icmp eq i32 %.0.i, 0
  br i1 %i.bm, label %_ZL14_updateOffsetsPiiii.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bn = ptrtoaddr ptr %.1150 to i64             ; 3 uses
  %i.bo = icmp sgt i32 %.0.i, 0
  %i.bp = add i64 %.idx.i, %i.bn
  %i.bq = add i64 %i.bn, 4
  %i.br = call i64 @llvm.umax.i64(i64 %i.bp, i64 %i.bq)
  %i.bs = xor i64 %i.bn, -1
  %i.bt = add i64 %i.br, %i.bs                    ; 3 uses
  br i1 %i.bo, label %.lr.ph24.i.preheader, label %.lr.ph.preheader.i

.lr.ph24.i.preheader:                             ; preds = %bb.n
  %i.bu = lshr i64 %i.bt, 2
  %i.bv = add nuw nsw i64 %i.bu, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bt, 28
  br i1 %min.iters.check, label %.lr.ph24.i.preheader359, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph24.i.preheader
  %n.vec = and i64 %i.bv, 9223372036854775800     ; 3 uses
  %i.bw = shl i64 %n.vec, 2
  %i.bx = getelementptr i8, ptr %.1150, i64 %i.bw
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue358, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue358 ] ; 2 uses
  %i.by = shl i64 %index, 2                       ; 8 uses
  %next.gep = getelementptr i8, ptr %.1150, i64 %i.by ; 3 uses
  %i.bz = getelementptr i8, ptr %.1150, i64 %i.by
  %next.gep337 = getelementptr i8, ptr %i.bz, i64 4
  %i.ca = getelementptr i8, ptr %.1150, i64 %i.by
  %next.gep338 = getelementptr i8, ptr %i.ca, i64 8
  %i.cb = getelementptr i8, ptr %.1150, i64 %i.by
  %next.gep339 = getelementptr i8, ptr %i.cb, i64 12
  %i.cc = getelementptr i8, ptr %.1150, i64 %i.by
  %next.gep340 = getelementptr i8, ptr %i.cc, i64 16
  %i.cd = getelementptr i8, ptr %.1150, i64 %i.by
  %next.gep341 = getelementptr i8, ptr %i.cd, i64 20
  %i.ce = getelementptr i8, ptr %.1150, i64 %i.by
  %next.gep342 = getelementptr i8, ptr %i.ce, i64 24
  %i.cf = getelementptr i8, ptr %.1150, i64 %i.by
  %next.gep343 = getelementptr i8, ptr %i.cf, i64 28
  %i.cg = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4 ; 5 uses
  %wide.load344 = load <4 x i32>, ptr %i.cg, align 4 ; 5 uses
  %i.ch = icmp sgt <4 x i32> %wide.load, splat (i32 -1) ; 4 uses
  %i.ci = icmp sgt <4 x i32> %wide.load344, splat (i32 -1) ; 4 uses
  %i.cj = extractelement <4 x i1> %i.ch, i64 0
  br i1 %i.cj, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.ck = extractelement <4 x i32> %wide.load, i64 0
  %i.cl = add nuw nsw i32 %i.ck, %.0.i
  store i32 %i.cl, ptr %next.gep, align 4
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.cm = extractelement <4 x i1> %i.ch, i64 1
  br i1 %i.cm, label %pred.store.if345, label %pred.store.continue346

pred.store.if345:                                 ; preds = %pred.store.continue
  %i.cn = extractelement <4 x i32> %wide.load, i64 1
  %i.co = add nuw nsw i32 %i.cn, %.0.i
  store i32 %i.co, ptr %next.gep337, align 4
  br label %pred.store.continue346

pred.store.continue346:                           ; preds = %pred.store.if345, %pred.store.continue
  %i.cp = extractelement <4 x i1> %i.ch, i64 2
  br i1 %i.cp, label %pred.store.if347, label %pred.store.continue348

pred.store.if347:                                 ; preds = %pred.store.continue346
  %i.cq = extractelement <4 x i32> %wide.load, i64 2
  %i.cr = add nuw nsw i32 %i.cq, %.0.i
  store i32 %i.cr, ptr %next.gep338, align 4
  br label %pred.store.continue348

pred.store.continue348:                           ; preds = %pred.store.if347, %pred.store.continue346
  %i.cs = extractelement <4 x i1> %i.ch, i64 3
  br i1 %i.cs, label %pred.store.if349, label %pred.store.continue350

pred.store.if349:                                 ; preds = %pred.store.continue348
  %i.ct = extractelement <4 x i32> %wide.load, i64 3
  %i.cu = add nuw nsw i32 %i.ct, %.0.i
  store i32 %i.cu, ptr %next.gep339, align 4
  br label %pred.store.continue350

pred.store.continue350:                           ; preds = %pred.store.if349, %pred.store.continue348
  %i.cv = extractelement <4 x i1> %i.ci, i64 0
  br i1 %i.cv, label %pred.store.if351, label %pred.store.continue352

pred.store.if351:                                 ; preds = %pred.store.continue350
  %i.cw = extractelement <4 x i32> %wide.load344, i64 0
  %i.cx = add nuw nsw i32 %i.cw, %.0.i
  store i32 %i.cx, ptr %next.gep340, align 4
  br label %pred.store.continue352

pred.store.continue352:                           ; preds = %pred.store.if351, %pred.store.continue350
  %i.cy = extractelement <4 x i1> %i.ci, i64 1
  br i1 %i.cy, label %pred.store.if353, label %pred.store.continue354

pred.store.if353:                                 ; preds = %pred.store.continue352
  %i.cz = extractelement <4 x i32> %wide.load344, i64 1
  %i.da = add nuw nsw i32 %i.cz, %.0.i
  store i32 %i.da, ptr %next.gep341, align 4
  br label %pred.store.continue354

pred.store.continue354:                           ; preds = %pred.store.if353, %pred.store.continue352
  %i.db = extractelement <4 x i1> %i.ci, i64 2
  br i1 %i.db, label %pred.store.if355, label %pred.store.continue356

pred.store.if355:                                 ; preds = %pred.store.continue354
  %i.dc = extractelement <4 x i32> %wide.load344, i64 2
  %i.dd = add nuw nsw i32 %i.dc, %.0.i
  store i32 %i.dd, ptr %next.gep342, align 4
  br label %pred.store.continue356

pred.store.continue356:                           ; preds = %pred.store.if355, %pred.store.continue354
  %i.de = extractelement <4 x i1> %i.ci, i64 3
  br i1 %i.de, label %pred.store.if357, label %pred.store.continue358

pred.store.if357:                                 ; preds = %pred.store.continue356
  %i.df = extractelement <4 x i32> %wide.load344, i64 3
  %i.dg = add nuw nsw i32 %i.df, %.0.i
  store i32 %i.dg, ptr %next.gep343, align 4
  br label %pred.store.continue358

pred.store.continue358:                           ; preds = %pred.store.if357, %pred.store.continue356
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %pred.store.continue358
  %cmp.n = icmp eq i64 %i.bv, %n.vec
  br i1 %cmp.n, label %_ZL14_updateOffsetsPiiii.exit, label %.lr.ph24.i.preheader359

.lr.ph24.i.preheader359:                          ; preds = %.lr.ph24.i.preheader, %middle.block
  %.01723.i.ph = phi ptr [ %.1150, %.lr.ph24.i.preheader ], [ %i.bx, %middle.block ]
  br label %.lr.ph24.i

.lr.ph.preheader.i:                               ; preds = %bb.n
  %i.di = and i64 %i.bt, -4
  %i.dj = add i64 %i.di, 4
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %.1150, i8 -1, i64 %i.dj, i1 false)
  br label %_ZL14_updateOffsetsPiiii.exit

.lr.ph24.i:                                       ; preds = %.lr.ph24.i.preheader359, %bb.p
  %.01723.i = phi ptr [ %i.dn, %bb.p ], [ %.01723.i.ph, %.lr.ph24.i.preheader359 ] ; 3 uses
  %i.dk = load i32, ptr %.01723.i, align 4        ; 2 uses
  %i.dl = icmp sgt i32 %i.dk, -1
  br i1 %i.dl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph24.i
  %i.dm = add nuw nsw i32 %i.dk, %.0.i
  store i32 %i.dm, ptr %.01723.i, align 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph24.i
  %i.dn = getelementptr inbounds nuw i8, ptr %.01723.i, i64 4 ; 2 uses
  %i.do = icmp ult ptr %i.dn, %i.bl
  br i1 %i.do, label %.lr.ph24.i, label %_ZL14_updateOffsetsPiiii.exit, !llvm.loop !27

_ZL14_updateOffsetsPiiii.exit:                    ; preds = %bb.p, %middle.block, %bb.m, %.lr.ph.preheader.i
  %i.dp = and i64 %i.bf, 2147483647
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %.1150, i64 %i.dp ; 2 uses
  store ptr %i.dq, ptr %i.h, align 8
  br label %bb.q

bb.q:                                             ; preds = %_ZL14_updateOffsetsPiiii.exit, %bb.l
  %.2151 = phi ptr [ %i.dq, %_ZL14_updateOffsetsPiiii.exit ], [ %.1150, %bb.l ] ; 2 uses
  %i.dr = icmp sgt i32 %.3147, -1
  br i1 %i.dr, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ds = load ptr, ptr %i.d, align 8
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = ptrtoint ptr %.1156 to i64
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = trunc i64 %i.dv to i32
  %i.dx = add nsw i32 %.3147, %i.dw
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.k
  %.3152 = phi ptr [ null, %bb.k ], [ %.2151, %bb.r ], [ %.2151, %bb.q ] ; 2 uses
  %.5 = phi i32 [ %.3147, %bb.k ], [ %i.dx, %bb.r ], [ %.3147, %bb.q ] ; 4 uses
  %i.dy = load i8, ptr %i.t, align 2              ; 2 uses
  %i.dz = sext i8 %i.dy to i64
  %i.ea = icmp slt i8 %i.dy, 0
  br i1 %i.ea, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.eb = icmp eq ptr %.2138, null
  br i1 %i.eb, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ec = load ptr, ptr %i.d, align 8
  %i.ed = load ptr, ptr %i.ai, align 8
  %i.ee = load i8, ptr %i.ah, align 2
  %i.ef = sub nsw i64 0, %i.dz
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 2 %i.ak, i64 %i.ef, i1 false)
  store ptr %i.a, ptr %i.d, align 8
  %i.eg = load i8, ptr %i.t, align 2
  %i.eh = sext i8 %i.eg to i64
  %i.ei = sub nsw i64 0, %i.eh
  %i.ej = getelementptr inbounds i8, ptr %i.a, i64 %i.ei
  store ptr %i.ej, ptr %i.ai, align 8
  store i8 0, ptr %i.ah, align 2
  %i.ek = load i8, ptr %i.t, align 2
  %i.el = sext i8 %i.ek to i32
  %i.em = add nsw i32 %.5, %i.el
  %spec.store.select = call i32 @llvm.smax.i32(i32 %i.em, i32 -1)
  store i8 0, ptr %i.t, align 2
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  store i32 5, ptr %1, align 4
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.s
  %.6 = phi i32 [ %spec.store.select, %bb.u ], [ %.5, %bb.v ], [ %.5, %bb.s ] ; 3 uses
  %.3139 = phi ptr [ %i.ec, %bb.u ], [ %.2138, %bb.v ], [ %.2138, %bb.s ] ; 6 uses
  %.3135 = phi ptr [ %i.ed, %bb.u ], [ %.2134, %bb.v ], [ %.2134, %bb.s ] ; 4 uses
  %.3131 = phi i32 [ %.5, %bb.u ], [ %.2130, %bb.v ], [ %.2130, %bb.s ] ; 3 uses
  %.3 = phi i8 [ %i.ee, %bb.u ], [ %.2, %bb.v ], [ %.2, %bb.s ] ; 4 uses
  %i.en = load ptr, ptr %i.d, align 8             ; 5 uses
  %i.eo = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.ep = load i32, ptr %1, align 4               ; 2 uses
  %i.eq = icmp sgt i32 %i.ep, 0
  br i1 %i.eq, label %bb.af, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.er = load ptr, ptr %i.ai, align 8
  %i.es = icmp ult ptr %i.en, %i.er
  br i1 %i.es, label %.loopexit.backedge, label %bb.y, !llvm.loop !28

bb.y:                                             ; preds = %bb.x
  %.not169 = icmp eq ptr %.3139, null
  br i1 %.not169, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store ptr %.3139, ptr %i.d, align 8
  store ptr %.3135, ptr %i.ai, align 8
  store i8 %.3, ptr %i.ah, align 2
  br label %.loopexit.backedge

bb.aa:                                            ; preds = %bb.y
  %i.et = load i8, ptr %i.ah, align 2
  %.not170 = icmp eq i8 %i.et, 0
  br i1 %.not170, label %.critedge, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eu = load i8, ptr %i.aj, align 8
  %i.ev = icmp sgt i8 %i.eu, 0
  br i1 %i.ev, label %.thread178, label %bb.ac

.thread178:                                       ; preds = %bb.ab
  store i32 11, ptr %1, align 4
  br label %bb.al

bb.ac:                                            ; preds = %bb.ab
  br i1 %.0142, label %.loopexit.backedge, label %bb.ad

.loopexit.backedge:                               ; preds = %bb.x, %bb.ac, %bb.z
  %.2146.be = phi i32 [ %.3131, %bb.z ], [ %.6, %bb.ac ], [ %.6, %bb.x ]
  %.1137.be = phi ptr [ null, %bb.z ], [ null, %bb.ac ], [ %.3139, %bb.x ]
  br label %.loopexit, !llvm.loop !28

bb.ad:                                            ; preds = %bb.ac
  %i.ew = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.ex = load ptr, ptr %i.ew, align 8            ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 40
  %i.ez = load i32, ptr %i.ey, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i32 %i.ez, ptr %i.fa, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  store i32 0, ptr %i.fb, align 4
  store i8 0, ptr %i.aj, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.c, i64 93
  store i8 0, ptr %i.fc, align 1
  store i8 0, ptr %i.al, align 2
  store i8 0, ptr %i.t, align 2
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ex, i64 32
  %i.fe = load ptr, ptr %i.fd, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 40
  %i.fg = load ptr, ptr %i.ff, align 8            ; 2 uses
  %.not35.i = icmp eq ptr %i.fg, null
  br i1 %.not35.i, label %.critedge, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void %i.fg(ptr noundef nonnull %i.c, i32 noundef 1) #14, !inline_history !6
  br label %.critedge

bb.af:                                            ; preds = %bb.w
  br i1 %.not173, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  switch i32 %i.ep, label %bb.ah [
    i32 10, label %bb.al
    i32 19, label %bb.al
    i32 18, label %bb.al
    i32 12, label %bb.al
    i32 11, label %bb.al
  ]

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.not174 = icmp eq ptr %.3139, null
  br i1 %.not174, label %.critedge, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fh = load ptr, ptr %i.ai, align 8
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = ptrtoint ptr %i.en to i64
  %i.fk = sub i64 %i.fi, %i.fj                    ; 3 uses
  %i.fl = trunc i64 %i.fk to i32
  %i.fm = icmp sgt i32 %i.fl, 0
  br i1 %i.fm, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.fn = and i64 %i.fk, 2147483647
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.ak, ptr align 1 %i.en, i64 %i.fn, i1 false)
  %i.fo = trunc i64 %i.fk to i8
  %i.fp = sub i8 0, %i.fo
  store i8 %i.fp, ptr %i.t, align 2
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  store ptr %.3139, ptr %i.d, align 8
  store ptr %.3135, ptr %i.ai, align 8
  store i8 %.3, ptr %i.ah, align 2
  br label %.critedge

bb.al:                                            ; preds = %.thread178, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag
  %i.fq = load i8, ptr %i.aj, align 8             ; 3 uses
  store i8 %i.fq, ptr %i.al, align 2
  %i.fr = sext i8 %i.fq to i32                    ; 3 uses
  %i.fs = icmp sgt i8 %i.fq, 0
  br i1 %i.fs, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ft = zext nneg i32 %i.fr to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.am, ptr nonnull align 1 %i.an, i64 %i.ft, i1 false)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  store i8 0, ptr %i.aj, align 8
  %i.fu = load i32, ptr %i.ao, align 4            ; 2 uses
  %i.fv = icmp eq i32 %i.fu, 1
  br i1 %i.fv, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.fw = load i32, ptr %1, align 4
  %i.fx = icmp eq i32 %i.fw, 10
  br i1 %i.fx, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %i.ao, align 4
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an
  %i.fy = phi i32 [ 0, %bb.ap ], [ 1, %bb.ao ], [ %i.fu, %bb.an ]
  %i.fz = load ptr, ptr %i.ap, align 8
  %i.ga = load ptr, ptr %i.aq, align 8
  call void %i.fz(ptr noundef %i.ga, ptr noundef nonnull %0, ptr noundef nonnull %i.am, i32 noundef %i.fr, i32 noundef %i.fy, ptr noundef nonnull %1) #14
  store i32 1, ptr %i.ao, align 4
  br label %bb.k, !llvm.loop !29

.critedge:                                        ; preds = %bb.aa, %bb.ae, %bb.ad, %bb.ah, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

declare i32 @u_terminateChars_78(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local i32 @ucnv_toUChars_78(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %6 = alloca %struct.UConverterToUnicodeArgs, align 8 ; 7 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca [1024 x i16], align 16            ; 5 uses
  store ptr %1, ptr %i.b, align 8
  store ptr %3, ptr %i.c, align 8
  %i.f = icmp eq ptr %5, null
  br i1 %i.f, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %5, align 4
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %bb.v

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq ptr %0, null
  %i.j = icmp slt i32 %2, 0
  %or.cond = or i1 %i.i, %i.j
  br i1 %or.cond, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp ne i32 %2, 0                        ; 2 uses
  %i.l = icmp eq ptr %1, null
  %or.cond3 = and i1 %i.l, %i.k
  %i.m = icmp slt i32 %4, -1
  %or.cond5 = or i1 %or.cond3, %i.m
  br i1 %or.cond5, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = icmp ne i32 %4, 0
  %i.o = icmp eq ptr %3, null
  %or.cond7 = and i1 %i.o, %i.n
  br i1 %or.cond7, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  store i32 1, ptr %5, align 4
  br label %bb.v

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not31.i.i = icmp eq ptr %i.q, @UCNV_TO_U_CALLBACK_SUBSTITUTE_78
  br i1 %.not31.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false)
  store i16 56, ptr %6, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i8 1, ptr %i.r, align 2
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %i.s, align 8
  store i32 0, ptr %i.a, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.q(ptr noundef %i.u, ptr noundef nonnull %6, ptr noundef null, i32 noundef 0, i32 noundef 3, ptr noundef nonnull %i.a) #14, !inline_history !31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.y = load i32, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %i.y, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 0, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 93
  store i8 0, ptr %i.ac, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 90
  store i8 0, ptr %i.ad, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 282
  store i8 0, ptr %i.ae, align 2
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not35.i.i = icmp eq ptr %i.ai, null
  br i1 %.not35.i.i, label %ucnv_resetToUnicode_78.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void %i.ai(ptr noundef nonnull %0, i32 noundef 1) #14, !inline_history !31
  br label %ucnv_resetToUnicode_78.exit

ucnv_resetToUnicode_78.exit:                      ; preds = %bb.i, %bb.j
  %i.aj = icmp eq i32 %4, -1
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %ucnv_resetToUnicode_78.exit
  %i.ak = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #16
  %i.al = trunc i64 %i.ak to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %ucnv_resetToUnicode_78.exit
  %.035 = phi i32 [ %i.al, %bb.k ], [ %4, %ucnv_resetToUnicode_78.exit ] ; 2 uses
  %i.am = icmp sgt i32 %.035, 0
  br i1 %i.am, label %bb.m, label %bb.u

bb.m:                                             ; preds = %bb.l
  %i.an = zext nneg i32 %.035 to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 %i.an ; 2 uses
  %i.ap = ptrtoint ptr %1 to i64                  ; 3 uses
  br i1 %i.k, label %bb.n, label %_Z11pinCapacityIDsEiPT_i.exit

bb.n:                                             ; preds = %bb.m
  %i.aq = add i64 %i.ap, 2147483647
  %i.ar = icmp ugt ptr %1, inttoptr (i64 -2147483648 to ptr)
  %spec.store.select.i = select i1 %i.ar, i64 8589934591, i64 %i.aq
  %i.as = sub i64 %spec.store.select.i, %i.ap
  %i.at = lshr i64 %i.as, 1
  %i.au = trunc i64 %i.at to i32
  %i.av = call i32 @llvm.smin.i32(i32 %2, i32 %i.au)
  br label %_Z11pinCapacityIDsEiPT_i.exit

_Z11pinCapacityIDsEiPT_i.exit:                    ; preds = %bb.m, %bb.n
  %.0.i = phi i32 [ %i.av, %bb.n ], [ 0, %bb.m ]  ; 2 uses
  %i.aw = sext i32 %.0.i to i64
  %i.ax = getelementptr inbounds [2 x i8], ptr %1, i64 %i.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store i32 0, ptr %i.d, align 4
  call void @ucnv_toUnicode_78(ptr noundef nonnull %0, ptr noundef nonnull %i.b, ptr noundef %i.ax, ptr noundef nonnull %i.c, ptr noundef nonnull %i.ao, ptr noundef null, i8 noundef signext 1, ptr noundef nonnull %i.d)
  %i.ay = load ptr, ptr %i.b, align 8
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %i.az, %i.ap
  %i.bb = lshr exact i64 %i.ba, 1
  %i.bc = trunc i64 %i.bb to i32                  ; 2 uses
  %i.bd = load i32, ptr %i.d, align 4             ; 2 uses
  %i.be = icmp eq i32 %i.bd, 15
  br i1 %i.be, label %bb.o, label %bb.r

bb.o:                                             ; preds = %_Z11pinCapacityIDsEiPT_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 2048
  %i.bg = ptrtoint ptr %i.e to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.0 = phi i32 [ %i.bc, %bb.o ], [ %i.bm, %bb.p ]
  store ptr %i.e, ptr %i.b, align 8
  store i32 0, ptr %i.d, align 4
  call void @ucnv_toUnicode_78(ptr noundef nonnull %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.c, ptr noundef nonnull %i.ao, ptr noundef null, i8 noundef signext 1, ptr noundef nonnull %i.d)
  %i.bh = load ptr, ptr %i.b, align 8
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.bg
  %i.bk = lshr exact i64 %i.bj, 1
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = add nsw i32 %.0, %i.bl                  ; 2 uses
  %i.bn = load i32, ptr %i.d, align 4             ; 2 uses
  %i.bo = icmp eq i32 %i.bn, 15
  br i1 %i.bo, label %bb.p, label %bb.q, !llvm.loop !30

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_Z11pinCapacityIDsEiPT_i.exit
  %i.bp = phi i32 [ %i.bn, %bb.q ], [ %i.bd, %_Z11pinCapacityIDsEiPT_i.exit ] ; 2 uses
  %.1 = phi i32 [ %i.bm, %bb.q ], [ %i.bc, %_Z11pinCapacityIDsEiPT_i.exit ]
  %i.bq = icmp slt i32 %i.bp, 1
  br i1 %i.bq, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i32 %i.bp, ptr %5, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  br label %bb.u

bb.u:                                             ; preds = %bb.l, %bb.t
  %.036 = phi i32 [ %.0.i, %bb.t ], [ %2, %bb.l ]
  %.2 = phi i32 [ %.1, %bb.t ], [ 0, %bb.l ]
  %i.br = call i32 @u_terminateUChars_78(ptr noundef %1, i32 noundef %.036, i32 noundef %.2, ptr noundef nonnull %5) #14
  br label %bb.v

bb.v:                                             ; preds = %bb.a, %bb.b, %bb.u, %bb.f
  %.034 = phi i32 [ %i.br, %bb.u ], [ 0, %bb.f ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.034
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

declare i32 @u_terminateUChars_78(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i32 0, -2147483648) i32 @ucnv_getNextUChar_78(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.UConverterToUnicodeArgs, align 8 ; 13 uses
  %i.a = alloca [2 x i16], align 2                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = icmp eq ptr %3, null
  br i1 %i.b, label %bb.an, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %3, align 4
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.an

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq ptr %0, null
  %i.f = icmp eq ptr %1, null
  %or.cond = or i1 %i.e, %i.f
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %3, align 4
  br label %bb.an

bb.e:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %1, align 8                ; 4 uses
  %i.h = icmp ult ptr %2, %i.g
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %3, align 4
  br label %bb.an

bb.g:                                             ; preds = %bb.e
  %i.i = ptrtoint ptr %2 to i64
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = icmp ugt i64 %i.k, 2147483647
  %i.m = icmp ugt ptr %2, %i.g
  %or.cond129 = and i1 %i.m, %i.l
  br i1 %or.cond129, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 1, ptr %3, align 4
  br label %bb.an

bb.i:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 93 ; 6 uses
  %i.o = load i8, ptr %i.n, align 1               ; 4 uses
  %i.p = zext nneg i8 %i.o to i32
  %i.q = icmp sgt i8 %i.o, 0
  br i1 %i.q, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.s = load i16, ptr %i.r, align 2
  %i.t = zext i16 %i.s to i32                     ; 4 uses
  %i.u = and i32 %i.t, 64512
  %i.v = icmp ne i32 %i.u, 55296
  %.not125 = icmp eq i8 %i.o, 1
  %or.cond131 = or i1 %.not125, %i.v
  br i1 %or.cond131, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 146
  %i.x = load i16, ptr %i.w, align 2
  %i.y = zext i16 %i.x to i32                     ; 2 uses
  %i.z = and i32 %i.y, 64512
  %i.aa = icmp eq i32 %i.z, 56320
  br i1 %i.aa, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ab = shl nuw nsw i32 %i.t, 10
  %i.ac = add nsw i32 %i.ab, -56613888
  %i.ad = add nuw nsw i32 %i.ac, %i.y
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.j
  %.1106 = phi i32 [ %i.t, %bb.j ], [ %i.ad, %bb.l ], [ %i.t, %bb.k ] ; 3 uses
  %.1103 = phi i32 [ 1, %bb.j ], [ 2, %bb.l ], [ 1, %bb.k ] ; 3 uses
  %i.ae = trunc nuw nsw i32 %.1103 to i8
  %i.af = sub nsw i8 %i.o, %i.ae                  ; 3 uses
  store i8 %i.af, ptr %i.n, align 1
  %i.ag = icmp sgt i8 %i.af, 0
  br i1 %i.ag, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ah = zext nneg i32 %.1103 to i64
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.ah
  %i.aj = shl nuw i8 %i.af, 1
  %i.ak = zext i8 %i.aj to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 2 %i.ai, i64 %i.ak, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.al = and i32 %.1106, -1024
  %i.am = icmp eq i32 %i.al, 55296
  %i.an = icmp samesign uge i32 %.1103, %i.p
  %or.cond130.not = and i1 %i.am, %i.an
  br i1 %or.cond130.not, label %bb.p, label %bb.an

bb.p:                                             ; preds = %bb.o, %bb.i
  %.2107 = phi i32 [ %.1106, %bb.o ], [ -1, %bb.i ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %0, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i8 1, ptr %i.ap, align 2
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr null, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.g, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %2, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 5 uses
  store ptr %i.a, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  store ptr %i.au, ptr %i.av, align 8
  store i16 56, ptr %4, align 8
  %i.aw = icmp slt i32 %.2107, 0
  br i1 %i.aw, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ay = load i8, ptr %i.ax, align 8
  %i.az = icmp eq i8 %i.ay, 0
  br i1 %i.az, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 80
  %i.bf = load ptr, ptr %i.be, align 8            ; 2 uses
  %.not126 = icmp eq ptr %i.bf, null
  br i1 %.not126, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = call noundef i32 %i.bf(ptr noundef nonnull %4, ptr noundef nonnull %3) #14 ; 2 uses
  %i.bh = load ptr, ptr %i.ar, align 8
  store ptr %i.bh, ptr %1, align 8
  %i.bi = load i32, ptr %3, align 4               ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 8
  br i1 %i.bj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call fastcc void @_ZL6_resetP10UConverter21UConverterResetChoicea(ptr noundef nonnull %0, i32 noundef 1, i8 noundef signext 0)
  br label %bb.an

bb.u:                                             ; preds = %bb.s
  %i.bk = icmp slt i32 %i.bi, 1
  %i.bl = icmp sgt i32 %i.bg, -1
  %or.cond3 = and i1 %i.bl, %i.bk
  br i1 %or.cond3, label %bb.an, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r, %bb.q
  call fastcc void @_ZL22_toUnicodeWithCallbackP23UConverterToUnicodeArgsP10UErrorCode(ptr noundef %4, ptr noundef %3)
  %i.bm = load i32, ptr %3, align 4               ; 2 uses
  %i.bn = icmp eq i32 %i.bm, 15
  br i1 %i.bn, label %.thread169, label %bb.w

.thread169:                                       ; preds = %bb.v
  store i32 0, ptr %3, align 4
end_hunk_0
begin_hunk_1_@ucnv_convertEx_78:bb.a
  store ptr %0, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %14, i64 2 ; 4 uses
  store i8 0, ptr %i.cc, align 2
  %i.cd = getelementptr inbounds nuw i8, ptr %14, i64 48
  store ptr null, ptr %i.cd, align 8
  %i.ce = load ptr, ptr %2, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 4 uses
  store ptr %i.ce, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %14, i64 40
  store ptr %3, ptr %i.cg, align 8
  store i16 56, ptr %14, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %1, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %13, i64 2
  store i8 %11, ptr %i.ci, align 2
  %i.cj = getelementptr inbounds nuw i8, ptr %13, i64 48
  store ptr null, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  store ptr %i.j, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %13, i64 24
  store ptr %.0162, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %13, i64 40
  store ptr %.1, ptr %i.cm, align 8
  store i16 56, ptr %13, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 281
  %i.co = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 93 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 282 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.ct = icmp eq i8 %11, 0                       ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.cv = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.ai
  %i.cw = load ptr, ptr %.0164, align 8           ; 2 uses
  %i.cx = load ptr, ptr %.0166, align 8           ; 2 uses
  %i.cy = icmp ult ptr %i.cw, %i.cx
  br i1 %i.cy, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %.backedge
  %i.cz = load i32, ptr %12, align 4
  %i.da = icmp slt i32 %i.cz, 1
  br i1 %i.da, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.db = load i8, ptr %i.cn, align 1
  %i.dc = icmp slt i8 %i.db, 0
  %i.dd = load i8, ptr %i.cc, align 2
  %i.de = icmp ne i8 %i.dd, 0
  %or.cond16 = select i1 %i.dc, i1 true, i1 %i.de
  br i1 %or.cond16, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak, %bb.aj, %.backedge
  store ptr %i.cw, ptr %i.co, align 8
  store ptr %i.cx, ptr %i.cp, align 8
  call fastcc void @_ZL24_fromUnicodeWithCallbackP25UConverterFromUnicodeArgsP10UErrorCode(ptr noundef %14, ptr noundef %12)
  %i.df = load i32, ptr %12, align 4
  %i.dg = icmp slt i32 %i.df, 1
  br i1 %i.dg, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dh = load ptr, ptr %i.co, align 8
  store ptr %i.dh, ptr %.0164, align 8
  br label %.critedge

bb.an:                                            ; preds = %bb.al, %bb.ak
  store ptr %.0163, ptr %.0166, align 8
  store ptr %.0163, ptr %.0164, align 8
  %i.di = load i8, ptr %i.cq, align 1
  %i.dj = icmp sgt i8 %i.di, 0
  br i1 %i.dj, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.dk = call fastcc noundef signext i8 @_ZL28ucnv_outputOverflowToUnicodeP10UConverterPPDsPKDsPPiP10UErrorCode(ptr noundef %1, ptr noundef %.0166, ptr noundef %.1, ptr noundef null, ptr noundef %12)
  %.not201 = icmp eq i8 %i.dk, 0
  br i1 %.not201, label %.backedge.backedge, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %12, align 4
  br label %.backedge.backedge

bb.aq:                                            ; preds = %bb.an
  %i.dl = load ptr, ptr %i.ck, align 8
  %i.dm = icmp eq ptr %i.dl, %.0162
  br i1 %i.dm, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %i.dn = load i8, ptr %i.cr, align 2
  %i.do = icmp sgt i8 %i.dn, -1
  br i1 %i.do, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.dp = load i8, ptr %i.cs, align 8
  %i.dq = icmp eq i8 %i.dp, 0
  br i1 %i.dq, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.dr = load i8, ptr %i.cc, align 2
  %i.ds = icmp ne i8 %i.dr, 0
  %or.cond19 = select i1 %i.ct, i1 true, i1 %i.ds
  br i1 %or.cond19, label %.critedge, label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq
  br i1 %.not193, label %bb.av, label %bb.bg

bb.av:                                            ; preds = %bb.au
  %i.dt = load i32, ptr %i.cu, align 8
  %i.du = icmp slt i32 %i.dt, 0
  br i1 %i.du, label %bb.aw, label %bb.bg

bb.aw:                                            ; preds = %bb.av
  %i.dv = load i8, ptr %i.cr, align 2
  %i.dw = icmp eq i8 %i.dv, 0
  br i1 %i.dw, label %bb.ax, label %bb.bg

bb.ax:                                            ; preds = %bb.aw
  %i.dx = load i32, ptr %12, align 4
  %i.dy = icmp eq i32 %i.dx, -127
  br i1 %i.dy, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store i32 0, ptr %12, align 4
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  call void %.0(ptr noundef nonnull %14, ptr noundef nonnull %13, ptr noundef nonnull %12) #14
  %i.dz = load i32, ptr %12, align 4              ; 3 uses
  %i.ea = icmp eq i32 %i.dz, 15
  br i1 %i.ea, label %.critedge, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.eb = icmp slt i32 %i.dz, 1
  br i1 %i.eb, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ec = load i8, ptr %i.cs, align 8
  %i.ed = icmp sgt i8 %i.ec, 0
  br i1 %i.ed, label %bb.bg, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  store ptr %.0163.sroa.phi255, ptr %.0166, align 8
  store ptr %.0163.sroa.phi255, ptr %.0164, align 8
  br label %.backedge.backedge

bb.bd:                                            ; preds = %bb.ba
  %i.ee = icmp eq i32 %i.dz, -127
  br i1 %i.ee, label %.sink.split, label %bb.be

bb.be:                                            ; preds = %bb.bd
  br i1 %i.ct, label %.critedge.thread, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ef = load i8, ptr %i.cs, align 8
  %i.eg = icmp sgt i8 %i.ef, 0
  br i1 %i.eg, label %.sink.split, label %.critedge.thread228

.critedge.thread228:                              ; preds = %bb.bf
  call fastcc void @_ZL6_resetP10UConverter21UConverterResetChoicea(ptr noundef nonnull %1, i32 noundef 1, i8 noundef signext 0)
  call fastcc void @_ZL6_resetP10UConverter21UConverterResetChoicea(ptr noundef nonnull %0, i32 noundef 2, i8 noundef signext 0)
  %i.eh = load ptr, ptr %i.ck, align 8
  store ptr %i.eh, ptr %4, align 8
  %i.ei = load ptr, ptr %i.cf, align 8            ; 2 uses
  store ptr %i.ei, ptr %2, align 8
  br label %bb.bp

.sink.split:                                      ; preds = %bb.bf, %bb.bd
  %.sink = phi i32 [ 0, %bb.bd ], [ 11, %bb.bf ]
  store i32 %.sink, ptr %12, align 4
  br label %bb.bg

bb.bg:                                            ; preds = %.sink.split, %bb.bb, %bb.aw, %bb.av, %bb.au
  store ptr %.0163, ptr %i.cv, align 8
  call fastcc void @_ZL22_toUnicodeWithCallbackP23UConverterToUnicodeArgsP10UErrorCode(ptr noundef %13, ptr noundef %12)
  %i.ej = load ptr, ptr %i.cv, align 8            ; 2 uses
  store ptr %i.ej, ptr %.0166, align 8
  %i.ek = load i32, ptr %12, align 4              ; 2 uses
  %i.el = icmp eq i32 %i.ek, 15
  br i1 %i.el, label %bb.bk, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.em = icmp slt i32 %i.ek, 1
  br i1 %i.em, label %bb.bi, label %.critedge

bb.bi:                                            ; preds = %bb.bh
  br i1 %i.ct, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  %i.en = icmp eq ptr %i.ej, %.0163
  br i1 %i.en, label %.critedge.thread, label %.backedge.backedge

bb.bk:                                            ; preds = %bb.bg
  store i32 0, ptr %12, align 4
  %i.eo = load ptr, ptr %i.ck, align 8
  %i.ep = icmp ne ptr %i.eo, %.0162
  %or.cond220.not = select i1 %i.ct, i1 true, i1 %i.ep
  br i1 %or.cond220.not, label %.backedge.backedge, label %bb.bm

.backedge.backedge:                               ; preds = %bb.bk, %bb.bl, %bb.bm, %bb.bn, %bb.bo, %bb.bj, %bb.ao, %bb.ap, %bb.bc
  br label %.backedge, !llvm.loop !32

bb.bl:                                            ; preds = %bb.bi
  %.old = load ptr, ptr %i.ck, align 8
  %.old219 = icmp eq ptr %.old, %.0162
  br i1 %.old219, label %bb.bm, label %.backedge.backedge

bb.bm:                                            ; preds = %bb.bk, %bb.bl
  %i.eq = load i8, ptr %i.cr, align 2
  %i.er = icmp sgt i8 %i.eq, -1
  br i1 %i.er, label %bb.bn, label %.backedge.backedge

bb.bn:                                            ; preds = %bb.bm
  %i.es = load i8, ptr %i.cq, align 1
  %i.et = icmp eq i8 %i.es, 0
  br i1 %i.et, label %bb.bo, label %.backedge.backedge

bb.bo:                                            ; preds = %bb.bn
  store i8 1, ptr %i.cc, align 2
  br label %.backedge.backedge

.critedge.thread:                                 ; preds = %bb.be, %bb.bj
  %i.eu = load ptr, ptr %i.ck, align 8
  store ptr %i.eu, ptr %4, align 8
  %i.ev = load ptr, ptr %i.cf, align 8
  store ptr %i.ev, ptr %2, align 8
  br label %bb.bu

.critedge:                                        ; preds = %bb.bh, %bb.az, %bb.at, %bb.am
  %i.ew = load ptr, ptr %i.ck, align 8
  store ptr %i.ew, ptr %4, align 8
  %i.ex = load ptr, ptr %i.cf, align 8            ; 2 uses
  store ptr %i.ex, ptr %2, align 8
  br i1 %i.ct, label %bb.bu, label %bb.bp

bb.bp:                                            ; preds = %.critedge.thread228, %.critedge
  %i.ey = phi ptr [ %i.ei, %.critedge.thread228 ], [ %i.ex, %.critedge ] ; 2 uses
  %i.ez = load i32, ptr %12, align 4
  %i.fa = icmp sgt i32 %i.ez, 0
  br i1 %i.fa, label %bb.bu, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %.not204 = icmp eq ptr %i.ey, %3
  br i1 %.not204, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %bb.bq
  store i8 0, ptr %i.ey, align 1
  %i.fb = load i32, ptr %12, align 4
  %i.fc = icmp eq i32 %i.fb, -124
  br i1 %i.fc, label %bb.bs, label %bb.bu

bb.bs:                                            ; preds = %bb.br
  store i32 0, ptr %12, align 4
  br label %bb.bu

bb.bt:                                            ; preds = %bb.bq
  store i32 -124, ptr %12, align 4
  br label %bb.bu

bb.bu:                                            ; preds = %.critedge.thread, %.critedge, %bb.bp, %bb.br, %bb.bs, %bb.bt, %bb.ad, %bb.y, %bb.a, %bb.b, %bb.s, %bb.n, %bb.k, %bb.h, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i32 @ucnv_convert_78(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.UConverter, align 8         ; 3 uses
  %8 = alloca %struct.UConverter, align 8         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.a = icmp eq ptr %6, null
  br i1 %i.a, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %6, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq ptr %4, null
  %i.e = icmp slt i32 %5, -1
  %or.cond = or i1 %i.d, %i.e
  %i.f = icmp slt i32 %3, 0
  %or.cond3 = or i1 %i.f, %or.cond
  br i1 %or.cond3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = icmp ne i32 %3, 0
  %i.h = icmp eq ptr %2, null
  %or.cond5 = and i1 %i.h, %i.g
  br i1 %or.cond5, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 1, ptr %6, align 4
  br label %bb.n

bb.f:                                             ; preds = %bb.d
  %i.i = icmp eq i32 %5, 0
  br i1 %i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = icmp slt i32 %5, 0
  br i1 %i.j, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.k = load i8, ptr %4, align 1
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.m = tail call i32 @u_terminateChars_78(ptr noundef %2, i32 noundef %3, i32 noundef 0, ptr noundef nonnull %6) #14
  br label %bb.n

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.n = call ptr @ucnv_createConverter_78(ptr noundef nonnull %7, ptr noundef %1, ptr noundef nonnull %6) #14 ; 3 uses
  %i.o = load i32, ptr %6, align 4
  %i.p = icmp slt i32 %i.o, 1
  br i1 %i.p, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.q = call ptr @ucnv_createConverter_78(ptr noundef nonnull %8, ptr noundef %0, ptr noundef nonnull %6) #14 ; 2 uses
  %i.r = load i32, ptr %6, align 4
  %i.s = icmp slt i32 %i.r, 1
  br i1 %i.s, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @ucnv_close_78(ptr noundef %i.n)
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.t = call fastcc noundef i32 @_ZL20ucnv_internalConvertP10UConverterS0_PciPKciP10UErrorCode(ptr noundef %i.q, ptr noundef %i.n, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6)
  call void @ucnv_close_78(ptr noundef %i.n)
  call void @ucnv_close_78(ptr noundef %i.q)
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.a, %bb.b, %bb.m, %bb.l, %bb.i, %bb.e
  %.0 = phi i32 [ %i.t, %bb.m ], [ 0, %bb.e ], [ %i.m, %bb.i ], [ 0, %bb.a ], [ 0, %bb.l ], [ 0, %bb.b ], [ 0, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZL20ucnv_internalConvertP10UConverterS0_PciPKciP10UErrorCode(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 0, -2147483648) %3, ptr noundef nonnull %4, i32 noundef range(i32 -1, -2147483648) %5, ptr noundef nonnull %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca [1024 x i16], align 16            ; 8 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 8 uses
  %i.f = alloca [1024 x i8], align 16             ; 5 uses
  store ptr %4, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  %i.g = icmp slt i32 %5, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %4)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = zext nneg i32 %5 to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %strlen.pn = phi i64 [ %strlen, %bb.b ], [ %i.h, %bb.c ] ; 2 uses
  %.032 = getelementptr inbounds i8, ptr %4, i64 %strlen.pn ; 2 uses
  %i.i = icmp eq i64 %strlen.pn, 0
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i32 @u_terminateChars_78(ptr noundef %2, i32 noundef %3, i32 noundef 0, ptr noundef nonnull %6) #14
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  store ptr %i.b, ptr %i.d, align 8
  store ptr %i.b, ptr %i.c, align 8
  store ptr %2, ptr %i.e, align 8
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = zext nneg i32 %3 to i64
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 2048
  call void @ucnv_convertEx_78(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.l, ptr noundef nonnull %i.a, ptr noundef nonnull %.032, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.m, i8 noundef signext 0, i8 noundef signext 1, ptr noundef nonnull %6)
  %i.n = load ptr, ptr %i.e, align 8
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %2 to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = trunc i64 %i.q to i32                    ; 2 uses
  %i.s = load i32, ptr %6, align 4
  %i.t = icmp eq i32 %i.s, 15
  br i1 %i.t, label %.thread, label %bb.j

.thread:                                          ; preds = %bb.f, %bb.g
  %.038 = phi i32 [ %i.r, %bb.g ], [ 0, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 1024
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 2048
  %i.w = ptrtoint ptr %i.f to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.thread
  %.1 = phi i32 [ %.038, %.thread ], [ %i.ab, %bb.h ]
  store i32 0, ptr %6, align 4
  store ptr %i.f, ptr %i.e, align 8
  call void @ucnv_convertEx_78(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.u, ptr noundef nonnull %i.a, ptr noundef nonnull %.032, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.v, i8 noundef signext 0, i8 noundef signext 1, ptr noundef nonnull %6)
  %i.x = load ptr, ptr %i.e, align 8
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.w
  %i.aa = trunc i64 %i.z to i32
  %i.ab = add nsw i32 %.1, %i.aa                  ; 2 uses
  %i.ac = load i32, ptr %6, align 4
  %i.ad = icmp eq i32 %i.ac, 15
  br i1 %i.ad, label %bb.h, label %bb.i, !llvm.loop !33

bb.i:                                             ; preds = %bb.h
  %i.ae = call i32 @u_terminateChars_78(ptr noundef %2, i32 noundef %3, i32 noundef %i.ab, ptr noundef nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i, %bb.e
  %.033 = phi i32 [ %i.j, %bb.e ], [ %i.ae, %bb.i ], [ %i.r, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  ret i32 %.033
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @ucnv_toAlgorithmic_78(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef i32 @_ZL23ucnv_convertAlgorithmica14UConverterTypeP10UConverterPciPKciP10UErrorCode(i8 noundef signext 1, i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6)
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZL23ucnv_convertAlgorithmica14UConverterTypeP10UConverterPciPKciP10UErrorCode(i8 noundef signext range(i8 0, 2) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7) unnamed_addr #0 {
bb.a:
  %8 = alloca %struct.UConverter, align 8         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.a = icmp eq ptr %7, null
  br i1 %i.a, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %7, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq ptr %2, null
  %i.e = icmp eq ptr %5, null
  %or.cond = or i1 %i.d, %i.e
  %i.f = icmp slt i32 %6, -1
  %or.cond3 = or i1 %or.cond, %i.f
  %i.g = icmp slt i32 %4, 0
  %or.cond5 = or i1 %i.g, %or.cond3
  br i1 %or.cond5, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ne i32 %4, 0
  %i.i = icmp eq ptr %3, null
  %or.cond7 = and i1 %i.i, %i.h
  br i1 %or.cond7, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 1, ptr %7, align 4
  br label %bb.o

bb.f:                                             ; preds = %bb.d
  %i.j = icmp eq i32 %6, 0
  br i1 %i.j, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = icmp slt i32 %6, 0
  br i1 %i.k, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.l = load i8, ptr %5, align 1
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.n = tail call i32 @u_terminateChars_78(ptr noundef %3, i32 noundef %4, i32 noundef 0, ptr noundef nonnull %7) #14
  br label %bb.o

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.o = call ptr @ucnv_createAlgorithmicConverter_78(ptr noundef nonnull %8, i32 noundef %1, ptr noundef nonnull @.str.11, i32 noundef 0, ptr noundef nonnull %7) #14 ; 3 uses
  %i.p = load i32, ptr %7, align 4
  %i.q = icmp slt i32 %i.p, 1
  br i1 %i.q, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %.not49 = icmp eq i8 %0, 0
  br i1 %.not49, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @ucnv_resetToUnicode_78(ptr noundef nonnull %2)
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  call void @ucnv_resetFromUnicode_78(ptr noundef nonnull %2)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.041 = phi ptr [ %i.o, %bb.l ], [ %2, %bb.m ]
  %.0 = phi ptr [ %2, %bb.l ], [ %i.o, %bb.m ]
  %i.r = call fastcc noundef i32 @_ZL20ucnv_internalConvertP10UConverterS0_PciPKciP10UErrorCode(ptr noundef %.041, ptr noundef %.0, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7)
  call void @ucnv_close_78(ptr noundef %i.o)
  br label %bb.o

bb.o:                                             ; preds = %bb.j, %bb.a, %bb.b, %bb.n, %bb.i, %bb.e
  %.042 = phi i32 [ %i.r, %bb.n ], [ 0, %bb.e ], [ %i.n, %bb.i ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  ret i32 %.042
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @ucnv_fromAlgorithmic_78(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %or.cond = icmp ugt i32 %1, 33
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %6, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.a = tail call fastcc noundef i32 @_ZL23ucnv_convertAlgorithmica14UConverterTypeP10UConverterPciPKciP10UErrorCode(i8 noundef signext 0, i32 noundef %1, ptr noundef %0, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %i.a, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i32 @ucnv_getType_78(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 69
  %i.f = load i8, ptr %i.e, align 1               ; 2 uses
  %i.g = icmp eq i8 %i.f, 2
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @ucnv_MBCSGetType_78(ptr noundef nonnull %0) #14
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = sext i8 %i.f to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.h, %bb.b ], [ %i.i, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @ucnv_getStarters_78(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %2, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not9 = icmp eq ptr %i.i, null
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void %i.i(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2) #14
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store i32 1, ptr %2, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.b, %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @ucnv_fixFileSeparator_78(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp slt i32 %2, 1
  %or.cond3 = or i1 %or.cond, %i.c
  br i1 %or.cond3, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc noundef ptr @_ZL17ucnv_getAmbiguousPK10UConverter(ptr noundef nonnull %0) ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load i16, ptr %i.f, align 8              ; 3 uses
  %wide.trip.count = zext nneg i32 %2 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check24 = icmp ult i32 %2, 16
  br i1 %min.iters.check24, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.h = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.g, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %pred.store.continue55
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue55 ] ; 17 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %wide.load = load <8 x i16>, ptr %i.i, align 2
  %wide.load25 = load <8 x i16>, ptr %i.j, align 2
  %i.k = icmp eq <8 x i16> %wide.load, %broadcast.splat ; 8 uses
  %i.l = icmp eq <8 x i16> %wide.load25, %broadcast.splat ; 8 uses
  %i.m = extractelement <8 x i1> %i.k, i64 0
  br i1 %i.m, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i16 92, ptr %i.i, align 2
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.n = extractelement <8 x i1> %i.k, i64 1
  br i1 %i.n, label %pred.store.if26, label %pred.store.continue27

pred.store.if26:                                  ; preds = %pred.store.continue
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  store i16 92, ptr %i.p, align 2
  br label %pred.store.continue27

pred.store.continue27:                            ; preds = %pred.store.if26, %pred.store.continue
  %i.q = extractelement <8 x i1> %i.k, i64 2
  br i1 %i.q, label %pred.store.if28, label %pred.store.continue29

pred.store.if28:                                  ; preds = %pred.store.continue27
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i16 92, ptr %i.s, align 2
  br label %pred.store.continue29

pred.store.continue29:                            ; preds = %pred.store.if28, %pred.store.continue27
  %i.t = extractelement <8 x i1> %i.k, i64 3
  br i1 %i.t, label %pred.store.if30, label %pred.store.continue31

pred.store.if30:                                  ; preds = %pred.store.continue29
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 6
  store i16 92, ptr %i.v, align 2
  br label %pred.store.continue31

pred.store.continue31:                            ; preds = %pred.store.if30, %pred.store.continue29
  %i.w = extractelement <8 x i1> %i.k, i64 4
  br i1 %i.w, label %pred.store.if32, label %pred.store.continue33

pred.store.if32:                                  ; preds = %pred.store.continue31
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i16 92, ptr %i.y, align 2
  br label %pred.store.continue33

pred.store.continue33:                            ; preds = %pred.store.if32, %pred.store.continue31
  %i.z = extractelement <8 x i1> %i.k, i64 5
  br i1 %i.z, label %pred.store.if34, label %pred.store.continue35

pred.store.if34:                                  ; preds = %pred.store.continue33
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 10
  store i16 92, ptr %i.ab, align 2
  br label %pred.store.continue35

pred.store.continue35:                            ; preds = %pred.store.if34, %pred.store.continue33
  %i.ac = extractelement <8 x i1> %i.k, i64 6
  br i1 %i.ac, label %pred.store.if36, label %pred.store.continue37

pred.store.if36:                                  ; preds = %pred.store.continue35
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i16 92, ptr %i.ae, align 2
  br label %pred.store.continue37

pred.store.continue37:                            ; preds = %pred.store.if36, %pred.store.continue35
  %i.af = extractelement <8 x i1> %i.k, i64 7
  br i1 %i.af, label %pred.store.if38, label %pred.store.continue39

pred.store.if38:                                  ; preds = %pred.store.continue37
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 14
  store i16 92, ptr %i.ah, align 2
  br label %pred.store.continue39

pred.store.continue39:                            ; preds = %pred.store.if38, %pred.store.continue37
  %i.ai = extractelement <8 x i1> %i.l, i64 0
  br i1 %i.ai, label %pred.store.if40, label %pred.store.continue41

pred.store.if40:                                  ; preds = %pred.store.continue39
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i16 92, ptr %i.ak, align 2
  br label %pred.store.continue41

pred.store.continue41:                            ; preds = %pred.store.if40, %pred.store.continue39
  %i.al = extractelement <8 x i1> %i.l, i64 1
  br i1 %i.al, label %pred.store.if42, label %pred.store.continue43

pred.store.if42:                                  ; preds = %pred.store.continue41
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 18
  store i16 92, ptr %i.an, align 2
  br label %pred.store.continue43

pred.store.continue43:                            ; preds = %pred.store.if42, %pred.store.continue41
  %i.ao = extractelement <8 x i1> %i.l, i64 2
  br i1 %i.ao, label %pred.store.if44, label %pred.store.continue45

pred.store.if44:                                  ; preds = %pred.store.continue43
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 20
  store i16 92, ptr %i.aq, align 2
  br label %pred.store.continue45

pred.store.continue45:                            ; preds = %pred.store.if44, %pred.store.continue43
  %i.ar = extractelement <8 x i1> %i.l, i64 3
  br i1 %i.ar, label %pred.store.if46, label %pred.store.continue47

pred.store.if46:                                  ; preds = %pred.store.continue45
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 22
  store i16 92, ptr %i.at, align 2
  br label %pred.store.continue47

pred.store.continue47:                            ; preds = %pred.store.if46, %pred.store.continue45
  %i.au = extractelement <8 x i1> %i.l, i64 4
  br i1 %i.au, label %pred.store.if48, label %pred.store.continue49

pred.store.if48:                                  ; preds = %pred.store.continue47
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store i16 92, ptr %i.aw, align 2
  br label %pred.store.continue49

pred.store.continue49:                            ; preds = %pred.store.if48, %pred.store.continue47
  %i.ax = extractelement <8 x i1> %i.l, i64 5
  br i1 %i.ax, label %pred.store.if50, label %pred.store.continue51

pred.store.if50:                                  ; preds = %pred.store.continue49
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 26
  store i16 92, ptr %i.az, align 2
  br label %pred.store.continue51

pred.store.continue51:                            ; preds = %pred.store.if50, %pred.store.continue49
  %i.ba = extractelement <8 x i1> %i.l, i64 6
  br i1 %i.ba, label %pred.store.if52, label %pred.store.continue53

pred.store.if52:                                  ; preds = %pred.store.continue51
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 28
  store i16 92, ptr %i.bc, align 2
  br label %pred.store.continue53

pred.store.continue53:                            ; preds = %pred.store.if52, %pred.store.continue51
  %i.bd = extractelement <8 x i1> %i.l, i64 7
  br i1 %i.bd, label %pred.store.if54, label %pred.store.continue55

pred.store.if54:                                  ; preds = %pred.store.continue53
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 30
  store i16 92, ptr %i.bf, align 2
  br label %pred.store.continue55

pred.store.continue55:                            ; preds = %pred.store.if54, %pred.store.continue53
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !34

middle.block:                                     ; preds = %pred.store.continue55
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.h, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !10

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec56 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert57 = insertelement <4 x i16> poison, i16 %i.g, i64 0
  %broadcast.splat58 = shufflevector <4 x i16> %broadcast.splatinsert57, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue68, %vec.epilog.ph
  %index59 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next69, %pred.store.continue68 ] ; 5 uses
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index59 ; 2 uses
  %wide.load60 = load <4 x i16>, ptr %i.bh, align 2
  %i.bi = icmp eq <4 x i16> %wide.load60, %broadcast.splat58 ; 4 uses
  %i.bj = extractelement <4 x i1> %i.bi, i64 0
  br i1 %i.bj, label %pred.store.if61, label %pred.store.continue62

pred.store.if61:                                  ; preds = %vec.epilog.vector.body
  store i16 92, ptr %i.bh, align 2
  br label %pred.store.continue62

pred.store.continue62:                            ; preds = %pred.store.if61, %vec.epilog.vector.body
  %i.bk = extractelement <4 x i1> %i.bi, i64 1
  br i1 %i.bk, label %pred.store.if63, label %pred.store.continue64

pred.store.if63:                                  ; preds = %pred.store.continue62
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index59
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  store i16 92, ptr %i.bm, align 2
  br label %pred.store.continue64

pred.store.continue64:                            ; preds = %pred.store.if63, %pred.store.continue62
  %i.bn = extractelement <4 x i1> %i.bi, i64 2
  br i1 %i.bn, label %pred.store.if65, label %pred.store.continue66

pred.store.if65:                                  ; preds = %pred.store.continue64
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index59
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  store i16 92, ptr %i.bp, align 2
  br label %pred.store.continue66

pred.store.continue66:                            ; preds = %pred.store.if65, %pred.store.continue64
  %i.bq = extractelement <4 x i1> %i.bi, i64 3
  br i1 %i.bq, label %pred.store.if67, label %pred.store.continue68

pred.store.if67:                                  ; preds = %pred.store.continue66
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index59
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 6
  store i16 92, ptr %i.bs, align 2
  br label %pred.store.continue68

pred.store.continue68:                            ; preds = %pred.store.if67, %pred.store.continue66
  %index.next69 = add nuw i64 %index59, 4         ; 2 uses
  %i.bt = icmp eq i64 %index.next69, %n.vec56
  br i1 %i.bt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !35

vec.epilog.middle.block:                          ; preds = %pred.store.continue68
  %cmp.n70 = icmp eq i64 %n.vec56, %wide.trip.count
  br i1 %cmp.n70, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec56, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.bv = load i16, ptr %i.bu, align 2
  %i.bw = icmp eq i16 %i.bv, %i.g
  br i1 %i.bw, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  store i16 92, ptr %i.bu, align 2
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !36

.loopexit:                                        ; preds = %bb.d, %middle.block, %vec.epilog.middle.block, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZL17ucnv_getAmbiguousPK10UConverter(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not10.i = icmp eq ptr %i.g, null
  br i1 %.not10.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull %0) #14, !inline_history !7 ; 2 uses
  %.not11.not.i = icmp eq ptr %i.h, null
  br i1 %.not11.not.i, label %._crit_edge.i, label %ucnv_getName_78.exit

._crit_edge.i:                                    ; preds = %bb.c
  %.pre.i = load ptr, ptr %i.b, align 8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i, %bb.b
  %i.i = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.c, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  br label %ucnv_getName_78.exit

ucnv_getName_78.exit:                             ; preds = %bb.c, %bb.d
  %.1.i = phi ptr [ %i.h, %bb.c ], [ %i.l, %bb.d ] ; 11 uses
  %i.m = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.1.i, ptr noundef nonnull dereferenceable(18) @.str.12) #16
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %ucnv_getName_78.exit
  %i.o = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.1.i, ptr noundef nonnull dereferenceable(18) @.str.13) #16
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.1.i, ptr noundef nonnull dereferenceable(18) @.str.14) #16
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.1.i, ptr noundef nonnull dereferenceable(18) @.str.15) #16
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.1.i, ptr noundef nonnull dereferenceable(20) @.str.16) #16
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.1.i, ptr noundef nonnull dereferenceable(19) @.str.17) #16
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.1.i, ptr noundef nonnull dereferenceable(18) @.str.18) #16
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.1.i, ptr noundef nonnull dereferenceable(18) @.str.19) #16
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.1.i, ptr noundef nonnull dereferenceable(19) @.str.20) #16
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.1.i, ptr noundef nonnull dereferenceable(29) @.str.21) #16
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.1.i, ptr noundef nonnull dereferenceable(19) @.str.22) #16
  %i.ah = icmp eq i32 %i.ag, 0
  %spec.select = select i1 %i.ah, ptr getelementptr inbounds nuw (i8, ptr @_ZL19ambiguousConverters, i64 160), ptr null
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %ucnv_getName_78.exit, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.a
  %.07 = phi ptr [ null, %bb.a ], [ getelementptr inbounds nuw (i8, ptr @_ZL19ambiguousConverters, i64 128), %bb.l ], [ @_ZL19ambiguousConverters, %ucnv_getName_78.exit ], [ getelementptr inbounds nuw (i8, ptr @_ZL19ambiguousConverters, i64 16), %bb.e ], [ %spec.select, %bb.n ], [ getelementptr inbounds nuw (i8, ptr @_ZL19ambiguousConverters, i64 32), %bb.f ], [ getelementptr inbounds nuw (i8, ptr @_ZL19ambiguousConverters, i64 96), %bb.j ], [ getelementptr inbounds nuw (i8, ptr @_ZL19ambiguousConverters, i64 48), %bb.g ], [ getelementptr inbounds nuw (i8, ptr @_ZL19ambiguousConverters, i64 144), %bb.m ], [ getelementptr inbounds nuw (i8, ptr @_ZL19ambiguousConverters, i64 64), %bb.h ], [ getelementptr inbounds nuw (i8, ptr @_ZL19ambiguousConverters, i64 112), %bb.k ], [ getelementptr inbounds nuw (i8, ptr @_ZL19ambiguousConverters, i64 80), %bb.i ]
  ret ptr %.07
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef signext range(i8 0, 2) i8 @ucnv_isAmbiguous_78(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef ptr @_ZL17ucnv_getAmbiguousPK10UConverter(ptr noundef %0)
  %i.b = icmp ne ptr %i.a, null
  %i.c = zext i1 %i.b to i8
  ret i8 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ucnv_setFallback_78(ptr nofree noundef writeonly captures(none) initializes((63, 64)) %0, i8 noundef signext %1) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 63
  store i8 %1, ptr %i.a, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local signext i8 @ucnv_usesFallback_78(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 63
  %i.b = load i8, ptr %i.a, align 1
  ret i8 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ucnv_getInvalidChars_78(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef captures(address_is_null) %2, ptr nofree noundef captures(address_is_null) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %3, null
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %3, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq ptr %2, null
  %i.e = icmp eq ptr %1, null
  %or.cond = or i1 %i.e, %i.d
  %i.f = icmp eq ptr %0, null
  %or.cond3 = or i1 %i.f, %or.cond
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %3, align 4
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.g = load i8, ptr %2, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 90
  %i.i = load i8, ptr %i.h, align 2               ; 4 uses
  %i.j = icmp slt i8 %i.g, %i.i
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 8, ptr %3, align 4
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  store i8 %i.i, ptr %2, align 1
  %i.k = icmp sgt i8 %i.i, 0
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.m = zext nneg i8 %i.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 8 %i.l, i64 %i.m, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.b, %bb.h, %bb.g, %bb.f, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @ucnv_getInvalidUChars_78(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(address_is_null) %2, ptr nofree noundef captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %3, null
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %3, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq ptr %2, null
  %i.e = icmp eq ptr %1, null
  %or.cond = or i1 %i.e, %i.d
  %i.f = icmp eq ptr %0, null
  %or.cond3 = or i1 %i.f, %or.cond
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %3, align 4
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.g = load i8, ptr %2, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.i = load i8, ptr %i.h, align 4               ; 4 uses
end_hunk_1
begin_hunk_2_@ucnv_fromUCountPending_78:bb.a
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp sgt i32 %i.f, -1
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = icmp samesign ult i32 %i.f, 65536
  %i.i = select i1 %i.h, i32 1, i32 2
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 281
  %i.k = load i8, ptr %i.j, align 1
  %i.l = sext i8 %i.k to i32
  %i.m = add nsw i32 %i.i, %i.l
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 281
  %i.o = load i8, ptr %i.n, align 1               ; 2 uses
  %i.p = icmp slt i8 %i.o, 0
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = sext i8 %i.o to i32
  %i.r = sub nsw i32 0, %i.q
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.t = load i32, ptr %i.s, align 4
  %i.u = icmp sgt i32 %i.t, 0
  %. = zext i1 %i.u to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.a, %bb.b, %bb.h, %bb.f, %bb.d
  %.0 = phi i32 [ -1, %bb.a ], [ -1, %bb.d ], [ %i.m, %bb.f ], [ %i.r, %bb.h ], [ %., %bb.i ], [ -1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 -1, 129) i32 @ucnv_toUCountPending_78(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq ptr %0, null
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %1, align 4
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 282
  %i.f = load i8, ptr %i.e, align 2               ; 3 uses
  %i.g = sext i8 %i.f to i32                      ; 2 uses
  %i.h = icmp sgt i8 %i.f, 0
  br i1 %i.h, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = icmp slt i8 %i.f, 0
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.j = sub nsw i32 0, %i.g
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load i8, ptr %i.k, align 8
  %narrow = tail call i8 @llvm.smax.i8(i8 %i.l, i8 0)
  %spec.select = zext nneg i8 %narrow to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e, %bb.a, %bb.b, %bb.g, %bb.d
  %.0 = phi i32 [ %i.g, %bb.e ], [ -1, %bb.d ], [ -1, %bb.a ], [ %i.j, %bb.g ], [ %spec.select, %bb.h ], [ -1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local signext range(i8 0, 2) i8 @ucnv_isFixedWidth_78(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %1, align 4
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 69
  %i.i = load i8, ptr %i.h, align 1               ; 2 uses
  %i.j = icmp eq i8 %i.i, 2
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = tail call i32 @ucnv_MBCSGetType_78(ptr noundef nonnull %0) #14
  br label %ucnv_getType_78.exit

bb.f:                                             ; preds = %bb.d
  %i.l = sext i8 %i.i to i32
  br label %ucnv_getType_78.exit

ucnv_getType_78.exit:                             ; preds = %bb.e, %bb.f
  %.0.i = phi i32 [ %i.k, %bb.e ], [ %i.l, %bb.f ] ; 2 uses
  %i.m = icmp ult i32 %.0.i, 31
  br i1 %i.m, label %switch.lookup, label %bb.g

switch.lookup:                                    ; preds = %ucnv_getType_78.exit
  %i.n = zext nneg i32 %.0.i to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.ucnv_isFixedWidth_78, i64 %i.n
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %bb.g

bb.g:                                             ; preds = %ucnv_getType_78.exit, %switch.lookup, %bb.a, %bb.c
  %.0 = phi i8 [ 0, %bb.a ], [ 0, %bb.c ], [ %switch.load, %switch.lookup ], [ 0, %ucnv_getType_78.exit ]
  ret i8 %.0
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

declare ptr @ucnv_createAlgorithmicConverter_78(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smax.i8(i8, i8) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = !{!"llvm.loop.mustprogress"}
!6 = !{ptr @_ZL6_resetP10UConverter21UConverterResetChoicea}
!7 = !{ptr @ucnv_getName_78}
!8 = !{!"llvm.loop.isvectorized", i32 1}
!9 = !{!"llvm.loop.unroll.runtime.disable"}
!10 = !{!"branch_weights", i32 4, i32 12}
!11 = distinct !{!11, !5}
!12 = !{ptr @ucnv_resetFromUnicode_78, ptr @_ZL6_resetP10UConverter21UConverterResetChoicea}
!13 = distinct !{null}
!14 = distinct !{!14, !5, !8, !9}
!15 = distinct !{!15, !5, !8, !9}
!16 = distinct !{!16, !5, !9, !8}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5, !8, !9}
!19 = distinct !{!19, !5, !9, !8}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5, !8, !9}
!23 = distinct !{!23, !5, !8, !9}
!24 = distinct !{!24, !5, !9, !8}
!25 = distinct !{!25, !5}
!26 = distinct !{!26, !5, !8, !9}
!27 = distinct !{!27, !5, !9, !8}
!28 = distinct !{!28, !5}
!29 = distinct !{!29, !5}
!30 = distinct !{!30, !5}
!31 = !{ptr @ucnv_resetToUnicode_78, ptr @_ZL6_resetP10UConverter21UConverterResetChoicea}
!32 = distinct !{!32, !5}
!33 = distinct !{!33, !5}
!34 = distinct !{!34, !5, !8, !9}
!35 = distinct !{!35, !5, !8, !9}
!36 = distinct !{!36, !5, !9, !8}
end_hunk_2
