Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/cff?download=true
inline.NumInlined: 81
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@cff_vstore_load:bb.a
  %.not124 = icmp eq i32 %i.cr, 0
  br i1 %.not124, label %bb.u, label %.thread144

._crit_edge164:                                   ; preds = %bb.u, %bb.t
  %indvars.iv.next189 = add nuw nsw i64 %indvars.iv188, 1 ; 2 uses
  %exitcond192.not = icmp eq i64 %indvars.iv.next189, %wide.trip.count191
  br i1 %exitcond192.not, label %.thread144.sink.split, label %.lr.ph166, !llvm.loop !611

.thread144.sink.split:                            ; preds = %._crit_edge164, %bb.a, %.preheader, %bb.e
  %.sink = phi i32 [ 3, %bb.e ], [ 0, %bb.a ], [ 0, %.preheader ], [ 0, %._crit_edge164 ]
  %.2103.ph = phi ptr [ null, %bb.e ], [ null, %bb.a ], [ %i.p, %.preheader ], [ %i.p, %._crit_edge164 ]
  store i32 %.sink, ptr %i.a, align 4, !tbaa !67
  br label %.thread144

.thread144:                                       ; preds = %.lr.ph, %.lr.ph159, %.lr.ph156, %bb.n, %bb.o, %bb.s, %bb.r, %bb.q, %.lr.ph166, %.lr.ph163, %.thread144.sink.split, %bb.j, %bb.k, %bb.g, %bb.c, %bb.l, %._crit_edge, %bb.h, %bb.f, %bb.d, %bb.b, %._crit_edge160
  %.2103 = phi ptr [ %i.p, %.lr.ph159 ], [ %i.p, %bb.j ], [ %i.p, %bb.k ], [ null, %bb.g ], [ null, %bb.c ], [ %.2103.ph, %.thread144.sink.split ], [ %i.p, %bb.l ], [ %i.p, %._crit_edge160 ], [ %i.p, %._crit_edge ], [ %i.p, %bb.s ], [ %i.p, %bb.h ], [ null, %bb.f ], [ null, %bb.d ], [ %i.p, %.lr.ph163 ], [ null, %bb.b ], [ %i.p, %.lr.ph156 ], [ %i.p, %.lr.ph166 ], [ %i.p, %bb.q ], [ %i.p, %bb.r ], [ %i.p, %bb.o ], [ %i.p, %bb.n ], [ %i.p, %.lr.ph ]
  call void @ft_mem_free(ptr noundef %i.c, ptr noundef %.2103) #18
  %i.cs = load i32, ptr %i.a, align 4, !tbaa !67
  %.not130 = icmp eq i32 %i.cs, 0
  br i1 %.not130, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.thread144
  call fastcc void @cff_vstore_done(ptr noundef %0, ptr noundef %i.c)
  %.pre193 = load i32, ptr %i.a, align 4, !tbaa !67
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.thread144
  %i.ct = phi i32 [ %.pre193, %bb.v ], [ 0, %.thread144 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %i.ct
}

