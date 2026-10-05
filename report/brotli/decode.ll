Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/brotli/original/decode?download=true
inline.NumInlined: 20
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 18
begin_hunk_0_@BrotliDecoderErrorString:bb.a
bb.a:
  %switch.tableidx = add i32 %0, 31               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 35
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.BrotliDecoderErrorString, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.30, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @BrotliDecoderVersion() local_unnamed_addr #13 {
bb.a:
  ret i32 16785408
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @BrotliDecoderSetMetadataCallbacks(ptr nofree noundef writeonly captures(none) initializes((720, 744)) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 720
  store ptr %1, ptr %i.a, align 8, !tbaa !60
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 728
  store ptr %2, ptr %i.b, align 8, !tbaa !99
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 736
  store ptr %3, ptr %i.c, align 8, !tbaa !61
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

declare hidden i32 @BrotliBuildSimpleHuffmanTable(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare hidden void @BrotliBuildCodeLengthsHuffmanTable(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare hidden i32 @BrotliBuildHuffmanTable(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc range(i32 0, 2) i32 @SafeDecodeSymbol(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !54   ; 5 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %0, align 2, !tbaa !70
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %.sink.split, label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.f = load i64, ptr %1, align 8, !tbaa !55     ; 3 uses
  %i.g = and i64 %i.f, 255
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.g ; 4 uses
  %i.i = load i8, ptr %i.h, align 2, !tbaa !70    ; 3 uses
  %i.j = icmp ult i8 %i.i, 9
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = zext nneg i8 %i.i to i64                 ; 2 uses
  %.not = icmp ult i64 %i.b, %i.k
  br i1 %.not, label %bb.g, label %.sink.split.sink.split

bb.e:                                             ; preds = %bb.c
  %i.l = icmp ult i64 %i.b, 9
  br i1 %i.l, label %bb.g, label %BitMask.exit

BitMask.exit:                                     ; preds = %bb.e
  %i.m = zext i8 %i.i to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @kBrotliBitMask, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8, !tbaa !36
  %i.p = and i64 %i.o, %i.f
  %i.q = lshr i64 %i.p, 8
  %i.r = add i64 %i.b, -8
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.t = load i16, ptr %i.s, align 2, !tbaa !71
  %i.u = zext i16 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.q
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.u ; 2 uses
  %i.x = load i8, ptr %i.w, align 2, !tbaa !70
  %i.y = zext i8 %i.x to i64                      ; 2 uses
  %i.z = icmp ult i64 %i.r, %i.y
  br i1 %i.z, label %bb.g, label %bb.f

bb.f:                                             ; preds = %BitMask.exit
  %i.aa = add nuw nsw i64 %i.y, 8
  br label %.sink.split.sink.split

.sink.split.sink.split:                           ; preds = %bb.d, %bb.f
  %.sink37 = phi i64 [ %i.aa, %bb.f ], [ %i.k, %bb.d ] ; 2 uses
  %.sink35.ph = phi ptr [ %i.w, %bb.f ], [ %i.h, %bb.d ]
  %i.ab = sub nuw i64 %i.b, %.sink37
  store i64 %i.ab, ptr %i.a, align 8, !tbaa !54
  %i.ac = lshr i64 %i.f, %.sink37
  store i64 %i.ac, ptr %1, align 8, !tbaa !55
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.b
  %.sink35 = phi ptr [ %0, %bb.b ], [ %.sink35.ph, %.sink.split.sink.split ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sink35, i64 2
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !71
  %i.af = zext i16 %i.ae to i64
  store i64 %i.af, ptr %2, align 8, !tbaa !36
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %BitMask.exit, %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %BitMask.exit ], [ 0, %bb.b ], [ 1, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @InverseMoveToFrontTransform(ptr nofree noundef captures(none) %0, i64 noundef range(i64 0, -3) %1, ptr nofree noundef captures(none) initializes((452, 456)) %2) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 440 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !177
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 452 ; 9 uses
  store i32 50462976, ptr %i.c, align 4, !tbaa !44
  %i.d = add i64 %i.b, 1                          ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.d, i64 2) ; 2 uses
  %i.e = add i64 %umax, -1                        ; 2 uses
  %min.iters.check = icmp ult i64 %i.d, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.a
  %n.vec = and i64 %i.e, -8                       ; 4 uses
  %i.f = or disjoint i64 %n.vec, 1
  %i.g = trunc i64 %n.vec to i32
  %i.h = mul i32 %i.g, 67372036
  %i.i = add i32 %i.h, 50462976
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 50462976, i32 117835012, i32 185207048, i32 252579084>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.j = add <4 x i32> %vec.ind, splat (i32 67372036)
  %i.k = add <4 x i32> %vec.ind, splat (i32 336860180)
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  store <4 x i32> %i.j, ptr %i.m, align 4, !tbaa !44
  store <4 x i32> %i.k, ptr %i.n, align 4, !tbaa !44
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 538976288)
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !174

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.a, %middle.block
  %.036.ph = phi i64 [ 1, %bb.a ], [ %i.f, %middle.block ]
  %.034.ph = phi i32 [ 50462976, %bb.a ], [ %i.i, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.036 = phi i64 [ %i.r, %scalar.ph ], [ %.036.ph, %scalar.ph.preheader ] ; 2 uses
  %.034 = phi i32 [ %i.p, %scalar.ph ], [ %.034.ph, %scalar.ph.preheader ]
  %i.p = add i32 %.034, 67372036                  ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.036
  store i32 %i.p, ptr %i.q, align 4, !tbaa !44
  %i.r = add nuw i64 %.036, 1                     ; 2 uses
  %exitcond = icmp eq i64 %i.r, %umax
  br i1 %exitcond, label %.preheader, label %scalar.ph, !llvm.loop !175

.preheader:                                       ; preds = %scalar.ph, %middle.block
  %.not40 = icmp eq i64 %1, 0
  br i1 %.not40, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.s = getelementptr i8, ptr %2, i64 451        ; 6 uses
  %xtraiter = and i64 %1, 1
  %i.t = icmp eq i64 %1, 1
  br i1 %i.t, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %1, -2
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %.03539 = phi i64 [ 0, %.lr.ph.new ], [ %i.ai, %bb.b ]
  %.138 = phi i64 [ 0, %.lr.ph.new ], [ %i.aj, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %.138 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !53
  %i.w = zext i8 %i.v to i64                      ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !53    ; 2 uses
  store i8 %i.y, ptr %i.u, align 1, !tbaa !53
  store i8 %i.y, ptr %i.s, align 1, !tbaa !53
  %i.z = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.s, i64 %i.z, i1 false), !tbaa !53
  %i.aa = or i64 %.03539, %i.w
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %.138
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !53
  %i.ae = zext i8 %i.ad to i64                    ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !53  ; 2 uses
  store i8 %i.ag, ptr %i.ac, align 1, !tbaa !53
  store i8 %i.ag, ptr %i.s, align 1, !tbaa !53
  %i.ah = add nuw nsw i64 %i.ae, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.s, i64 %i.ah, i1 false), !tbaa !53
  %i.ai = or i64 %i.aa, %i.ae                     ; 3 uses
  %i.aj = add nuw i64 %.138, 2                    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !176

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.03539.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ai, %._crit_edge.loopexit.unr-lcssa ]
  %.138.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.aj, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod45 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod45)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %.138.epil.init ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !53
  %i.am = zext i8 %i.al to i64                    ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !53  ; 2 uses
  store i8 %i.ao, ptr %i.ak, align 1, !tbaa !53
  store i8 %i.ao, ptr %i.s, align 1, !tbaa !53
  %i.ap = add nuw nsw i64 %i.am, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.s, i64 %i.ap, i1 false), !tbaa !53
  %i.aq = or i64 %.03539.epil.init, %i.am
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.ai, %._crit_edge.loopexit.unr-lcssa ], [ %i.aq, %.epil.preheader ]
  %i.ar = lshr i64 %.lcssa, 2
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.035.lcssa = phi i64 [ 0, %.preheader ], [ %i.ar, %._crit_edge.loopexit ]
  store i64 %.035.lcssa, ptr %i.a, align 8, !tbaa !177
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @SafeDecodeCommandBlockSwitch(ptr nofree noundef captures(none) %0) unnamed_addr #16 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.d = load i64, ptr %i.c, align 8, !tbaa !36   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2528 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !59
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1584 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 17 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.m = icmp ult i64 %i.d, 2
  br i1 %i.m, label %DecodeBlockTypeAndLength.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.k, align 8, !tbaa !55   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !54   ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !49   ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !50   ; 3 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = icmp ult i64 %i.p, 15
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.y = icmp eq ptr %i.r, %i.t
  br i1 %i.y, label %SafeReadSymbol.exit55.i, label %BrotliPullByte.exit.i.i52.i

