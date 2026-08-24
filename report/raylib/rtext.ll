Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtext?download=true
inline.NumInlined: 306
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 46
begin_hunk_0_@LoadFontDefault:bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store float 1.000000e+01, ptr %i.am, align 4
  %i.an = fadd float %i.ak, 1.000000e+00
  %i.ao = fptosi float %i.an to i32
  %i.ap = add nsw i32 %.05166, %i.ao              ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, 127
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.as = add nsw i32 %.05465, 1                  ; 2 uses
  %i.at = add nsw i32 %i.aj, 2
  store float 1.000000e+00, ptr %i.ac, align 4
  %i.au = mul nsw i32 %i.as, 11
  %i.av = add nsw i32 %i.au, 1
  %i.aw = sitofp i32 %i.av to float
  store float %i.aw, ptr %i.ar, align 4
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.k
  %.155 = phi i32 [ %i.as, %bb.k ], [ %.05465, %.lr.ph ]
  %.1 = phi i32 [ %i.at, %bb.k ], [ %i.ap, %.lr.ph ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i32 0, ptr %i.ax, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i32 0, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 0, ptr %i.az, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39
  %i.bb = load <2 x float>, ptr %i.ac, align 4
  %i.bc = load <2 x float>, ptr %i.al, align 4
  call void @ImageFromImage(ptr dead_on_unwind nonnull writable sret(%struct.Image) align 8 %2, ptr noundef nonnull byval(%struct.Image) align 8 %0, <2 x float> %i.bb, <2 x float> %i.bc) #39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1 ; 2 uses
  %i.bd = load i32, ptr getelementptr inbounds nuw (i8, ptr @defaultFont, i64 4), align 4
  %i.be = sext i32 %i.bd to i64
  %i.bf = icmp slt i64 %indvars.iv.next77, %i.be
  br i1 %i.bf, label %.lr.ph, label %._crit_edge

bb.m:                                             ; preds = %._crit_edge, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #39
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.m
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #7

declare void @LoadTextureFromImage(ptr dead_on_unwind writable sret(%struct.Texture) align 4, ptr noundef byval(%struct.Image) align 8) local_unnamed_addr #8

declare void @UnloadImage(ptr noundef byval(%struct.Image) align 8) local_unnamed_addr #8

declare void @ImageFromImage(ptr dead_on_unwind writable sret(%struct.Image) align 8, ptr noundef byval(%struct.Image) align 8, <2 x float>, <2 x float>) local_unnamed_addr #8

declare void @TraceLog(i32 noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define hidden void @UnloadFontDefault() local_unnamed_addr #9 {
bb.a:
  %0 = alloca %struct.Texture, align 8            ; 4 uses
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @defaultFont, i64 4), align 4
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @defaultFont, i64 12), i64 20, i1 false)
  tail call void @UnloadTexture(ptr noundef nonnull byval(%struct.Texture) align 8 %0) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #39
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @defaultFont, i64 40), align 8
  tail call void @free(ptr noundef %i.c) #39
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @defaultFont, i64 32), align 8
  tail call void @free(ptr noundef %i.d) #39
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @defaultFont, i64 4), align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @defaultFont, i64 32), i8 0, i64 16, i1 false)
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @defaultFont, i64 40), align 8
  %i.f = getelementptr inbounds nuw [40 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  tail call void @UnloadImage(ptr noundef nonnull byval(%struct.Image) align 8 %i.g) #39
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @defaultFont, i64 4), align 4
  %i.i = sext i32 %i.h to i64
  %i.j = icmp slt i64 %indvars.iv.next, %i.i
  br i1 %i.j, label %.lr.ph, label %._crit_edge
}

declare void @UnloadTexture(ptr noundef byval(%struct.Texture) align 8) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @GetFontDefault(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.Font) align 8 captures(none) initializes((0, 48)) %0) local_unnamed_addr #11 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) @defaultFont, i64 48, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @LoadFont(ptr dead_on_unwind noalias nofree writable sret(%struct.Font) align 8 captures(none) initializes((0, 48)) %0, ptr noundef %1) local_unnamed_addr #6 {
bb.a:
  %2 = alloca %struct.Texture, align 8            ; 5 uses
  %i.a = alloca [256 x i8], align 16              ; 17 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 12 uses
  %i.g = alloca [8 x [129 x i8]], align 16        ; 5 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %3 = alloca %struct.Image, align 8              ; 4 uses
  %4 = alloca %struct.Image, align 8              ; 10 uses
  %5 = alloca %struct.Texture, align 4            ; 5 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  %i.m = alloca i32, align 4                      ; 5 uses
  %i.n = alloca i32, align 4                      ; 5 uses
  %i.o = alloca i32, align 4                      ; 5 uses
  %i.p = alloca i32, align 4                      ; 5 uses
  %i.q = alloca i32, align 4                      ; 5 uses
  %6 = alloca %struct.Image, align 8              ; 4 uses
  %7 = alloca %struct.Image, align 8              ; 4 uses
  %i.r = alloca i32, align 4                      ; 5 uses
  %8 = alloca %struct.Font, align 8               ; 5 uses
  %9 = alloca %struct.Image, align 8              ; 6 uses
  %10 = alloca %struct.Texture, align 8           ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  %i.s = tail call zeroext i1 @IsFileExtension(ptr noundef %1, ptr noundef nonnull @.str.1) #39
  br i1 %i.s, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = tail call zeroext i1 @IsFileExtension(ptr noundef %1, ptr noundef nonnull @.str.2) #39
  br i1 %i.t, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, i8 0, i64 48, i1 false), !alias.scope !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #39, !noalias !6
  store i32 0, ptr %i.r, align 4, !noalias !6
  %i.u = call ptr @LoadFileData(ptr noundef %1, ptr noundef nonnull %i.r) #39, !noalias !6 ; 3 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %LoadFontEx.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = call ptr @GetFileExtension(ptr noundef %1) #39, !noalias !6
  %i.w = load i32, ptr %i.r, align 4, !noalias !6
  call void @LoadFontFromMemory(ptr dead_on_unwind nonnull writable sret(%struct.Font) align 8 %8, ptr noundef %i.v, ptr noundef nonnull %i.u, i32 noundef %i.w, i32 noundef 32, ptr noundef null, i32 noundef 95)
  call void @UnloadFileData(ptr noundef nonnull %i.u) #39, !noalias !6
  br label %LoadFontEx.exit

LoadFontEx.exit:                                  ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #39, !noalias !6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %8, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  br label %bb.av

bb.e:                                             ; preds = %bb.b
  %i.x = tail call zeroext i1 @IsFileExtension(ptr noundef %1, ptr noundef nonnull @.str.3) #39
  br i1 %i.x, label %bb.f, label %bb.ar

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39, !noalias !9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false), !noalias !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #39, !noalias !9
  store i32 0, ptr %i.b, align 4, !noalias !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #39, !noalias !9
  store i32 0, ptr %i.c, align 4, !noalias !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #39, !noalias !9
  store i32 0, ptr %i.d, align 4, !noalias !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #39, !noalias !9
  store i32 0, ptr %i.e, align 4, !noalias !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #39, !noalias !9
  store i32 1, ptr %i.f, align 4, !noalias !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #39, !noalias !9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1032) %i.g, i8 0, i64 1032, i1 false), !noalias !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #39, !noalias !9
  store i32 0, ptr %i.h, align 4, !noalias !9
  %i.y = tail call ptr @LoadFileText(ptr noundef %1) #39, !noalias !9 ; 12 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %LoadBMFont.exit, label %.preheader152.i

.preheader152.i:                                  ; preds = %bb.f, %bb.g
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.4, %bb.g ], [ 0, %bb.f ] ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv.i.i
  %i.ab = load i8, ptr %i.aa, align 1, !noalias !9
  %i.ac = icmp eq i8 %i.ab, 10
  br i1 %i.ac, label %.split.loop.exit.i.i, label %.preheader152.i.1

.preheader152.i.1:                                ; preds = %.preheader152.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv.next.i.i
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !9
  %i.af = icmp eq i8 %i.ae, 10
  br i1 %i.af, label %.split.loop.exit.i.i, label %.preheader152.i.2

.preheader152.i.2:                                ; preds = %.preheader152.i.1
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv.next.i.i.1
  %i.ah = load i8, ptr %i.ag, align 1, !noalias !9
  %i.ai = icmp eq i8 %i.ah, 10
  br i1 %i.ai, label %.split.loop.exit.i.i, label %.preheader152.i.3

.preheader152.i.3:                                ; preds = %.preheader152.i.2
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv.next.i.i.2
  %i.ak = load i8, ptr %i.aj, align 1, !noalias !9
  %i.al = icmp eq i8 %i.ak, 10
  br i1 %i.al, label %.split.loop.exit.i.i, label %.preheader152.i.4

.preheader152.i.4:                                ; preds = %.preheader152.i.3
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv.next.i.i.3
  %i.an = load i8, ptr %i.am, align 1, !noalias !9
  %i.ao = icmp eq i8 %i.an, 10
  br i1 %i.ao, label %.split.loop.exit.i.i, label %bb.g

bb.g:                                             ; preds = %.preheader152.i.4
  %indvars.iv.next.i.i.4 = add nuw nsw i64 %indvars.iv.i.i, 5 ; 2 uses
  %exitcond.not.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.4, 255
  br i1 %exitcond.not.i.i.4, label %GetLine.exit.i, label %.preheader152.i

.split.loop.exit.i.i:                             ; preds = %.preheader152.i.4, %.preheader152.i.3, %.preheader152.i.2, %.preheader152.i.1, %.preheader152.i
  %indvars.iv.i.i.lcssa = phi i64 [ %indvars.iv.i.i, %.preheader152.i ], [ %indvars.iv.next.i.i, %.preheader152.i.1 ], [ %indvars.iv.next.i.i.1, %.preheader152.i.2 ], [ %indvars.iv.next.i.i.2, %.preheader152.i.3 ], [ %indvars.iv.next.i.i.3, %.preheader152.i.4 ]
  %11 = trunc nuw nsw i64 %indvars.iv.i.i.lcssa to i32
  br label %GetLine.exit.i

GetLine.exit.i:                                   ; preds = %bb.g, %.split.loop.exit.i.i
  %.0.lcssa.i.i = phi i32 [ %11, %.split.loop.exit.i.i ], [ 255, %bb.g ] ; 2 uses
  %12 = zext nneg i32 %.0.lcssa.i.i to i64        ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull readonly align 1 %i.y, i64 %12, i1 false), !noalias !9
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 %12
  store i8 0, ptr %i.ap, align 1, !noalias !9
  %13 = sext i32 %.0.lcssa.i.i to i64
  %i.aq = getelementptr i8, ptr %i.y, i64 %13
  %i.ar = getelementptr i8, ptr %i.aq, i64 1      ; 7 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.m, %GetLine.exit.i
  %indvars.iv.i123.i = phi i64 [ 0, %GetLine.exit.i ], [ %indvars.iv.next.i124.i.4, %bb.m ] ; 7 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %indvars.iv.i123.i
  %i.at = load i8, ptr %i.as, align 1, !noalias !9
  %i.au = icmp eq i8 %i.at, 10
  br i1 %i.au, label %.split.loop.exit.i127.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.i124.i = add nuw nsw i64 %indvars.iv.i123.i, 1 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 %indvars.iv.next.i124.i
  %i.aw = load i8, ptr %i.av, align 1, !noalias !9
  %i.ax = icmp eq i8 %i.aw, 10
  br i1 %i.ax, label %.split.loop.exit.i127.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %indvars.iv.next.i124.i.1 = add nuw nsw i64 %indvars.iv.i123.i, 2 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 %indvars.iv.next.i124.i.1
  %i.az = load i8, ptr %i.ay, align 1, !noalias !9
  %i.ba = icmp eq i8 %i.az, 10
  br i1 %i.ba, label %.split.loop.exit.i127.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %indvars.iv.next.i124.i.2 = add nuw nsw i64 %indvars.iv.i123.i, 3 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 %indvars.iv.next.i124.i.2
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !9
  %i.bd = icmp eq i8 %i.bc, 10
  br i1 %i.bd, label %.split.loop.exit.i127.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %indvars.iv.next.i124.i.3 = add nuw nsw i64 %indvars.iv.i123.i, 4 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ar, i64 %indvars.iv.next.i124.i.3
  %i.bf = load i8, ptr %i.be, align 1, !noalias !9
  %i.bg = icmp eq i8 %i.bf, 10
  br i1 %i.bg, label %.split.loop.exit.i127.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %indvars.iv.next.i124.i.4 = add nuw nsw i64 %indvars.iv.i123.i, 5 ; 2 uses
  %exitcond.not.i125.i.4 = icmp eq i64 %indvars.iv.next.i124.i.4, 255
  br i1 %exitcond.not.i125.i.4, label %GetLine.exit128.i, label %bb.h

