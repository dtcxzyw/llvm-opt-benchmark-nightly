Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/dgif_lib?download=true
inline.NumInlined: 36
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@DGifGetImageDesc:bb.a
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.p = tail call noalias dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #14 ; 3 uses
  store ptr %i.p, ptr %i.h, align 8, !tbaa !60
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 109, ptr %i.r, align 8, !tbaa !29
  br label %bb.m

bb.i:                                             ; preds = %bb.f, %bb.g
  %i.s = phi ptr [ %i.n, %bb.f ], [ %i.p, %bb.g ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !61
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [56 x i8], ptr %i.s, i64 %i.v ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 32, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !45   ; 3 uses
  %.not34 = icmp eq ptr %i.z, null
  br i1 %.not34, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !36
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !37
  %i.ad = tail call ptr @GifMakeMapObject(i32 noundef %i.aa, ptr noundef %i.ac) #12 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !92
  %i.af = icmp eq ptr %i.ad, null
  br i1 %i.af, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 109, ptr %i.ag, align 8, !tbaa !29
  br label %bb.m

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store ptr null, ptr %i.ah, align 8, !tbaa !64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  store i32 0, ptr %i.ai, align 8, !tbaa !65
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  store ptr null, ptr %i.aj, align 8, !tbaa !66
  %i.ak = load i32, ptr %i.t, align 8, !tbaa !61
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.t, align 8, !tbaa !61
  br label %bb.m

bb.m:                                             ; preds = %.thread, %bb.c, %bb.l, %bb.k, %bb.h, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ 0, %bb.k ], [ 1, %bb.l ], [ 0, %.thread ], [ 0, %bb.h ], [ 0, %bb.c ]
  ret i32 %.1
}

