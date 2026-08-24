Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtext?download=true
inline.NumInlined: 306
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 46
begin_hunk_0_@stbrp_pack_rects:bb.a
bb.ao:                                            ; preds = %.lr.ph65
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.gg = load i32, ptr %i.gf, align 4
  %.fr = freeze i32 %i.gg
  %i.gh = icmp ne i32 %.fr, 2147483647            ; 2 uses
  %i.gi = zext i1 %i.gh to i32
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ga, i64 20
  store i32 %i.gi, ptr %i.gj, align 4
  br i1 %i.gh, label %bb.ap, label %.lr.ph65.1

bb.ap:                                            ; preds = %.thread, %bb.ao
  br label %.lr.ph65.1

.lr.ph65.1:                                       ; preds = %bb.ao, %bb.ap
  %i.gk = phi i32 [ %.063, %bb.ap ], [ 0, %bb.ao ]
  %i.gl = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv74 ; 4 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 36
  %i.gn = load i32, ptr %i.gm, align 4
  %i.go = icmp eq i32 %i.gn, 2147483647
  br i1 %i.go, label %bb.aq, label %.thread.1

.thread.1:                                        ; preds = %.lr.ph65.1
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gl, i64 44
  store i32 1, ptr %i.gp, align 4
  br label %bb.ar

bb.aq:                                            ; preds = %.lr.ph65.1
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gl, i64 40
  %i.gr = load i32, ptr %i.gq, align 4
  %.fr.1 = freeze i32 %i.gr
  %i.gs = icmp ne i32 %.fr.1, 2147483647          ; 2 uses
  %i.gt = zext i1 %i.gs to i32
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gl, i64 44
  store i32 %i.gt, ptr %i.gu, align 4
  br i1 %i.gs, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq, %.thread.1
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.gv = phi i32 [ %i.gk, %bb.ar ], [ 0, %bb.aq ] ; 3 uses
  %indvars.iv.next75.1 = add nuw nsw i64 %indvars.iv74, 2 ; 2 uses
  %niter114.next.1 = add i64 %niter114, 2         ; 2 uses
  %niter114.ncmp.1 = icmp eq i64 %niter114.next.1, %unroll_iter113
  br i1 %niter114.ncmp.1, label %._crit_edge66.loopexit.unr-lcssa, label %.lr.ph65

._crit_edge66.loopexit.unr-lcssa:                 ; preds = %bb.as
  %lcmp.mod110.not = icmp eq i64 %xtraiter108, 0
  br i1 %lcmp.mod110.not, label %._crit_edge66, label %.lr.ph65.epil.preheader

.lr.ph65.epil.preheader:                          ; preds = %._crit_edge66.loopexit.unr-lcssa, %._crit_edge61
  %indvars.iv74.epil.init = phi i64 [ 0, %._crit_edge61 ], [ %indvars.iv.next75.1, %._crit_edge66.loopexit.unr-lcssa ]
  %.063.epil.init = phi i32 [ 1, %._crit_edge61 ], [ %i.gv, %._crit_edge66.loopexit.unr-lcssa ]
  %lcmp.mod112 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod112)
  %i.gw = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv74.epil.init ; 4 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 12
  %i.gy = load i32, ptr %i.gx, align 4
  %i.gz = icmp eq i32 %i.gy, 2147483647
  br i1 %i.gz, label %bb.at, label %.thread.epil

.thread.epil:                                     ; preds = %.lr.ph65.epil.preheader
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gw, i64 20
  store i32 1, ptr %i.ha, align 4
  br label %bb.au

bb.at:                                            ; preds = %.lr.ph65.epil.preheader
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.hc = load i32, ptr %i.hb, align 4
  %.fr.epil = freeze i32 %i.hc
  %i.hd = icmp ne i32 %.fr.epil, 2147483647       ; 2 uses
  %i.he = zext i1 %i.hd to i32
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gw, i64 20
  store i32 %i.he, ptr %i.hf, align 4
  br i1 %i.hd, label %bb.au, label %._crit_edge66

bb.au:                                            ; preds = %bb.at, %.thread.epil
  br label %._crit_edge66

._crit_edge66:                                    ; preds = %._crit_edge66.loopexit.unr-lcssa, %bb.au, %bb.at, %._crit_edge61.thread
  %.0.lcssa = phi i32 [ 1, %._crit_edge61.thread ], [ %i.gv, %._crit_edge66.loopexit.unr-lcssa ], [ %.063.epil.init, %bb.au ], [ 0, %bb.at ]
  ret i32 %.0.lcssa
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @rect_height_compare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = icmp sgt i32 %i.b, %i.d
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i32 %i.b, %i.d
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4
  %i.k = tail call i32 @llvm.scmp.i32.i32(i32 %i.j, i32 %i.h)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.k, %bb.c ], [ -1, %bb.a ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @rect_original_order(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.d = load i32, ptr %i.c, align 4
  %i.e = tail call i32 @llvm.scmp.i32.i32(i32 %i.b, i32 %i.d)
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define hidden void @LoadFontDefault() local_unnamed_addr #6 {
bb.a:
  %0 = alloca %struct.Image, align 8              ; 8 uses
  %1 = alloca %struct.Texture, align 4            ; 4 uses
  %2 = alloca %struct.Image, align 8              ; 4 uses
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @defaultFont, i64 40), align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  store i32 224, ptr getelementptr inbounds nuw (i8, ptr @defaultFont, i64 4), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @defaultFont, i64 8), align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #39
  %i.b = tail call noalias dereferenceable_or_null(32768) ptr @calloc(i64 noundef 16384, i64 noundef 2) #40 ; 3 uses
  store ptr %i.b, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <4 x i32> <i32 128, i32 128, i32 1, i32 2>, ptr %i.c, align 8
  br label %.preheader