.split.loop.exit.i127.i:                          ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %indvars.iv.i123.i.lcssa = phi i64 [ %indvars.iv.i123.i, %bb.h ], [ %indvars.iv.next.i124.i, %bb.i ], [ %indvars.iv.next.i124.i.1, %bb.j ], [ %indvars.iv.next.i124.i.2, %bb.k ], [ %indvars.iv.next.i124.i.3, %bb.l ]
  %14 = trunc nuw nsw i64 %indvars.iv.i123.i.lcssa to i32
  br label %GetLine.exit128.i

GetLine.exit128.i:                                ; preds = %bb.m, %.split.loop.exit.i127.i
  %.0.lcssa.i126.i = phi i32 [ %14, %.split.loop.exit.i127.i ], [ 255, %bb.m ] ; 2 uses
  %15 = zext nneg i32 %.0.lcssa.i126.i to i64     ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull readonly align 1 %i.ar, i64 %15, i1 false), !noalias !9
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %15
  store i8 0, ptr %i.bh, align 1, !noalias !9
  %i.bi = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.78) #41, !noalias !9
  %i.bj = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %i.bi, ptr noundef nonnull @.str.79, ptr noundef nonnull %i.b, ptr noundef nonnull %i.h, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #39, !noalias !9
  %16 = sext i32 %.0.lcssa.i126.i to i64
  %i.bk = getelementptr i8, ptr %i.ar, i64 %16    ; 2 uses
  %i.bl = icmp slt i32 %i.bj, 4
  br i1 %i.bl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %GetLine.exit128.i
  call void @UnloadFileText(ptr noundef nonnull %i.y) #39, !noalias !9
  br label %LoadBMFont.exit

bb.o:                                             ; preds = %GetLine.exit128.i
  %i.bm = load i32, ptr %i.f, align 4, !noalias !9 ; 3 uses
  %i.bn = icmp sgt i32 %i.bm, 8
  br i1 %i.bn, label %.thread215.i, label %bb.p

.thread215.i:                                     ; preds = %bb.o
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.80, ptr noundef %1, i32 noundef %i.bm, i32 noundef 8) #39, !noalias !9
  store i32 8, ptr %i.f, align 4, !noalias !9
  %.0112160216.i = getelementptr i8, ptr %i.bk, i64 1
  br label %.preheader.i.preheader

bb.p:                                             ; preds = %bb.o
  %.0112160.i = getelementptr i8, ptr %i.bk, i64 1 ; 2 uses
  %.not161.i = icmp sgt i32 %i.bm, 0
  br i1 %.not161.i, label %.preheader.i.preheader, label %.thread.preheader.i

.preheader.i.preheader:                           ; preds = %bb.p, %.thread215.i
  %.0112163.i.ph = phi ptr [ %.0112160216.i, %.thread215.i ], [ %.0112160.i, %bb.p ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.w
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.w ], [ 0, %.preheader.i.preheader ] ; 2 uses
  %.0112163.i = phi ptr [ %.0112.i, %bb.w ], [ %.0112163.i.ph, %.preheader.i.preheader ] ; 7 uses
  br label %bb.q

.thread.preheader.i:                              ; preds = %bb.w, %bb.p
  %.0112.lcssa.i = phi ptr [ %.0112160.i, %bb.p ], [ %.0112.i, %bb.w ] ; 7 uses
  br label %.thread.i

bb.q:                                             ; preds = %bb.v, %.preheader.i
  %indvars.iv.i129.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i130.i.4, %bb.v ] ; 7 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0112163.i, i64 %indvars.iv.i129.i
  %i.bp = load i8, ptr %i.bo, align 1, !noalias !9
  %i.bq = icmp eq i8 %i.bp, 10
  br i1 %i.bq, label %.split.loop.exit.i133.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %indvars.iv.next.i130.i = add nuw nsw i64 %indvars.iv.i129.i, 1 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.0112163.i, i64 %indvars.iv.next.i130.i
  %i.bs = load i8, ptr %i.br, align 1, !noalias !9
  %i.bt = icmp eq i8 %i.bs, 10
  br i1 %i.bt, label %.split.loop.exit.i133.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %indvars.iv.next.i130.i.1 = add nuw nsw i64 %indvars.iv.i129.i, 2 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0112163.i, i64 %indvars.iv.next.i130.i.1
  %i.bv = load i8, ptr %i.bu, align 1, !noalias !9
  %i.bw = icmp eq i8 %i.bv, 10
  br i1 %i.bw, label %.split.loop.exit.i133.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %indvars.iv.next.i130.i.2 = add nuw nsw i64 %indvars.iv.i129.i, 3 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0112163.i, i64 %indvars.iv.next.i130.i.2
  %i.by = load i8, ptr %i.bx, align 1, !noalias !9
  %i.bz = icmp eq i8 %i.by, 10
  br i1 %i.bz, label %.split.loop.exit.i133.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %indvars.iv.next.i130.i.3 = add nuw nsw i64 %indvars.iv.i129.i, 4 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0112163.i, i64 %indvars.iv.next.i130.i.3
  %i.cb = load i8, ptr %i.ca, align 1, !noalias !9
  %i.cc = icmp eq i8 %i.cb, 10
  br i1 %i.cc, label %.split.loop.exit.i133.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %indvars.iv.next.i130.i.4 = add nuw nsw i64 %indvars.iv.i129.i, 5 ; 2 uses
  %exitcond.not.i131.i.4 = icmp eq i64 %indvars.iv.next.i130.i.4, 255
  br i1 %exitcond.not.i131.i.4, label %GetLine.exit134.i, label %bb.q

.split.loop.exit.i133.i:                          ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q
  %indvars.iv.i129.i.lcssa = phi i64 [ %indvars.iv.i129.i, %bb.q ], [ %indvars.iv.next.i130.i, %bb.r ], [ %indvars.iv.next.i130.i.1, %bb.s ], [ %indvars.iv.next.i130.i.2, %bb.t ], [ %indvars.iv.next.i130.i.3, %bb.u ]
  %17 = trunc nuw nsw i64 %indvars.iv.i129.i.lcssa to i32
  br label %GetLine.exit134.i

GetLine.exit134.i:                                ; preds = %bb.v, %.split.loop.exit.i133.i
  %.0.lcssa.i132.i = phi i32 [ %17, %.split.loop.exit.i133.i ], [ 255, %bb.v ] ; 2 uses
  %18 = zext nneg i32 %.0.lcssa.i132.i to i64     ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull readonly align 1 %.0112163.i, i64 %18, i1 false), !noalias !9
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 %18
  store i8 0, ptr %i.cd, align 1, !noalias !9
  %i.ce = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.81) #41, !noalias !9
  %i.cf = getelementptr inbounds nuw [129 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.cg = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %i.ce, ptr noundef nonnull @.str.82, ptr noundef nonnull %i.cf) #39, !noalias !9
  %i.ch = icmp slt i32 %i.cg, 1
  br i1 %i.ch, label %bb.x, label %bb.w

bb.w:                                             ; preds = %GetLine.exit134.i
  %19 = sext i32 %.0.lcssa.i132.i to i64
  %i.ci = getelementptr i8, ptr %.0112163.i, i64 %19
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.0112.i = getelementptr i8, ptr %i.ci, i64 1   ; 2 uses
  %i.cj = load i32, ptr %i.f, align 4, !noalias !9
  %i.ck = sext i32 %i.cj to i64
  %.not.i7 = icmp slt i64 %indvars.iv.next.i, %i.ck
  br i1 %.not.i7, label %.preheader.i, label %.thread.preheader.i

bb.x:                                             ; preds = %GetLine.exit134.i
  call void @UnloadFileText(ptr noundef nonnull %i.y) #39, !noalias !9
  br label %LoadBMFont.exit

.thread.i:                                        ; preds = %bb.y, %.thread.preheader.i
  %indvars.iv.i135.i = phi i64 [ 0, %.thread.preheader.i ], [ %indvars.iv.next.i136.i.4, %bb.y ] ; 7 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0112.lcssa.i, i64 %indvars.iv.i135.i
  %i.cm = load i8, ptr %i.cl, align 1, !noalias !9
  %i.cn = icmp eq i8 %i.cm, 10
  br i1 %i.cn, label %.split.loop.exit.i139.i, label %.thread.i.1

.thread.i.1:                                      ; preds = %.thread.i
  %indvars.iv.next.i136.i = add nuw nsw i64 %indvars.iv.i135.i, 1 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.0112.lcssa.i, i64 %indvars.iv.next.i136.i
  %i.cp = load i8, ptr %i.co, align 1, !noalias !9
  %i.cq = icmp eq i8 %i.cp, 10
  br i1 %i.cq, label %.split.loop.exit.i139.i, label %.thread.i.2

.thread.i.2:                                      ; preds = %.thread.i.1
  %indvars.iv.next.i136.i.1 = add nuw nsw i64 %indvars.iv.i135.i, 2 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0112.lcssa.i, i64 %indvars.iv.next.i136.i.1
  %i.cs = load i8, ptr %i.cr, align 1, !noalias !9
  %i.ct = icmp eq i8 %i.cs, 10
  br i1 %i.ct, label %.split.loop.exit.i139.i, label %.thread.i.3

.thread.i.3:                                      ; preds = %.thread.i.2
  %indvars.iv.next.i136.i.2 = add nuw nsw i64 %indvars.iv.i135.i, 3 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.0112.lcssa.i, i64 %indvars.iv.next.i136.i.2
  %i.cv = load i8, ptr %i.cu, align 1, !noalias !9
  %i.cw = icmp eq i8 %i.cv, 10
  br i1 %i.cw, label %.split.loop.exit.i139.i, label %.thread.i.4

.thread.i.4:                                      ; preds = %.thread.i.3
  %indvars.iv.next.i136.i.3 = add nuw nsw i64 %indvars.iv.i135.i, 4 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.0112.lcssa.i, i64 %indvars.iv.next.i136.i.3
  %i.cy = load i8, ptr %i.cx, align 1, !noalias !9
  %i.cz = icmp eq i8 %i.cy, 10
  br i1 %i.cz, label %.split.loop.exit.i139.i, label %bb.y

bb.y:                                             ; preds = %.thread.i.4
  %indvars.iv.next.i136.i.4 = add nuw nsw i64 %indvars.iv.i135.i, 5 ; 2 uses
  %exitcond.not.i137.i.4 = icmp eq i64 %indvars.iv.next.i136.i.4, 255
  br i1 %exitcond.not.i137.i.4, label %GetLine.exit140.i, label %.thread.i

.split.loop.exit.i139.i:                          ; preds = %.thread.i.4, %.thread.i.3, %.thread.i.2, %.thread.i.1, %.thread.i
  %indvars.iv.i135.i.lcssa = phi i64 [ %indvars.iv.i135.i, %.thread.i ], [ %indvars.iv.next.i136.i, %.thread.i.1 ], [ %indvars.iv.next.i136.i.1, %.thread.i.2 ], [ %indvars.iv.next.i136.i.2, %.thread.i.3 ], [ %indvars.iv.next.i136.i.3, %.thread.i.4 ]
  %20 = trunc nuw nsw i64 %indvars.iv.i135.i.lcssa to i32
  br label %GetLine.exit140.i

GetLine.exit140.i:                                ; preds = %bb.y, %.split.loop.exit.i139.i
  %.0.lcssa.i138.i = phi i32 [ %20, %.split.loop.exit.i139.i ], [ 255, %bb.y ] ; 2 uses
  %21 = zext nneg i32 %.0.lcssa.i138.i to i64     ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull readonly align 1 %.0112.lcssa.i, i64 %21, i1 false), !noalias !9
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 %21
  store i8 0, ptr %i.da, align 1, !noalias !9
  %i.db = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.83) #41, !noalias !9
  %i.dc = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %i.db, ptr noundef nonnull @.str.84, ptr noundef nonnull %i.c) #39, !noalias !9
  %22 = sext i32 %.0.lcssa.i138.i to i64
  %i.dd = getelementptr i8, ptr %.0112.lcssa.i, i64 %22
  %i.de = icmp slt i32 %i.dc, 1
  br i1 %i.de, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %GetLine.exit140.i
  call void @UnloadFileText(ptr noundef nonnull %i.y) #39, !noalias !9
  br label %LoadBMFont.exit

