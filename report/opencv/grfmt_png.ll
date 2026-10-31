Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/grfmt_png?download=true
inline.NumInlined: 1700
inline.NumDeleted: 682
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN2cv10PngEncoder21writeToStreamOrBufferEPKvmP8_IO_FILE:bb.a
  store ptr %i.r, ptr %i.f, align 8, !tbaa !142
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

_ZNSt6vectorIhSaIhEE6resizeEm.exit:               ; preds = %bb.i, %bb.j, %bb.k, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i
  %i.s = phi ptr [ %.pre23, %bb.i ], [ %i.h, %bb.j ], [ %i.h, %bb.k ], [ %i.h, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %_ZNSt6vectorIhSaIhEE6resizeEm.exit, %bb.c
  %.0 = phi i64 [ %i.c, %bb.c ], [ %2, %_ZNSt6vectorIhSaIhEE6resizeEm.exit ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #9

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #3

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #6

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv10PngEncoder10writeChunkEP8_IO_FILEPKcPhj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(9064) %0, ptr nofree noundef captures(address_is_null) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.b = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0)
  call void @png_save_uint_32(ptr noundef nonnull %i.a, i32 noundef %4)
  %i.c = call noundef i64 @_ZN2cv10PngEncoder21writeToStreamOrBufferEPKvmP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(9064) %0, ptr noundef nonnull %i.a, i64 noundef 4, ptr noundef %1) ; 0 uses
  %i.d = call noundef i64 @_ZN2cv10PngEncoder21writeToStreamOrBufferEPKvmP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(9064) %0, ptr noundef %2, i64 noundef 4, ptr noundef %1) ; 0 uses
  %i.e = and i64 %i.b, 4294967295
  %i.f = call i64 @crc32(i64 noundef %i.e, ptr noundef %2, i32 noundef 4) ; 2 uses
  %i.g = load i32, ptr %2, align 1
  %i.h = icmp ne i32 %i.g, 1413571686
  %i.i = zext i1 %i.h to i32
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 9040 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !214  ; 2 uses
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 8, !tbaa !214
  call void @png_save_uint_32(ptr noundef nonnull %i.a, i32 noundef %i.l)
  %i.n = call noundef i64 @_ZN2cv10PngEncoder21writeToStreamOrBufferEPKvmP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(9064) %0, ptr noundef nonnull %i.a, i64 noundef 4, ptr noundef %1) ; 0 uses
  %i.o = and i64 %i.f, 4294967295
  %i.p = call i64 @crc32(i64 noundef %i.o, ptr noundef nonnull %i.a, i32 noundef 4)
  %i.q = add i32 %4, -4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.021 = phi i32 [ %i.q, %bb.b ], [ %4, %bb.a ]  ; 3 uses
  %.0.in = phi i64 [ %i.p, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.r = icmp ne ptr %3, null
  %i.s = icmp ne i32 %.021, 0
  %or.cond = and i1 %i.r, %i.s
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = zext i32 %.021 to i64
  %i.u = call noundef i64 @_ZN2cv10PngEncoder21writeToStreamOrBufferEPKvmP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(9064) %0, ptr noundef nonnull %3, i64 noundef %i.t, ptr noundef %1) ; 0 uses
  %i.v = and i64 %.0.in, 4294967295
  %i.w = call i64 @crc32(i64 noundef %i.v, ptr noundef nonnull %3, i32 noundef %.021)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1.in = phi i64 [ %i.w, %bb.d ], [ %.0.in, %bb.c ]
  %.1 = trunc i64 %.1.in to i32
  call void @png_save_uint_32(ptr noundef nonnull %i.a, i32 noundef %.1)
  %i.x = call noundef i64 @_ZN2cv10PngEncoder21writeToStreamOrBufferEPKvmP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(9064) %0, ptr noundef nonnull %i.a, i64 noundef 4, ptr noundef %1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret void
}

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv10PngEncoder10writeIDATsEP8_IO_FILEiPhjj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(9064) %0, ptr nofree noundef captures(address_is_null) %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i8, ptr %3, align 1, !tbaa !117
  %i.b = zext i8 %i.a to i32                      ; 4 uses
  %i.c = and i32 %i.b, 15
  %i.d = icmp eq i32 %i.c, 8
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 240
  %i.f = icmp samesign ult i32 %i.e, 113
  %i.g = icmp ugt i32 %4, 1
  %or.cond = and i1 %i.g, %i.f
  br i1 %or.cond, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = lshr i32 %i.b, 4                         ; 4 uses
  %i.i = shl nuw nsw i32 128, %i.h                ; 2 uses
  %i.j = icmp ule i32 %5, %i.i
  %i.k = icmp ne i32 %i.h, 0
  %i.l = and i1 %i.j, %i.k
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.042 = phi i32 [ %i.n, %.lr.ph ], [ %i.i, %bb.c ] ; 2 uses
  %.03641 = phi i32 [ %i.m, %.lr.ph ], [ %i.h, %bb.c ]
  %i.m = add nsw i32 %.03641, -1                  ; 2 uses
  %i.n = lshr i32 %.042, 1                        ; 2 uses
  %i.o = icmp samesign ule i32 %5, %i.n
  %i.p = icmp samesign ugt i32 %.042, 511
  %i.q = select i1 %i.o, i1 %i.p, i1 false
  br i1 %i.q, label %.lr.ph, label %._crit_edge, !llvm.loop !3

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.036.lcssa = phi i32 [ %i.h, %bb.c ], [ %i.m, %.lr.ph ]
  %i.r = shl i32 %.036.lcssa, 4
  %i.s = or disjoint i32 %i.r, 8                  ; 3 uses
  %i.t = and i32 %i.s, 248
  %.not = icmp eq i32 %i.t, %i.b
  br i1 %.not, label %.lr.ph47, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.u = trunc i32 %i.s to i8
  store i8 %i.u, ptr %3, align 1, !tbaa !117
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !117
  %i.x = and i8 %i.w, -32                         ; 2 uses
  %i.y = shl i32 %i.s, 8
  %i.z = zext i8 %i.x to i32
  %i.aa = or disjoint i32 %i.y, %i.z
  %i.ab = urem i32 %i.aa, 31
  %i.ac = trunc nuw nsw i32 %i.ab to i8
  %i.ad = or disjoint i8 %i.x, %i.ac
  %i.ae = xor i8 %i.ad, 31
  store i8 %i.ae, ptr %i.v, align 1, !tbaa !117
  br label %.lr.ph47

bb.e:                                             ; preds = %bb.b, %bb.a
  %.not4043 = icmp eq i32 %4, 0
  br i1 %.not4043, label %._crit_edge48, label %.lr.ph47

.lr.ph47:                                         ; preds = %bb.d, %._crit_edge, %bb.e
  %i.af = icmp eq i32 %2, 0
  br i1 %i.af, label %.lr.ph47.split.us, label %.lr.ph47.split

.lr.ph47.split.us:                                ; preds = %.lr.ph47, %.lr.ph47.split.us
  %.03745.us = phi ptr [ %i.ah, %.lr.ph47.split.us ], [ %3, %.lr.ph47 ] ; 2 uses
  %.03844.us = phi i32 [ %i.ai, %.lr.ph47.split.us ], [ %4, %.lr.ph47 ] ; 2 uses
  %spec.store.select.us = tail call i32 @llvm.umin.i32(i32 %.03844.us, i32 32768) ; 3 uses
  tail call void @_ZN2cv10PngEncoder10writeChunkEP8_IO_FILEPKcPhj(ptr noundef nonnull align 8 dereferenceable(9064) %0, ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef %.03745.us, i32 noundef %spec.store.select.us)
  %i.ag = zext nneg i32 %spec.store.select.us to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %.03745.us, i64 %i.ag
  %i.ai = sub nuw i32 %.03844.us, %spec.store.select.us ; 2 uses
  %.not40.us = icmp eq i32 %i.ai, 0
  br i1 %.not40.us, label %._crit_edge48, label %.lr.ph47.split.us, !llvm.loop !4

.lr.ph47.split:                                   ; preds = %.lr.ph47, %.lr.ph47.split
  %.03745 = phi ptr [ %i.al, %.lr.ph47.split ], [ %3, %.lr.ph47 ] ; 2 uses
  %.03844 = phi i32 [ %i.am, %.lr.ph47.split ], [ %4, %.lr.ph47 ] ; 2 uses
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %.03844, i32 32768) ; 3 uses
  %i.aj = add nuw nsw i32 %spec.store.select, 4
  tail call void @_ZN2cv10PngEncoder10writeChunkEP8_IO_FILEPKcPhj(ptr noundef nonnull align 8 dereferenceable(9064) %0, ptr noundef %1, ptr noundef nonnull @.str.23, ptr noundef %.03745, i32 noundef %i.aj)
  %i.ak = zext nneg i32 %spec.store.select to i64
  %i.al = getelementptr inbounds nuw i8, ptr %.03745, i64 %i.ak
  %i.am = sub nuw i32 %.03844, %spec.store.select ; 2 uses
  %.not40 = icmp eq i32 %i.am, 0
  br i1 %.not40, label %._crit_edge48, label %.lr.ph47.split, !llvm.loop !4

._crit_edge48:                                    ; preds = %.lr.ph47.split, %.lr.ph47.split.us, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv10PngEncoder11processRectEPhiiiiS1_(ptr noundef nonnull align 8 dereferenceable(9064) %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef writeonly captures(address_is_null) %6) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = icmp sgt i32 %5, 0
  br i1 %i.a, label %.lr.ph255, label %._crit_edge256

.lr.ph255:                                        ; preds = %bb.a
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2304 ; 2 uses
  %i.d = icmp sgt i32 %2, 0                       ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3352 ; 2 uses
  %i.f = icmp sgt i32 %3, 0                       ; 3 uses
  %i.g = icmp slt i32 %3, %2                      ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5448 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 6496 ; 2 uses
  %i.k = icmp eq ptr %6, null
  %i.l = add nsw i32 %2, 1                        ; 3 uses
  %i.m = sext i32 %i.l to i64                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 7544 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 7552
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 7656 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 7664
  %i.r = sext i32 %4 to i64                       ; 2 uses
  %i.s = sext i32 %3 to i64                       ; 6 uses
  %i.t = sext i32 %2 to i64                       ; 4 uses
  %wide.trip.count = zext i32 %2 to i64           ; 5 uses
  %wide.trip.count272 = zext i32 %3 to i64        ; 13 uses
  %wide.trip.count283 = zext nneg i32 %3 to i64
  %wide.trip.count291 = zext nneg i32 %3 to i64
  %7 = sub nsw i64 0, %i.r                        ; 4 uses
  %i.u = sub i64 1, %i.b                          ; 4 uses
  %min.iters.check366 = icmp ult i32 %2, 8
  %n.vec368 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n378 = icmp eq i64 %n.vec368, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.v = add nsw i64 %wide.trip.count, -1
  %min.iters.check348 = icmp ult i32 %3, 8
  %n.vec350 = and i64 %wide.trip.count272, 2147483640 ; 3 uses
  %cmp.n360 = icmp eq i64 %n.vec350, %wide.trip.count272
  %xtraiter400 = and i64 %wide.trip.count272, 1
  %lcmp.mod401.not = icmp eq i64 %xtraiter400, 0
  %i.w = add nsw i64 %wide.trip.count272, -1
  %min.iters.check328 = icmp ult i32 %3, 8
  %n.vec330 = and i64 %wide.trip.count272, 2147483640 ; 3 uses
  %cmp.n342 = icmp eq i64 %n.vec330, %wide.trip.count272
  %xtraiter402 = and i64 %wide.trip.count272, 1
  %lcmp.mod403.not = icmp eq i64 %xtraiter402, 0
  %i.x = add nsw i64 %wide.trip.count272, -1
  %min.iters.check = icmp ult i32 %3, 8
  %n.vec = and i64 %wide.trip.count272, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count272
  %xtraiter404 = and i64 %wide.trip.count272, 1
  %lcmp.mod405.not = icmp eq i64 %xtraiter404, 0
  %i.y = add nsw i64 %wide.trip.count272, -1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph255, %bb.n
  %indvar = phi i64 [ 0, %.lr.ph255 ], [ %indvar.next, %bb.n ] ; 5 uses
  %.0175253 = phi ptr [ %6, %.lr.ph255 ], [ %.1176, %bb.n ] ; 3 uses
  %.0177252 = phi ptr [ null, %.lr.ph255 ], [ %.0187250, %bb.n ] ; 14 uses
  %.0178251 = phi i32 [ 0, %.lr.ph255 ], [ %i.lw, %bb.n ]
  %.0187250 = phi ptr [ %1, %.lr.ph255 ], [ %i.lv, %bb.n ] ; 25 uses
  %.0177252317 = ptrtoaddr ptr %.0177252 to i64   ; 2 uses
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !192  ; 3 uses
  %i.aa = ptrtoaddr ptr %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 1 ; 4 uses
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  br i1 %min.iters.check366, label %.lr.ph.preheader384, label %vector.memcheck363

vector.memcheck363:                               ; preds = %.lr.ph.preheader
  %8 = mul nsw i64 %indvar, %7
  %9 = add i64 %i.u, %8
  %i.ac = add i64 %9, %i.aa
  %i.ad = add i64 %i.ac, -1
  %diff.check364 = icmp ult i64 %i.ad, 7
  br i1 %diff.check364, label %.lr.ph.preheader384, label %vector.body369

vector.body369:                                   ; preds = %vector.memcheck363, %vector.body369
  %index370 = phi i64 [ %index.next375, %vector.body369 ], [ 0, %vector.memcheck363 ] ; 3 uses
  %vec.phi371 = phi <4 x i32> [ %i.aq, %vector.body369 ], [ zeroinitializer, %vector.memcheck363 ]
  %vec.phi372 = phi <4 x i32> [ %i.ar, %vector.body369 ], [ zeroinitializer, %vector.memcheck363 ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.0187250, i64 %index370 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %wide.load373 = load <4 x i8>, ptr %i.ae, align 1, !tbaa !117 ; 3 uses
  %wide.load374 = load <4 x i8>, ptr %i.af, align 1, !tbaa !117 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index370 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store <4 x i8> %wide.load373, ptr %i.ag, align 1, !tbaa !117
  store <4 x i8> %wide.load374, ptr %i.ah, align 1, !tbaa !117
  %i.ai = zext <4 x i8> %wide.load373 to <4 x i32> ; 2 uses
  %i.aj = zext <4 x i8> %wide.load374 to <4 x i32> ; 2 uses
  %i.ak = sub nuw nsw <4 x i32> splat (i32 256), %i.ai
  %i.al = sub nuw nsw <4 x i32> splat (i32 256), %i.aj
  %i.am = icmp slt <4 x i8> %wide.load373, zeroinitializer
  %i.an = icmp slt <4 x i8> %wide.load374, zeroinitializer
  %i.ao = select <4 x i1> %i.am, <4 x i32> %i.ak, <4 x i32> %i.ai
  %i.ap = select <4 x i1> %i.an, <4 x i32> %i.al, <4 x i32> %i.aj
  %i.aq = add <4 x i32> %i.ao, %vec.phi371        ; 2 uses
  %i.ar = add <4 x i32> %i.ap, %vec.phi372        ; 2 uses
  %index.next375 = add nuw i64 %index370, 8       ; 2 uses
  %i.as = icmp eq i64 %index.next375, %n.vec368
  br i1 %i.as, label %middle.block376, label %vector.body369, !llvm.loop !356

middle.block376:                                  ; preds = %vector.body369
  %bin.rdx377 = add <4 x i32> %i.ar, %i.aq
  %i.at = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx377) ; 2 uses
  br i1 %cmp.n378, label %._crit_edge, label %.lr.ph.preheader384