declare ptr @openbsd_reallocarray(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @DGifGetLine(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 !guid !94 {
bb.a:
  %i.a = alloca i8, align 1                       ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21   ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !27
  %i.e = and i32 %i.d, 8
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 111, ptr %i.f, align 8, !tbaa !29
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %.not15 = icmp eq i32 %2, 0
  br i1 %.not15, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load i32, ptr %i.g, align 8, !tbaa !46
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ %2, %bb.c ], [ %i.h, %bb.d ]    ; 2 uses
  %i.i = sext i32 %.0 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !47
  %i.l = sub i64 %i.k, %i.i                       ; 2 uses
  store i64 %i.l, ptr %i.j, align 8, !tbaa !47
  %i.m = icmp ugt i64 %i.l, 4294901760
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 108, ptr %i.n, align 8, !tbaa !29
  br label %bb.p

bb.g:                                             ; preds = %bb.e
  %i.o = tail call fastcc i32 @DGifDecompressLine(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %.0)
  %.not16 = icmp eq i32 %i.o, 0
  br i1 %.not16, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = load i64, ptr %i.j, align 8, !tbaa !47
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %.preheader, label %bb.p

.preheader:                                       ; preds = %bb.h, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !21   ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !32   ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.preheader
  %i.u = call i32 %i.t(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 1) #12, !inline_history !2
  br label %InternalRead.exit.i

bb.j:                                             ; preds = %.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !26
  %i.x = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 1, ptr noundef %i.w)
  %i.y = trunc i64 %i.x to i32
  br label %InternalRead.exit.i

InternalRead.exit.i:                              ; preds = %bb.j, %bb.i
  %i.z = phi i32 [ %i.u, %bb.i ], [ %i.y, %bb.j ]
  %.not.i = icmp eq i32 %i.z, 1
  br i1 %.not.i, label %bb.k, label %DGifGetCodeNext.exit.thread

bb.k:                                             ; preds = %InternalRead.exit.i
  %i.aa = load i8, ptr %i.a, align 1, !tbaa !30   ; 4 uses
  %.not12.i = icmp eq i8 %i.aa, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 88 ; 2 uses
  br i1 %.not12.i, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i8 %i.aa, ptr %i.ab, align 8, !tbaa !30
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 89 ; 2 uses
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !21  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !32 ; 2 uses
  %.not.i14.i = icmp eq ptr %i.af, null
  br i1 %.not.i14.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = zext i8 %i.aa to i32
  %i.ah = call i32 %i.af(ptr noundef nonnull %0, ptr noundef nonnull %i.ac, i32 noundef range(i32 0, 256) %i.ag) #12, !inline_history !2
  br label %InternalRead.exit15.i

bb.n:                                             ; preds = %bb.l
  %i.ai = zext i8 %i.aa to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !26
  %i.al = call i64 @fread(ptr noundef nonnull %i.ac, i64 noundef 1, i64 noundef %i.ai, ptr noundef %i.ak)
  %i.am = trunc i64 %i.al to i32
  br label %InternalRead.exit15.i

InternalRead.exit15.i:                            ; preds = %bb.n, %bb.m
  %i.an = phi i32 [ %i.ah, %bb.m ], [ %i.am, %bb.n ]
  %i.ao = load i8, ptr %i.a, align 1, !tbaa !30
  %i.ap = zext i8 %i.ao to i32
  %.not13.i = icmp eq i32 %i.an, %i.ap
  br i1 %.not13.i, label %bb.o, label %DGifGetCodeNext.exit.thread

.thread:                                          ; preds = %bb.k
  store i8 0, ptr %i.ab, align 8, !tbaa !30
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  store i64 0, ptr %i.aq, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.p

DGifGetCodeNext.exit.thread:                      ; preds = %InternalRead.exit15.i, %InternalRead.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 102, ptr %i.ar, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.p

bb.o:                                             ; preds = %InternalRead.exit15.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.preheader, !llvm.loop !93

bb.p:                                             ; preds = %.thread, %DGifGetCodeNext.exit.thread, %bb.g, %bb.h, %bb.f, %bb.b
  %.013 = phi i32 [ 0, %bb.f ], [ 0, %bb.b ], [ 0, %DGifGetCodeNext.exit.thread ], [ 1, %bb.h ], [ 1, %.thread ], [ 0, %bb.g ]
  ret i32 %.013
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @DGifDecompressLine(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) unnamed_addr #0 !guid !112 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21   ; 15 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !54   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8536 ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 4439 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 344 ; 13 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !50
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !49   ; 11 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !55   ; 2 uses
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
  %i.u = getelementptr i8, ptr %1, i64 %wide.trip.count
  %i.v = add nsw i64 %i.q, 344                    ; 2 uses
  %i.w = sub nsw i64 %i.v, %wide.trip.count
  %i.x = getelementptr i8, ptr %i.c, i64 %i.w
  %i.y = getelementptr i8, ptr %i.c, i64 %i.v
  %bound0 = icmp ult ptr %1, %i.y
  %bound1 = icmp ult ptr %i.x, %i.u
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check238 = icmp ult i32 %umin, 15
  br i1 %min.iters.check238, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.z = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 5 uses
  %i.aa = sub nsw i64 %i.q, %n.vec                ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.h, i64 %i.q
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ab = xor i64 %index, -1
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.ab
  %i.ac = getelementptr inbounds i8, ptr %gep, i64 -15
  %wide.load = load <16 x i8>, ptr %i.ac, align 1, !tbaa !30, !alias.scope !113
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %index
  store <16 x i8> %reverse, ptr %i.ad, align 1, !tbaa !30, !alias.scope !114, !noalias !113
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !98

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit141.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.z, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !115

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec239 = and i64 %wide.trip.count, 2147483644 ; 4 uses
  %i.af = sub nsw i64 %i.q, %n.vec239             ; 2 uses
  %invariant.gep313 = getelementptr i8, ptr %i.h, i64 %i.q
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index240 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next243, %vec.epilog.vector.body ] ; 3 uses
  %i.ag = xor i64 %index240, -1
  %gep314 = getelementptr i8, ptr %invariant.gep313, i64 %i.ag
  %i.ah = getelementptr inbounds i8, ptr %gep314, i64 -3
  %wide.load241 = load <4 x i8>, ptr %i.ah, align 1, !tbaa !30, !alias.scope !113
  %reverse242 = shufflevector <4 x i8> %wide.load241, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %index240
  store <4 x i8> %reverse242, ptr %i.ai, align 1, !tbaa !30, !alias.scope !114, !noalias !113
  %index.next243 = add nuw i64 %index240, 4       ; 2 uses
  %i.aj = icmp eq i64 %index.next243, %n.vec239
  br i1 %i.aj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !99

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n244 = icmp eq i64 %n.vec239, %wide.trip.count
  br i1 %cmp.n244, label %.loopexit141.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv179.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec239, %vec.epilog.middle.block ] ; 3 uses
  %indvars.iv.ph = phi i64 [ %i.q, %iter.check ], [ %i.q, %vector.memcheck ], [ %i.aa, %vec.epilog.iter.check ], [ %i.af, %vec.epilog.middle.block ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv179.prol = phi i64 [ %indvars.iv.next180.prol, %.lr.ph.prol ], [ %indvars.iv179.ph, %.lr.ph.preheader ] ; 2 uses
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, -1 ; 4 uses
  %i.ak = getelementptr inbounds i8, ptr %i.h, i64 %indvars.iv.next.prol
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !30
  %indvars.iv.next180.prol = add nuw nsw i64 %indvars.iv179.prol, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv179.prol
  store i8 %i.al, ptr %i.am, align 1, !tbaa !30
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !100

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.next.lcssa307.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %indvars.iv179.unr = phi i64 [ %indvars.iv179.ph, %.lr.ph.preheader ], [ %indvars.iv.next180.prol, %.lr.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.an = sub nsw i64 %indvars.iv179.ph, %wide.trip.count
  %i.ao = icmp ugt i64 %i.an, -4
  br i1 %i.ao, label %.loopexit141.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv179 = phi i64 [ %indvars.iv.next180.3, %.lr.ph ], [ %indvars.iv179.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.ap = getelementptr i8, ptr %i.h, i64 %indvars.iv
  %i.aq = getelementptr i8, ptr %i.ap, i64 -1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !30
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv179
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !30
  %i.at = getelementptr i8, ptr %i.h, i64 %indvars.iv
  %i.au = getelementptr i8, ptr %i.at, i64 -2
  %i.av = load i8, ptr %i.au, align 1, !tbaa !30
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv179
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  store i8 %i.av, ptr %i.ax, align 1, !tbaa !30
  %i.ay = getelementptr i8, ptr %i.h, i64 %indvars.iv
  %i.az = getelementptr i8, ptr %i.ay, i64 -3
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !30
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv179
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  store i8 %i.ba, ptr %i.bc, align 1, !tbaa !30
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, -4 ; 3 uses
  %i.bd = getelementptr inbounds i8, ptr %i.h, i64 %indvars.iv.next.3
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !30
  %indvars.iv.next180.3 = add nuw nsw i64 %indvars.iv179, 4 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv179
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 3
  store i8 %i.be, ptr %i.bg, align 1, !tbaa !30
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next180.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit141.loopexit, label %.lr.ph, !llvm.loop !101

.loopexit141.loopexit:                            ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.af, %vec.epilog.middle.block ], [ %i.aa, %middle.block ], [ %indvars.iv.next.lcssa307.unr, %.lr.ph.prol.loopexit ], [ %indvars.iv.next.3, %.lr.ph ]
  %i.bh = trunc nsw i64 %indvars.iv.next.lcssa to i32
  br label %.loopexit141

.loopexit141:                                     ; preds = %.loopexit141.loopexit, %.preheader140, %bb.b
  %.1106 = phi i32 [ 0, %bb.b ], [ 0, %.preheader140 ], [ %i.t, %.loopexit141.loopexit ] ; 2 uses
  %.1 = phi i32 [ 0, %bb.b ], [ %i.e, %.preheader140 ], [ %i.bh, %.loopexit141.loopexit ] ; 2 uses
  %i.bi = icmp slt i32 %.1106, %2
  br i1 %i.bi, label %.lr.ph170, label %._crit_edge

.lr.ph170:                                        ; preds = %.loopexit141
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 20 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.bn = zext i32 %2 to i64                      ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph170, %bb.y
  %.2169 = phi i32 [ %.1, %.lr.ph170 ], [ %.7, %bb.y ] ; 5 uses
  %.0100166 = phi i32 [ %i.n, %.lr.ph170 ], [ %.1101, %bb.y ] ; 9 uses
  %.2107165 = phi i32 [ %.1106, %.lr.ph170 ], [ %.5110, %bb.y ] ; 6 uses
  %i.bo = call fastcc i32 @DGifDecompressInput(ptr noundef %0, ptr noundef nonnull %i.a)
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %.loopexit138, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bq = load i32, ptr %i.a, align 4, !tbaa !10  ; 19 uses
  %i.br = icmp eq i32 %i.bq, %i.j
  br i1 %i.br, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 113, ptr %i.bs, align 8, !tbaa !29
  br label %.loopexit138

bb.f:                                             ; preds = %bb.d
  %i.bt = icmp eq i32 %i.bq, %i.l
  br i1 %i.bt, label %vector.body247, label %bb.g

vector.body247:                                   ; preds = %bb.f, %vector.body247
  %index248 = phi i64 [ %index.next249.3, %vector.body247 ], [ 0, %bb.f ] ; 5 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index248 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store <4 x i32> splat (i32 4098), ptr %i.bu, align 4, !tbaa !10
  store <4 x i32> splat (i32 4098), ptr %i.bv, align 4, !tbaa !10
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index248 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  store <4 x i32> splat (i32 4098), ptr %i.bx, align 4, !tbaa !10
  store <4 x i32> splat (i32 4098), ptr %i.by, align 4, !tbaa !10
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index248 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 80
  store <4 x i32> splat (i32 4098), ptr %i.ca, align 4, !tbaa !10
  store <4 x i32> splat (i32 4098), ptr %i.cb, align 4, !tbaa !10
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index248 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 96
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 112
  store <4 x i32> splat (i32 4098), ptr %i.cd, align 4, !tbaa !10
  store <4 x i32> splat (i32 4098), ptr %i.ce, align 4, !tbaa !10
  %index.next249.3 = add nuw nsw i64 %index248, 32 ; 2 uses
  %i.cf = icmp eq i64 %index.next249.3, 4096
  br i1 %i.cf, label %middle.block250, label %vector.body247, !llvm.loop !102

middle.block250:                                  ; preds = %vector.body247
  %i.cg = load i32, ptr %i.i, align 8, !tbaa !50
  %i.ch = add nsw i32 %i.cg, 1
  store i32 %i.ch, ptr %i.bj, align 4, !tbaa !51
  %i.ci = load i32, ptr %i.bk, align 8, !tbaa !48
  %i.cj = add nsw i32 %i.ci, 1                    ; 2 uses
  store i32 %i.cj, ptr %i.bl, align 8, !tbaa !52
  %i.ck = shl nuw i32 1, %i.cj
  store i32 %i.ck, ptr %i.bm, align 4, !tbaa !53
  store i32 4098, ptr %i.m, align 8, !tbaa !55
  br label %bb.y

bb.g:                                             ; preds = %bb.f
  %i.cl = icmp slt i32 %i.bq, %i.l
  br i1 %i.cl, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cm = trunc i32 %i.bq to i8
  %i.cn = add nsw i32 %.2107165, 1
  %i.co = sext i32 %.2107165 to i64
  %i.cp = getelementptr inbounds i8, ptr %1, i64 %i.co
  store i8 %i.cm, ptr %i.cp, align 1, !tbaa !30
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.cq = sext i32 %i.bq to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !10
  %i.ct = icmp eq i32 %i.cs, 4098
  br i1 %i.ct, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.cu = load i32, ptr %i.bj, align 4, !tbaa !51
  %i.cv = add nsw i32 %i.cu, -2
  %i.cw = icmp eq i32 %i.bq, %i.cv
  br i1 %i.cw, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.cx = icmp sgt i32 %.0100166, %i.l
  br i1 %i.cx, label %.lr.ph.i.preheader, label %.sink.split

.lr.ph.i.preheader:                               ; preds = %bb.k, %bb.l
  %i.cy = phi i32 [ %i.de, %bb.l ], [ 1, %bb.k ]  ; 2 uses
  %.089.i233 = phi i32 [ %i.dc, %bb.l ], [ %.0100166, %bb.k ] ; 2 uses
  %i.cz = icmp sgt i32 %.089.i233, 4095
  br i1 %i.cz, label %.sink.split, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.preheader
  %i.da = sext i32 %.089.i233 to i64
  %i.db = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !10 ; 3 uses
  %i.dd = icmp sle i32 %i.dc, %i.l
  %i.de = add nuw nsw i32 %i.cy, 1
  %exitcond.not.i = icmp eq i32 %i.cy, 4096
  %or.cond = select i1 %i.dd, i1 true, i1 %exitcond.not.i
  br i1 %or.cond, label %.sink.split, label %.lr.ph.i.preheader, !llvm.loop !103

bb.m:                                             ; preds = %bb.j
  %i.df = icmp sgt i32 %i.bq, %i.l
  br i1 %i.df, label %.lr.ph.i120.preheader, label %.sink.split

.lr.ph.i120.preheader:                            ; preds = %bb.m, %bb.n
  %i.dg = phi i32 [ %i.dm, %bb.n ], [ 1, %bb.m ]  ; 2 uses
  %.089.i122232 = phi i32 [ %i.dk, %bb.n ], [ %i.bq, %bb.m ] ; 2 uses
  %i.dh = icmp sgt i32 %.089.i122232, 4095
  br i1 %i.dh, label %.sink.split, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i120.preheader
  %i.di = sext i32 %.089.i122232 to i64
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !10 ; 3 uses
  %i.dl = icmp sle i32 %i.dk, %i.l
  %i.dm = add nuw nsw i32 %i.dg, 1
  %exitcond.not.i123 = icmp eq i32 %i.dg, 4096
  %or.cond296 = select i1 %i.dl, i1 true, i1 %exitcond.not.i123
  br i1 %or.cond296, label %.sink.split, label %.lr.ph.i120.preheader, !llvm.loop !103

.sink.split:                                      ; preds = %bb.n, %.lr.ph.i120.preheader, %bb.l, %.lr.ph.i.preheader, %bb.m, %bb.k
  %.07.i.sink = phi i32 [ 4098, %.lr.ph.i.preheader ], [ %.0100166, %bb.k ], [ %i.bq, %bb.m ], [ %i.dc, %bb.l ], [ 4098, %.lr.ph.i120.preheader ], [ %i.dk, %bb.n ]
  %i.dn = trunc i32 %.07.i.sink to i8             ; 2 uses
  %i.do = add nsw i32 %.2169, 1
  %i.dp = sext i32 %.2169 to i64
  %i.dq = getelementptr inbounds i8, ptr %i.h, i64 %i.dp
  store i8 %i.dn, ptr %i.dq, align 1, !tbaa !30
  %i.dr = load i32, ptr %i.bj, align 4, !tbaa !51
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr i8, ptr %i.g, i64 %i.ds
  %i.du = getelementptr i8, ptr %i.dt, i64 -2
  store i8 %i.dn, ptr %i.du, align 1, !tbaa !30
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.i
  %.0102 = phi i32 [ %i.bq, %bb.i ], [ %.0100166, %.sink.split ]
  %.3 = phi i32 [ %.2169, %bb.i ], [ %i.do, %.sink.split ] ; 3 uses
  %i.dv = icmp slt i32 %.3, 4095
  br i1 %i.dv, label %.lr.ph157.preheader, label %.critedge.thread

.lr.ph157.preheader:                              ; preds = %bb.o
  %i.dw = sext i32 %.3 to i64
  br label %.lr.ph157

.lr.ph157:                                        ; preds = %.lr.ph157.preheader, %bb.p
  %indvars.iv188.in = phi i32 [ %.3, %.lr.ph157.preheader ], [ %indvars.iv188, %bb.p ]
  %indvars.iv184 = phi i64 [ %i.dw, %.lr.ph157.preheader ], [ %indvars.iv.next185, %bb.p ] ; 4 uses
  %.1103155 = phi i32 [ %.0102, %.lr.ph157.preheader ], [ %i.ee, %bb.p ] ; 5 uses
  %indvars.iv188 = add i32 %indvars.iv188.in, 1   ; 2 uses
  %i.dx = icmp sgt i32 %.1103155, %i.l
  %i.dy = icmp slt i32 %.1103155, 4096
  %or.cond3 = and i1 %i.dx, %i.dy
  br i1 %or.cond3, label %bb.p, label %.critedge

bb.p:                                             ; preds = %.lr.ph157
  %i.dz = sext i32 %.1103155 to i64               ; 2 uses
  %i.ea = getelementptr inbounds i8, ptr %i.g, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !30
  %indvars.iv.next185 = add nsw i64 %indvars.iv184, 1 ; 2 uses
  %i.ec = getelementptr inbounds i8, ptr %i.h, i64 %indvars.iv184
  store i8 %i.eb, ptr %i.ec, align 1, !tbaa !30
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.dz
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !10
  %i.ef = and i64 %indvars.iv.next185, 4294967295
  %exitcond187.not = icmp eq i64 %i.ef, 4095
  br i1 %exitcond187.not, label %.critedge.thread, label %.lr.ph157, !llvm.loop !104

.critedge:                                        ; preds = %.lr.ph157
  %i.eg = icmp sgt i32 %.1103155, 4095
  br i1 %i.eg, label %.critedge.thread, label %bb.q

.critedge.thread:                                 ; preds = %.critedge, %bb.o, %bb.p
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 112, ptr %i.eh, align 8, !tbaa !29
  br label %.loopexit138

bb.q:                                             ; preds = %.critedge
  %i.ei = trunc nsw i64 %indvars.iv184 to i32
  %i.ej = trunc i32 %.1103155 to i8
  %i.ek = add nsw i32 %i.ei, 1                    ; 2 uses
  %i.el = getelementptr inbounds i8, ptr %i.h, i64 %indvars.iv184
  store i8 %i.ej, ptr %i.el, align 1, !tbaa !30
  %i.em = icmp ne i32 %i.ek, 0
  %i.en = icmp slt i32 %.2107165, %2
  %i.eo = and i1 %i.em, %i.en
  br i1 %i.eo, label %iter.check280, label %.loopexit

iter.check280:                                    ; preds = %bb.q
  %i.ep = sext i32 %indvars.iv188 to i64          ; 10 uses
  %i.eq = sext i32 %.2107165 to i64               ; 10 uses
  %i.er = xor i64 %i.eq, -1
  %i.es = add nsw i64 %i.er, %i.bn
  %i.et = add nsw i64 %i.ep, -1
  %umin263 = tail call i64 @llvm.umin.i64(i64 %i.es, i64 %i.et)
  %i.eu = add nsw i64 %umin263, 1                 ; 7 uses
  %min.iters.check264 = icmp ult i64 %i.eu, 4
  br i1 %min.iters.check264, label %.lr.ph161.preheader, label %vector.memcheck265

vector.memcheck265:                               ; preds = %iter.check280
  %i.ev = getelementptr i8, ptr %1, i64 %i.eq
  %i.ew = xor i64 %i.eq, -1
  %i.ex = add nsw i64 %i.ew, %i.bn
  %i.ey = add nsw i64 %i.ep, -1
  %i.ez = tail call i64 @llvm.umin.i64(i64 %i.ex, i64 %i.ey) ; 2 uses
  %3 = getelementptr i8, ptr %1, i64 %i.ez
  %i.fa = getelementptr i8, ptr %3, i64 %i.eq
  %i.fb = getelementptr i8, ptr %i.fa, i64 1
  %4 = add nsw i64 %i.ep, 343
  %i.fc = sub i64 %4, %i.ez
  %5 = getelementptr i8, ptr %i.c, i64 %i.fc
  %i.fd = getelementptr i8, ptr %i.c, i64 %i.ep
  %i.fe = getelementptr i8, ptr %i.fd, i64 344
  %bound0266 = icmp ult ptr %i.ev, %i.fe
  %bound1267 = icmp ult ptr %5, %i.fb
  %found.conflict268 = and i1 %bound0266, %bound1267
  br i1 %found.conflict268, label %.lr.ph161.preheader, label %vector.main.loop.iter.check269

vector.main.loop.iter.check269:                   ; preds = %vector.memcheck265
  %min.iters.check270 = icmp ult i64 %i.eu, 16
  br i1 %min.iters.check270, label %vec.epilog.ph284, label %vector.ph271

vector.ph271:                                     ; preds = %vector.main.loop.iter.check269
  %i.ff = and i64 %i.eu, 12
  %n.vec272 = and i64 %i.eu, -16                  ; 5 uses
  %i.fg = add i64 %n.vec272, %i.eq                ; 2 uses
  %i.fh = sub i64 %i.ep, %n.vec272                ; 2 uses
  %invariant.gep315 = getelementptr i8, ptr %i.h, i64 %i.ep
  %invariant.gep317 = getelementptr i8, ptr %1, i64 %i.eq
  br label %vector.body273

vector.body273:                                   ; preds = %vector.ph271, %vector.body273
  %index274 = phi i64 [ 0, %vector.ph271 ], [ %index.next277, %vector.body273 ] ; 3 uses
  %i.fi = xor i64 %index274, -1
  %gep316 = getelementptr i8, ptr %invariant.gep315, i64 %i.fi
  %i.fj = getelementptr inbounds i8, ptr %gep316, i64 -15
  %wide.load275 = load <16 x i8>, ptr %i.fj, align 1, !tbaa !30, !alias.scope !117
  %reverse276 = shufflevector <16 x i8> %wide.load275, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %gep318 = getelementptr i8, ptr %invariant.gep317, i64 %index274
  store <16 x i8> %reverse276, ptr %gep318, align 1, !tbaa !30, !alias.scope !118, !noalias !117
  %index.next277 = add nuw i64 %index274, 16      ; 2 uses
  %i.fk = icmp eq i64 %index.next277, %n.vec272
  br i1 %i.fk, label %middle.block278, label %vector.body273, !llvm.loop !108

middle.block278:                                  ; preds = %vector.body273
  %cmp.n279 = icmp eq i64 %i.eu, %n.vec272
  br i1 %cmp.n279, label %.loopexit.loopexit, label %vec.epilog.iter.check281

vec.epilog.iter.check281:                         ; preds = %middle.block278
  %min.epilog.iters.check283 = icmp eq i64 %i.ff, 0
  br i1 %min.epilog.iters.check283, label %.lr.ph161.preheader, label %vec.epilog.ph284, !prof !115

vec.epilog.ph284:                                 ; preds = %vector.main.loop.iter.check269, %vec.epilog.iter.check281
  %vec.epilog.resume.val285 = phi i64 [ %n.vec272, %vec.epilog.iter.check281 ], [ 0, %vector.main.loop.iter.check269 ]
  %n.vec286 = and i64 %i.eu, -4                   ; 4 uses
  %i.fl = add i64 %n.vec286, %i.eq                ; 2 uses
  %i.fm = sub i64 %i.ep, %n.vec286                ; 2 uses
  %invariant.gep319 = getelementptr i8, ptr %i.h, i64 %i.ep
  %invariant.gep321 = getelementptr i8, ptr %1, i64 %i.eq
  br label %vec.epilog.vector.body287

vec.epilog.vector.body287:                        ; preds = %vec.epilog.vector.body287, %vec.epilog.ph284
  %index288 = phi i64 [ %vec.epilog.resume.val285, %vec.epilog.ph284 ], [ %index.next291, %vec.epilog.vector.body287 ] ; 3 uses
  %i.fn = xor i64 %index288, -1
  %gep320 = getelementptr i8, ptr %invariant.gep319, i64 %i.fn
  %i.fo = getelementptr inbounds i8, ptr %gep320, i64 -3
  %wide.load289 = load <4 x i8>, ptr %i.fo, align 1, !tbaa !30, !alias.scope !117
  %reverse290 = shufflevector <4 x i8> %wide.load289, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %gep322 = getelementptr i8, ptr %invariant.gep321, i64 %index288
  store <4 x i8> %reverse290, ptr %gep322, align 1, !tbaa !30, !alias.scope !118, !noalias !117
  %index.next291 = add nuw i64 %index288, 4       ; 2 uses
  %i.fp = icmp eq i64 %index.next291, %n.vec286
  br i1 %i.fp, label %vec.epilog.middle.block292, label %vec.epilog.vector.body287, !llvm.loop !109

vec.epilog.middle.block292:                       ; preds = %vec.epilog.vector.body287
  %cmp.n293 = icmp eq i64 %i.eu, %n.vec286
  br i1 %cmp.n293, label %.loopexit.loopexit, label %.lr.ph161.preheader

.lr.ph161.preheader:                              ; preds = %iter.check280, %vector.memcheck265, %vec.epilog.iter.check281, %vec.epilog.middle.block292
  %indvars.iv193.ph = phi i64 [ %i.eq, %iter.check280 ], [ %i.eq, %vector.memcheck265 ], [ %i.fg, %vec.epilog.iter.check281 ], [ %i.fl, %vec.epilog.middle.block292 ]
  %indvars.iv191.ph = phi i64 [ %i.ep, %iter.check280 ], [ %i.ep, %vector.memcheck265 ], [ %i.fh, %vec.epilog.iter.check281 ], [ %i.fm, %vec.epilog.middle.block292 ]
  br label %.lr.ph161

.lr.ph161:                                        ; preds = %.lr.ph161.preheader, %.lr.ph161
  %indvars.iv193 = phi i64 [ %indvars.iv.next194, %.lr.ph161 ], [ %indvars.iv193.ph, %.lr.ph161.preheader ] ; 2 uses
  %indvars.iv191 = phi i64 [ %indvars.iv.next192, %.lr.ph161 ], [ %indvars.iv191.ph, %.lr.ph161.preheader ]
  %indvars.iv.next192 = add nsw i64 %indvars.iv191, -1 ; 4 uses
  %i.fq = getelementptr inbounds i8, ptr %i.h, i64 %indvars.iv.next192
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !30
  %indvars.iv.next194 = add nsw i64 %indvars.iv193, 1 ; 3 uses
  %i.fs = getelementptr inbounds i8, ptr %1, i64 %indvars.iv193
  store i8 %i.fr, ptr %i.fs, align 1, !tbaa !30
  %i.ft = icmp ne i64 %indvars.iv.next192, 0
  %i.fu = icmp slt i64 %indvars.iv.next194, %i.bn
  %i.fv = select i1 %i.ft, i1 %i.fu, i1 false
  br i1 %i.fv, label %.lr.ph161, label %.loopexit.loopexit, !llvm.loop !110

.loopexit.loopexit:                               ; preds = %.lr.ph161, %vec.epilog.middle.block292, %middle.block278
  %indvars.iv.next192.lcssa = phi i64 [ %i.fm, %vec.epilog.middle.block292 ], [ %i.fh, %middle.block278 ], [ %indvars.iv.next192, %.lr.ph161 ]
  %indvars.iv.next194.lcssa = phi i64 [ %i.fl, %vec.epilog.middle.block292 ], [ %i.fg, %middle.block278 ], [ %indvars.iv.next194, %.lr.ph161 ]
  %i.fw = trunc nsw i64 %indvars.iv.next192.lcssa to i32
  %i.fx = trunc nsw i64 %indvars.iv.next194.lcssa to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.q, %bb.h
  %.4109 = phi i32 [ %i.cn, %bb.h ], [ %.2107165, %bb.q ], [ %i.fx, %.loopexit.loopexit ] ; 5 uses
  %.6 = phi i32 [ %.2169, %bb.h ], [ %i.ek, %bb.q ], [ %i.fw, %.loopexit.loopexit ] ; 5 uses
  %.not118 = icmp eq i32 %.0100166, 4098
  br i1 %.not118, label %bb.y, label %bb.r

bb.r:                                             ; preds = %.loopexit
  %i.fy = load i32, ptr %i.bj, align 4, !tbaa !51 ; 2 uses
  %i.fz = icmp slt i32 %i.fy, 4098
  br i1 %i.fz, label %bb.s, label %bb.y

bb.s:                                             ; preds = %bb.r
  %i.ga = sext i32 %i.fy to i64
  %i.gb = getelementptr [4 x i8], ptr %i.f, i64 %i.ga
  %i.gc = getelementptr i8, ptr %i.gb, i64 -8     ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !10
  %i.ge = icmp eq i32 %i.gd, 4098
  br i1 %i.ge, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  store i32 %.0100166, ptr %i.gc, align 4, !tbaa !10
  %i.gf = load i32, ptr %i.bj, align 4, !tbaa !51 ; 3 uses
  %i.gg = add nsw i32 %i.gf, -2
  %i.gh = icmp eq i32 %i.bq, %i.gg
  br i1 %i.gh, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.gi = icmp sgt i32 %.0100166, %i.l
  br i1 %i.gi, label %.lr.ph.i126.preheader, label %DGifGetPrefixChar.exit130

.lr.ph.i126.preheader:                            ; preds = %bb.u, %bb.v
  %i.gj = phi i32 [ %i.gp, %bb.v ], [ 1, %bb.u ]  ; 2 uses
  %.089.i128235 = phi i32 [ %i.gn, %bb.v ], [ %.0100166, %bb.u ] ; 2 uses
  %i.gk = icmp sgt i32 %.089.i128235, 4095
  br i1 %i.gk, label %DGifGetPrefixChar.exit130, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i126.preheader
  %i.gl = sext i32 %.089.i128235 to i64
  %i.gm = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.gl
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !10 ; 3 uses
  %i.go = icmp sle i32 %i.gn, %i.l
  %i.gp = add nuw nsw i32 %i.gj, 1
  %exitcond.not.i129 = icmp eq i32 %i.gj, 4096
  %or.cond297 = select i1 %i.go, i1 true, i1 %exitcond.not.i129
  br i1 %or.cond297, label %DGifGetPrefixChar.exit130, label %.lr.ph.i126.preheader, !llvm.loop !103

DGifGetPrefixChar.exit130:                        ; preds = %.lr.ph.i126.preheader, %bb.v, %bb.u
  %.07.i125 = phi i32 [ %.0100166, %bb.u ], [ 4098, %.lr.ph.i126.preheader ], [ %i.gn, %bb.v ]
  %i.gq = trunc i32 %.07.i125 to i8
  %i.gr = sext i32 %i.gf to i64
  %i.gs = getelementptr i8, ptr %i.g, i64 %i.gr
  %i.gt = getelementptr i8, ptr %i.gs, i64 -2
  store i8 %i.gq, ptr %i.gt, align 1, !tbaa !30
  br label %bb.y

bb.w:                                             ; preds = %bb.t
  %i.gu = icmp sgt i32 %i.bq, %i.l
  br i1 %i.gu, label %.lr.ph.i132.preheader, label %DGifGetPrefixChar.exit136

.lr.ph.i132.preheader:                            ; preds = %bb.w, %bb.x
  %i.gv = phi i32 [ %i.hb, %bb.x ], [ 1, %bb.w ]  ; 2 uses
  %.089.i134234 = phi i32 [ %i.gz, %bb.x ], [ %i.bq, %bb.w ] ; 2 uses
  %i.gw = icmp sgt i32 %.089.i134234, 4095
  br i1 %i.gw, label %DGifGetPrefixChar.exit136, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i132.preheader
  %i.gx = sext i32 %.089.i134234 to i64
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.gx
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !10 ; 3 uses
  %i.ha = icmp sle i32 %i.gz, %i.l
  %i.hb = add nuw nsw i32 %i.gv, 1
  %exitcond.not.i135 = icmp eq i32 %i.gv, 4096
  %or.cond298 = select i1 %i.ha, i1 true, i1 %exitcond.not.i135
  br i1 %or.cond298, label %DGifGetPrefixChar.exit136, label %.lr.ph.i132.preheader, !llvm.loop !103

DGifGetPrefixChar.exit136:                        ; preds = %.lr.ph.i132.preheader, %bb.x, %bb.w
  %.07.i131 = phi i32 [ %i.bq, %bb.w ], [ 4098, %.lr.ph.i132.preheader ], [ %i.gz, %bb.x ]
  %i.hc = trunc i32 %.07.i131 to i8
  %i.hd = sext i32 %i.gf to i64
  %i.he = getelementptr i8, ptr %i.g, i64 %i.hd
  %i.hf = getelementptr i8, ptr %i.he, i64 -2
  store i8 %i.hc, ptr %i.hf, align 1, !tbaa !30
  br label %bb.y

bb.y:                                             ; preds = %.loopexit, %bb.r, %bb.s, %DGifGetPrefixChar.exit136, %DGifGetPrefixChar.exit130, %middle.block250
  %.5110 = phi i32 [ %.2107165, %middle.block250 ], [ %.4109, %DGifGetPrefixChar.exit130 ], [ %.4109, %DGifGetPrefixChar.exit136 ], [ %.4109, %bb.s ], [ %.4109, %bb.r ], [ %.4109, %.loopexit ] ; 2 uses
  %.1101 = phi i32 [ 4098, %middle.block250 ], [ %i.bq, %DGifGetPrefixChar.exit130 ], [ %i.bq, %DGifGetPrefixChar.exit136 ], [ %i.bq, %bb.s ], [ %i.bq, %bb.r ], [ %i.bq, %.loopexit ] ; 2 uses
  %.7 = phi i32 [ %.2169, %middle.block250 ], [ %.6, %DGifGetPrefixChar.exit130 ], [ %.6, %DGifGetPrefixChar.exit136 ], [ %.6, %bb.s ], [ %.6, %bb.r ], [ %.6, %.loopexit ] ; 2 uses
  %i.hg = icmp slt i32 %.5110, %2
  br i1 %i.hg, label %bb.c, label %._crit_edge, !llvm.loop !111

._crit_edge:                                      ; preds = %bb.y, %.loopexit141
  %.0100.lcssa = phi i32 [ %i.n, %.loopexit141 ], [ %.1101, %bb.y ]
  %.2.lcssa = phi i32 [ %.1, %.loopexit141 ], [ %.7, %bb.y ]
  store i32 %.0100.lcssa, ptr %i.m, align 8, !tbaa !55
  store i32 %.2.lcssa, ptr %i.d, align 8, !tbaa !54
  br label %.loopexit138

.loopexit138:                                     ; preds = %bb.c, %bb.a, %._crit_edge, %.critedge.thread, %bb.e
  %.0111 = phi i32 [ 1, %._crit_edge ], [ 0, %bb.a ], [ 0, %bb.e ], [ 0, %.critedge.thread ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.0111
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @DGifGetCodeNext(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 !guid !119 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21   ; 5 uses
end_hunk_0