bb.aa:                                            ; preds = %GetLine.exit140.i
  %i.df = load i32, ptr %i.f, align 4, !noalias !9 ; 2 uses
  %i.dg = sext i32 %i.df to i64
  %i.dh = call noalias ptr @calloc(i64 noundef %i.dg, i64 noundef 24) #40, !noalias !9 ; 6 uses
  %i.di = icmp sgt i32 %i.df, 0
  br i1 %i.di, label %.lr.ph168.i, label %._crit_edge169.thread.i

._crit_edge169.thread.i:                          ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39, !noalias !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.dh, i64 24, i1 false), !noalias !9
  br label %.loopexit.i

._crit_edge169.i:                                 ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39, !noalias !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.dh, i64 24, i1 false), !noalias !9
  %i.dj = icmp sgt i32 %i.gb, 1
  br i1 %i.dj, label %.lr.ph173.i, label %.loopexit.i

.lr.ph168.i:                                      ; preds = %bb.aa, %bb.ac
  %indvars.iv199.i = phi i64 [ %indvars.iv.next200.i, %bb.ac ], [ 0, %bb.aa ] ; 3 uses
  %i.dk = getelementptr inbounds nuw [24 x i8], ptr %i.dh, i64 %indvars.iv199.i ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39, !noalias !9
  %i.dl = call ptr @GetDirectoryPath(ptr noundef %1) #39, !noalias !9
  %i.dm = getelementptr inbounds nuw [129 x i8], ptr %i.g, i64 %indvars.iv199.i
  %i.dn = call ptr (ptr, ...) @TextFormat(ptr noundef nonnull @.str.85, ptr noundef %i.dl, ptr noundef nonnull %i.dm), !noalias !9
  call void @LoadImage(ptr dead_on_unwind nonnull writable sret(%struct.Image) align 8 %3, ptr noundef nonnull %i.dn) #39, !noalias !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dk, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !noalias !9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39, !noalias !9
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 20 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !noalias !9
  %i.dq = icmp eq i32 %i.dp, 1
  br i1 %i.dq, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph168.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.ds = load i32, ptr %i.dr, align 8, !noalias !9
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dk, i64 12
  %i.du = load i32, ptr %i.dt, align 4, !noalias !9
  %i.dv = mul nsw i32 %i.du, %i.ds                ; 3 uses
  %i.dw = sext i32 %i.dv to i64
  %i.dx = call noalias ptr @calloc(i64 noundef %i.dw, i64 noundef 2) #40, !noalias !9 ; 11 uses
  %i.dy = icmp sgt i32 %i.dv, 0
  br i1 %i.dy, label %iter.check, label %._crit_edge.i