.lr.ph.preheader384:                              ; preds = %vector.memcheck363, %.lr.ph.preheader, %middle.block376
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck363 ], [ 0, %.lr.ph.preheader ], [ %n.vec368, %middle.block376 ] ; 5 uses
  %.0171205.ph = phi i32 [ 0, %vector.memcheck363 ], [ 0, %.lr.ph.preheader ], [ %i.at, %middle.block376 ] ; 2 uses
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader384
  %i.au = getelementptr inbounds nuw i8, ptr %.0187250, i64 %indvars.iv.ph
  %i.av = load i8, ptr %i.au, align 1, !tbaa !117 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ab, i64 %indvars.iv.ph
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !117
  %i.ax = zext i8 %i.av to i32                    ; 2 uses
  %i.ay = sub nuw nsw i32 256, %i.ax
  %i.az = icmp slt i8 %i.av, 0
  %i.ba = select i1 %i.az, i32 %i.ay, i32 %i.ax
  %i.bb = add i32 %i.ba, %.0171205.ph             ; 2 uses
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader384
  %.lcssa386.unr = phi i32 [ poison, %.lr.ph.preheader384 ], [ %i.bb, %.lr.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader384 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.0171205.unr = phi i32 [ %.0171205.ph, %.lr.ph.preheader384 ], [ %i.bb, %.lr.ph.prol ]
  %i.bc = icmp eq i64 %indvars.iv.ph, %i.v
  br i1 %i.bc, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.0171205 = phi i32 [ %i.bs, %.lr.ph ], [ %.0171205.unr, %.lr.ph.prol.loopexit ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0187250, i64 %indvars.iv
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !117 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ab, i64 %indvars.iv
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !117
  %i.bg = zext i8 %i.be to i32                    ; 2 uses
  %i.bh = sub nuw nsw i32 256, %i.bg
  %i.bi = icmp slt i8 %i.be, 0
  %i.bj = select i1 %i.bi, i32 %i.bh, i32 %i.bg
  %i.bk = add i32 %i.bj, %.0171205
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.0187250, i64 %indvars.iv.next
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !117 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ab, i64 %indvars.iv.next
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !117
  %i.bo = zext i8 %i.bm to i32                    ; 2 uses
  %i.bp = sub nuw nsw i32 256, %i.bo
  %i.bq = icmp slt i8 %i.bm, 0
  %i.br = select i1 %i.bq, i32 %i.bp, i32 %i.bo
  %i.bs = add i32 %i.br, %i.bk                    ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !357

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block376, %bb.b
  %.0171.lcssa = phi i32 [ 0, %bb.b ], [ %i.at, %middle.block376 ], [ %.lcssa386.unr, %.lr.ph.prol.loopexit ], [ %i.bs, %.lr.ph ] ; 3 uses
  %i.bt = load ptr, ptr %i.e, align 8, !tbaa !192 ; 2 uses
  %i.bu = ptrtoaddr ptr %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 1 ; 5 uses
  br i1 %i.f, label %.lr.ph209.preheader, label %.preheader203

.lr.ph209.preheader:                              ; preds = %._crit_edge
  br i1 %min.iters.check348, label %.lr.ph209.preheader383, label %vector.memcheck345

vector.memcheck345:                               ; preds = %.lr.ph209.preheader
  %10 = mul nsw i64 %indvar, %7
  %11 = add i64 %i.u, %10
  %i.bw = add i64 %11, %i.bu
  %i.bx = add i64 %i.bw, -1
  %diff.check346 = icmp ult i64 %i.bx, 7
  br i1 %diff.check346, label %.lr.ph209.preheader383, label %vector.body351

vector.body351:                                   ; preds = %vector.memcheck345, %vector.body351
  %index352 = phi i64 [ %index.next357, %vector.body351 ], [ 0, %vector.memcheck345 ] ; 3 uses
  %vec.phi353 = phi <4 x i32> [ %i.ck, %vector.body351 ], [ zeroinitializer, %vector.memcheck345 ]
  %vec.phi354 = phi <4 x i32> [ %i.cl, %vector.body351 ], [ zeroinitializer, %vector.memcheck345 ]
  %i.by = getelementptr inbounds nuw i8, ptr %.0187250, i64 %index352 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %wide.load355 = load <4 x i8>, ptr %i.by, align 1, !tbaa !117 ; 3 uses
  %wide.load356 = load <4 x i8>, ptr %i.bz, align 1, !tbaa !117 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 %index352 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  store <4 x i8> %wide.load355, ptr %i.ca, align 1, !tbaa !117
  store <4 x i8> %wide.load356, ptr %i.cb, align 1, !tbaa !117
  %i.cc = zext <4 x i8> %wide.load355 to <4 x i32> ; 2 uses
  %i.cd = zext <4 x i8> %wide.load356 to <4 x i32> ; 2 uses
  %i.ce = sub nuw nsw <4 x i32> splat (i32 256), %i.cc
  %i.cf = sub nuw nsw <4 x i32> splat (i32 256), %i.cd
  %i.cg = icmp slt <4 x i8> %wide.load355, zeroinitializer
  %i.ch = icmp slt <4 x i8> %wide.load356, zeroinitializer
  %i.ci = select <4 x i1> %i.cg, <4 x i32> %i.ce, <4 x i32> %i.cc
  %i.cj = select <4 x i1> %i.ch, <4 x i32> %i.cf, <4 x i32> %i.cd
  %i.ck = add <4 x i32> %i.ci, %vec.phi353        ; 2 uses
  %i.cl = add <4 x i32> %i.cj, %vec.phi354        ; 2 uses
  %index.next357 = add nuw i64 %index352, 8       ; 2 uses
  %i.cm = icmp eq i64 %index.next357, %n.vec350
  br i1 %i.cm, label %middle.block358, label %vector.body351, !llvm.loop !358

middle.block358:                                  ; preds = %vector.body351
  %bin.rdx359 = add <4 x i32> %i.cl, %i.ck
  %i.cn = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx359) ; 2 uses
  br i1 %cmp.n360, label %.preheader203, label %.lr.ph209.preheader383

.lr.ph209.preheader383:                           ; preds = %vector.memcheck345, %.lr.ph209.preheader, %middle.block358
  %indvars.iv269.ph = phi i64 [ 0, %vector.memcheck345 ], [ 0, %.lr.ph209.preheader ], [ %n.vec350, %middle.block358 ] ; 5 uses
  %.1172207.ph = phi i32 [ 0, %vector.memcheck345 ], [ 0, %.lr.ph209.preheader ], [ %i.cn, %middle.block358 ] ; 2 uses
  br i1 %lcmp.mod401.not, label %.lr.ph209.prol.loopexit, label %.lr.ph209.prol

.lr.ph209.prol:                                   ; preds = %.lr.ph209.preheader383
  %i.co = getelementptr inbounds nuw i8, ptr %.0187250, i64 %indvars.iv269.ph
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !117 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bv, i64 %indvars.iv269.ph
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !117
  %i.cr = zext i8 %i.cp to i32                    ; 2 uses
  %i.cs = sub nuw nsw i32 256, %i.cr
  %i.ct = icmp slt i8 %i.cp, 0
  %i.cu = select i1 %i.ct, i32 %i.cs, i32 %i.cr
  %i.cv = add i32 %i.cu, %.1172207.ph             ; 2 uses
  %indvars.iv.next270.prol = or disjoint i64 %indvars.iv269.ph, 1
  br label %.lr.ph209.prol.loopexit

.lr.ph209.prol.loopexit:                          ; preds = %.lr.ph209.prol, %.lr.ph209.preheader383
  %.lcssa389.unr = phi i32 [ poison, %.lr.ph209.preheader383 ], [ %i.cv, %.lr.ph209.prol ]
  %indvars.iv269.unr = phi i64 [ %indvars.iv269.ph, %.lr.ph209.preheader383 ], [ %indvars.iv.next270.prol, %.lr.ph209.prol ]
  %.1172207.unr = phi i32 [ %.1172207.ph, %.lr.ph209.preheader383 ], [ %i.cv, %.lr.ph209.prol ]
  %i.cw = icmp eq i64 %indvars.iv269.ph, %i.w
  br i1 %i.cw, label %.preheader203, label %.lr.ph209

.preheader203:                                    ; preds = %.lr.ph209.prol.loopexit, %.lr.ph209, %middle.block358, %._crit_edge
  %.1172.lcssa = phi i32 [ 0, %._crit_edge ], [ %i.cn, %middle.block358 ], [ %.lcssa389.unr, %.lr.ph209.prol.loopexit ], [ %i.dm, %.lr.ph209 ] ; 2 uses
  br i1 %i.g, label %.lr.ph213, label %._crit_edge214

.lr.ph209:                                        ; preds = %.lr.ph209.prol.loopexit, %.lr.ph209
  %indvars.iv269 = phi i64 [ %indvars.iv.next270.1, %.lr.ph209 ], [ %indvars.iv269.unr, %.lr.ph209.prol.loopexit ] ; 4 uses
  %.1172207 = phi i32 [ %i.dm, %.lr.ph209 ], [ %.1172207.unr, %.lr.ph209.prol.loopexit ]
  %i.cx = getelementptr inbounds nuw i8, ptr %.0187250, i64 %indvars.iv269
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !117 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bv, i64 %indvars.iv269
  store i8 %i.cy, ptr %i.cz, align 1, !tbaa !117
  %i.da = zext i8 %i.cy to i32                    ; 2 uses
  %i.db = sub nuw nsw i32 256, %i.da
  %i.dc = icmp slt i8 %i.cy, 0
  %i.dd = select i1 %i.dc, i32 %i.db, i32 %i.da
  %i.de = add i32 %i.dd, %.1172207
  %indvars.iv.next270 = add nuw nsw i64 %indvars.iv269, 1 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.0187250, i64 %indvars.iv.next270
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !117 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bv, i64 %indvars.iv.next270
  store i8 %i.dg, ptr %i.dh, align 1, !tbaa !117
  %i.di = zext i8 %i.dg to i32                    ; 2 uses
  %i.dj = sub nuw nsw i32 256, %i.di
  %i.dk = icmp slt i8 %i.dg, 0
  %i.dl = select i1 %i.dk, i32 %i.dj, i32 %i.di
  %i.dm = add i32 %i.dl, %i.de                    ; 2 uses
  %indvars.iv.next270.1 = add nuw nsw i64 %indvars.iv269, 2 ; 2 uses
  %exitcond273.not.1 = icmp eq i64 %indvars.iv.next270.1, %wide.trip.count272
  br i1 %exitcond273.not.1, label %.preheader203, label %.lr.ph209, !llvm.loop !359

.lr.ph213:                                        ; preds = %.preheader203, %.lr.ph213
  %indvars.iv274 = phi i64 [ %indvars.iv.next275, %.lr.ph213 ], [ %i.s, %.preheader203 ] ; 4 uses
  %.2173212 = phi i32 [ %i.dy, %.lr.ph213 ], [ %.1172.lcssa, %.preheader203 ]
  %i.dn = getelementptr inbounds i8, ptr %.0187250, i64 %indvars.iv274
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !117
  %i.dp = sub nsw i64 %indvars.iv274, %i.s
  %i.dq = getelementptr inbounds i8, ptr %.0187250, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !117
  %i.ds = sub i8 %i.do, %i.dr                     ; 3 uses
  %i.dt = getelementptr inbounds i8, ptr %i.bv, i64 %indvars.iv274
  store i8 %i.ds, ptr %i.dt, align 1, !tbaa !117
  %i.du = zext i8 %i.ds to i32                    ; 2 uses
  %i.dv = sub nuw nsw i32 256, %i.du
  %i.dw = icmp slt i8 %i.ds, 0
  %i.dx = select i1 %i.dw, i32 %i.dv, i32 %i.du
  %i.dy = add i32 %i.dx, %.2173212                ; 3 uses
  %i.dz = icmp ule i32 %i.dy, %.0171.lcssa
  %indvars.iv.next275 = add nsw i64 %indvars.iv274, 1 ; 2 uses
  %i.ea = icmp slt i64 %indvars.iv.next275, %i.t
  %or.cond257 = select i1 %i.dz, i1 %i.ea, i1 false
  br i1 %or.cond257, label %.lr.ph213, label %._crit_edge214, !llvm.loop !360

._crit_edge214:                                   ; preds = %.lr.ph213, %.preheader203
  %.3174 = phi i32 [ %.1172.lcssa, %.preheader203 ], [ %i.dy, %.lr.ph213 ] ; 2 uses
  %i.eb = icmp ult i32 %.3174, %.0171.lcssa
  br i1 %i.eb, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge214
  %i.ec = load ptr, ptr %i.e, align 8, !tbaa !192
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge214
  %.0168 = phi ptr [ %i.ec, %bb.c ], [ %i.z, %._crit_edge214 ] ; 2 uses
  %.0 = phi i32 [ %.3174, %bb.c ], [ %.0171.lcssa, %._crit_edge214 ] ; 3 uses
  %.not = icmp eq ptr %.0177252, null
  br i1 %.not, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ed = load ptr, ptr %i.h, align 8, !tbaa !192
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 1
  br i1 %i.d, label %.lr.ph221, label %._crit_edge222

.lr.ph221:                                        ; preds = %bb.e, %.lr.ph221
  %indvars.iv277 = phi i64 [ %indvars.iv.next278, %.lr.ph221 ], [ 0, %bb.e ] ; 4 uses
  %.4219 = phi i32 [ %i.ep, %.lr.ph221 ], [ 0, %bb.e ]
  %i.ef = getelementptr inbounds nuw i8, ptr %.0187250, i64 %indvars.iv277
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !117
  %i.eh = getelementptr inbounds nuw i8, ptr %.0177252, i64 %indvars.iv277
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !117
  %i.ej = sub i8 %i.eg, %i.ei                     ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ee, i64 %indvars.iv277
  store i8 %i.ej, ptr %i.ek, align 1, !tbaa !117
  %i.el = zext i8 %i.ej to i32                    ; 2 uses
  %i.em = sub nuw nsw i32 256, %i.el
  %i.en = icmp slt i8 %i.ej, 0
  %i.eo = select i1 %i.en, i32 %i.em, i32 %i.el
  %i.ep = add i32 %i.eo, %.4219                   ; 3 uses
  %i.eq = icmp ule i32 %i.ep, %.0
  %indvars.iv.next278 = add nuw nsw i64 %indvars.iv277, 1 ; 2 uses
  %i.er = icmp slt i64 %indvars.iv.next278, %i.t
  %or.cond258 = select i1 %i.eq, i1 %i.er, i1 false
  br i1 %or.cond258, label %.lr.ph221, label %._crit_edge222, !llvm.loop !361

._crit_edge222:                                   ; preds = %.lr.ph221, %bb.e
  %.5 = phi i32 [ 0, %bb.e ], [ %i.ep, %.lr.ph221 ] ; 2 uses
  %i.es = icmp ult i32 %.5, %.0
  br i1 %i.es, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge222
  %i.et = load ptr, ptr %i.h, align 8, !tbaa !192
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge222
  %.1169 = phi ptr [ %i.et, %bb.f ], [ %.0168, %._crit_edge222 ]
  %.1 = phi i32 [ %.5, %bb.f ], [ %.0, %._crit_edge222 ] ; 3 uses
  %i.eu = load ptr, ptr %i.i, align 8, !tbaa !192 ; 2 uses
  %i.ev = ptrtoaddr ptr %i.eu to i64              ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 1 ; 5 uses
  br i1 %i.f, label %.lr.ph229.preheader, label %.preheader202

.lr.ph229.preheader:                              ; preds = %bb.g
  br i1 %min.iters.check328, label %.lr.ph229.preheader382, label %vector.memcheck323

vector.memcheck323:                               ; preds = %.lr.ph229.preheader
  %i.ex = sub i64 %i.ev, %.0177252317
  %diff.check324 = icmp ult i64 %i.ex, 7
  %12 = mul nsw i64 %indvar, %7
  %13 = add i64 %i.u, %12
  %i.ey = add i64 %13, %i.ev
  %i.ez = add i64 %i.ey, -1
  %diff.check325 = icmp ult i64 %i.ez, 7
  %conflict.rdx326 = or i1 %diff.check324, %diff.check325
  br i1 %conflict.rdx326, label %.lr.ph229.preheader382, label %vector.body331

vector.body331:                                   ; preds = %vector.memcheck323, %vector.body331
  %index332 = phi i64 [ %index.next339, %vector.body331 ], [ 0, %vector.memcheck323 ] ; 4 uses
  %vec.phi333 = phi <4 x i32> [ %i.fs, %vector.body331 ], [ zeroinitializer, %vector.memcheck323 ]
  %vec.phi334 = phi <4 x i32> [ %i.ft, %vector.body331 ], [ zeroinitializer, %vector.memcheck323 ]
  %i.fa = getelementptr inbounds nuw i8, ptr %.0187250, i64 %index332 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 4
  %wide.load335 = load <4 x i8>, ptr %i.fa, align 1, !tbaa !117
  %wide.load336 = load <4 x i8>, ptr %i.fb, align 1, !tbaa !117
  %i.fc = getelementptr inbounds nuw i8, ptr %.0177252, i64 %index332 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %wide.load337 = load <4 x i8>, ptr %i.fc, align 1, !tbaa !117
  %wide.load338 = load <4 x i8>, ptr %i.fd, align 1, !tbaa !117
  %i.fe = lshr <4 x i8> %wide.load337, splat (i8 1)
  %i.ff = lshr <4 x i8> %wide.load338, splat (i8 1)
  %i.fg = sub <4 x i8> %wide.load335, %i.fe       ; 3 uses
  %i.fh = sub <4 x i8> %wide.load336, %i.ff       ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ew, i64 %index332 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  store <4 x i8> %i.fg, ptr %i.fi, align 1, !tbaa !117
  store <4 x i8> %i.fh, ptr %i.fj, align 1, !tbaa !117
  %i.fk = zext <4 x i8> %i.fg to <4 x i32>        ; 2 uses
  %i.fl = zext <4 x i8> %i.fh to <4 x i32>        ; 2 uses
  %i.fm = sub nuw nsw <4 x i32> splat (i32 256), %i.fk
  %i.fn = sub nuw nsw <4 x i32> splat (i32 256), %i.fl
  %i.fo = icmp slt <4 x i8> %i.fg, zeroinitializer
  %i.fp = icmp slt <4 x i8> %i.fh, zeroinitializer
  %i.fq = select <4 x i1> %i.fo, <4 x i32> %i.fm, <4 x i32> %i.fk
  %i.fr = select <4 x i1> %i.fp, <4 x i32> %i.fn, <4 x i32> %i.fl
  %i.fs = add <4 x i32> %i.fq, %vec.phi333        ; 2 uses
  %i.ft = add <4 x i32> %i.fr, %vec.phi334        ; 2 uses
  %index.next339 = add nuw i64 %index332, 8       ; 2 uses
  %i.fu = icmp eq i64 %index.next339, %n.vec330
  br i1 %i.fu, label %middle.block340, label %vector.body331, !llvm.loop !362

middle.block340:                                  ; preds = %vector.body331
  %bin.rdx341 = add <4 x i32> %i.ft, %i.fs
  %i.fv = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx341) ; 2 uses
  br i1 %cmp.n342, label %.preheader202, label %.lr.ph229.preheader382

.lr.ph229.preheader382:                           ; preds = %vector.memcheck323, %.lr.ph229.preheader, %middle.block340
  %indvars.iv280.ph = phi i64 [ 0, %vector.memcheck323 ], [ 0, %.lr.ph229.preheader ], [ %n.vec330, %middle.block340 ] ; 6 uses
  %.6227.ph = phi i32 [ 0, %vector.memcheck323 ], [ 0, %.lr.ph229.preheader ], [ %i.fv, %middle.block340 ] ; 2 uses
  br i1 %lcmp.mod403.not, label %.lr.ph229.prol.loopexit, label %.lr.ph229.prol

.lr.ph229.prol:                                   ; preds = %.lr.ph229.preheader382
  %i.fw = getelementptr inbounds nuw i8, ptr %.0187250, i64 %indvars.iv280.ph
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !117
  %i.fy = getelementptr inbounds nuw i8, ptr %.0177252, i64 %indvars.iv280.ph
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !117
  %i.ga = lshr i8 %i.fz, 1
  %i.gb = sub i8 %i.fx, %i.ga                     ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ew, i64 %indvars.iv280.ph
  store i8 %i.gb, ptr %i.gc, align 1, !tbaa !117
  %i.gd = zext i8 %i.gb to i32                    ; 2 uses
  %i.ge = sub nuw nsw i32 256, %i.gd
  %i.gf = icmp slt i8 %i.gb, 0
  %i.gg = select i1 %i.gf, i32 %i.ge, i32 %i.gd
  %i.gh = add i32 %i.gg, %.6227.ph                ; 2 uses
  %indvars.iv.next281.prol = or disjoint i64 %indvars.iv280.ph, 1
  br label %.lr.ph229.prol.loopexit