BrotliPullByte.exit.i.i52.i:                      ; preds = %.lr.ph
  %i.z = load i8, ptr %i.r, align 1, !tbaa !53
  %i.aa = zext i8 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, %i.p
  %i.ac = or i64 %i.ab, %i.n                      ; 3 uses
  store i64 %i.ac, ptr %i.k, align 8, !tbaa !55
  %i.ad = add nuw nsw i64 %i.p, 8                 ; 3 uses
  store i64 %i.ad, ptr %i.o, align 8, !tbaa !54
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 3 uses
  store ptr %i.ae, ptr %i.q, align 8, !tbaa !49
  %i.af = icmp ult i64 %i.p, 7
  br i1 %i.af, label %.lr.ph.1, label %._crit_edge

.lr.ph.1:                                         ; preds = %BrotliPullByte.exit.i.i52.i
  %i.ag = icmp eq ptr %i.ae, %i.t
  br i1 %i.ag, label %SafeReadSymbol.exit55.i, label %BrotliPullByte.exit.i.i52.i.1

BrotliPullByte.exit.i.i52.i.1:                    ; preds = %.lr.ph.1
  %i.ah = load i8, ptr %i.ae, align 1, !tbaa !53
  %i.ai = zext i8 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, %i.ad
  %i.ak = or i64 %i.aj, %i.ac                     ; 2 uses
  store i64 %i.ak, ptr %i.k, align 8, !tbaa !55
  %i.al = or disjoint i64 %i.p, 16                ; 2 uses
  store i64 %i.al, ptr %i.o, align 8, !tbaa !54
  %i.am = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  store ptr %i.am, ptr %i.q, align 8, !tbaa !49
  br label %._crit_edge