iter.check:                                       ; preds = %bb.ab
  %i.dz = shl nuw i32 %i.dv, 1                    ; 3 uses
  %i.ea = load ptr, ptr %i.dk, align 8, !noalias !9 ; 9 uses
  %smax.i = call i32 @llvm.smax.i32(i32 %i.dz, i32 2) ; 3 uses
  %i.eb = add nsw i32 %smax.i, -2
  %i.ec = lshr exact i32 %i.eb, 1
  %i.ed = add nuw nsw i32 %i.ec, 1
  %wide.trip.count.i = zext nneg i32 %i.ed to i64 ; 6 uses
  %min.iters.check = icmp slt i32 %i.dz, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ee = zext nneg i32 %smax.i to i64            ; 2 uses
  %scevgep = getelementptr i8, ptr %i.dx, i64 %i.ee
  %scevgep41 = getelementptr i8, ptr %i.ea, i64 1
  %i.ef = add nsw i64 %i.ee, -2
  %i.eg = lshr exact i64 %i.ef, 1
  %scevgep42 = getelementptr i8, ptr %scevgep41, i64 %i.eg
  %bound0 = icmp ult ptr %i.dx, %scevgep42
  %bound1 = icmp ult ptr %i.ea, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check43 = icmp slt i32 %i.dz, 32
  br i1 %min.iters.check43, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.eh = and i64 %wide.trip.count.i, 12
  %n.vec = and i64 %wide.trip.count.i, 2147483632 ; 5 uses
  %i.ei = shl nuw nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ej = shl nuw i64 %index, 1                   ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.ej
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.en = getelementptr inbounds nuw i8, ptr %i.ea, i64 %index ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %wide.load = load <8 x i8>, ptr %i.en, align 1, !alias.scope !12, !noalias !9
  %wide.load44 = load <8 x i8>, ptr %i.eo, align 1, !alias.scope !12, !noalias !9
  %interleaved.vec = shufflevector <8 x i8> splat (i8 -1), <8 x i8> %wide.load, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.ek, align 1, !alias.scope !15, !noalias !9
  %interleaved.vec45 = shufflevector <8 x i8> splat (i8 -1), <8 x i8> %wide.load44, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec45, ptr %i.em, align 1, !alias.scope !15, !noalias !9
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ep = icmp eq i64 %index.next, %n.vec
  br i1 %i.ep, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.eh, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !20

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec46 = and i64 %wide.trip.count.i, 2147483644 ; 4 uses
  %i.eq = shl nuw nsw i64 %n.vec46, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index47 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next50, %vec.epilog.vector.body ] ; 3 uses
  %i.er = shl nuw i64 %index47, 1
  %i.es = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %i.ea, i64 %index47
  %wide.load48 = load <4 x i8>, ptr %i.et, align 1, !alias.scope !12, !noalias !9
  %interleaved.vec49 = shufflevector <4 x i8> splat (i8 -1), <4 x i8> %wide.load48, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec49, ptr %i.es, align 1, !alias.scope !15, !noalias !9
  %index.next50 = add nuw i64 %index47, 4         ; 2 uses
  %i.eu = icmp eq i64 %index.next50, %n.vec46
  br i1 %i.eu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !21

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n51 = icmp eq i64 %n.vec46, %wide.trip.count.i
  br i1 %cmp.n51, label %._crit_edge.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv194.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec46, %vec.epilog.middle.block ] ; 3 uses
  %indvars.iv192.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.ei, %vec.epilog.iter.check ], [ %i.eq, %vec.epilog.middle.block ] ; 2 uses
  %i.ev = zext nneg i32 %smax.i to i64
  %i.ew = add nsw i64 %i.ev, -2
  %i.ex = lshr exact i64 %i.ew, 1                 ; 2 uses
  %i.ey = add nuw i64 %i.ex, 1
  %i.ez = sub nsw i64 %i.ex, %indvars.iv194.i.ph
  %xtraiter = and i64 %i.ey, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv194.i.prol = phi i64 [ %indvars.iv.next195.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv194.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv192.i.prol = phi i64 [ %indvars.iv.next193.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv192.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dx, i64 %indvars.iv192.i.prol ; 2 uses
  store i8 -1, ptr %i.fa, align 1, !noalias !9
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %indvars.iv194.i.prol
  %i.fc = load i8, ptr %i.fb, align 1, !noalias !9
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 1
  store i8 %i.fc, ptr %i.fd, align 1, !noalias !9
  %indvars.iv.next193.i.prol = add nuw nsw i64 %indvars.iv192.i.prol, 2 ; 2 uses
  %indvars.iv.next195.i.prol = add nuw nsw i64 %indvars.iv194.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !22

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv194.i.unr = phi i64 [ %indvars.iv194.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next195.i.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv192.i.unr = phi i64 [ %indvars.iv192.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next193.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.fe = icmp ult i64 %i.ez, 3
  br i1 %i.fe, label %._crit_edge.i, label %vec.epilog.scalar.ph

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.ab
  call void @UnloadImage(ptr noundef nonnull byval(%struct.Image) align 8 %i.dk) #39, !noalias !9
  store ptr %i.dx, ptr %i.dk, align 8, !noalias !9
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  store i32 1, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !9
  store i32 2, ptr %i.do, align 4, !noalias !9
  br label %bb.ac

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv194.i = phi i64 [ %indvars.iv.next195.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv194.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %indvars.iv192.i = phi i64 [ %indvars.iv.next193.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv192.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dx, i64 %indvars.iv192.i ; 2 uses
  store i8 -1, ptr %i.ff, align 1, !noalias !9
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ea, i64 %indvars.iv194.i
  %i.fh = load i8, ptr %i.fg, align 1, !noalias !9
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 1
  store i8 %i.fh, ptr %i.fi, align 1, !noalias !9
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dx, i64 %indvars.iv192.i ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 2
  store i8 -1, ptr %i.fk, align 1, !noalias !9
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ea, i64 %indvars.iv194.i
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 1
  %i.fn = load i8, ptr %i.fm, align 1, !noalias !9
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fj, i64 3
  store i8 %i.fn, ptr %i.fo, align 1, !noalias !9
  %i.fp = getelementptr inbounds nuw i8, ptr %i.dx, i64 %indvars.iv192.i ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  store i8 -1, ptr %i.fq, align 1, !noalias !9
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ea, i64 %indvars.iv194.i
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 2
  %i.ft = load i8, ptr %i.fs, align 1, !noalias !9
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fp, i64 5
  store i8 %i.ft, ptr %i.fu, align 1, !noalias !9
  %i.fv = getelementptr inbounds nuw i8, ptr %i.dx, i64 %indvars.iv192.i ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 6
  store i8 -1, ptr %i.fw, align 1, !noalias !9
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ea, i64 %indvars.iv194.i
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 3
  %i.fz = load i8, ptr %i.fy, align 1, !noalias !9
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fv, i64 7
  store i8 %i.fz, ptr %i.ga, align 1, !noalias !9
  %indvars.iv.next193.i.3 = add nuw nsw i64 %indvars.iv192.i, 8
  %indvars.iv.next195.i.3 = add nuw nsw i64 %indvars.iv194.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next195.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %vec.epilog.scalar.ph, !llvm.loop !23

bb.ac:                                            ; preds = %._crit_edge.i, %.lr.ph168.i
  %indvars.iv.next200.i = add nuw nsw i64 %indvars.iv199.i, 1 ; 2 uses
  %i.gb = load i32, ptr %i.f, align 4, !noalias !9 ; 2 uses
  %i.gc = sext i32 %i.gb to i64
  %i.gd = icmp slt i64 %indvars.iv.next200.i, %i.gc
  br i1 %i.gd, label %.lr.ph168.i, label %._crit_edge169.i

._crit_edge174.i:                                 ; preds = %.lr.ph173.i
  %i.ge = icmp sgt i32 %.pr.i, 1
  br i1 %i.ge, label %bb.ad, label %.loopexit.i

.lr.ph173.i:                                      ; preds = %._crit_edge169.i, %.lr.ph173.i
  %indvars.iv202.i = phi i64 [ %indvars.iv.next203.i, %.lr.ph173.i ], [ 1, %._crit_edge169.i ] ; 2 uses
  %i.gf = getelementptr inbounds nuw [24 x i8], ptr %i.dh, i64 %indvars.iv202.i
  call void @UnloadImage(ptr noundef nonnull byval(%struct.Image) align 8 %i.gf) #39, !noalias !9
  %indvars.iv.next203.i = add nuw nsw i64 %indvars.iv202.i, 1 ; 2 uses
  %.pr.i = load i32, ptr %i.f, align 4, !noalias !9 ; 3 uses
  %i.gg = sext i32 %.pr.i to i64
  %i.gh = icmp slt i64 %indvars.iv.next203.i, %i.gg
  br i1 %i.gh, label %.lr.ph173.i, label %._crit_edge174.i

bb.ad:                                            ; preds = %._crit_edge174.i
  %i.gi = load i32, ptr %i.d, align 4, !noalias !9
  %i.gj = load i32, ptr %i.e, align 4, !noalias !9
  %i.gk = mul nsw i32 %i.gj, %.pr.i
  call void @ImageResizeCanvas(ptr noundef nonnull %4, i32 noundef %i.gi, i32 noundef %i.gk, i32 noundef 0, i32 noundef 0, i32 -16777216) #39, !noalias !9
  %i.gl = load i32, ptr %i.f, align 4, !noalias !9
  %i.gm = icmp sgt i32 %i.gl, 1
  br i1 %i.gm, label %.lr.ph178.i, label %.loopexit.i

.lr.ph178.i:                                      ; preds = %bb.ad, %.lr.ph178.i
  %indvars.iv205.i = phi i64 [ %indvars.iv.next206.i, %.lr.ph178.i ], [ 1, %bb.ad ] ; 3 uses
  %i.gn = load i32, ptr %i.d, align 4, !noalias !9
  %i.go = sitofp i32 %i.gn to float
  %.sroa.525.8.vec.insert.i = insertelement <2 x float> poison, float %i.go, i64 0
  %i.gp = load i32, ptr %i.e, align 4, !noalias !9
  %i.gq = sitofp i32 %i.gp to float               ; 2 uses
  %.sroa.525.12.vec.insert.i = insertelement <2 x float> %.sroa.525.8.vec.insert.i, float %i.gq, i64 1 ; 2 uses
  %i.gr = trunc nuw nsw i64 %indvars.iv205.i to i32
  %i.gs = uitofp nneg i32 %i.gr to float
  %i.gt = fmul nnan float %i.gs, %i.gq
  %.sroa.020.4.vec.insert.i = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.gt, i64 1
  %i.gu = getelementptr inbounds nuw [24 x i8], ptr %i.dh, i64 %indvars.iv205.i
  call void @ImageDraw(ptr noundef nonnull %4, ptr noundef nonnull byval(%struct.Image) align 8 %i.gu, <2 x float> zeroinitializer, <2 x float> %.sroa.525.12.vec.insert.i, <2 x float> %.sroa.020.4.vec.insert.i, <2 x float> %.sroa.525.12.vec.insert.i, i32 -1) #39, !noalias !9
  %indvars.iv.next206.i = add nuw nsw i64 %indvars.iv205.i, 1 ; 2 uses
  %i.gv = load i32, ptr %i.f, align 4, !noalias !9
  %i.gw = sext i32 %i.gv to i64
  %i.gx = icmp slt i64 %indvars.iv.next206.i, %i.gw
  br i1 %i.gx, label %.lr.ph178.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph178.i, %bb.ad, %._crit_edge174.i, %._crit_edge169.i, %._crit_edge169.thread.i
  call void @free(ptr noundef nonnull %i.dh) #39, !noalias !9
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39, !noalias !9
  call void @LoadTextureFromImage(ptr dead_on_unwind nonnull writable sret(%struct.Texture) align 4 %5, ptr noundef nonnull byval(%struct.Image) align 8 %4) #39, !noalias !9
  %.sroa.8.12.copyload = load i32, ptr %5, align 4 ; 2 uses
  %.sroa.10.12..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.sroa.10.sroa.0.0.copyload60 = load <4 x i32>, ptr %.sroa.10.12..sroa_idx, align 4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39, !noalias !9
  %i.gy = load i32, ptr %i.b, align 4, !noalias !9
  %i.gz = load i32, ptr %i.c, align 4, !noalias !9 ; 5 uses
  %i.ha = sext i32 %i.gz to i64                   ; 2 uses
  %i.hb = mul nsw i64 %i.ha, 40
  %i.hc = call noalias ptr @malloc(i64 noundef %i.hb) #42, !noalias !9 ; 6 uses
  %i.hd = shl nsw i64 %i.ha, 4
  %i.he = call noalias ptr @malloc(i64 noundef %i.hd) #42, !noalias !9 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #39, !noalias !9
  store i32 0, ptr %i.i, align 4, !noalias !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #39, !noalias !9
  store i32 0, ptr %i.j, align 4, !noalias !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #39, !noalias !9
  store i32 0, ptr %i.k, align 4, !noalias !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #39, !noalias !9
  store i32 0, ptr %i.l, align 4, !noalias !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #39, !noalias !9
  store i32 0, ptr %i.m, align 4, !noalias !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #39, !noalias !9
  store i32 0, ptr %i.n, align 4, !noalias !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #39, !noalias !9
  store i32 0, ptr %i.o, align 4, !noalias !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #39, !noalias !9
  store i32 0, ptr %i.p, align 4, !noalias !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #39, !noalias !9
  store i32 0, ptr %i.q, align 4, !noalias !9
  %i.hf = icmp sgt i32 %i.gz, 0                   ; 2 uses
  br i1 %i.hf, label %.lr.ph182.i, label %._crit_edge183.i

._crit_edge183.i:                                 ; preds = %bb.am, %.loopexit.i
  call void @UnloadImage(ptr noundef nonnull byval(%struct.Image) align 8 %4) #39, !noalias !9
  call void @UnloadFileText(ptr noundef nonnull %i.y) #39, !noalias !9
  %i.hg = icmp eq i32 %.sroa.8.12.copyload, 0
  br i1 %i.hg, label %bb.an, label %bb.ap

.lr.ph182.i:                                      ; preds = %.loopexit.i, %bb.am
  %indvars.iv208.i = phi i64 [ %indvars.iv.next209.i, %bb.am ], [ 0, %.loopexit.i ] ; 5 uses
  %.pn180.i = phi ptr [ %i.hy, %bb.am ], [ %i.dd, %.loopexit.i ]
  %.2.i = getelementptr i8, ptr %.pn180.i, i64 1  ; 7 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.aj, %.lr.ph182.i
  %indvars.iv.i141.i = phi i64 [ 0, %.lr.ph182.i ], [ %indvars.iv.next.i142.i.4, %bb.aj ] ; 7 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.2.i, i64 %indvars.iv.i141.i
  %i.hi = load i8, ptr %i.hh, align 1, !noalias !9
  %i.hj = icmp eq i8 %i.hi, 10
  br i1 %i.hj, label %.split.loop.exit.i145.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %indvars.iv.next.i142.i = add nuw nsw i64 %indvars.iv.i141.i, 1 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.2.i, i64 %indvars.iv.next.i142.i
  %i.hl = load i8, ptr %i.hk, align 1, !noalias !9
  %i.hm = icmp eq i8 %i.hl, 10
  br i1 %i.hm, label %.split.loop.exit.i145.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %indvars.iv.next.i142.i.1 = add nuw nsw i64 %indvars.iv.i141.i, 2 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.2.i, i64 %indvars.iv.next.i142.i.1
  %i.ho = load i8, ptr %i.hn, align 1, !noalias !9
  %i.hp = icmp eq i8 %i.ho, 10
  br i1 %i.hp, label %.split.loop.exit.i145.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %indvars.iv.next.i142.i.2 = add nuw nsw i64 %indvars.iv.i141.i, 3 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.2.i, i64 %indvars.iv.next.i142.i.2
  %i.hr = load i8, ptr %i.hq, align 1, !noalias !9
  %i.hs = icmp eq i8 %i.hr, 10
  br i1 %i.hs, label %.split.loop.exit.i145.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %indvars.iv.next.i142.i.3 = add nuw nsw i64 %indvars.iv.i141.i, 4 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.2.i, i64 %indvars.iv.next.i142.i.3
  %i.hu = load i8, ptr %i.ht, align 1, !noalias !9
  %i.hv = icmp eq i8 %i.hu, 10
  br i1 %i.hv, label %.split.loop.exit.i145.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %indvars.iv.next.i142.i.4 = add nuw nsw i64 %indvars.iv.i141.i, 5 ; 2 uses
  %exitcond.not.i143.i.4 = icmp eq i64 %indvars.iv.next.i142.i.4, 255
  br i1 %exitcond.not.i143.i.4, label %GetLine.exit146.i, label %bb.ae

.split.loop.exit.i145.i:                          ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae
  %indvars.iv.i141.i.lcssa = phi i64 [ %indvars.iv.i141.i, %bb.ae ], [ %indvars.iv.next.i142.i, %bb.af ], [ %indvars.iv.next.i142.i.1, %bb.ag ], [ %indvars.iv.next.i142.i.2, %bb.ah ], [ %indvars.iv.next.i142.i.3, %bb.ai ]
  %23 = trunc nuw nsw i64 %indvars.iv.i141.i.lcssa to i32
  br label %GetLine.exit146.i

GetLine.exit146.i:                                ; preds = %bb.aj, %.split.loop.exit.i145.i
  %.0.lcssa.i144.i = phi i32 [ %23, %.split.loop.exit.i145.i ], [ 255, %bb.aj ] ; 2 uses
  %24 = zext nneg i32 %.0.lcssa.i144.i to i64     ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull readonly align 1 %.2.i, i64 %24, i1 false), !noalias !9
  %i.hw = getelementptr inbounds nuw i8, ptr %i.a, i64 %24
  store i8 0, ptr %i.hw, align 1, !noalias !9
  %i.hx = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.86, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef nonnull %i.o, ptr noundef nonnull %i.p, ptr noundef nonnull %i.q) #39, !noalias !9
  %25 = sext i32 %.0.lcssa.i144.i to i64
  %i.hy = getelementptr i8, ptr %.2.i, i64 %25
  %i.hz = icmp eq i32 %i.hx, 9
  br i1 %i.hz, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %GetLine.exit146.i
  %i.ia = getelementptr inbounds nuw [16 x i8], ptr %i.he, i64 %indvars.iv208.i ; 4 uses
  %i.ib = load i32, ptr %i.j, align 4, !noalias !9
  %i.ic = sitofp i32 %i.ib to float
  %i.id = load i32, ptr %i.k, align 4, !noalias !9
  %i.ie = sitofp i32 %i.id to float
  %i.if = load i32, ptr %i.e, align 4, !noalias !9
  %i.ig = sitofp i32 %i.if to float
  %i.ih = load i32, ptr %i.q, align 4, !noalias !9
  %i.ii = sitofp i32 %i.ih to float
  %i.ij = call float @llvm.fmuladd.f32(float %i.ig, float %i.ii, float %i.ie)
  %i.ik = load i32, ptr %i.l, align 4, !noalias !9
  %i.il = load i32, ptr %i.m, align 4, !noalias !9
  store float %i.ic, ptr %i.ia, align 4, !noalias !9
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ia, i64 4
  store float %i.ij, ptr %.sroa.22.0..sroa_idx.i, align 4, !noalias !9
  %.sroa.33.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ia, i64 8 ; 2 uses
  %i.im = insertelement <2 x i32> poison, i32 %i.ik, i64 0
  %i.in = insertelement <2 x i32> %i.im, i32 %i.il, i64 1
  %i.io = sitofp <2 x i32> %i.in to <2 x float>
  store <2 x float> %i.io, ptr %.sroa.33.0..sroa_idx.i, align 4, !noalias !9
  %i.ip = load i32, ptr %i.i, align 4, !noalias !9
  %i.iq = getelementptr inbounds nuw [40 x i8], ptr %i.hc, i64 %indvars.iv208.i ; 5 uses
  store i32 %i.ip, ptr %i.iq, align 8, !noalias !9
  %i.ir = load i32, ptr %i.n, align 4, !noalias !9
  %i.is = getelementptr inbounds nuw i8, ptr %i.iq, i64 4
  store i32 %i.ir, ptr %i.is, align 4, !noalias !9
  %i.it = load i32, ptr %i.o, align 4, !noalias !9
  %i.iu = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  store i32 %i.it, ptr %i.iu, align 8, !noalias !9
  %i.iv = load i32, ptr %i.p, align 4, !noalias !9
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iq, i64 12
  store i32 %i.iv, ptr %i.iw, align 4, !noalias !9
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39, !noalias !9
  %i.iy = load <2 x float>, ptr %i.ia, align 4, !noalias !9
  %i.iz = load <2 x float>, ptr %.sroa.33.0..sroa_idx.i, align 4, !noalias !9
  call void @ImageFromImage(ptr dead_on_unwind nonnull writable sret(%struct.Image) align 8 %6, ptr noundef nonnull byval(%struct.Image) align 8 %4, <2 x float> %i.iy, <2 x float> %i.iz) #39, !noalias !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ix, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !noalias !9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39, !noalias !9
  br label %bb.am

bb.al:                                            ; preds = %GetLine.exit146.i
  %i.ja = getelementptr inbounds nuw [40 x i8], ptr %i.hc, i64 %indvars.iv208.i
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39, !noalias !9
  %i.jc = getelementptr inbounds nuw [16 x i8], ptr %i.he, i64 %indvars.iv208.i ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.je = load float, ptr %i.jd, align 4, !noalias !9
  %i.jf = fptosi float %i.je to i32
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jc, i64 12
  %i.jh = load float, ptr %i.jg, align 4, !noalias !9
  %i.ji = fptosi float %i.jh to i32
  call void @GenImageColor(ptr dead_on_unwind nonnull writable sret(%struct.Image) align 8 %7, i32 noundef %i.jf, i32 noundef %i.ji, i32 -16777216) #39, !noalias !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jb, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !noalias !9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39, !noalias !9
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.87, ptr noundef %1) #39, !noalias !9
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %indvars.iv.next209.i = add nuw nsw i64 %indvars.iv208.i, 1 ; 2 uses
  %i.jj = load i32, ptr %i.c, align 4, !noalias !9
  %i.jk = sext i32 %i.jj to i64
  %i.jl = icmp slt i64 %indvars.iv.next209.i, %i.jk
  br i1 %i.jl, label %.lr.ph182.i, label %._crit_edge183.i

bb.an:                                            ; preds = %._crit_edge183.i
  %.sroa.3.0.copyload.i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @defaultFont, i64 12), align 4, !noalias !9
  %.not.i.i = icmp eq i32 %.sroa.3.0.copyload.i.i, 0
  br i1 %.not.i.i, label %UnloadFont.exit.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %.not.i.i.i = icmp eq ptr %i.hc, null
  br i1 %.not.i.i.i, label %UnloadFontData.exit.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.ao
  br i1 %i.hf, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.gz to i64
  br label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %.preheader.i.i.i
  call void @free(ptr noundef nonnull %i.hc) #39, !noalias !9
  br label %UnloadFontData.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.jm = getelementptr inbounds nuw [40 x i8], ptr %i.hc, i64 %indvars.iv.i.i.i
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  call void @UnloadImage(ptr noundef nonnull byval(%struct.Image) align 8 %i.jn) #39, !noalias !9
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

UnloadFontData.exit.i.i:                          ; preds = %._crit_edge.i.i.i, %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39, !noalias !9
  store i32 0, ptr %2, align 8, !noalias !9
  %.sroa.6.12..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  store <4 x i32> %.sroa.10.sroa.0.0.copyload60, ptr %.sroa.6.12..sroa_idx.i, align 4
  call void @UnloadTexture(ptr noundef nonnull byval(%struct.Texture) align 8 %2) #39, !noalias !9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39, !noalias !9
  call void @free(ptr noundef %i.he) #39, !noalias !9
  call void (i32, ptr, ...) @TraceLog(i32 noundef 2, ptr noundef nonnull @.str.12) #39, !noalias !9
  %.sroa.8.0.copyload11.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @defaultFont, i64 12), align 4
  br label %UnloadFont.exit.i

UnloadFont.exit.i:                                ; preds = %UnloadFontData.exit.i.i, %bb.an
  %.sroa.8.0.copyload11 = phi i32 [ %.sroa.8.0.copyload11.pre, %UnloadFontData.exit.i.i ], [ 0, %bb.an ]
  %.sroa.0.0.copyload8 = load i32, ptr @defaultFont, align 8
  %.sroa.6.0.copyload9 = load i32, ptr getelementptr inbounds nuw (i8, ptr @defaultFont, i64 4), align 4
  %.sroa.7.0.copyload10 = load i32, ptr getelementptr inbounds nuw (i8, ptr @defaultFont, i64 8), align 8
  %.sroa.10.sroa.0.0.copyload59 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @defaultFont, i64 16), align 8
  %i.jo = load <2 x ptr>, ptr getelementptr inbounds nuw (i8, ptr @defaultFont, i64 32), align 8
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.88, ptr noundef %1) #39, !noalias !9
  br label %bb.aq