.preheader:                                       ; preds = %bb.b, %bb.d
  %indvars.iv71 = phi i64 [ 0, %bb.b ], [ %indvars.iv.next72, %bb.d ] ; 3 uses
  %indvars.iv69 = phi i64 [ 0, %bb.b ], [ %indvars.iv.next70, %bb.d ] ; 2 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr @__const.LoadFontDefault.defaultFontData, i64 %indvars.iv69
  %i.e = load i32, ptr %i.d, align 4
  %invariant.gep = getelementptr [2 x i8], ptr %i.b, i64 %indvars.iv71
  br label %bb.e

bb.c:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #39
  call void @LoadTextureFromImage(ptr dead_on_unwind nonnull writable sret(%struct.Texture) align 4 %1, ptr noundef nonnull byval(%struct.Image) align 8 %0) #39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @defaultFont, i64 12), ptr noundef nonnull align 4 dereferenceable(20) %1, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #39
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @defaultFont, i64 40), align 8
  %.not60 = icmp eq ptr %i.f, null
  br i1 %.not60, label %bb.j, label %bb.i

bb.d:                                             ; preds = %bb.h
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 32
  %exitcond.not = icmp eq i64 %indvars.iv.next70, 512
  br i1 %exitcond.not, label %bb.c, label %.preheader

bb.e:                                             ; preds = %.preheader, %bb.h
  %indvars.iv = phi i64 [ 31, %.preheader ], [ %indvars.iv.next, %bb.h ] ; 5 uses
  %i.g = trunc nuw nsw i64 %indvars.iv to i32
  %i.h = shl nuw i32 1, %i.g
  %i.i = and i32 %i.e, %i.h
  %.not61 = icmp eq i32 %i.i, 0
  br i1 %.not61, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv
  store i16 -1, ptr %gep, align 2
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.j = add nuw nsw i64 %indvars.iv, %indvars.iv71
  %i.k = shl nuw nsw i64 %i.j, 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.k ; 2 uses
  store i8 -1, ptr %i.l, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 0, ptr %i.m, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not79 = icmp eq i64 %indvars.iv, 0
  br i1 %.not79, label %bb.d, label %bb.e

bb.i:                                             ; preds = %bb.c
  call void @UnloadImage(ptr noundef nonnull byval(%struct.Image) align 8 %0) #39
  br label %bb.m

bb.j:                                             ; preds = %bb.c
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @defaultFont, i64 4), align 4
  %i.o = sext i32 %i.n to i64
  %i.p = call noalias ptr @calloc(i64 noundef %i.o, i64 noundef 40) #40
  store ptr %i.p, ptr getelementptr inbounds nuw (i8, ptr @defaultFont, i64 40), align 8
  %3 = load i32, ptr getelementptr inbounds nuw (i8, ptr @defaultFont, i64 4), align 4
  %4 = sext i32 %3 to i64
  %i.q = call noalias ptr @calloc(i64 noundef %4, i64 noundef 16) #40
  store ptr %i.q, ptr getelementptr inbounds nuw (i8, ptr @defaultFont, i64 32), align 8
  %5 = load i32, ptr getelementptr inbounds nuw (i8, ptr @defaultFont, i64 4), align 4
  %i.r = icmp sgt i32 %5, 0
  br i1 %i.r, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.l, %bb.j
  call void @UnloadImage(ptr noundef nonnull byval(%struct.Image) align 8 %0) #39
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @defaultFont, i64 32), align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.u = load float, ptr %i.t, align 4
  %i.v = fptosi float %i.u to i32
  store i32 %i.v, ptr @defaultFont, align 8
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @defaultFont, i64 4), align 4
  call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef %i.w) #39
  br label %bb.m

.lr.ph:                                           ; preds = %bb.j, %bb.l
  %indvars.iv76 = phi i64 [ %indvars.iv.next77, %bb.l ], [ 0, %bb.j ] ; 5 uses
  %.05166 = phi i32 [ %.1, %bb.l ], [ 1, %bb.j ]  ; 2 uses
  %.05465 = phi i32 [ %.155, %bb.l ], [ 0, %bb.j ] ; 3 uses
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @defaultFont, i64 40), align 8
  %i.y = getelementptr inbounds nuw [40 x i8], ptr %i.x, i64 %indvars.iv76 ; 5 uses
  %i.z = trunc i64 %indvars.iv76 to i32
  %i.aa = add i32 %i.z, 32
  store i32 %i.aa, ptr %i.y, align 8
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @defaultFont, i64 32), align 8
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %indvars.iv76 ; 6 uses
  %i.ad = mul nsw i32 %.05465, 11
  %i.ae = add nsw i32 %i.ad, 1
  %i.af = insertelement <2 x i32> poison, i32 %.05166, i64 0
  %i.ag = insertelement <2 x i32> %i.af, i32 %i.ae, i64 1
  %i.ah = sitofp <2 x i32> %i.ag to <2 x float>
  store <2 x float> %i.ah, ptr %i.ac, align 4
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr @__const.LoadFontDefault.charsWidth, i64 %indvars.iv76
  %i.aj = load i32, ptr %i.ai, align 4            ; 2 uses
  %i.ak = sitofp i32 %i.aj to float               ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  store float %i.ak, ptr %i.al, align 4
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
end_hunk_0