.lr.ph229.prol.loopexit:                          ; preds = %.lr.ph229.prol, %.lr.ph229.preheader382
  %.lcssa394.unr = phi i32 [ poison, %.lr.ph229.preheader382 ], [ %i.gh, %.lr.ph229.prol ]
  %indvars.iv280.unr = phi i64 [ %indvars.iv280.ph, %.lr.ph229.preheader382 ], [ %indvars.iv.next281.prol, %.lr.ph229.prol ]
  %.6227.unr = phi i32 [ %.6227.ph, %.lr.ph229.preheader382 ], [ %i.gh, %.lr.ph229.prol ]
  %i.gi = icmp eq i64 %indvars.iv280.ph, %i.x
  br i1 %i.gi, label %.preheader202, label %.lr.ph229

.preheader202:                                    ; preds = %.lr.ph229.prol.loopexit, %.lr.ph229, %middle.block340, %bb.g
  %.6.lcssa = phi i32 [ 0, %bb.g ], [ %i.fv, %middle.block340 ], [ %.lcssa394.unr, %.lr.ph229.prol.loopexit ], [ %i.hg, %.lr.ph229 ] ; 2 uses
  br i1 %i.g, label %.lr.ph233, label %._crit_edge234

.lr.ph229:                                        ; preds = %.lr.ph229.prol.loopexit, %.lr.ph229
  %indvars.iv280 = phi i64 [ %indvars.iv.next281.1, %.lr.ph229 ], [ %indvars.iv280.unr, %.lr.ph229.prol.loopexit ] ; 5 uses
  %.6227 = phi i32 [ %i.hg, %.lr.ph229 ], [ %.6227.unr, %.lr.ph229.prol.loopexit ]
  %i.gj = getelementptr inbounds nuw i8, ptr %.0187250, i64 %indvars.iv280
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !117
  %i.gl = getelementptr inbounds nuw i8, ptr %.0177252, i64 %indvars.iv280
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !117
  %i.gn = lshr i8 %i.gm, 1
  %i.go = sub i8 %i.gk, %i.gn                     ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ew, i64 %indvars.iv280
  store i8 %i.go, ptr %i.gp, align 1, !tbaa !117
  %i.gq = zext i8 %i.go to i32                    ; 2 uses
  %i.gr = sub nuw nsw i32 256, %i.gq
  %i.gs = icmp slt i8 %i.go, 0
  %i.gt = select i1 %i.gs, i32 %i.gr, i32 %i.gq
  %i.gu = add i32 %i.gt, %.6227
  %indvars.iv.next281 = add nuw nsw i64 %indvars.iv280, 1 ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.0187250, i64 %indvars.iv.next281
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !117
  %i.gx = getelementptr inbounds nuw i8, ptr %.0177252, i64 %indvars.iv.next281
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !117
  %i.gz = lshr i8 %i.gy, 1
  %i.ha = sub i8 %i.gw, %i.gz                     ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ew, i64 %indvars.iv.next281
  store i8 %i.ha, ptr %i.hb, align 1, !tbaa !117
  %i.hc = zext i8 %i.ha to i32                    ; 2 uses
  %i.hd = sub nuw nsw i32 256, %i.hc
  %i.he = icmp slt i8 %i.ha, 0
  %i.hf = select i1 %i.he, i32 %i.hd, i32 %i.hc
  %i.hg = add i32 %i.hf, %i.gu                    ; 2 uses
  %indvars.iv.next281.1 = add nuw nsw i64 %indvars.iv280, 2 ; 2 uses
  %exitcond284.not.1 = icmp eq i64 %indvars.iv.next281.1, %wide.trip.count283
  br i1 %exitcond284.not.1, label %.preheader202, label %.lr.ph229, !llvm.loop !363

.lr.ph233:                                        ; preds = %.preheader202, %.lr.ph233
  %indvars.iv285 = phi i64 [ %indvars.iv.next286, %.lr.ph233 ], [ %i.s, %.preheader202 ] ; 5 uses
  %.7232 = phi i32 [ %i.hz, %.lr.ph233 ], [ %.6.lcssa, %.preheader202 ]
  %i.hh = getelementptr inbounds i8, ptr %.0187250, i64 %indvars.iv285
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !117
  %i.hj = getelementptr inbounds i8, ptr %.0177252, i64 %indvars.iv285
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !117
  %i.hl = zext i8 %i.hk to i16
  %i.hm = sub nsw i64 %indvars.iv285, %i.s
  %i.hn = getelementptr inbounds i8, ptr %.0187250, i64 %i.hm
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !117
  %i.hp = zext i8 %i.ho to i16
  %i.hq = add nuw nsw i16 %i.hp, %i.hl
  %i.hr = lshr i16 %i.hq, 1
  %i.hs = trunc nuw i16 %i.hr to i8
  %i.ht = sub i8 %i.hi, %i.hs                     ; 3 uses
  %i.hu = getelementptr inbounds i8, ptr %i.ew, i64 %indvars.iv285
  store i8 %i.ht, ptr %i.hu, align 1, !tbaa !117
  %i.hv = zext i8 %i.ht to i32                    ; 2 uses
  %i.hw = sub nuw nsw i32 256, %i.hv
  %i.hx = icmp slt i8 %i.ht, 0
  %i.hy = select i1 %i.hx, i32 %i.hw, i32 %i.hv
  %i.hz = add i32 %i.hy, %.7232                   ; 3 uses
  %i.ia = icmp ule i32 %i.hz, %.1
  %indvars.iv.next286 = add nsw i64 %indvars.iv285, 1 ; 2 uses
  %i.ib = icmp slt i64 %indvars.iv.next286, %i.t
  %or.cond259 = select i1 %i.ia, i1 %i.ib, i1 false
  br i1 %or.cond259, label %.lr.ph233, label %._crit_edge234, !llvm.loop !364

._crit_edge234:                                   ; preds = %.lr.ph233, %.preheader202
  %.8 = phi i32 [ %.6.lcssa, %.preheader202 ], [ %i.hz, %.lr.ph233 ] ; 2 uses
  %i.ic = icmp ult i32 %.8, %.1
  br i1 %i.ic, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge234
  %i.id = load ptr, ptr %i.i, align 8, !tbaa !192
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge234
  %.2170 = phi ptr [ %i.id, %bb.h ], [ %.1169, %._crit_edge234 ]
  %.2 = phi i32 [ %.8, %bb.h ], [ %.1, %._crit_edge234 ] ; 2 uses
  %i.ie = load ptr, ptr %i.j, align 8, !tbaa !192 ; 2 uses
  %i.if = ptrtoaddr ptr %i.ie to i64              ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ie, i64 1 ; 5 uses
  br i1 %i.f, label %.lr.ph241.preheader, label %.preheader

.lr.ph241.preheader:                              ; preds = %bb.i
  br i1 %min.iters.check, label %.lr.ph241.preheader381, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph241.preheader
  %i.ih = sub i64 %i.if, %.0177252317
  %diff.check = icmp ult i64 %i.ih, 7
  %14 = mul i64 %indvar, %7
  %15 = add i64 %i.u, %14
  %i.ii = add i64 %15, %i.if
  %i.ij = add i64 %i.ii, -1
  %diff.check318 = icmp ult i64 %i.ij, 7
  %conflict.rdx = or i1 %diff.check, %diff.check318
  br i1 %conflict.rdx, label %.lr.ph241.preheader381, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 4 uses
  %vec.phi = phi <4 x i32> [ %i.ja, %vector.body ], [ zeroinitializer, %vector.memcheck ]
  %vec.phi319 = phi <4 x i32> [ %i.jb, %vector.body ], [ zeroinitializer, %vector.memcheck ]
  %i.ik = getelementptr inbounds nuw i8, ptr %.0187250, i64 %index ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 4
  %wide.load = load <4 x i8>, ptr %i.ik, align 1, !tbaa !117
  %wide.load320 = load <4 x i8>, ptr %i.il, align 1, !tbaa !117
  %i.im = getelementptr inbounds nuw i8, ptr %.0177252, i64 %index ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 4
  %wide.load321 = load <4 x i8>, ptr %i.im, align 1, !tbaa !117
  %wide.load322 = load <4 x i8>, ptr %i.in, align 1, !tbaa !117
  %i.io = sub <4 x i8> %wide.load, %wide.load321  ; 3 uses
  %i.ip = sub <4 x i8> %wide.load320, %wide.load322 ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ig, i64 %index ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 4
  store <4 x i8> %i.io, ptr %i.iq, align 1, !tbaa !117
  store <4 x i8> %i.ip, ptr %i.ir, align 1, !tbaa !117
  %i.is = zext <4 x i8> %i.io to <4 x i32>        ; 2 uses
  %i.it = zext <4 x i8> %i.ip to <4 x i32>        ; 2 uses
  %i.iu = sub nuw nsw <4 x i32> splat (i32 256), %i.is
  %i.iv = sub nuw nsw <4 x i32> splat (i32 256), %i.it
  %i.iw = icmp slt <4 x i8> %i.io, zeroinitializer
  %i.ix = icmp slt <4 x i8> %i.ip, zeroinitializer
  %i.iy = select <4 x i1> %i.iw, <4 x i32> %i.iu, <4 x i32> %i.is
  %i.iz = select <4 x i1> %i.ix, <4 x i32> %i.iv, <4 x i32> %i.it
  %i.ja = add <4 x i32> %i.iy, %vec.phi           ; 2 uses
  %i.jb = add <4 x i32> %i.iz, %vec.phi319        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jc = icmp eq i64 %index.next, %n.vec
  br i1 %i.jc, label %middle.block, label %vector.body, !llvm.loop !365

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.jb, %i.ja
  %i.jd = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %.preheader, label %.lr.ph241.preheader381

.lr.ph241.preheader381:                           ; preds = %vector.memcheck, %.lr.ph241.preheader, %middle.block
  %indvars.iv288.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph241.preheader ], [ %n.vec, %middle.block ] ; 6 uses
  %.9239.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph241.preheader ], [ %i.jd, %middle.block ] ; 2 uses
  br i1 %lcmp.mod405.not, label %.lr.ph241.prol.loopexit, label %.lr.ph241.prol

.lr.ph241.prol:                                   ; preds = %.lr.ph241.preheader381
  %i.je = getelementptr inbounds nuw i8, ptr %.0187250, i64 %indvars.iv288.ph
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !117
  %i.jg = getelementptr inbounds nuw i8, ptr %.0177252, i64 %indvars.iv288.ph
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !117
  %i.ji = sub i8 %i.jf, %i.jh                     ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ig, i64 %indvars.iv288.ph
  store i8 %i.ji, ptr %i.jj, align 1, !tbaa !117
  %i.jk = zext i8 %i.ji to i32                    ; 2 uses
  %i.jl = sub nuw nsw i32 256, %i.jk
  %i.jm = icmp slt i8 %i.ji, 0
  %i.jn = select i1 %i.jm, i32 %i.jl, i32 %i.jk
  %i.jo = add i32 %i.jn, %.9239.ph                ; 2 uses
  %indvars.iv.next289.prol = or disjoint i64 %indvars.iv288.ph, 1
  br label %.lr.ph241.prol.loopexit

.lr.ph241.prol.loopexit:                          ; preds = %.lr.ph241.prol, %.lr.ph241.preheader381
  %.lcssa398.unr = phi i32 [ poison, %.lr.ph241.preheader381 ], [ %i.jo, %.lr.ph241.prol ]
  %indvars.iv288.unr = phi i64 [ %indvars.iv288.ph, %.lr.ph241.preheader381 ], [ %indvars.iv.next289.prol, %.lr.ph241.prol ]
  %.9239.unr = phi i32 [ %.9239.ph, %.lr.ph241.preheader381 ], [ %i.jo, %.lr.ph241.prol ]
  %i.jp = icmp eq i64 %indvars.iv288.ph, %i.y
  br i1 %i.jp, label %.preheader, label %.lr.ph241

.preheader:                                       ; preds = %.lr.ph241.prol.loopexit, %.lr.ph241, %middle.block, %bb.i
  %.9.lcssa = phi i32 [ 0, %bb.i ], [ %i.jd, %middle.block ], [ %.lcssa398.unr, %.lr.ph241.prol.loopexit ], [ %i.kl, %.lr.ph241 ] ; 2 uses
  br i1 %i.g, label %.lr.ph245, label %._crit_edge246

.lr.ph241:                                        ; preds = %.lr.ph241.prol.loopexit, %.lr.ph241
  %indvars.iv288 = phi i64 [ %indvars.iv.next289.1, %.lr.ph241 ], [ %indvars.iv288.unr, %.lr.ph241.prol.loopexit ] ; 5 uses
  %.9239 = phi i32 [ %i.kl, %.lr.ph241 ], [ %.9239.unr, %.lr.ph241.prol.loopexit ]
  %i.jq = getelementptr inbounds nuw i8, ptr %.0187250, i64 %indvars.iv288
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !117
  %i.js = getelementptr inbounds nuw i8, ptr %.0177252, i64 %indvars.iv288
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !117
  %i.ju = sub i8 %i.jr, %i.jt                     ; 3 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ig, i64 %indvars.iv288
  store i8 %i.ju, ptr %i.jv, align 1, !tbaa !117
  %i.jw = zext i8 %i.ju to i32                    ; 2 uses
  %i.jx = sub nuw nsw i32 256, %i.jw
  %i.jy = icmp slt i8 %i.ju, 0
  %i.jz = select i1 %i.jy, i32 %i.jx, i32 %i.jw
  %i.ka = add i32 %i.jz, %.9239
  %indvars.iv.next289 = add nuw nsw i64 %indvars.iv288, 1 ; 3 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.0187250, i64 %indvars.iv.next289
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !117
  %i.kd = getelementptr inbounds nuw i8, ptr %.0177252, i64 %indvars.iv.next289
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !117
  %i.kf = sub i8 %i.kc, %i.ke                     ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ig, i64 %indvars.iv.next289
  store i8 %i.kf, ptr %i.kg, align 1, !tbaa !117
  %i.kh = zext i8 %i.kf to i32                    ; 2 uses
  %i.ki = sub nuw nsw i32 256, %i.kh
  %i.kj = icmp slt i8 %i.kf, 0
  %i.kk = select i1 %i.kj, i32 %i.ki, i32 %i.kh
  %i.kl = add i32 %i.kk, %i.ka                    ; 2 uses
  %indvars.iv.next289.1 = add nuw nsw i64 %indvars.iv288, 2 ; 2 uses
  %exitcond292.not.1 = icmp eq i64 %indvars.iv.next289.1, %wide.trip.count291
  br i1 %exitcond292.not.1, label %.preheader, label %.lr.ph241, !llvm.loop !366

.lr.ph245:                                        ; preds = %.preheader, %.lr.ph245
  %indvars.iv293 = phi i64 [ %indvars.iv.next294, %.lr.ph245 ], [ %i.s, %.preheader ] ; 5 uses
  %.10244 = phi i32 [ %i.lm, %.lr.ph245 ], [ %.9.lcssa, %.preheader ]
  %i.km = sub nsw i64 %indvars.iv293, %i.s        ; 2 uses
  %i.kn = getelementptr inbounds i8, ptr %.0187250, i64 %i.km
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !117 ; 2 uses
  %i.kp = zext i8 %i.ko to i32
  %i.kq = getelementptr inbounds i8, ptr %.0177252, i64 %indvars.iv293
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !117 ; 2 uses
  %i.ks = zext i8 %i.kr to i32
  %i.kt = getelementptr inbounds i8, ptr %.0177252, i64 %i.km
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !117 ; 2 uses
  %i.kv = zext i8 %i.ku to i32                    ; 2 uses
  %i.kw = sub nsw i32 %i.ks, %i.kv                ; 2 uses
  %i.kx = sub nsw i32 %i.kp, %i.kv                ; 2 uses
  %i.ky = tail call i32 @llvm.abs.i32(i32 %i.kw, i1 true) ; 2 uses
  %i.kz = tail call i32 @llvm.abs.i32(i32 %i.kx, i1 true) ; 2 uses
  %i.la = add nsw i32 %i.kw, %i.kx
  %i.lb = tail call i32 @llvm.abs.i32(i32 %i.la, i1 true) ; 2 uses
  %.not199 = icmp samesign ugt i32 %i.ky, %i.kz
  %.not200 = icmp samesign ugt i32 %i.ky, %i.lb
  %or.cond = select i1 %.not199, i1 true, i1 %.not200
  %.not201 = icmp samesign ugt i32 %i.kz, %i.lb
  %i.lc = select i1 %.not201, i8 %i.ku, i8 %i.kr
  %i.ld = select i1 %or.cond, i8 %i.lc, i8 %i.ko
  %i.le = getelementptr inbounds i8, ptr %.0187250, i64 %indvars.iv293
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !117
  %i.lg = sub i8 %i.lf, %i.ld                     ; 3 uses
  %i.lh = getelementptr inbounds i8, ptr %i.ig, i64 %indvars.iv293
  store i8 %i.lg, ptr %i.lh, align 1, !tbaa !117
  %i.li = zext i8 %i.lg to i32                    ; 2 uses
  %i.lj = sub nuw nsw i32 256, %i.li
  %i.lk = icmp slt i8 %i.lg, 0
  %i.ll = select i1 %i.lk, i32 %i.lj, i32 %i.li
  %i.lm = add i32 %i.ll, %.10244                  ; 3 uses
  %i.ln = icmp ule i32 %i.lm, %.2
  %indvars.iv.next294 = add nsw i64 %indvars.iv293, 1 ; 2 uses
  %i.lo = icmp slt i64 %indvars.iv.next294, %i.t
  %or.cond260 = select i1 %i.ln, i1 %i.lo, i1 false
  br i1 %or.cond260, label %.lr.ph245, label %._crit_edge246, !llvm.loop !367