._crit_edge:                                      ; preds = %BrotliPullByte.exit.i.i52.i, %BrotliPullByte.exit.i.i52.i.1, %bb.b
  %i.an = phi i64 [ %i.p, %bb.b ], [ %i.ad, %BrotliPullByte.exit.i.i52.i ], [ %i.al, %BrotliPullByte.exit.i.i52.i.1 ] ; 2 uses
  %i.ao = phi i64 [ %i.n, %bb.b ], [ %i.ac, %BrotliPullByte.exit.i.i52.i ], [ %i.ak, %BrotliPullByte.exit.i.i52.i.1 ] ; 3 uses
  %i.ap = and i64 %i.ao, 255
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ap ; 4 uses
  %i.ar = load i8, ptr %i.aq, align 2, !tbaa !70  ; 3 uses
  %i.as = icmp ugt i8 %i.ar, 8
  br i1 %i.as, label %BitMask.exit.i.i, label %SafeReadSymbol.exit55.i.thread

BitMask.exit.i.i:                                 ; preds = %._crit_edge
  %i.at = add i64 %i.an, -8
  %i.au = lshr i64 %i.ao, 8                       ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !71
  %i.ax = zext i16 %i.aw to i64
  %i.ay = and i64 %i.au, 127
  %i.az = zext i8 %i.ar to i64
  %i.ba = getelementptr [8 x i8], ptr @kBrotliBitMask, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ba, i64 -64
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !36
  %i.bd = and i64 %i.ay, %i.bc
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.bd
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.ax ; 2 uses
  %.pre = load i8, ptr %i.bf, align 2, !tbaa !70
  br label %SafeReadSymbol.exit55.i.thread

SafeReadSymbol.exit55.i.thread:                   ; preds = %._crit_edge, %BitMask.exit.i.i
  %i.bg = phi i64 [ %i.au, %BitMask.exit.i.i ], [ %i.ao, %._crit_edge ]
  %i.bh = phi i64 [ %i.at, %BitMask.exit.i.i ], [ %i.an, %._crit_edge ]
  %i.bi = phi i8 [ %.pre, %BitMask.exit.i.i ], [ %i.ar, %._crit_edge ]
  %.0.i56.i = phi ptr [ %i.bf, %BitMask.exit.i.i ], [ %i.aq, %._crit_edge ]
  %i.bj = zext i8 %i.bi to i64                    ; 2 uses
  %i.bk = sub i64 %i.bh, %i.bj
  store i64 %i.bk, ptr %i.o, align 8, !tbaa !54
  %i.bl = lshr i64 %i.bg, %i.bj
  store i64 %i.bl, ptr %i.k, align 8, !tbaa !55
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.i56.i, i64 2
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !71
  %i.bo = zext i16 %i.bn to i64
  store i64 %i.bo, ptr %i.b, align 8, !tbaa !36
  br label %bb.c

SafeReadSymbol.exit55.i:                          ; preds = %.lr.ph.1, %.lr.ph
  %i.bp = call fastcc i32 @SafeDecodeSymbol(ptr noundef nonnull %i.g, ptr noundef nonnull %i.k, ptr noundef nonnull %i.b)
  %.not39.i = icmp eq i32 %i.bp, 0
  br i1 %.not39.i, label %DecodeBlockTypeAndLength.exit.thread, label %bb.c

