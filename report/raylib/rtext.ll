Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtext?download=true
inline.NumInlined: 306
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 46
begin_hunk_0_@LoadFont:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #39, !noalias !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #39, !noalias !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #39, !noalias !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #39, !noalias !23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39, !noalias !23
  br label %LoadBMFont.exit

LoadBMFont.exit:                                  ; preds = %bb.f, %bb.n, %bb.x, %bb.z, %bb.aq
  %.sroa.10.sroa.0.1 = phi <4 x i32> [ zeroinitializer, %bb.f ], [ zeroinitializer, %bb.n ], [ zeroinitializer, %bb.x ], [ zeroinitializer, %bb.z ], [ %.sroa.10.sroa.0.0, %bb.aq ]
  %.sroa.0.1 = phi i32 [ 0, %bb.f ], [ 0, %bb.n ], [ 0, %bb.x ], [ 0, %bb.z ], [ %.sroa.0.0, %bb.aq ]
  %.sroa.6.1 = phi i32 [ 0, %bb.f ], [ 0, %bb.n ], [ 0, %bb.x ], [ 0, %bb.z ], [ %.sroa.6.0, %bb.aq ]
  %.sroa.7.1 = phi i32 [ 0, %bb.f ], [ 0, %bb.n ], [ 0, %bb.x ], [ 0, %bb.z ], [ %.sroa.7.0, %bb.aq ]
  %.sroa.8.1 = phi i32 [ 0, %bb.f ], [ 0, %bb.n ], [ 0, %bb.x ], [ 0, %bb.z ], [ %.sroa.8.0, %bb.aq ]
  %i.kh = phi <2 x ptr> [ splat (ptr null), %bb.f ], [ splat (ptr null), %bb.n ], [ splat (ptr null), %bb.x ], [ splat (ptr null), %bb.z ], [ %i.kg, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #39, !noalias !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #39, !noalias !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #39, !noalias !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #39, !noalias !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #39, !noalias !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #39, !noalias !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #39, !noalias !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39, !noalias !23
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
  store <2 x ptr> %i.kh, ptr %.sroa.11.0..sroa_idx, align 8
  br label %bb.av

bb.ar:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #39
  call void @LoadImage(ptr dead_on_unwind nonnull writable sret(%struct.Image) align 8 %9, ptr noundef %1) #39
  %i.ki = load ptr, ptr %9, align 8
  %.not = icmp eq ptr %i.ki, null
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
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.kk = load i32, ptr %i.kj, align 4
  %i.kl = icmp eq i32 %i.kk, 0
  br i1 %i.kl, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.4, ptr noundef %1) #39
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %10, ptr noundef nonnull align 4 dereferenceable(20) %i.kj, i64 20, i1 false)
  call void @SetTextureFilter(ptr noundef nonnull byval(%struct.Texture) align 8 %10, i32 noundef 0) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  %i.km = load i32, ptr %0, align 8
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ko = load i32, ptr %i.kn, align 4
  call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.5, i32 noundef %i.km, i32 noundef %i.ko) #39
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

declare zeroext i1 @IsFileExtension(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define void @LoadFontEx(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.Font) align 8 captures(none) initializes((0, 48)) %0, ptr noundef %1, i32 noundef %2, ptr noundef captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  store i32 0, ptr %i.a, align 4
  %i.b = call ptr @LoadFileData(ptr noundef %1, ptr noundef nonnull %i.a) #39 ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call ptr @GetFileExtension(ptr noundef %1) #39
  %i.d = load i32, ptr %i.a, align 4
  call void @LoadFontFromMemory(ptr dead_on_unwind nonnull writable sret(%struct.Font) align 8 %0, ptr noundef %i.c, ptr noundef nonnull %i.b, i32 noundef %i.d, i32 noundef %2, ptr noundef %3, i32 noundef %4)
  call void @UnloadFileData(ptr noundef nonnull %i.b) #39
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  ret void
}

