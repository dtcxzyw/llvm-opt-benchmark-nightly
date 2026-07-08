inline.NumInlined: 68
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ucnv_getFromUCallBack_78:bb.a
  %i.c = load ptr, ptr %i.b, align 8
  store ptr %i.c, ptr %2, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
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
  %i.a = ptrtoint ptr %2 to i64
  %i.b = load ptr, ptr %1, align 8                ; 3 uses
  %i.c = ptrtoint ptr %i.b to i64
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %3, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.037 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ] ; 2 uses
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
  %.03648 = phi ptr [ %i.b, %.lr.ph.preheader ], [ %i.ag, %bb.h ] ; 4 uses
  %.13847 = phi ptr [ %.037, %.lr.ph.preheader ], [ %.2, %bb.h ] ; 5 uses
  %i.i = icmp eq ptr %.03648, %2
  br i1 %i.i, label %iter.check, label %bb.f

iter.check:                                       ; preds = %.lr.ph
  %i.j = zext nneg i8 %i.g to i64
  %i.k = sub i64 %i.a, %i.c
  %i.l = add nsw i64 %wide.trip.count, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.l) ; 2 uses
  %5 = add i64 %umin, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %5, i64 %wide.trip.count)
  %i.m = sub i64 %umax, %umin                     ; 7 uses
  %min.iters.check = icmp ult i64 %i.m, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check70 = icmp ult i64 %i.m, 32
  br i1 %min.iters.check70, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.m, 24
  %n.vec = and i64 %i.m, -32                      ; 6 uses
  %i.n = add i64 %indvars.iv, %n.vec
  %i.o = getelementptr i8, ptr %i.e, i64 %indvars.iv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.p = getelementptr i8, ptr %i.o, i64 %index   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load = load <16 x i8>, ptr %i.p, align 1
  %wide.load71 = load <16 x i8>, ptr %i.q, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <16 x i8> %wide.load, ptr %i.r, align 1
  store <16 x i8> %wide.load71, ptr %i.s, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !14

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec73 = and i64 %i.m, -8                     ; 5 uses
  %i.u = add i64 %indvars.iv, %n.vec73
  %i.v = getelementptr i8, ptr %i.e, i64 %indvars.iv
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index74 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next76, %vec.epilog.vector.body ] ; 3 uses
  %i.w = getelementptr i8, ptr %i.v, i64 %index74
  %wide.load75 = load <8 x i8>, ptr %i.w, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 %index74
  store <8 x i8> %wide.load75, ptr %i.x, align 1
  %index.next76 = add nuw i64 %index74, 8         ; 2 uses
  %i.y = icmp eq i64 %index.next76, %n.vec73
  br i1 %i.y, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !15

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n77 = icmp eq i64 %i.m, %n.vec73
  br i1 %cmp.n77, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv59.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec73, %vec.epilog.middle.block ]
  %indvars.iv57.ph = phi i64 [ %indvars.iv, %iter.check ], [ %i.n, %vec.epilog.iter.check ], [ %i.u, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %vec.epilog.scalar.ph ], [ %indvars.iv59.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %vec.epilog.scalar.ph ], [ %indvars.iv57.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv57
  %i.aa = load i8, ptr %i.z, align 1
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv59
  store i8 %i.aa, ptr %i.ab, align 1
  %i.ac = icmp samesign ult i64 %indvars.iv.next58, %i.j
  br i1 %i.ac, label %vec.epilog.scalar.ph, label %.loopexit, !llvm.loop !16

.loopexit:                                        ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next60.lcssa = phi i64 [ %n.vec73, %vec.epilog.middle.block ], [ %n.vec, %middle.block ], [ %indvars.iv.next60, %vec.epilog.scalar.ph ]
  %i.ad = trunc i64 %indvars.iv.next60.lcssa to i8
  store i8 %i.ad, ptr %i.f, align 1
  store ptr %.03648, ptr %1, align 8
  %.not43 = icmp eq ptr %.13847, null
  br i1 %.not43, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.loopexit
  store ptr %.13847, ptr %3, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.loopexit
  store i32 15, ptr %4, align 4
  br label %bb.j

bb.f:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %.03648, i64 1 ; 2 uses
  store i8 %i.af, ptr %.03648, align 1
  %.not42 = icmp eq ptr %.13847, null
  br i1 %.not42, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %.13847, i64 4
  store i32 -1, ptr %.13847, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.2 = phi ptr [ %i.ah, %bb.g ], [ null, %bb.f ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !17

._crit_edge:                                      ; preds = %bb.h, %bb.c
  %.138.lcssa = phi ptr [ %.037, %bb.c ], [ %.2, %bb.h ] ; 2 uses
  %.036.lcssa = phi ptr [ %i.b, %bb.c ], [ %i.ag, %bb.h ]
  store i8 0, ptr %i.f, align 1
  store ptr %.036.lcssa, ptr %1, align 8
  %.not41 = icmp eq ptr %.138.lcssa, null
  br i1 %.not41, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  store ptr %.138.lcssa, ptr %3, align 8
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i, %bb.e
  %.034 = phi i8 [ 1, %bb.e ], [ 0, %bb.i ], [ 0, %._crit_edge ]
  ret i8 %.034
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
  %.0152.ph = phi i32 [ 0, %bb.a ], [ -1, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.s = load ptr, ptr %i.r, align 8
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  %.0152 = phi i32 [ 0, %bb.b ], [ %.0152.ph, %.sink.split ] ; 2 uses
  %.0 = phi ptr [ %i.p, %bb.b ], [ %i.s, %.sink.split ]
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
  %.neg = mul nsw i64 %i.w, 4294967294
  %i.ac = and i64 %.neg, 4294967294
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 4 %i.ab, i64 %i.ac, i1 false)
  store ptr %i.a, ptr %i.d, align 8
  %i.ad = load i8, ptr %i.t, align 1
  %i.ae = sext i8 %i.ad to i64
  %i.af = sub nsw i64 0, %i.ae
  %i.ag = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.af
  store ptr %i.ag, ptr %i.x, align 8
  store i8 0, ptr %i.z, align 2
  store i8 0, ptr %i.t, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.1153 = phi i32 [ -1, %bb.d ], [ %.0152, %bb.c ]
  %.0143 = phi ptr [ %i.e, %bb.d ], [ null, %bb.c ]
  %.0139 = phi ptr [ %i.y, %bb.d ], [ null, %bb.c ]
  %.0135 = phi i32 [ %.0152, %bb.d ], [ 0, %bb.c ]
  %.0131 = phi i8 [ %i.aa, %bb.d ], [ 0, %bb.c ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 84 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 212 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 140 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 142
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 92
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 24
end_hunk_0