declare hidden ptr @ft_mem_realloc(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc i32 @CFF_Load_FD_Select(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = tail call i32 @FT_Stream_Seek(ptr noundef %2, i64 noundef %3) #18 ; 3 uses
  store i32 %i.b, ptr %i.a, align 4, !tbaa !67
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = call zeroext i8 @FT_Stream_ReadByte(ptr noundef %2, ptr noundef nonnull %i.a) #18 ; 2 uses
  %i.d = load i32, ptr %i.a, align 4, !tbaa !67   ; 2 uses
  %.not15 = icmp eq i32 %i.d, 0
  br i1 %.not15, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  store i8 %i.c, ptr %0, align 8, !tbaa !151
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.e, align 8, !tbaa !197
  switch i8 %i.c, label %bb.h [
    i8 0, label %bb.g
    i8 3, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.f = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef %2, ptr noundef nonnull %i.a) #18 ; 2 uses
  %i.g = zext i16 %i.f to i32
  %i.h = load i32, ptr %i.a, align 4, !tbaa !67   ; 2 uses
  %.not16 = icmp eq i32 %i.h, 0
  br i1 %.not16, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.not17 = icmp eq i16 %i.f, 0
  br i1 %.not17, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = mul nuw nsw i32 %i.g, 3
  %i.j = add nuw nsw i32 %i.i, 2
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f
  %.sink = phi i32 [ %i.j, %bb.f ], [ %1, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sink, ptr %i.k, align 8, !tbaa !150
  %i.l = zext i32 %.sink to i64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = call i32 @FT_Stream_ExtractFrame(ptr noundef %2, i64 noundef %i.l, ptr noundef nonnull %i.m) #18
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.e, %bb.g, %bb.d, %bb.a, %bb.b
  %i.o = phi i32 [ %i.n, %bb.g ], [ 3, %bb.e ], [ %i.h, %bb.d ], [ %i.b, %bb.a ], [ %i.d, %bb.b ], [ 3, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %i.o
}

; Function Attrs: nounwind uwtable
define internal fastcc void @cff_index_done(ptr noundef nonnull %0) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !139    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !141
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !142
  %.not10 = icmp eq ptr %i.e, null
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @FT_Stream_ReleaseFrame(ptr noundef nonnull %i.a, ptr noundef nonnull %i.d) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !143
  tail call void @ft_mem_free(ptr noundef %i.c, ptr noundef %i.g) #18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 64, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cff_charset_load(ptr nofree noundef captures(none) initializes((8, 16)) %0, i32 noundef range(i32 1, 0) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i8 noundef zeroext range(i8 0, 2) %5) unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 26 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !141  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i32 0, ptr %i.b, align 4, !tbaa !67
  %i.e = icmp ugt i64 %4, 2
  br i1 %i.e, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %4, %3                           ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.f, ptr %i.g, align 8, !tbaa !620
  %i.h = tail call i32 @FT_Stream_Seek(ptr noundef nonnull %2, i64 noundef %i.f) #18 ; 2 uses
  store i32 %i.h, ptr %i.b, align 4, !tbaa !67
  %.not93 = icmp eq i32 %i.h, 0
  br i1 %.not93, label %bb.c, label %thread-pre-split

bb.c:                                             ; preds = %bb.b
  %i.i = call zeroext i8 @FT_Stream_ReadByte(ptr noundef nonnull %2, ptr noundef nonnull %i.b) #18
  %i.j = zext i8 %i.i to i32
  store i32 %i.j, ptr %0, align 8, !tbaa !148
  %i.k = load i32, ptr %i.b, align 4, !tbaa !67
  %.not94 = icmp eq i32 %i.k, 0
  br i1 %.not94, label %bb.d, label %thread-pre-split

bb.d:                                             ; preds = %bb.c
  %i.l = zext i32 %1 to i64                       ; 4 uses
  %i.m = call ptr @ft_mem_qrealloc(ptr noundef %i.d, i64 noundef 2, i64 noundef 0, i64 noundef %i.l, ptr noundef null, ptr noundef nonnull %i.b) #18 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !71
  %i.o = load i32, ptr %i.b, align 4, !tbaa !67
  %.not95 = icmp eq i32 %i.o, 0
  br i1 %.not95, label %bb.e, label %thread-pre-split

bb.e:                                             ; preds = %bb.d
  store i16 0, ptr %i.m, align 2, !tbaa !66
  %i.p = load i32, ptr %0, align 8, !tbaa !148
  switch i32 %i.p, label %bb.l [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.q = shl i32 %1, 1
  %i.r = add i32 %i.q, -2
  %i.s = zext i32 %i.r to i64
  %i.t = call i32 @FT_Stream_EnterFrame(ptr noundef nonnull %2, i64 noundef %i.s) #18 ; 2 uses
  store i32 %i.t, ptr %i.b, align 4, !tbaa !67
  %.not100 = icmp eq i32 %i.t, 0
  br i1 %.not100, label %.preheader, label %thread-pre-split

.preheader:                                       ; preds = %bb.f
  %i.u = icmp ugt i32 %1, 1
  br i1 %i.u, label %.lr.ph120, label %._crit_edge

.lr.ph120:                                        ; preds = %.preheader, %.lr.ph120
  %indvars.iv121 = phi i64 [ %indvars.iv.next122, %.lr.ph120 ], [ 1, %.preheader ] ; 2 uses
  %i.v = call zeroext i16 @FT_Stream_GetUShort(ptr noundef nonnull %2) #18
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !71
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %indvars.iv121
  store i16 %i.v, ptr %i.x, align 2, !tbaa !66
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next122, %i.l
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph120, !llvm.loop !612

._crit_edge:                                      ; preds = %.lr.ph120, %.preheader
  call void @FT_Stream_ExitFrame(ptr noundef nonnull %2) #18
  br label %.loopexit112

bb.g:                                             ; preds = %bb.e, %bb.e
  %.not99116 = icmp ugt i32 %1, 1
  br i1 %.not99116, label %.lr.ph118, label %.loopexit112

.loopexit.loopexit:                               ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.bc, %vec.epilog.middle.block ], [ %i.aw, %middle.block ], [ %indvars.iv.next, %vec.epilog.scalar.ph ]
  %i.y = trunc nuw i64 %indvars.iv.next.lcssa to i32 ; 2 uses
  %.not99 = icmp ugt i32 %1, %i.y
  br i1 %.not99, label %.lr.ph118, label %.loopexit112, !llvm.loop !613

.lr.ph118:                                        ; preds = %bb.g, %.loopexit.loopexit
  %.182117 = phi i32 [ %i.y, %.loopexit.loopexit ], [ 1, %bb.g ] ; 2 uses
  %i.z = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef nonnull %2, ptr noundef nonnull %i.b) #18 ; 7 uses
  %i.aa = load i32, ptr %i.b, align 4, !tbaa !67
  %.not96 = icmp eq i32 %i.aa, 0
  br i1 %.not96, label %bb.h, label %thread-pre-split

bb.h:                                             ; preds = %.lr.ph118
  %i.ab = load i32, ptr %0, align 8, !tbaa !148
  %i.ac = icmp eq i32 %i.ab, 2
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ad = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef nonnull %2, ptr noundef nonnull %i.b) #18
  %i.ae = zext i16 %i.ad to i32
  %i.af = load i32, ptr %i.b, align 4, !tbaa !67
  %.not98 = icmp eq i32 %i.af, 0
  br i1 %.not98, label %bb.k, label %thread-pre-split

bb.j:                                             ; preds = %bb.h
  %i.ag = call zeroext i8 @FT_Stream_ReadByte(ptr noundef nonnull %2, ptr noundef nonnull %i.b) #18
  %i.ah = zext i8 %i.ag to i32
  %i.ai = load i32, ptr %i.b, align 4, !tbaa !67
  %.not97 = icmp eq i32 %i.ai, 0
  br i1 %.not97, label %bb.k, label %thread-pre-split

bb.k:                                             ; preds = %bb.j, %bb.i
  %.079 = phi i32 [ %i.ae, %bb.i ], [ %i.ah, %bb.j ] ; 2 uses
  %i.aj = xor i32 %.079, 65535
  %i.ak = zext i16 %i.z to i32
  %i.al = icmp samesign ult i32 %i.aj, %i.ak
  %i.am = xor i16 %i.z, -1
  %i.an = zext i16 %i.am to i32
  %.180 = select i1 %i.al, i32 %i.an, i32 %.079
  %.180.fr = freeze i32 %.180                     ; 2 uses
  %i.ao = icmp ult i32 %.182117, %1
  br i1 %i.ao, label %iter.check, label %.loopexit112

iter.check:                                       ; preds = %bb.k
  %i.ap = load ptr, ptr %i.n, align 8, !tbaa !71  ; 3 uses
  %i.aq = zext i32 %.182117 to i64                ; 6 uses
  %i.ar = zext i32 %.180.fr to i64
  %i.as = xor i64 %i.aq, -1
  %i.at = add nsw i64 %i.as, %i.l
  %umin = call i64 @llvm.umin.i64(i64 %i.ar, i64 %i.at) ; 3 uses
  %i.au = add nuw nsw i64 %umin, 1                ; 5 uses
  %min.iters.check = icmp samesign ult i64 %umin, 3
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check128 = icmp samesign ult i64 %umin, 15
  br i1 %min.iters.check128, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.av = and i64 %i.au, 12
  %n.vec = and i64 %i.au, 8589934576              ; 6 uses
  %i.aw = add nuw nsw i64 %n.vec, %i.aq           ; 2 uses
  %i.ax = trunc i64 %n.vec to i32
  %i.ay = trunc i64 %n.vec to i16
  %i.az = add i16 %i.z, %i.ay                     ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.z, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer
  %induction = add <8 x i16> %broadcast.splat, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>
  %invariant.gep = getelementptr [2 x i8], ptr %i.ap, i64 %i.aq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i16> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <8 x i16> %vec.ind, splat (i16 8)
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <8 x i16> %vec.ind, ptr %gep, align 2, !tbaa !66
  store <8 x i16> %step.add, ptr %i.ba, align 2, !tbaa !66
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <8 x i16> %vec.ind, splat (i16 16)
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !614

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %.loopexit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.av, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !292

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val130 = phi i16 [ %i.az, %vec.epilog.iter.check ], [ %i.z, %vector.main.loop.iter.check ]
  %n.vec131 = and i64 %i.au, 8589934588           ; 5 uses
  %i.bc = add nuw nsw i64 %n.vec131, %i.aq        ; 2 uses
  %i.bd = trunc i64 %n.vec131 to i32
  %i.be = trunc i64 %n.vec131 to i16
  %i.bf = add i16 %i.z, %i.be
  %broadcast.splatinsert132 = insertelement <4 x i16> poison, i16 %bc.resume.val130, i64 0
  %broadcast.splat133 = shufflevector <4 x i16> %broadcast.splatinsert132, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction134 = add <4 x i16> %broadcast.splat133, <i16 0, i16 1, i16 2, i16 3>
  %invariant.gep180 = getelementptr [2 x i8], ptr %i.ap, i64 %i.aq
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index135 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next137, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind136 = phi <4 x i16> [ %induction134, %vec.epilog.ph ], [ %vec.ind.next138, %vec.epilog.vector.body ] ; 2 uses
  %gep181 = getelementptr [2 x i8], ptr %invariant.gep180, i64 %index135
  store <4 x i16> %vec.ind136, ptr %gep181, align 2, !tbaa !66
  %index.next137 = add nuw i64 %index135, 4       ; 2 uses
  %vec.ind.next138 = add <4 x i16> %vec.ind136, splat (i16 4)
  %i.bg = icmp eq i64 %index.next137, %n.vec131
  br i1 %i.bg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !615

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n139 = icmp eq i64 %i.au, %n.vec131
  br i1 %cmp.n139, label %.loopexit.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.aq, %iter.check ], [ %i.aw, %vec.epilog.iter.check ], [ %i.bc, %vec.epilog.middle.block ]
  %.078115.ph = phi i32 [ 0, %iter.check ], [ %i.ax, %vec.epilog.iter.check ], [ %i.bd, %vec.epilog.middle.block ]
  %.083113.ph = phi i16 [ %i.z, %iter.check ], [ %i.az, %vec.epilog.iter.check ], [ %i.bf, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.078115 = phi i32 [ %i.bi, %vec.epilog.scalar.ph ], [ %.078115.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.083113 = phi i16 [ %i.bj, %vec.epilog.scalar.ph ], [ %.083113.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %indvars.iv
  store i16 %.083113, ptr %i.bh, align 2, !tbaa !66
  %i.bi = add nuw nsw i32 %.078115, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bj = add i16 %.083113, 1
  %i.bk = icmp samesign ult i64 %indvars.iv.next, %i.l
  %i.bl = icmp samesign ult i32 %.078115, %.180.fr
  %i.bm = select i1 %i.bk, i1 %i.bl, i1 false
  br i1 %i.bm, label %vec.epilog.scalar.ph, label %.loopexit.loopexit, !llvm.loop !616

bb.l:                                             ; preds = %bb.e
  store i32 3, ptr %i.b, align 4, !tbaa !67
  br label %thread-pre-split

.loopexit112:                                     ; preds = %.loopexit.loopexit, %bb.k, %bb.g, %._crit_edge
  %.not101 = icmp eq i8 %5, 0
  br i1 %.not101, label %thread-pre-split, label %bb.x

bb.m:                                             ; preds = %bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %4, ptr %i.bn, align 8, !tbaa !620
  %i.bo = trunc nuw nsw i64 %4 to i32
  switch i32 %i.bo, label %default.unreachable127 [
    i32 0, label %bb.n
    i32 1, label %bb.q
    i32 2, label %bb.t
  ]

bb.n:                                             ; preds = %bb.m
  %i.bp = icmp ugt i32 %1, 229
  br i1 %i.bp, label %.thread110.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bq = zext nneg i32 %1 to i64                 ; 2 uses
  %i.br = call ptr @ft_mem_qrealloc(ptr noundef %i.d, i64 noundef 2, i64 noundef 0, i64 noundef %i.bq, ptr noundef null, ptr noundef nonnull %i.b) #18 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !71
  %i.bt = load i32, ptr %i.b, align 4, !tbaa !67
  %.not92 = icmp eq i32 %i.bt, 0
  br i1 %.not92, label %bb.p, label %.thread110

bb.p:                                             ; preds = %bb.o
  %i.bu = shl nuw nsw i64 %i.bq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.br, ptr noundef nonnull align 16 dereferenceable(1) @cff_isoadobe_charset, i64 %i.bu, i1 false)
  br label %bb.w

bb.q:                                             ; preds = %bb.m
  %i.bv = icmp ugt i32 %1, 166
  br i1 %i.bv, label %.thread110.sink.split, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bw = zext nneg i32 %1 to i64                 ; 2 uses
  %i.bx = call ptr @ft_mem_qrealloc(ptr noundef %i.d, i64 noundef 2, i64 noundef 0, i64 noundef %i.bw, ptr noundef null, ptr noundef nonnull %i.b) #18 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !71
  %i.bz = load i32, ptr %i.b, align 4, !tbaa !67
  %.not91 = icmp eq i32 %i.bz, 0
  br i1 %.not91, label %bb.s, label %.thread110

bb.s:                                             ; preds = %bb.r
  %i.ca = shl nuw nsw i64 %i.bw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.bx, ptr noundef nonnull align 16 dereferenceable(1) @cff_expert_charset, i64 %i.ca, i1 false)
  br label %bb.w

bb.t:                                             ; preds = %bb.m
  %i.cb = icmp ugt i32 %1, 87
  br i1 %i.cb, label %.thread110.sink.split, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cc = zext nneg i32 %1 to i64                 ; 2 uses
  %i.cd = call ptr @ft_mem_qrealloc(ptr noundef %i.d, i64 noundef 2, i64 noundef 0, i64 noundef %i.cc, ptr noundef null, ptr noundef nonnull %i.b) #18 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !71
  %i.cf = load i32, ptr %i.b, align 4, !tbaa !67
  %.not = icmp eq i32 %i.cf, 0
  br i1 %.not, label %bb.v, label %.thread110

bb.v:                                             ; preds = %bb.u
  %i.cg = shl nuw nsw i64 %i.cc, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.cd, ptr noundef nonnull align 16 dereferenceable(1) @cff_expertsubset_charset, i64 %i.cg, i1 false)
  br label %bb.w