declare void @LoadImage(ptr dead_on_unwind writable sret(%struct.Image) align 8, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define void @LoadFontFromImage(ptr dead_on_unwind noalias nofree writable sret(%struct.Font) align 8 captures(none) initializes((0, 48)) %0, ptr nofree noundef readonly byval(%struct.Image) align 8 captures(none) %1, i32 %2, i32 noundef %3) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca [256 x i32], align 16             ; 5 uses
  %4 = alloca [256 x %struct.Rectangle], align 16 ; 5 uses
  %5 = alloca %struct.Image, align 8              ; 10 uses
  %6 = alloca %struct.Image, align 8              ; 4 uses
  %.sroa.7.0.extract.shift = lshr i32 %2, 8       ; 4 uses
  %.sroa.13.0.extract.shift = lshr i32 %2, 16     ; 4 uses
  %.sroa.19.0.extract.shift = lshr i32 %2, 24     ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) @defaultFont, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.a, i8 0, i64 1024, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %4, i8 0, i64 4096, i1 false)
  %i.b = tail call ptr @LoadImageColors(ptr noundef nonnull byval(%struct.Image) align 8 %1) #39 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = load i32, ptr %i.c, align 4              ; 10 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.preheader207.lr.ph, label %._crit_edge226.thread

.preheader207.lr.ph:                              ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 8              ; 3 uses
  %i.h = icmp sgt i32 %i.g, 0
  %i.i = trunc i32 %2 to i8                       ; 2 uses
  %i.j = trunc i32 %.sroa.7.0.extract.shift to i8 ; 2 uses
  %i.k = trunc i32 %.sroa.13.0.extract.shift to i8 ; 2 uses
  %wide.trip.count299 = zext nneg i32 %i.d to i64
  br i1 %i.h, label %.preheader207.us.preheader, label %._crit_edge226.thread

.preheader207.us.preheader:                       ; preds = %.preheader207.lr.ph
  %i.l = zext nneg i32 %i.g to i64                ; 2 uses
  br label %.preheader207.us

.preheader207.us:                                 ; preds = %.preheader207.us.preheader, %bb.j
  %indvars.iv296 = phi i64 [ 0, %.preheader207.us.preheader ], [ %indvars.iv.next297, %bb.j ] ; 6 uses
  %i.m = mul nuw nsw i64 %indvars.iv296, %i.l     ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.m
  br label %bb.b

bb.b:                                             ; preds = %.preheader207.us, %bb.f
  %indvars.iv291 = phi i64 [ 0, %.preheader207.us ], [ %indvars.iv.next292, %bb.f ] ; 6 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv291 ; 4 uses
  %i.p = load i8, ptr %i.o, align 1
  %i.q = icmp eq i8 %i.p, %i.i
  br i1 %i.q, label %bb.c, label %._crit_edge.us.split.loop.exit347

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.s = load i8, ptr %i.r, align 1
  %i.t = icmp eq i8 %i.s, %i.j
  br i1 %i.t, label %bb.d, label %._crit_edge.us.split.loop.exit345

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %i.v = load i8, ptr %i.u, align 1
  %i.w = icmp eq i8 %i.v, %i.k
  br i1 %i.w, label %bb.e, label %._crit_edge.us.split.loop.exit343

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 3
  %i.y = load i8, ptr %i.x, align 1
  %i.z = zext i8 %i.y to i32
  %i.aa = icmp eq i32 %.sroa.19.0.extract.shift, %i.z
  br i1 %i.aa, label %bb.f, label %._crit_edge.us.split.loop.exit341

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next292 = add nuw nsw i64 %indvars.iv291, 1 ; 2 uses
  %exitcond295.not = icmp eq i64 %indvars.iv.next292, %i.l
  br i1 %exitcond295.not, label %._crit_edge.us, label %bb.b

._crit_edge.us.split.loop.exit341:                ; preds = %bb.e
  %i.ab = trunc nuw nsw i64 %indvars.iv291 to i32
  br label %._crit_edge.us

._crit_edge.us.split.loop.exit343:                ; preds = %bb.d
  %i.ac = trunc nuw nsw i64 %indvars.iv291 to i32
  br label %._crit_edge.us

