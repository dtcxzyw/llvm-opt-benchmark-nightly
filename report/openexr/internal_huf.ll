Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/internal_huf?download=true
inline.NumInlined: 45
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 19
begin_hunk_0_@fasthuf_decode:bb.a
bb.ax:                                            ; preds = %bb.aw
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !37
  %i.jn = trunc i64 %.0242.lcssa to i32
  %i.jo = tail call i32 (ptr, i32, ptr, ...) %i.jm(ptr noundef nonnull %0, i32 noundef 23, ptr noundef nonnull @.str.9, i32 noundef %i.jn) #10 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.ae, %bb.ah, %bb.af, %bb.ai, %bb.al, %bb.ak, %bb.o, %bb.p, %bb.t, %bb.s, %._crit_edge, %bb.aw, %bb.ax
  %.6 = phi i32 [ 0, %._crit_edge ], [ 23, %bb.aw ], [ 23, %bb.ax ], [ 23, %bb.o ], [ 23, %bb.s ], [ 23, %bb.t ], [ 23, %bb.p ], [ 23, %bb.ak ], [ 23, %bb.al ], [ 23, %bb.ai ], [ 23, %bb.af ], [ 23, %bb.ah ], [ 23, %bb.ae ]
  ret i32 %.6
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 24) i32 @hufBuildDecTable(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 0, 65537) %2, i32 noundef range(i32 0, 65537) %3, ptr nofree noundef captures(none) %4) unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !142
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.b, %bb.b ], [ @internal_exr_alloc, %bb.a ] ; 2 uses
  %i.f = phi ptr [ %i.d, %bb.b ], [ @internal_exr_free, %bb.a ]
  %.not74102 = icmp samesign ugt i32 %2, %3
  br i1 %.not74102, label %.thread84, label %.lr.ph104.preheader

.lr.ph104.preheader:                              ; preds = %.thread
  %i.g = zext nneg i32 %2 to i64
  %i.h = add nuw nsw i32 %3, 1
  %wide.trip.count = zext nneg i32 %i.h to i64
  br label %.lr.ph104

.lr.ph104:                                        ; preds = %.lr.ph104.preheader, %.loopexit97
  %indvars.iv114 = phi i64 [ %i.g, %.lr.ph104.preheader ], [ %indvars.iv.next115, %.loopexit97 ] ; 4 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv114
  %i.j = load i64, ptr %i.i, align 8, !tbaa !12   ; 3 uses
  %i.k = lshr i64 %i.j, 6                         ; 3 uses
  %i.l = trunc i64 %i.j to i32
  %i.m = and i32 %i.l, 63                         ; 5 uses
  %i.n = and i64 %i.j, 63
  %i.o = lshr i64 %i.k, %i.n
  %.not75 = icmp eq i64 %i.o, 0
  br i1 %.not75, label %bb.c, label %.thread84

bb.c:                                             ; preds = %.lr.ph104
  %i.p = icmp samesign ugt i32 %i.m, 14
  br i1 %i.p, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.q = add nsw i32 %i.m, -14
  %i.r = zext nneg i32 %i.q to i64
  %i.s = lshr i64 %i.k, %i.r
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.s ; 3 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !43
  %.not80 = icmp eq i32 %i.u, 0
  br i1 %.not80, label %bb.e, label %.thread84

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 5 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !44
  %i.x = add i32 %i.w, 1                          ; 2 uses
  store i32 %i.x, ptr %i.v, align 4, !tbaa !44
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !41   ; 3 uses
  %.not81 = icmp eq ptr %i.z, null
  br i1 %.not81, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = zext i32 %i.x to i64
  %i.ab = shl nuw nsw i64 %i.aa, 2
  %i.ac = tail call ptr %i.e(i64 noundef %i.ab) #10 ; 3 uses
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !41
  %.not82 = icmp eq ptr %i.ac, null
  br i1 %.not82, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.f
  %i.ad = load i32, ptr %i.v, align 4, !tbaa !44
  %.not111 = icmp eq i32 %i.ad, 1
  br i1 %.not111, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !16
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ah = load i32, ptr %i.v, align 4, !tbaa !44
  %i.ai = add i32 %i.ah, -1
  %i.aj = zext i32 %i.ai to i64
  %i.ak = icmp samesign ult i64 %indvars.iv.next, %i.aj
  br i1 %i.ak, label %.lr.ph, label %.loopexit, !llvm.loop !139

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.f
  tail call void %i.f(ptr noundef nonnull %i.z) #10
  %.pr = load ptr, ptr %i.y, align 8, !tbaa !41
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.al = tail call ptr %i.e(i64 noundef 4) #10   ; 2 uses
  store ptr %i.al, ptr %i.y, align 8, !tbaa !41
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.loopexit
  %i.am = phi ptr [ %i.al, %bb.g ], [ %.pr, %.loopexit ] ; 2 uses
  %.not83 = icmp eq ptr %i.am, null
  br i1 %.not83, label %.thread84, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = load i32, ptr %i.v, align 4, !tbaa !44
  %i.ao = add i32 %i.an, -1
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ap
  %i.ar = trunc nuw nsw i64 %indvars.iv114 to i32
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !16
  br label %.loopexit97

bb.j:                                             ; preds = %bb.c
  %.not76 = icmp eq i32 %i.m, 0
  br i1 %.not76, label %.loopexit97, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = sub nuw nsw i32 14, %i.m
  %i.at = zext nneg i32 %i.as to i64              ; 2 uses
  %i.au = shl i64 %i.k, %i.at
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.au
  %i.aw = shl nuw nsw i64 1, %i.at
  %i.ax = trunc nuw nsw i64 %indvars.iv114 to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.n
  %.0100 = phi i64 [ %i.aw, %bb.k ], [ %i.bc, %bb.n ]
  %.06199 = phi ptr [ %i.av, %bb.k ], [ %i.bd, %bb.n ] ; 5 uses
  %i.ay = load i32, ptr %.06199, align 8, !tbaa !43
  %.not78 = icmp eq i32 %i.ay, 0
  br i1 %.not78, label %bb.m, label %.thread84

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %.06199, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !41
  %.not79 = icmp eq ptr %i.ba, null
  br i1 %.not79, label %bb.n, label %.thread84

bb.n:                                             ; preds = %bb.m
  store i32 %i.m, ptr %.06199, align 8, !tbaa !43
  %i.bb = getelementptr inbounds nuw i8, ptr %.06199, i64 4
  store i32 %i.ax, ptr %i.bb, align 4, !tbaa !44
  %i.bc = add nsw i64 %.0100, -1                  ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.06199, i64 16
  %.not77 = icmp eq i64 %i.bc, 0
  br i1 %.not77, label %.loopexit97, label %bb.l, !llvm.loop !140

.loopexit97:                                      ; preds = %bb.n, %bb.i, %bb.j
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next115, %wide.trip.count
  br i1 %exitcond.not, label %.thread84, label %.lr.ph104, !llvm.loop !141