default.unreachable127:                           ; preds = %bb.m
  unreachable

bb.w:                                             ; preds = %bb.p, %bb.s, %bb.v
  %.not101.old = icmp eq i8 %5, 0
  br i1 %.not101.old, label %thread-pre-split, label %bb.x

bb.x:                                             ; preds = %.loopexit112, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !67
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !147
  %.not.i = icmp eq i32 %i.ci, 0
  br i1 %.not.i, label %iter.check156, label %cff_charset_compute_cids.exit

iter.check156:                                    ; preds = %bb.x
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !71 ; 3 uses
  %wide.trip.count.i = zext i32 %1 to i64         ; 6 uses
  %min.iters.check143 = icmp ult i32 %1, 4
  br i1 %min.iters.check143, label %vec.epilog.scalar.ph157.preheader, label %vector.main.loop.iter.check144

vector.main.loop.iter.check144:                   ; preds = %iter.check156
  %min.iters.check145 = icmp ult i32 %1, 16
  br i1 %min.iters.check145, label %vec.epilog.ph160, label %vector.ph146

vector.ph146:                                     ; preds = %vector.main.loop.iter.check144
  %i.cl = and i64 %wide.trip.count.i, 12
  %n.vec147 = and i64 %wide.trip.count.i, 4294967280 ; 4 uses
  br label %vector.body148