._crit_edge246:                                   ; preds = %.lr.ph245, %.preheader
  %.11 = phi i32 [ %.9.lcssa, %.preheader ], [ %i.lm, %.lr.ph245 ]
  %i.lp = icmp ult i32 %.11, %.2
  br i1 %i.lp, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge246
  %i.lq = load ptr, ptr %i.j, align 8, !tbaa !192
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge246, %bb.j, %bb.d
  %.3 = phi ptr [ %i.lq, %bb.j ], [ %.2170, %._crit_edge246 ], [ %.0168, %bb.d ] ; 2 uses
  br i1 %i.k, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.lr = load ptr, ptr %i.c, align 8, !tbaa !192
  store ptr %i.lr, ptr %i.n, align 8, !tbaa !369
  store i32 %i.l, ptr %i.o, align 8, !tbaa !370
  %i.ls = tail call i32 @deflate(ptr noundef nonnull %i.n, i32 noundef 0) ; 0 uses
  store ptr %.3, ptr %i.p, align 8, !tbaa !371
  store i32 %i.l, ptr %i.q, align 8, !tbaa !372
  %i.lt = tail call i32 @deflate(ptr noundef nonnull %i.p, i32 noundef 0) ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0175253, ptr align 1 %.3, i64 %i.m, i1 false)
  %i.lu = getelementptr inbounds i8, ptr %.0175253, i64 %i.m
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.1176 = phi ptr [ %.0175253, %bb.l ], [ %i.lu, %bb.m ]
  %i.lv = getelementptr inbounds i8, ptr %.0187250, i64 %i.r
  %i.lw = add nuw nsw i32 %.0178251, 1            ; 2 uses
  %exitcond296.not = icmp eq i32 %i.lw, %5
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond296.not, label %._crit_edge256, label %bb.b, !llvm.loop !368

._crit_edge256:                                   ; preds = %bb.n, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #21

declare i32 @deflate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv10PngEncoder13deflateRectOpEPhiiiiiiii(ptr noundef nonnull align 8 dereferenceable(9064) initializes((7568, 7580), (7632, 7636), (7680, 7692), (7744, 7748)) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = mul nsw i32 %7, %3
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b
  %i.d = mul nsw i32 %6, %2
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 %i.e
  %i.g = mul nsw i32 %6, %4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 7544 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 7632
  store i32 0, ptr %i.i, align 8, !tbaa !215
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !192
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 7568
  store ptr %i.k, ptr %i.l, align 8, !tbaa !216
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 7576
  store i32 %8, ptr %i.m, align 8, !tbaa !217
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 7656 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 7744
  store i32 0, ptr %i.o, align 8, !tbaa !218
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !192
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 7680
  store ptr %i.q, ptr %i.r, align 8, !tbaa !219
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 7688
  store i32 %8, ptr %i.s, align 8, !tbaa !220
  tail call void @_ZN2cv10PngEncoder11processRectEPhiiiiS1_(ptr noundef nonnull align 8 dereferenceable(9064) %0, ptr noundef %i.f, i32 noundef %i.g, i32 noundef %6, i32 noundef %7, i32 noundef %5, ptr noundef null)
  %i.t = tail call i32 @deflate(ptr noundef nonnull %i.h, i32 noundef 4) ; 0 uses
  %i.u = tail call i32 @deflate(ptr noundef nonnull %i.n, i32 noundef 4) ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 7768
  %i.w = sext i32 %9 to i64
  %i.x = getelementptr inbounds [40 x i8], ptr %i.v, i64 %i.w ; 8 uses
  store ptr %1, ptr %i.x, align 8, !tbaa !222
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 7584
  %i.z = load i64, ptr %i.y, align 8, !tbaa !223  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 7696
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !224 ; 2 uses
  %i.ac = icmp uge i64 %i.z, %i.ab
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.z, i64 %i.ab)
  %spec.select32 = zext i1 %i.ac to i32
  %.sink30 = trunc i64 %spec.select to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i32 %.sink30, ptr %i.ad, align 8, !tbaa !225
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store i32 %spec.select32, ptr %i.ae, align 8, !tbaa !226
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 %2, ptr %i.af, align 4, !tbaa !227
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i32 %3, ptr %i.ag, align 8, !tbaa !228
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  store i32 %4, ptr %i.ah, align 4, !tbaa !229
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i32 %5, ptr %i.ai, align 8, !tbaa !230
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 28
  store i32 1, ptr %i.aj, align 4, !tbaa !231
  %i.ak = tail call i32 @deflateReset(ptr noundef nonnull %i.h) ; 0 uses
  %i.al = tail call i32 @deflateReset(ptr noundef nonnull %i.n) ; 0 uses
  ret void
}

declare i32 @deflateReset(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN2cv10PngEncoder7getRectEjjPhS1_S1_jjijji(ptr noundef nonnull align 8 dereferenceable(9064) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64                  ; 4 uses
  %i.b = add i32 %1, -1                           ; 8 uses
  %i.c = add i32 %2, -1                           ; 6 uses
  %.not = icmp ne i32 %9, 0                       ; 3 uses
  %spec.store.select = zext i1 %.not to i32       ; 4 uses
  switch i32 %6, label %.thread [
    i32 1, label %.preheader320
    i32 2, label %.preheader322
    i32 3, label %.preheader325
    i32 4, label %.preheader328
  ]

.preheader328:                                    ; preds = %bb.a
  %.not591 = icmp eq i32 %2, 0
  %.not592 = icmp eq i32 %1, 0
  %or.cond = or i1 %.not591, %.not592
  br i1 %or.cond, label %.thread, label %.preheader327.us.preheader

.preheader327.us.preheader:                       ; preds = %.preheader328
  %i.d = zext i32 %i.b to i64
  %i.e = shl nuw nsw i64 %i.d, 2                  ; 2 uses
  %i.f = sub nuw nsw i64 -4, %i.e
  %i.g = zext i32 %1 to i64                       ; 2 uses
  %min.iters.check = icmp ult i32 %1, 4
  %n.vec = and i64 %i.g, 4294967292               ; 4 uses
  %i.h = shl nuw nsw i64 %n.vec, 2                ; 3 uses
  %i.i = trunc nuw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br label %.preheader327.us

.preheader327.us:                                 ; preds = %.preheader327.us.preheader, %._crit_edge.us
  %indvar = phi i64 [ 0, %.preheader327.us.preheader ], [ %indvar.next, %._crit_edge.us ] ; 2 uses
  %.0167357.us = phi ptr [ %5, %.preheader327.us.preheader ], [ %.lcssa706, %._crit_edge.us ] ; 5 uses
  %.0168356.us = phi ptr [ %4, %.preheader327.us.preheader ], [ %.lcssa705, %._crit_edge.us ] ; 5 uses
  %.0170355.us = phi ptr [ %3, %.preheader327.us.preheader ], [ %scevgep, %._crit_edge.us ] ; 5 uses
  %.12354.us = phi i32 [ %spec.store.select, %.preheader327.us.preheader ], [ %.15.us.lcssa, %._crit_edge.us ] ; 3 uses
  %.9204353.us = phi i32 [ 0, %.preheader327.us.preheader ], [ %.11206.us.lcssa, %._crit_edge.us ] ; 3 uses
  %.9217352.us = phi i32 [ 0, %.preheader327.us.preheader ], [ %.11219.us.lcssa, %._crit_edge.us ] ; 3 uses
  %.12233351.us = phi i32 [ 0, %.preheader327.us.preheader ], [ %.15236.us.lcssa, %._crit_edge.us ] ; 3 uses
  %.12250350.us = phi i32 [ %i.c, %.preheader327.us.preheader ], [ %.15253.us.lcssa, %._crit_edge.us ] ; 3 uses
  %.12267349.us = phi i32 [ %i.b, %.preheader327.us.preheader ], [ %.15270.us.lcssa, %._crit_edge.us ] ; 3 uses
  %.3275348.us = phi i32 [ 0, %.preheader327.us.preheader ], [ %i.ar, %._crit_edge.us ] ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader327.us
  %.0168356.us708 = ptrtoaddr ptr %.0168356.us to i64
  %.0167357.us710 = ptrtoaddr ptr %.0167357.us to i64 ; 2 uses
  %12 = mul i64 %indvar, %i.f
  %13 = sub i64 %12, %i.a
  %i.j = add i64 %13, %.0167357.us710
  %i.k = add i64 %i.j, -1
  %diff.check = icmp ult i64 %i.k, 15
  %i.l = sub i64 %.0168356.us708, %.0167357.us710
  %diff.check709 = icmp ugt i64 %i.l, -16
  %conflict.rdx = or i1 %diff.check, %diff.check709
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.m = getelementptr i8, ptr %.0167357.us, i64 %i.h ; 2 uses
  %i.n = getelementptr i8, ptr %.0168356.us, i64 %i.h ; 2 uses
  %i.o = getelementptr i8, ptr %.0170355.us, i64 %i.h
  %i.p = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.9204353.us, i64 0
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.9217352.us, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert710 = insertelement <4 x i32> poison, i32 %.12233351.us, i64 0
  %broadcast.splat711 = shufflevector <4 x i32> %broadcast.splatinsert710, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert712 = insertelement <4 x i32> poison, i32 %.12250350.us, i64 0
  %broadcast.splat713 = shufflevector <4 x i32> %broadcast.splatinsert712, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert714 = insertelement <4 x i32> poison, i32 %.12267349.us, i64 0
  %broadcast.splat715 = shufflevector <4 x i32> %broadcast.splatinsert714, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert716 = insertelement <4 x i32> poison, i32 %.3275348.us, i64 0
  %broadcast.splat717 = shufflevector <4 x i32> %broadcast.splatinsert716, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %predphi730, %vector.body ]
  %vec.phi718 = phi <4 x i32> [ %i.p, %vector.ph ], [ %predphi729, %vector.body ]
  %vec.phi719 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %predphi728, %vector.body ] ; 2 uses
  %vec.phi720 = phi <4 x i32> [ %broadcast.splat711, %vector.ph ], [ %predphi727, %vector.body ] ; 2 uses
  %vec.phi721 = phi <4 x i32> [ %broadcast.splat713, %vector.ph ], [ %predphi726, %vector.body ] ; 2 uses
  %vec.phi722 = phi <4 x i32> [ %broadcast.splat715, %vector.ph ], [ %predphi, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.q = shl i64 %index, 2                        ; 3 uses
  %next.gep = getelementptr i8, ptr %.0167357.us, i64 %i.q
  %next.gep723 = getelementptr i8, ptr %.0168356.us, i64 %i.q
  %next.gep724 = getelementptr i8, ptr %.0170355.us, i64 %i.q
  %wide.load = load <4 x i32>, ptr %next.gep724, align 4, !tbaa !14 ; 2 uses
  %wide.load725 = load <4 x i32>, ptr %next.gep723, align 4, !tbaa !14 ; 4 uses
  %i.r = icmp ne <4 x i32> %wide.load, %wide.load725
  %i.s = or <4 x i32> %wide.load725, %wide.load
  %i.t = icmp ugt <4 x i32> %i.s, splat (i32 16777215)
  %.not918 = and <4 x i1> %i.r, %i.t              ; 7 uses
  %i.u = icmp ult <4 x i32> %wide.load725, splat (i32 -16777216)
  %i.v = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %vec.ind, <4 x i32> %vec.phi722)
  %i.w = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.ind, <4 x i32> %vec.phi720)
  %i.x = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %broadcast.splat717, <4 x i32> %vec.phi721)
  %i.y = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %broadcast.splat717, <4 x i32> %vec.phi719)
  %predphi = select <4 x i1> %.not918, <4 x i32> %i.v, <4 x i32> %vec.phi722 ; 2 uses
  %predphi726 = select <4 x i1> %.not918, <4 x i32> %i.x, <4 x i32> %vec.phi721 ; 2 uses
  %predphi727 = select <4 x i1> %.not918, <4 x i32> %i.w, <4 x i32> %vec.phi720 ; 2 uses
  %predphi728 = select <4 x i1> %.not918, <4 x i32> %i.y, <4 x i32> %vec.phi719 ; 2 uses
  %i.z = zext <4 x i1> %.not918 to <4 x i32>
  %predphi729 = add <4 x i32> %vec.phi718, %i.z   ; 2 uses
  %i.aa = and <4 x i1> %.not918, %i.u
  %.fr = freeze <4 x i1> %i.aa
  %predphi730 = or <4 x i1> %vec.phi, %.fr        ; 2 uses
  %predphi731 = select <4 x i1> %.not918, <4 x i32> %wide.load725, <4 x i32> zeroinitializer
  store <4 x i32> %predphi731, ptr %next.gep, align 4, !tbaa !14
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.ind, splat (i32 4)
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !373

