Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/imreadwrite?download=true
inline.NumInlined: 679
inline.NumDeleted: 153
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 89
begin_hunk_0_@stbi_is_16_bit_from_callbacks:bb.a
bb.a:
  %2 = alloca %struct.stbi__png, align 8          ; 7 uses
  %3 = alloca %struct.stbi__context, align 8      ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !25
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %1, ptr %i.b, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 52
  store i32 128, ptr %i.c, align 4, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store i32 1, ptr %i.d, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 184 ; 3 uses
  store i32 0, ptr %i.e, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 208 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !32
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 3 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !33
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.j = call noundef i32 %i.i(ptr noundef %1, ptr noundef nonnull %i.f, i32 noundef 128), !inline_history !7 ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !33
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !32
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = load i32, ptr %i.e, align 8, !tbaa !31
  %i.r = add nsw i32 %i.q, %i.p
  store i32 %i.r, ptr %i.e, align 8, !tbaa !31
  %i.s = icmp eq i32 %i.j, 0
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.d, align 8, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 57
  store i8 0, ptr %i.f, align 8, !tbaa !35
  br label %_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit

bb.c:                                             ; preds = %bb.a
  %i.u = sext i32 %i.j to i64
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 %i.u
  br label %_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit

_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit: ; preds = %bb.b, %bb.c
  %.sink.i.i = phi ptr [ %i.t, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !33
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 200
  store ptr %.sink.i.i, ptr %i.w, align 8, !tbaa !36
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 216
  store ptr %.sink.i.i, ptr %i.x, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  store ptr %3, ptr %2, align 8, !tbaa !47
  %i.y = call fastcc noundef i32 @_ZL20stbi__parse_png_fileP9stbi__pngii(ptr noundef nonnull %2, i32 noundef 2, i32 noundef 0)
  %.not.i.i.i = icmp ne i32 %i.y, 0
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aa = load i32, ptr %i.z, align 8
  %.not1.i.i = icmp eq i32 %i.aa, 16
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %.not1.i.i, i1 false
  br i1 %or.cond.i.i, label %_ZL14stbi__png_is16P13stbi__context.exit.i, label %bb.d

_ZL14stbi__png_is16P13stbi__context.exit.i:       ; preds = %_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %_ZL16stbi__is_16_mainP13stbi__context.exit

bb.d:                                             ; preds = %_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit
  %i.ab = load ptr, ptr %2, align 8, !tbaa !47    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 208
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 192
  %i.ae = load <2 x ptr>, ptr %i.ac, align 8, !tbaa !22
  store <2 x ptr> %i.ae, ptr %i.ad, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  %i.af = call fastcc noundef i32 @_ZL14stbi__pnm_infoP13stbi__contextPiS1_S1_(ptr noundef nonnull %3, ptr noundef null, ptr noundef null, ptr noundef null)
  %.not.i = icmp eq i32 %i.af, 16
  %..i = zext i1 %.not.i to i32
  br label %_ZL16stbi__is_16_mainP13stbi__context.exit

_ZL16stbi__is_16_mainP13stbi__context.exit:       ; preds = %_ZL14stbi__png_is16P13stbi__context.exit.i, %bb.d
  %.0.i = phi i32 [ 1, %_ZL14stbi__png_is16P13stbi__context.exit.i ], [ %..i, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @stbi_flip_vertically_on_write(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  store i32 %0, ptr @_ZL30stbi__flip_vertically_on_write, align 4, !tbaa !23
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @stbi_write_bmp_to_func(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #4 {
bb.a:
  %6 = alloca %struct.stbi__write_context, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  store ptr %0, ptr %6, align 8, !tbaa !114
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !115
  %i.c = call fastcc noundef i32 @_ZL19stbi_write_bmp_coreP19stbi__write_contextiiiPKv(ptr noundef %6, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  ret i32 %i.c
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL19stbi_write_bmp_coreP19stbi__write_contextiiiPKv(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #4 {
bb.a:
  %.not = icmp eq i32 %3, 4
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = and i32 %1, 3                            ; 2 uses
  %i.b = mul nsw i32 %1, 3
  %i.c = add nsw i32 %i.b, %i.a
  %i.d = mul nsw i32 %i.c, %2
  %i.e = add nsw i32 %i.d, 54
  %i.f = tail call noundef i32 (ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, ...) @_ZL14stbiw__outfileP19stbi__write_contextiiiiiiPviiPKcz(ptr noundef %0, i32 poison, i32 poison, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 1, ptr noundef %4, i32 noundef 0, i32 noundef %i.a, ptr noundef nonnull @.str.82, i32 noundef 66, i32 noundef 77, i32 noundef %i.e, i32 noundef 0, i32 noundef 0, i32 noundef 54, i32 noundef 40, i32 noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 24, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = shl i32 %1, 2
  %i.h = mul i32 %i.g, %2
  %i.i = add nsw i32 %i.h, 122
  %i.j = tail call noundef i32 (ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, ...) @_ZL14stbiw__outfileP19stbi__write_contextiiiiiiPviiPKcz(ptr noundef %0, i32 poison, i32 poison, i32 noundef %1, i32 noundef %2, i32 noundef 4, i32 noundef 1, ptr noundef %4, i32 noundef 1, i32 noundef 0, ptr noundef nonnull @.str.83, i32 noundef 66, i32 noundef 77, i32 noundef %i.i, i32 noundef 0, i32 noundef 0, i32 noundef 122, i32 noundef 108, i32 noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 32, i32 noundef 3, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 16711680, i32 noundef 65280, i32 noundef 255, i32 noundef -16777216, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ %i.j, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define internal noundef range(i32 0, 2) i32 @_ZL14stbiw__outfileP19stbi__write_contextiiiiiiPviiPKcz(ptr noundef nonnull %0, i32 %1, i32 %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef range(i32 0, 2) %6, ptr nofree noundef readonly captures(none) %7, i32 noundef range(i32 0, 2) %8, i32 noundef range(i32 0, 4) %9, ptr nofree noundef readonly captures(none) %10, ...) unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %11 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.b = or i32 %4, %3
  %or.cond.not = icmp sgt i32 %i.b, -1
  br i1 %or.cond.not, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  call void @llvm.va_start.p0(ptr nonnull %11)
  call fastcc void @_ZL14stbiw__writefvP19stbi__write_contextPKcP13__va_list_tag(ptr noundef %0, ptr noundef %10, ptr noundef %11)
  call void @llvm.va_end.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store i32 0, ptr %i.a, align 4, !tbaa !23
  %i.c = icmp eq i32 %4, 0
  br i1 %i.c, label %_ZL19stbiw__write_pixelsP19stbi__write_contextiiiiiPviii.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @_ZL30stbi__flip_vertically_on_write, align 4, !tbaa !23
  %.not.i = icmp eq i32 %i.d, 0                   ; 3 uses
  %spec.select.i = select i1 %.not.i, i32 -1, i32 1 ; 2 uses
  %i.e = add nsw i32 %4, -1
  %.027.i = select i1 %.not.i, i32 %i.e, i32 0    ; 2 uses
  %.026.i = select i1 %.not.i, i32 -1, i32 %4     ; 2 uses
  %.not35.i = icmp eq i32 %3, 0
  %.not.i.i = icmp eq i32 %8, 0                   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %.not33.i.i = icmp eq i32 %6, 0
  %i.i = sext i32 %5 to i64                       ; 2 uses
  br i1 %.not35.i, label %.preheader.i, label %.preheader.us.preheader.i

.preheader.us.preheader.i:                        ; preds = %bb.c
  %i.j = zext nneg i32 %.027.i to i64
  %i.k = sext i32 %spec.select.i to i64
  %i.l = zext nneg i32 %3 to i64                  ; 2 uses
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %_ZL18stbiw__write_flushP19stbi__write_context.exit.us.i, %.preheader.us.preheader.i
  %indvars.iv38.i = phi i64 [ %i.j, %.preheader.us.preheader.i ], [ %indvars.iv.next39.i, %_ZL18stbiw__write_flushP19stbi__write_context.exit.us.i ] ; 2 uses
  %i.m = mul nsw i64 %indvars.iv38.i, %i.l
  br label %bb.d

bb.d:                                             ; preds = %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit.us.i, %.preheader.us.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next.i, %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit.us.i ] ; 2 uses
  %i.n = add nsw i64 %indvars.iv.i, %i.m
  %i.o = mul nsw i64 %i.n, %i.i
  %i.p = getelementptr inbounds i8, ptr %7, i64 %i.o ; 9 uses
  switch i32 %5, label %bb.n [
    i32 2, label %bb.i
    i32 1, label %bb.i
    i32 4, label %bb.e
    i32 3, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  br i1 %.not.i.i, label %.preheader.i.us.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %i.r = load i8, ptr %i.q, align 1, !tbaa !35
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !35
  %i.u = load i8, ptr %i.p, align 1, !tbaa !35
  %i.v = load i32, ptr %i.f, align 8, !tbaa !116  ; 3 uses
  %12 = add i32 %i.v, 3
  %i.w = icmp ult i32 %12, 65
  br i1 %i.w, label %_ZL13stbiw__write3P19stbi__write_contexthhh.exit36.i.us.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %0, align 8, !tbaa !114
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !115
  call void %i.x(ptr noundef %i.y, ptr noundef nonnull %i.h, i32 noundef %i.v), !inline_history !521
  br label %_ZL13stbiw__write3P19stbi__write_contexthhh.exit36.i.us.i

_ZL13stbiw__write3P19stbi__write_contexthhh.exit36.i.us.i: ; preds = %bb.g, %bb.f
  %i.z = phi i32 [ 0, %bb.g ], [ %i.v, %bb.f ]    ; 2 uses
  %i.aa = add nsw i32 %i.z, 3
  store i32 %i.aa, ptr %i.f, align 8, !tbaa !116
  %i.ab = sext i32 %i.z to i64
  %i.ac = getelementptr inbounds i8, ptr %i.h, i64 %i.ab ; 3 uses
  store i8 %i.r, ptr %i.ac, align 1, !tbaa !35
  %i.ad = getelementptr i8, ptr %i.ac, i64 1
  store i8 %i.t, ptr %i.ad, align 1, !tbaa !35
  %i.ae = getelementptr i8, ptr %i.ac, i64 2
  store i8 %i.u, ptr %i.ae, align 1, !tbaa !35
  br label %bb.n

.preheader.i.us.i:                                ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 3
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !35
  %i.ah = zext i8 %i.ag to i32                    ; 3 uses
  %i.ai = load i8, ptr %i.p, align 1, !tbaa !35
  %i.aj = xor i8 %i.ai, -1
  %.neg47.i.us.i = zext i8 %i.aj to i32
  %.neg48.i.us.i = mul nuw nsw i32 %.neg47.i.us.i, %i.ah
  %.lhs.trunc.i.us.i = trunc nuw i32 %.neg48.i.us.i to i16
  %i.ak = udiv i16 %.lhs.trunc.i.us.i, 255
  %.zext.i.us.i = trunc nuw i16 %i.ak to i8
  %i.al = xor i8 %.zext.i.us.i, -1
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !35
  %i.ao = zext i8 %i.an to i32
  %i.ap = mul nuw nsw i32 %i.ao, %i.ah
  %.lhs.trunc41.i.us.i = trunc nuw i32 %i.ap to i16
  %i.aq = udiv i16 %.lhs.trunc41.i.us.i, 255
  %i.ar = trunc nuw i16 %i.aq to i8
  %i.as = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %i.at = load i8, ptr %i.as, align 1, !tbaa !35
  %i.au = xor i8 %i.at, -1
  %.neg.i.us.i = zext i8 %i.au to i32
  %.neg49.i.us.i = mul nuw nsw i32 %.neg.i.us.i, %i.ah
  %.lhs.trunc45.i.us.i = trunc nuw i32 %.neg49.i.us.i to i16
  %i.av = udiv i16 %.lhs.trunc45.i.us.i, 255
  %.zext46.i.us.i = trunc nuw i16 %i.av to i8
  %i.aw = xor i8 %.zext46.i.us.i, -1
  %i.ax = load i32, ptr %i.f, align 8, !tbaa !116 ; 3 uses
  %13 = add i32 %i.ax, 3
  %i.ay = icmp ult i32 %13, 65
  br i1 %i.ay, label %.thread.i.us.i, label %bb.h

bb.h:                                             ; preds = %.preheader.i.us.i
  %i.az = load ptr, ptr %0, align 8, !tbaa !114
  %i.ba = load ptr, ptr %i.g, align 8, !tbaa !115
  call void %i.az(ptr noundef %i.ba, ptr noundef nonnull %i.h, i32 noundef %i.ax), !inline_history !521
  br label %.thread.i.us.i

.thread.i.us.i:                                   ; preds = %bb.h, %.preheader.i.us.i
  %i.bb = phi i32 [ 0, %bb.h ], [ %i.ax, %.preheader.i.us.i ] ; 2 uses
  %i.bc = add nsw i32 %i.bb, 3
  store i32 %i.bc, ptr %i.f, align 8, !tbaa !116
  %i.bd = sext i32 %i.bb to i64
  %i.be = getelementptr inbounds i8, ptr %i.h, i64 %i.bd ; 3 uses
  store i8 %i.aw, ptr %i.be, align 1, !tbaa !35
  %i.bf = getelementptr i8, ptr %i.be, i64 1
  store i8 %i.ar, ptr %i.bf, align 1, !tbaa !35
  %i.bg = getelementptr i8, ptr %i.be, i64 2
  store i8 %i.al, ptr %i.bg, align 1, !tbaa !35
  br label %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit.us.i

bb.i:                                             ; preds = %bb.d, %bb.d
  %i.bh = load i8, ptr %i.p, align 1, !tbaa !35   ; 4 uses
  %i.bi = load i32, ptr %i.f, align 8, !tbaa !116 ; 6 uses
  br i1 %.not33.i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %14 = add i32 %i.bi, 3
  %i.bj = icmp ult i32 %14, 65
  br i1 %i.bj, label %_ZL13stbiw__write3P19stbi__write_contexthhh.exit.i.us.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = load ptr, ptr %0, align 8, !tbaa !114
  %i.bl = load ptr, ptr %i.g, align 8, !tbaa !115
  call void %i.bk(ptr noundef %i.bl, ptr noundef nonnull %i.h, i32 noundef %i.bi), !inline_history !521
  br label %_ZL13stbiw__write3P19stbi__write_contexthhh.exit.i.us.i

_ZL13stbiw__write3P19stbi__write_contexthhh.exit.i.us.i: ; preds = %bb.k, %bb.j
  %i.bm = phi i32 [ 0, %bb.k ], [ %i.bi, %bb.j ]  ; 2 uses
  %i.bn = add nsw i32 %i.bm, 3
  store i32 %i.bn, ptr %i.f, align 8, !tbaa !116
  %i.bo = sext i32 %i.bm to i64
  %i.bp = getelementptr inbounds i8, ptr %i.h, i64 %i.bo ; 3 uses
  store i8 %i.bh, ptr %i.bp, align 1, !tbaa !35
  %i.bq = getelementptr i8, ptr %i.bp, i64 1
  store i8 %i.bh, ptr %i.bq, align 1, !tbaa !35
  %i.br = getelementptr i8, ptr %i.bp, i64 2
  store i8 %i.bh, ptr %i.br, align 1, !tbaa !35
  br label %bb.n

bb.l:                                             ; preds = %bb.i
  %15 = add i32 %i.bi, 1
  %i.bs = icmp ult i32 %15, 65
  br i1 %i.bs, label %_ZL13stbiw__write1P19stbi__write_contexth.exit.i.us.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bt = load ptr, ptr %0, align 8, !tbaa !114
  %i.bu = load ptr, ptr %i.g, align 8, !tbaa !115
  call void %i.bt(ptr noundef %i.bu, ptr noundef nonnull %i.h, i32 noundef %i.bi), !inline_history !522
  br label %_ZL13stbiw__write1P19stbi__write_contexth.exit.i.us.i

_ZL13stbiw__write1P19stbi__write_contexth.exit.i.us.i: ; preds = %bb.m, %bb.l
  %i.bv = phi i32 [ 0, %bb.m ], [ %i.bi, %bb.l ]  ; 2 uses
  %i.bw = add nsw i32 %i.bv, 1
  store i32 %i.bw, ptr %i.f, align 8, !tbaa !116
  %i.bx = sext i32 %i.bv to i64
  %i.by = getelementptr inbounds i8, ptr %i.h, i64 %i.bx
  store i8 %i.bh, ptr %i.by, align 1, !tbaa !35
  br label %bb.n

bb.n:                                             ; preds = %_ZL13stbiw__write1P19stbi__write_contexth.exit.i.us.i, %_ZL13stbiw__write3P19stbi__write_contexthhh.exit.i.us.i, %_ZL13stbiw__write3P19stbi__write_contexthhh.exit36.i.us.i, %bb.d
  br i1 %.not.i.i, label %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit.us.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bz = getelementptr i8, ptr %i.p, i64 %i.i
  %i.ca = getelementptr i8, ptr %i.bz, i64 -1
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !35
  %i.cc = load i32, ptr %i.f, align 8, !tbaa !116 ; 3 uses
  %16 = add i32 %i.cc, 1
  %i.cd = icmp ult i32 %16, 65
  br i1 %i.cd, label %_ZL13stbiw__write1P19stbi__write_contexth.exit37.i.us.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ce = load ptr, ptr %0, align 8, !tbaa !114
  %i.cf = load ptr, ptr %i.g, align 8, !tbaa !115
  call void %i.ce(ptr noundef %i.cf, ptr noundef nonnull %i.h, i32 noundef %i.cc), !inline_history !522
  br label %_ZL13stbiw__write1P19stbi__write_contexth.exit37.i.us.i

_ZL13stbiw__write1P19stbi__write_contexth.exit37.i.us.i: ; preds = %bb.p, %bb.o
  %i.cg = phi i32 [ 0, %bb.p ], [ %i.cc, %bb.o ]  ; 2 uses
  %i.ch = add nsw i32 %i.cg, 1
  store i32 %i.ch, ptr %i.f, align 8, !tbaa !116
  %i.ci = sext i32 %i.cg to i64
  %i.cj = getelementptr inbounds i8, ptr %i.h, i64 %i.ci
  store i8 %i.cb, ptr %i.cj, align 1, !tbaa !35
  br label %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit.us.i

_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit.us.i: ; preds = %_ZL13stbiw__write1P19stbi__write_contexth.exit37.i.us.i, %bb.n, %.thread.i.us.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.l
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %bb.d, !llvm.loop !523

bb.q:                                             ; preds = %._crit_edge.us.i
  %i.ck = load ptr, ptr %0, align 8, !tbaa !114
  %i.cl = load ptr, ptr %i.g, align 8, !tbaa !115
  call void %i.ck(ptr noundef %i.cl, ptr noundef nonnull %i.h, i32 noundef %i.cp), !inline_history !524
  store i32 0, ptr %i.f, align 8, !tbaa !116
  br label %_ZL18stbiw__write_flushP19stbi__write_context.exit.us.i

_ZL18stbiw__write_flushP19stbi__write_context.exit.us.i: ; preds = %._crit_edge.us.i, %bb.q
  %i.cm = load ptr, ptr %0, align 8, !tbaa !114
  %i.cn = load ptr, ptr %i.g, align 8, !tbaa !115
  call void %i.cm(ptr noundef %i.cn, ptr noundef nonnull %i.a, i32 noundef range(i32 0, 4) %9), !inline_history !525
  %indvars.iv.next39.i = add nsw i64 %indvars.iv38.i, %i.k ; 2 uses
  %i.co = trunc nsw i64 %indvars.iv.next39.i to i32
  %.not31.us.i = icmp eq i32 %.026.i, %i.co
  br i1 %.not31.us.i, label %_ZL19stbiw__write_pixelsP19stbi__write_contextiiiiiPviii.exit, label %.preheader.us.i, !llvm.loop !526

._crit_edge.us.i:                                 ; preds = %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit.us.i
  %i.cp = load i32, ptr %i.f, align 8, !tbaa !116 ; 2 uses
  %.not.i32.us.i = icmp eq i32 %i.cp, 0
  br i1 %.not.i32.us.i, label %_ZL18stbiw__write_flushP19stbi__write_context.exit.us.i, label %bb.q

.preheader.i:                                     ; preds = %bb.c, %_ZL18stbiw__write_flushP19stbi__write_context.exit.i
  %.134.i = phi i32 [ %i.cv, %_ZL18stbiw__write_flushP19stbi__write_context.exit.i ], [ %.027.i, %bb.c ]
  %i.cq = load i32, ptr %i.f, align 8, !tbaa !116 ; 2 uses
  %.not.i32.i = icmp eq i32 %i.cq, 0
  br i1 %.not.i32.i, label %_ZL18stbiw__write_flushP19stbi__write_context.exit.i, label %bb.r

bb.r:                                             ; preds = %.preheader.i
  %i.cr = load ptr, ptr %0, align 8, !tbaa !114
  %i.cs = load ptr, ptr %i.g, align 8, !tbaa !115
  call void %i.cr(ptr noundef %i.cs, ptr noundef nonnull %i.h, i32 noundef %i.cq), !inline_history !524
  store i32 0, ptr %i.f, align 8, !tbaa !116
  br label %_ZL18stbiw__write_flushP19stbi__write_context.exit.i

_ZL18stbiw__write_flushP19stbi__write_context.exit.i: ; preds = %bb.r, %.preheader.i
  %i.ct = load ptr, ptr %0, align 8, !tbaa !114
  %i.cu = load ptr, ptr %i.g, align 8, !tbaa !115
  call void %i.ct(ptr noundef %i.cu, ptr noundef nonnull %i.a, i32 noundef range(i32 0, 4) %9), !inline_history !525
  %i.cv = add nsw i32 %.134.i, %spec.select.i     ; 2 uses
  %.not31.i = icmp eq i32 %i.cv, %.026.i
  br i1 %.not31.i, label %_ZL19stbiw__write_pixelsP19stbi__write_contextiiiiiPviii.exit, label %.preheader.i, !llvm.loop !526

_ZL19stbiw__write_pixelsP19stbi__write_contextiiiiiPviii.exit: ; preds = %_ZL18stbiw__write_flushP19stbi__write_context.exit.us.i, %_ZL18stbiw__write_flushP19stbi__write_context.exit.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %_ZL19stbiw__write_pixelsP19stbi__write_contextiiiiiPviii.exit
  %.0 = phi i32 [ 1, %_ZL19stbiw__write_pixelsP19stbi__write_contextiiiiiPviii.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #26

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL14stbiw__writefvP19stbi__write_contextPKcP13__va_list_tag(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca [2 x i8], align 2                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = load i8, ptr %1, align 1, !tbaa !35      ; 2 uses
  %.not20 = icmp eq i8 %i.d, 0
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.o
  %i.h = phi i8 [ %i.d, %.lr.ph ], [ %i.av, %bb.o ]
  %.021 = phi ptr [ %1, %.lr.ph ], [ %i.i, %bb.o ]
  %i.i = getelementptr inbounds nuw i8, ptr %.021, i64 1 ; 2 uses
  switch i8 %i.h, label %._crit_edge [
    i8 32, label %bb.o
    i8 49, label %bb.c
    i8 50, label %bb.g
    i8 52, label %bb.k
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.j = load i32, ptr %2, align 8                ; 3 uses
  %i.k = icmp ult i32 %i.j, 41
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.f, align 8
  %i.m = zext nneg i32 %i.j to i64
  %i.n = getelementptr i8, ptr %i.l, i64 %i.m
  %i.o = add nuw nsw i32 %i.j, 8
  store i32 %i.o, ptr %2, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 8
  store ptr %i.q, ptr %i.e, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = phi ptr [ %i.n, %bb.d ], [ %i.p, %bb.e ]
  %i.s = load i32, ptr %i.r, align 4, !tbaa !23
  %i.t = trunc i32 %i.s to i8
  store i8 %i.t, ptr %i.a, align 1, !tbaa !35
  %i.u = load ptr, ptr %0, align 8, !tbaa !114
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !115
  call void %i.u(ptr noundef %i.v, ptr noundef nonnull %i.a, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bb.o

bb.g:                                             ; preds = %bb.b
  %i.w = load i32, ptr %2, align 8                ; 3 uses
  %i.x = icmp ult i32 %i.w, 41
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %i.f, align 8
  %i.z = zext nneg i32 %i.w to i64
  %i.aa = getelementptr i8, ptr %i.y, i64 %i.z
  %i.ab = add nuw nsw i32 %i.w, 8
  store i32 %i.ab, ptr %2, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 8
  store ptr %i.ad, ptr %i.e, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ae = phi ptr [ %i.aa, %bb.h ], [ %i.ac, %bb.i ]
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.ag = trunc i32 %i.af to i16
  store i16 %i.ag, ptr %i.b, align 2
  %i.ah = load ptr, ptr %0, align 8, !tbaa !114
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !115
  call void %i.ah(ptr noundef %i.ai, ptr noundef nonnull %i.b, i32 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  br label %bb.o

bb.k:                                             ; preds = %bb.b
  %i.aj = load i32, ptr %2, align 8               ; 3 uses
  %i.ak = icmp ult i32 %i.aj, 41
  br i1 %i.ak, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.al = load ptr, ptr %i.f, align 8
  %i.am = zext nneg i32 %i.aj to i64
  %i.an = getelementptr i8, ptr %i.al, i64 %i.am
  %i.ao = add nuw nsw i32 %i.aj, 8
  store i32 %i.ao, ptr %2, align 8
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ap = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 8
  store ptr %i.aq, ptr %i.e, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ar = phi ptr [ %i.an, %bb.l ], [ %i.ap, %bb.m ]
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  store i32 %i.as, ptr %i.c, align 4
  %i.at = load ptr, ptr %0, align 8, !tbaa !114
  %i.au = load ptr, ptr %i.g, align 8, !tbaa !115
  call void %i.at(ptr noundef %i.au, ptr noundef nonnull %i.c, i32 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.j, %bb.f, %bb.b
  %i.av = load i8, ptr %i.i, align 1, !tbaa !35   ; 2 uses
  %.not = icmp eq i8 %i.av, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !527

._crit_edge:                                      ; preds = %bb.o, %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #26

; Function Attrs: mustprogress uwtable
define dso_local range(i32 0, 2) i32 @stbi_write_bmp(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #4 {
bb.a:
  %5 = alloca %struct.stbi__write_context, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  %i.b = tail call noalias noundef ptr @fopen(ptr noundef readonly %0, ptr noundef nonnull @.str.84) ; 2 uses
  store ptr @_ZL17stbi__stdio_writePvS_i, ptr %5, align 8, !tbaa !114
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !115
  %.not6 = icmp eq ptr %i.b, null
  br i1 %.not6, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call fastcc noundef i32 @_ZL19stbi_write_bmp_coreP19stbi__write_contextiiiPKv(ptr noundef %5, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4)
  %.val = load ptr, ptr %i.c, align 8, !tbaa !115
  %i.e = call i32 @fclose(ptr noundef %.val)      ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind uwtable
define internal void @_ZL17stbi__stdio_writePvS_i(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #7 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = tail call i64 @fwrite(ptr noundef %1, i64 noundef 1, i64 noundef %i.a, ptr noundef %0) ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @stbi_write_tga_to_func(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #4 {
bb.a:
  %6 = alloca %struct.stbi__write_context, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  store ptr %0, ptr %6, align 8, !tbaa !114
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !115
  %i.c = call fastcc noundef i32 @_ZL19stbi_write_tga_coreP19stbi__write_contextiiiPv(ptr noundef %6, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  ret i32 %i.c
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL19stbi_write_tga_coreP19stbi__write_contextiiiPv(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #4 {
bb.a:
  %i.a = icmp eq i32 %3, 2
  %i.b = icmp eq i32 %3, 4
  %i.c = or i1 %i.a, %i.b                         ; 4 uses
  %i.d = zext i1 %i.c to i32                      ; 3 uses
  %i.e = sext i1 %i.c to i32
  %i.f = add nsw i32 %3, %i.e                     ; 3 uses
  %i.g = icmp slt i32 %i.f, 2
  %i.h = select i1 %i.g, i32 3, i32 2             ; 2 uses
  %i.i = or i32 %2, %1
  %or.cond.not = icmp sgt i32 %i.i, -1
  br i1 %or.cond.not, label %bb.b, label %_ZL18stbiw__write_flushP19stbi__write_context.exit

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr @stbi_write_tga_with_rle, align 4, !tbaa !23
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = add nsw i32 %i.f, %i.d
  %i.l = shl nsw i32 %i.k, 3
  %i.m = select i1 %i.c, i32 8, i32 0
  %i.n = tail call noundef i32 (ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, ...) @_ZL14stbiw__outfileP19stbi__write_contextiiiiiiPviiPKcz(ptr noundef %0, i32 poison, i32 poison, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 0, ptr noundef %4, i32 noundef %i.d, i32 noundef 0, ptr noundef nonnull @.str.85, i32 noundef 0, i32 noundef 0, i32 noundef %i.h, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %1, i32 noundef %2, i32 noundef %i.l, i32 noundef %i.m)
  br label %_ZL18stbiw__write_flushP19stbi__write_context.exit

bb.d:                                             ; preds = %bb.b
  %i.o = or disjoint i32 %i.h, 8
  %i.p = add nsw i32 %i.f, %i.d
  %i.q = shl nsw i32 %i.p, 3
  %i.r = select i1 %i.c, i32 8, i32 0
  tail call void (ptr, ptr, ...) @_ZL13stbiw__writefP19stbi__write_contextPKcz(ptr noundef %0, ptr nonnull poison, i32 noundef 0, i32 noundef 0, i32 noundef %i.o, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %1, i32 noundef %2, i32 noundef %i.q, i32 noundef %i.r)
  %i.s = load i32, ptr @_ZL30stbi__flip_vertically_on_write, align 4, !tbaa !23
  %.not116 = icmp eq i32 %i.s, 0                  ; 3 uses
  %i.t = add nsw i32 %2, -1
  %.0109 = select i1 %.not116, i32 %i.t, i32 0    ; 2 uses
  %.0105 = select i1 %.not116, i32 -1, i32 %2     ; 2 uses
  %.0104 = select i1 %.not116, i64 4294967295, i64 1
  %.not117164 = icmp eq i32 %.0109, %.0105
  br i1 %.not117164, label %._crit_edge168, label %.lr.ph167

.lr.ph167:                                        ; preds = %bb.d
  %i.u = mul i32 %3, %1
  %i.v = icmp sgt i32 %1, 0
  %i.w = add nsw i32 %1, -1
  %i.x = sext i32 %3 to i64                       ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 16 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 16 uses
  %i.ab = zext nneg i32 %3 to i64                 ; 2 uses
  br i1 %i.v, label %.lr.ph162.us.preheader, label %._crit_edge168

.lr.ph162.us.preheader:                           ; preds = %.lr.ph167
  %i.ac = zext nneg i32 %1 to i64                 ; 2 uses
  %i.ad = zext i32 %.0109 to i64
  br label %.lr.ph162.us

.lr.ph162.us:                                     ; preds = %.lr.ph162.us.preheader, %._crit_edge163.us
  %indvars.iv178 = phi i64 [ %i.ad, %.lr.ph162.us.preheader ], [ %indvars.iv.next179, %._crit_edge163.us ] ; 2 uses
  %i.ae = trunc i64 %indvars.iv178 to i32
  %i.af = mul i32 %i.u, %i.ae
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds i8, ptr %4, i64 %i.ag ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph162.us, %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit141.us
  %.0111159.us = phi i32 [ 0, %.lr.ph162.us ], [ %i.ex, %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit141.us ] ; 5 uses
  %i.ai = mul nsw i32 %.0111159.us, %3
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds i8, ptr %i.ah, i64 %i.aj ; 9 uses
  %i.al = icmp slt i32 %.0111159.us, %i.w
  br i1 %i.al, label %bb.f, label %.loopexit.us

bb.f:                                             ; preds = %bb.e
  %i.am = add nsw i32 %.0111159.us, 1
  %i.an = mul nsw i32 %i.am, %3
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds i8, ptr %i.ah, i64 %i.ao
  %bcmp122.us = tail call i32 @bcmp(ptr %i.ak, ptr %i.ap, i64 %i.x)
  %.not118.us = icmp eq i32 %bcmp122.us, 0
  %i.aq = add nsw i32 %.0111159.us, 2             ; 3 uses
  %i.ar = icmp slt i32 %i.aq, %1                  ; 2 uses
  br i1 %.not118.us, label %bb.r, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.ar, label %.lr.ph.us.preheader, label %.loopexit.us

.lr.ph.us.preheader:                              ; preds = %bb.g
  %i.as = sext i32 %i.aq to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %bb.h
  %indvars.iv = phi i64 [ %i.as, %.lr.ph.us.preheader ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %.0101150.us = phi ptr [ %i.ak, %.lr.ph.us.preheader ], [ %i.av, %bb.h ] ; 2 uses
  %.0103149.us = phi i32 [ 2, %.lr.ph.us.preheader ], [ %i.aw, %bb.h ] ; 3 uses
  %i.at = mul nsw i64 %indvars.iv, %i.x
  %i.au = getelementptr inbounds i8, ptr %i.ah, i64 %i.at
  %bcmp120.us = tail call i32 @bcmp(ptr %.0101150.us, ptr %i.au, i64 %i.x)
  %.not121.us = icmp eq i32 %bcmp120.us, 0
  br i1 %.not121.us, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.us
  %i.av = getelementptr inbounds i8, ptr %.0101150.us, i64 %i.x
  %i.aw = add nuw nsw i32 %.0103149.us, 1         ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ax = icmp slt i64 %indvars.iv.next, %i.ac
  %i.ay = icmp samesign ult i32 %.0103149.us, 127
  %i.az = select i1 %i.ax, i1 %i.ay, i1 false
  br i1 %i.az, label %.lr.ph.us, label %.loopexit.us, !llvm.loop !528

bb.i:                                             ; preds = %.lr.ph.us
  %i.ba = add nsw i32 %.0103149.us, -1
  br label %.loopexit.us

.loopexit.us:                                     ; preds = %bb.h, %bb.g, %bb.i, %bb.e
  %.3.ph.us = phi i32 [ 1, %bb.e ], [ %i.ba, %bb.i ], [ 2, %bb.g ], [ %i.aw, %bb.h ] ; 5 uses
  %i.bb = trunc i32 %.3.ph.us to i8
  %i.bc = add i8 %i.bb, -1
  %i.bd = load i32, ptr %i.y, align 8, !tbaa !116 ; 3 uses
  %5 = add i32 %i.bd, 1
  %i.be = icmp ult i32 %5, 65
  br i1 %i.be, label %_ZL13stbiw__write1P19stbi__write_contexth.exit.us, label %bb.j

bb.j:                                             ; preds = %.loopexit.us
  %i.bf = load ptr, ptr %0, align 8, !tbaa !114
  %i.bg = load ptr, ptr %i.z, align 8, !tbaa !115
  tail call void %i.bf(ptr noundef %i.bg, ptr noundef nonnull %i.aa, i32 noundef %i.bd), !inline_history !529
  br label %_ZL13stbiw__write1P19stbi__write_contexth.exit.us

_ZL13stbiw__write1P19stbi__write_contexth.exit.us: ; preds = %bb.j, %.loopexit.us
  %i.bh = phi i32 [ 0, %bb.j ], [ %i.bd, %.loopexit.us ] ; 2 uses
  %i.bi = add nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %i.y, align 8, !tbaa !116
  %i.bj = sext i32 %i.bh to i64
  %i.bk = getelementptr inbounds i8, ptr %i.aa, i64 %i.bj
  store i8 %i.bc, ptr %i.bk, align 1, !tbaa !35
  %i.bl = icmp sgt i32 %.3.ph.us, 0
  br i1 %i.bl, label %.lr.ph152.us.preheader, label %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit141.us

.lr.ph152.us.preheader:                           ; preds = %_ZL13stbiw__write1P19stbi__write_contexth.exit.us
  %wide.trip.count = zext nneg i32 %.3.ph.us to i64
  br label %.lr.ph152.us

.lr.ph152.us:                                     ; preds = %.lr.ph152.us.preheader, %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit.us
  %indvars.iv172 = phi i64 [ 0, %.lr.ph152.us.preheader ], [ %indvars.iv.next173, %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit.us ] ; 2 uses
  %i.bm = mul nsw i64 %indvars.iv172, %i.x
  %i.bn = getelementptr inbounds i8, ptr %i.ak, i64 %i.bm ; 5 uses
  switch i32 %3, label %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit.us [
    i32 2, label %bb.m
    i32 1, label %bb.m
    i32 4, label %bb.k
    i32 3, label %bb.k
  ]

bb.k:                                             ; preds = %.lr.ph152.us, %.lr.ph152.us
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 2
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !35
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !35
  %i.bs = load i8, ptr %i.bn, align 1, !tbaa !35
  %i.bt = load i32, ptr %i.y, align 8, !tbaa !116 ; 3 uses
  %6 = add i32 %i.bt, 3
  %i.bu = icmp ult i32 %6, 65
  br i1 %i.bu, label %_ZL13stbiw__write3P19stbi__write_contexthhh.exit36.i.us, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bv = load ptr, ptr %0, align 8, !tbaa !114
  %i.bw = load ptr, ptr %i.z, align 8, !tbaa !115
  tail call void %i.bv(ptr noundef %i.bw, ptr noundef nonnull %i.aa, i32 noundef %i.bt), !inline_history !530
  br label %_ZL13stbiw__write3P19stbi__write_contexthhh.exit36.i.us

_ZL13stbiw__write3P19stbi__write_contexthhh.exit36.i.us: ; preds = %bb.l, %bb.k
  %i.bx = phi i32 [ 0, %bb.l ], [ %i.bt, %bb.k ]  ; 2 uses
  %i.by = add nsw i32 %i.bx, 3
  store i32 %i.by, ptr %i.y, align 8, !tbaa !116
  %i.bz = sext i32 %i.bx to i64
  %i.ca = getelementptr inbounds i8, ptr %i.aa, i64 %i.bz ; 3 uses
  store i8 %i.bp, ptr %i.ca, align 1, !tbaa !35
  %i.cb = getelementptr i8, ptr %i.ca, i64 1
  store i8 %i.br, ptr %i.cb, align 1, !tbaa !35
  %i.cc = getelementptr i8, ptr %i.ca, i64 2
  store i8 %i.bs, ptr %i.cc, align 1, !tbaa !35
  br label %bb.o

bb.m:                                             ; preds = %.lr.ph152.us, %.lr.ph152.us
  %i.cd = load i8, ptr %i.bn, align 1, !tbaa !35
  %i.ce = load i32, ptr %i.y, align 8, !tbaa !116 ; 3 uses
  %7 = add i32 %i.ce, 1
  %i.cf = icmp ult i32 %7, 65
  br i1 %i.cf, label %_ZL13stbiw__write1P19stbi__write_contexth.exit.i.us, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cg = load ptr, ptr %0, align 8, !tbaa !114
  %i.ch = load ptr, ptr %i.z, align 8, !tbaa !115
  tail call void %i.cg(ptr noundef %i.ch, ptr noundef nonnull %i.aa, i32 noundef %i.ce), !inline_history !531
  br label %_ZL13stbiw__write1P19stbi__write_contexth.exit.i.us

_ZL13stbiw__write1P19stbi__write_contexth.exit.i.us: ; preds = %bb.n, %bb.m
  %i.ci = phi i32 [ 0, %bb.n ], [ %i.ce, %bb.m ]  ; 2 uses
  %i.cj = add nsw i32 %i.ci, 1
  store i32 %i.cj, ptr %i.y, align 8, !tbaa !116
  %i.ck = sext i32 %i.ci to i64
  %i.cl = getelementptr inbounds i8, ptr %i.aa, i64 %i.ck
  store i8 %i.cd, ptr %i.cl, align 1, !tbaa !35
  br label %bb.o

bb.o:                                             ; preds = %_ZL13stbiw__write1P19stbi__write_contexth.exit.i.us, %_ZL13stbiw__write3P19stbi__write_contexthhh.exit36.i.us
  switch i32 %3, label %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit.us [
    i32 4, label %bb.p
    i32 2, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o
  %i.cm = getelementptr i8, ptr %i.bn, i64 %i.ab
  %i.cn = getelementptr i8, ptr %i.cm, i64 -1
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !35
  %i.cp = load i32, ptr %i.y, align 8, !tbaa !116 ; 3 uses
  %8 = add i32 %i.cp, 1
  %i.cq = icmp ult i32 %8, 65
  br i1 %i.cq, label %_ZL13stbiw__write1P19stbi__write_contexth.exit37.i.us, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cr = load ptr, ptr %0, align 8, !tbaa !114
  %i.cs = load ptr, ptr %i.z, align 8, !tbaa !115
  tail call void %i.cr(ptr noundef %i.cs, ptr noundef nonnull %i.aa, i32 noundef %i.cp), !inline_history !531
  br label %_ZL13stbiw__write1P19stbi__write_contexth.exit37.i.us

_ZL13stbiw__write1P19stbi__write_contexth.exit37.i.us: ; preds = %bb.q, %bb.p
  %i.ct = phi i32 [ 0, %bb.q ], [ %i.cp, %bb.p ]  ; 2 uses
  %i.cu = add nsw i32 %i.ct, 1
  store i32 %i.cu, ptr %i.y, align 8, !tbaa !116
  %i.cv = sext i32 %i.ct to i64
  %i.cw = getelementptr inbounds i8, ptr %i.aa, i64 %i.cv
  store i8 %i.co, ptr %i.cw, align 1, !tbaa !35
  br label %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit.us

_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit.us: ; preds = %_ZL13stbiw__write1P19stbi__write_contexth.exit37.i.us, %bb.o, %.lr.ph152.us
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next173, %wide.trip.count
  br i1 %exitcond.not, label %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit141.us, label %.lr.ph152.us, !llvm.loop !532

bb.r:                                             ; preds = %bb.f
  br i1 %i.ar, label %.lr.ph155.us.preheader, label %._crit_edge.us

.lr.ph155.us.preheader:                           ; preds = %bb.r
  %i.cx = sext i32 %i.aq to i64
  br label %.lr.ph155.us

.lr.ph155.us:                                     ; preds = %.lr.ph155.us.preheader, %bb.s
  %indvars.iv175 = phi i64 [ %i.cx, %.lr.ph155.us.preheader ], [ %indvars.iv.next176, %bb.s ] ; 2 uses
  %.2154.us = phi i32 [ 2, %.lr.ph155.us.preheader ], [ %i.da, %bb.s ] ; 3 uses
  %i.cy = mul nsw i64 %indvars.iv175, %i.x
  %i.cz = getelementptr inbounds i8, ptr %i.ah, i64 %i.cy
  %bcmp.us = tail call i32 @bcmp(ptr %i.ak, ptr %i.cz, i64 %i.x)
  %.not119.us = icmp eq i32 %bcmp.us, 0
  br i1 %.not119.us, label %bb.s, label %._crit_edge.us

bb.s:                                             ; preds = %.lr.ph155.us
  %i.da = add nuw nsw i32 %.2154.us, 1            ; 2 uses
  %indvars.iv.next176 = add nsw i64 %indvars.iv175, 1 ; 2 uses
  %i.db = icmp slt i64 %indvars.iv.next176, %i.ac
  %i.dc = icmp samesign ult i32 %.2154.us, 127
  %i.dd = select i1 %i.db, i1 %i.dc, i1 false
  br i1 %i.dd, label %.lr.ph155.us, label %._crit_edge.us, !llvm.loop !533

._crit_edge.us:                                   ; preds = %.lr.ph155.us, %bb.s, %bb.r
  %.2.lcssa.us = phi i32 [ 2, %bb.r ], [ %i.da, %bb.s ], [ %.2154.us, %.lr.ph155.us ] ; 4 uses
  %i.de = trunc nuw i32 %.2.lcssa.us to i8
  %i.df = add nuw i8 %i.de, 127
  %i.dg = load i32, ptr %i.y, align 8, !tbaa !116 ; 3 uses
  %9 = add i32 %i.dg, 1
  %i.dh = icmp ult i32 %9, 65
  br i1 %i.dh, label %_ZL13stbiw__write1P19stbi__write_contexth.exit124.us, label %bb.t

bb.t:                                             ; preds = %._crit_edge.us
  %i.di = load ptr, ptr %0, align 8, !tbaa !114
  %i.dj = load ptr, ptr %i.z, align 8, !tbaa !115
  tail call void %i.di(ptr noundef %i.dj, ptr noundef nonnull %i.aa, i32 noundef %i.dg), !inline_history !529
  br label %_ZL13stbiw__write1P19stbi__write_contexth.exit124.us

_ZL13stbiw__write1P19stbi__write_contexth.exit124.us: ; preds = %bb.t, %._crit_edge.us
  %i.dk = phi i32 [ 0, %bb.t ], [ %i.dg, %._crit_edge.us ] ; 2 uses
  %i.dl = add nsw i32 %i.dk, 1
  store i32 %i.dl, ptr %i.y, align 8, !tbaa !116
  %i.dm = sext i32 %i.dk to i64
  %i.dn = getelementptr inbounds i8, ptr %i.aa, i64 %i.dm
  store i8 %i.df, ptr %i.dn, align 1, !tbaa !35
  switch i32 %3, label %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit141.us [
    i32 2, label %bb.w
    i32 1, label %bb.w
    i32 4, label %bb.u
    i32 3, label %bb.u
  ]

bb.u:                                             ; preds = %_ZL13stbiw__write1P19stbi__write_contexth.exit124.us, %_ZL13stbiw__write1P19stbi__write_contexth.exit124.us
  %i.do = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !35
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !35
  %i.ds = load i8, ptr %i.ak, align 1, !tbaa !35
  %i.dt = load i32, ptr %i.y, align 8, !tbaa !116 ; 3 uses
  %10 = add i32 %i.dt, 3
  %i.du = icmp ult i32 %10, 65
  br i1 %i.du, label %_ZL13stbiw__write3P19stbi__write_contexthhh.exit36.i125.us, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dv = load ptr, ptr %0, align 8, !tbaa !114
  %i.dw = load ptr, ptr %i.z, align 8, !tbaa !115
  tail call void %i.dv(ptr noundef %i.dw, ptr noundef nonnull %i.aa, i32 noundef %i.dt), !inline_history !530
  br label %_ZL13stbiw__write3P19stbi__write_contexthhh.exit36.i125.us

_ZL13stbiw__write3P19stbi__write_contexthhh.exit36.i125.us: ; preds = %bb.v, %bb.u
  %i.dx = phi i32 [ 0, %bb.v ], [ %i.dt, %bb.u ]  ; 2 uses
  %i.dy = add nsw i32 %i.dx, 3
  store i32 %i.dy, ptr %i.y, align 8, !tbaa !116
  %i.dz = sext i32 %i.dx to i64
  %i.ea = getelementptr inbounds i8, ptr %i.aa, i64 %i.dz ; 3 uses
  store i8 %i.dp, ptr %i.ea, align 1, !tbaa !35
  %i.eb = getelementptr i8, ptr %i.ea, i64 1
  store i8 %i.dr, ptr %i.eb, align 1, !tbaa !35
  %i.ec = getelementptr i8, ptr %i.ea, i64 2
  store i8 %i.ds, ptr %i.ec, align 1, !tbaa !35
  br label %bb.y

bb.w:                                             ; preds = %_ZL13stbiw__write1P19stbi__write_contexth.exit124.us, %_ZL13stbiw__write1P19stbi__write_contexth.exit124.us
  %i.ed = load i8, ptr %i.ak, align 1, !tbaa !35
  %i.ee = load i32, ptr %i.y, align 8, !tbaa !116 ; 3 uses
  %11 = add i32 %i.ee, 1
  %i.ef = icmp ult i32 %11, 65
  br i1 %i.ef, label %_ZL13stbiw__write1P19stbi__write_contexth.exit.i140.us, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eg = load ptr, ptr %0, align 8, !tbaa !114
  %i.eh = load ptr, ptr %i.z, align 8, !tbaa !115
  tail call void %i.eg(ptr noundef %i.eh, ptr noundef nonnull %i.aa, i32 noundef %i.ee), !inline_history !531
  br label %_ZL13stbiw__write1P19stbi__write_contexth.exit.i140.us

_ZL13stbiw__write1P19stbi__write_contexth.exit.i140.us: ; preds = %bb.x, %bb.w
  %i.ei = phi i32 [ 0, %bb.x ], [ %i.ee, %bb.w ]  ; 2 uses
  %i.ej = add nsw i32 %i.ei, 1
  store i32 %i.ej, ptr %i.y, align 8, !tbaa !116
  %i.ek = sext i32 %i.ei to i64
  %i.el = getelementptr inbounds i8, ptr %i.aa, i64 %i.ek
  store i8 %i.ed, ptr %i.el, align 1, !tbaa !35
  br label %bb.y

bb.y:                                             ; preds = %_ZL13stbiw__write1P19stbi__write_contexth.exit.i140.us, %_ZL13stbiw__write3P19stbi__write_contexthhh.exit36.i125.us
  switch i32 %3, label %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit141.us [
    i32 4, label %bb.z
    i32 2, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y, %bb.y
  %i.em = getelementptr i8, ptr %i.ak, i64 %i.ab
  %i.en = getelementptr i8, ptr %i.em, i64 -1
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !35
  %i.ep = load i32, ptr %i.y, align 8, !tbaa !116 ; 3 uses
  %12 = add i32 %i.ep, 1
  %i.eq = icmp ult i32 %12, 65
  br i1 %i.eq, label %_ZL13stbiw__write1P19stbi__write_contexth.exit37.i127.us, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.er = load ptr, ptr %0, align 8, !tbaa !114
  %i.es = load ptr, ptr %i.z, align 8, !tbaa !115
  tail call void %i.er(ptr noundef %i.es, ptr noundef nonnull %i.aa, i32 noundef %i.ep), !inline_history !531
  br label %_ZL13stbiw__write1P19stbi__write_contexth.exit37.i127.us

_ZL13stbiw__write1P19stbi__write_contexth.exit37.i127.us: ; preds = %bb.aa, %bb.z
  %i.et = phi i32 [ 0, %bb.aa ], [ %i.ep, %bb.z ] ; 2 uses
  %i.eu = add nsw i32 %i.et, 1
  store i32 %i.eu, ptr %i.y, align 8, !tbaa !116
  %i.ev = sext i32 %i.et to i64
  %i.ew = getelementptr inbounds i8, ptr %i.aa, i64 %i.ev
  store i8 %i.eo, ptr %i.ew, align 1, !tbaa !35
  br label %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit141.us

_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit141.us: ; preds = %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit.us, %_ZL13stbiw__write1P19stbi__write_contexth.exit.us, %_ZL13stbiw__write1P19stbi__write_contexth.exit37.i127.us, %bb.y, %_ZL13stbiw__write1P19stbi__write_contexth.exit124.us
  %.3146.us = phi i32 [ %.2.lcssa.us, %_ZL13stbiw__write1P19stbi__write_contexth.exit124.us ], [ %.2.lcssa.us, %_ZL13stbiw__write1P19stbi__write_contexth.exit37.i127.us ], [ %.2.lcssa.us, %bb.y ], [ %.3.ph.us, %_ZL13stbiw__write1P19stbi__write_contexth.exit.us ], [ %.3.ph.us, %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit.us ]
  %i.ex = add nsw i32 %.3146.us, %.0111159.us     ; 2 uses
  %i.ey = icmp slt i32 %i.ex, %1
  br i1 %i.ey, label %bb.e, label %._crit_edge163.us, !llvm.loop !534

._crit_edge163.us:                                ; preds = %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit141.us
  %indvars.iv.next179 = add i64 %indvars.iv178, %.0104 ; 2 uses
  %i.ez = trunc i64 %indvars.iv.next179 to i32
  %.not117.us = icmp eq i32 %.0105, %i.ez
  br i1 %.not117.us, label %._crit_edge168, label %.lr.ph162.us, !llvm.loop !535

._crit_edge168:                                   ; preds = %._crit_edge163.us, %.lr.ph167, %bb.d
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !116 ; 2 uses
  %.not.i142 = icmp eq i32 %i.fb, 0
  br i1 %.not.i142, label %_ZL18stbiw__write_flushP19stbi__write_context.exit, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge168
  %i.fc = load ptr, ptr %0, align 8, !tbaa !114
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !115
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void %i.fc(ptr noundef %i.fe, ptr noundef nonnull %i.ff, i32 noundef %i.fb), !inline_history !536
  store i32 0, ptr %i.fa, align 8, !tbaa !116
  br label %_ZL18stbiw__write_flushP19stbi__write_context.exit

_ZL18stbiw__write_flushP19stbi__write_context.exit: ; preds = %bb.ab, %._crit_edge168, %bb.a, %bb.c
  %.0 = phi i32 [ %i.n, %bb.c ], [ 0, %bb.a ], [ 1, %._crit_edge168 ], [ 1, %bb.ab ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL13stbiw__writefP19stbi__write_contextPKcz(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree readnone captures(none) %1, ...) unnamed_addr #4 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @llvm.va_start.p0(ptr nonnull %2)
  call fastcc void @_ZL14stbiw__writefvP19stbi__write_contextPKcP13__va_list_tag(ptr noundef %0, ptr noundef nonnull @.str.85, ptr noundef %2)
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local range(i32 0, 2) i32 @stbi_write_tga(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #4 {
bb.a:
  %5 = alloca %struct.stbi__write_context, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  %i.b = tail call noalias noundef ptr @fopen(ptr noundef readonly %0, ptr noundef nonnull @.str.84) ; 2 uses
  store ptr @_ZL17stbi__stdio_writePvS_i, ptr %5, align 8, !tbaa !114
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !115
  %.not6 = icmp eq ptr %i.b, null
  br i1 %.not6, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call fastcc noundef i32 @_ZL19stbi_write_tga_coreP19stbi__write_contextiiiPv(ptr noundef %5, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4)
  %.val = load ptr, ptr %i.c, align 8, !tbaa !115
  %i.e = call i32 @fclose(ptr noundef %.val)      ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @stbi_write_hdr_to_func(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call fastcc noundef i32 @_ZL19stbi_write_hdr_coreP19stbi__write_contextiiiPf(ptr %0, ptr %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL19stbi_write_hdr_coreP19stbi__write_contextiiiPf(ptr nofree readonly captures(none) %.0.val, ptr %.8.val, i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) unnamed_addr #4 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 10 uses
  %i.e = alloca [4 x i8], align 1                 ; 13 uses
  %i.f = alloca [128 x i8], align 16              ; 4 uses
  %i.g = alloca [66 x i8], align 16               ; 4 uses
  %i.h = icmp slt i32 %1, 1
  %i.i = icmp slt i32 %0, 1
  %or.cond = or i1 %i.i, %i.h
  %i.j = icmp eq ptr %3, null
  %or.cond3 = or i1 %or.cond, %i.j
  br i1 %or.cond3, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = shl nuw nsw i32 %0, 2
  %i.l = zext nneg i32 %i.k to i64
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #37 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(66) %i.g, ptr noundef nonnull align 16 dereferenceable(66) @__const._ZL19stbi_write_hdr_coreP19stbi__write_contextiiiPf.header, i64 66, i1 false)
  call void %.0.val(ptr noundef %.8.val, ptr noundef nonnull %i.g, i32 noundef 65)
  %i.n = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull dereferenceable(1) @.str.86, i32 noundef %1, i32 noundef %0) #36
  call void %.0.val(ptr noundef %.8.val, ptr noundef nonnull %i.f, i32 noundef %i.n)
  %i.o = mul nsw i32 %2, %0                       ; 3 uses
  %i.p = lshr i32 %0, 8
  %i.q = trunc i32 %i.p to i8
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.s = trunc i32 %0 to i8
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.u = add nsw i32 %0, -32768
  %or.cond.i = icmp ult i32 %i.u, -32760
  %.off.i = add i32 %2, -3
  %switch.i = icmp ult i32 %.off.i, 2             ; 2 uses
  %i.v = shl nuw i32 %0, 1                        ; 3 uses
  %i.w = mul i32 %0, 3                            ; 3 uses
  %i.x = zext nneg i32 %0 to i64                  ; 14 uses
  %i.y = zext i32 %i.v to i64                     ; 3 uses
  %i.z = zext i32 %i.w to i64                     ; 3 uses
  %i.aa = sext i32 %2 to i64                      ; 3 uses
  %invariant.gep.i = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.x ; 4 uses
  %invariant.gep200.i = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.y ; 4 uses
  %invariant.gep202.i = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.z ; 4 uses
  %i.ab = zext nneg i32 %2 to i64
  %invariant.op.i = add nsw i32 %0, -2            ; 2 uses
  %invariant.op212.i = add nsw i64 %i.x, -3
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 3 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 2 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  br i1 %or.cond.i, label %.split.us, label %.preheader131.i.preheader

.preheader131.i.preheader:                        ; preds = %bb.b
  %i.af = sub nsw i64 %i.y, %i.x                  ; 2 uses
  %i.ag = sub nsw i64 %i.z, %i.x                  ; 2 uses
  %i.ah = sub nsw i64 %i.z, %i.y                  ; 2 uses
  %ident.check.not = icmp eq i32 %2, 1            ; 2 uses
  %i.ai = add nsw i32 %0, -1
  %diff.check61 = icmp ult i32 %i.ai, 3
  %i.aj = add nsw i32 %i.v, -1
  %diff.check62 = icmp ult i32 %i.aj, 3
  %conflict.rdx63 = or i1 %diff.check61, %diff.check62
  %i.ak = add nsw i32 %i.w, -1
  %diff.check64 = icmp ult i32 %i.ak, 3
  %conflict.rdx65 = or i1 %conflict.rdx63, %diff.check64
  %i.al = add nsw i64 %i.af, -1
  %diff.check66 = icmp ult i64 %i.al, 3
  %conflict.rdx67 = or i1 %conflict.rdx65, %diff.check66
  %i.am = add nsw i64 %i.ag, -1
  %diff.check68 = icmp ult i64 %i.am, 3
  %conflict.rdx69 = or i1 %conflict.rdx67, %diff.check68
  %i.an = add nsw i64 %i.ah, -1
  %diff.check70 = icmp ult i64 %i.an, 3
  %conflict.rdx71 = or i1 %conflict.rdx69, %diff.check70
  %n.vec74 = and i64 %i.x, 32764                  ; 3 uses
  %cmp.n82 = icmp eq i64 %n.vec74, %i.x
  %i.ao = add nsw i32 %0, -1
  %diff.check = icmp ult i32 %i.ao, 3
  %i.ap = add nsw i32 %i.v, -1
  %diff.check44 = icmp ult i32 %i.ap, 3
  %conflict.rdx = or i1 %diff.check, %diff.check44
  %i.aq = add nsw i32 %i.w, -1
  %diff.check45 = icmp ult i32 %i.aq, 3
  %conflict.rdx46 = or i1 %conflict.rdx, %diff.check45
  %i.ar = add nsw i64 %i.af, -1
  %diff.check47 = icmp ult i64 %i.ar, 3
  %conflict.rdx48 = or i1 %conflict.rdx46, %diff.check47
  %i.as = add nsw i64 %i.ag, -1
  %diff.check49 = icmp ult i64 %i.as, 3
  %conflict.rdx50 = or i1 %conflict.rdx48, %diff.check49
  %i.at = add nsw i64 %i.ah, -1
  %diff.check51 = icmp ult i64 %i.at, 3
  %conflict.rdx52 = or i1 %conflict.rdx50, %diff.check51
  %n.vec = and i64 %i.x, 32764                    ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.x
  br label %.preheader131.i

.split.us:                                        ; preds = %bb.b
  br i1 %switch.i, label %.preheader.i.us.us, label %.preheader.i.us

.preheader.i.us.us:                               ; preds = %.split.us, %_ZL25stbiw__write_hdr_scanlineP19stbi__write_contextiiPhPf.exit.loopexit.us.split.us.us
  %.06.us.us = phi i32 [ %i.bz, %_ZL25stbiw__write_hdr_scanlineP19stbi__write_contextiiPhPf.exit.loopexit.us.split.us.us ], [ 0, %.split.us ] ; 3 uses
  %i.au = load i32, ptr @_ZL30stbi__flip_vertically_on_write, align 4, !tbaa !23
  %.not.us.us = icmp eq i32 %i.au, 0
end_hunk_0