vector.body148:                                   ; preds = %vector.body148, %vector.ph146
  %index149 = phi i64 [ 0, %vector.ph146 ], [ %index.next152, %vector.body148 ] ; 2 uses
  %vec.phi = phi <8 x i16> [ zeroinitializer, %vector.ph146 ], [ %i.co, %vector.body148 ]
  %vec.phi150 = phi <8 x i16> [ zeroinitializer, %vector.ph146 ], [ %i.cp, %vector.body148 ]
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %i.ck, i64 %index149 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %wide.load = load <8 x i16>, ptr %i.cm, align 2, !tbaa !66
  %wide.load151 = load <8 x i16>, ptr %i.cn, align 2, !tbaa !66
  %i.co = call <8 x i16> @llvm.umax.v8i16(<8 x i16> %wide.load, <8 x i16> %vec.phi) ; 2 uses
  %i.cp = call <8 x i16> @llvm.umax.v8i16(<8 x i16> %wide.load151, <8 x i16> %vec.phi150) ; 2 uses
  %index.next152 = add nuw i64 %index149, 16      ; 2 uses
  %i.cq = icmp eq i64 %index.next152, %n.vec147
  br i1 %i.cq, label %middle.block153, label %vector.body148, !llvm.loop !617

middle.block153:                                  ; preds = %vector.body148
  %rdx.minmax = call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.co, <8 x i16> %i.cp)
  %i.cr = call i16 @llvm.vector.reduce.umax.v8i16(<8 x i16> %rdx.minmax) ; 3 uses
  %cmp.n154 = icmp eq i64 %n.vec147, %wide.trip.count.i
  br i1 %cmp.n154, label %._crit_edge.i, label %vec.epilog.iter.check158

