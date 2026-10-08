Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/sfnt?download=true
inline.NumInlined: 119
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 35
begin_hunk_0_@tt_sbit_decoder_load_compound:bb.a
  %i.af = or disjoint i32 %i.ab, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %.04952, i64 3
  %i.ah = load i8, ptr %i.y, align 1, !tbaa !29
  %i.ai = load i8, ptr %i.ag, align 1, !tbaa !29
  %i.aj = sext i8 %i.ah to i32
  %i.ak = add nsw i32 %3, %i.aj
  %i.al = sext i8 %i.ai to i32
  %i.am = add nsw i32 %4, %i.al
  %i.an = tail call fastcc i32 @tt_sbit_decoder_load_image(ptr noundef %0, i32 noundef %i.af, i32 noundef %i.ak, i32 noundef %i.am, i32 noundef %i.x, i8 noundef zeroext 0) ; 2 uses
  %.not = icmp ne i32 %i.an, 0
  %i.ao = getelementptr inbounds nuw i8, ptr %.04952, i64 4
  %i.ap = add nuw nsw i32 %.04753, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ap, %i.s
  %or.cond = select i1 %.not, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %._crit_edge.loopexit, label %bb.c, !llvm.loop !743

._crit_edge.loopexit:                             ; preds = %bb.c
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !241
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.aq = phi ptr [ %i.b, %.preheader ], [ %.pre, %._crit_edge.loopexit ] ; 5 uses
  %.1 = phi i32 [ 0, %.preheader ], [ %i.an, %._crit_edge.loopexit ]
  %i.ar = shl <2 x i16> %i.d, splat (i16 8)
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.at = ashr exact <2 x i16> %i.ar, splat (i16 8)
  store <2 x i16> %i.at, ptr %i.as, align 2, !tbaa !154
  %i.au = and i16 %i.f, 255
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i16 %i.au, ptr %i.av, align 2, !tbaa !265
  %i.aw = shl <2 x i16> %i.h, splat (i16 8)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 10
  %i.ay = ashr exact <2 x i16> %i.aw, splat (i16 8)
  store <2 x i16> %i.ay, ptr %i.ax, align 2, !tbaa !154
  %i.az = and i16 %i.j, 255
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 14
  store i16 %i.az, ptr %i.ba, align 2, !tbaa !266
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !240
  %i.bd = load <2 x i32>, ptr %i.bc, align 8, !tbaa !30
  %i.be = trunc <2 x i32> %i.bd to <2 x i16>
  %i.bf = and <2 x i16> %i.be, splat (i16 255)
  store <2 x i16> %i.bf, ptr %i.aq, align 2, !tbaa !154
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %._crit_edge
  %.2 = phi i32 [ %.1, %._crit_edge ], [ 3, %bb.b ], [ 3, %bb.a ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal i32 @tt_sbit_decoder_load_png(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 %5) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp slt i64 %i.c, 4
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.f = load i32, ptr %1, align 1
  %i.g = tail call i32 @llvm.bswap.i32(i32 %i.f)  ; 2 uses
  %i.h = zext i32 %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.a, %i.i
  %i.k = icmp ult i64 %i.j, %i.h
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %0, align 8, !tbaa !237
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 152
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !239
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.p = load i8, ptr %i.o, align 2, !tbaa !250
  %i.q = zext i8 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !241
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !238
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !131
  %i.x = tail call fastcc i32 @Load_SBit_Png(ptr noundef %i.n, i32 noundef %3, i32 noundef %4, i32 noundef %i.q, ptr noundef %i.s, ptr noundef %i.w, ptr noundef nonnull %i.e, i32 noundef %i.g, i8 noundef zeroext 0, i8 noundef zeroext 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.x, %bb.c ], [ 3, %bb.a ], [ 3, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @tt_sbit_decoder_alloc_bitmap(ptr nofree noundef captures(none) %0, i8 noundef zeroext range(i8 0, 2) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !240  ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i8, ptr %i.c, align 8, !tbaa !242
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !241  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.h = load i16, ptr %i.g, align 2, !tbaa !252
  %i.i = zext i16 %i.h to i32                     ; 6 uses
  %i.j = load i16, ptr %i.f, align 2, !tbaa !253
  %i.k = zext i16 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.i, ptr %i.l, align 4, !tbaa !256
  store i32 %i.k, ptr %i.b, align 8, !tbaa !255
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.n = load i8, ptr %i.m, align 2, !tbaa !250
  %i.o = zext i8 %i.n to i32                      ; 2 uses
  %i.p = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 %i.o)
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %.split, label %bb.l

.split:                                           ; preds = %bb.b
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.o, i1 true)
  switch i32 %i.r, label %bb.l [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 5, label %bb.g
  ]

bb.c:                                             ; preds = %.split
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  store i8 1, ptr %i.s, align 2, !tbaa !267
  %i.t = add nuw nsw i32 %i.i, 7
  %i.u = lshr i32 %i.t, 3
  br label %bb.h

bb.d:                                             ; preds = %.split
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  store i8 3, ptr %i.v, align 2, !tbaa !267
  %i.w = add nuw nsw i32 %i.i, 3
  %i.x = lshr i32 %i.w, 2
  br label %bb.h

bb.e:                                             ; preds = %.split
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  store i8 4, ptr %i.y, align 2, !tbaa !267
  %i.z = add nuw nsw i32 %i.i, 1
  %i.aa = lshr i32 %i.z, 1
  br label %bb.h

bb.f:                                             ; preds = %.split
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  store i8 2, ptr %i.ab, align 2, !tbaa !267
  br label %bb.h

bb.g:                                             ; preds = %.split
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  store i8 7, ptr %i.ac, align 2, !tbaa !267
  %i.ad = shl nuw nsw i32 %i.i, 2
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sink40 = phi i32 [ %i.ad, %bb.g ], [ %i.i, %bb.f ], [ %i.aa, %bb.e ], [ %i.x, %bb.d ], [ %i.u, %bb.c ]
  %.sink = phi i16 [ 256, %bb.g ], [ 256, %bb.f ], [ 16, %bb.e ], [ 4, %bb.d ], [ 2, %bb.c ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %.sink40, ptr %i.ae, align 8, !tbaa !274
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i16 %.sink, ptr %i.af, align 8, !tbaa !275
  %.not35 = icmp eq i8 %1, 0
  br i1 %.not35, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ag = load ptr, ptr %0, align 8, !tbaa !237
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 152
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !239
  %i.aj = tail call i32 @ft_glyphslot_alloc_bitmap(ptr noundef %i.ai) #27 ; 2 uses
  %.not36 = icmp eq i32 %i.aj, 0
  br i1 %.not36, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !257
  %.not37 = icmp eq ptr %i.al, null
  br i1 %.not37, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 1, ptr %i.am, align 1, !tbaa !243
  br label %bb.l

bb.l:                                             ; preds = %.split, %bb.b, %bb.a, %bb.i, %bb.j, %bb.h, %bb.k
  %.0 = phi i32 [ 6, %bb.a ], [ 0, %bb.h ], [ %i.aj, %bb.i ], [ 0, %bb.k ], [ 0, %bb.j ], [ 3, %bb.b ], [ 3, %.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @Load_SBit_Png(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 0, 256) %3, ptr nofree noundef captures(none) %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i8 noundef zeroext range(i8 0, 2) %8, i8 noundef zeroext range(i8 0, 2) %9) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 17 uses
  %10 = alloca %struct.FT_StreamRec_, align 8     ; 5 uses
  %i.b = alloca ptr, align 8                      ; 23 uses
  %i.c = alloca ptr, align 8                      ; 10 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  %i.f = alloca i32, align 4                      ; 7 uses
  %i.g = alloca i32, align 4                      ; 8 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i32 0, ptr %i.a, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store volatile ptr null, ptr %i.i, align 8, !tbaa !745
  %i.k = or i32 %2, %1
  %or.cond.not = icmp sgt i32 %i.k, -1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 6, ptr %i.a, align 4, !tbaa !30
  br label %bb.ar

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i8 %8, 0                        ; 3 uses
  br i1 %.not, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.m = load i16, ptr %i.l, align 2, !tbaa !252
  %i.n = zext i16 %i.m to i32
  %i.o = add nuw i32 %1, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.q = load i32, ptr %i.p, align 4, !tbaa !256
  %i.r = icmp ugt i32 %i.o, %i.q
  br i1 %i.r, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i16, ptr %4, align 2, !tbaa !253
  %i.t = zext i16 %i.s to i32
  %i.u = add nuw i32 %2, %i.t
  %i.v = load i32, ptr %i.j, align 8, !tbaa !255
  %i.w = icmp ugt i32 %i.u, %i.v
  %i.x = icmp ne i32 %3, 32
  %or.cond3 = or i1 %i.x, %i.w
  br i1 %or.cond3, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 178
  %i.z = load i8, ptr %i.y, align 2, !tbaa !267
  %.not56 = icmp eq i8 %i.z, 7
  br i1 %.not56, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  store i32 6, ptr %i.a, align 4, !tbaa !30
  br label %bb.ar

bb.h:                                             ; preds = %bb.f, %bb.c
  %i.aa = zext i32 %7 to i64
  call void @FT_Stream_OpenMemory(ptr noundef nonnull %10, ptr noundef %6, i64 noundef %i.aa) #27
  %i.ab = call noalias ptr @png_create_read_struct(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.a, ptr noundef nonnull @error_callback, ptr noundef nonnull @warning_callback) #27 ; 3 uses
  store ptr %i.ab, ptr %i.b, align 8, !tbaa !747
  %.not57 = icmp eq ptr %i.ab, null
  br i1 %.not57, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 64, ptr %i.a, align 4, !tbaa !30
  br label %bb.ar

bb.j:                                             ; preds = %bb.h
  %i.ac = call noalias ptr @png_create_info_struct(ptr noundef nonnull %i.ab) #27 ; 2 uses
  store ptr %i.ac, ptr %i.c, align 8, !tbaa !749
  %.not58 = icmp eq ptr %i.ac, null
  br i1 %.not58, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 64, ptr %i.a, align 4, !tbaa !30
  call void @png_destroy_read_struct(ptr noundef nonnull %i.b, ptr noundef null, ptr noundef null) #27
  br label %bb.ar

bb.l:                                             ; preds = %bb.j
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !747
  %i.ae = call ptr @png_set_longjmp_fn(ptr noundef %i.ad, ptr noundef nonnull @longjmp, i64 noundef 200) #27
  %i.af = call i32 @_setjmp(ptr noundef %i.ae) #28
  %.not59 = icmp eq i32 %i.af, 0
  br i1 %.not59, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 3, ptr %i.a, align 4, !tbaa !30
  br label %bb.aq

bb.n:                                             ; preds = %bb.l
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !747
  call void @png_set_read_fn(ptr noundef %i.ag, ptr noundef nonnull %10, ptr noundef nonnull @read_data_from_FT_Stream) #27
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !747
  %11 = load ptr, ptr %i.c, align 8, !tbaa !749
  call void @png_read_info(ptr noundef %i.ah, ptr noundef %11) #27
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !747
  %12 = load ptr, ptr %i.c, align 8, !tbaa !749
  %i.aj = call i32 @png_get_IHDR(ptr noundef %i.ai, ptr noundef %12, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef null, ptr noundef null) #27 ; 0 uses
  %i.ak = load i32, ptr %i.a, align 4, !tbaa !30
  %.not60 = icmp eq i32 %i.ak, 0
  br i1 %.not60, label %bb.o, label %bb.aq

bb.o:                                             ; preds = %bb.n
  br i1 %.not, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.al = load i32, ptr %i.d, align 4, !tbaa !30
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.an = load i16, ptr %i.am, align 2, !tbaa !252
  %i.ao = zext i16 %i.an to i32
  %.not61 = icmp eq i32 %i.al, %i.ao
  br i1 %.not61, label %bb.q, label %bb.aq

bb.q:                                             ; preds = %bb.p
  %i.ap = load i32, ptr %i.e, align 4, !tbaa !30
  %i.aq = load i16, ptr %4, align 2, !tbaa !253
  %i.ar = zext i16 %i.aq to i32
  %.not62 = icmp eq i32 %i.ap, %i.ar
  br i1 %.not62, label %bb.t, label %bb.aq

.critedge:                                        ; preds = %bb.o
  %i.as = load i32, ptr %i.e, align 4, !tbaa !30  ; 3 uses
  %i.at = icmp ugt i32 %i.as, 32767
  %i.au = load i32, ptr %i.d, align 4             ; 4 uses
  %i.av = icmp ugt i32 %i.au, 32767
  %or.cond5 = select i1 %i.at, i1 true, i1 %i.av
  br i1 %or.cond5, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.critedge
  store i32 10, ptr %i.a, align 4, !tbaa !30
  br label %bb.aq

bb.s:                                             ; preds = %.critedge
  %i.aw = trunc nuw nsw i32 %i.au to i16
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.aw, ptr %i.ax, align 2, !tbaa !252
  %i.ay = trunc nuw nsw i32 %i.as to i16
  store i16 %i.ay, ptr %4, align 2, !tbaa !253
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 %i.au, ptr %i.az, align 4, !tbaa !256
  store i32 %i.as, ptr %i.j, align 8, !tbaa !255
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 178
  store i8 7, ptr %i.ba, align 2, !tbaa !267
  %i.bb = shl nuw nsw i32 %i.au, 2
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 %i.bb, ptr %i.bc, align 8, !tbaa !274
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i16 256, ptr %i.bd, align 8, !tbaa !275
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.s
  %i.be = load i32, ptr %i.g, align 4, !tbaa !30  ; 2 uses
  %i.bf = icmp eq i32 %i.be, 3
  br i1 %i.bf, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bg = load ptr, ptr %i.b, align 8, !tbaa !747
  call void @png_set_palette_to_rgb(ptr noundef %i.bg) #27
  %.pr = load i32, ptr %i.g, align 4, !tbaa !30
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bh = phi i32 [ %.pr, %bb.u ], [ %i.be, %bb.t ]
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bj = load ptr, ptr %i.b, align 8, !tbaa !747
  call void @png_set_expand_gray_1_2_4_to_8(ptr noundef %i.bj) #27
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bk = load ptr, ptr %i.b, align 8, !tbaa !747
  %13 = load ptr, ptr %i.c, align 8, !tbaa !749
  %i.bl = call i32 @png_get_valid(ptr noundef %i.bk, ptr noundef %13, i32 noundef 16) #27
  %.not63 = icmp eq i32 %i.bl, 0
  br i1 %.not63, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bm = load ptr, ptr %i.b, align 8, !tbaa !747
  call void @png_set_tRNS_to_alpha(ptr noundef %i.bm) #27
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bn = load i32, ptr %i.f, align 4, !tbaa !30  ; 2 uses
  %i.bo = icmp eq i32 %i.bn, 16
  br i1 %i.bo, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bp = load ptr, ptr %i.b, align 8, !tbaa !747
  call void @png_set_strip_16(ptr noundef %i.bp) #27
  %.pr69 = load i32, ptr %i.f, align 4, !tbaa !30
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.bq = phi i32 [ %.pr69, %bb.aa ], [ %i.bn, %bb.z ]
  %i.br = icmp slt i32 %i.bq, 8
  br i1 %i.br, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bs = load ptr, ptr %i.b, align 8, !tbaa !747
  call void @png_set_packing(ptr noundef %i.bs) #27
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.bt = load i32, ptr %i.g, align 4, !tbaa !30
  %i.bu = and i32 %i.bt, -5
  %or.cond7 = icmp eq i32 %i.bu, 0
  br i1 %or.cond7, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.bv = load ptr, ptr %i.b, align 8, !tbaa !747
  call void @png_set_gray_to_rgb(ptr noundef %i.bv) #27
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.bw = load i32, ptr %i.h, align 4, !tbaa !30
  %.not64 = icmp eq i32 %i.bw, 0
  br i1 %.not64, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bx = load ptr, ptr %i.b, align 8, !tbaa !747
  %i.by = call i32 @png_set_interlace_handling(ptr noundef %i.bx) #27 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.bz = load ptr, ptr %i.b, align 8, !tbaa !747
  call void @png_set_filler(ptr noundef %i.bz, i32 noundef 255, i32 noundef 1) #27
  %i.ca = load ptr, ptr %i.b, align 8, !tbaa !747
  %14 = load ptr, ptr %i.c, align 8, !tbaa !749
  call void @png_read_update_info(ptr noundef %i.ca, ptr noundef %14) #27
  %i.cb = load ptr, ptr %i.b, align 8, !tbaa !747
  %15 = load ptr, ptr %i.c, align 8, !tbaa !749
  %i.cc = call i32 @png_get_IHDR(ptr noundef %i.cb, ptr noundef %15, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef null, ptr noundef null) #27 ; 0 uses
  %i.cd = load i32, ptr %i.f, align 4, !tbaa !30
  %.not65 = icmp eq i32 %i.cd, 8
  br i1 %.not65, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ce = load i32, ptr %i.g, align 4, !tbaa !30  ; 2 uses
  %i.cf = icmp eq i32 %i.ce, 2
  switch i32 %i.ce, label %bb.aj [
    i32 6, label %bb.ak
    i32 2, label %bb.ak
  ]

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  store i32 3, ptr %i.a, align 4, !tbaa !30
  br label %bb.aq

bb.ak:                                            ; preds = %bb.ai, %bb.ai
  %.not66 = icmp eq i8 %9, 0
  br i1 %.not66, label %bb.al, label %bb.aq

bb.al:                                            ; preds = %bb.ak
  %i.cg = load ptr, ptr %i.b, align 8, !tbaa !747
  %convert_bytes_to_data.premultiply_data = select i1 %i.cf, ptr @convert_bytes_to_data, ptr @premultiply_data
  call void @png_set_read_user_transform_fn(ptr noundef %i.cg, ptr noundef nonnull %convert_bytes_to_data.premultiply_data) #27
  br i1 %.not, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ch = call i32 @ft_glyphslot_alloc_bitmap(ptr noundef %0) #27 ; 2 uses
  store i32 %i.ch, ptr %i.a, align 4, !tbaa !30
  %.not67 = icmp eq i32 %i.ch, 0
  br i1 %.not67, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.ci = load i32, ptr %i.e, align 4, !tbaa !30
  %i.cj = zext i32 %i.ci to i64
  %i.ck = call ptr @ft_mem_qrealloc(ptr noundef %5, i64 noundef 8, i64 noundef 0, i64 noundef %i.cj, ptr noundef null, ptr noundef nonnull %i.a) #27
  store volatile ptr %i.ck, ptr %i.i, align 8, !tbaa !745
  %i.cl = load i32, ptr %i.a, align 4, !tbaa !30
  %.not68 = icmp eq i32 %i.cl, 0
  br i1 %.not68, label %.preheader, label %bb.ao

.preheader:                                       ; preds = %bb.an
  %i.cm = load i32, ptr %i.e, align 4, !tbaa !30
  %.fr = freeze i32 %i.cm                         ; 4 uses
  %i.cn = icmp sgt i32 %.fr, 0
  br i1 %i.cn, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !274
  %i.cr = shl nuw nsw i32 %1, 2
  %i.cs = zext nneg i32 %i.cr to i64              ; 3 uses
  %i.ct = sext i32 %2 to i64                      ; 3 uses
  %i.cu = sext i32 %i.cq to i64                   ; 3 uses
  %wide.trip.count = zext nneg i32 %.fr to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.cv = icmp eq i32 %.fr, 1
  br i1 %i.cv, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i32 64, ptr %i.a, align 4, !tbaa !30
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ap, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.ap ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.ap ]
  %i.cw = load ptr, ptr %i.co, align 8, !tbaa !257
  %i.cx = add nuw nsw i64 %indvars.iv, %i.ct
  %i.cy = mul nsw i64 %i.cx, %i.cu
  %i.cz = getelementptr inbounds i8, ptr %i.cw, i64 %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cs
  %.0..0..0..0. = load volatile ptr, ptr %i.i, align 8, !tbaa !745
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.0..0..0..0., i64 %indvars.iv
  store ptr %i.da, ptr %i.db, align 8, !tbaa !141
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.dc = load ptr, ptr %i.co, align 8, !tbaa !257
  %i.dd = add nuw nsw i64 %indvars.iv.next, %i.ct
  %i.de = mul nsw i64 %i.dd, %i.cu
  %i.df = getelementptr inbounds i8, ptr %i.dc, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.cs
  %.0..0..0..0..1 = load volatile ptr, ptr %i.i, align 8, !tbaa !745
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %.0..0..0..0..1, i64 %indvars.iv.next
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !141
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.ap, !llvm.loop !744

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.ap
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod78 = trunc i32 %.fr to i1
  call void @llvm.assume(i1 %lcmp.mod78)
  %i.di = load ptr, ptr %i.co, align 8, !tbaa !257
  %i.dj = add nuw nsw i64 %indvars.iv.epil.init, %i.ct
  %i.dk = mul nsw i64 %i.dj, %i.cu
  %i.dl = getelementptr inbounds i8, ptr %i.di, i64 %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.cs
  %.0..0..0..0..epil = load volatile ptr, ptr %i.i, align 8, !tbaa !745
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.0..0..0..0..epil, i64 %indvars.iv.epil.init
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !141
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader
  %i.do = load ptr, ptr %i.b, align 8, !tbaa !747
  %.0..0..0..0.10 = load volatile ptr, ptr %i.i, align 8, !tbaa !745
  call void @png_read_image(ptr noundef %i.do, ptr noundef %.0..0..0..0.10) #27
  %i.dp = load ptr, ptr %i.b, align 8, !tbaa !747
  %16 = load ptr, ptr %i.c, align 8, !tbaa !749
  call void @png_read_end(ptr noundef %i.dp, ptr noundef %16) #27
  br label %bb.aq

bb.aq:                                            ; preds = %bb.m, %bb.r, %bb.aj, %bb.ao, %._crit_edge, %bb.q, %bb.p, %bb.n, %bb.ak, %bb.am
  %.0..0..0..0.11 = load volatile ptr, ptr %i.i, align 8, !tbaa !745
  call void @ft_mem_free(ptr noundef %5, ptr noundef %.0..0..0..0.11) #27
  store volatile ptr null, ptr %i.i, align 8, !tbaa !745
  call void @png_destroy_read_struct(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef null) #27
  call void @FT_Stream_Close(ptr noundef nonnull %10) #27
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.k, %bb.i, %bb.g, %bb.b
  %i.dq = load i32, ptr %i.a, align 4, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i32 %i.dq
}