middle.block:                                     ; preds = %vector.body
  %i.ac = bitcast <4 x i1> %predphi730 to i4
  %.not919 = icmp eq i4 %i.ac, 0
  %rdx.select = select i1 %.not919, i32 %.12354.us, i32 0 ; 2 uses
  %i.ad = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %predphi729) ; 2 uses
  %i.ae = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %predphi728) ; 2 uses
  %i.af = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %predphi727) ; 2 uses
  %i.ag = tail call i32 @llvm.vector.reduce.umin.v4i32(<4 x i32> %predphi726) ; 2 uses
  %i.ah = tail call i32 @llvm.vector.reduce.umin.v4i32(<4 x i32> %predphi) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader327.us, %middle.block
  %.1339.us.ph = phi ptr [ %.0167357.us, %vector.memcheck ], [ %.0167357.us, %.preheader327.us ], [ %i.m, %middle.block ]
  %.1169338.us.ph = phi ptr [ %.0168356.us, %vector.memcheck ], [ %.0168356.us, %.preheader327.us ], [ %i.n, %middle.block ]
  %.1171337.us.ph = phi ptr [ %.0170355.us, %vector.memcheck ], [ %.0170355.us, %.preheader327.us ], [ %i.o, %middle.block ]
  %.13336.us.ph = phi i32 [ %.12354.us, %vector.memcheck ], [ %.12354.us, %.preheader327.us ], [ %rdx.select, %middle.block ]
  %.10205335.us.ph = phi i32 [ %.9204353.us, %vector.memcheck ], [ %.9204353.us, %.preheader327.us ], [ %i.ad, %middle.block ]
  %.10218334.us.ph = phi i32 [ %.9217352.us, %vector.memcheck ], [ %.9217352.us, %.preheader327.us ], [ %i.ae, %middle.block ]
  %.13234333.us.ph = phi i32 [ %.12233351.us, %vector.memcheck ], [ %.12233351.us, %.preheader327.us ], [ %i.af, %middle.block ]
  %.13251332.us.ph = phi i32 [ %.12250350.us, %vector.memcheck ], [ %.12250350.us, %.preheader327.us ], [ %i.ag, %middle.block ]
  %.13268331.us.ph = phi i32 [ %.12267349.us, %vector.memcheck ], [ %.12267349.us, %.preheader327.us ], [ %i.ah, %middle.block ]
  %.3279330.us.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader327.us ], [ %i.i, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.c
  %.1339.us = phi ptr [ %i.ao, %bb.c ], [ %.1339.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.1169338.us = phi ptr [ %i.ak, %bb.c ], [ %.1169338.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.1171337.us = phi ptr [ %i.ai, %bb.c ], [ %.1171337.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.13336.us = phi i32 [ %.15.us, %bb.c ], [ %.13336.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.10205335.us = phi i32 [ %.11206.us, %bb.c ], [ %.10205335.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.10218334.us = phi i32 [ %.11219.us, %bb.c ], [ %.10218334.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.13234333.us = phi i32 [ %.15236.us, %bb.c ], [ %.13234333.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.13251332.us = phi i32 [ %.15253.us, %bb.c ], [ %.13251332.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.13268331.us = phi i32 [ %.15270.us, %bb.c ], [ %.13268331.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.3279330.us = phi i32 [ %i.ap, %bb.c ], [ %.3279330.us.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.1171337.us, i64 4
  %i.aj = load i32, ptr %.1171337.us, align 4, !tbaa !14 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.1169338.us, i64 4 ; 2 uses
  %i.al = load i32, ptr %.1169338.us, align 4, !tbaa !14 ; 4 uses
  %.not289.us = icmp eq i32 %i.aj, %i.al
  %i.am = or i32 %i.al, %i.aj
  %or.cond302.us = icmp ult i32 %i.am, 16777216
  %or.cond319.us = or i1 %.not289.us, %or.cond302.us
  br i1 %or.cond319.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %scalar.ph
  %i.an = add i32 %.10205335.us, 1
  %.not292.us = icmp ugt i32 %i.al, -16777217
  %spec.select303.us = select i1 %.not292.us, i32 %.13336.us, i32 0
  %.14269.us = tail call i32 @llvm.umin.i32(i32 %.3279330.us, i32 %.13268331.us)
  %.14235.us = tail call i32 @llvm.umax.i32(i32 %.3279330.us, i32 %.13234333.us)
  %.14252.us = tail call i32 @llvm.umin.i32(i32 %.3275348.us, i32 %.13251332.us)
  %spec.select307.us = tail call i32 @llvm.umax.i32(i32 %.3275348.us, i32 %.10218334.us)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %scalar.ph
  %.15270.us = phi i32 [ %.13268331.us, %scalar.ph ], [ %.14269.us, %bb.b ] ; 2 uses
  %.15253.us = phi i32 [ %.13251332.us, %scalar.ph ], [ %.14252.us, %bb.b ] ; 2 uses
  %.15236.us = phi i32 [ %.13234333.us, %scalar.ph ], [ %.14235.us, %bb.b ] ; 2 uses
  %.11219.us = phi i32 [ %.10218334.us, %scalar.ph ], [ %spec.select307.us, %bb.b ] ; 2 uses
  %.11206.us = phi i32 [ %.10205335.us, %scalar.ph ], [ %i.an, %bb.b ] ; 2 uses
  %.15.us = phi i32 [ %.13336.us, %scalar.ph ], [ %spec.select303.us, %bb.b ] ; 2 uses
  %.0.us = phi i32 [ 0, %scalar.ph ], [ %i.al, %bb.b ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.1339.us, i64 4 ; 2 uses
  store i32 %.0.us, ptr %.1339.us, align 4, !tbaa !14
  %i.ap = add nuw i32 %.3279330.us, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.ap, %1
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !374

._crit_edge.us:                                   ; preds = %bb.c, %middle.block
  %.15270.us.lcssa = phi i32 [ %i.ah, %middle.block ], [ %.15270.us, %bb.c ] ; 2 uses
  %.15253.us.lcssa = phi i32 [ %i.ag, %middle.block ], [ %.15253.us, %bb.c ] ; 2 uses
  %.15236.us.lcssa = phi i32 [ %i.af, %middle.block ], [ %.15236.us, %bb.c ] ; 2 uses
  %.11219.us.lcssa = phi i32 [ %i.ae, %middle.block ], [ %.11219.us, %bb.c ] ; 2 uses
  %.11206.us.lcssa = phi i32 [ %i.ad, %middle.block ], [ %.11206.us, %bb.c ] ; 2 uses
  %.15.us.lcssa = phi i32 [ %rdx.select, %middle.block ], [ %.15.us, %bb.c ] ; 2 uses
  %.lcssa706 = phi ptr [ %i.m, %middle.block ], [ %i.ao, %bb.c ]
  %.lcssa705 = phi ptr [ %i.n, %middle.block ], [ %i.ak, %bb.c ]
  %i.aq = getelementptr i8, ptr %.0170355.us, i64 %i.e
  %scevgep = getelementptr i8, ptr %i.aq, i64 4
  %i.ar = add nuw i32 %.3275348.us, 1             ; 2 uses
  %exitcond625.not = icmp eq i32 %i.ar, %2
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond625.not, label %.loopexit, label %.preheader327.us, !llvm.loop !375

.preheader325:                                    ; preds = %bb.a
  %.not593 = icmp eq i32 %2, 0
  %.not594 = icmp eq i32 %1, 0
  %or.cond687 = or i1 %.not593, %.not594
  br i1 %or.cond687, label %.thread, label %.preheader324.lr.ph.split.us

.preheader324.lr.ph.split.us:                     ; preds = %.preheader325
  br i1 %.not, label %.preheader324.us.us, label %.preheader324.us

.preheader324.us.us:                              ; preds = %.preheader324.lr.ph.split.us, %._crit_edge.split.us436.us
  %.0173407.us.us = phi ptr [ %i.bk, %._crit_edge.split.us436.us ], [ %5, %.preheader324.lr.ph.split.us ]
  %.0175406.us.us = phi ptr [ %i.bj, %._crit_edge.split.us436.us ], [ %4, %.preheader324.lr.ph.split.us ]
  %.0177405.us.us = phi ptr [ %i.bi, %._crit_edge.split.us436.us ], [ %3, %.preheader324.lr.ph.split.us ]
  %.8404.us.us = phi i32 [ %.11.us.us, %._crit_edge.split.us436.us ], [ 1, %.preheader324.lr.ph.split.us ]
  %.6201403.us.us = phi i32 [ %.8203.us433.us, %._crit_edge.split.us436.us ], [ 0, %.preheader324.lr.ph.split.us ]
  %.6214402.us.us = phi i32 [ %.8216.us432.us, %._crit_edge.split.us436.us ], [ 0, %.preheader324.lr.ph.split.us ]
  %.8229401.us.us = phi i32 [ %.11232.us431.us, %._crit_edge.split.us436.us ], [ 0, %.preheader324.lr.ph.split.us ]
  %.8246400.us.us = phi i32 [ %.11249.us430.us, %._crit_edge.split.us436.us ], [ %i.c, %.preheader324.lr.ph.split.us ]
  %.8263399.us.us = phi i32 [ %.11266.us429.us, %._crit_edge.split.us436.us ], [ %i.b, %.preheader324.lr.ph.split.us ]
  %.2274397.us.us = phi i32 [ %i.bm, %._crit_edge.split.us436.us ], [ 0, %.preheader324.lr.ph.split.us ] ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.preheader324.us.us
  %.1174378.us415.us = phi ptr [ %.0173407.us.us, %.preheader324.us.us ], [ %i.bk, %bb.f ] ; 2 uses
  %.1176377.us416.us = phi ptr [ %.0175406.us.us, %.preheader324.us.us ], [ %i.bj, %bb.f ] ; 3 uses
  %.1178376.us417.us = phi ptr [ %.0177405.us.us, %.preheader324.us.us ], [ %i.bi, %bb.f ] ; 3 uses
  %.9375.us.us = phi i32 [ %.8404.us.us, %.preheader324.us.us ], [ %.11.us.us, %bb.f ] ; 2 uses
  %.7202374.us418.us = phi i32 [ %.6201403.us.us, %.preheader324.us.us ], [ %.8203.us433.us, %bb.f ] ; 2 uses
  %.7215373.us419.us = phi i32 [ %.6214402.us.us, %.preheader324.us.us ], [ %.8216.us432.us, %bb.f ] ; 2 uses
  %.9230372.us420.us = phi i32 [ %.8229401.us.us, %.preheader324.us.us ], [ %.11232.us431.us, %bb.f ] ; 2 uses
  %.9247371.us421.us = phi i32 [ %.8246400.us.us, %.preheader324.us.us ], [ %.11249.us430.us, %bb.f ] ; 2 uses
  %.9264370.us422.us = phi i32 [ %.8263399.us.us, %.preheader324.us.us ], [ %.11266.us429.us, %bb.f ] ; 2 uses
  %.2278369.us423.us = phi i32 [ 0, %.preheader324.us.us ], [ %i.bl, %bb.f ] ; 3 uses
  %i.as = getelementptr i8, ptr %.1178376.us417.us, i64 1
  %i.at = load i16, ptr %i.as, align 1
  %i.au = zext i16 %i.at to i32
  %i.av = shl nuw nsw i32 %i.au, 8
  %i.aw = load i8, ptr %.1178376.us417.us, align 1, !tbaa !117
  %i.ax = zext i8 %i.aw to i32
  %i.ay = or disjoint i32 %i.av, %i.ax
  %i.az = getelementptr i8, ptr %.1176377.us416.us, i64 1
  %i.ba = load i16, ptr %i.az, align 1
  %i.bb = zext i16 %i.ba to i32
  %i.bc = shl nuw nsw i32 %i.bb, 8
  %i.bd = load i8, ptr %.1176377.us416.us, align 1, !tbaa !117
  %i.be = zext i8 %i.bd to i32
  %i.bf = or disjoint i32 %i.bc, %i.be            ; 3 uses
  %.not293.us424.us = icmp eq i32 %i.ay, %i.bf
  br i1 %.not293.us424.us, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bg = add i32 %.7202374.us418.us, 1
  %i.bh = icmp eq i32 %i.bf, %10
  %spec.select = select i1 %i.bh, i32 0, i32 %.9375.us.us
  %.10265.us425.us = tail call i32 @llvm.umin.i32(i32 %.2278369.us423.us, i32 %.9264370.us422.us)
  %.10231.us426.us = tail call i32 @llvm.umax.i32(i32 %.2278369.us423.us, i32 %.9230372.us420.us)
  %.10248.us427.us = tail call i32 @llvm.umin.i32(i32 %.2274397.us.us, i32 %.9247371.us421.us)
  %spec.select306.us428.us = tail call i32 @llvm.umax.i32(i32 %.2274397.us.us, i32 %.7215373.us419.us)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.11266.us429.us = phi i32 [ %.9264370.us422.us, %bb.d ], [ %.10265.us425.us, %bb.e ] ; 3 uses
  %.11249.us430.us = phi i32 [ %.9247371.us421.us, %bb.d ], [ %.10248.us427.us, %bb.e ] ; 3 uses
  %.11232.us431.us = phi i32 [ %.9230372.us420.us, %bb.d ], [ %.10231.us426.us, %bb.e ] ; 3 uses
  %.8216.us432.us = phi i32 [ %.7215373.us419.us, %bb.d ], [ %spec.select306.us428.us, %bb.e ] ; 3 uses
  %.8203.us433.us = phi i32 [ %.7202374.us418.us, %bb.d ], [ %i.bg, %bb.e ] ; 3 uses
  %.11.us.us = phi i32 [ %.9375.us.us, %bb.d ], [ %spec.select, %bb.e ] ; 3 uses
  %.0172.us434.us = phi i32 [ %10, %bb.d ], [ %i.bf, %bb.e ]
  %.0.extract.trunc.us435.us = trunc i32 %.0172.us434.us to i24
  store i24 %.0.extract.trunc.us435.us, ptr %.1174378.us415.us, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %.1178376.us417.us, i64 3 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.1176377.us416.us, i64 3 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.1174378.us415.us, i64 3 ; 2 uses
  %i.bl = add nuw i32 %.2278369.us423.us, 1       ; 2 uses
  %exitcond628.not = icmp eq i32 %i.bl, %1
  br i1 %exitcond628.not, label %._crit_edge.split.us436.us, label %bb.d, !llvm.loop !376

._crit_edge.split.us436.us:                       ; preds = %bb.f
  %i.bm = add nuw i32 %.2274397.us.us, 1          ; 2 uses
  %exitcond629.not = icmp eq i32 %i.bm, %2
  br i1 %exitcond629.not, label %.loopexit, label %.preheader324.us.us, !llvm.loop !377

.preheader324.us:                                 ; preds = %.preheader324.lr.ph.split.us, %._crit_edge.split.us.us
  %.0173407.us = phi ptr [ %i.ce, %._crit_edge.split.us.us ], [ %5, %.preheader324.lr.ph.split.us ]
  %.0175406.us = phi ptr [ %i.cd, %._crit_edge.split.us.us ], [ %4, %.preheader324.lr.ph.split.us ]
  %.0177405.us = phi ptr [ %i.cc, %._crit_edge.split.us.us ], [ %3, %.preheader324.lr.ph.split.us ]
  %.6201403.us = phi i32 [ %.8203.us.us, %._crit_edge.split.us.us ], [ 0, %.preheader324.lr.ph.split.us ]
  %.6214402.us = phi i32 [ %.8216.us.us, %._crit_edge.split.us.us ], [ 0, %.preheader324.lr.ph.split.us ]
  %.8229401.us = phi i32 [ %.11232.us.us, %._crit_edge.split.us.us ], [ 0, %.preheader324.lr.ph.split.us ]
  %.8246400.us = phi i32 [ %.11249.us.us, %._crit_edge.split.us.us ], [ %i.c, %.preheader324.lr.ph.split.us ]
  %.8263399.us = phi i32 [ %.11266.us.us, %._crit_edge.split.us.us ], [ %i.b, %.preheader324.lr.ph.split.us ]
  %.2274397.us = phi i32 [ %i.cg, %._crit_edge.split.us.us ], [ 0, %.preheader324.lr.ph.split.us ] ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.preheader324.us
  %.1174378.us.us = phi ptr [ %.0173407.us, %.preheader324.us ], [ %i.ce, %bb.i ] ; 2 uses
  %.1176377.us.us = phi ptr [ %.0175406.us, %.preheader324.us ], [ %i.cd, %bb.i ] ; 3 uses
  %.1178376.us.us = phi ptr [ %.0177405.us, %.preheader324.us ], [ %i.cc, %bb.i ] ; 3 uses
  %.7202374.us.us = phi i32 [ %.6201403.us, %.preheader324.us ], [ %.8203.us.us, %bb.i ] ; 2 uses
  %.7215373.us.us = phi i32 [ %.6214402.us, %.preheader324.us ], [ %.8216.us.us, %bb.i ] ; 2 uses
  %.9230372.us.us = phi i32 [ %.8229401.us, %.preheader324.us ], [ %.11232.us.us, %bb.i ] ; 2 uses
  %.9247371.us.us = phi i32 [ %.8246400.us, %.preheader324.us ], [ %.11249.us.us, %bb.i ] ; 2 uses
  %.9264370.us.us = phi i32 [ %.8263399.us, %.preheader324.us ], [ %.11266.us.us, %bb.i ] ; 2 uses
  %.2278369.us.us = phi i32 [ 0, %.preheader324.us ], [ %i.cf, %bb.i ] ; 3 uses
  %i.bn = getelementptr i8, ptr %.1178376.us.us, i64 1
  %i.bo = load i16, ptr %i.bn, align 1
  %i.bp = zext i16 %i.bo to i32
  %i.bq = shl nuw nsw i32 %i.bp, 8
  %i.br = load i8, ptr %.1178376.us.us, align 1, !tbaa !117
  %i.bs = zext i8 %i.br to i32
  %i.bt = or disjoint i32 %i.bq, %i.bs
  %i.bu = getelementptr i8, ptr %.1176377.us.us, i64 1
  %i.bv = load i16, ptr %i.bu, align 1
  %i.bw = zext i16 %i.bv to i32
  %i.bx = shl nuw nsw i32 %i.bw, 8
  %i.by = load i8, ptr %.1176377.us.us, align 1, !tbaa !117
  %i.bz = zext i8 %i.by to i32
  %i.ca = or disjoint i32 %i.bx, %i.bz            ; 2 uses
  %.not293.us.us = icmp eq i32 %i.bt, %i.ca
  br i1 %.not293.us.us, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cb = add i32 %.7202374.us.us, 1
  %.10265.us.us = tail call i32 @llvm.umin.i32(i32 %.2278369.us.us, i32 %.9264370.us.us)
  %.10231.us.us = tail call i32 @llvm.umax.i32(i32 %.2278369.us.us, i32 %.9230372.us.us)
  %.10248.us.us = tail call i32 @llvm.umin.i32(i32 %.2274397.us, i32 %.9247371.us.us)
  %spec.select306.us.us = tail call i32 @llvm.umax.i32(i32 %.2274397.us, i32 %.7215373.us.us)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.11266.us.us = phi i32 [ %.9264370.us.us, %bb.g ], [ %.10265.us.us, %bb.h ] ; 3 uses
  %.11249.us.us = phi i32 [ %.9247371.us.us, %bb.g ], [ %.10248.us.us, %bb.h ] ; 3 uses
  %.11232.us.us = phi i32 [ %.9230372.us.us, %bb.g ], [ %.10231.us.us, %bb.h ] ; 3 uses
  %.8216.us.us = phi i32 [ %.7215373.us.us, %bb.g ], [ %spec.select306.us.us, %bb.h ] ; 3 uses
  %.8203.us.us = phi i32 [ %.7202374.us.us, %bb.g ], [ %i.cb, %bb.h ] ; 3 uses
  %.0172.us.us = phi i32 [ %10, %bb.g ], [ %i.ca, %bb.h ]
  %.0.extract.trunc.us.us = trunc i32 %.0172.us.us to i24
  store i24 %.0.extract.trunc.us.us, ptr %.1174378.us.us, align 1
  %i.cc = getelementptr inbounds nuw i8, ptr %.1178376.us.us, i64 3 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.1176377.us.us, i64 3 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.1174378.us.us, i64 3 ; 2 uses
  %i.cf = add nuw i32 %.2278369.us.us, 1          ; 2 uses
  %exitcond626.not = icmp eq i32 %i.cf, %1
  br i1 %exitcond626.not, label %._crit_edge.split.us.us, label %bb.g, !llvm.loop !376

._crit_edge.split.us.us:                          ; preds = %bb.i
  %i.cg = add nuw i32 %.2274397.us, 1             ; 2 uses
  %exitcond627.not = icmp eq i32 %i.cg, %2
  br i1 %exitcond627.not, label %.loopexit, label %.preheader324.us, !llvm.loop !377

.preheader322:                                    ; preds = %bb.a
  %.not595 = icmp eq i32 %2, 0
  %.not596 = icmp eq i32 %1, 0
  %or.cond688 = or i1 %.not595, %.not596
  br i1 %or.cond688, label %.thread, label %.preheader321.us.preheader

.preheader321.us.preheader:                       ; preds = %.preheader322
  %i.ch = zext i32 %i.b to i64
  %i.ci = shl nuw nsw i64 %i.ch, 1                ; 2 uses
  %i.cj = sub nuw nsw i64 -2, %i.ci
  %i.ck = zext i32 %1 to i64                      ; 2 uses
  %min.iters.check749 = icmp ult i32 %1, 4
  %n.vec751 = and i64 %i.ck, 4294967292           ; 4 uses
  %i.cl = shl nuw nsw i64 %n.vec751, 1            ; 3 uses
  %i.cm = trunc nuw i64 %n.vec751 to i32
  %cmp.n787 = icmp eq i64 %n.vec751, %i.ck
  br label %.preheader321.us

.preheader321.us:                                 ; preds = %.preheader321.us.preheader, %._crit_edge.us492
  %indvar742 = phi i64 [ 0, %.preheader321.us.preheader ], [ %indvar.next743, %._crit_edge.us492 ] ; 2 uses
  %.0180485.us = phi ptr [ %5, %.preheader321.us.preheader ], [ %.lcssa698, %._crit_edge.us492 ] ; 5 uses
  %.0182484.us = phi ptr [ %4, %.preheader321.us.preheader ], [ %.lcssa697, %._crit_edge.us492 ] ; 5 uses
  %.0184483.us = phi ptr [ %3, %.preheader321.us.preheader ], [ %scevgep630, %._crit_edge.us492 ] ; 5 uses
  %.4482.us = phi i32 [ %spec.store.select, %.preheader321.us.preheader ], [ %.7.us.lcssa, %._crit_edge.us492 ] ; 3 uses
  %.3198481.us = phi i32 [ 0, %.preheader321.us.preheader ], [ %.5200.us.lcssa, %._crit_edge.us492 ] ; 3 uses
  %.3211480.us = phi i32 [ 0, %.preheader321.us.preheader ], [ %.5213.us.lcssa, %._crit_edge.us492 ] ; 3 uses
  %.4225479.us = phi i32 [ 0, %.preheader321.us.preheader ], [ %.7228.us.lcssa, %._crit_edge.us492 ] ; 3 uses
  %.4242478.us = phi i32 [ %i.c, %.preheader321.us.preheader ], [ %.7245.us.lcssa, %._crit_edge.us492 ] ; 3 uses
  %.4259477.us = phi i32 [ %i.b, %.preheader321.us.preheader ], [ %.7262.us.lcssa, %._crit_edge.us492 ] ; 3 uses
  %.1273476.us = phi i32 [ 0, %.preheader321.us.preheader ], [ %i.dv, %._crit_edge.us492 ] ; 4 uses
  br i1 %min.iters.check749, label %scalar.ph748.preheader, label %vector.memcheck740

vector.memcheck740:                               ; preds = %.preheader321.us
  %.0182484.us745 = ptrtoaddr ptr %.0182484.us to i64
  %.0180485.us751 = ptrtoaddr ptr %.0180485.us to i64 ; 2 uses
  %14 = mul i64 %indvar742, %i.cj
  %15 = sub i64 %14, %i.a
  %i.cn = add i64 %15, %.0180485.us751
  %i.co = add i64 %i.cn, -1
  %diff.check744 = icmp ult i64 %i.co, 7
  %i.cp = sub i64 %.0182484.us745, %.0180485.us751
  %diff.check746 = icmp ugt i64 %i.cp, -8
  %conflict.rdx747 = or i1 %diff.check744, %diff.check746
  br i1 %conflict.rdx747, label %scalar.ph748.preheader, label %vector.ph750

vector.ph750:                                     ; preds = %vector.memcheck740
  %i.cq = getelementptr i8, ptr %.0180485.us, i64 %i.cl ; 2 uses
  %i.cr = getelementptr i8, ptr %.0182484.us, i64 %i.cl ; 2 uses
  %i.cs = getelementptr i8, ptr %.0184483.us, i64 %i.cl
  %i.ct = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.3198481.us, i64 0
  %broadcast.splatinsert752 = insertelement <4 x i32> poison, i32 %.3211480.us, i64 0
  %broadcast.splat753 = shufflevector <4 x i32> %broadcast.splatinsert752, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert754 = insertelement <4 x i32> poison, i32 %.4225479.us, i64 0
  %broadcast.splat755 = shufflevector <4 x i32> %broadcast.splatinsert754, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert756 = insertelement <4 x i32> poison, i32 %.4242478.us, i64 0
  %broadcast.splat757 = shufflevector <4 x i32> %broadcast.splatinsert756, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert758 = insertelement <4 x i32> poison, i32 %.4259477.us, i64 0
  %broadcast.splat759 = shufflevector <4 x i32> %broadcast.splatinsert758, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert760 = insertelement <4 x i32> poison, i32 %.1273476.us, i64 0
  %broadcast.splat761 = shufflevector <4 x i32> %broadcast.splatinsert760, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body762

vector.body762:                                   ; preds = %vector.body762, %vector.ph750
  %index763 = phi i64 [ 0, %vector.ph750 ], [ %index.next783, %vector.body762 ] ; 2 uses
  %vec.phi764 = phi <4 x i1> [ zeroinitializer, %vector.ph750 ], [ %predphi781, %vector.body762 ]
  %vec.phi765 = phi <4 x i32> [ %i.ct, %vector.ph750 ], [ %predphi780, %vector.body762 ]
  %vec.phi766 = phi <4 x i32> [ %broadcast.splat753, %vector.ph750 ], [ %predphi779, %vector.body762 ] ; 2 uses
  %vec.phi767 = phi <4 x i32> [ %broadcast.splat755, %vector.ph750 ], [ %predphi778, %vector.body762 ] ; 2 uses
  %vec.phi768 = phi <4 x i32> [ %broadcast.splat757, %vector.ph750 ], [ %predphi777, %vector.body762 ] ; 2 uses
  %vec.phi769 = phi <4 x i32> [ %broadcast.splat759, %vector.ph750 ], [ %predphi776, %vector.body762 ] ; 2 uses
  %vec.ind770 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph750 ], [ %vec.ind.next784, %vector.body762 ] ; 3 uses
  %i.cu = shl i64 %index763, 1                    ; 3 uses
  %next.gep771 = getelementptr i8, ptr %.0180485.us, i64 %i.cu
  %next.gep772 = getelementptr i8, ptr %.0182484.us, i64 %i.cu
  %next.gep773 = getelementptr i8, ptr %.0184483.us, i64 %i.cu
  %wide.load774 = load <4 x i16>, ptr %next.gep773, align 2, !tbaa !150 ; 2 uses
  %wide.load775 = load <4 x i16>, ptr %next.gep772, align 2, !tbaa !150 ; 4 uses
  %i.cv = icmp ne <4 x i16> %wide.load774, %wide.load775
  %i.cw = or <4 x i16> %wide.load775, %wide.load774
  %i.cx = icmp ugt <4 x i16> %i.cw, splat (i16 255)
  %.not922 = and <4 x i1> %i.cv, %i.cx            ; 7 uses
  %i.cy = icmp ult <4 x i16> %wide.load775, splat (i16 -256)
  %i.cz = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %vec.ind770, <4 x i32> %vec.phi769)
  %i.da = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.ind770, <4 x i32> %vec.phi767)
  %i.db = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %broadcast.splat761, <4 x i32> %vec.phi768)
  %i.dc = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %broadcast.splat761, <4 x i32> %vec.phi766)
  %predphi776 = select <4 x i1> %.not922, <4 x i32> %i.cz, <4 x i32> %vec.phi769 ; 2 uses
  %predphi777 = select <4 x i1> %.not922, <4 x i32> %i.db, <4 x i32> %vec.phi768 ; 2 uses
  %predphi778 = select <4 x i1> %.not922, <4 x i32> %i.da, <4 x i32> %vec.phi767 ; 2 uses
  %predphi779 = select <4 x i1> %.not922, <4 x i32> %i.dc, <4 x i32> %vec.phi766 ; 2 uses
  %i.dd = zext <4 x i1> %.not922 to <4 x i32>
  %predphi780 = add <4 x i32> %vec.phi765, %i.dd  ; 2 uses
  %i.de = and <4 x i1> %.not922, %i.cy
  %.fr924 = freeze <4 x i1> %i.de
  %predphi781 = or <4 x i1> %vec.phi764, %.fr924  ; 2 uses
  %predphi782 = select <4 x i1> %.not922, <4 x i16> %wide.load775, <4 x i16> zeroinitializer
  store <4 x i16> %predphi782, ptr %next.gep771, align 2, !tbaa !150
  %index.next783 = add nuw i64 %index763, 4       ; 2 uses
  %vec.ind.next784 = add nuw <4 x i32> %vec.ind770, splat (i32 4)
  %i.df = icmp eq i64 %index.next783, %n.vec751
  br i1 %i.df, label %middle.block785, label %vector.body762, !llvm.loop !378

middle.block785:                                  ; preds = %vector.body762
  %i.dg = bitcast <4 x i1> %predphi781 to i4
  %.not925 = icmp eq i4 %i.dg, 0
  %rdx.select786 = select i1 %.not925, i32 %.4482.us, i32 0 ; 2 uses
  %i.dh = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %predphi780) ; 2 uses
  %i.di = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %predphi779) ; 2 uses
  %i.dj = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %predphi778) ; 2 uses
  %i.dk = tail call i32 @llvm.vector.reduce.umin.v4i32(<4 x i32> %predphi777) ; 2 uses
  %i.dl = tail call i32 @llvm.vector.reduce.umin.v4i32(<4 x i32> %predphi776) ; 2 uses
  br i1 %cmp.n787, label %._crit_edge.us492, label %scalar.ph748.preheader

scalar.ph748.preheader:                           ; preds = %vector.memcheck740, %.preheader321.us, %middle.block785
  %.1181467.us.ph = phi ptr [ %.0180485.us, %vector.memcheck740 ], [ %.0180485.us, %.preheader321.us ], [ %i.cq, %middle.block785 ]
  %.1183466.us.ph = phi ptr [ %.0182484.us, %vector.memcheck740 ], [ %.0182484.us, %.preheader321.us ], [ %i.cr, %middle.block785 ]
  %.1185465.us.ph = phi ptr [ %.0184483.us, %vector.memcheck740 ], [ %.0184483.us, %.preheader321.us ], [ %i.cs, %middle.block785 ]
  %.5464.us.ph = phi i32 [ %.4482.us, %vector.memcheck740 ], [ %.4482.us, %.preheader321.us ], [ %rdx.select786, %middle.block785 ]
  %.4199463.us.ph = phi i32 [ %.3198481.us, %vector.memcheck740 ], [ %.3198481.us, %.preheader321.us ], [ %i.dh, %middle.block785 ]
  %.4212462.us.ph = phi i32 [ %.3211480.us, %vector.memcheck740 ], [ %.3211480.us, %.preheader321.us ], [ %i.di, %middle.block785 ]
  %.5226461.us.ph = phi i32 [ %.4225479.us, %vector.memcheck740 ], [ %.4225479.us, %.preheader321.us ], [ %i.dj, %middle.block785 ]
  %.5243460.us.ph = phi i32 [ %.4242478.us, %vector.memcheck740 ], [ %.4242478.us, %.preheader321.us ], [ %i.dk, %middle.block785 ]
  %.5260459.us.ph = phi i32 [ %.4259477.us, %vector.memcheck740 ], [ %.4259477.us, %.preheader321.us ], [ %i.dl, %middle.block785 ]
  %.1277458.us.ph = phi i32 [ 0, %vector.memcheck740 ], [ 0, %.preheader321.us ], [ %i.cm, %middle.block785 ]
  br label %scalar.ph748

scalar.ph748:                                     ; preds = %scalar.ph748.preheader, %bb.k
  %.1181467.us = phi ptr [ %i.ds, %bb.k ], [ %.1181467.us.ph, %scalar.ph748.preheader ] ; 2 uses
  %.1183466.us = phi ptr [ %i.do, %bb.k ], [ %.1183466.us.ph, %scalar.ph748.preheader ] ; 2 uses
  %.1185465.us = phi ptr [ %i.dm, %bb.k ], [ %.1185465.us.ph, %scalar.ph748.preheader ] ; 2 uses
  %.5464.us = phi i32 [ %.7.us, %bb.k ], [ %.5464.us.ph, %scalar.ph748.preheader ] ; 2 uses
  %.4199463.us = phi i32 [ %.5200.us, %bb.k ], [ %.4199463.us.ph, %scalar.ph748.preheader ] ; 2 uses
  %.4212462.us = phi i32 [ %.5213.us, %bb.k ], [ %.4212462.us.ph, %scalar.ph748.preheader ] ; 2 uses
  %.5226461.us = phi i32 [ %.7228.us, %bb.k ], [ %.5226461.us.ph, %scalar.ph748.preheader ] ; 2 uses
  %.5243460.us = phi i32 [ %.7245.us, %bb.k ], [ %.5243460.us.ph, %scalar.ph748.preheader ] ; 2 uses
  %.5260459.us = phi i32 [ %.7262.us, %bb.k ], [ %.5260459.us.ph, %scalar.ph748.preheader ] ; 2 uses
  %.1277458.us = phi i32 [ %i.dt, %bb.k ], [ %.1277458.us.ph, %scalar.ph748.preheader ] ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.1185465.us, i64 2
  %i.dn = load i16, ptr %.1185465.us, align 2, !tbaa !150 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.1183466.us, i64 2 ; 2 uses
  %i.dp = load i16, ptr %.1183466.us, align 2, !tbaa !150 ; 4 uses
  %.not294.us = icmp eq i16 %i.dn, %i.dp
  %i.dq = or i16 %i.dp, %i.dn
  %or.cond300.us = icmp ult i16 %i.dq, 256
  %or.cond318.us = or i1 %.not294.us, %or.cond300.us
  br i1 %or.cond318.us, label %bb.k, label %bb.j

bb.j:                                             ; preds = %scalar.ph748
  %i.dr = add i32 %.4199463.us, 1
  %.not297.us = icmp ugt i16 %i.dp, -257
  %spec.select.us = select i1 %.not297.us, i32 %.5464.us, i32 0
  %.6261.us = tail call i32 @llvm.umin.i32(i32 %.1277458.us, i32 %.5260459.us)
  %.6227.us = tail call i32 @llvm.umax.i32(i32 %.1277458.us, i32 %.5226461.us)
  %.6244.us = tail call i32 @llvm.umin.i32(i32 %.1273476.us, i32 %.5243460.us)
  %spec.select305.us = tail call i32 @llvm.umax.i32(i32 %.1273476.us, i32 %.4212462.us)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %scalar.ph748
  %.7262.us = phi i32 [ %.5260459.us, %scalar.ph748 ], [ %.6261.us, %bb.j ] ; 2 uses
  %.7245.us = phi i32 [ %.5243460.us, %scalar.ph748 ], [ %.6244.us, %bb.j ] ; 2 uses
  %.7228.us = phi i32 [ %.5226461.us, %scalar.ph748 ], [ %.6227.us, %bb.j ] ; 2 uses
  %.5213.us = phi i32 [ %.4212462.us, %scalar.ph748 ], [ %spec.select305.us, %bb.j ] ; 2 uses
  %.5200.us = phi i32 [ %.4199463.us, %scalar.ph748 ], [ %i.dr, %bb.j ] ; 2 uses
  %.7.us = phi i32 [ %.5464.us, %scalar.ph748 ], [ %spec.select.us, %bb.j ] ; 2 uses
  %.0179.us = phi i16 [ 0, %scalar.ph748 ], [ %i.dp, %bb.j ]
  %i.ds = getelementptr inbounds nuw i8, ptr %.1181467.us, i64 2 ; 2 uses
  store i16 %.0179.us, ptr %.1181467.us, align 2, !tbaa !150
  %i.dt = add nuw i32 %.1277458.us, 1             ; 2 uses
  %exitcond631.not = icmp eq i32 %i.dt, %1
  br i1 %exitcond631.not, label %._crit_edge.us492, label %scalar.ph748, !llvm.loop !379

._crit_edge.us492:                                ; preds = %bb.k, %middle.block785
  %.7262.us.lcssa = phi i32 [ %i.dl, %middle.block785 ], [ %.7262.us, %bb.k ] ; 2 uses
  %.7245.us.lcssa = phi i32 [ %i.dk, %middle.block785 ], [ %.7245.us, %bb.k ] ; 2 uses
  %.7228.us.lcssa = phi i32 [ %i.dj, %middle.block785 ], [ %.7228.us, %bb.k ] ; 2 uses
  %.5213.us.lcssa = phi i32 [ %i.di, %middle.block785 ], [ %.5213.us, %bb.k ] ; 2 uses
  %.5200.us.lcssa = phi i32 [ %i.dh, %middle.block785 ], [ %.5200.us, %bb.k ] ; 2 uses
  %.7.us.lcssa = phi i32 [ %rdx.select786, %middle.block785 ], [ %.7.us, %bb.k ] ; 2 uses
  %.lcssa698 = phi ptr [ %i.cq, %middle.block785 ], [ %i.ds, %bb.k ]
  %.lcssa697 = phi ptr [ %i.cr, %middle.block785 ], [ %i.do, %bb.k ]
  %i.du = getelementptr i8, ptr %.0184483.us, i64 %i.ci
  %scevgep630 = getelementptr i8, ptr %i.du, i64 2
  %i.dv = add nuw i32 %.1273476.us, 1             ; 2 uses
  %exitcond632.not = icmp eq i32 %i.dv, %2
  %indvar.next743 = add i64 %indvar742, 1
  br i1 %exitcond632.not, label %.loopexit, label %.preheader321.us, !llvm.loop !380

.preheader320:                                    ; preds = %bb.a
  %.not597 = icmp eq i32 %2, 0
  br i1 %.not597, label %.thread, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader320
  %.not598 = icmp eq i32 %1, 0
  %i.dw = trunc i32 %10 to i8                     ; 4 uses
  br i1 %.not598, label %.thread, label %.preheader.lr.ph.split.us

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %i.dx = zext i32 %1 to i64                      ; 8 uses
  br i1 %.not, label %.preheader.us.us.preheader, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph.split.us
  %min.iters.check807 = icmp ult i32 %1, 4
  %n.vec809 = and i64 %i.dx, 4294967292           ; 6 uses
  %i.dy = trunc nuw i64 %n.vec809 to i32
  %broadcast.splatinsert820 = insertelement <4 x i8> poison, i8 %i.dw, i64 0
  %broadcast.splat821 = shufflevector <4 x i8> %broadcast.splatinsert820, <4 x i8> poison, <4 x i32> zeroinitializer
  %cmp.n844 = icmp eq i64 %n.vec809, %i.dx
  br label %.preheader.us

.preheader.us.us.preheader:                       ; preds = %.preheader.lr.ph.split.us
  %min.iters.check863 = icmp ult i32 %1, 8
  %n.vec865 = and i64 %i.dx, 4294967292           ; 6 uses
  %i.dz = trunc nuw i64 %n.vec865 to i32
  %broadcast.splatinsert876 = insertelement <4 x i32> poison, i32 %10, i64 0
  %broadcast.splat877 = shufflevector <4 x i32> %broadcast.splatinsert876, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert878 = insertelement <4 x i8> poison, i8 %i.dw, i64 0
  %broadcast.splat879 = shufflevector <4 x i8> %broadcast.splatinsert878, <4 x i8> poison, <4 x i32> zeroinitializer
  %cmp.n905 = icmp eq i64 %n.vec865, %i.dx
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %.preheader.us.us.preheader, %._crit_edge.split.us567.us
  %indvar858 = phi i64 [ %indvar.next859, %._crit_edge.split.us567.us ], [ 0, %.preheader.us.us.preheader ] ; 2 uses
  %.0187538.us.us = phi ptr [ %.lcssa694, %._crit_edge.split.us567.us ], [ %5, %.preheader.us.us.preheader ] ; 5 uses
  %.0189537.us.us = phi ptr [ %.lcssa, %._crit_edge.split.us567.us ], [ %4, %.preheader.us.us.preheader ] ; 5 uses
  %.0191536.us.us = phi ptr [ %scevgep636, %._crit_edge.split.us567.us ], [ %3, %.preheader.us.us.preheader ] ; 5 uses
  %.0193535.us.us = phi i32 [ %.3.us.us.lcssa, %._crit_edge.split.us567.us ], [ 1, %.preheader.us.us.preheader ] ; 3 uses
  %.0195534.us.us = phi i32 [ %.2197.us565.us.lcssa, %._crit_edge.split.us567.us ], [ 0, %.preheader.us.us.preheader ] ; 3 uses
  %.0208533.us.us = phi i32 [ %.2210.us564.us.lcssa, %._crit_edge.split.us567.us ], [ 0, %.preheader.us.us.preheader ] ; 3 uses
  %.0221532.us.us = phi i32 [ %.3224.us563.us.lcssa, %._crit_edge.split.us567.us ], [ 0, %.preheader.us.us.preheader ] ; 3 uses
  %.0238531.us.us = phi i32 [ %.3241.us562.us.lcssa, %._crit_edge.split.us567.us ], [ %i.c, %.preheader.us.us.preheader ] ; 3 uses
  %.0255530.us.us = phi i32 [ %.3258.us561.us.lcssa, %._crit_edge.split.us567.us ], [ %i.b, %.preheader.us.us.preheader ] ; 3 uses
  %.0272528.us.us = phi i32 [ %i.ff, %._crit_edge.split.us567.us ], [ 0, %.preheader.us.us.preheader ] ; 4 uses
  br i1 %min.iters.check863, label %scalar.ph862.preheader, label %vector.memcheck854

vector.memcheck854:                               ; preds = %.preheader.us.us
  %.0189537.us.us856 = ptrtoaddr ptr %.0189537.us.us to i64
  %.0187538.us.us855 = ptrtoaddr ptr %.0187538.us.us to i64 ; 2 uses
  %i.ea = sub i64 %.0189537.us.us856, %.0187538.us.us855
  %diff.check857 = icmp ugt i64 %i.ea, -4
  %16 = mul i64 %indvar858, %i.dx
  %17 = add i64 %16, %i.a
  %i.eb = sub i64 %17, %.0187538.us.us855
  %diff.check860 = icmp ugt i64 %i.eb, -4
  %conflict.rdx861 = or i1 %diff.check857, %diff.check860
  br i1 %conflict.rdx861, label %scalar.ph862.preheader, label %vector.ph864

vector.ph864:                                     ; preds = %vector.memcheck854
  %i.ec = getelementptr i8, ptr %.0187538.us.us, i64 %n.vec865 ; 2 uses
  %i.ed = getelementptr i8, ptr %.0189537.us.us, i64 %n.vec865 ; 2 uses
  %i.ee = getelementptr i8, ptr %.0191536.us.us, i64 %n.vec865
  %i.ef = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.0195534.us.us, i64 0
  %broadcast.splatinsert866 = insertelement <4 x i32> poison, i32 %.0208533.us.us, i64 0
  %broadcast.splat867 = shufflevector <4 x i32> %broadcast.splatinsert866, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert868 = insertelement <4 x i32> poison, i32 %.0221532.us.us, i64 0
  %broadcast.splat869 = shufflevector <4 x i32> %broadcast.splatinsert868, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert870 = insertelement <4 x i32> poison, i32 %.0238531.us.us, i64 0
  %broadcast.splat871 = shufflevector <4 x i32> %broadcast.splatinsert870, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert872 = insertelement <4 x i32> poison, i32 %.0255530.us.us, i64 0
  %broadcast.splat873 = shufflevector <4 x i32> %broadcast.splatinsert872, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert874 = insertelement <4 x i32> poison, i32 %.0272528.us.us, i64 0
  %broadcast.splat875 = shufflevector <4 x i32> %broadcast.splatinsert874, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body880

vector.body880:                                   ; preds = %vector.body880, %vector.ph864
  %index881 = phi i64 [ 0, %vector.ph864 ], [ %index.next901, %vector.body880 ] ; 4 uses
  %vec.phi882 = phi <4 x i1> [ zeroinitializer, %vector.ph864 ], [ %predphi899, %vector.body880 ]
  %vec.phi883 = phi <4 x i32> [ %i.ef, %vector.ph864 ], [ %predphi898, %vector.body880 ]
  %vec.phi884 = phi <4 x i32> [ %broadcast.splat867, %vector.ph864 ], [ %predphi897, %vector.body880 ] ; 2 uses
  %vec.phi885 = phi <4 x i32> [ %broadcast.splat869, %vector.ph864 ], [ %predphi896, %vector.body880 ] ; 2 uses
  %vec.phi886 = phi <4 x i32> [ %broadcast.splat871, %vector.ph864 ], [ %predphi895, %vector.body880 ] ; 2 uses
  %vec.phi887 = phi <4 x i32> [ %broadcast.splat873, %vector.ph864 ], [ %predphi894, %vector.body880 ] ; 2 uses
  %vec.ind888 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph864 ], [ %vec.ind.next902, %vector.body880 ] ; 3 uses
  %next.gep889 = getelementptr i8, ptr %.0187538.us.us, i64 %index881
  %next.gep890 = getelementptr i8, ptr %.0189537.us.us, i64 %index881
  %next.gep891 = getelementptr i8, ptr %.0191536.us.us, i64 %index881
  %wide.load892 = load <4 x i8>, ptr %next.gep890, align 1, !tbaa !117 ; 3 uses
  %wide.load893 = load <4 x i8>, ptr %next.gep891, align 1, !tbaa !117
  %i.eg = icmp ne <4 x i8> %wide.load893, %wide.load892 ; 7 uses
  %i.eh = zext <4 x i8> %wide.load892 to <4 x i32>
  %i.ei = icmp eq <4 x i32> %broadcast.splat877, %i.eh
  %i.ej = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %vec.ind888, <4 x i32> %vec.phi887)
  %i.ek = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.ind888, <4 x i32> %vec.phi885)
  %i.el = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %broadcast.splat875, <4 x i32> %vec.phi886)
  %i.em = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %broadcast.splat875, <4 x i32> %vec.phi884)
  %predphi894 = select <4 x i1> %i.eg, <4 x i32> %i.ej, <4 x i32> %vec.phi887 ; 2 uses
  %predphi895 = select <4 x i1> %i.eg, <4 x i32> %i.el, <4 x i32> %vec.phi886 ; 2 uses
  %predphi896 = select <4 x i1> %i.eg, <4 x i32> %i.ek, <4 x i32> %vec.phi885 ; 2 uses
  %predphi897 = select <4 x i1> %i.eg, <4 x i32> %i.em, <4 x i32> %vec.phi884 ; 2 uses
  %i.en = zext <4 x i1> %i.eg to <4 x i32>
  %predphi898 = add <4 x i32> %vec.phi883, %i.en  ; 2 uses
  %i.eo = and <4 x i1> %i.eg, %i.ei
  %.fr927 = freeze <4 x i1> %i.eo
  %predphi899 = or <4 x i1> %vec.phi882, %.fr927  ; 2 uses
  %predphi900 = select <4 x i1> %i.eg, <4 x i8> %wide.load892, <4 x i8> %broadcast.splat879
  store <4 x i8> %predphi900, ptr %next.gep889, align 1, !tbaa !117
  %index.next901 = add nuw i64 %index881, 4       ; 2 uses
  %vec.ind.next902 = add nuw <4 x i32> %vec.ind888, splat (i32 4)
  %i.ep = icmp eq i64 %index.next901, %n.vec865
  br i1 %i.ep, label %middle.block903, label %vector.body880, !llvm.loop !381

