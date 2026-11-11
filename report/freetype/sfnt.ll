Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/sfnt?download=true
inline.NumInlined: 119
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 35
begin_hunk_0_@tt_face_load_svg_doc:bb.a
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !278
  %i.dp = or i32 %i.do, 2
  store i32 %i.dp, ptr %i.dn, align 8, !tbaa !278
  %i.dq = load i64, ptr %i.b, align 8, !tbaa !121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !656
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.k, %bb.j, %bb.i, %bb.h
  %i.dr = phi ptr [ %.pre, %bb.p ], [ %i.d, %bb.k ], [ %i.d, %bb.j ], [ %i.d, %bb.i ], [ %i.d, %bb.h ]
  %.164 = phi i64 [ %i.dq, %bb.p ], [ %i.by, %bb.k ], [ %i.by, %bb.j ], [ %i.by, %bb.i ], [ %i.by, %bb.h ]
  %.1 = phi ptr [ %i.dh, %bb.p ], [ %i.cn, %bb.k ], [ %i.cn, %bb.j ], [ %i.cn, %bb.i ], [ %i.cn, %bb.h ]
  store ptr %.1, ptr %i.j, align 8, !tbaa !662
  %i.ds = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %.164, ptr %i.ds, align 8, !tbaa !663
  %i.dt = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 160
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !340
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dt, ptr noundef nonnull align 8 dereferenceable(56) %i.dw, i64 56, i1 false), !tbaa.struct !664
  %i.dx = load ptr, ptr %i.c, align 8, !tbaa !656
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 136
  %i.dz = load i16, ptr %i.dy, align 8, !tbaa !195
  %i.ea = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  store i16 %i.dz, ptr %i.ea, align 8, !tbaa !665
  %i.eb = getelementptr inbounds nuw i8, ptr %i.j, i64 74
  store i16 %i.bg, ptr %i.eb, align 2, !tbaa !666
  %i.ec = getelementptr inbounds nuw i8, ptr %i.j, i64 76
  store i16 %i.bo, ptr %i.ec, align 4, !tbaa !667
  %i.ed = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  store i64 65536, ptr %i.ed, align 8, !tbaa !668
  %i.ee = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.ef = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, i8 0, i64 16, i1 false)
  store i64 65536, ptr %i.ef, align 8, !tbaa !669
  %i.eg = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eg, i8 0, i64 16, i1 false)
  store ptr %i.j, ptr %i.i, align 8, !tbaa !657
  br label %find_doc.exit.thread