vec.epilog.iter.check158:                         ; preds = %middle.block153
  %min.epilog.iters.check159 = icmp eq i64 %i.cl, 0
  br i1 %min.epilog.iters.check159, label %vec.epilog.scalar.ph157.preheader, label %vec.epilog.ph160, !prof !292

vec.epilog.ph160:                                 ; preds = %vector.main.loop.iter.check144, %vec.epilog.iter.check158
  %vec.epilog.resume.val155 = phi i64 [ %n.vec147, %vec.epilog.iter.check158 ], [ 0, %vector.main.loop.iter.check144 ]
  %bc.merge.rdx = phi i16 [ %i.cr, %vec.epilog.iter.check158 ], [ 0, %vector.main.loop.iter.check144 ]
  %n.vec161 = and i64 %wide.trip.count.i, 4294967292 ; 3 uses
  %broadcast.splatinsert162 = insertelement <4 x i16> poison, i16 %bc.merge.rdx, i64 0
  %broadcast.splat163 = shufflevector <4 x i16> %broadcast.splatinsert162, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body164

vec.epilog.vector.body164:                        ; preds = %vec.epilog.vector.body164, %vec.epilog.ph160
  %index165 = phi i64 [ %vec.epilog.resume.val155, %vec.epilog.ph160 ], [ %index.next168, %vec.epilog.vector.body164 ] ; 2 uses
  %vec.phi166 = phi <4 x i16> [ %broadcast.splat163, %vec.epilog.ph160 ], [ %i.ct, %vec.epilog.vector.body164 ]
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.ck, i64 %index165
  %wide.load167 = load <4 x i16>, ptr %i.cs, align 2, !tbaa !66
  %i.ct = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %wide.load167, <4 x i16> %vec.phi166) ; 2 uses
  %index.next168 = add nuw i64 %index165, 4       ; 2 uses
  %i.cu = icmp eq i64 %index.next168, %n.vec161
  br i1 %i.cu, label %vec.epilog.middle.block169, label %vec.epilog.vector.body164, !llvm.loop !618