.thread84:                                        ; preds = %.loopexit97, %.lr.ph104, %bb.d, %bb.h, %bb.m, %bb.l, %.thread
  %.5 = phi i32 [ 0, %.thread ], [ 23, %bb.m ], [ 23, %bb.l ], [ 0, %.loopexit97 ], [ 23, %.lr.ph104 ], [ 1, %bb.h ], [ 23, %bb.d ]
  ret i32 %.5
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 24) i32 @hufDecode(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address) %2, i64 noundef range(i64 0, 4294967296) %3, i32 noundef range(i32 0, 65537) %4, i64 noundef %5, ptr nofree noundef captures(address) %6) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %5 ; 7 uses
  %i.b = add nuw nsw i64 %3, 7
  %i.c = lshr i64 %i.b, 3                         ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %i.c ; 5 uses
  %.not417 = icmp eq i64 %i.c, 0
  br i1 %.not417, label %._crit_edge398, label %.lr.ph397

.loopexit332:                                     ; preds = %.loopexit331, %.lr.ph397
  %.1216.lcssa = phi ptr [ %i.g, %.lr.ph397 ], [ %.13228, %.loopexit331 ] ; 3 uses
  %.1182.lcssa = phi ptr [ %.0181393, %.lr.ph397 ], [ %.12193, %.loopexit331 ] ; 2 uses
  %.1163.lcssa = phi i64 [ %i.j, %.lr.ph397 ], [ %.13175, %.loopexit331 ] ; 2 uses
  %.1156.lcssa = phi i32 [ %i.k, %.lr.ph397 ], [ %.13, %.loopexit331 ] ; 2 uses
  %i.e = icmp ult ptr %.1216.lcssa, %i.d
  br i1 %i.e, label %.lr.ph397, label %._crit_edge398, !llvm.loop !143

.lr.ph397:                                        ; preds = %bb.a, %.loopexit332
  %.0155395 = phi i32 [ %.1156.lcssa, %.loopexit332 ], [ 0, %bb.a ] ; 2 uses
  %.0162394 = phi i64 [ %.1163.lcssa, %.loopexit332 ], [ 0, %bb.a ]
  %.0181393 = phi ptr [ %.1182.lcssa, %.loopexit332 ], [ %6, %bb.a ] ; 2 uses
  %.0215392 = phi ptr [ %.1216.lcssa, %.loopexit332 ], [ %2, %bb.a ] ; 2 uses
  %i.f = shl i64 %.0162394, 8
  %i.g = getelementptr inbounds nuw i8, ptr %.0215392, i64 1 ; 2 uses
  %i.h = load i8, ptr %.0215392, align 1, !tbaa !18
  %i.i = zext i8 %i.h to i64
  %i.j = or disjoint i64 %i.f, %i.i               ; 2 uses
  %i.k = add nsw i32 %.0155395, 8                 ; 2 uses
  %i.l = icmp sgt i32 %.0155395, 5
  br i1 %i.l, label %.lr.ph387, label %.loopexit332

.lr.ph387:                                        ; preds = %.lr.ph397, %.loopexit331
  %.1156385 = phi i32 [ %.13, %.loopexit331 ], [ %i.k, %.lr.ph397 ] ; 4 uses
  %.1163384 = phi i64 [ %.13175, %.loopexit331 ], [ %i.j, %.lr.ph397 ] ; 5 uses
  %.1182383 = phi ptr [ %.12193, %.loopexit331 ], [ %.0181393, %.lr.ph397 ] ; 22 uses
  %.1216382 = phi ptr [ %.13228, %.loopexit331 ], [ %i.g, %.lr.ph397 ] ; 6 uses
  %i.m = add nsw i32 %.1156385, -14
  %i.n = zext nneg i32 %i.m to i64
  %i.o = lshr i64 %.1163384, %i.n
  %i.p = and i64 %i.o, 16383
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.p ; 4 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !43   ; 3 uses
  %.not255 = icmp eq i32 %i.r, 0
  br i1 %.not255, label %bb.l, label %bb.b

bb.b:                                             ; preds = %.lr.ph387
  %i.s = icmp sgt i32 %i.r, %.1156385
  br i1 %i.s, label %.thread314, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = sub nsw i32 %.1156385, %i.r              ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !44   ; 2 uses
  %i.w = icmp eq i32 %i.v, %4
  br i1 %i.w, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.x = icmp slt i32 %i.t, 8
  br i1 %i.x, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.not260 = icmp ult ptr %.1216382, %i.d
  br i1 %.not260, label %bb.f, label %.thread314

bb.f:                                             ; preds = %bb.e
  %i.y = shl i64 %.1163384, 8
  %i.z = getelementptr inbounds nuw i8, ptr %.1216382, i64 1
  %i.aa = load i8, ptr %.1216382, align 1, !tbaa !18
  %i.ab = zext i8 %i.aa to i64
  %i.ac = or disjoint i64 %i.y, %i.ab
  %i.ad = add nsw i32 %i.t, 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.2217 = phi ptr [ %i.z, %bb.f ], [ %.1216382, %bb.d ] ; 4 uses
  %.2164 = phi i64 [ %i.ac, %bb.f ], [ %.1163384, %bb.d ] ; 5 uses
  %.2157 = phi i32 [ %i.ad, %bb.f ], [ %i.t, %bb.d ]
  %i.ae = add nsw i32 %.2157, -8                  ; 5 uses
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = lshr i64 %.2164, %i.af                  ; 5 uses
  %i.ah = trunc i64 %i.ag to i8                   ; 4 uses
  %i.ai = and i64 %i.ag, 255                      ; 5 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %.1182383, i64 %i.ai
  %i.ak = icmp ugt ptr %i.aj, %i.a
  br i1 %i.ak, label %.thread314, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds i8, ptr %.1182383, i64 -2 ; 2 uses
  %i.am = icmp ult ptr %i.al, %6
  br i1 %i.am, label %.thread314, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = load i16, ptr %i.al, align 2, !tbaa !10 ; 3 uses
  %.not261354 = icmp eq i8 %i.ah, 0
  br i1 %.not261354, label %.loopexit331, label %iter.check527

iter.check527:                                    ; preds = %bb.i
  %min.iters.check512 = icmp samesign ult i64 %i.ai, 4
  br i1 %min.iters.check512, label %.lr.ph.preheader, label %vector.main.loop.iter.check513

vector.main.loop.iter.check513:                   ; preds = %iter.check527
  %min.iters.check514 = icmp samesign ult i64 %i.ai, 16
  br i1 %min.iters.check514, label %vec.epilog.ph531, label %vector.ph515