bb.ap:                                            ; preds = %._crit_edge183.i
  call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.89, ptr noundef %1, i32 noundef %i.gz) #39, !noalias !9
  %i.jp = insertelement <2 x ptr> poison, ptr %i.he, i64 0
  %i.jq = insertelement <2 x ptr> %i.jp, ptr %i.hc, i64 1
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %UnloadFont.exit.i
  %.sroa.10.sroa.0.0 = phi <4 x i32> [ %.sroa.10.sroa.0.0.copyload59, %UnloadFont.exit.i ], [ %.sroa.10.sroa.0.0.copyload60, %bb.ap ]
  %.sroa.0.0 = phi i32 [ %.sroa.0.0.copyload8, %UnloadFont.exit.i ], [ %i.gy, %bb.ap ]
  %.sroa.6.0 = phi i32 [ %.sroa.6.0.copyload9, %UnloadFont.exit.i ], [ %i.gz, %bb.ap ]
  %.sroa.7.0 = phi i32 [ %.sroa.7.0.copyload10, %UnloadFont.exit.i ], [ 0, %bb.ap ]
  %.sroa.8.0 = phi i32 [ %.sroa.8.0.copyload11, %UnloadFont.exit.i ], [ %.sroa.8.12.copyload, %bb.ap ]
  %i.jr = phi <2 x ptr> [ %i.jo, %UnloadFont.exit.i ], [ %i.jq, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #39, !noalias !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #39, !noalias !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #39, !noalias !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #39, !noalias !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #39, !noalias !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #39, !noalias !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #39, !noalias !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #39, !noalias !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #39, !noalias !9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39, !noalias !9
  br label %LoadBMFont.exit

LoadBMFont.exit:                                  ; preds = %bb.f, %bb.n, %bb.x, %bb.z, %bb.aq
  %.sroa.10.sroa.0.1 = phi <4 x i32> [ zeroinitializer, %bb.f ], [ zeroinitializer, %bb.n ], [ zeroinitializer, %bb.x ], [ zeroinitializer, %bb.z ], [ %.sroa.10.sroa.0.0, %bb.aq ]
  %.sroa.0.1 = phi i32 [ 0, %bb.f ], [ 0, %bb.n ], [ 0, %bb.x ], [ 0, %bb.z ], [ %.sroa.0.0, %bb.aq ]
  %.sroa.6.1 = phi i32 [ 0, %bb.f ], [ 0, %bb.n ], [ 0, %bb.x ], [ 0, %bb.z ], [ %.sroa.6.0, %bb.aq ]
  %.sroa.7.1 = phi i32 [ 0, %bb.f ], [ 0, %bb.n ], [ 0, %bb.x ], [ 0, %bb.z ], [ %.sroa.7.0, %bb.aq ]
  %.sroa.8.1 = phi i32 [ 0, %bb.f ], [ 0, %bb.n ], [ 0, %bb.x ], [ 0, %bb.z ], [ %.sroa.8.0, %bb.aq ]
  %i.js = phi <2 x ptr> [ splat (ptr null), %bb.f ], [ splat (ptr null), %bb.n ], [ splat (ptr null), %bb.x ], [ splat (ptr null), %bb.z ], [ %i.jr, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #39, !noalias !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #39, !noalias !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #39, !noalias !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #39, !noalias !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #39, !noalias !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #39, !noalias !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #39, !noalias !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39, !noalias !9
  store i32 %.sroa.0.1, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.6.1, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.7.1, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.8.1, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i32> %.sroa.10.sroa.0.1, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x ptr> %i.js, ptr %.sroa.11.0..sroa_idx, align 8
  br label %bb.av

bb.ar:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #39
  call void @LoadImage(ptr dead_on_unwind nonnull writable sret(%struct.Image) align 8 %9, ptr noundef %1) #39
  %i.jt = load ptr, ptr %9, align 8
  %.not = icmp eq ptr %i.jt, null
  br i1 %.not, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @LoadFontFromImage(ptr dead_on_unwind nonnull writable sret(%struct.Font) align 8 %0, ptr noundef nonnull byval(%struct.Image) align 8 %9, i32 -65281, i32 noundef 32)
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) @defaultFont, i64 48, i1 false)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  call void @UnloadImage(ptr noundef nonnull byval(%struct.Image) align 8 %9) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  br label %bb.av

bb.av:                                            ; preds = %LoadBMFont.exit, %bb.au, %LoadFontEx.exit
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.jv = load i32, ptr %i.ju, align 4
  %i.jw = icmp eq i32 %i.jv, 0
  br i1 %i.jw, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