middle.block903:                                  ; preds = %vector.body880
  %i.eq = bitcast <4 x i1> %predphi899 to i4
  %.not928 = icmp eq i4 %i.eq, 0
  %rdx.select904 = select i1 %.not928, i32 %.0193535.us.us, i32 0 ; 2 uses
  %i.er = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %predphi898) ; 2 uses
  %i.es = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %predphi897) ; 2 uses
  %i.et = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %predphi896) ; 2 uses
  %i.eu = tail call i32 @llvm.vector.reduce.umin.v4i32(<4 x i32> %predphi895) ; 2 uses
  %i.ev = tail call i32 @llvm.vector.reduce.umin.v4i32(<4 x i32> %predphi894) ; 2 uses
  br i1 %cmp.n905, label %._crit_edge.split.us567.us, label %scalar.ph862.preheader

scalar.ph862.preheader:                           ; preds = %vector.memcheck854, %.preheader.us.us, %middle.block903
  %.1188509.us547.us.ph = phi ptr [ %.0187538.us.us, %vector.memcheck854 ], [ %.0187538.us.us, %.preheader.us.us ], [ %i.ec, %middle.block903 ]
  %.1190508.us548.us.ph = phi ptr [ %.0189537.us.us, %vector.memcheck854 ], [ %.0189537.us.us, %.preheader.us.us ], [ %i.ed, %middle.block903 ]
  %.1192507.us549.us.ph = phi ptr [ %.0191536.us.us, %vector.memcheck854 ], [ %.0191536.us.us, %.preheader.us.us ], [ %i.ee, %middle.block903 ]
  %.1194506.us.us.ph = phi i32 [ %.0193535.us.us, %vector.memcheck854 ], [ %.0193535.us.us, %.preheader.us.us ], [ %rdx.select904, %middle.block903 ]
  %.1196505.us550.us.ph = phi i32 [ %.0195534.us.us, %vector.memcheck854 ], [ %.0195534.us.us, %.preheader.us.us ], [ %i.er, %middle.block903 ]
  %.1209504.us551.us.ph = phi i32 [ %.0208533.us.us, %vector.memcheck854 ], [ %.0208533.us.us, %.preheader.us.us ], [ %i.es, %middle.block903 ]
  %.1222503.us552.us.ph = phi i32 [ %.0221532.us.us, %vector.memcheck854 ], [ %.0221532.us.us, %.preheader.us.us ], [ %i.et, %middle.block903 ]
  %.1239502.us553.us.ph = phi i32 [ %.0238531.us.us, %vector.memcheck854 ], [ %.0238531.us.us, %.preheader.us.us ], [ %i.eu, %middle.block903 ]
  %.1256501.us554.us.ph = phi i32 [ %.0255530.us.us, %vector.memcheck854 ], [ %.0255530.us.us, %.preheader.us.us ], [ %i.ev, %middle.block903 ]
  %.0276500.us555.us.ph = phi i32 [ 0, %vector.memcheck854 ], [ 0, %.preheader.us.us ], [ %i.dz, %middle.block903 ]
  br label %scalar.ph862