._crit_edge.us.split.loop.exit345:                ; preds = %bb.c
  %i.ad = trunc nuw nsw i64 %indvars.iv291 to i32
  br label %._crit_edge.us

._crit_edge.us.split.loop.exit347:                ; preds = %bb.b
  %i.ae = trunc nuw nsw i64 %indvars.iv291 to i32
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.f, %._crit_edge.us.split.loop.exit347, %._crit_edge.us.split.loop.exit345, %._crit_edge.us.split.loop.exit343, %._crit_edge.us.split.loop.exit341
  %.1.lcssa.us = phi i32 [ %i.ae, %._crit_edge.us.split.loop.exit347 ], [ %i.ad, %._crit_edge.us.split.loop.exit345 ], [ %i.ac, %._crit_edge.us.split.loop.exit343 ], [ %i.ab, %._crit_edge.us.split.loop.exit341 ], [ %i.g, %bb.f ] ; 6 uses
  %7 = zext i32 %.1.lcssa.us to i64
  %8 = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.m
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %7 ; 4 uses
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = icmp eq i8 %i.ag, %i.i
  br i1 %i.ah, label %bb.g, label %._crit_edge226.split.loop.exit361

bb.g:                                             ; preds = %._crit_edge.us
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = icmp eq i8 %i.aj, %i.j
  br i1 %i.ak, label %bb.h, label %._crit_edge226.split.loop.exit358

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %i.am = load i8, ptr %i.al, align 1
  %i.an = icmp eq i8 %i.am, %i.k
  br i1 %i.an, label %bb.i, label %._crit_edge226.split.loop.exit355

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 3
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = zext i8 %i.ap to i32
  %i.ar = icmp eq i32 %.sroa.19.0.extract.shift, %i.aq
  br i1 %i.ar, label %bb.j, label %._crit_edge226.split.loop.exit352

bb.j:                                             ; preds = %bb.i
  %indvars.iv.next297 = add nuw nsw i64 %indvars.iv296, 1 ; 2 uses
  %exitcond300.not = icmp eq i64 %indvars.iv.next297, %wide.trip.count299
  br i1 %exitcond300.not, label %._crit_edge226, label %.preheader207.us

._crit_edge226.split.loop.exit352:                ; preds = %bb.i
  %i.as = trunc nuw nsw i64 %indvars.iv296 to i32
  br label %._crit_edge226

._crit_edge226.split.loop.exit355:                ; preds = %bb.h
  %i.at = trunc nuw nsw i64 %indvars.iv296 to i32
  br label %._crit_edge226

._crit_edge226.split.loop.exit358:                ; preds = %bb.g
  %i.au = trunc nuw nsw i64 %indvars.iv296 to i32
  br label %._crit_edge226

._crit_edge226.split.loop.exit361:                ; preds = %._crit_edge.us
  %i.av = trunc nuw nsw i64 %indvars.iv296 to i32
  br label %._crit_edge226

._crit_edge226:                                   ; preds = %bb.j, %._crit_edge226.split.loop.exit361, %._crit_edge226.split.loop.exit358, %._crit_edge226.split.loop.exit355, %._crit_edge226.split.loop.exit352
  %.0184.lcssa = phi i32 [ %i.at, %._crit_edge226.split.loop.exit355 ], [ %i.au, %._crit_edge226.split.loop.exit358 ], [ %i.as, %._crit_edge226.split.loop.exit352 ], [ %i.av, %._crit_edge226.split.loop.exit361 ], [ %i.d, %bb.j ] ; 8 uses
  %i.aw = icmp eq i32 %.1.lcssa.us, 0
  %i.ax = icmp eq i32 %.0184.lcssa, 0
  %or.cond = or i1 %i.ax, %i.aw
  br i1 %or.cond, label %._crit_edge226.thread, label %.preheader206