vector.ph515:                                     ; preds = %vector.main.loop.iter.check513
  %i.ao = and i64 %i.ag, 12
  %n.vec516 = and i64 %i.ag, 240                  ; 5 uses
  %i.ap = trunc nuw i64 %n.vec516 to i8
  %i.aq = sub i8 %i.ah, %i.ap
  %i.ar = shl nuw nsw i64 %n.vec516, 1
  %i.as = getelementptr i8, ptr %.1182383, i64 %i.ar ; 2 uses
  %broadcast.splatinsert517 = insertelement <8 x i16> poison, i16 %i.an, i64 0
  %broadcast.splat518 = shufflevector <8 x i16> %broadcast.splatinsert517, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body519

vector.body519:                                   ; preds = %vector.body519, %vector.ph515
  %index520 = phi i64 [ 0, %vector.ph515 ], [ %index.next522, %vector.body519 ] ; 2 uses
  %i.at = shl i64 %index520, 1
  %next.gep521 = getelementptr i8, ptr %.1182383, i64 %i.at ; 2 uses
  %i.au = getelementptr i8, ptr %next.gep521, i64 16
  store <8 x i16> %broadcast.splat518, ptr %next.gep521, align 2, !tbaa !10
  store <8 x i16> %broadcast.splat518, ptr %i.au, align 2, !tbaa !10
  %index.next522 = add nuw i64 %index520, 16      ; 2 uses
  %i.av = icmp eq i64 %index.next522, %n.vec516
  br i1 %i.av, label %middle.block523, label %vector.body519, !llvm.loop !144

middle.block523:                                  ; preds = %vector.body519
  %cmp.n524 = icmp eq i64 %i.ai, %n.vec516
  br i1 %cmp.n524, label %.loopexit331, label %vec.epilog.iter.check529

vec.epilog.iter.check529:                         ; preds = %middle.block523
  %min.epilog.iters.check530 = icmp eq i64 %i.ao, 0
  br i1 %min.epilog.iters.check530, label %.lr.ph.preheader, label %vec.epilog.ph531, !prof !42

vec.epilog.ph531:                                 ; preds = %vector.main.loop.iter.check513, %vec.epilog.iter.check529
  %vec.epilog.resume.val525 = phi i64 [ %n.vec516, %vec.epilog.iter.check529 ], [ 0, %vector.main.loop.iter.check513 ]
  %n.vec532 = and i64 %i.ag, 252                  ; 4 uses
  %i.aw = trunc nuw i64 %n.vec532 to i8
  %i.ax = sub i8 %i.ah, %i.aw
  %i.ay = shl nuw nsw i64 %n.vec532, 1
  %i.az = getelementptr i8, ptr %.1182383, i64 %i.ay ; 2 uses
  %broadcast.splatinsert533 = insertelement <4 x i16> poison, i16 %i.an, i64 0
  %broadcast.splat534 = shufflevector <4 x i16> %broadcast.splatinsert533, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body535

vec.epilog.vector.body535:                        ; preds = %vec.epilog.vector.body535, %vec.epilog.ph531
  %index536 = phi i64 [ %vec.epilog.resume.val525, %vec.epilog.ph531 ], [ %index.next538, %vec.epilog.vector.body535 ] ; 2 uses
  %i.ba = shl i64 %index536, 1
  %next.gep537 = getelementptr i8, ptr %.1182383, i64 %i.ba
  store <4 x i16> %broadcast.splat534, ptr %next.gep537, align 2, !tbaa !10
  %index.next538 = add nuw i64 %index536, 4       ; 2 uses
  %i.bb = icmp eq i64 %index.next538, %n.vec532
  br i1 %i.bb, label %vec.epilog.middle.block539, label %vec.epilog.vector.body535, !llvm.loop !145

