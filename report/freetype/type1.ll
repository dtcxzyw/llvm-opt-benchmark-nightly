Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/type1?download=true
inline.NumInlined: 40
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@parse_weight_vector:bb.a

bb.d:                                             ; preds = %bb.c
  %i.l = load i32, ptr %i.f, align 8, !tbaa !85   ; 2 uses
  %.not41 = icmp eq i32 %i.l, 0
  br i1 %.not41, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = call fastcc i32 @t1_allocate_blend(ptr noundef nonnull %0, i32 noundef %i.i, i32 noundef 0) ; 3 uses
  store i32 %i.m, ptr %i.b, align 4, !tbaa !24
  %.not42 = icmp eq i32 %i.m, 0
  br i1 %.not42, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !83
  %.pre49.pre = load i32, ptr %i.a, align 4, !tbaa !24
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %.not43 = icmp eq i32 %i.l, %i.i
  br i1 %.not43, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre49 = phi i32 [ %i.i, %bb.g ], [ %.pre49.pre, %bb.f ] ; 2 uses
  %.037 = phi ptr [ %i.f, %bb.g ], [ %i.n, %bb.f ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.037, i64 264 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !88   ; 2 uses
  %.not44 = icmp eq ptr %i.p, null
  br i1 %.not44, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.q = shl nsw i32 %.pre49, 1
  %i.r = sext i32 %i.q to i64
  %i.s = call ptr @ft_mem_qrealloc(ptr noundef %i.d, i64 noundef 8, i64 noundef 0, i64 noundef %i.r, ptr noundef null, ptr noundef nonnull %i.b) #17 ; 2 uses
  store ptr %i.s, ptr %i.o, align 8, !tbaa !88
  %i.t = load i32, ptr %i.b, align 4, !tbaa !24   ; 2 uses
  %.not45 = icmp eq i32 %i.t, 0
  br i1 %.not45, label %._crit_edge48, label %bb.l

._crit_edge48:                                    ; preds = %bb.i
  %.pre = load i32, ptr %i.a, align 4, !tbaa !24
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge48, %bb.h
  %i.u = phi i32 [ %.pre, %._crit_edge48 ], [ %.pre49, %bb.h ] ; 2 uses
  %i.v = phi ptr [ %i.s, %._crit_edge48 ], [ %i.p, %bb.h ]
  %i.w = sext i32 %i.u to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %.037, i64 272 ; 2 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !222
  %i.z = load ptr, ptr %1, align 8, !tbaa !73
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !74
  %i.ac = icmp sgt i32 %i.u, 0
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 80
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 4 uses
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !240
  store ptr %i.af, ptr %1, align 8, !tbaa !73
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !241
  store ptr %i.ah, ptr %i.aa, align 8, !tbaa !74
  %i.ai = load ptr, ptr %i.ad, align 8, !tbaa !242
  %i.aj = call i64 %i.ai(ptr noundef nonnull %1, i32 noundef 0) #17 ; 2 uses
  %i.ak = load ptr, ptr %i.o, align 8, !tbaa !88
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv
  store i64 %i.aj, ptr %i.al, align 8, !tbaa !81
  %i.am = load ptr, ptr %i.y, align 8, !tbaa !222
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv
  store i64 %i.aj, ptr %i.an, align 8, !tbaa !81
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ao = load i32, ptr %i.a, align 4, !tbaa !24
  %i.ap = sext i32 %i.ao to i64
  %i.aq = icmp slt i64 %indvars.iv.next, %i.ap
  br i1 %i.aq, label %bb.k, label %._crit_edge.loopexit, !llvm.loop !525

._crit_edge.loopexit:                             ; preds = %bb.k
  %.pre50.pre = load i32, ptr %i.b, align 4, !tbaa !24
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.j
  %.pre50 = phi i32 [ %.pre50.pre, %._crit_edge.loopexit ], [ 0, %bb.j ]
  store ptr %i.z, ptr %1, align 8, !tbaa !73
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !74
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %bb.b, %bb.a, %bb.i, %bb.e, %._crit_edge
  %i.ar = phi i32 [ %i.t, %bb.i ], [ %i.m, %bb.e ], [ %.pre50, %._crit_edge ], [ 3, %bb.b ], [ 162, %bb.a ], [ 3, %bb.g ]
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.ar, ptr %i.as, align 8, !tbaa !78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @parse_buildchar(ptr nofree noundef writeonly captures(none) initializes((864, 868)) %0, ptr noundef %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !526
  %i.c = tail call i32 %i.b(ptr noundef %1, i32 noundef 0, ptr noundef null, i32 noundef 0) #17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 864
  store i32 %i.c, ptr %i.d, align 8, !tbaa !58
  ret void
}

declare i64 @FT_DivFix(i64 noundef, i64 noundef) local_unnamed_addr #5

declare hidden zeroext i8 @FT_Matrix_Check(ptr noundef) local_unnamed_addr #5

declare i32 @ft_hash_num_init(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @ft_hash_num_insert(i32 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare hidden ptr @ft_mem_dup(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc i32 @t1_allocate_blend(ptr noundef %0, i32 noundef %1, i32 noundef range(i32 0, 5) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !59   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i32 0, ptr %i.a, align 4, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 848 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !83   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = call ptr @ft_mem_alloc(ptr noundef %i.c, i64 noundef 768, ptr noundef nonnull %i.a) #17 ; 5 uses
  %i.g = load i32, ptr %i.a, align 4, !tbaa !24
  %.not61 = icmp eq i32 %i.g, 0
  br i1 %.not61, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 760
  store i32 0, ptr %i.h, align 8, !tbaa !87
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 264
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr null, ptr %i.j, align 8, !tbaa !89
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store ptr %i.f, ptr %i.d, align 8, !tbaa !83
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.054 = phi ptr [ %i.e, %bb.a ], [ %i.f, %bb.c ] ; 11 uses
  %.not62 = icmp eq i32 %1, 0
  br i1 %.not62, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load i32, ptr %.054, align 8, !tbaa !85  ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.m = zext i32 %1 to i64                       ; 3 uses
  %i.n = call ptr @ft_mem_realloc(ptr noundef %i.c, i64 noundef 56, i64 noundef 0, i64 noundef %i.m, ptr noundef null, ptr noundef nonnull %i.a) #17
  %i.o = getelementptr inbounds nuw i8, ptr %.054, i64 280 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.054, i64 288
  store ptr %i.n, ptr %i.p, align 8, !tbaa !227
  %i.q = load i32, ptr %i.a, align 4, !tbaa !24
  %.not64 = icmp eq i32 %i.q, 0
  br i1 %.not64, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.r = call ptr @ft_mem_realloc(ptr noundef %i.c, i64 noundef 224, i64 noundef 0, i64 noundef %i.m, ptr noundef null, ptr noundef nonnull %i.a) #17
  %i.s = getelementptr inbounds nuw i8, ptr %.054, i64 416 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.054, i64 424
  store ptr %i.r, ptr %i.t, align 8, !tbaa !225
  %i.u = load i32, ptr %i.a, align 4, !tbaa !24
  %.not65 = icmp eq i32 %i.u, 0
  br i1 %.not65, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.v = call ptr @ft_mem_realloc(ptr noundef %i.c, i64 noundef 32, i64 noundef 0, i64 noundef %i.m, ptr noundef null, ptr noundef nonnull %i.a) #17 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.054, i64 560 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.054, i64 568
  store ptr %i.v, ptr %i.x, align 8, !tbaa !229
  %i.y = load i32, ptr %i.a, align 4, !tbaa !24
  %.not66 = icmp eq i32 %i.y, 0
  br i1 %.not66, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr %i.z, ptr %i.o, align 8, !tbaa !227
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 312
  store ptr %i.aa, ptr %i.s, align 8, !tbaa !225
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 728
  store ptr %i.ab, ptr %i.w, align 8, !tbaa !229
  %.not6775 = icmp eq i32 %1, 1
  br i1 %.not6775, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.ac = add i32 %1, 1
  %umax = call i32 @llvm.umax.i32(i32 %i.ac, i32 3)
  %wide.trip.count = zext i32 %umax to i64        ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.054, i64 288
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !227 ; 3 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %.054, i64 424
  %.pre79 = load ptr, ptr %.phi.trans.insert78, align 8, !tbaa !225 ; 3 uses
  %i.ad = add nsw i64 %wide.trip.count, -2        ; 3 uses
  %min.iters.check = icmp ult i64 %i.ad, 4
  br i1 %min.iters.check, label %.lr.ph.preheader103, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.ad, -4                      ; 6 uses
  %i.ae = shl nsw i64 %n.vec, 5
  %i.af = getelementptr i8, ptr %i.v, i64 %i.ae
  %i.ag = mul nsw i64 %n.vec, 224
  %i.ah = getelementptr i8, ptr %.pre79, i64 %i.ag
  %i.ai = mul nsw i64 %n.vec, 56
  %i.aj = getelementptr i8, ptr %.pre, i64 %i.ai
  %i.ak = or disjoint i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %pointer.phi = phi ptr [ %i.v, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %pointer.phi84 = phi ptr [ %.pre79, %vector.ph ], [ %ptr.ind95, %vector.body ] ; 2 uses
  %pointer.phi85 = phi ptr [ %.pre, %vector.ph ], [ %ptr.ind96, %vector.body ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi85, <2 x i64> <i64 0, i64 56> ; 2 uses
  %vector.gep86 = getelementptr i8, ptr %pointer.phi84, <2 x i64> <i64 0, i64 224> ; 2 uses
  %vector.gep87 = getelementptr i8, ptr %pointer.phi, <2 x i64> <i64 0, i64 32> ; 2 uses
  %i.al = or disjoint i64 %index, 2               ; 3 uses
  %wide.gep = getelementptr inbounds nuw i8, <2 x ptr> %vector.gep, i64 56
  %wide.gep90 = getelementptr i8, <2 x ptr> %vector.gep, i64 168
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store <2 x ptr> %wide.gep, ptr %i.am, align 8, !tbaa !227
  store <2 x ptr> %wide.gep90, ptr %i.an, align 8, !tbaa !227
  %wide.gep91 = getelementptr inbounds nuw i8, <2 x ptr> %vector.gep86, i64 224
  %wide.gep92 = getelementptr i8, <2 x ptr> %vector.gep86, i64 672
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.al ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store <2 x ptr> %wide.gep91, ptr %i.ao, align 8, !tbaa !225
  store <2 x ptr> %wide.gep92, ptr %i.ap, align 8, !tbaa !225
  %wide.gep93 = getelementptr inbounds nuw i8, <2 x ptr> %vector.gep87, i64 32
  %wide.gep94 = getelementptr i8, <2 x ptr> %vector.gep87, i64 96
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.al ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store <2 x ptr> %wide.gep93, ptr %i.aq, align 8, !tbaa !229
  store <2 x ptr> %wide.gep94, ptr %i.ar, align 8, !tbaa !229
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 128
  %ptr.ind95 = getelementptr i8, ptr %pointer.phi84, i64 896
  %ptr.ind96 = getelementptr i8, ptr %pointer.phi85, i64 224
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !527

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader103

.lr.ph.preheader103:                              ; preds = %.lr.ph.preheader, %middle.block
  %.ph = phi ptr [ %i.v, %.lr.ph.preheader ], [ %i.af, %middle.block ]
  %.ph104 = phi ptr [ %.pre79, %.lr.ph.preheader ], [ %i.ah, %middle.block ]
  %.ph105 = phi ptr [ %.pre, %.lr.ph.preheader ], [ %i.aj, %middle.block ]
  %indvars.iv.ph = phi i64 [ 2, %.lr.ph.preheader ], [ %i.ak, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader103, %.lr.ph
  %i.at = phi ptr [ %i.ba, %.lr.ph ], [ %.ph, %.lr.ph.preheader103 ]
  %i.au = phi ptr [ %i.ay, %.lr.ph ], [ %.ph104, %.lr.ph.preheader103 ]
  %i.av = phi ptr [ %i.aw, %.lr.ph ], [ %.ph105, %.lr.ph.preheader103 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader103 ] ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 56 ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !227
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 224 ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !225
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 32 ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !229
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !llvm.loop !528

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.i
  store i32 %1, ptr %.054, align 8, !tbaa !85
  %.not68 = icmp eq i32 %2, 0
  br i1 %.not68, label %.thread, label %bb.l

bb.j:                                             ; preds = %bb.e
  %.not63 = icmp eq i32 %i.k, %1
  br i1 %.not63, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j, %bb.d
  %.not68.old = icmp eq i32 %2, 0
  br i1 %.not68.old, label %.thread, label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %.054, i64 4 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !86 ; 2 uses
  %.not69 = icmp eq i32 %i.bd, 0
  %.not70 = icmp eq i32 %i.bd, %2
  %or.cond71 = or i1 %.not69, %.not70
  br i1 %or.cond71, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 %2, ptr %i.bc, align 4, !tbaa !86
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.g, %bb.h, %._crit_edge, %bb.k, %bb.m, %bb.b, %bb.n
  %i.be = load i32, ptr %i.a, align 4, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %i.be

bb.n:                                             ; preds = %bb.l, %bb.j
  store i32 3, ptr %i.a, align 4, !tbaa !24
  br label %.thread
}

declare hidden i64 @FT_Stream_Pos(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }
attributes #18 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{null}
!1 = distinct !{!1, !80}
!2 = distinct !{!2, !80}
!3 = distinct !{!3, !80}
!4 = distinct !{!4, !80}
!5 = distinct !{null}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"any pointer", !10, i64 0}
!15 = !{!"p1 _ZTS16FT_Module_Class_", !14, i64 0}
!16 = !{!"p1 _ZTS14FT_LibraryRec_", !14, i64 0}
!17 = !{!"p1 _ZTS13FT_MemoryRec_", !14, i64 0}
!18 = !{!"FT_ModuleRec_", !15, i64 0, !16, i64 8, !17, i64 16}
!19 = !{!"p1 _ZTS19FT_Driver_ClassRec_", !14, i64 0}
!20 = !{!"p1 _ZTS15FT_ListNodeRec_", !14, i64 0}
!21 = !{!"FT_ListRec_", !20, i64 0, !20, i64 8}
!22 = !{!"p1 _ZTS18FT_GlyphLoaderRec_", !14, i64 0}
!23 = !{!"FT_DriverRec_", !18, i64 0, !19, i64 24, !21, i64 32, !22, i64 48}
!24 = !{!11, !11, i64 0}
!25 = !{!"long", !10, i64 0}
!26 = !{!"p1 omnipotent char", !14, i64 0}
!27 = !{!"p1 _ZTS15FT_Bitmap_Size_", !14, i64 0}
!28 = !{!"any p2 pointer", !14, i64 0}
!29 = !{!"p2 _ZTS14FT_CharMapRec_", !28, i64 0}
end_hunk_0