end_hunk_0
begin_hunk_1_@stbtt_FindGlyphIndex:bb.a
  %i.au = zext i8 %.val163 to i32
  %i.av = shl nuw nsw i32 %i.au, 8
  %i.aw = zext i8 %.val164 to i32
  %i.ax = or disjoint i32 %i.av, %i.aw            ; 2 uses
  %i.ay = lshr i32 %i.ax, 1                       ; 2 uses
  %i.az = icmp sgt i32 %0, 65535
  br i1 %i.az, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = add i32 %.56.val, 14
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.val157 = load i8, ptr %i.bb, align 1
  %i.bc = zext i8 %.val157 to i16
  %i.bd = shl nuw i16 %i.bc, 8
  %i.be = getelementptr i8, ptr %i.b, i64 13
  %.val158 = load i8, ptr %i.be, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %.val159 = load i8, ptr %i.bf, align 1
  %i.bg = zext i8 %.val159 to i16
  %i.bh = shl nuw i16 %i.bg, 8                    ; 2 uses
  %i.bi = getelementptr i8, ptr %i.b, i64 11
  %.val160 = load i8, ptr %i.bi, align 1
  %i.bj = zext i8 %.val160 to i16                 ; 3 uses
  %i.bk = or disjoint i16 %i.bh, %i.bj            ; 3 uses
  %i.bl = and i8 %.val158, -2
  %.masked = zext i8 %i.bl to i16
  %i.bm = or disjoint i16 %i.bd, %.masked         ; 2 uses
  %i.bn = zext i32 %i.ba to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %.8.val, i64 %i.bn ; 2 uses
  %i.bp = zext i16 %i.bm to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bp ; 2 uses
  %.val155 = load i8, ptr %i.bq, align 1
  %i.br = getelementptr i8, ptr %i.bq, i64 1
  %.val156 = load i8, ptr %i.br, align 1
  %i.bs = zext i8 %.val155 to i32
  %i.bt = shl nuw nsw i32 %i.bs, 8
  %i.bu = zext i8 %.val156 to i32
  %i.bv = or disjoint i32 %i.bt, %i.bu
  %.not = icmp slt i32 %0, %i.bv
  %i.bw = zext i16 %i.bm to i32
  %i.bx = select i1 %.not, i32 0, i32 %i.bw
  %.0123 = add i32 %.56.val, 12
  %i.by = add i32 %.0123, %i.bx                   ; 4 uses
  %.not1427 = icmp eq i16 %i.bk, 0
  br i1 %.not1427, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val161 = load i8, ptr %i.bz, align 1
  %i.ca = zext i8 %.val161 to i16
  %i.cb = shl nuw i16 %i.ca, 8
  %i.cc = getelementptr i8, ptr %i.b, i64 9
  %.val162 = load i8, ptr %i.cc, align 1
  %i.cd = zext i8 %.val162 to i16
  %i.ce = or disjoint i16 %i.cb, %i.cd            ; 2 uses
  %i.cf = or disjoint i16 %i.bh, %i.bj
  %xtraiter = and i16 %i.bj, 1
  %lcmp.mod.not = icmp eq i16 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %.0127.prol = lshr i16 %i.ce, 1                 ; 2 uses
  %i.cg = zext i32 %i.by to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %.8.val, i64 %i.cg
  %i.ci = and i16 %.0127.prol, 32766              ; 2 uses
  %i.cj = zext nneg i16 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cj ; 2 uses
  %.val153.prol = load i8, ptr %i.ck, align 1
  %i.cl = getelementptr i8, ptr %i.ck, i64 1
  %.val154.prol = load i8, ptr %i.cl, align 1
  %i.cm = zext i8 %.val153.prol to i32
  %i.cn = shl nuw nsw i32 %i.cm, 8
  %i.co = zext i8 %.val154.prol to i32
  %i.cp = or disjoint i32 %i.cn, %i.co
  %i.cq = icmp sgt i32 %0, %i.cp
  %i.cr = zext nneg i16 %i.ci to i32
  %i.cs = select i1 %i.cq, i32 %i.cr, i32 0
  %.2125.prol = add i32 %i.cs, %i.by              ; 2 uses
  %i.ct = add nsw i16 %i.bk, -1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.2125.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %.2125.prol, %.lr.ph.prol ]
  %.112410.unr = phi i32 [ %i.by, %.lr.ph.preheader ], [ %.2125.prol, %.lr.ph.prol ]
  %.01269.unr = phi i16 [ %i.bk, %.lr.ph.preheader ], [ %i.ct, %.lr.ph.prol ]
  %.0127.in8.unr = phi i16 [ %i.ce, %.lr.ph.preheader ], [ %.0127.prol, %.lr.ph.prol ]
  %i.cu = icmp eq i16 %i.cf, 1
  br i1 %i.cu, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.112410 = phi i32 [ %.2125.1, %.lr.ph ], [ %.112410.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.01269 = phi i16 [ %i.dv, %.lr.ph ], [ %.01269.unr, %.lr.ph.prol.loopexit ]
  %.0127.in8 = phi i16 [ %.0127.1, %.lr.ph ], [ %.0127.in8.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.0127 = lshr i16 %.0127.in8, 1
  %i.cv = zext i32 %.112410 to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %.8.val, i64 %i.cv
  %i.cx = and i16 %.0127, 32766                   ; 2 uses
  %i.cy = zext nneg i16 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cy ; 2 uses
  %.val153 = load i8, ptr %i.cz, align 1
  %i.da = getelementptr i8, ptr %i.cz, i64 1
  %.val154 = load i8, ptr %i.da, align 1
  %i.db = zext i8 %.val153 to i32
  %i.dc = shl nuw nsw i32 %i.db, 8
  %i.dd = zext i8 %.val154 to i32
  %i.de = or disjoint i32 %i.dc, %i.dd
  %i.df = icmp sgt i32 %0, %i.de
  %i.dg = zext nneg i16 %i.cx to i32
  %i.dh = select i1 %i.df, i32 %i.dg, i32 0
  %.2125 = add i32 %i.dh, %.112410                ; 2 uses
  %.0127.1 = lshr i16 %.0127.in8, 2               ; 2 uses
  %i.di = zext i32 %.2125 to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %.8.val, i64 %i.di
  %i.dk = and i16 %.0127.1, 16382                 ; 2 uses
  %i.dl = zext nneg i16 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dl ; 2 uses
  %.val153.1 = load i8, ptr %i.dm, align 1
  %i.dn = getelementptr i8, ptr %i.dm, i64 1
  %.val154.1 = load i8, ptr %i.dn, align 1
  %i.do = zext i8 %.val153.1 to i32
  %i.dp = shl nuw nsw i32 %i.do, 8
  %i.dq = zext i8 %.val154.1 to i32
  %i.dr = or disjoint i32 %i.dp, %i.dq
  %i.ds = icmp sgt i32 %0, %i.dr
  %i.dt = zext nneg i16 %i.dk to i32
  %i.du = select i1 %i.ds, i32 %i.dt, i32 0
  %.2125.1 = add i32 %i.du, %.2125                ; 2 uses
  %i.dv = add i16 %.01269, -2                     ; 2 uses
  %.not142.1 = icmp eq i16 %i.dv, 0
  br i1 %.not142.1, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.h
  %.1124.lcssa = phi i32 [ %i.by, %bb.h ], [ %.2125.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.2125.1, %.lr.ph ]
  %reass.sub = sub i32 %.1124.lcssa, %.56.val
  %i.dw = add i32 %reass.sub, 131060
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 14 ; 3 uses
  %i.dy = and i32 %i.ax, 65534
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 2
  %i.ec = and i32 %i.dw, 131070
  %i.ed = zext nneg i32 %i.ec to i64              ; 5 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.ed ; 2 uses
  %.val151 = load i8, ptr %i.ee, align 1
  %i.ef = getelementptr i8, ptr %i.ee, i64 1
  %.val152 = load i8, ptr %i.ef, align 1
  %i.eg = zext i8 %.val151 to i32
  %i.eh = shl nuw nsw i32 %i.eg, 8
  %i.ei = zext i8 %.val152 to i32
  %i.ej = or disjoint i32 %i.eh, %i.ei            ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.ed ; 2 uses
  %.val149 = load i8, ptr %i.ek, align 1
  %i.el = getelementptr i8, ptr %i.ek, i64 1
  %.val150 = load i8, ptr %i.el, align 1
  %i.em = zext i8 %.val149 to i32
  %i.en = shl nuw nsw i32 %i.em, 8
  %i.eo = zext i8 %.val150 to i32
  %i.ep = or disjoint i32 %i.en, %i.eo
  %i.eq = icmp slt i32 %0, %i.ej
  %i.er = icmp sgt i32 %0, %i.ep
  %or.cond145 = select i1 %i.eq, i1 true, i1 %i.er
  br i1 %or.cond145, label %bb.l, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.es = mul nuw nsw i32 %i.ay, 6
  %i.et = zext nneg i32 %i.es to i64              ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 2
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.ed ; 2 uses
  %.val147 = load i8, ptr %i.ew, align 1
  %i.ex = getelementptr i8, ptr %i.ew, i64 1
  %.val148 = load i8, ptr %i.ex, align 1
  %i.ey = zext i8 %.val147 to i16
  %i.ez = shl nuw i16 %i.ey, 8
  %i.fa = zext i8 %.val148 to i16
  %i.fb = or disjoint i16 %i.ez, %i.fa            ; 2 uses
  %i.fc = icmp eq i16 %i.fb, 0
  br i1 %i.fc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.fd = shl nuw nsw i32 %i.ay, 2
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 2
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.ed ; 2 uses
  %.val175 = load i8, ptr %i.fh, align 1
  %i.fi = getelementptr i8, ptr %i.fh, i64 1
  %.val176 = load i8, ptr %i.fi, align 1
  %i.fj = zext i8 %.val175 to i32
  %i.fk = shl nuw nsw i32 %i.fj, 8
  %i.fl = zext i8 %.val176 to i32
  %i.fm = or disjoint i32 %i.fk, %i.fl
  %i.fn = add nuw nsw i32 %i.fm, %0
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.fo = zext i16 %i.fb to i64
  %i.fp = getelementptr inbounds nuw i8, ptr %.8.val, i64 %i.fo
  %i.fq = sub nsw i32 %0, %i.ej
  %i.fr = shl nsw i32 %i.fq, 1
  %1 = sext i32 %i.fr to i64
  %i.fs = getelementptr inbounds i8, ptr %i.fp, i64 %1
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.a
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.et
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.ed ; 2 uses
  %.val = load i8, ptr %i.fw, align 1
  %i.fx = getelementptr i8, ptr %i.fw, i64 1
  %.val146 = load i8, ptr %i.fx, align 1
  %i.fy = zext i8 %.val to i32
  %i.fz = shl nuw nsw i32 %i.fy, 8
  %i.ga = zext i8 %.val146 to i32
  %i.gb = or disjoint i32 %i.fz, %i.ga
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.k, %bb.j
  %.2132.shrunk = phi i32 [ %i.gb, %bb.k ], [ %i.fn, %bb.j ], [ 0, %._crit_edge ]
  %.2132 = and i32 %.2132.shrunk, 65535
  br label %.loopexit

bb.m:                                             ; preds = %bb.a
  %i.gc = icmp eq i16 %i.g, 12
  %i.gd = and i16 %i.g, -2
  %or.cond = icmp eq i16 %i.gd, 12
  br i1 %or.cond, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.ge = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.gf = load i32, ptr %i.ge, align 1
  %i.gg = tail call i32 @llvm.bswap.i32(i32 %i.gf) ; 2 uses
  %i.gh = icmp sgt i32 %i.gg, 0
  br i1 %i.gh, label %.lr.ph14, label %.loopexit

.lr.ph14:                                         ; preds = %bb.n
  %i.gi = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph14, %bb.r
  %.012 = phi i32 [ %i.gg, %.lr.ph14 ], [ %.2, %bb.r ] ; 2 uses
  %.012011 = phi i32 [ 0, %.lr.ph14 ], [ %.2122, %bb.r ] ; 3 uses
  %i.gj = sub nsw i32 %.012, %.012011
  %i.gk = lshr i32 %i.gj, 1
  %i.gl = add nuw nsw i32 %i.gk, %.012011         ; 3 uses
  %i.gm = mul nsw i32 %i.gl, 12
  %i.gn = zext nneg i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.gn ; 3 uses
  %i.gp = load i32, ptr %i.go, align 1
  %i.gq = tail call i32 @llvm.bswap.i32(i32 %i.gp) ; 2 uses
  %i.gr = icmp ult i32 %0, %i.gq
  br i1 %i.gr, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.gs = getelementptr inbounds nuw i8, ptr %i.go, i64 4
  %i.gt = load i32, ptr %i.gs, align 1
  %i.gu = tail call i32 @llvm.bswap.i32(i32 %i.gt)
  %i.gv = icmp ugt i32 %0, %i.gu
  br i1 %i.gv, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.gw = add nuw nsw i32 %i.gl, 1
  br label %bb.r

.thread:                                          ; preds = %bb.p
  %i.gx = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gy = load i32, ptr %i.gx, align 1
  %i.gz = tail call i32 @llvm.bswap.i32(i32 %i.gy)
  %i.ha = sub i32 %0, %i.gq
  %i.hb = select i1 %i.gc, i32 %i.ha, i32 0
  %.5 = add i32 %i.gz, %i.hb
  br label %.loopexit

bb.r:                                             ; preds = %bb.q, %bb.o
  %.2122 = phi i32 [ %.012011, %bb.o ], [ %i.gw, %bb.q ] ; 2 uses
  %.2 = phi i32 [ %i.gl, %bb.o ], [ %.012, %bb.q ] ; 2 uses
  %i.hc = icmp slt i32 %.2122, %.2
  br i1 %i.hc, label %bb.o, label %.loopexit

.loopexit:                                        ; preds = %bb.r, %bb.n, %.thread, %bb.m, %bb.l, %bb.g, %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.8 = phi i32 [ 0, %bb.m ], [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.a ], [ 0, %bb.g ], [ %i.t, %bb.c ], [ %i.ar, %bb.f ], [ 0, %bb.e ], [ %.2132, %bb.l ], [ %.5, %.thread ], [ 0, %bb.n ], [ 0, %bb.r ]
  ret i32 %.8
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @logf(float noundef) local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #18

; Function Attrs: nounwind uwtable
define void @UnloadFontData(ptr noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  tail call void @free(ptr noundef nonnull %0) #39
  br label %bb.b

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.b = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %indvars.iv
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @UnloadImage(ptr noundef nonnull byval(%struct.Image) align 8 %i.c) #39
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @UnloadFont(ptr nofree noundef readonly byval(%struct.Font) align 8 captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %1 = alloca %struct.Texture, align 8            ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %.sroa.3.0.copyload = load i32, ptr getelementptr inbounds nuw (i8, ptr @defaultFont, i64 12), align 4
  %.not = icmp eq i32 %i.b, %.sroa.3.0.copyload
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %UnloadFontData.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %wide.trip.count.i = zext nneg i32 %i.f to i64
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  tail call void @free(ptr noundef nonnull %i.d) #39
  br label %UnloadFontData.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.h = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %indvars.iv.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  tail call void @UnloadImage(ptr noundef nonnull byval(%struct.Image) align 8 %i.i) #39
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

UnloadFontData.exit:                              ; preds = %bb.b, %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 4 dereferenceable(20) %i.a, i64 20, i1 false)
  tail call void @UnloadTexture(ptr noundef nonnull byval(%struct.Texture) align 8 %1) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #39
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  tail call void @free(ptr noundef %i.k) #39
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 2, ptr noundef nonnull @.str.12) #39
  br label %bb.c

bb.c:                                             ; preds = %UnloadFontData.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @ExportFontAsCode(ptr nofree noundef readonly byval(%struct.Font) align 8 captures(none) %0, ptr noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 20 uses
  %2 = alloca %struct.Image, align 8              ; 8 uses
  %3 = alloca %struct.Texture, align 8            ; 4 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.d = tail call ptr @GetFileNameWithoutExt(ptr noundef %1) #39 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) @TextToPascal.buffer, i8 0, i64 1024, i1 false)
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %TextToPascal.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.d, align 1               ; 3 uses
  %i.f = add i8 %i.e, -97
  %or.cond.i = icmp ult i8 %i.f, 26
  %narrow.i = add nsw i8 %i.e, -32
  %spec.select.i = select i1 %or.cond.i, i8 %narrow.i, i8 %i.e
  store i8 %spec.select.i, ptr @TextToPascal.buffer, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %indvars.iv.i = phi i64 [ 1, %bb.b ], [ %indvars.iv.next.i, %bb.g ] ; 2 uses
end_hunk_1
begin_hunk_2_@TextReplaceBetweenAlloc:bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1
  %.not4.i69 = icmp eq i8 %i.ag, 0
  %i.ah = add i32 %.0.i68, 1
  br i1 %.not4.i69, label %TextLength.exit71, label %.preheader.i67

TextLength.exit71:                                ; preds = %.preheader.i67, %TextLength.exit65
  %i.ai = phi i32 [ 0, %TextLength.exit65 ], [ %.0.i68, %.preheader.i67 ] ; 3 uses
  %reass.sub = sub i32 %.0.i62, %.0.i57
  %i.aj = add i32 %reass.sub, 1
  %i.ak = add i32 %i.aj, %i.ai
  %i.al = sext i32 %i.ak to i64
  %i.am = tail call noalias ptr @calloc(i64 noundef %i.al, i64 noundef 1) #40 ; 4 uses
  %i.an = sext i32 %i.ab to i64
  %i.ao = tail call ptr @strncpy(ptr noundef %i.am, ptr noundef nonnull %0, i64 noundef %i.an) #39 ; 0 uses
  br i1 %i.ad, label %TextLength.exit71._crit_edge, label %bb.b

TextLength.exit71._crit_edge:                     ; preds = %TextLength.exit71
  %.pre = sext i32 %i.ai to i64
  br label %bb.c

bb.b:                                             ; preds = %TextLength.exit71
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.n
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 %i.p
  %i.ar = sext i32 %i.ai to i64                   ; 2 uses
  %i.as = tail call ptr @strncpy(ptr noundef %i.aq, ptr noundef nonnull %3, i64 noundef %i.ar) #39 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %TextLength.exit71._crit_edge, %bb.b
  %.pre-phi = phi i64 [ %.pre, %TextLength.exit71._crit_edge ], [ %i.ar, %bb.b ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.n
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %i.p
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %.pre-phi
  %i.aw = sext i32 %i.ac to i64
  %i.ax = getelementptr inbounds i8, ptr %0, i64 %i.aw
  %i.ay = sub nsw i32 %.0.i62, %i.ac
  %i.az = sext i32 %i.ay to i64
  %i.ba = tail call ptr @strncpy(ptr noundef %i.av, ptr noundef nonnull %i.ax, i64 noundef %i.az) #39 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %TextFindIndex.exit, %bb.c, %TextFindIndex.exit59, %bb.a
  %.2 = phi ptr [ null, %bb.a ], [ null, %TextFindIndex.exit ], [ %i.am, %bb.c ], [ null, %TextFindIndex.exit59 ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define noundef nonnull ptr @TextInsert(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #9 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoaddr ptr %0 to i64                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) @TextInsert.buffer, i8 0, i64 1024, i1 false)
  %i.c = icmp ne ptr %0, null
  %i.d = icmp ne ptr %1, null
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %.preheader.i, label %bb.c

.preheader.i:                                     ; preds = %bb.a, %.preheader.i
  %.0.i = phi i32 [ %i.h, %.preheader.i ], [ 0, %bb.a ] ; 4 uses
  %i.e = zext i32 %.0.i to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1
  %.not4.i = icmp eq i8 %i.g, 0
  %i.h = add i32 %.0.i, 1
  br i1 %.not4.i, label %.preheader.i40, label %.preheader.i

.preheader.i40:                                   ; preds = %.preheader.i, %.preheader.i40
  %indvars.iv57 = phi i32 [ %indvars.iv.next58, %.preheader.i40 ], [ %2, %.preheader.i ] ; 2 uses
  %.0.i41 = phi i32 [ %i.l, %.preheader.i40 ], [ 0, %.preheader.i ] ; 5 uses
  %i.i = zext i32 %.0.i41 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1
  %.not4.i42 = icmp eq i8 %i.k, 0
  %i.l = add i32 %.0.i41, 1
  %indvars.iv.next58 = add i32 %indvars.iv57, 1
  br i1 %.not4.i42, label %TextLength.exit44, label %.preheader.i40

TextLength.exit44:                                ; preds = %.preheader.i40
  %i.m = add nsw i32 %.0.i41, %.0.i               ; 3 uses
  %i.n = icmp slt i32 %i.m, 1023
  br i1 %i.n, label %.preheader46, label %bb.b

.preheader46:                                     ; preds = %TextLength.exit44
  %i.o = icmp sgt i32 %2, 0
  br i1 %i.o, label %iter.check, label %.preheader45

iter.check:                                       ; preds = %.preheader46
  %wide.trip.count = zext nneg i32 %2 to i64      ; 8 uses
  %min.iters.check = icmp ult i32 %2, 4
  %i.p = sub i64 add (i64 ptrtoaddr (ptr @TextInsert.buffer to i64), i64 -1), %i.b
  %diff.check = icmp ult i64 %i.p, 31
  %or.cond132 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond132, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check66 = icmp ult i32 %2, 32
  br i1 %min.iters.check66, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.q = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <16 x i8>, ptr %i.r, align 1
  %wide.load67 = load <16 x i8>, ptr %i.s, align 1
  %i.t = getelementptr inbounds nuw i8, ptr @TextInsert.buffer, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <16 x i8> %wide.load, ptr %i.t, align 16
  store <16 x i8> %wide.load67, ptr %i.u, align 16
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !66

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader45, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.q, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !44

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec68 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index69 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next71, %vec.epilog.vector.body ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %index69
  %wide.load70 = load <4 x i8>, ptr %i.w, align 1
  %i.x = getelementptr inbounds nuw i8, ptr @TextInsert.buffer, i64 %index69
  store <4 x i8> %wide.load70, ptr %i.x, align 4
  %index.next71 = add nuw i64 %index69, 4         ; 2 uses
  %i.y = icmp eq i64 %index.next71, %n.vec68
  br i1 %i.y, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !67

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n72 = icmp eq i64 %n.vec68, %wide.trip.count
  br i1 %cmp.n72, label %.preheader45, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec68, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.prol
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr @TextInsert.buffer, i64 %indvars.iv.prol
  store i8 %i.aa, ptr %i.ab, align 1
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !68

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ac = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %.preheader45, label %.lr.ph

.preheader45:                                     ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %.preheader46
  %i.ae = icmp sgt i32 %.0.i41, 0
  br i1 %i.ae, label %iter.check89, label %.preheader

iter.check89:                                     ; preds = %.preheader45
  %i.af = add nsw i32 %.0.i41, %2
  %i.ag = sext i32 %2 to i64                      ; 10 uses
  %i.ah = sext i32 %i.af to i64                   ; 2 uses
  %i.ai = add nsw i64 %i.ag, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %i.ai, i64 %i.ah)
  %i.aj = sub i64 %smax, %i.ag                    ; 7 uses
  %min.iters.check75 = icmp ult i64 %i.aj, 8
  br i1 %min.iters.check75, label %.lr.ph49.preheader, label %vector.memcheck73

vector.memcheck73:                                ; preds = %iter.check89
  %i.ak = add i64 %i.ag, ptrtoaddr (ptr @TextInsert.buffer to i64)
  %i.al = sub i64 %i.a, %i.ak
  %diff.check74 = icmp ugt i64 %i.al, -32
  br i1 %diff.check74, label %.lr.ph49.preheader, label %vector.main.loop.iter.check76

vector.main.loop.iter.check76:                    ; preds = %vector.memcheck73
  %min.iters.check77 = icmp ult i64 %i.aj, 32
  br i1 %min.iters.check77, label %vec.epilog.ph93, label %vector.ph78

vector.ph78:                                      ; preds = %vector.main.loop.iter.check76
  %i.am = and i64 %i.aj, 24
  %n.vec79 = and i64 %i.aj, -32                   ; 4 uses
  %i.an = add i64 %n.vec79, %i.ag
  %invariant.gep = getelementptr i8, ptr @TextInsert.buffer, i64 %i.ag
  br label %vector.body80

vector.body80:                                    ; preds = %vector.body80, %vector.ph78
  %index81 = phi i64 [ 0, %vector.ph78 ], [ %index.next84, %vector.body80 ] ; 3 uses
  %i.ao = getelementptr inbounds i8, ptr %1, i64 %index81 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %wide.load82 = load <16 x i8>, ptr %i.ao, align 1
  %wide.load83 = load <16 x i8>, ptr %i.ap, align 1
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index81 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <16 x i8> %wide.load82, ptr %gep, align 1
  store <16 x i8> %wide.load83, ptr %i.aq, align 1
  %index.next84 = add nuw i64 %index81, 32        ; 2 uses
  %i.ar = icmp eq i64 %index.next84, %n.vec79
  br i1 %i.ar, label %middle.block85, label %vector.body80, !llvm.loop !69

middle.block85:                                   ; preds = %vector.body80
  %cmp.n86 = icmp eq i64 %i.aj, %n.vec79
  br i1 %cmp.n86, label %.preheader, label %vec.epilog.iter.check91

vec.epilog.iter.check91:                          ; preds = %middle.block85
  %min.epilog.iters.check92 = icmp eq i64 %i.am, 0
  br i1 %min.epilog.iters.check92, label %.lr.ph49.preheader, label %vec.epilog.ph93, !prof !31

vec.epilog.ph93:                                  ; preds = %vector.main.loop.iter.check76, %vec.epilog.iter.check91
  %vec.epilog.resume.val87 = phi i64 [ %n.vec79, %vec.epilog.iter.check91 ], [ 0, %vector.main.loop.iter.check76 ]
  %n.vec94 = and i64 %i.aj, -8                    ; 3 uses
  %i.as = add i64 %n.vec94, %i.ag
  %invariant.gep134 = getelementptr i8, ptr @TextInsert.buffer, i64 %i.ag
  br label %vec.epilog.vector.body95

vec.epilog.vector.body95:                         ; preds = %vec.epilog.vector.body95, %vec.epilog.ph93
  %index96 = phi i64 [ %vec.epilog.resume.val87, %vec.epilog.ph93 ], [ %index.next98, %vec.epilog.vector.body95 ] ; 3 uses
  %i.at = getelementptr inbounds i8, ptr %1, i64 %index96
  %wide.load97 = load <8 x i8>, ptr %i.at, align 1
  %gep135 = getelementptr i8, ptr %invariant.gep134, i64 %index96
  store <8 x i8> %wide.load97, ptr %gep135, align 1
  %index.next98 = add nuw i64 %index96, 8         ; 2 uses
  %i.au = icmp eq i64 %index.next98, %n.vec94
  br i1 %i.au, label %vec.epilog.middle.block99, label %vec.epilog.vector.body95, !llvm.loop !70

vec.epilog.middle.block99:                        ; preds = %vec.epilog.vector.body95
  %cmp.n100 = icmp eq i64 %i.aj, %n.vec94
  br i1 %cmp.n100, label %.preheader, label %.lr.ph49.preheader

.lr.ph49.preheader:                               ; preds = %vector.memcheck73, %iter.check89, %vec.epilog.iter.check91, %vec.epilog.middle.block99
  %indvars.iv53.ph = phi i64 [ %i.ag, %iter.check89 ], [ %i.ag, %vector.memcheck73 ], [ %i.an, %vec.epilog.iter.check91 ], [ %i.as, %vec.epilog.middle.block99 ]
  br label %.lr.ph49

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr @TextInsert.buffer, i64 %indvars.iv
  store i8 %i.aw, ptr %i.ax, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr @TextInsert.buffer, i64 %indvars.iv.next
  store i8 %i.az, ptr %i.ba, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next.1
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr @TextInsert.buffer, i64 %indvars.iv.next.1
  store i8 %i.bc, ptr %i.bd, align 1
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next.2
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = getelementptr inbounds nuw i8, ptr @TextInsert.buffer, i64 %indvars.iv.next.2
  store i8 %i.bf, ptr %i.bg, align 1
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.preheader45, label %.lr.ph, !llvm.loop !71

.preheader:                                       ; preds = %.lr.ph49, %middle.block85, %vec.epilog.middle.block99, %.preheader45
  %i.bh = icmp slt i32 %2, %.0.i
  br i1 %i.bh, label %iter.check119, label %.preheader.._crit_edge_crit_edge

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  %.pre = sext i32 %i.m to i64
  br label %._crit_edge

iter.check119:                                    ; preds = %.preheader
  %i.bi = sext i32 %indvars.iv57 to i64           ; 7 uses
  %i.bj = sext i32 %i.m to i64                    ; 5 uses
  %i.bk = add nsw i64 %i.bi, 1
  %smax104 = tail call i64 @llvm.smax.i64(i64 %i.bk, i64 %i.bj)
  %i.bl = sub i64 %smax104, %i.bi                 ; 7 uses
  %min.iters.check105 = icmp ult i64 %i.bl, 8
  %i.bm = sub i64 add (i64 ptrtoaddr (ptr @TextInsert.buffer to i64), i64 -1), %i.b
  %diff.check103 = icmp ult i64 %i.bm, 31
  %or.cond133 = or i1 %min.iters.check105, %diff.check103
  br i1 %or.cond133, label %.lr.ph51.preheader, label %vector.main.loop.iter.check106

vector.main.loop.iter.check106:                   ; preds = %iter.check119
  %min.iters.check107 = icmp ult i64 %i.bl, 32
  br i1 %min.iters.check107, label %vec.epilog.ph123, label %vector.ph108

vector.ph108:                                     ; preds = %vector.main.loop.iter.check106
  %i.bn = and i64 %i.bl, 24
  %n.vec109 = and i64 %i.bl, -32                  ; 4 uses
  %i.bo = add i64 %n.vec109, %i.bi
  br label %vector.body110

vector.body110:                                   ; preds = %vector.body110, %vector.ph108
  %index111 = phi i64 [ 0, %vector.ph108 ], [ %index.next114, %vector.body110 ] ; 2 uses
  %i.bp = add i64 %index111, %i.bi                ; 2 uses
  %i.bq = getelementptr inbounds i8, ptr %0, i64 %i.bp ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %wide.load112 = load <16 x i8>, ptr %i.bq, align 1
  %wide.load113 = load <16 x i8>, ptr %i.br, align 1
  %i.bs = getelementptr inbounds i8, ptr @TextInsert.buffer, i64 %i.bp ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store <16 x i8> %wide.load112, ptr %i.bs, align 1
  store <16 x i8> %wide.load113, ptr %i.bt, align 1
  %index.next114 = add nuw i64 %index111, 32      ; 2 uses
  %i.bu = icmp eq i64 %index.next114, %n.vec109
  br i1 %i.bu, label %middle.block115, label %vector.body110, !llvm.loop !72

middle.block115:                                  ; preds = %vector.body110
  %cmp.n116 = icmp eq i64 %i.bl, %n.vec109
  br i1 %cmp.n116, label %._crit_edge, label %vec.epilog.iter.check121

vec.epilog.iter.check121:                         ; preds = %middle.block115
  %min.epilog.iters.check122 = icmp eq i64 %i.bn, 0
  br i1 %min.epilog.iters.check122, label %.lr.ph51.preheader, label %vec.epilog.ph123, !prof !31

vec.epilog.ph123:                                 ; preds = %vector.main.loop.iter.check106, %vec.epilog.iter.check121
  %vec.epilog.resume.val117 = phi i64 [ %n.vec109, %vec.epilog.iter.check121 ], [ 0, %vector.main.loop.iter.check106 ]
  %n.vec124 = and i64 %i.bl, -8                   ; 3 uses
  %i.bv = add i64 %n.vec124, %i.bi
  br label %vec.epilog.vector.body125

vec.epilog.vector.body125:                        ; preds = %vec.epilog.vector.body125, %vec.epilog.ph123
  %index126 = phi i64 [ %vec.epilog.resume.val117, %vec.epilog.ph123 ], [ %index.next128, %vec.epilog.vector.body125 ] ; 2 uses
  %i.bw = add i64 %index126, %i.bi                ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %0, i64 %i.bw
  %wide.load127 = load <8 x i8>, ptr %i.bx, align 1
  %i.by = getelementptr inbounds i8, ptr @TextInsert.buffer, i64 %i.bw
  store <8 x i8> %wide.load127, ptr %i.by, align 1
  %index.next128 = add nuw i64 %index126, 8       ; 2 uses
  %i.bz = icmp eq i64 %index.next128, %n.vec124
  br i1 %i.bz, label %vec.epilog.middle.block129, label %vec.epilog.vector.body125, !llvm.loop !73

vec.epilog.middle.block129:                       ; preds = %vec.epilog.vector.body125
  %cmp.n130 = icmp eq i64 %i.bl, %n.vec124
  br i1 %cmp.n130, label %._crit_edge, label %.lr.ph51.preheader

.lr.ph51.preheader:                               ; preds = %iter.check119, %vec.epilog.iter.check121, %vec.epilog.middle.block129
  %indvars.iv59.ph = phi i64 [ %i.bi, %iter.check119 ], [ %i.bo, %vec.epilog.iter.check121 ], [ %i.bv, %vec.epilog.middle.block129 ]
  br label %.lr.ph51

.lr.ph49:                                         ; preds = %.lr.ph49.preheader, %.lr.ph49
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %.lr.ph49 ], [ %indvars.iv53.ph, %.lr.ph49.preheader ] ; 3 uses
  %i.ca = sub nsw i64 %indvars.iv53, %i.ag
  %i.cb = getelementptr inbounds i8, ptr %1, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1
  %i.cd = getelementptr inbounds i8, ptr @TextInsert.buffer, i64 %indvars.iv53
  store i8 %i.cc, ptr %i.cd, align 1
  %indvars.iv.next54 = add nsw i64 %indvars.iv53, 1 ; 2 uses
  %i.ce = icmp slt i64 %indvars.iv.next54, %i.ah
  br i1 %i.ce, label %.lr.ph49, label %.preheader, !llvm.loop !74

._crit_edge:                                      ; preds = %.lr.ph51, %middle.block115, %vec.epilog.middle.block129, %.preheader.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.preheader.._crit_edge_crit_edge ], [ %i.bj, %middle.block115 ], [ %i.bj, %vec.epilog.middle.block129 ], [ %i.bj, %.lr.ph51 ]
  %i.cf = getelementptr inbounds i8, ptr @TextInsert.buffer, i64 %.pre-phi
  store i8 0, ptr %i.cf, align 1
  br label %bb.c

.lr.ph51:                                         ; preds = %.lr.ph51.preheader, %.lr.ph51
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %.lr.ph51 ], [ %indvars.iv59.ph, %.lr.ph51.preheader ] ; 3 uses
  %i.cg = getelementptr inbounds i8, ptr %0, i64 %indvars.iv59
  %i.ch = load i8, ptr %i.cg, align 1
  %i.ci = getelementptr inbounds i8, ptr @TextInsert.buffer, i64 %indvars.iv59
  store i8 %i.ch, ptr %i.ci, align 1
  %indvars.iv.next60 = add nsw i64 %indvars.iv59, 1 ; 2 uses
  %i.cj = icmp slt i64 %indvars.iv.next60, %i.bj
  br i1 %i.cj, label %.lr.ph51, label %._crit_edge, !llvm.loop !75

bb.b:                                             ; preds = %TextLength.exit44
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.67) #39
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  ret ptr @TextInsert.buffer
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @TextInsertAlloc(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #24 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.preheader.i, label %bb.b

.preheader.i:                                     ; preds = %bb.a, %.preheader.i
  %.0.i = phi i32 [ %i.f, %.preheader.i ], [ 0, %bb.a ] ; 4 uses
  %i.c = zext i32 %.0.i to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1
  %.not4.i = icmp eq i8 %i.e, 0
  %i.f = add i32 %.0.i, 1
  br i1 %.not4.i, label %.preheader.i46, label %.preheader.i

.preheader.i46:                                   ; preds = %.preheader.i, %.preheader.i46
  %.0.i47 = phi i32 [ %i.j, %.preheader.i46 ], [ 0, %.preheader.i ] ; 7 uses
  %i.g = zext i32 %.0.i47 to i64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1
  %.not4.i48 = icmp eq i8 %i.i, 0
  %i.j = add i32 %.0.i47, 1
  br i1 %.not4.i48, label %TextLength.exit50, label %.preheader.i46

TextLength.exit50:                                ; preds = %.preheader.i46
  %i.k = add nsw i32 %.0.i47, %.0.i               ; 3 uses
  %i.l = add nsw i32 %i.k, 1
  %i.m = sext i32 %i.l to i64
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #42 ; 5 uses
  %i.o = icmp sgt i32 %2, 0
  br i1 %i.o, label %.lr.ph.preheader, label %.preheader51

.lr.ph.preheader:                                 ; preds = %TextLength.exit50
  %i.p = zext nneg i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr nonnull align 1 %0, i64 %i.p, i1 false)
  br label %.preheader51

.preheader51:                                     ; preds = %.lr.ph.preheader, %TextLength.exit50
  %i.q = add i32 %.0.i47, %2                      ; 2 uses
  %i.r = icmp sgt i32 %.0.i47, 0
  br i1 %i.r, label %.lr.ph54.preheader, label %.preheader

.lr.ph54.preheader:                               ; preds = %.preheader51
  %i.s = sext i32 %2 to i64
  %scevgep = getelementptr i8, ptr %i.n, i64 %i.s
  %i.t = xor i32 %2, -1
  %i.u = add i32 %2, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %i.q, i32 %i.u)
  %i.v = add i32 %smax, %i.t
  %i.w = zext i32 %i.v to i64
  %i.x = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %i.x, i1 false)
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph54.preheader, %.preheader51
  %i.y = icmp slt i32 %2, %.0.i
  br i1 %i.y, label %.lr.ph56.preheader, label %._crit_edge

