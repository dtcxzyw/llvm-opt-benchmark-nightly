Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/dgif_lib?download=true
inline.NumInlined: 36
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@DGifGetImageDesc:bb.a
  br i1 %.not34, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !33
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !34
  %i.ad = tail call ptr @GifMakeMapObject(i32 noundef %i.aa, ptr noundef %i.ac) #12 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !81
  %i.af = icmp eq ptr %i.ad, null
  br i1 %i.af, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 109, ptr %i.ag, align 8, !tbaa !26
  br label %bb.m

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store ptr null, ptr %i.ah, align 8, !tbaa !61
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  store i32 0, ptr %i.ai, align 8, !tbaa !62
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  store ptr null, ptr %i.aj, align 8, !tbaa !63
  %i.ak = load i32, ptr %i.t, align 8, !tbaa !58
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.t, align 8, !tbaa !58
  br label %bb.m

bb.m:                                             ; preds = %.thread, %bb.c, %bb.l, %bb.k, %bb.h, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ 0, %bb.k ], [ 1, %bb.l ], [ 0, %.thread ], [ 0, %bb.h ], [ 0, %bb.c ]
  ret i32 %.1
}

declare ptr @openbsd_reallocarray(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @DGifGetLine(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !24
  %i.e = and i32 %i.d, 8
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 111, ptr %i.f, align 8, !tbaa !26
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %.not15 = icmp eq i32 %2, 0
  br i1 %.not15, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load i32, ptr %i.g, align 8, !tbaa !43
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ %2, %bb.c ], [ %i.h, %bb.d ]    ; 2 uses
  %i.i = sext i32 %.0 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !44
  %i.l = sub i64 %i.k, %i.i                       ; 2 uses
  store i64 %i.l, ptr %i.j, align 8, !tbaa !44
  %i.m = icmp ugt i64 %i.l, 4294901760
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 108, ptr %i.n, align 8, !tbaa !26
  br label %bb.p

bb.g:                                             ; preds = %bb.e
  %i.o = tail call fastcc i32 @DGifDecompressLine(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %.0)
  %.not16 = icmp eq i32 %i.o, 0
  br i1 %.not16, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = load i64, ptr %i.j, align 8, !tbaa !44
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %.preheader, label %bb.p

.preheader:                                       ; preds = %bb.h, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !18   ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !29   ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.preheader
  %i.u = call i32 %i.t(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 1) #12, !inline_history !2
  br label %InternalRead.exit.i

bb.j:                                             ; preds = %.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !23
  %i.x = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 1, ptr noundef %i.w)
  %i.y = trunc i64 %i.x to i32
  br label %InternalRead.exit.i

InternalRead.exit.i:                              ; preds = %bb.j, %bb.i
  %i.z = phi i32 [ %i.u, %bb.i ], [ %i.y, %bb.j ]
  %.not.i = icmp eq i32 %i.z, 1
  br i1 %.not.i, label %bb.k, label %DGifGetCodeNext.exit.thread

bb.k:                                             ; preds = %InternalRead.exit.i
  %i.aa = load i8, ptr %i.a, align 1, !tbaa !27   ; 4 uses
  %.not12.i = icmp eq i8 %i.aa, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 88 ; 2 uses
  br i1 %.not12.i, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i8 %i.aa, ptr %i.ab, align 8, !tbaa !27
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 89 ; 2 uses
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !18  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !29 ; 2 uses
  %.not.i14.i = icmp eq ptr %i.af, null
  br i1 %.not.i14.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = zext i8 %i.aa to i32
  %i.ah = call i32 %i.af(ptr noundef nonnull %0, ptr noundef nonnull %i.ac, i32 noundef range(i32 0, 256) %i.ag) #12, !inline_history !2
  br label %InternalRead.exit15.i