bb.c:                                             ; preds = %SafeReadSymbol.exit55.i.thread, %SafeReadSymbol.exit55.i
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 288
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 764 ; 3 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !68
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %.pr32 = load i64, ptr %i.o, align 8, !tbaa !54 ; 6 uses
  %i.bu = icmp ult i64 %.pr32, 15
  br i1 %i.bu, label %.lr.ph35, label %.._crit_edge36_crit_edge

.._crit_edge36_crit_edge:                         ; preds = %bb.d
  %.pre44 = load i64, ptr %i.k, align 8, !tbaa !55
  br label %._crit_edge36

.lr.ph35:                                         ; preds = %bb.d
  %i.bv = load ptr, ptr %i.s, align 8, !tbaa !50  ; 2 uses
  %.promoted37 = load ptr, ptr %i.q, align 8, !tbaa !49 ; 4 uses
  %i.bw = icmp eq ptr %.promoted37, %i.bv
  br i1 %i.bw, label %SafeReadSymbol.exit.i, label %BrotliPullByte.exit.i.i.i

BrotliPullByte.exit.i.i.i:                        ; preds = %.lr.ph35
  %i.bx = load i64, ptr %i.k, align 8, !tbaa !55
  %i.by = load i8, ptr %.promoted37, align 1, !tbaa !53
  %i.bz = zext i8 %i.by to i64
  %i.ca = shl nuw nsw i64 %i.bz, %.pr32
  %i.cb = or i64 %i.ca, %i.bx                     ; 2 uses
  store i64 %i.cb, ptr %i.k, align 8, !tbaa !55
  %i.cc = add nuw nsw i64 %.pr32, 8               ; 3 uses
  store i64 %i.cc, ptr %i.o, align 8, !tbaa !54
  %i.cd = getelementptr inbounds nuw i8, ptr %.promoted37, i64 1 ; 3 uses
  store ptr %i.cd, ptr %i.q, align 8, !tbaa !49
  %i.ce = icmp ult i64 %.pr32, 7
  br i1 %i.ce, label %bb.e, label %._crit_edge36

bb.e:                                             ; preds = %BrotliPullByte.exit.i.i.i
  %i.cf = icmp eq ptr %i.cd, %i.bv
  br i1 %i.cf, label %SafeReadSymbol.exit.i, label %BrotliPullByte.exit.i.i.i.1

BrotliPullByte.exit.i.i.i.1:                      ; preds = %bb.e
  %i.cg = load i64, ptr %i.k, align 8, !tbaa !55
  %i.ch = load i8, ptr %i.cd, align 1, !tbaa !53
  %i.ci = zext i8 %i.ch to i64
  %i.cj = shl nuw nsw i64 %i.ci, %i.cc
  %i.ck = or i64 %i.cj, %i.cg                     ; 2 uses
  store i64 %i.ck, ptr %i.k, align 8, !tbaa !55
  %i.cl = or disjoint i64 %.pr32, 16              ; 2 uses
  store i64 %i.cl, ptr %i.o, align 8, !tbaa !54
  %i.cm = getelementptr inbounds nuw i8, ptr %.promoted37, i64 2
  store ptr %i.cm, ptr %i.q, align 8, !tbaa !49
  br label %._crit_edge36

._crit_edge36:                                    ; preds = %BrotliPullByte.exit.i.i.i, %BrotliPullByte.exit.i.i.i.1, %.._crit_edge36_crit_edge
  %i.cn = phi i64 [ %.pr32, %.._crit_edge36_crit_edge ], [ %i.cc, %BrotliPullByte.exit.i.i.i ], [ %i.cl, %BrotliPullByte.exit.i.i.i.1 ] ; 2 uses
  %i.co = phi i64 [ %.pre44, %.._crit_edge36_crit_edge ], [ %i.cb, %BrotliPullByte.exit.i.i.i ], [ %i.ck, %BrotliPullByte.exit.i.i.i.1 ] ; 3 uses
  %i.cp = and i64 %i.co, 255
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.cp ; 4 uses
  %i.cr = load i8, ptr %i.cq, align 2, !tbaa !70  ; 3 uses
  %i.cs = icmp ugt i8 %i.cr, 8
  br i1 %i.cs, label %BitMask.exit.i59.i, label %SafeReadSymbol.exit.i.thread

BitMask.exit.i59.i:                               ; preds = %._crit_edge36
  %i.ct = add i64 %i.cn, -8
  %i.cu = lshr i64 %i.co, 8                       ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 2
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !71
  %i.cx = zext i16 %i.cw to i64
  %i.cy = and i64 %i.cu, 127
  %i.cz = zext i8 %i.cr to i64
  %i.da = getelementptr [8 x i8], ptr @kBrotliBitMask, i64 %i.cz
  %i.db = getelementptr i8, ptr %i.da, i64 -64
end_hunk_0