find_doc.exit.thread:                             ; preds = %bb.f, %bb.g, %bb.c, %bb.a, %bb.b, %.thread, %bb.q
  %i.eh = phi i32 [ %i.dk, %.thread ], [ 8, %bb.g ], [ 0, %bb.q ], [ 16, %bb.b ], [ 16, %bb.c ], [ 8, %bb.a ], [ 16, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i32 %i.eh
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #9

declare hidden i32 @FT_Stream_Seek(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #9

declare hidden ptr @FT_Get_Module_Interface(ptr noundef, ptr noundef) local_unnamed_addr #10

declare hidden ptr @ft_module_get_service(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #10

declare ptr @FT_Get_Module(ptr noundef, ptr noundef) local_unnamed_addr #10

declare hidden i32 @FT_Stream_ReadULong(ptr noundef, ptr noundef) local_unnamed_addr #10

declare hidden zeroext i16 @FT_Stream_ReadUShort(ptr noundef, ptr noundef) local_unnamed_addr #10

declare hidden i32 @FT_Stream_Skip(ptr noundef, i64 noundef) local_unnamed_addr #10

declare hidden ptr @ft_mem_qalloc(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #10

declare hidden i64 @FT_Stream_Pos(ptr noundef) local_unnamed_addr #10

declare hidden i32 @FT_Stream_ReadAt(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

declare hidden void @ft_mem_free(ptr noundef, ptr noundef) local_unnamed_addr #10

declare hidden i32 @FT_Stream_ReadFields(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

declare hidden ptr @ft_mem_qrealloc(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

declare hidden i32 @FT_Stream_EnterFrame(ptr noundef, i64 noundef) local_unnamed_addr #10

declare hidden i32 @FT_Stream_GetULong(ptr noundef) local_unnamed_addr #10

declare hidden void @FT_Stream_ExitFrame(ptr noundef) local_unnamed_addr #10

declare hidden ptr @ft_mem_alloc(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #11

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @compare_offsets(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !136
  %i.b = load ptr, ptr %1, align 8, !tbaa !136
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !134
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !134
  %.0 = tail call i32 @llvm.ucmp.i32.i64(i64 %i.d, i64 %i.f)
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

declare i32 @FT_Gzip_Uncompress(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

declare hidden void @FT_Stream_OpenMemory(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal void @sfnt_stream_close(ptr nofree noundef captures(none) initializes((8, 16), (48, 56)) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !131
  %i.c = load ptr, ptr %0, align 8, !tbaa !341
  tail call void @ft_mem_free(ptr noundef %i.b, ptr noundef %i.c) #27
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.d, align 8, !tbaa !138
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

declare hidden void @FT_Stream_Free(ptr noundef, i32 noundef) local_unnamed_addr #10

declare hidden void @FT_Stream_Close(ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

declare hidden zeroext i8 @FT_Stream_ReadByte(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ReadBase128(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i32 0, ptr %i.a, align 4, !tbaa !30
  %i.b = call zeroext i8 @FT_Stream_ReadByte(ptr noundef %0, ptr noundef nonnull %i.a) #27 ; 3 uses
  %i.c = load i32, ptr %i.a, align 4, !tbaa !30   ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.k, label %.loopexit

bb.b:                                             ; preds = %bb.l
  %i.d = call zeroext i8 @FT_Stream_ReadByte(ptr noundef %0, ptr noundef nonnull %i.a) #27 ; 2 uses
  %i.e = load i32, ptr %i.a, align 4, !tbaa !30   ; 2 uses
  %.not.1 = icmp eq i32 %i.e, 0
  br i1 %.not.1, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.f = shl nuw nsw i64 %i.af, 7
  %i.g = and i8 %i.d, 127
  %i.h = zext nneg i8 %i.g to i64
  %i.i = or disjoint i64 %i.f, %i.h               ; 2 uses
  %i.j = icmp sgt i8 %i.d, -1
  br i1 %i.j, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = call zeroext i8 @FT_Stream_ReadByte(ptr noundef %0, ptr noundef nonnull %i.a) #27 ; 2 uses
  %i.l = load i32, ptr %i.a, align 4, !tbaa !30   ; 2 uses
  %.not.2 = icmp eq i32 %i.l, 0
  br i1 %.not.2, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.m = shl nuw nsw i64 %i.i, 7
  %i.n = and i8 %i.k, 127
  %i.o = zext nneg i8 %i.n to i64
  %i.p = or disjoint i64 %i.m, %i.o               ; 2 uses
  %i.q = icmp sgt i8 %i.k, -1
  br i1 %i.q, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = call zeroext i8 @FT_Stream_ReadByte(ptr noundef %0, ptr noundef nonnull %i.a) #27 ; 2 uses
  %i.s = load i32, ptr %i.a, align 4, !tbaa !30   ; 2 uses
  %.not.3 = icmp eq i32 %i.s, 0
  br i1 %.not.3, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.t = shl nuw nsw i64 %i.p, 7
  %i.u = and i8 %i.r, 127
  %i.v = zext nneg i8 %i.u to i64
  %i.w = or disjoint i64 %i.t, %i.v               ; 2 uses
  %i.x = icmp sgt i8 %i.r, -1
  br i1 %i.x, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = call zeroext i8 @FT_Stream_ReadByte(ptr noundef %0, ptr noundef nonnull %i.a) #27 ; 2 uses
  %i.z = load i32, ptr %i.a, align 4, !tbaa !30   ; 2 uses
  %.not.4 = icmp eq i32 %i.z, 0
  br i1 %.not.4, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %.not16.4 = icmp samesign ult i8 %i.ae, 16
  br i1 %.not16.4, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.aa = shl nuw nsw i64 %i.w, 7
  %2 = and i8 %i.y, 127
  %i.ab = zext nneg i8 %2 to i64
  %i.ac = or disjoint i64 %i.aa, %i.ab
  %i.ad = icmp sgt i8 %i.y, -1
  br i1 %i.ad, label %bb.m, label %.loopexit

bb.k:                                             ; preds = %bb.a
  %.not28 = icmp eq i8 %i.b, -128
  br i1 %.not28, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = and i8 %i.b, 127                        ; 2 uses
  %i.af = zext nneg i8 %i.ae to i64               ; 2 uses
  %i.ag = icmp sgt i8 %i.b, -1
  br i1 %i.ag, label %bb.m, label %bb.b

bb.m:                                             ; preds = %bb.j, %bb.g, %bb.e, %bb.c, %bb.l
  %.lcssa = phi i64 [ %i.af, %bb.l ], [ %i.i, %bb.c ], [ %i.p, %bb.e ], [ %i.w, %bb.g ], [ %i.ac, %bb.j ]
  store i64 %.lcssa, ptr %1, align 8, !tbaa !121
  br label %.loopexit

.loopexit:                                        ; preds = %bb.k, %bb.a, %bb.b, %bb.d, %bb.f, %bb.h, %bb.i, %bb.j, %bb.m
  %.014 = phi i32 [ 0, %bb.m ], [ %i.s, %bb.f ], [ %i.c, %bb.a ], [ 8, %bb.k ], [ %i.e, %bb.b ], [ %i.z, %bb.h ], [ 8, %bb.i ], [ %i.l, %bb.d ], [ 8, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i32 %.014
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @Read255UShort(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i32 0, ptr %i.a, align 4, !tbaa !30
  %i.b = call zeroext i8 @FT_Stream_ReadByte(ptr noundef %0, ptr noundef nonnull %i.a) #27 ; 2 uses
  %i.c = load i32, ptr %i.a, align 4, !tbaa !30   ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  switch i8 %i.b, label %bb.h [
    i8 -3, label %bb.c
    i8 -1, label %bb.d
    i8 -2, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef %0, ptr noundef nonnull %i.a) #27
  %i.e = load i32, ptr %i.a, align 4, !tbaa !30   ; 2 uses
  %.not22 = icmp eq i32 %i.e, 0
  br i1 %.not22, label %.sink.split, label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.f = call zeroext i8 @FT_Stream_ReadByte(ptr noundef %0, ptr noundef nonnull %i.a) #27
  %i.g = load i32, ptr %i.a, align 4, !tbaa !30   ; 2 uses
  %.not21 = icmp eq i32 %i.g, 0
  br i1 %.not21, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.h = zext i8 %i.f to i16
  %i.i = add nuw nsw i16 %i.h, 253
  br label %.sink.split

bb.f:                                             ; preds = %bb.b
  %i.j = call zeroext i8 @FT_Stream_ReadByte(ptr noundef %0, ptr noundef nonnull %i.a) #27
  %i.k = load i32, ptr %i.a, align 4, !tbaa !30   ; 2 uses
  %.not20 = icmp eq i32 %i.k, 0
  br i1 %.not20, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.l = zext i8 %i.j to i16
  %i.m = add nuw nsw i16 %i.l, 506
  br label %.sink.split

bb.h:                                             ; preds = %bb.b
  %i.n = zext i8 %i.b to i16
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.e, %bb.g, %bb.h
  %.sink = phi i16 [ %i.n, %bb.h ], [ %i.m, %bb.g ], [ %i.i, %bb.e ], [ %i.d, %bb.c ]
  store i16 %.sink, ptr %1, align 2, !tbaa !154
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.f, %bb.d, %bb.c, %bb.a
  %.0 = phi i32 [ %i.k, %bb.f ], [ %i.c, %bb.a ], [ %i.g, %bb.d ], [ %i.e, %bb.c ], [ 0, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i32 %.0
}

declare hidden ptr @ft_mem_realloc(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i64 @compute_ULong_sum(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) unnamed_addr #14 {
bb.a:
  %i.a = and i64 %1, -4                           ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = add i64 %1, -4                           ; 2 uses
  %i.c = lshr i64 %i.b, 2
  %i.d = add nuw nsw i64 %i.c, 1                  ; 2 uses
  %xtraiter = and i64 %i.d, 3                     ; 3 uses
  %i.e = icmp ult i64 %i.b, 12
  br i1 %i.e, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.d, 9223372036854775804
  br label %.lr.ph

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.preheader
  %.01823.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ai, %.preheader.loopexit.unr-lcssa ]
  %.02022.epil.init = phi ptr [ %0, %.lr.ph.preheader ], [ %i.ae, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod45 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod45)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.01823.epil = phi i64 [ %i.j, %.lr.ph.epil ], [ %.01823.epil.init, %.lr.ph.epil.preheader ]
  %.02022.epil = phi ptr [ %i.f, %.lr.ph.epil ], [ %.02022.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.f = getelementptr inbounds nuw i8, ptr %.02022.epil, i64 4 ; 2 uses
  %i.g = load i32, ptr %.02022.epil, align 1
  %i.h = tail call i32 @llvm.bswap.i32(i32 %i.g)
  %i.i = zext i32 %i.h to i64
  %i.j = add i64 %.01823.epil, %i.i               ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.loopexit, label %.lr.ph.epil, !llvm.loop !670

.preheader.loopexit:                              ; preds = %.lr.ph.epil, %.preheader.loopexit.unr-lcssa
  %.lcssa42 = phi ptr [ %i.ae, %.preheader.loopexit.unr-lcssa ], [ %i.f, %.lr.ph.epil ]
  %.lcssa41 = phi i64 [ %i.ai, %.preheader.loopexit.unr-lcssa ], [ %i.j, %.lr.ph.epil ]
  %i.k = and i64 %1, -4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.a
  %.020.lcssa = phi ptr [ %0, %bb.a ], [ %.lcssa42, %.preheader.loopexit ] ; 2 uses
  %.018.lcssa = phi i64 [ 0, %bb.a ], [ %.lcssa41, %.preheader.loopexit ] ; 3 uses
  %.017.lcssa = phi i64 [ 0, %bb.a ], [ %i.k, %.preheader.loopexit ]
  %i.l = icmp ult i64 %.017.lcssa, %1
  br i1 %i.l, label %.lr.ph31.preheader, label %._crit_edge

.lr.ph31.preheader:                               ; preds = %.preheader
  %i.m = and i64 %1, 3                            ; 3 uses
  %i.n = sub i64 %i.a, %1
  %i.o = icmp ugt i64 %i.n, -4
  br i1 %i.o, label %.lr.ph31.epil.preheader, label %.lr.ph31

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.01823 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ai, %.lr.ph ]
  %.02022 = phi ptr [ %0, %.lr.ph.preheader.new ], [ %i.ae, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.p = getelementptr inbounds nuw i8, ptr %.02022, i64 4
  %i.q = load i32, ptr %.02022, align 1
  %i.r = tail call i32 @llvm.bswap.i32(i32 %i.q)
  %i.s = zext i32 %i.r to i64
  %i.t = add i64 %.01823, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %.02022, i64 8
  %i.v = load i32, ptr %i.p, align 1
  %i.w = tail call i32 @llvm.bswap.i32(i32 %i.v)
  %i.x = zext i32 %i.w to i64
  %i.y = add i64 %i.t, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %.02022, i64 12
  %i.aa = load i32, ptr %i.u, align 1
  %i.ab = tail call i32 @llvm.bswap.i32(i32 %i.aa)
  %i.ac = zext i32 %i.ab to i64
  %i.ad = add i64 %i.y, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %.02022, i64 16 ; 3 uses
  %i.af = load i32, ptr %i.z, align 1
  %i.ag = tail call i32 @llvm.bswap.i32(i32 %i.af)
  %i.ah = zext i32 %i.ag to i64
  %i.ai = add i64 %i.ad, %i.ah                    ; 3 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.preheader.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !9

.lr.ph31:                                         ; preds = %.lr.ph31.preheader, %.lr.ph31
  %.030 = phi i32 [ %i.bk, %.lr.ph31 ], [ 24, %.lr.ph31.preheader ] ; 5 uses
  %.11928 = phi i64 [ %i.bj, %.lr.ph31 ], [ %.018.lcssa, %.lr.ph31.preheader ]
  %.12127 = phi ptr [ %i.be, %.lr.ph31 ], [ %.020.lcssa, %.lr.ph31.preheader ] ; 5 uses
  %niter52 = phi i64 [ %niter52.next.3, %.lr.ph31 ], [ 0, %.lr.ph31.preheader ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.12127, i64 1
  %i.ak = load i8, ptr %.12127, align 1, !tbaa !29
  %i.al = zext i8 %i.ak to i32
  %i.am = shl i32 %i.al, %.030
  %i.an = zext i32 %i.am to i64
  %i.ao = add i64 %.11928, %i.an
  %i.ap = add nsw i32 %.030, -8
  %i.aq = getelementptr inbounds nuw i8, ptr %.12127, i64 2
  %i.ar = load i8, ptr %i.aj, align 1, !tbaa !29
  %i.as = zext i8 %i.ar to i32
  %i.at = shl i32 %i.as, %i.ap
  %i.au = zext i32 %i.at to i64
  %i.av = add i64 %i.ao, %i.au
  %i.aw = add nsw i32 %.030, -16
  %i.ax = getelementptr inbounds nuw i8, ptr %.12127, i64 3
  %i.ay = load i8, ptr %i.aq, align 1, !tbaa !29
  %i.az = zext i8 %i.ay to i32
end_hunk_0