vec.epilog.middle.block169:                       ; preds = %vec.epilog.vector.body164
  %i.cv = call i16 @llvm.vector.reduce.umax.v4i16(<4 x i16> %i.ct) ; 2 uses
  %cmp.n170 = icmp eq i64 %n.vec161, %wide.trip.count.i
  br i1 %cmp.n170, label %._crit_edge.i, label %vec.epilog.scalar.ph157.preheader

vec.epilog.scalar.ph157.preheader:                ; preds = %iter.check156, %vec.epilog.iter.check158, %vec.epilog.middle.block169
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check156 ], [ %n.vec147, %vec.epilog.iter.check158 ], [ %n.vec161, %vec.epilog.middle.block169 ]
  %.029.i.ph = phi i16 [ 0, %iter.check156 ], [ %i.cr, %vec.epilog.iter.check158 ], [ %i.cv, %vec.epilog.middle.block169 ]
  br label %vec.epilog.scalar.ph157

vec.epilog.scalar.ph157:                          ; preds = %vec.epilog.scalar.ph157.preheader, %vec.epilog.scalar.ph157
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph157 ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph157.preheader ] ; 2 uses
  %.029.i = phi i16 [ %spec.select.i, %vec.epilog.scalar.ph157 ], [ %.029.i.ph, %vec.epilog.scalar.ph157.preheader ]
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.ck, i64 %indvars.iv.i
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !66
  %spec.select.i = call i16 @llvm.umax.i16(i16 %i.cx, i16 %.029.i) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %vec.epilog.scalar.ph157, !llvm.loop !619

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph157, %vec.epilog.middle.block169, %middle.block153
  %spec.select.i.lcssa = phi i16 [ %i.cv, %vec.epilog.middle.block169 ], [ %i.cr, %middle.block153 ], [ %spec.select.i, %vec.epilog.scalar.ph157 ] ; 2 uses
  %i.cy = zext i16 %spec.select.i.lcssa to i64
  %i.cz = add nuw nsw i64 %i.cy, 1
  %i.da = call ptr @ft_mem_realloc(ptr noundef %i.d, i64 noundef 2, i64 noundef 0, i64 noundef %i.cz, ptr noundef null, ptr noundef nonnull %i.a) #18 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.da, ptr %i.db, align 8, !tbaa !146
  %i.dc = load i32, ptr %i.a, align 4, !tbaa !67  ; 2 uses
  %.not26.i = icmp eq i32 %i.dc, 0
  br i1 %.not26.i, label %.preheader.i, label %cff_charset_compute_cids.exit