vec.epilog.middle.block539:                       ; preds = %vec.epilog.vector.body535
  %cmp.n540 = icmp eq i64 %i.ai, %n.vec532
  br i1 %cmp.n540, label %.loopexit331, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check527, %vec.epilog.iter.check529, %vec.epilog.middle.block539
  %.0153356.ph = phi i8 [ %i.ah, %iter.check527 ], [ %i.aq, %vec.epilog.iter.check529 ], [ %i.ax, %vec.epilog.middle.block539 ]
  %.2183355.ph = phi ptr [ %.1182383, %iter.check527 ], [ %i.as, %vec.epilog.iter.check529 ], [ %i.az, %vec.epilog.middle.block539 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0153356 = phi i8 [ %i.bc, %.lr.ph ], [ %.0153356.ph, %.lr.ph.preheader ]
  %.2183355 = phi ptr [ %i.bd, %.lr.ph ], [ %.2183355.ph, %.lr.ph.preheader ] ; 2 uses
  %i.bc = add i8 %.0153356, -1                    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.2183355, i64 2 ; 2 uses
  store i16 %i.an, ptr %.2183355, align 2, !tbaa !10
  %.not261 = icmp eq i8 %i.bc, 0
  br i1 %.not261, label %.loopexit331, label %.lr.ph, !llvm.loop !146

bb.j:                                             ; preds = %bb.c
  %i.be = icmp ult ptr %.1182383, %i.a
  br i1 %i.be, label %bb.k, label %.thread314

bb.k:                                             ; preds = %bb.j
  %i.bf = trunc i32 %i.v to i16
  %i.bg = getelementptr inbounds nuw i8, ptr %.1182383, i64 2
  store i16 %i.bf, ptr %.1182383, align 2, !tbaa !10
  br label %.loopexit331

bb.l:                                             ; preds = %.lr.ph387
  %i.bh = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !41 ; 2 uses
  %.not256 = icmp eq ptr %i.bi, null
  br i1 %.not256, label %.thread314, label %.preheader

.preheader:                                       ; preds = %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !44 ; 3 uses
  %.not418 = icmp eq i32 %i.bk, 0
  br i1 %.not418, label %.thread314, label %.lr.ph370.preheader

.lr.ph370.preheader:                              ; preds = %.preheader
  %wide.trip.count = zext i32 %i.bk to i64
  br label %.lr.ph370

.lr.ph370:                                        ; preds = %.lr.ph370.preheader, %bb.w
  %indvars.iv = phi i64 [ 0, %.lr.ph370.preheader ], [ %indvars.iv.next, %bb.w ] ; 3 uses
  %.4159368 = phi i32 [ %.1156385, %.lr.ph370.preheader ], [ %.5160.lcssa, %bb.w ] ; 3 uses
  %.4166367 = phi i64 [ %.1163384, %.lr.ph370.preheader ], [ %.5167.lcssa, %bb.w ] ; 2 uses
  %.4219366 = phi ptr [ %.1216382, %.lr.ph370.preheader ], [ %.5220.lcssa, %bb.w ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !16 ; 3 uses
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !12 ; 3 uses
  %i.bq = trunc i64 %i.bp to i32
  %i.br = and i32 %i.bq, 63                       ; 3 uses
  %i.bs = icmp slt i32 %.4159368, %i.br           ; 2 uses
  %i.bt = icmp ult ptr %.4219366, %i.d            ; 2 uses
  %i.bu = select i1 %i.bs, i1 %i.bt, i1 false
  br i1 %i.bu, label %.lr.ph360, label %._crit_edge

.lr.ph360:                                        ; preds = %.lr.ph370, %.lr.ph360
  %.5160359 = phi i32 [ %i.ca, %.lr.ph360 ], [ %.4159368, %.lr.ph370 ]
  %.5167358 = phi i64 [ %i.bz, %.lr.ph360 ], [ %.4166367, %.lr.ph370 ]
  %.5220357 = phi ptr [ %i.bw, %.lr.ph360 ], [ %.4219366, %.lr.ph370 ] ; 2 uses
  %i.bv = shl i64 %.5167358, 8
  %i.bw = getelementptr inbounds nuw i8, ptr %.5220357, i64 1 ; 3 uses
  %i.bx = load i8, ptr %.5220357, align 1, !tbaa !18
  %i.by = zext i8 %i.bx to i64
  %i.bz = or disjoint i64 %i.bv, %i.by            ; 2 uses
  %i.ca = add nsw i32 %.5160359, 8                ; 3 uses
  %i.cb = icmp slt i32 %i.ca, %i.br               ; 2 uses
  %i.cc = icmp ult ptr %i.bw, %i.d                ; 2 uses
  %i.cd = select i1 %i.cb, i1 %i.cc, i1 false
  br i1 %i.cd, label %.lr.ph360, label %._crit_edge, !llvm.loop !147

._crit_edge:                                      ; preds = %.lr.ph360, %.lr.ph370
  %.5220.lcssa = phi ptr [ %.4219366, %.lr.ph370 ], [ %i.bw, %.lr.ph360 ] ; 5 uses
  %.5167.lcssa = phi i64 [ %.4166367, %.lr.ph370 ], [ %i.bz, %.lr.ph360 ] ; 5 uses
  %.5160.lcssa = phi i32 [ %.4159368, %.lr.ph370 ], [ %i.ca, %.lr.ph360 ] ; 2 uses
  %.lcssa336 = phi i1 [ %i.bs, %.lr.ph370 ], [ %i.cb, %.lr.ph360 ]
  %.lcssa = phi i1 [ %i.bt, %.lr.ph370 ], [ %i.cc, %.lr.ph360 ]
  br i1 %.lcssa336, label %bb.w, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.ce = lshr i64 %i.bp, 6
  %i.cf = sub nuw nsw i32 %.5160.lcssa, %i.br     ; 5 uses
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = lshr i64 %.5167.lcssa, %i.cg
  %i.ci = and i64 %i.bp, 63
  %notmask = shl nsw i64 -1, %i.ci
  %i.cj = xor i64 %notmask, -1
  %i.ck = and i64 %i.ch, %i.cj
  %i.cl = icmp eq i64 %i.ce, %i.ck
  br i1 %i.cl, label %bb.n, label %bb.w

bb.n:                                             ; preds = %bb.m
  %i.cm = trunc nuw i64 %indvars.iv to i32
  %i.cn = icmp eq i32 %i.bm, %4
  br i1 %i.cn, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.co = icmp slt i32 %i.cf, 8
  br i1 %i.co, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  br i1 %.lcssa, label %bb.q, label %.thread314

bb.q:                                             ; preds = %bb.p
  %i.cp = shl i64 %.5167.lcssa, 8
  %i.cq = getelementptr inbounds nuw i8, ptr %.5220.lcssa, i64 1
  %i.cr = load i8, ptr %.5220.lcssa, align 1, !tbaa !18
  %i.cs = zext i8 %i.cr to i64
  %i.ct = or disjoint i64 %i.cp, %i.cs
  %i.cu = add nsw i32 %i.cf, 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %.6221 = phi ptr [ %i.cq, %bb.q ], [ %.5220.lcssa, %bb.o ] ; 4 uses
  %.6168 = phi i64 [ %i.ct, %bb.q ], [ %.5167.lcssa, %bb.o ] ; 5 uses
  %.6161 = phi i32 [ %i.cu, %bb.q ], [ %i.cf, %bb.o ]
  %i.cv = add nsw i32 %.6161, -8                  ; 5 uses
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = lshr i64 %.6168, %i.cw                  ; 5 uses
  %i.cy = trunc i64 %i.cx to i8                   ; 4 uses
  %i.cz = and i64 %i.cx, 255                      ; 5 uses
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %.1182383, i64 %i.cz
  %i.db = icmp ugt ptr %i.da, %i.a
  br i1 %i.db, label %.thread314, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dc = getelementptr inbounds i8, ptr %.1182383, i64 -2 ; 2 uses
  %i.dd = icmp ult ptr %i.dc, %6
  br i1 %i.dd, label %.thread314, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.de = load i16, ptr %i.dc, align 2, !tbaa !10 ; 3 uses
  %.not259376 = icmp eq i8 %i.cy, 0
  br i1 %.not259376, label %.loopexit329, label %iter.check

iter.check:                                       ; preds = %bb.t
  %min.iters.check = icmp samesign ult i64 %i.cz, 4
  br i1 %min.iters.check, label %.lr.ph380.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check501 = icmp samesign ult i64 %i.cz, 16
  br i1 %min.iters.check501, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.df = and i64 %i.cx, 12
  %n.vec = and i64 %i.cx, 240                     ; 5 uses
  %i.dg = trunc nuw i64 %n.vec to i8
  %i.dh = sub i8 %i.cy, %i.dg
  %i.di = shl nuw nsw i64 %n.vec, 1
  %i.dj = getelementptr i8, ptr %.1182383, i64 %i.di ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.de, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dk = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.1182383, i64 %i.dk ; 2 uses
  %i.dl = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %broadcast.splat, ptr %next.gep, align 2, !tbaa !10
  store <8 x i16> %broadcast.splat, ptr %i.dl, align 2, !tbaa !10
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !148

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cz, %n.vec
  br i1 %cmp.n, label %.loopexit329, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.df, 0
  br i1 %min.epilog.iters.check, label %.lr.ph380.preheader, label %vec.epilog.ph, !prof !42

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec503 = and i64 %i.cx, 252                  ; 4 uses
  %i.dn = trunc nuw i64 %n.vec503 to i8
  %i.do = sub i8 %i.cy, %i.dn
  %i.dp = shl nuw nsw i64 %n.vec503, 1
  %i.dq = getelementptr i8, ptr %.1182383, i64 %i.dp ; 2 uses
  %broadcast.splatinsert504 = insertelement <4 x i16> poison, i16 %i.de, i64 0
  %broadcast.splat505 = shufflevector <4 x i16> %broadcast.splatinsert504, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index506 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next508, %vec.epilog.vector.body ] ; 2 uses
  %i.dr = shl i64 %index506, 1
  %next.gep507 = getelementptr i8, ptr %.1182383, i64 %i.dr
  store <4 x i16> %broadcast.splat505, ptr %next.gep507, align 2, !tbaa !10
  %index.next508 = add nuw i64 %index506, 4       ; 2 uses
  %i.ds = icmp eq i64 %index.next508, %n.vec503
  br i1 %i.ds, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !149

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n509 = icmp eq i64 %i.cz, %n.vec503
  br i1 %cmp.n509, label %.loopexit329, label %.lr.ph380.preheader

.lr.ph380.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0151378.ph = phi i8 [ %i.cy, %iter.check ], [ %i.dh, %vec.epilog.iter.check ], [ %i.do, %vec.epilog.middle.block ]
  %.5186377.ph = phi ptr [ %.1182383, %iter.check ], [ %i.dj, %vec.epilog.iter.check ], [ %i.dq, %vec.epilog.middle.block ]
  br label %.lr.ph380

.lr.ph380:                                        ; preds = %.lr.ph380.preheader, %.lr.ph380
  %.0151378 = phi i8 [ %i.dt, %.lr.ph380 ], [ %.0151378.ph, %.lr.ph380.preheader ]
  %.5186377 = phi ptr [ %i.du, %.lr.ph380 ], [ %.5186377.ph, %.lr.ph380.preheader ] ; 2 uses
  %i.dt = add i8 %.0151378, -1                    ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.5186377, i64 2 ; 2 uses
  store i16 %i.de, ptr %.5186377, align 2, !tbaa !10
  %.not259 = icmp eq i8 %i.dt, 0
  br i1 %.not259, label %.loopexit329, label %.lr.ph380, !llvm.loop !150

bb.u:                                             ; preds = %bb.n
  %i.dv = icmp ult ptr %.1182383, %i.a
  br i1 %i.dv, label %bb.v, label %.thread314

bb.v:                                             ; preds = %bb.u
  %i.dw = trunc i32 %i.bm to i16
  %i.dx = getelementptr inbounds nuw i8, ptr %.1182383, i64 2
  store i16 %i.dw, ptr %.1182383, align 2, !tbaa !10
  br label %.loopexit329

bb.w:                                             ; preds = %bb.m, %._crit_edge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread314, label %.lr.ph370, !llvm.loop !151

.loopexit329:                                     ; preds = %.lr.ph380, %middle.block, %vec.epilog.middle.block, %bb.t, %bb.v
  %.10225 = phi ptr [ %.6221, %bb.t ], [ %.5220.lcssa, %bb.v ], [ %.6221, %middle.block ], [ %.6221, %vec.epilog.middle.block ], [ %.6221, %.lr.ph380 ]
  %.9190 = phi ptr [ %.1182383, %bb.t ], [ %i.dx, %bb.v ], [ %i.dj, %middle.block ], [ %i.dq, %vec.epilog.middle.block ], [ %i.du, %.lr.ph380 ]
  %.10172 = phi i64 [ %.6168, %bb.t ], [ %.5167.lcssa, %bb.v ], [ %.6168, %middle.block ], [ %.6168, %vec.epilog.middle.block ], [ %.6168, %.lr.ph380 ]
  %.10 = phi i32 [ %i.cv, %bb.t ], [ %i.cf, %bb.v ], [ %i.cv, %middle.block ], [ %i.cv, %vec.epilog.middle.block ], [ %i.cv, %.lr.ph380 ]
  %i.dy = icmp eq i32 %i.bk, %i.cm
  br i1 %i.dy, label %.thread314, label %.loopexit331

.loopexit331:                                     ; preds = %.lr.ph, %middle.block523, %vec.epilog.middle.block539, %bb.i, %bb.k, %.loopexit329
  %.13228 = phi ptr [ %.10225, %.loopexit329 ], [ %.1216382, %bb.k ], [ %.2217, %bb.i ], [ %.2217, %middle.block523 ], [ %.2217, %vec.epilog.middle.block539 ], [ %.2217, %.lr.ph ] ; 2 uses
  %.12193 = phi ptr [ %.9190, %.loopexit329 ], [ %i.bg, %bb.k ], [ %.1182383, %bb.i ], [ %i.as, %middle.block523 ], [ %i.az, %vec.epilog.middle.block539 ], [ %i.bd, %.lr.ph ] ; 2 uses
  %.13175 = phi i64 [ %.10172, %.loopexit329 ], [ %.1163384, %bb.k ], [ %.2164, %bb.i ], [ %.2164, %middle.block523 ], [ %.2164, %vec.epilog.middle.block539 ], [ %.2164, %.lr.ph ] ; 2 uses
  %.13 = phi i32 [ %.10, %.loopexit329 ], [ %i.t, %bb.k ], [ %i.ae, %bb.i ], [ %i.ae, %middle.block523 ], [ %i.ae, %vec.epilog.middle.block539 ], [ %i.ae, %.lr.ph ] ; 3 uses
  %i.dz = icmp sgt i32 %.13, 13
  br i1 %i.dz, label %.lr.ph387, label %.loopexit332, !llvm.loop !152

._crit_edge398:                                   ; preds = %.loopexit332, %bb.a
  %.0215.lcssa = phi ptr [ %2, %bb.a ], [ %.1216.lcssa, %.loopexit332 ]
  %.0181.lcssa = phi ptr [ %6, %bb.a ], [ %.1182.lcssa, %.loopexit332 ] ; 2 uses
  %.0162.lcssa = phi i64 [ 0, %bb.a ], [ %.1163.lcssa, %.loopexit332 ]
  %.0155.lcssa = phi i32 [ 0, %bb.a ], [ %.1156.lcssa, %.loopexit332 ]
  %i.ea = sub nsw i64 0, %3
  %i.eb = and i64 %i.ea, 7                        ; 2 uses
  %i.ec = trunc nuw nsw i64 %i.eb to i32
  %i.ed = sub nsw i32 %.0155.lcssa, %i.ec         ; 2 uses
  %i.ee = icmp sgt i32 %i.ed, 0
  br i1 %i.ee, label %.lr.ph414.preheader, label %._crit_edge415

.lr.ph414.preheader:                              ; preds = %._crit_edge398
  %i.ef = lshr i64 %.0162.lcssa, %i.eb
  br label %.lr.ph414

.lr.ph414:                                        ; preds = %.lr.ph414.preheader, %.loopexit
  %.14412 = phi i32 [ %.18, %.loopexit ], [ %i.ed, %.lr.ph414.preheader ] ; 3 uses
  %.14176411 = phi i64 [ %.18180, %.loopexit ], [ %i.ef, %.lr.ph414.preheader ] ; 4 uses
  %.13194410 = phi ptr [ %.17198, %.loopexit ], [ %.0181.lcssa, %.lr.ph414.preheader ] ; 11 uses
  %.14229409 = phi ptr [ %.18233, %.loopexit ], [ %.0215.lcssa, %.lr.ph414.preheader ] ; 5 uses
  %i.eg = sub nsw i32 14, %.14412
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = shl i64 %.14176411, %i.eh
  %i.ej = and i64 %i.ei, 16383
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.ej ; 2 uses
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !43 ; 3 uses
  %.not252 = icmp eq i32 %i.el, 0
  %i.em = icmp sgt i32 %i.el, %.14412
  %or.cond = or i1 %.not252, %i.em
  br i1 %or.cond, label %.thread314, label %bb.x

bb.x:                                             ; preds = %.lr.ph414
  %i.en = sub nsw i32 %.14412, %i.el              ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !44 ; 2 uses
  %i.eq = icmp eq i32 %i.ep, %4
  br i1 %i.eq, label %bb.y, label %bb.ae

bb.y:                                             ; preds = %bb.x
  %i.er = icmp slt i32 %i.en, 8
  br i1 %i.er, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %.not253 = icmp ult ptr %.14229409, %i.d
  br i1 %.not253, label %bb.aa, label %.thread314

bb.aa:                                            ; preds = %bb.z
  %i.es = shl i64 %.14176411, 8
  %i.et = getelementptr inbounds nuw i8, ptr %.14229409, i64 1
  %i.eu = load i8, ptr %.14229409, align 1, !tbaa !18
  %i.ev = zext i8 %i.eu to i64
  %i.ew = or disjoint i64 %i.es, %i.ev
  %i.ex = add nsw i32 %i.en, 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.y
  %.15230 = phi ptr [ %i.et, %bb.aa ], [ %.14229409, %bb.y ] ; 4 uses
  %.15177 = phi i64 [ %i.ew, %bb.aa ], [ %.14176411, %bb.y ] ; 5 uses
  %.15 = phi i32 [ %i.ex, %bb.aa ], [ %i.en, %bb.y ]
  %i.ey = add nsw i32 %.15, -8                    ; 5 uses
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = lshr i64 %.15177, %i.ez                 ; 5 uses
  %i.fb = trunc i64 %i.fa to i8                   ; 4 uses
  %i.fc = and i64 %i.fa, 255                      ; 5 uses
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %.13194410, i64 %i.fc
  %i.fe = icmp ugt ptr %i.fd, %i.a
  br i1 %i.fe, label %.thread314, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ff = getelementptr inbounds i8, ptr %.13194410, i64 -2 ; 2 uses
  %i.fg = icmp ult ptr %i.ff, %6
  br i1 %i.fg, label %.thread314, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fh = load i16, ptr %i.ff, align 2, !tbaa !10 ; 3 uses
  %.not254403 = icmp eq i8 %i.fb, 0
  br i1 %.not254403, label %.loopexit, label %iter.check558

iter.check558:                                    ; preds = %bb.ad
  %min.iters.check543 = icmp samesign ult i64 %i.fc, 4
  br i1 %min.iters.check543, label %.lr.ph407.preheader, label %vector.main.loop.iter.check544

vector.main.loop.iter.check544:                   ; preds = %iter.check558
  %min.iters.check545 = icmp samesign ult i64 %i.fc, 16
  br i1 %min.iters.check545, label %vec.epilog.ph562, label %vector.ph546

vector.ph546:                                     ; preds = %vector.main.loop.iter.check544
  %i.fi = and i64 %i.fa, 12
  %n.vec547 = and i64 %i.fa, 240                  ; 5 uses
  %i.fj = trunc nuw i64 %n.vec547 to i8
  %i.fk = sub i8 %i.fb, %i.fj
  %i.fl = shl nuw nsw i64 %n.vec547, 1
  %i.fm = getelementptr i8, ptr %.13194410, i64 %i.fl ; 2 uses
  %broadcast.splatinsert548 = insertelement <8 x i16> poison, i16 %i.fh, i64 0
  %broadcast.splat549 = shufflevector <8 x i16> %broadcast.splatinsert548, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body550

vector.body550:                                   ; preds = %vector.body550, %vector.ph546
  %index551 = phi i64 [ 0, %vector.ph546 ], [ %index.next553, %vector.body550 ] ; 2 uses
  %i.fn = shl i64 %index551, 1
  %next.gep552 = getelementptr i8, ptr %.13194410, i64 %i.fn ; 2 uses
  %i.fo = getelementptr i8, ptr %next.gep552, i64 16
  store <8 x i16> %broadcast.splat549, ptr %next.gep552, align 2, !tbaa !10
  store <8 x i16> %broadcast.splat549, ptr %i.fo, align 2, !tbaa !10
  %index.next553 = add nuw i64 %index551, 16      ; 2 uses
  %i.fp = icmp eq i64 %index.next553, %n.vec547
  br i1 %i.fp, label %middle.block554, label %vector.body550, !llvm.loop !153

middle.block554:                                  ; preds = %vector.body550
  %cmp.n555 = icmp eq i64 %i.fc, %n.vec547
  br i1 %cmp.n555, label %.loopexit, label %vec.epilog.iter.check560

vec.epilog.iter.check560:                         ; preds = %middle.block554
  %min.epilog.iters.check561 = icmp eq i64 %i.fi, 0
  br i1 %min.epilog.iters.check561, label %.lr.ph407.preheader, label %vec.epilog.ph562, !prof !42

vec.epilog.ph562:                                 ; preds = %vector.main.loop.iter.check544, %vec.epilog.iter.check560
  %vec.epilog.resume.val556 = phi i64 [ %n.vec547, %vec.epilog.iter.check560 ], [ 0, %vector.main.loop.iter.check544 ]
  %n.vec563 = and i64 %i.fa, 252                  ; 4 uses
  %i.fq = trunc nuw i64 %n.vec563 to i8
  %i.fr = sub i8 %i.fb, %i.fq
  %i.fs = shl nuw nsw i64 %n.vec563, 1
  %i.ft = getelementptr i8, ptr %.13194410, i64 %i.fs ; 2 uses
  %broadcast.splatinsert564 = insertelement <4 x i16> poison, i16 %i.fh, i64 0
  %broadcast.splat565 = shufflevector <4 x i16> %broadcast.splatinsert564, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body566

vec.epilog.vector.body566:                        ; preds = %vec.epilog.vector.body566, %vec.epilog.ph562
  %index567 = phi i64 [ %vec.epilog.resume.val556, %vec.epilog.ph562 ], [ %index.next569, %vec.epilog.vector.body566 ] ; 2 uses
  %i.fu = shl i64 %index567, 1
  %next.gep568 = getelementptr i8, ptr %.13194410, i64 %i.fu
  store <4 x i16> %broadcast.splat565, ptr %next.gep568, align 2, !tbaa !10
  %index.next569 = add nuw i64 %index567, 4       ; 2 uses
  %i.fv = icmp eq i64 %index.next569, %n.vec563
  br i1 %i.fv, label %vec.epilog.middle.block570, label %vec.epilog.vector.body566, !llvm.loop !154

vec.epilog.middle.block570:                       ; preds = %vec.epilog.vector.body566
  %cmp.n571 = icmp eq i64 %i.fc, %n.vec563
  br i1 %cmp.n571, label %.loopexit, label %.lr.ph407.preheader

.lr.ph407.preheader:                              ; preds = %iter.check558, %vec.epilog.iter.check560, %vec.epilog.middle.block570
  %.0405.ph = phi i8 [ %i.fb, %iter.check558 ], [ %i.fk, %vec.epilog.iter.check560 ], [ %i.fr, %vec.epilog.middle.block570 ]
  %.14195404.ph = phi ptr [ %.13194410, %iter.check558 ], [ %i.fm, %vec.epilog.iter.check560 ], [ %i.ft, %vec.epilog.middle.block570 ]
  br label %.lr.ph407

.lr.ph407:                                        ; preds = %.lr.ph407.preheader, %.lr.ph407
  %.0405 = phi i8 [ %i.fw, %.lr.ph407 ], [ %.0405.ph, %.lr.ph407.preheader ]
  %.14195404 = phi ptr [ %i.fx, %.lr.ph407 ], [ %.14195404.ph, %.lr.ph407.preheader ] ; 2 uses
  %i.fw = add i8 %.0405, -1                       ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.14195404, i64 2 ; 2 uses
  store i16 %i.fh, ptr %.14195404, align 2, !tbaa !10
  %.not254 = icmp eq i8 %i.fw, 0
  br i1 %.not254, label %.loopexit, label %.lr.ph407, !llvm.loop !155

bb.ae:                                            ; preds = %bb.x
  %i.fy = icmp ult ptr %.13194410, %i.a
  br i1 %i.fy, label %bb.af, label %.thread314

bb.af:                                            ; preds = %bb.ae
  %i.fz = trunc i32 %i.ep to i16
  %i.ga = getelementptr inbounds nuw i8, ptr %.13194410, i64 2
  store i16 %i.fz, ptr %.13194410, align 2, !tbaa !10
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph407, %middle.block554, %vec.epilog.middle.block570, %bb.ad, %bb.af
  %.18233 = phi ptr [ %.14229409, %bb.af ], [ %.15230, %bb.ad ], [ %.15230, %middle.block554 ], [ %.15230, %vec.epilog.middle.block570 ], [ %.15230, %.lr.ph407 ]
  %.17198 = phi ptr [ %i.ga, %bb.af ], [ %.13194410, %bb.ad ], [ %i.fm, %middle.block554 ], [ %i.ft, %vec.epilog.middle.block570 ], [ %i.fx, %.lr.ph407 ] ; 2 uses
  %.18180 = phi i64 [ %.14176411, %bb.af ], [ %.15177, %bb.ad ], [ %.15177, %middle.block554 ], [ %.15177, %vec.epilog.middle.block570 ], [ %.15177, %.lr.ph407 ]
  %.18 = phi i32 [ %i.en, %bb.af ], [ %i.ey, %bb.ad ], [ %i.ey, %middle.block554 ], [ %i.ey, %vec.epilog.middle.block570 ], [ %i.ey, %.lr.ph407 ] ; 2 uses
  %i.gb = icmp sgt i32 %.18, 0
  br i1 %i.gb, label %.lr.ph414, label %._crit_edge415, !llvm.loop !156

._crit_edge415:                                   ; preds = %.loopexit, %._crit_edge398
  %.13194.lcssa = phi ptr [ %.0181.lcssa, %._crit_edge398 ], [ %.17198, %.loopexit ]
  %.not = icmp ne ptr %.13194.lcssa, %i.a
  %.262 = zext i1 %.not to i32
  br label %.thread314

.thread314:                                       ; preds = %.preheader, %.loopexit329, %bb.r, %bb.p, %bb.s, %bb.u, %bb.l, %bb.g, %bb.e, %bb.h, %bb.b, %bb.j, %bb.w, %bb.ab, %bb.z, %bb.ac, %.lr.ph414, %bb.ae, %._crit_edge415
  %.15214 = phi i32 [ %.262, %._crit_edge415 ], [ 23, %bb.w ], [ 23, %bb.ab ], [ 23, %bb.ae ], [ 23, %.lr.ph414 ], [ 1, %bb.ac ], [ 1, %bb.z ], [ 23, %bb.b ], [ 23, %.loopexit329 ], [ 1, %bb.p ], [ 23, %bb.r ], [ 23, %bb.u ], [ 23, %bb.l ], [ 1, %bb.s ], [ 1, %bb.e ], [ 23, %.preheader ], [ 23, %bb.g ], [ 23, %bb.j ], [ 1, %bb.h ]
  ret i32 %.15214
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #6

declare noalias ptr @internal_exr_alloc(i64 noundef) local_unnamed_addr #7

declare void @internal_exr_free(ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v32i32(<32 x i32>) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !13}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"short", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = !{!"any pointer", !5, i64 0}
!16 = !{!6, !6, i64 0}
!17 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!18 = !{!5, !5, i64 0}
!19 = !{!"p1 int", !15, i64 0}
!20 = !{!"FastHufDecoder", !6, i64 0, !6, i64 4, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 12, !5, i64 262160, !5, i64 262640, !5, i64 263112, !5, i64 279496, !11, i64 283592}
!21 = !{!20, !6, i64 0}
!22 = !{!20, !6, i64 4}
!23 = !{!20, !5, i64 9}
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
!26 = !{!"p1 omnipotent char", !15, i64 0}
!27 = !{!"", !6, i64 0, !6, i64 4, !26, i64 8}
!28 = !{!"float", !5, i64 0}
!29 = !{!"any p2 pointer", !15, i64 0}
!30 = !{!"exr_attribute_list", !6, i64 0, !6, i64 4, !29, i64 8, !29, i64 16}
!31 = !{!"", !6, i64 0, !6, i64 4}
!32 = !{!"", !31, i64 0, !31, i64 8}
!33 = !{!"_priv_exr_part_t", !6, i64 0, !6, i64 4, !30, i64 8, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !15, i64 128, !15, i64 136, !32, i64 144, !32, i64 160, !6, i64 176, !6, i64 180, !6, i64 184, !28, i64 188, !6, i64 192, !6, i64 196, !19, i64 200, !19, i64 208, !19, i64 216, !19, i64 224, !11, i64 232, !9, i64 240, !9, i64 242, !6, i64 244, !11, i64 248, !5, i64 256}
!34 = !{!"p1 _ZTS16_priv_exr_part_t", !15, i64 0}
!35 = !{!"p2 _ZTS16_priv_exr_part_t", !29, i64 0}
!36 = !{!"_priv_exr_context_t", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !5, i64 4, !5, i64 5, !5, i64 6, !5, i64 7, !27, i64 8, !27, i64 24, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !28, i64 124, !15, i64 128, !15, i64 136, !15, i64 144, !11, i64 152, !15, i64 160, !15, i64 168, !11, i64 176, !6, i64 184, !6, i64 188, !6, i64 192, !6, i64 196, !33, i64 200, !34, i64 464, !35, i64 472, !30, i64 480, !5, i64 504, !5, i64 544, !5, i64 545, !5, i64 546, !6, i64 548}
!37 = !{!36, !15, i64 72}
!38 = !{!20, !11, i64 283592}
!39 = !{!36, !15, i64 96}
!40 = !{!"_HufDec", !6, i64 0, !6, i64 4, !19, i64 8}
!41 = !{!40, !19, i64 8}
!42 = !{!"branch_weights", i32 4, i32 12}
!43 = !{!40, !6, i64 0}
!44 = !{!40, !6, i64 4}
!45 = distinct !{!45, !13}
!46 = distinct !{!46, !14}
!47 = distinct !{!47, !13}
!48 = distinct !{!48, !13}
!49 = distinct !{!49, !13}
!50 = distinct !{!50, !13}
!51 = distinct !{!51, !13}
!52 = distinct !{!52, !13}
!53 = distinct !{!53, !13}
!54 = distinct !{!54, !13}
!55 = distinct !{!55, !13}
!56 = distinct !{!56, !13}
!57 = distinct !{!57, !13}
!58 = distinct !{!58, !"hufEncode"}
!59 = distinct !{!59, !58, !"hufEncode: argument 0"}
!60 = distinct !{!60, !58, !"hufEncode: argument 1"}
!61 = distinct !{!61, !58, !"hufEncode: argument 2"}
!62 = distinct !{!62, !58, !"hufEncode: argument 4"}
!63 = distinct !{!63, !58, !"hufEncode: argument 3"}
!64 = distinct !{!64, !13}
!65 = distinct !{!65, !13}
!66 = distinct !{!66, !13}
!67 = distinct !{!67, !13}
!68 = distinct !{!68, !13}
!69 = distinct !{!69, !13}
!70 = distinct !{!70, !13}
!71 = distinct !{!71, !13}
!72 = distinct !{!72, !13}
!73 = distinct !{!73, !13}
!74 = distinct !{!74, !13}
!75 = !{!"p1 long", !15, i64 0}
!76 = !{!75, !75, i64 0}
!77 = !{!59}
!78 = !{!60}
!79 = !{!61}
!80 = !{!59, !61, !63, !62}
!81 = !{!60, !61, !63, !62}
!82 = !{!59, !60, !63, !62}
!83 = distinct !{!83, !13}
!84 = distinct !{!84, !13}
!85 = distinct !{!85, !13, !24, !25}
!86 = distinct !{!86, !13, !25, !24}
!87 = distinct !{!87, !14}
!88 = distinct !{!88, !13}
!89 = distinct !{!89, !13}
!90 = distinct !{!90, !14}
!91 = distinct !{!91, !13}
!92 = distinct !{!92, !13}
!93 = distinct !{!93, !13, !24, !25}
!94 = distinct !{!94, !13, !24, !25}
!95 = distinct !{!95, !13}
!96 = distinct !{!96, !13}
!97 = distinct !{!97, !13, !24, !25}
!98 = distinct !{!98, !14}
!99 = distinct !{!99, !13, !24}
!100 = distinct !{!100, !13}
!101 = distinct !{null}
!102 = distinct !{!102, !13}
!103 = !{!"p1 _ZTS19_priv_exr_context_t", !15, i64 0}
!104 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !5, i64 20, !5, i64 21, !5, i64 22, !5, i64 23, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56}
!105 = !{!"_exr_decode_pipeline", !11, i64 0, !15, i64 8, !9, i64 16, !9, i64 18, !6, i64 20, !103, i64 24, !104, i64 32, !6, i64 96, !6, i64 100, !11, i64 104, !15, i64 112, !15, i64 120, !11, i64 128, !15, i64 136, !11, i64 144, !15, i64 152, !11, i64 160, !19, i64 168, !11, i64 176, !15, i64 184, !11, i64 192, !15, i64 200, !11, i64 208, !15, i64 216, !15, i64 224, !15, i64 232, !15, i64 240, !15, i64 248, !15, i64 256, !5, i64 264}
!106 = !{!105, !103, i64 24}
!107 = !{!20, !5, i64 8}
!108 = !{!"double", !5, i64 0}
!109 = !{!108, !108, i64 0}
!110 = distinct !{!110, !"FastHufDecoder_refill"}
!111 = distinct !{!111, !110, !"FastHufDecoder_refill: argument 3"}
!112 = distinct !{!112, !110, !"FastHufDecoder_refill: argument 2"}
!113 = distinct !{!113, !110, !"FastHufDecoder_refill: argument 1"}
!114 = distinct !{!114, !110, !"FastHufDecoder_refill: argument 0"}
!115 = distinct !{!115, !13}
!116 = distinct !{!116, !14}
!117 = distinct !{!117, !13}
!118 = distinct !{!118, !13}
!119 = distinct !{!119, !"FastHufDecoder_refill"}
!120 = distinct !{!120, !119, !"FastHufDecoder_refill: argument 3"}
!121 = distinct !{!121, !119, !"FastHufDecoder_refill: argument 2"}
!122 = distinct !{!122, !119, !"FastHufDecoder_refill: argument 1"}
!123 = distinct !{!123, !119, !"FastHufDecoder_refill: argument 0"}
!124 = distinct !{!124, !14}
!125 = distinct !{!125, !13, !24, !25}
!126 = distinct !{!126, !13, !24, !25}
!127 = distinct !{!127, !13, !25, !24}
!128 = distinct !{!128, !"FastHufDecoder_refill"}
!129 = distinct !{!129, !128, !"FastHufDecoder_refill: argument 3"}
!130 = distinct !{!130, !128, !"FastHufDecoder_refill: argument 2"}
!131 = distinct !{!131, !128, !"FastHufDecoder_refill: argument 1"}
!132 = distinct !{!132, !128, !"FastHufDecoder_refill: argument 0"}
!133 = distinct !{!133, !14}
!134 = distinct !{!134, !13}
!135 = !{!114, !113, !112, !111}
!136 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!137 = !{!123, !122, !121, !120}
!138 = !{!132, !131, !130, !129}
!139 = distinct !{!139, !13}
!140 = distinct !{!140, !13}
!141 = distinct !{!141, !13}
!142 = !{!36, !15, i64 88}
!143 = distinct !{!143, !13}
!144 = distinct !{!144, !13, !24, !25}
!145 = distinct !{!145, !13, !24, !25}
!146 = distinct !{!146, !13, !25, !24}
!147 = distinct !{!147, !13}
!148 = distinct !{!148, !13, !24, !25}
!149 = distinct !{!149, !13, !24, !25}
!150 = distinct !{!150, !13, !25, !24}
!151 = distinct !{!151, !13}
!152 = distinct !{!152, !13}
!153 = distinct !{!153, !13, !24, !25}
!154 = distinct !{!154, !13, !24, !25}
!155 = distinct !{!155, !13, !25, !24}
end_hunk_0