.preheader206:                                    ; preds = %._crit_edge226
  %i.ay = icmp slt i32 %.0184.lcssa, %i.d
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ba = load i32, ptr %i.az, align 8            ; 2 uses
  br i1 %i.ay, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %.preheader206
  %i.bb = trunc i32 %2 to i8
  %i.bc = trunc i32 %.sroa.7.0.extract.shift to i8
  %i.bd = trunc i32 %.sroa.13.0.extract.shift to i8
  %i.be = sext i32 %.0184.lcssa to i64
  %i.bf = sext i32 %i.ba to i64
  %i.bg = sext i32 %.1.lcssa.us to i64
  %i.bh = sub i32 %i.d, %.0184.lcssa              ; 2 uses
  %wide.trip.count304 = zext i32 %i.bh to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.b, i64 %i.bg
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %.critedge198
  %indvars.iv301 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next302, %.critedge198 ] ; 3 uses
  %i.bi = add nuw nsw i64 %indvars.iv301, %i.be
  %i.bj = mul nsw i64 %i.bi, %i.bf
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bj ; 4 uses
  %i.bk = load i8, ptr %gep, align 1
  %i.bl = icmp eq i8 %i.bk, %i.bb
  br i1 %i.bl, label %bb.l, label %.critedge198

bb.l:                                             ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %gep, i64 1
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = icmp eq i8 %i.bn, %i.bc
  br i1 %i.bo, label %bb.m, label %.critedge198

bb.m:                                             ; preds = %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %gep, i64 2
  %i.bq = load i8, ptr %i.bp, align 1
  %i.br = icmp eq i8 %i.bq, %i.bd
  br i1 %i.br, label %bb.n, label %.critedge198

bb.n:                                             ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %gep, i64 3
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = zext i8 %i.bt to i32
  %.not = icmp eq i32 %.sroa.19.0.extract.shift, %i.bu
  br i1 %.not, label %.critedge.split.loop.exit, label %.critedge198

.critedge198:                                     ; preds = %bb.m, %bb.l, %bb.k, %bb.n
  %indvars.iv.next302 = add nuw nsw i64 %indvars.iv301, 1 ; 2 uses
  %exitcond305.not = icmp eq i64 %indvars.iv.next302, %wide.trip.count304
  br i1 %exitcond305.not, label %.critedge, label %bb.k

.critedge.split.loop.exit:                        ; preds = %bb.n
  %indvars303.le = trunc i64 %indvars.iv301 to i32 ; 2 uses
  %i.bv = add nuw nsw i32 %.0184.lcssa, %indvars303.le
  br label %.critedge

.critedge:                                        ; preds = %.critedge198, %.critedge.split.loop.exit
  %.0192.lcssa.ph = phi i32 [ %indvars303.le, %.critedge.split.loop.exit ], [ %i.bh, %.critedge198 ]
  %.lcssa208.ph = phi i32 [ %i.bv, %.critedge.split.loop.exit ], [ %i.d, %.critedge198 ] ; 2 uses
  %i.bw = uitofp nneg i32 %.0192.lcssa.ph to float
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.by = load i32, ptr %i.bx, align 8            ; 8 uses
  %i.bz = icmp slt i32 %.1.lcssa.us, %i.by
  %i.ca = trunc i32 %2 to i8                      ; 2 uses
  %i.cb = trunc i32 %.sroa.7.0.extract.shift to i8 ; 2 uses
  %i.cc = trunc i32 %.sroa.13.0.extract.shift to i8 ; 2 uses
  br i1 %i.bz, label %.preheader205.us.preheader, label %.preheader205

.preheader205.us.preheader:                       ; preds = %.critedge
  %i.cd = sext i32 %i.by to i64
  br label %.preheader205.us

.preheader205.us:                                 ; preds = %.preheader205.us.preheader, %.critedge3.us
  %i.ce = phi i32 [ %i.ea, %.critedge3.us ], [ %.0184.lcssa, %.preheader205.us.preheader ] ; 2 uses
  %.0189277.us = phi i32 [ %i.dy, %.critedge3.us ], [ 0, %.preheader205.us.preheader ]
  %.0190276.us = phi i64 [ %.1191.lcssa.us.in, %.critedge3.us ], [ 0, %.preheader205.us.preheader ]
  %i.cf = mul nsw i32 %i.by, %i.ce
  %i.cg = uitofp nneg i32 %i.ce to float
  %sext = shl i64 %.0190276.us, 32
  %i.ch = ashr exact i64 %sext, 32
  br label %bb.o