.preheader.i:                                     ; preds = %._crit_edge.i
  %.12430.i = add i32 %1, -1
  %i.dd = load ptr, ptr %i.cj, align 8, !tbaa !71
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.preheader.i
  %.12431.i = phi i32 [ %.12430.i, %.preheader.i ], [ %.124.i, %bb.y ] ; 3 uses
  %i.de = trunc i32 %.12431.i to i16
  %i.df = zext i32 %.12431.i to i64
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.dd, i64 %i.df
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !66
  %i.di = zext i16 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %i.di
  store i16 %i.de, ptr %i.dj, align 2, !tbaa !66
  %.124.i = add i32 %.12431.i, -1                 ; 2 uses
  %i.dk = icmp ult i32 %.124.i, %1
  br i1 %i.dk, label %bb.y, label %._crit_edge33.i, !llvm.loop !4

._crit_edge33.i:                                  ; preds = %bb.y
  %i.dl = zext i16 %spec.select.i.lcssa to i32
  store i32 %i.dl, ptr %i.ch, align 8, !tbaa !147
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %1, ptr %i.dm, align 4, !tbaa !293
  br label %cff_charset_compute_cids.exit

cff_charset_compute_cids.exit:                    ; preds = %bb.x, %._crit_edge.i, %._crit_edge33.i
  %i.dn = phi i32 [ %i.dc, %._crit_edge.i ], [ 0, %bb.x ], [ 0, %._crit_edge33.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  store i32 %i.dn, ptr %i.b, align 4, !tbaa !67
end_hunk_0