.lr.ph56.preheader:                               ; preds = %.preheader
  %i.z = sext i32 %i.q to i64                     ; 2 uses
  %scevgep59 = getelementptr i8, ptr %i.n, i64 %i.z
  %scevgep60 = getelementptr i8, ptr %0, i64 %i.z
  %i.aa = add nsw i32 %2, 1
  %i.ab = add i32 %.0.i47, %i.aa
  %smax61 = tail call i32 @llvm.smax.i32(i32 %i.k, i32 %i.ab)
  %i.ac = xor i32 %2, -1
  %i.ad = sub i32 %i.ac, %.0.i47
  %i.ae = add i32 %smax61, %i.ad
  %i.af = zext i32 %i.ae to i64
  %i.ag = add nuw nsw i64 %i.af, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep59, ptr noundef nonnull align 1 dereferenceable(1) %scevgep60, i64 %i.ag, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph56.preheader, %.preheader
  %i.ah = sext i32 %i.k to i64
  %i.ai = getelementptr inbounds i8, ptr %i.n, i64 %i.ah
  store i8 0, ptr %i.ai, align 1
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.039 = phi ptr [ %i.n, %._crit_edge ], [ null, %bb.a ]
  ret ptr %.039
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull ptr @TextJoin(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #23 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) @TextJoin.buffer, i8 0, i64 1024, i1 false)
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %TextLength.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %.preheader.i
  %.0.i = phi i32 [ %i.d, %.preheader.i ], [ 0, %bb.a ] ; 5 uses
  %i.a = zext i32 %.0.i to i64
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1
  %.not4.i = icmp eq i8 %i.c, 0
  %i.d = add i32 %.0.i, 1
  br i1 %.not4.i, label %TextLength.exit, label %.preheader.i

TextLength.exit:                                  ; preds = %.preheader.i
  %i.e = icmp sgt i32 %1, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

TextLength.exit.thread:                           ; preds = %bb.a
  %i.f = icmp sgt i32 %1, 0
  br i1 %i.f, label %.lr.ph.split.us.preheader, label %._crit_edge

.lr.ph:                                           ; preds = %TextLength.exit
  %i.g = icmp sgt i32 %.0.i, 0
  %i.h = zext nneg i32 %.0.i to i64               ; 2 uses
  br i1 %i.g, label %.lr.ph.split.preheader, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %TextLength.exit.thread, %.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph.split.us

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.i = add nsw i32 %1, -1
  %i.j = zext nneg i32 %i.i to i64
  %wide.trip.count46 = zext nneg i32 %1 to i64
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.02539.us = phi i32 [ 0, %.lr.ph.split.us.preheader ], [ %.1.us, %bb.c ] ; 2 uses
  %.02638.us = phi ptr [ @TextJoin.buffer, %.lr.ph.split.us.preheader ], [ %.127.us, %bb.c ] ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %.not.i32.us = icmp eq ptr %i.l, null
  br i1 %.not.i32.us, label %TextLength.exit37.us, label %.preheader.i33.us

.preheader.i33.us:                                ; preds = %.lr.ph.split.us, %.preheader.i33.us
  %.0.i34.us = phi i32 [ %i.p, %.preheader.i33.us ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %i.m = zext i32 %.0.i34.us to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1
  %.not4.i35.us = icmp eq i8 %i.o, 0
  %i.p = add i32 %.0.i34.us, 1
  br i1 %.not4.i35.us, label %TextLength.exit37.us, label %.preheader.i33.us

TextLength.exit37.us:                             ; preds = %.preheader.i33.us, %.lr.ph.split.us
  %.1.i36.us = phi i32 [ 0, %.lr.ph.split.us ], [ %.0.i34.us, %.preheader.i33.us ] ; 2 uses
  %i.q = add nsw i32 %.1.i36.us, %.02539.us       ; 2 uses
  %i.r = icmp slt i32 %i.q, 1024
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %TextLength.exit37.us
  %i.s = sext i32 %.1.i36.us to i64               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.02638.us, ptr align 1 %i.l, i64 %i.s, i1 false)
  %i.t = getelementptr inbounds i8, ptr %.02638.us, i64 %i.s
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %TextLength.exit37.us
  %.127.us = phi ptr [ %i.t, %bb.b ], [ %.02638.us, %TextLength.exit37.us ]
  %.1.us = phi i32 [ %i.q, %bb.b ], [ %.02539.us, %TextLength.exit37.us ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.us

._crit_edge:                                      ; preds = %bb.f, %bb.c, %TextLength.exit.thread, %TextLength.exit
  ret ptr @TextJoin.buffer

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.f
  %indvars.iv43 = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next44, %bb.f ] ; 3 uses
  %.02539 = phi i32 [ 0, %.lr.ph.split.preheader ], [ %.1, %bb.f ] ; 2 uses
  %.02638 = phi ptr [ @TextJoin.buffer, %.lr.ph.split.preheader ], [ %.127, %bb.f ] ; 3 uses
end_hunk_2