scalar.ph862:                                     ; preds = %scalar.ph862.preheader, %bb.m
  %.1188509.us547.us = phi ptr [ %i.fd, %bb.m ], [ %.1188509.us547.us.ph, %scalar.ph862.preheader ] ; 2 uses
  %.1190508.us548.us = phi ptr [ %i.ew, %bb.m ], [ %.1190508.us548.us.ph, %scalar.ph862.preheader ] ; 2 uses
  %.1192507.us549.us = phi ptr [ %i.ey, %bb.m ], [ %.1192507.us549.us.ph, %scalar.ph862.preheader ] ; 2 uses
  %.1194506.us.us = phi i32 [ %.3.us.us, %bb.m ], [ %.1194506.us.us.ph, %scalar.ph862.preheader ] ; 2 uses
  %.1196505.us550.us = phi i32 [ %.2197.us565.us, %bb.m ], [ %.1196505.us550.us.ph, %scalar.ph862.preheader ] ; 2 uses
  %.1209504.us551.us = phi i32 [ %.2210.us564.us, %bb.m ], [ %.1209504.us551.us.ph, %scalar.ph862.preheader ] ; 2 uses
  %.1222503.us552.us = phi i32 [ %.3224.us563.us, %bb.m ], [ %.1222503.us552.us.ph, %scalar.ph862.preheader ] ; 2 uses
  %.1239502.us553.us = phi i32 [ %.3241.us562.us, %bb.m ], [ %.1239502.us553.us.ph, %scalar.ph862.preheader ] ; 2 uses
  %.1256501.us554.us = phi i32 [ %.3258.us561.us, %bb.m ], [ %.1256501.us554.us.ph, %scalar.ph862.preheader ] ; 2 uses
  %.0276500.us555.us = phi i32 [ %i.fe, %bb.m ], [ %.0276500.us555.us.ph, %scalar.ph862.preheader ] ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.1190508.us548.us, i64 1 ; 2 uses
  %i.ex = load i8, ptr %.1190508.us548.us, align 1, !tbaa !117 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.1192507.us549.us, i64 1
  %i.ez = load i8, ptr %.1192507.us549.us, align 1, !tbaa !117
  %.not299.us556.us = icmp eq i8 %i.ez, %i.ex
  br i1 %.not299.us556.us, label %bb.m, label %bb.l

bb.l:                                             ; preds = %scalar.ph862
  %i.fa = zext i8 %i.ex to i32
  %i.fb = add i32 %.1196505.us550.us, 1
  %i.fc = icmp eq i32 %10, %i.fa
  %spec.select590 = select i1 %i.fc, i32 0, i32 %.1194506.us.us
  %.2257.us557.us = tail call i32 @llvm.umin.i32(i32 %.0276500.us555.us, i32 %.1256501.us554.us)
  %.2223.us558.us = tail call i32 @llvm.umax.i32(i32 %.0276500.us555.us, i32 %.1222503.us552.us)
  %.2240.us559.us = tail call i32 @llvm.umin.i32(i32 %.0272528.us.us, i32 %.1239502.us553.us)
  %spec.select304.us560.us = tail call i32 @llvm.umax.i32(i32 %.0272528.us.us, i32 %.1209504.us551.us)
  br label %bb.m

bb.m:                                             ; preds = %scalar.ph862, %bb.l
  %.3258.us561.us = phi i32 [ %.2257.us557.us, %bb.l ], [ %.1256501.us554.us, %scalar.ph862 ] ; 2 uses
  %.3241.us562.us = phi i32 [ %.2240.us559.us, %bb.l ], [ %.1239502.us553.us, %scalar.ph862 ] ; 2 uses
  %.3224.us563.us = phi i32 [ %.2223.us558.us, %bb.l ], [ %.1222503.us552.us, %scalar.ph862 ] ; 2 uses
  %.2210.us564.us = phi i32 [ %spec.select304.us560.us, %bb.l ], [ %.1209504.us551.us, %scalar.ph862 ] ; 2 uses
  %.2197.us565.us = phi i32 [ %i.fb, %bb.l ], [ %.1196505.us550.us, %scalar.ph862 ] ; 2 uses
  %.3.us.us = phi i32 [ %spec.select590, %bb.l ], [ %.1194506.us.us, %scalar.ph862 ] ; 2 uses
  %.0186.us566.us = phi i8 [ %i.ex, %bb.l ], [ %i.dw, %scalar.ph862 ]
  %i.fd = getelementptr inbounds nuw i8, ptr %.1188509.us547.us, i64 1 ; 2 uses
  store i8 %.0186.us566.us, ptr %.1188509.us547.us, align 1, !tbaa !117
  %i.fe = add nuw i32 %.0276500.us555.us, 1       ; 2 uses
  %exitcond637.not = icmp eq i32 %i.fe, %1
  br i1 %exitcond637.not, label %._crit_edge.split.us567.us, label %scalar.ph862, !llvm.loop !382

._crit_edge.split.us567.us:                       ; preds = %bb.m, %middle.block903
  %.3258.us561.us.lcssa = phi i32 [ %i.ev, %middle.block903 ], [ %.3258.us561.us, %bb.m ] ; 2 uses
  %.3241.us562.us.lcssa = phi i32 [ %i.eu, %middle.block903 ], [ %.3241.us562.us, %bb.m ] ; 2 uses
  %.3224.us563.us.lcssa = phi i32 [ %i.et, %middle.block903 ], [ %.3224.us563.us, %bb.m ] ; 2 uses
  %.2210.us564.us.lcssa = phi i32 [ %i.es, %middle.block903 ], [ %.2210.us564.us, %bb.m ] ; 2 uses
  %.2197.us565.us.lcssa = phi i32 [ %i.er, %middle.block903 ], [ %.2197.us565.us, %bb.m ] ; 2 uses
  %.3.us.us.lcssa = phi i32 [ %rdx.select904, %middle.block903 ], [ %.3.us.us, %bb.m ] ; 2 uses
  %.lcssa694 = phi ptr [ %i.ec, %middle.block903 ], [ %i.fd, %bb.m ]
  %.lcssa = phi ptr [ %i.ed, %middle.block903 ], [ %i.ew, %bb.m ]
  %scevgep636 = getelementptr i8, ptr %.0191536.us.us, i64 %i.dx
  %i.ff = add nuw i32 %.0272528.us.us, 1          ; 2 uses
  %exitcond638.not = icmp eq i32 %i.ff, %2
  %indvar.next859 = add i64 %indvar858, 1
  br i1 %exitcond638.not, label %.loopexit, label %.preheader.us.us, !llvm.loop !383

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.split.us.us545
  %indvar802 = phi i64 [ %indvar.next803, %._crit_edge.split.us.us545 ], [ 0, %.preheader.us.preheader ] ; 2 uses
  %.0187538.us = phi ptr [ %.lcssa696, %._crit_edge.split.us.us545 ], [ %5, %.preheader.us.preheader ] ; 5 uses
  %.0189537.us = phi ptr [ %.lcssa695, %._crit_edge.split.us.us545 ], [ %4, %.preheader.us.preheader ] ; 5 uses
  %.0191536.us = phi ptr [ %scevgep633, %._crit_edge.split.us.us545 ], [ %3, %.preheader.us.preheader ] ; 5 uses
  %.0195534.us = phi i32 [ %.2197.us.us.lcssa, %._crit_edge.split.us.us545 ], [ 0, %.preheader.us.preheader ] ; 3 uses
  %.0208533.us = phi i32 [ %.2210.us.us.lcssa, %._crit_edge.split.us.us545 ], [ 0, %.preheader.us.preheader ] ; 3 uses
  %.0221532.us = phi i32 [ %.3224.us.us.lcssa, %._crit_edge.split.us.us545 ], [ 0, %.preheader.us.preheader ] ; 3 uses
  %.0238531.us = phi i32 [ %.3241.us.us.lcssa, %._crit_edge.split.us.us545 ], [ %i.c, %.preheader.us.preheader ] ; 3 uses
  %.0255530.us = phi i32 [ %.3258.us.us.lcssa, %._crit_edge.split.us.us545 ], [ %i.b, %.preheader.us.preheader ] ; 3 uses
  %.0272528.us = phi i32 [ %i.gf, %._crit_edge.split.us.us545 ], [ 0, %.preheader.us.preheader ] ; 4 uses
  br i1 %min.iters.check807, label %scalar.ph806.preheader, label %vector.memcheck798

vector.memcheck798:                               ; preds = %.preheader.us
  %.0189537.us800 = ptrtoaddr ptr %.0189537.us to i64
  %.0187538.us799 = ptrtoaddr ptr %.0187538.us to i64 ; 2 uses
  %i.fg = sub i64 %.0189537.us800, %.0187538.us799
  %diff.check801 = icmp ugt i64 %i.fg, -4
  %18 = mul i64 %indvar802, %i.dx
  %19 = add i64 %18, %i.a
  %i.fh = sub i64 %19, %.0187538.us799
  %diff.check804 = icmp ugt i64 %i.fh, -4
  %conflict.rdx805 = or i1 %diff.check801, %diff.check804
  br i1 %conflict.rdx805, label %scalar.ph806.preheader, label %vector.ph808

vector.ph808:                                     ; preds = %vector.memcheck798
  %i.fi = getelementptr i8, ptr %.0187538.us, i64 %n.vec809 ; 2 uses
  %i.fj = getelementptr i8, ptr %.0189537.us, i64 %n.vec809 ; 2 uses
  %i.fk = getelementptr i8, ptr %.0191536.us, i64 %n.vec809
  %i.fl = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.0195534.us, i64 0
  %broadcast.splatinsert810 = insertelement <4 x i32> poison, i32 %.0208533.us, i64 0
  %broadcast.splat811 = shufflevector <4 x i32> %broadcast.splatinsert810, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert812 = insertelement <4 x i32> poison, i32 %.0221532.us, i64 0
  %broadcast.splat813 = shufflevector <4 x i32> %broadcast.splatinsert812, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert814 = insertelement <4 x i32> poison, i32 %.0238531.us, i64 0
  %broadcast.splat815 = shufflevector <4 x i32> %broadcast.splatinsert814, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert816 = insertelement <4 x i32> poison, i32 %.0255530.us, i64 0
  %broadcast.splat817 = shufflevector <4 x i32> %broadcast.splatinsert816, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert818 = insertelement <4 x i32> poison, i32 %.0272528.us, i64 0
  %broadcast.splat819 = shufflevector <4 x i32> %broadcast.splatinsert818, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body822