bb.n:                                             ; preds = %bb.l
  %i.ai = zext i8 %i.aa to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !23
  %i.al = call i64 @fread(ptr noundef nonnull %i.ac, i64 noundef 1, i64 noundef %i.ai, ptr noundef %i.ak)
  %i.am = trunc i64 %i.al to i32
  br label %InternalRead.exit15.i

InternalRead.exit15.i:                            ; preds = %bb.n, %bb.m
  %i.an = phi i32 [ %i.ah, %bb.m ], [ %i.am, %bb.n ]
  %i.ao = load i8, ptr %i.a, align 1, !tbaa !27
  %i.ap = zext i8 %i.ao to i32
  %.not13.i = icmp eq i32 %i.an, %i.ap
  br i1 %.not13.i, label %bb.o, label %DGifGetCodeNext.exit.thread

.thread:                                          ; preds = %bb.k
  store i8 0, ptr %i.ab, align 8, !tbaa !27
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  store i64 0, ptr %i.aq, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.p

DGifGetCodeNext.exit.thread:                      ; preds = %InternalRead.exit15.i, %InternalRead.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 102, ptr %i.ar, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.p

bb.o:                                             ; preds = %InternalRead.exit15.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.preheader, !llvm.loop !82

bb.p:                                             ; preds = %.thread, %DGifGetCodeNext.exit.thread, %bb.g, %bb.h, %bb.f, %bb.b
  %.013 = phi i32 [ 0, %bb.f ], [ 0, %bb.b ], [ 0, %DGifGetCodeNext.exit.thread ], [ 1, %bb.h ], [ 1, %.thread ], [ 0, %bb.g ]
  ret i32 %.013
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @DGifDecompressLine(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 15 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !51   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8536 ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 4439 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 344 ; 13 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !47
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !46   ; 11 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !52   ; 2 uses
  %i.o = icmp sgt i32 %i.e, 4095
  br i1 %i.o, label %.loopexit138, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.loopexit141, label %.preheader140

.preheader140:                                    ; preds = %bb.b
  %i.p = icmp sgt i32 %2, 0
  br i1 %i.p, label %iter.check, label %.loopexit141

iter.check:                                       ; preds = %.preheader140
  %i.q = sext i32 %i.e to i64                     ; 7 uses
  %i.r = add i32 %i.e, -1
  %i.s = add nsw i32 %2, -1
  %umin = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.s) ; 3 uses
  %i.t = add i32 %umin, 1                         ; 2 uses
  %wide.trip.count = zext i32 %i.t to i64         ; 10 uses
  %min.iters.check = icmp ult i32 %umin, 3
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep.a = getelementptr i8, ptr %1, i64 %wide.trip.count
  %i.u = add nsw i64 %i.q, 344                    ; 2 uses
  %i.v = sub nsw i64 %i.u, %wide.trip.count
  %i.w = getelementptr i8, ptr %i.c, i64 %i.v
  %scevgep237 = getelementptr i8, ptr %i.c, i64 %i.u
  %bound0 = icmp ult ptr %1, %scevgep237
  %bound1 = icmp ult ptr %i.w, %scevgep.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check238 = icmp ult i32 %umin, 15
  br i1 %min.iters.check238, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.x = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 5 uses
  %i.y = sub nsw i64 %i.q, %n.vec                 ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.h, i64 %i.q
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.z = xor i64 %index, -1
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.z
  %i.aa = getelementptr inbounds i8, ptr %gep, i64 -15
  %wide.load = load <16 x i8>, ptr %i.aa, align 1, !tbaa !27, !alias.scope !100
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %index
  store <16 x i8> %reverse, ptr %i.ab, align 1, !tbaa !27, !alias.scope !101, !noalias !100
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !86

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit141.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.x, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !102

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec239 = and i64 %wide.trip.count, 2147483644 ; 4 uses
  %i.ad = sub nsw i64 %i.q, %n.vec239             ; 2 uses
  %invariant.gep312 = getelementptr i8, ptr %i.h, i64 %i.q
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index240 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next243, %vec.epilog.vector.body ] ; 3 uses
  %i.ae = xor i64 %index240, -1
  %gep313 = getelementptr i8, ptr %invariant.gep312, i64 %i.ae
  %i.af = getelementptr inbounds i8, ptr %gep313, i64 -3
  %wide.load241 = load <4 x i8>, ptr %i.af, align 1, !tbaa !27, !alias.scope !100
  %reverse242 = shufflevector <4 x i8> %wide.load241, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %index240
  store <4 x i8> %reverse242, ptr %i.ag, align 1, !tbaa !27, !alias.scope !101, !noalias !100
  %index.next243 = add nuw i64 %index240, 4       ; 2 uses
  %i.ah = icmp eq i64 %index.next243, %n.vec239
  br i1 %i.ah, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !87

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n244 = icmp eq i64 %n.vec239, %wide.trip.count
  br i1 %cmp.n244, label %.loopexit141.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv179.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec239, %vec.epilog.middle.block ] ; 3 uses
  %indvars.iv.ph = phi i64 [ %i.q, %iter.check ], [ %i.q, %vector.memcheck ], [ %i.y, %vec.epilog.iter.check ], [ %i.ad, %vec.epilog.middle.block ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv179.prol = phi i64 [ %indvars.iv.next180.prol, %.lr.ph.prol ], [ %indvars.iv179.ph, %.lr.ph.preheader ] ; 2 uses
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, -1 ; 4 uses
  %i.ai = getelementptr inbounds i8, ptr %i.h, i64 %indvars.iv.next.prol
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !27
  %indvars.iv.next180.prol = add nuw nsw i64 %indvars.iv179.prol, 1 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv179.prol
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !27
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !88

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.next.lcssa306.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %indvars.iv179.unr = phi i64 [ %indvars.iv179.ph, %.lr.ph.preheader ], [ %indvars.iv.next180.prol, %.lr.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.al = sub nsw i64 %indvars.iv179.ph, %wide.trip.count
  %i.am = icmp ugt i64 %i.al, -4
  br i1 %i.am, label %.loopexit141.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv179 = phi i64 [ %indvars.iv.next180.3, %.lr.ph ], [ %indvars.iv179.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.an = getelementptr i8, ptr %i.h, i64 %indvars.iv
  %i.ao = getelementptr i8, ptr %i.an, i64 -1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !27
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv179
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !27
  %i.ar = getelementptr i8, ptr %i.h, i64 %indvars.iv
  %i.as = getelementptr i8, ptr %i.ar, i64 -2
  %i.at = load i8, ptr %i.as, align 1, !tbaa !27
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv179
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  store i8 %i.at, ptr %i.av, align 1, !tbaa !27
  %i.aw = getelementptr i8, ptr %i.h, i64 %indvars.iv
  %i.ax = getelementptr i8, ptr %i.aw, i64 -3
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !27
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv179
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 2
  store i8 %i.ay, ptr %i.ba, align 1, !tbaa !27
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, -4 ; 3 uses
  %i.bb = getelementptr inbounds i8, ptr %i.h, i64 %indvars.iv.next.3
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !27
  %indvars.iv.next180.3 = add nuw nsw i64 %indvars.iv179, 4 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv179
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 3
  store i8 %i.bc, ptr %i.be, align 1, !tbaa !27
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next180.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit141.loopexit, label %.lr.ph, !llvm.loop !89

.loopexit141.loopexit:                            ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.ad, %vec.epilog.middle.block ], [ %i.y, %middle.block ], [ %indvars.iv.next.lcssa306.unr, %.lr.ph.prol.loopexit ], [ %indvars.iv.next.3, %.lr.ph ]
  %i.bf = trunc nsw i64 %indvars.iv.next.lcssa to i32
  br label %.loopexit141

.loopexit141:                                     ; preds = %.loopexit141.loopexit, %.preheader140, %bb.b
  %.1106 = phi i32 [ 0, %bb.b ], [ 0, %.preheader140 ], [ %i.t, %.loopexit141.loopexit ] ; 2 uses
  %.1 = phi i32 [ 0, %bb.b ], [ %i.e, %.preheader140 ], [ %i.bf, %.loopexit141.loopexit ] ; 2 uses
  %i.bg = icmp slt i32 %.1106, %2
  br i1 %i.bg, label %.lr.ph170, label %._crit_edge

.lr.ph170:                                        ; preds = %.loopexit141
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 20 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.bl = zext i32 %2 to i64                      ; 3 uses
  %scevgep254.a = getelementptr i8, ptr %1, i64 1
  %scevgep258.a = getelementptr i8, ptr %i.c, i64 343
  %scevgep260.a = getelementptr i8, ptr %i.c, i64 344
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph170, %bb.y
  %.2169 = phi i32 [ %.1, %.lr.ph170 ], [ %.7, %bb.y ] ; 5 uses
  %.0100166 = phi i32 [ %i.n, %.lr.ph170 ], [ %.1101, %bb.y ] ; 9 uses
  %.2107165 = phi i32 [ %.1106, %.lr.ph170 ], [ %.5110, %bb.y ] ; 6 uses
  %i.bm = call fastcc i32 @DGifDecompressInput(ptr noundef %0, ptr noundef nonnull %i.a)
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %.loopexit138, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bo = load i32, ptr %i.a, align 4, !tbaa !10  ; 19 uses
  %i.bp = icmp eq i32 %i.bo, %i.j
  br i1 %i.bp, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 113, ptr %i.bq, align 8, !tbaa !26
  br label %.loopexit138

bb.f:                                             ; preds = %bb.d
  %i.br = icmp eq i32 %i.bo, %i.l
  br i1 %i.br, label %vector.body248, label %bb.g

vector.body248:                                   ; preds = %bb.f, %vector.body248
  %index249 = phi i64 [ %index.next250.3, %vector.body248 ], [ 0, %bb.f ] ; 5 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index249 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store <4 x i32> splat (i32 4098), ptr %i.bs, align 4, !tbaa !10
  store <4 x i32> splat (i32 4098), ptr %i.bt, align 4, !tbaa !10
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index249 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  store <4 x i32> splat (i32 4098), ptr %i.bv, align 4, !tbaa !10
  store <4 x i32> splat (i32 4098), ptr %i.bw, align 4, !tbaa !10
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index249 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 80
  store <4 x i32> splat (i32 4098), ptr %i.by, align 4, !tbaa !10
  store <4 x i32> splat (i32 4098), ptr %i.bz, align 4, !tbaa !10
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index249 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 96
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 112
  store <4 x i32> splat (i32 4098), ptr %i.cb, align 4, !tbaa !10
  store <4 x i32> splat (i32 4098), ptr %i.cc, align 4, !tbaa !10
  %index.next250.3 = add nuw nsw i64 %index249, 32 ; 2 uses
  %i.cd = icmp eq i64 %index.next250.3, 4096
  br i1 %i.cd, label %middle.block251, label %vector.body248, !llvm.loop !90

middle.block251:                                  ; preds = %vector.body248
  %i.ce = load i32, ptr %i.i, align 8, !tbaa !47
  %i.cf = add nsw i32 %i.ce, 1
  store i32 %i.cf, ptr %i.bh, align 4, !tbaa !48
  %i.cg = load i32, ptr %i.bi, align 8, !tbaa !45
  %i.ch = add nsw i32 %i.cg, 1                    ; 2 uses
  store i32 %i.ch, ptr %i.bj, align 8, !tbaa !49
  %i.ci = shl nuw i32 1, %i.ch
  store i32 %i.ci, ptr %i.bk, align 4, !tbaa !50
  store i32 4098, ptr %i.m, align 8, !tbaa !52
  br label %bb.y

bb.g:                                             ; preds = %bb.f
end_hunk_0