declare noalias ptr @png_create_read_struct(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: noreturn nounwind uwtable
define internal void @error_callback(ptr noundef %0, ptr nofree readnone captures(none) %1) #18 {
bb.a:
  %i.a = tail call ptr @png_get_error_ptr(ptr noundef %0) #27
  store i32 64, ptr %i.a, align 4, !tbaa !30
  %i.b = tail call ptr @png_set_longjmp_fn(ptr noundef %0, ptr noundef nonnull @longjmp, i64 noundef 200) #27
  tail call void @longjmp(ptr noundef %i.b, i32 noundef 1) #29
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @warning_callback(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #8 {
bb.a:
  ret void
}

declare noalias ptr @png_create_info_struct(ptr noundef) local_unnamed_addr #10

declare void @png_destroy_read_struct(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

declare ptr @png_set_longjmp_fn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: noreturn nounwind
declare void @longjmp(ptr noundef, i32 noundef) #19

declare void @png_set_read_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal void @read_data_from_FT_Stream(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call ptr @png_get_io_ptr(ptr noundef %0) #27 ; 3 uses
  %i.b = tail call i32 @FT_Stream_EnterFrame(ptr noundef %i.a, i64 noundef %2) #27
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @png_get_error_ptr(ptr noundef %0) #27
  store i32 84, ptr %i.c, align 4, !tbaa !30
  tail call void @png_error(ptr noundef %0, ptr noundef null) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !137
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.e, i64 %2, i1 false)
  tail call void @FT_Stream_ExitFrame(ptr noundef %i.a) #27
  ret void
}

declare void @png_read_info(ptr noundef, ptr noundef) local_unnamed_addr #10

declare i32 @png_get_IHDR(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

declare void @png_set_palette_to_rgb(ptr noundef) local_unnamed_addr #10

declare void @png_set_expand_gray_1_2_4_to_8(ptr noundef) local_unnamed_addr #10

declare i32 @png_get_valid(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

declare void @png_set_tRNS_to_alpha(ptr noundef) local_unnamed_addr #10

declare void @png_set_strip_16(ptr noundef) local_unnamed_addr #10

declare void @png_set_packing(ptr noundef) local_unnamed_addr #10

declare void @png_set_gray_to_rgb(ptr noundef) local_unnamed_addr #10

declare i32 @png_set_interlace_handling(ptr noundef) local_unnamed_addr #10

declare void @png_set_filler(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare void @png_read_update_info(ptr noundef, ptr noundef) local_unnamed_addr #10

declare void @png_set_read_user_transform_fn(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @premultiply_data(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !348  ; 4 uses
  %i.c = icmp ugt i64 %i.b, 15
  br i1 %i.c, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = trunc i64 %i.b to i32
  %i.e = add i32 %i.d, -15                        ; 2 uses
  %.not77 = icmp eq i32 %i.e, 0
  br i1 %.not77, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.f = zext i32 %i.e to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv ; 2 uses
  %.0.copyload = load <8 x i16>, ptr %i.g, align 1 ; 2 uses
  %i.h = and <8 x i16> %.0.copyload, splat (i16 255)
  %i.i = lshr <8 x i16> %.0.copyload, splat (i16 8) ; 2 uses
  %i.j = shufflevector <8 x i16> %i.i, <8 x i16> poison, <8 x i32> <i32 1, i32 1, i32 3, i32 3, i32 5, i32 5, i32 7, i32 7> ; 2 uses
  %i.k = or <8 x i16> %i.i, <i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255>
  %i.l = shufflevector <8 x i16> %i.h, <8 x i16> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.m = mul nuw <8 x i16> %i.l, %i.j
  %i.n = mul nuw <8 x i16> %i.k, %i.j
  %i.o = add <8 x i16> %i.m, splat (i16 128)      ; 2 uses
  %i.p = add <8 x i16> %i.n, splat (i16 128)      ; 2 uses
  %i.q = lshr <8 x i16> %i.o, splat (i16 8)
  %i.r = add <8 x i16> %i.q, %i.o
  %i.s = lshr <8 x i16> %i.r, splat (i16 8)
  %i.t = lshr <8 x i16> %i.p, splat (i16 8)
  %i.u = add <8 x i16> %i.t, %i.p
  %i.v = and <8 x i16> %i.u, splat (i16 -256)
  %i.w = or disjoint <8 x i16> %i.s, %i.v
  store <8 x i16> %i.w, ptr %i.g, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16 ; 3 uses
  %i.x = icmp samesign ult i64 %indvars.iv.next, %i.f
  br i1 %i.x, label %.lr.ph, label %.loopexit.loopexit, !llvm.loop !750

.loopexit.loopexit:                               ; preds = %.lr.ph
  %i.y = trunc nuw i64 %indvars.iv.next to i32
  %.pre = load i64, ptr %i.a, align 8, !tbaa !348
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b, %bb.a
  %i.z = phi i64 [ %i.b, %bb.a ], [ %i.b, %bb.b ], [ %.pre, %.loopexit.loopexit ]
  %.1 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.y, %.loopexit.loopexit ] ; 2 uses
  %i.aa = trunc i64 %i.z to i32                   ; 2 uses
  %i.ab = icmp ult i32 %.1, %i.aa
  br i1 %i.ab, label %.lr.ph76, label %._crit_edge

.lr.ph76:                                         ; preds = %.loopexit, %bb.g
  %.275 = phi i32 [ %i.bi, %bb.g ], [ %.1, %.loopexit ] ; 2 uses
  %i.ac = zext i32 %.275 to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %i.ac ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 3
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !29  ; 3 uses
  %i.ag = zext i8 %i.af to i32                    ; 3 uses
  %i.ah = icmp eq i8 %i.af, 0
  br i1 %i.ah, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph76
  store i32 0, ptr %i.ad, align 1
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph76
  %i.ai = load i8, ptr %i.ad, align 1, !tbaa !29  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 1 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !29  ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 2 ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !29  ; 2 uses
  %.not = icmp eq i8 %i.af, -1
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = zext i8 %i.ai to i32
  %i.ao = zext i8 %i.ak to i32
  %i.ap = zext i8 %i.am to i32
  %i.aq = mul nuw nsw i32 %i.an, %i.ag
  %i.ar = add nuw nsw i32 %i.aq, 128              ; 2 uses
  %i.as = lshr i32 %i.ar, 8
  %i.at = add nuw nsw i32 %i.as, %i.ar
  %i.au = lshr i32 %i.at, 8
  %i.av = mul nuw nsw i32 %i.ao, %i.ag
  %i.aw = add nuw nsw i32 %i.av, 128              ; 2 uses
  %i.ax = lshr i32 %i.aw, 8
  %i.ay = add nuw nsw i32 %i.ax, %i.aw
  %i.az = lshr i32 %i.ay, 8
  %i.ba = mul nuw nsw i32 %i.ap, %i.ag
  %i.bb = add nuw nsw i32 %i.ba, 128              ; 2 uses
  %i.bc = lshr i32 %i.bb, 8
  %i.bd = add nuw nsw i32 %i.bc, %i.bb
  %i.be = lshr i32 %i.bd, 8
  %i.bf = trunc nuw i32 %i.be to i8
end_hunk_0