vector.body822:                                   ; preds = %vector.body822, %vector.ph808
  %index823 = phi i64 [ 0, %vector.ph808 ], [ %index.next841, %vector.body822 ] ; 4 uses
  %vec.phi824 = phi <4 x i32> [ %i.fl, %vector.ph808 ], [ %predphi839, %vector.body822 ]
  %vec.phi825 = phi <4 x i32> [ %broadcast.splat811, %vector.ph808 ], [ %predphi838, %vector.body822 ] ; 2 uses
  %vec.phi826 = phi <4 x i32> [ %broadcast.splat813, %vector.ph808 ], [ %predphi837, %vector.body822 ] ; 2 uses
  %vec.phi827 = phi <4 x i32> [ %broadcast.splat815, %vector.ph808 ], [ %predphi836, %vector.body822 ] ; 2 uses
  %vec.phi828 = phi <4 x i32> [ %broadcast.splat817, %vector.ph808 ], [ %predphi835, %vector.body822 ] ; 2 uses
  %vec.ind829 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph808 ], [ %vec.ind.next842, %vector.body822 ] ; 3 uses
  %next.gep830 = getelementptr i8, ptr %.0187538.us, i64 %index823
  %next.gep831 = getelementptr i8, ptr %.0189537.us, i64 %index823
  %next.gep832 = getelementptr i8, ptr %.0191536.us, i64 %index823
  %wide.load833 = load <4 x i8>, ptr %next.gep831, align 1, !tbaa !117 ; 2 uses
  %wide.load834 = load <4 x i8>, ptr %next.gep832, align 1, !tbaa !117
  %i.fm = icmp ne <4 x i8> %wide.load834, %wide.load833 ; 6 uses
  %i.fn = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %vec.ind829, <4 x i32> %vec.phi828)
  %i.fo = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.ind829, <4 x i32> %vec.phi826)
  %i.fp = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %broadcast.splat819, <4 x i32> %vec.phi827)
  %i.fq = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %broadcast.splat819, <4 x i32> %vec.phi825)
  %predphi835 = select <4 x i1> %i.fm, <4 x i32> %i.fn, <4 x i32> %vec.phi828 ; 2 uses
  %predphi836 = select <4 x i1> %i.fm, <4 x i32> %i.fp, <4 x i32> %vec.phi827 ; 2 uses
  %predphi837 = select <4 x i1> %i.fm, <4 x i32> %i.fo, <4 x i32> %vec.phi826 ; 2 uses
  %predphi838 = select <4 x i1> %i.fm, <4 x i32> %i.fq, <4 x i32> %vec.phi825 ; 2 uses
  %i.fr = zext <4 x i1> %i.fm to <4 x i32>
  %predphi839 = add <4 x i32> %vec.phi824, %i.fr  ; 2 uses
  %predphi840 = select <4 x i1> %i.fm, <4 x i8> %wide.load833, <4 x i8> %broadcast.splat821
  store <4 x i8> %predphi840, ptr %next.gep830, align 1, !tbaa !117
  %index.next841 = add nuw i64 %index823, 4       ; 2 uses
  %vec.ind.next842 = add nuw <4 x i32> %vec.ind829, splat (i32 4)
  %i.fs = icmp eq i64 %index.next841, %n.vec809
  br i1 %i.fs, label %middle.block843, label %vector.body822, !llvm.loop !384

middle.block843:                                  ; preds = %vector.body822
  %i.ft = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %predphi839) ; 2 uses
  %i.fu = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %predphi838) ; 2 uses
  %i.fv = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %predphi837) ; 2 uses
  %i.fw = tail call i32 @llvm.vector.reduce.umin.v4i32(<4 x i32> %predphi836) ; 2 uses
  %i.fx = tail call i32 @llvm.vector.reduce.umin.v4i32(<4 x i32> %predphi835) ; 2 uses
  br i1 %cmp.n844, label %._crit_edge.split.us.us545, label %scalar.ph806.preheader

scalar.ph806.preheader:                           ; preds = %vector.memcheck798, %.preheader.us, %middle.block843
  %.1188509.us.us.ph = phi ptr [ %.0187538.us, %vector.memcheck798 ], [ %.0187538.us, %.preheader.us ], [ %i.fi, %middle.block843 ]
  %.1190508.us.us.ph = phi ptr [ %.0189537.us, %vector.memcheck798 ], [ %.0189537.us, %.preheader.us ], [ %i.fj, %middle.block843 ]
  %.1192507.us.us.ph = phi ptr [ %.0191536.us, %vector.memcheck798 ], [ %.0191536.us, %.preheader.us ], [ %i.fk, %middle.block843 ]
  %.1196505.us.us.ph = phi i32 [ %.0195534.us, %vector.memcheck798 ], [ %.0195534.us, %.preheader.us ], [ %i.ft, %middle.block843 ]
  %.1209504.us.us.ph = phi i32 [ %.0208533.us, %vector.memcheck798 ], [ %.0208533.us, %.preheader.us ], [ %i.fu, %middle.block843 ]
  %.1222503.us.us.ph = phi i32 [ %.0221532.us, %vector.memcheck798 ], [ %.0221532.us, %.preheader.us ], [ %i.fv, %middle.block843 ]
  %.1239502.us.us.ph = phi i32 [ %.0238531.us, %vector.memcheck798 ], [ %.0238531.us, %.preheader.us ], [ %i.fw, %middle.block843 ]
  %.1256501.us.us.ph = phi i32 [ %.0255530.us, %vector.memcheck798 ], [ %.0255530.us, %.preheader.us ], [ %i.fx, %middle.block843 ]
  %.0276500.us.us.ph = phi i32 [ 0, %vector.memcheck798 ], [ 0, %.preheader.us ], [ %i.dy, %middle.block843 ]
  br label %scalar.ph806

scalar.ph806:                                     ; preds = %scalar.ph806.preheader, %bb.o
  %.1188509.us.us = phi ptr [ %i.gd, %bb.o ], [ %.1188509.us.us.ph, %scalar.ph806.preheader ] ; 2 uses
  %.1190508.us.us = phi ptr [ %i.fy, %bb.o ], [ %.1190508.us.us.ph, %scalar.ph806.preheader ] ; 2 uses
  %.1192507.us.us = phi ptr [ %i.ga, %bb.o ], [ %.1192507.us.us.ph, %scalar.ph806.preheader ] ; 2 uses
  %.1196505.us.us = phi i32 [ %.2197.us.us, %bb.o ], [ %.1196505.us.us.ph, %scalar.ph806.preheader ] ; 2 uses
  %.1209504.us.us = phi i32 [ %.2210.us.us, %bb.o ], [ %.1209504.us.us.ph, %scalar.ph806.preheader ] ; 2 uses
  %.1222503.us.us = phi i32 [ %.3224.us.us, %bb.o ], [ %.1222503.us.us.ph, %scalar.ph806.preheader ] ; 2 uses
  %.1239502.us.us = phi i32 [ %.3241.us.us, %bb.o ], [ %.1239502.us.us.ph, %scalar.ph806.preheader ] ; 2 uses
  %.1256501.us.us = phi i32 [ %.3258.us.us, %bb.o ], [ %.1256501.us.us.ph, %scalar.ph806.preheader ] ; 2 uses
  %.0276500.us.us = phi i32 [ %i.ge, %bb.o ], [ %.0276500.us.us.ph, %scalar.ph806.preheader ] ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.1190508.us.us, i64 1 ; 2 uses
  %i.fz = load i8, ptr %.1190508.us.us, align 1, !tbaa !117 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.1192507.us.us, i64 1
  %i.gb = load i8, ptr %.1192507.us.us, align 1, !tbaa !117
  %.not299.us.us = icmp eq i8 %i.gb, %i.fz
  br i1 %.not299.us.us, label %bb.o, label %bb.n

bb.n:                                             ; preds = %scalar.ph806
  %i.gc = add i32 %.1196505.us.us, 1
  %.2257.us.us = tail call i32 @llvm.umin.i32(i32 %.0276500.us.us, i32 %.1256501.us.us)
  %.2223.us.us = tail call i32 @llvm.umax.i32(i32 %.0276500.us.us, i32 %.1222503.us.us)
  %.2240.us.us = tail call i32 @llvm.umin.i32(i32 %.0272528.us, i32 %.1239502.us.us)
  %spec.select304.us.us = tail call i32 @llvm.umax.i32(i32 %.0272528.us, i32 %.1209504.us.us)
  br label %bb.o

bb.o:                                             ; preds = %scalar.ph806, %bb.n
  %.3258.us.us = phi i32 [ %.2257.us.us, %bb.n ], [ %.1256501.us.us, %scalar.ph806 ] ; 2 uses
  %.3241.us.us = phi i32 [ %.2240.us.us, %bb.n ], [ %.1239502.us.us, %scalar.ph806 ] ; 2 uses
  %.3224.us.us = phi i32 [ %.2223.us.us, %bb.n ], [ %.1222503.us.us, %scalar.ph806 ] ; 2 uses
  %.2210.us.us = phi i32 [ %spec.select304.us.us, %bb.n ], [ %.1209504.us.us, %scalar.ph806 ] ; 2 uses
  %.2197.us.us = phi i32 [ %i.gc, %bb.n ], [ %.1196505.us.us, %scalar.ph806 ] ; 2 uses
  %.0186.us.us = phi i8 [ %i.fz, %bb.n ], [ %i.dw, %scalar.ph806 ]
  %i.gd = getelementptr inbounds nuw i8, ptr %.1188509.us.us, i64 1 ; 2 uses
  store i8 %.0186.us.us, ptr %.1188509.us.us, align 1, !tbaa !117
  %i.ge = add nuw i32 %.0276500.us.us, 1          ; 2 uses
  %exitcond634.not = icmp eq i32 %i.ge, %1
  br i1 %exitcond634.not, label %._crit_edge.split.us.us545, label %scalar.ph806, !llvm.loop !385

._crit_edge.split.us.us545:                       ; preds = %bb.o, %middle.block843
  %.3258.us.us.lcssa = phi i32 [ %i.fx, %middle.block843 ], [ %.3258.us.us, %bb.o ] ; 2 uses
  %.3241.us.us.lcssa = phi i32 [ %i.fw, %middle.block843 ], [ %.3241.us.us, %bb.o ] ; 2 uses
  %.3224.us.us.lcssa = phi i32 [ %i.fv, %middle.block843 ], [ %.3224.us.us, %bb.o ] ; 2 uses
  %.2210.us.us.lcssa = phi i32 [ %i.fu, %middle.block843 ], [ %.2210.us.us, %bb.o ] ; 2 uses
  %.2197.us.us.lcssa = phi i32 [ %i.ft, %middle.block843 ], [ %.2197.us.us, %bb.o ] ; 2 uses
  %.lcssa696 = phi ptr [ %i.fi, %middle.block843 ], [ %i.gd, %bb.o ]
  %.lcssa695 = phi ptr [ %i.fj, %middle.block843 ], [ %i.fy, %bb.o ]
  %scevgep633 = getelementptr i8, ptr %.0191536.us, i64 %i.dx
  %i.gf = add nuw i32 %.0272528.us, 1             ; 2 uses
  %exitcond635.not = icmp eq i32 %i.gf, %2
  %indvar.next803 = add i64 %indvar802, 1
  br i1 %exitcond635.not, label %.loopexit, label %.preheader.us, !llvm.loop !383

.loopexit:                                        ; preds = %._crit_edge.us, %._crit_edge.split.us.us, %._crit_edge.split.us436.us, %._crit_edge.us492, %._crit_edge.split.us.us545, %._crit_edge.split.us567.us
  %.16271 = phi i32 [ %.11266.us.us, %._crit_edge.split.us.us ], [ %.7262.us.lcssa, %._crit_edge.us492 ], [ %.3258.us561.us.lcssa, %._crit_edge.split.us567.us ], [ %.3258.us.us.lcssa, %._crit_edge.split.us.us545 ], [ %.11266.us429.us, %._crit_edge.split.us436.us ], [ %.15270.us.lcssa, %._crit_edge.us ] ; 4 uses
  %.16254 = phi i32 [ %.11249.us.us, %._crit_edge.split.us.us ], [ %.7245.us.lcssa, %._crit_edge.us492 ], [ %.3241.us562.us.lcssa, %._crit_edge.split.us567.us ], [ %.3241.us.us.lcssa, %._crit_edge.split.us.us545 ], [ %.11249.us430.us, %._crit_edge.split.us436.us ], [ %.15253.us.lcssa, %._crit_edge.us ] ; 4 uses
  %.16237 = phi i32 [ %.11232.us.us, %._crit_edge.split.us.us ], [ %.7228.us.lcssa, %._crit_edge.us492 ], [ %.3224.us563.us.lcssa, %._crit_edge.split.us567.us ], [ %.3224.us.us.lcssa, %._crit_edge.split.us.us545 ], [ %.11232.us431.us, %._crit_edge.split.us436.us ], [ %.15236.us.lcssa, %._crit_edge.us ]
  %.12220 = phi i32 [ %.8216.us.us, %._crit_edge.split.us.us ], [ %.5213.us.lcssa, %._crit_edge.us492 ], [ %.2210.us564.us.lcssa, %._crit_edge.split.us567.us ], [ %.2210.us.us.lcssa, %._crit_edge.split.us.us545 ], [ %.8216.us432.us, %._crit_edge.split.us436.us ], [ %.11219.us.lcssa, %._crit_edge.us ]
  %.12207 = phi i32 [ %.8203.us.us, %._crit_edge.split.us.us ], [ %.5200.us.lcssa, %._crit_edge.us492 ], [ %.2197.us565.us.lcssa, %._crit_edge.split.us567.us ], [ %.2197.us.us.lcssa, %._crit_edge.split.us.us545 ], [ %.8203.us433.us, %._crit_edge.split.us436.us ], [ %.11206.us.lcssa, %._crit_edge.us ]
  %.16 = phi i32 [ %spec.store.select, %._crit_edge.split.us.us ], [ %.7.us.lcssa, %._crit_edge.us492 ], [ %.3.us.us.lcssa, %._crit_edge.split.us567.us ], [ %spec.store.select, %._crit_edge.split.us.us545 ], [ %.11.us.us, %._crit_edge.split.us436.us ], [ %.15.us.lcssa, %._crit_edge.us ]
  %.not317 = icmp eq i32 %.12207, 0
  br i1 %.not317, label %.thread, label %bb.p

bb.p:                                             ; preds = %.loopexit
  %i.gg = sub i32 %.16237, %.16271
  %i.gh = add i32 %i.gg, 1                        ; 3 uses
  %i.gi = sub i32 %.12220, %.16254
  %i.gj = add i32 %i.gi, 1                        ; 4 uses
  %i.gk = icmp slt i32 %11, 3
  br i1 %i.gk, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.gl = shl nsw i32 %11, 1
  %i.gm = mul nsw i32 %.16254, %7
  %i.gn = sext i32 %i.gm to i64                   ; 2 uses
  %i.go = getelementptr inbounds i8, ptr %4, i64 %i.gn
  %i.gp = mul nsw i32 %.16271, %6
  %i.gq = sext i32 %i.gp to i64                   ; 2 uses
  %i.gr = getelementptr inbounds i8, ptr %i.go, i64 %i.gq
  %i.gs = mul nsw i32 %i.gh, %6                   ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 7544 ; 4 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 7632 ; 2 uses
  store i32 0, ptr %i.gu, align 8, !tbaa !215
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !192
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 7568 ; 2 uses
  store ptr %i.gw, ptr %i.gx, align 8, !tbaa !216
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 7576 ; 2 uses
  store i32 %8, ptr %i.gy, align 8, !tbaa !217
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 7656 ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 7744 ; 2 uses
  store i32 0, ptr %i.ha, align 8, !tbaa !218
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 1256 ; 2 uses
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !192
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 7680 ; 2 uses
  store ptr %i.hc, ptr %i.hd, align 8, !tbaa !219
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 7688 ; 2 uses
  store i32 %8, ptr %i.he, align 8, !tbaa !220
  tail call void @_ZN2cv10PngEncoder11processRectEPhiiiiS1_(ptr noundef nonnull align 8 dereferenceable(9064) %0, ptr noundef %i.gr, i32 noundef %i.gs, i32 noundef %6, i32 noundef %7, i32 noundef %i.gj, ptr noundef null)
  %i.hf = tail call i32 @deflate(ptr noundef nonnull %i.gt, i32 noundef 4) ; 0 uses
  %i.hg = tail call i32 @deflate(ptr noundef nonnull %i.gz, i32 noundef 4) ; 0 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 7768
  %i.hi = sext i32 %i.gl to i64
  %i.hj = getelementptr [40 x i8], ptr %i.hh, i64 %i.hi ; 16 uses
  store ptr %4, ptr %i.hj, align 8, !tbaa !222
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 7584 ; 2 uses
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !223 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 7696 ; 2 uses
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !224 ; 2 uses
  %i.ho = icmp uge i64 %i.hl, %i.hn
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.hl, i64 %i.hn)
  %spec.select32.i = zext i1 %i.ho to i32
  %.sink30.i = trunc i64 %spec.select.i to i32
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  store i32 %.sink30.i, ptr %i.hp, align 8, !tbaa !225
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hj, i64 32
  store i32 %spec.select32.i, ptr %i.hq, align 8, !tbaa !226
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hj, i64 12
  store i32 %.16271, ptr %i.hr, align 4, !tbaa !227
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  store i32 %.16254, ptr %i.hs, align 8, !tbaa !228
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hj, i64 20
  store i32 %i.gh, ptr %i.ht, align 4, !tbaa !229
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  store i32 %i.gj, ptr %i.hu, align 8, !tbaa !230
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hj, i64 28
  store i32 1, ptr %i.hv, align 4, !tbaa !231
  %i.hw = tail call i32 @deflateReset(ptr noundef nonnull %i.gt) ; 0 uses
end_hunk_0