bb.o:                                             ; preds = %.preheader205.us, %.critedge5.us
  %indvars.iv310 = phi i64 [ %i.ch, %.preheader205.us ], [ %indvars.iv.next311, %.critedge5.us ] ; 5 uses
  %.1188271.us = phi i32 [ %.1.lcssa.us, %.preheader205.us ], [ %i.dw, %.critedge5.us ] ; 6 uses
  %i.ci = add nsw i32 %i.cf, %.1188271.us
  %i.cj = sext i32 %i.ci to i64                   ; 2 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.cj ; 4 uses
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = icmp eq i8 %i.cl, %i.ca
  br i1 %i.cm, label %bb.p, label %.critedge200.us

bb.p:                                             ; preds = %bb.o
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 1
  %i.co = load i8, ptr %i.cn, align 1
  %i.cp = icmp eq i8 %i.co, %i.cb
  br i1 %i.cp, label %bb.q, label %.critedge200.us

bb.q:                                             ; preds = %bb.p
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 2
  %i.cr = load i8, ptr %i.cq, align 1
  %i.cs = icmp eq i8 %i.cr, %i.cc
  br i1 %i.cs, label %bb.r, label %.critedge200.us

bb.r:                                             ; preds = %bb.q
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ck, i64 3
  %i.cu = load i8, ptr %i.ct, align 1
  %i.cv = zext i8 %i.cu to i32
  %.not203.us = icmp eq i32 %.sroa.19.0.extract.shift, %i.cv
  br i1 %.not203.us, label %.critedge3.us, label %.critedge200.us

.critedge200.us:                                  ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv310
  %i.cx = trunc i64 %indvars.iv310 to i32
  %i.cy = add i32 %3, %i.cx
  store i32 %i.cy, ptr %i.cw, align 4
  %i.cz = sitofp i32 %.1188271.us to float
  %i.da = getelementptr inbounds [16 x i8], ptr %4, i64 %indvars.iv310 ; 4 uses
  store float %i.cz, ptr %i.da, align 16
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  store float %i.cg, ptr %i.db, align 4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  store float %i.bw, ptr %i.dc, align 4
  %i.dd = icmp slt i32 %.1188271.us, %i.by
  br i1 %i.dd, label %.lr.ph266.us.preheader, label %.critedge5.us

.lr.ph266.us.preheader:                           ; preds = %.critedge200.us
  %i.de = sext i32 %.1188271.us to i64
  %i.df = sub i32 %i.by, %.1188271.us
  %i.dg = sub nsw i64 %i.cd, %i.de
  %invariant.gep372 = getelementptr [4 x i8], ptr %i.b, i64 %i.cj
  br label %.lr.ph266.us

.lr.ph266.us:                                     ; preds = %.lr.ph266.us.preheader, %.critedge202.us
  %indvars.iv306 = phi i64 [ 0, %.lr.ph266.us.preheader ], [ %indvars.iv.next307, %.critedge202.us ] ; 3 uses
  %gep373 = getelementptr [4 x i8], ptr %invariant.gep372, i64 %indvars.iv306 ; 4 uses
  %i.dh = load i8, ptr %gep373, align 1
  %i.di = icmp eq i8 %i.dh, %i.ca
  br i1 %i.di, label %bb.s, label %.critedge202.us

bb.s:                                             ; preds = %.lr.ph266.us
  %i.dj = getelementptr inbounds nuw i8, ptr %gep373, i64 1
  %i.dk = load i8, ptr %i.dj, align 1
  %i.dl = icmp eq i8 %i.dk, %i.cb
  br i1 %i.dl, label %bb.t, label %.critedge202.us

bb.t:                                             ; preds = %bb.s
  %i.dm = getelementptr inbounds nuw i8, ptr %gep373, i64 2
  %i.dn = load i8, ptr %i.dm, align 1
end_hunk_0
