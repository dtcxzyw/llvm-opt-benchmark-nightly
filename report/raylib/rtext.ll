Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtext?download=true
inline.NumInlined: 306
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 46
begin_hunk_0_@LoadFontFromMemory:bb.a

bb.c:                                             ; preds = %.preheader.i.1
  %i.i = add i8 %i.h, -65
  %or.cond.i.1 = icmp ult i8 %i.i, 26
  %i.j = or disjoint i8 %i.h, 32
  %spec.select.i.1 = select i1 %or.cond.i.1, i8 %i.j, i8 %i.h
  %i.k = getelementptr inbounds nuw i8, ptr @TextToLower.buffer, i64 %indvars.iv.next.i
  store i8 %spec.select.i.1, ptr %i.k, align 1
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  br label %.preheader.i

TextToLower.exit:                                 ; preds = %.preheader.i, %bb.b, %.preheader.i.1, %bb.a
  %i.l = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @TextToLower.buffer, i64 noundef 15) #39 ; 0 uses
  store i32 %4, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i32, ptr %i.a, align 16
  %i.o = xor i32 %i.n, 1718907950
  %i.p = getelementptr i8, ptr %i.a, i64 4
  %i.q = load i8, ptr %i.p, align 4
  %i.r = zext i8 %i.q to i32
  %i.s = or i32 %i.o, %i.r
  %i.t = icmp ne i32 %i.s, 0
  %i.u = zext i1 %i.t to i32
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.e, label %bb.d

bb.d:                                             ; preds = %TextToLower.exit
  %i.w = load i32, ptr %i.a, align 16
  %i.x = xor i32 %i.w, 1718906670
  %i.y = getelementptr i8, ptr %i.a, i64 4
  %i.z = load i8, ptr %i.y, align 4
  %i.aa = zext i8 %i.z to i32
  %i.ab = or i32 %i.x, %i.aa
  %i.ac = icmp ne i32 %i.ab, 0
  %i.ad = zext i1 %i.ac to i32
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.e, label %.thread

bb.e:                                             ; preds = %TextToLower.exit, %bb.d
  %i.af = icmp sgt i32 %6, 0
  %i.ag = select i1 %i.af, i32 %6, i32 95
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ai = call ptr @LoadFontData(ptr noundef %2, i32 poison, i32 noundef %4, ptr noundef %5, i32 noundef %i.ag, i32 noundef 0, ptr noundef nonnull %i.ah) ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ai, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 4, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = load i32, ptr %0, align 8
  call void @GenImageFontAtlas(ptr dead_on_unwind nonnull writable sret(%struct.Image) align 8 %7, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.al, i32 noundef %i.an, i32 noundef %i.ao, i32 noundef 4, i32 noundef 0)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @LoadTextureFromImage(ptr dead_on_unwind nonnull writable sret(%struct.Texture) align 4 %i.ap, ptr noundef nonnull byval(%struct.Image) align 8 %7) #39
  %i.aq = load i32, ptr %i.am, align 4            ; 3 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.as = load ptr, ptr %i.ak, align 8
  %i.at = load ptr, ptr %i.al, align 8
  %wide.trip.count = zext nneg i32 %i.aq to i64
  br label %bb.g

._crit_edge:                                      ; preds = %bb.g, %bb.f
  call void @UnloadImage(ptr noundef nonnull byval(%struct.Image) align 8 %7) #39
  %i.au = load i32, ptr %0, align 8
  call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.5, i32 noundef %i.au, i32 noundef %i.aq) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.av = getelementptr inbounds nuw [40 x i8], ptr %i.as, i64 %indvars.iv
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  call void @UnloadImage(ptr noundef nonnull byval(%struct.Image) align 8 %i.aw) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %indvars.iv ; 2 uses
  %i.ay = load <2 x float>, ptr %i.ax, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ba = load <2 x float>, ptr %i.az, align 4
  call void @ImageFromImage(ptr dead_on_unwind nonnull writable sret(%struct.Image) align 8 %8, ptr noundef nonnull byval(%struct.Image) align 8 %7, <2 x float> %i.ay, <2 x float> %i.ba) #39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.g

.thread:                                          ; preds = %bb.d, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) @defaultFont, i64 48, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %.thread, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  ret void
}

declare ptr @GetFileExtension(ptr noundef) local_unnamed_addr #8

declare void @UnloadFileData(ptr noundef) local_unnamed_addr #8

declare ptr @LoadImageColors(ptr noundef byval(%struct.Image) align 8) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #14

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull ptr @TextToLower(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #15 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) @TextToLower.buffer, i8 0, i64 1024, i1 false)
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.c ], [ 0, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.b = load i8, ptr %i.a, align 1               ; 4 uses
  %.not16 = icmp eq i8 %i.b, 0
  br i1 %.not16, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.c = add i8 %i.b, -65
  %or.cond = icmp ult i8 %i.c, 26
  %i.d = or disjoint i8 %i.b, 32
  %spec.select = select i1 %or.cond, i8 %i.d, i8 %i.b
  %i.e = getelementptr inbounds nuw i8, ptr @TextToLower.buffer, i64 %indvars.iv
  store i8 %spec.select, ptr %i.e, align 2
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv, 1022
  br i1 %exitcond.not, label %.critedge, label %.preheader.1

.preheader.1:                                     ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next
  %i.g = load i8, ptr %i.f, align 1               ; 4 uses
  %.not16.1 = icmp eq i8 %i.g, 0
  br i1 %.not16.1, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.preheader.1
  %i.h = add i8 %i.g, -65
  %or.cond.1 = icmp ult i8 %i.h, 26
  %i.i = or disjoint i8 %i.g, 32
  %spec.select.1 = select i1 %or.cond.1, i8 %i.i, i8 %i.g
  %i.j = getelementptr inbounds nuw i8, ptr @TextToLower.buffer, i64 %indvars.iv.next
  store i8 %spec.select.1, ptr %i.j, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  br label %.preheader

.critedge:                                        ; preds = %.preheader, %bb.b, %.preheader.1, %bb.a
  ret ptr @TextToLower.buffer
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i1 @TextIsEqual(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #41
  %i.d = icmp eq i32 %i.c, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %i.d, %bb.b ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @LoadFontData(ptr noundef %0, i32 %1, i32 noundef %2, ptr noundef captures(address_is_null) %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef writeonly captures(none) %6) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 8 uses
  %i.g = alloca [129 x float], align 16           ; 4 uses
  %.sroa.5.i.i.i.i.i.i.i = alloca { float, float, i32 }, align 8 ; 4 uses
  %i.h = alloca i32, align 4                      ; 19 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  %i.l = alloca i32, align 4                      ; 4 uses
  %i.m = alloca ptr, align 8                      ; 5 uses
  %7 = alloca %struct.stbtt__buf, align 8         ; 28 uses
  %8 = alloca %struct.stbtt__buf, align 8         ; 10 uses
  %i.n = alloca i32, align 4                      ; 6 uses
  %i.o = alloca i32, align 4                      ; 6 uses
  %i.p = alloca i32, align 4                      ; 6 uses
  %i.q = alloca i32, align 4                      ; 6 uses
  %9 = alloca %struct.stbtt_fontinfo, align 8     ; 32 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.ob, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %9, i8 0, i64 160, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %0, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 3 uses
  %.sroa.431.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  %.val.i.i.i = load i8, ptr %i.t, align 1
  %i.u = getelementptr i8, ptr %0, i64 5
  %.val25.i.i.i = load i8, ptr %i.u, align 1
  %i.v = zext i8 %.val.i.i.i to i32
  %i.w = shl nuw nsw i32 %i.v, 8
  %i.x = zext i8 %.val25.i.i.i to i32
  %i.y = or disjoint i32 %i.w, %i.x               ; 4 uses
  %.not.i.i.i = icmp eq i32 %i.y, 0               ; 3 uses
  br i1 %.not.i.i.i, label %stbtt__find_table.exit140.i.i.thread, label %.lr.ph.i.i.i

stbtt__find_table.exit140.i.i.thread:             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  br label %stbtt__find_table.exit200.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %wide.trip.count.i.i.i = zext nneg i32 %i.y to i64 ; 8 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.h ] ; 2 uses
  %i.aa = shl nuw nsw i64 %indvars.iv.i.i.i, 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %i.aa ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = icmp eq i8 %i.ad, 99
  br i1 %i.ae, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 13
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = icmp eq i8 %i.ag, 109
  br i1 %i.ah, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 14
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = icmp eq i8 %i.aj, 97
  br i1 %i.ak, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 15
  %i.am = load i8, ptr %i.al, align 1
  %i.an = icmp eq i8 %i.am, 112
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  %i.ap = load i32, ptr %i.ao, align 1
  %i.aq = tail call i32 @llvm.bswap.i32(i32 %i.ap)
  br label %.lr.ph.i134.i.i

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %.lr.ph.i134.i.i, label %bb.c

.lr.ph.i134.i.i:                                  ; preds = %bb.h, %bb.g
  %.2.i.i.i = phi i32 [ %i.aq, %bb.g ], [ 0, %bb.h ] ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %.lr.ph.i134.i.i
  %indvars.iv.i136.i.i = phi i64 [ 0, %.lr.ph.i134.i.i ], [ %indvars.iv.next.i137.i.i, %bb.n ] ; 2 uses
  %i.ar = shl nuw nsw i64 %indvars.iv.i136.i.i, 4
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %i.ar ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  %i.au = load i8, ptr %i.at, align 1
  %i.av = icmp eq i8 %i.au, 108
  br i1 %i.av, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 13
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = icmp eq i8 %i.ax, 111
  br i1 %i.ay, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 14
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = icmp eq i8 %i.ba, 99
  br i1 %i.bb, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %i.as, i64 15
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = icmp eq i8 %i.bd, 97
  br i1 %i.be, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %i.as, i64 20
  %i.bg = load i32, ptr %i.bf, align 1
  %i.bh = tail call i32 @llvm.bswap.i32(i32 %i.bg)
  br label %stbtt__find_table.exit140.i.i

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %indvars.iv.next.i137.i.i = add nuw nsw i64 %indvars.iv.i136.i.i, 1 ; 2 uses
  %exitcond.not.i138.i.i = icmp eq i64 %indvars.iv.next.i137.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i138.i.i, label %stbtt__find_table.exit140.i.i, label %bb.i

stbtt__find_table.exit140.i.i:                    ; preds = %bb.n, %bb.m
  %.2.i139.i.i = phi i32 [ %i.bh, %bb.m ], [ 0, %bb.n ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i32 %.2.i139.i.i, ptr %i.bi, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.t, %stbtt__find_table.exit140.i.i
  %indvars.iv.i146.i.i = phi i64 [ 0, %stbtt__find_table.exit140.i.i ], [ %indvars.iv.next.i147.i.i, %bb.t ] ; 2 uses
  %i.bj = shl nuw nsw i64 %indvars.iv.i146.i.i, 4
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 %i.bj ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = icmp eq i8 %i.bm, 104
  br i1 %i.bn, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 13
  %i.bp = load i8, ptr %i.bo, align 1
  %i.bq = icmp eq i8 %i.bp, 101
  br i1 %i.bq, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 14
  %i.bs = load i8, ptr %i.br, align 1
  %i.bt = icmp eq i8 %i.bs, 97
  br i1 %i.bt, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 15
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = icmp eq i8 %i.bv, 100
  br i1 %i.bw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bk, i64 20
  %i.by = load i32, ptr %i.bx, align 1
  %i.bz = tail call i32 @llvm.bswap.i32(i32 %i.by)
  br label %stbtt__find_table.exit150.i.i

bb.t:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %indvars.iv.next.i147.i.i = add nuw nsw i64 %indvars.iv.i146.i.i, 1 ; 2 uses
  %exitcond.not.i148.i.i = icmp eq i64 %indvars.iv.next.i147.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i148.i.i, label %stbtt__find_table.exit150.i.i, label %bb.o

stbtt__find_table.exit150.i.i:                    ; preds = %bb.t, %bb.s
  %i.ca = phi i32 [ %i.bz, %bb.s ], [ 0, %bb.t ]  ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %9, i64 28
  store i32 %i.ca, ptr %i.cb, align 4
  br label %bb.u

bb.u:                                             ; preds = %bb.z, %stbtt__find_table.exit150.i.i
  %indvars.iv.i156.i.i = phi i64 [ 0, %stbtt__find_table.exit150.i.i ], [ %indvars.iv.next.i157.i.i, %bb.z ] ; 2 uses
  %i.cc = shl nuw nsw i64 %indvars.iv.i156.i.i, 4
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 %i.cc ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  %i.cf = load i8, ptr %i.ce, align 1
  %i.cg = icmp eq i8 %i.cf, 103
  br i1 %i.cg, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 13
  %i.ci = load i8, ptr %i.ch, align 1
  %i.cj = icmp eq i8 %i.ci, 108
  br i1 %i.cj, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 14
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = icmp eq i8 %i.cl, 121
  br i1 %i.cm, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cd, i64 15
  %i.co = load i8, ptr %i.cn, align 1
  %i.cp = icmp eq i8 %i.co, 102
  br i1 %i.cp, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cd, i64 20
  %i.cr = load i32, ptr %i.cq, align 1
  %i.cs = tail call i32 @llvm.bswap.i32(i32 %i.cr)
  br label %stbtt__find_table.exit160.i.i

bb.z:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.u
  %indvars.iv.next.i157.i.i = add nuw nsw i64 %indvars.iv.i156.i.i, 1 ; 2 uses
  %exitcond.not.i158.i.i = icmp eq i64 %indvars.iv.next.i157.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i158.i.i, label %stbtt__find_table.exit160.i.i, label %bb.u

stbtt__find_table.exit160.i.i:                    ; preds = %bb.z, %bb.y
  %.2.i159.i.i = phi i32 [ %i.cs, %bb.y ], [ 0, %bb.z ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i32 %.2.i159.i.i, ptr %i.ct, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.af, %stbtt__find_table.exit160.i.i
  %indvars.iv.i166.i.i = phi i64 [ 0, %stbtt__find_table.exit160.i.i ], [ %indvars.iv.next.i167.i.i, %bb.af ] ; 2 uses
  %i.cu = shl nuw nsw i64 %indvars.iv.i166.i.i, 4
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 %i.cu ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 12
  %i.cx = load i8, ptr %i.cw, align 1
  %i.cy = icmp eq i8 %i.cx, 104
  br i1 %i.cy, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 13
  %i.da = load i8, ptr %i.cz, align 1
  %i.db = icmp eq i8 %i.da, 104
  br i1 %i.db, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 14
  %i.dd = load i8, ptr %i.dc, align 1
  %i.de = icmp eq i8 %i.dd, 101
  br i1 %i.de, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.df = getelementptr inbounds nuw i8, ptr %i.cv, i64 15
  %i.dg = load i8, ptr %i.df, align 1
  %i.dh = icmp eq i8 %i.dg, 97
  br i1 %i.dh, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.di = getelementptr inbounds nuw i8, ptr %i.cv, i64 20
  %i.dj = load i32, ptr %i.di, align 1
  %i.dk = tail call i32 @llvm.bswap.i32(i32 %i.dj)
  br label %stbtt__find_table.exit170.i.i

bb.af:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %indvars.iv.next.i167.i.i = add nuw nsw i64 %indvars.iv.i166.i.i, 1 ; 2 uses
  %exitcond.not.i168.i.i = icmp eq i64 %indvars.iv.next.i167.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i168.i.i, label %stbtt__find_table.exit170.i.i, label %bb.aa

stbtt__find_table.exit170.i.i:                    ; preds = %bb.af, %bb.ae
  %.2.i169.i.i = phi i32 [ %i.dk, %bb.ae ], [ 0, %bb.af ] ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %9, i64 36
  store i32 %.2.i169.i.i, ptr %i.dl, align 4
  br label %bb.ag

bb.ag:                                            ; preds = %bb.al, %stbtt__find_table.exit170.i.i
  %indvars.iv.i176.i.i = phi i64 [ 0, %stbtt__find_table.exit170.i.i ], [ %indvars.iv.next.i177.i.i, %bb.al ] ; 2 uses
  %i.dm = shl nuw nsw i64 %indvars.iv.i176.i.i, 4
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 %i.dm ; 5 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 12
  %i.dp = load i8, ptr %i.do, align 1
  %i.dq = icmp eq i8 %i.dp, 104
  br i1 %i.dq, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 13
  %i.ds = load i8, ptr %i.dr, align 1
  %i.dt = icmp eq i8 %i.ds, 109
  br i1 %i.dt, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.du = getelementptr inbounds nuw i8, ptr %i.dn, i64 14
  %i.dv = load i8, ptr %i.du, align 1
  %i.dw = icmp eq i8 %i.dv, 116
  br i1 %i.dw, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dn, i64 15
  %i.dy = load i8, ptr %i.dx, align 1
  %i.dz = icmp eq i8 %i.dy, 120
  br i1 %i.dz, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dn, i64 20
  %i.eb = load i32, ptr %i.ea, align 1
  %i.ec = tail call i32 @llvm.bswap.i32(i32 %i.eb)
  br label %stbtt__find_table.exit180.i.i

bb.al:                                            ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %indvars.iv.next.i177.i.i = add nuw nsw i64 %indvars.iv.i176.i.i, 1 ; 2 uses
  %exitcond.not.i178.i.i = icmp eq i64 %indvars.iv.next.i177.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i178.i.i, label %stbtt__find_table.exit180.i.i, label %bb.ag

stbtt__find_table.exit180.i.i:                    ; preds = %bb.al, %bb.ak
  %.2.i179.i.i = phi i32 [ %i.ec, %bb.ak ], [ 0, %bb.al ] ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i32 %.2.i179.i.i, ptr %i.ed, align 8
  br label %bb.am

bb.am:                                            ; preds = %bb.ar, %stbtt__find_table.exit180.i.i
  %indvars.iv.i186.i.i = phi i64 [ 0, %stbtt__find_table.exit180.i.i ], [ %indvars.iv.next.i187.i.i, %bb.ar ] ; 2 uses
  %i.ee = shl nuw nsw i64 %indvars.iv.i186.i.i, 4
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 %i.ee ; 5 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 12
  %i.eh = load i8, ptr %i.eg, align 1
  %i.ei = icmp eq i8 %i.eh, 107
  br i1 %i.ei, label %bb.an, label %bb.ar

bb.an:                                            ; preds = %bb.am
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 13
  %i.ek = load i8, ptr %i.ej, align 1
  %i.el = icmp eq i8 %i.ek, 101
  br i1 %i.el, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.em = getelementptr inbounds nuw i8, ptr %i.ef, i64 14
  %i.en = load i8, ptr %i.em, align 1
  %i.eo = icmp eq i8 %i.en, 114
  br i1 %i.eo, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ef, i64 15
  %i.eq = load i8, ptr %i.ep, align 1
  %i.er = icmp eq i8 %i.eq, 110
  br i1 %i.er, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.es = getelementptr inbounds nuw i8, ptr %i.ef, i64 20
  %i.et = load i32, ptr %i.es, align 1
  %i.eu = tail call i32 @llvm.bswap.i32(i32 %i.et)
  br label %stbtt__find_table.exit190.i.i

bb.ar:                                            ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am
  %indvars.iv.next.i187.i.i = add nuw nsw i64 %indvars.iv.i186.i.i, 1 ; 2 uses
  %exitcond.not.i188.i.i = icmp eq i64 %indvars.iv.next.i187.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i188.i.i, label %stbtt__find_table.exit190.i.i, label %bb.am

stbtt__find_table.exit190.i.i:                    ; preds = %bb.ar, %bb.aq
  %.2.i189.i.i = phi i32 [ %i.eu, %bb.aq ], [ 0, %bb.ar ]
  %i.ev = getelementptr inbounds nuw i8, ptr %9, i64 44
  store i32 %.2.i189.i.i, ptr %i.ev, align 4
  br label %bb.as

bb.as:                                            ; preds = %bb.ax, %stbtt__find_table.exit190.i.i
  %indvars.iv.i196.i.i = phi i64 [ 0, %stbtt__find_table.exit190.i.i ], [ %indvars.iv.next.i197.i.i, %bb.ax ] ; 2 uses
  %i.ew = shl nuw nsw i64 %indvars.iv.i196.i.i, 4
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 %i.ew ; 5 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 12
  %i.ez = load i8, ptr %i.ey, align 1
  %i.fa = icmp eq i8 %i.ez, 71
  br i1 %i.fa, label %bb.at, label %bb.ax

bb.at:                                            ; preds = %bb.as
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 13
  %i.fc = load i8, ptr %i.fb, align 1
  %i.fd = icmp eq i8 %i.fc, 80
  br i1 %i.fd, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %bb.at
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ex, i64 14
  %i.ff = load i8, ptr %i.fe, align 1
  %i.fg = icmp eq i8 %i.ff, 79
  br i1 %i.fg, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ex, i64 15
  %i.fi = load i8, ptr %i.fh, align 1
  %i.fj = icmp eq i8 %i.fi, 83
  br i1 %i.fj, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ex, i64 20
  %i.fl = load i32, ptr %i.fk, align 1
  %i.fm = tail call i32 @llvm.bswap.i32(i32 %i.fl)
  br label %stbtt__find_table.exit200.i.i

bb.ax:                                            ; preds = %bb.av, %bb.au, %bb.at, %bb.as
  %indvars.iv.next.i197.i.i = add nuw nsw i64 %indvars.iv.i196.i.i, 1 ; 2 uses
  %exitcond.not.i198.i.i = icmp eq i64 %indvars.iv.next.i197.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i198.i.i, label %stbtt__find_table.exit200.i.i, label %bb.as

stbtt__find_table.exit200.i.i:                    ; preds = %bb.ax, %stbtt__find_table.exit140.i.i.thread, %bb.aw
  %.val144 = phi i32 [ %.2.i169.i.i, %bb.aw ], [ 0, %stbtt__find_table.exit140.i.i.thread ], [ %.2.i169.i.i, %bb.ax ] ; 2 uses
  %i.fn = phi i32 [ %i.ca, %bb.aw ], [ 0, %stbtt__find_table.exit140.i.i.thread ], [ %i.ca, %bb.ax ] ; 2 uses
  %.2.i333.i.i189194198208218234 = phi i32 [ %.2.i.i.i, %bb.aw ], [ 0, %stbtt__find_table.exit140.i.i.thread ], [ %.2.i.i.i, %bb.ax ] ; 4 uses
  %.2.i139.i.i190193199207219233 = phi i32 [ %.2.i139.i.i, %bb.aw ], [ 0, %stbtt__find_table.exit140.i.i.thread ], [ %.2.i139.i.i, %bb.ax ]
  %.2.i159.i.i200206220232 = phi i32 [ %.2.i159.i.i, %bb.aw ], [ 0, %stbtt__find_table.exit140.i.i.thread ], [ %.2.i159.i.i, %bb.ax ]
  %.2.i179.i.i221231 = phi i32 [ %.2.i179.i.i, %bb.aw ], [ 0, %stbtt__find_table.exit140.i.i.thread ], [ %.2.i179.i.i, %bb.ax ] ; 2 uses
  %.2.i199.i.i = phi i32 [ %i.fm, %bb.aw ], [ 0, %stbtt__find_table.exit140.i.i.thread ], [ 0, %bb.ax ]
  %i.fo = getelementptr inbounds nuw i8, ptr %9, i64 48
  store i32 %.2.i199.i.i, ptr %i.fo, align 8
  %.not.i.i = icmp eq i32 %.2.i333.i.i189194198208218234, 0
  %.not111.i.i = icmp eq i32 %i.fn, 0
  %or.cond362.i.i = select i1 %.not.i.i, i1 true, i1 %.not111.i.i
  %.not112.i.i = icmp eq i32 %.val144, 0
  %or.cond363.i.i = select i1 %or.cond362.i.i, i1 true, i1 %.not112.i.i
  %.not113.i.i = icmp eq i32 %.2.i179.i.i221231, 0
  %or.cond364.i.i = select i1 %or.cond363.i.i, i1 true, i1 %.not113.i.i
  br i1 %or.cond364.i.i, label %.thread, label %bb.ay

bb.ay:                                            ; preds = %stbtt__find_table.exit200.i.i
  %.not114.i.i = icmp eq i32 %.2.i159.i.i200206220232, 0
  br i1 %.not114.i.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.not119.i.i = icmp eq i32 %.2.i139.i.i190193199207219233, 0
  br i1 %.not119.i.i, label %.thread, label %bb.cw

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #39
  store i32 2, ptr %i.n, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #39
  store i32 0, ptr %i.o, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #39
  store i32 0, ptr %i.p, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #39
  store i32 0, ptr %i.q, align 4
  br i1 %.not.i.i.i, label %.critedge.i.i, label %.lr.ph.i204.i.i

.lr.ph.i204.i.i:                                  ; preds = %bb.ba
  %wide.trip.count.i205.i.i = zext nneg i32 %i.y to i64
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bf, %.lr.ph.i204.i.i
  %indvars.iv.i206.i.i = phi i64 [ 0, %.lr.ph.i204.i.i ], [ %indvars.iv.next.i207.i.i, %bb.bf ] ; 2 uses
  %i.fp = shl nuw nsw i64 %indvars.iv.i206.i.i, 4
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 %i.fp ; 5 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 12
  %i.fs = load i8, ptr %i.fr, align 1
  %i.ft = icmp eq i8 %i.fs, 67
  br i1 %i.ft, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fq, i64 13
  %i.fv = load i8, ptr %i.fu, align 1
  %i.fw = icmp eq i8 %i.fv, 70
  br i1 %i.fw, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fq, i64 14
  %i.fy = load i8, ptr %i.fx, align 1
  %i.fz = icmp eq i8 %i.fy, 70
  br i1 %i.fz, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fq, i64 15
  %i.gb = load i8, ptr %i.ga, align 1
  %i.gc = icmp eq i8 %i.gb, 32
  br i1 %i.gc, label %stbtt__find_table.exit210.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %bb.bc, %bb.bb
  %indvars.iv.next.i207.i.i = add nuw nsw i64 %indvars.iv.i206.i.i, 1 ; 2 uses
  %exitcond.not.i208.i.i = icmp eq i64 %indvars.iv.next.i207.i.i, %wide.trip.count.i205.i.i
  br i1 %exitcond.not.i208.i.i, label %.critedge.i.i, label %bb.bb

stbtt__find_table.exit210.i.i:                    ; preds = %bb.be
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fq, i64 20
  %i.ge = load i32, ptr %i.gd, align 1            ; 2 uses
  %.not115.i.i = icmp eq i32 %i.ge, 0
  br i1 %.not115.i.i, label %.critedge.i.i, label %bb.bg

bb.bg:                                            ; preds = %stbtt__find_table.exit210.i.i
  %i.gf = tail call i32 @llvm.bswap.i32(i32 %i.ge)
  %i.gg = getelementptr inbounds nuw i8, ptr %9, i64 128 ; 2 uses
  %.sroa.424.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %9, i64 136
  %i.gh = getelementptr inbounds nuw i8, ptr %9, i64 144
  %.sroa.422.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %9, i64 152
  %i.gi = zext i32 %i.gf to i64
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 %i.gi
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gg, i8 0, i64 32, i1 false)
  store ptr %i.gj, ptr %i.s, align 8
  store i64 2305843009213693952, ptr %.sroa.431.0..sroa_idx.i.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false)
  %i.gk = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 17 uses
  %i.gl = load i32, ptr %i.gk, align 8            ; 2 uses
  %i.gm = add nsw i32 %i.gl, 2
  %i.gn = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  %i.go = load i32, ptr %i.gn, align 4            ; 48 uses
  %i.gp = icmp slt i32 %i.gl, -2
  %i.gq = tail call i32 @llvm.smin.i32(i32 %i.gm, i32 %i.go)
  %..i.i.i.i = select i1 %i.gp, i32 %i.go, i32 %i.gq ; 2 uses
  %.not.i211.i.i = icmp slt i32 %..i.i.i.i, %i.go
  br i1 %.not.i211.i.i, label %bb.bh, label %stbtt__buf_get8.exit.i.i

bb.bh:                                            ; preds = %bb.bg
  %i.gr = load ptr, ptr %7, align 8
  %i.gs = sext i32 %..i.i.i.i to i64
  %i.gt = getelementptr inbounds i8, ptr %i.gr, i64 %i.gs
  %i.gu = load i8, ptr %i.gt, align 1
  %i.gv = zext i8 %i.gu to i32
  br label %stbtt__buf_get8.exit.i.i

stbtt__buf_get8.exit.i.i:                         ; preds = %bb.bh, %bb.bg
  %.0.i.i.i = phi i32 [ %i.gv, %bb.bh ], [ 0, %bb.bg ] ; 2 uses
  %i.gw = tail call i32 @llvm.smin.i32(i32 %.0.i.i.i, i32 %i.go) ; 4 uses
  store i32 %i.gw, ptr %i.gk, align 8
  %.not.i.i.i.i.i = icmp slt i32 %.0.i.i.i, %i.go
  br i1 %.not.i.i.i.i.i, label %bb.bi, label %stbtt__buf_get8.exit.i.i.i.i

bb.bi:                                            ; preds = %stbtt__buf_get8.exit.i.i
  %i.gx = load ptr, ptr %7, align 8
  %i.gy = add nsw i32 %i.gw, 1                    ; 2 uses
  store i32 %i.gy, ptr %i.gk, align 8
  %i.gz = sext i32 %i.gw to i64
  %i.ha = getelementptr inbounds i8, ptr %i.gx, i64 %i.gz
  %i.hb = load i8, ptr %i.ha, align 1
  %i.hc = zext i8 %i.hb to i32
  %i.hd = shl nuw nsw i32 %i.hc, 8
  br label %stbtt__buf_get8.exit.i.i.i.i

stbtt__buf_get8.exit.i.i.i.i:                     ; preds = %bb.bi, %stbtt__buf_get8.exit.i.i
  %i.he = phi i32 [ %i.gy, %bb.bi ], [ %i.gw, %stbtt__buf_get8.exit.i.i ] ; 4 uses
  %.0.i.i.i.i.i = phi i32 [ %i.hd, %bb.bi ], [ 0, %stbtt__buf_get8.exit.i.i ] ; 2 uses
  %.not.i.i.1.i.i.i = icmp slt i32 %i.he, %i.go
  br i1 %.not.i.i.1.i.i.i, label %bb.bj, label %stbtt__buf_get8.exit.i.1.i.i.i

bb.bj:                                            ; preds = %stbtt__buf_get8.exit.i.i.i.i
  %i.hf = load ptr, ptr %7, align 8
  %i.hg = add nsw i32 %i.he, 1                    ; 2 uses
  store i32 %i.hg, ptr %i.gk, align 8
  %i.hh = sext i32 %i.he to i64
  %i.hi = getelementptr inbounds i8, ptr %i.hf, i64 %i.hh
  %i.hj = load i8, ptr %i.hi, align 1
  %i.hk = zext i8 %i.hj to i32
  %i.hl = or disjoint i32 %.0.i.i.i.i.i, %i.hk
  br label %stbtt__buf_get8.exit.i.1.i.i.i

stbtt__buf_get8.exit.i.1.i.i.i:                   ; preds = %bb.bj, %stbtt__buf_get8.exit.i.i.i.i
  %i.hm = phi i32 [ %i.hg, %bb.bj ], [ %i.he, %stbtt__buf_get8.exit.i.i.i.i ] ; 5 uses
  %.0.i.i.1.i.i.i = phi i32 [ %i.hl, %bb.bj ], [ %.0.i.i.i.i.i, %stbtt__buf_get8.exit.i.i.i.i ] ; 2 uses
  %.not.i212.i.i = icmp eq i32 %.0.i.i.1.i.i.i, 0
  br i1 %.not.i212.i.i, label %stbtt__cff_get_index.exit.i.i, label %bb.bk

bb.bk:                                            ; preds = %stbtt__buf_get8.exit.i.1.i.i.i
  %.not.i.i.i.i = icmp slt i32 %i.hm, %i.go
  br i1 %.not.i.i.i.i, label %bb.bl, label %stbtt__buf_get8.exit.i.i.i

bb.bl:                                            ; preds = %bb.bk
  %i.hn = load ptr, ptr %7, align 8
  %i.ho = add nsw i32 %i.hm, 1
  %i.hp = sext i32 %i.hm to i64
  %i.hq = getelementptr inbounds i8, ptr %i.hn, i64 %i.hp
  %i.hr = load i8, ptr %i.hq, align 1
  %i.hs = zext i8 %i.hr to i32
  br label %stbtt__buf_get8.exit.i.i.i

stbtt__buf_get8.exit.i.i.i:                       ; preds = %bb.bl, %bb.bk
  %.promoted.i.i = phi i32 [ %i.ho, %bb.bl ], [ %i.hm, %bb.bk ]
  %.0.i.i.i.i = phi i32 [ %i.hs, %bb.bl ], [ 0, %bb.bk ] ; 6 uses
  %i.ht = mul nuw nsw i32 %.0.i.i.i.i, %.0.i.i.1.i.i.i
  %i.hu = add nsw i32 %i.ht, %.promoted.i.i       ; 2 uses
  %i.hv = icmp slt i32 %i.hu, 0
  %i.hw = tail call i32 @llvm.smin.i32(i32 %i.hu, i32 %i.go)
  %..i.i.i.i.i = select i1 %i.hv, i32 %i.go, i32 %i.hw ; 3 uses
  %.not.i13.i.i.i = icmp eq i32 %.0.i.i.i.i, 0
  br i1 %.not.i13.i.i.i, label %stbtt__buf_get.exit21.i.i.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %stbtt__buf_get8.exit.i.i.i
  %i.hx = load ptr, ptr %7, align 8               ; 3 uses
  %xtraiter = and i32 %.0.i.i.i.i, 1
  %i.hy = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.hy, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.preheader.i.i.new

.lr.ph.i.i.preheader.i.i.new:                     ; preds = %.lr.ph.i.i.preheader.i.i
  %unroll_iter = and i32 %.0.i.i.i.i, 254
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %stbtt__buf_get8.exit.i18.i.i.i.1, %.lr.ph.i.i.preheader.i.i.new
  %i.hz = phi i32 [ %..i.i.i.i.i, %.lr.ph.i.i.preheader.i.i.new ], [ %i.ip, %stbtt__buf_get8.exit.i18.i.i.i.1 ] ; 4 uses
  %.056.i16.i.i.i = phi i32 [ 0, %.lr.ph.i.i.preheader.i.i.new ], [ %.0.i.i19.i.i.i.1, %stbtt__buf_get8.exit.i18.i.i.i.1 ]
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.i.i.new ], [ %niter.next.1, %stbtt__buf_get8.exit.i18.i.i.i.1 ]
  %i.ia = shl i32 %.056.i16.i.i.i, 8              ; 2 uses
  %.not.i.i17.i.i.i = icmp slt i32 %i.hz, %i.go
  br i1 %.not.i.i17.i.i.i, label %bb.bm, label %stbtt__buf_get8.exit.i18.i.i.i

bb.bm:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ib = add nsw i32 %i.hz, 1
  %i.ic = sext i32 %i.hz to i64
  %i.id = getelementptr inbounds i8, ptr %i.hx, i64 %i.ic
  %i.ie = load i8, ptr %i.id, align 1
  %i.if = zext i8 %i.ie to i32
  %i.ig = or disjoint i32 %i.ia, %i.if
  br label %stbtt__buf_get8.exit.i18.i.i.i

stbtt__buf_get8.exit.i18.i.i.i:                   ; preds = %bb.bm, %.lr.ph.i.i.i.i
  %i.ih = phi i32 [ %i.ib, %bb.bm ], [ %i.hz, %.lr.ph.i.i.i.i ] ; 4 uses
end_hunk_0
begin_hunk_1_@LoadFontData:bb.a
  br i1 %.not.i.i17.i303.i.i.epil, label %bb.cs, label %stbtt__buf_get.exit21.loopexit.i307.i.i

bb.cs:                                            ; preds = %.lr.ph.i.i300.i.i.epil.preheader
  %i.sl = add nsw i32 %.epil.init798, 1
  %i.sm = sext i32 %.epil.init798 to i64
  %i.sn = getelementptr inbounds i8, ptr %i.rr, i64 %i.sm
  %i.so = load i8, ptr %i.sn, align 1
  %i.sp = zext i8 %i.so to i32
  %i.sq = or disjoint i32 %i.sk, %i.sp
  br label %stbtt__buf_get.exit21.loopexit.i307.i.i

stbtt__buf_get.exit21.loopexit.i307.i.i:          ; preds = %.lr.ph.i.i300.i.i.epil.preheader, %bb.cs, %stbtt__buf_get.exit21.loopexit.i307.i.i.unr-lcssa
  %.lcssa736 = phi i32 [ %i.sj, %stbtt__buf_get.exit21.loopexit.i307.i.i.unr-lcssa ], [ %i.sl, %bb.cs ], [ %.epil.init798, %.lr.ph.i.i300.i.i.epil.preheader ]
  %.0.i.i19.i305.i.i.lcssa = phi i32 [ %.0.i.i19.i305.i.i.1, %stbtt__buf_get.exit21.loopexit.i307.i.i.unr-lcssa ], [ %i.sq, %bb.cs ], [ %i.sk, %.lr.ph.i.i300.i.i.epil.preheader ]
  %i.sr = add i32 %.0.i.i19.i305.i.i.lcssa, -1
  br label %stbtt__buf_get.exit21.i308.i.i

stbtt__buf_get.exit21.i308.i.i:                   ; preds = %stbtt__buf_get.exit21.loopexit.i307.i.i, %stbtt__buf_get8.exit.i296.i.i
  %i.ss = phi i32 [ %..i.i.i298.i.i, %stbtt__buf_get8.exit.i296.i.i ], [ %.lcssa736, %stbtt__buf_get.exit21.loopexit.i307.i.i ]
  %.05.lcssa.i.i309.i.i = phi i32 [ -1, %stbtt__buf_get8.exit.i296.i.i ], [ %i.sr, %stbtt__buf_get.exit21.loopexit.i307.i.i ]
  %i.st = add nsw i32 %.05.lcssa.i.i309.i.i, %i.ss ; 2 uses
  %i.su = icmp slt i32 %i.st, 0
  %i.sv = tail call i32 @llvm.smin.i32(i32 %i.st, i32 %i.go)
  %..i.i22.i310.i.i = select i1 %i.su, i32 %i.go, i32 %i.sv ; 2 uses
  store i32 %..i.i22.i310.i.i, ptr %i.gk, align 8
  br label %stbtt__cff_get_index.exit317.i.i

stbtt__cff_get_index.exit317.i.i:                 ; preds = %stbtt__buf_get.exit21.i308.i.i, %stbtt__buf_get8.exit.i.1.i292.i.i
  %i.sw = phi i32 [ %..i.i22.i310.i.i, %stbtt__buf_get.exit21.i308.i.i ], [ %i.rg, %stbtt__buf_get8.exit.i.1.i292.i.i ] ; 2 uses
  %i.sx = sub nsw i32 %i.sw, %i.qp                ; 2 uses
  %i.sy = or i32 %i.sx, %i.qp
  %or.cond.not.i.i311.i.i = icmp slt i32 %i.sy, 0
  %i.sz = icmp sgt i32 %i.sw, %i.go
  %or.cond.i312.i.i = or i1 %i.sz, %or.cond.not.i.i311.i.i ; 2 uses
  %i.ta = load ptr, ptr %7, align 8               ; 2 uses
  %i.tb = zext nneg i32 %i.qp to i64
  %i.tc = getelementptr inbounds nuw i8, ptr %i.ta, i64 %i.tb
  %i.td = zext nneg i32 %i.sx to i64
  %i.te = shl nuw nsw i64 %i.td, 32
  %.sroa.0.0.i.i313.i.i = select i1 %or.cond.i312.i.i, ptr null, ptr %i.tc
  %.sroa.5.0.i.i314.i.i = select i1 %or.cond.i312.i.i, i64 0, i64 %i.te
  store ptr %.sroa.0.0.i.i313.i.i, ptr %i.qq, align 8
  %.sroa.411.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %9, i64 104
  store i64 %.sroa.5.0.i.i314.i.i, ptr %.sroa.411.0..sroa_idx.i.i, align 8
  call fastcc void @stbtt__dict_get_ints(ptr noundef %8, i32 noundef 17, i32 noundef 1, ptr noundef %i.o)
  call fastcc void @stbtt__dict_get_ints(ptr noundef %8, i32 noundef 262, i32 noundef 1, ptr noundef %i.n)
  call fastcc void @stbtt__dict_get_ints(ptr noundef %8, i32 noundef 292, i32 noundef 1, ptr noundef %i.p)
  call fastcc void @stbtt__dict_get_ints(ptr noundef %8, i32 noundef 293, i32 noundef 1, ptr noundef %i.q)
  %i.tf = getelementptr inbounds nuw i8, ptr %9, i64 112
  %i.tg = load i64, ptr %i.gk, align 8            ; 2 uses
  %i.th = load ptr, ptr %8, align 8
  %i.ti = load i64, ptr %.sroa.414.0..sroa_idx.i.i, align 8
  %i.tj = tail call fastcc { ptr, i64 } @stbtt__get_subrs(ptr %i.ta, i64 %i.tg, ptr %i.th, i64 %i.ti) ; 2 uses
  %i.tk = extractvalue { ptr, i64 } %i.tj, 0
  %i.tl = extractvalue { ptr, i64 } %i.tj, 1
  store ptr %i.tk, ptr %i.tf, align 8
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %9, i64 120
  store i64 %i.tl, ptr %.sroa.49.0..sroa_idx.i.i, align 8
  %i.tm = load i32, ptr %i.n, align 4
  %.not116.i.i = icmp ne i32 %i.tm, 2
  %i.tn = load i32, ptr %i.o, align 4             ; 3 uses
  %i.to = icmp eq i32 %i.tn, 0
  %or.cond.i.i = select i1 %.not116.i.i, i1 true, i1 %i.to
  br i1 %or.cond.i.i, label %.critedge.i.i, label %bb.ct

bb.ct:                                            ; preds = %stbtt__cff_get_index.exit317.i.i
  %i.tp = lshr i64 %i.tg, 32
  %i.tq = trunc nuw i64 %i.tp to i32
  %i.tr = load i32, ptr %i.p, align 4             ; 3 uses
  %.not117.i.i = icmp eq i32 %i.tr, 0
  br i1 %.not117.i.i, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ts = load i32, ptr %i.q, align 4             ; 5 uses
  %.not118.i.i = icmp eq i32 %i.ts, 0
  br i1 %.not118.i.i, label %.critedge.i.i, label %stbtt__buf_range.exit.i.i

stbtt__buf_range.exit.i.i:                        ; preds = %bb.cu
  %i.tt = icmp slt i32 %i.tr, 0
  %i.tu = tail call i32 @llvm.smin.i32(i32 %i.tr, i32 %i.go)
  %..i.i.i = select i1 %i.tt, i32 %i.go, i32 %i.tu
  store i32 %..i.i.i, ptr %i.gk, align 8
  %i.tv = call fastcc { ptr, i64 } @stbtt__cff_get_index(ptr noundef %7) ; 2 uses
  %i.tw = extractvalue { ptr, i64 } %i.tv, 0
  %i.tx = extractvalue { ptr, i64 } %i.tv, 1
  store ptr %i.tw, ptr %i.gg, align 8
  store i64 %i.tx, ptr %.sroa.424.0..sroa_idx.i.i, align 8
  %i.ty = load i32, ptr %i.gn, align 4            ; 3 uses
  %i.tz = sub i32 %i.ty, %i.ts                    ; 2 uses
  %i.ua = or i32 %i.tz, %i.ts
  %or.cond.not.i.i.i = icmp slt i32 %i.ua, 0
  %i.ub = icmp sgt i32 %i.ts, %i.ty
  %or.cond365.i.i = or i1 %i.ub, %or.cond.not.i.i.i ; 2 uses
  %i.uc = load ptr, ptr %7, align 8
  %i.ud = zext nneg i32 %i.ts to i64
  %i.ue = getelementptr inbounds nuw i8, ptr %i.uc, i64 %i.ud
  %i.uf = zext nneg i32 %i.tz to i64
  %i.ug = shl nuw nsw i64 %i.uf, 32
  %.sroa.0.0.i.i.i = select i1 %or.cond365.i.i, ptr null, ptr %i.ue
  %.sroa.5.0.i.i.i = select i1 %or.cond365.i.i, i64 0, i64 %i.ug
  store ptr %.sroa.0.0.i.i.i, ptr %i.gh, align 8
  store i64 %.sroa.5.0.i.i.i, ptr %.sroa.422.0..sroa_idx.i.i, align 8
  br label %bb.cv

bb.cv:                                            ; preds = %stbtt__buf_range.exit.i.i, %bb.ct
  %i.uh = phi i32 [ %i.ty, %stbtt__buf_range.exit.i.i ], [ %i.tq, %bb.ct ] ; 2 uses
  %i.ui = icmp slt i32 %i.tn, 0
  %i.uj = tail call i32 @llvm.smin.i32(i32 %i.tn, i32 %i.uh)
  %..i321.i.i = select i1 %i.ui, i32 %i.uh, i32 %i.uj
  store i32 %..i321.i.i, ptr %i.gk, align 8
  %i.uk = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.ul = call fastcc { ptr, i64 } @stbtt__cff_get_index(ptr noundef %7) ; 2 uses
  %i.um = extractvalue { ptr, i64 } %i.ul, 0
  %i.un = extractvalue { ptr, i64 } %i.ul, 1
  store ptr %i.um, ptr %i.uk, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %9, i64 88
  store i64 %i.un, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.az
  br i1 %.not.i.i.i, label %stbtt__find_table.exit331.thread.i.i, label %.lr.ph.i325.i.i

.lr.ph.i325.i.i:                                  ; preds = %bb.cw
  %wide.trip.count.i326.i.i = zext nneg i32 %i.y to i64
  br label %bb.cx

bb.cx:                                            ; preds = %bb.db, %.lr.ph.i325.i.i
  %indvars.iv.i327.i.i = phi i64 [ 0, %.lr.ph.i325.i.i ], [ %indvars.iv.next.i328.i.i, %bb.db ] ; 2 uses
  %i.uo = shl nuw nsw i64 %indvars.iv.i327.i.i, 4
  %i.up = getelementptr inbounds nuw i8, ptr %0, i64 %i.uo ; 5 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 12
  %i.ur = load i8, ptr %i.uq, align 1
  %i.us = icmp eq i8 %i.ur, 109
  br i1 %i.us, label %bb.cy, label %bb.db

bb.cy:                                            ; preds = %bb.cx
  %i.ut = getelementptr inbounds nuw i8, ptr %i.up, i64 13
  %i.uu = load i8, ptr %i.ut, align 1
  %i.uv = icmp eq i8 %i.uu, 97
  br i1 %i.uv, label %bb.cz, label %bb.db

bb.cz:                                            ; preds = %bb.cy
  %i.uw = getelementptr inbounds nuw i8, ptr %i.up, i64 14
  %i.ux = load i8, ptr %i.uw, align 1
  %i.uy = icmp eq i8 %i.ux, 120
  br i1 %i.uy, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.uz = getelementptr inbounds nuw i8, ptr %i.up, i64 15
  %i.va = load i8, ptr %i.uz, align 1
  %i.vb = icmp eq i8 %i.va, 112
  br i1 %i.vb, label %stbtt__find_table.exit331.i.i, label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz, %bb.cy, %bb.cx
  %indvars.iv.next.i328.i.i = add nuw nsw i64 %indvars.iv.i327.i.i, 1 ; 2 uses
  %exitcond.not.i329.i.i = icmp eq i64 %indvars.iv.next.i328.i.i, %wide.trip.count.i326.i.i
  br i1 %exitcond.not.i329.i.i, label %stbtt__find_table.exit331.thread.i.i, label %bb.cx

stbtt__find_table.exit331.i.i:                    ; preds = %bb.da
  %i.vc = getelementptr inbounds nuw i8, ptr %i.up, i64 20
  %i.vd = load i32, ptr %i.vc, align 1            ; 2 uses
  %.not120.i.i = icmp eq i32 %i.vd, 0
  br i1 %.not120.i.i, label %stbtt__find_table.exit331.thread.i.i, label %bb.dc

bb.dc:                                            ; preds = %stbtt__find_table.exit331.i.i
  %i.ve = tail call i32 @llvm.bswap.i32(i32 %i.vd)
  %i.vf = zext i32 %i.ve to i64
  %i.vg = getelementptr inbounds nuw i8, ptr %0, i64 %i.vf ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 4
  %.val129.i.i = load i8, ptr %i.vh, align 1
  %i.vi = getelementptr i8, ptr %i.vg, i64 5
  %.val130.i.i = load i8, ptr %i.vi, align 1
  %i.vj = zext i8 %.val129.i.i to i32
  %i.vk = shl nuw nsw i32 %i.vj, 8
  %i.vl = zext i8 %.val130.i.i to i32
  %i.vm = or disjoint i32 %i.vk, %i.vl
  br label %stbtt__find_table.exit331.thread.i.i

stbtt__find_table.exit331.thread.i.i:             ; preds = %bb.db, %bb.dc, %stbtt__find_table.exit331.i.i, %bb.cw
  %.sink.i.i = phi i32 [ %i.vm, %bb.dc ], [ 65535, %stbtt__find_table.exit331.i.i ], [ 65535, %bb.cw ], [ 65535, %bb.db ]
  %i.vn = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i32 %.sink.i.i, ptr %i.vn, align 4
  %i.vo = getelementptr inbounds nuw i8, ptr %9, i64 52
  store i32 -1, ptr %i.vo, align 4
  %i.vp = zext i32 %.2.i333.i.i189194198208218234 to i64
  %i.vq = getelementptr inbounds nuw i8, ptr %0, i64 %i.vp ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 2
  %.val127.i.i = load i8, ptr %i.vr, align 1
  %i.vs = getelementptr i8, ptr %i.vq, i64 3
  %.val128.i.i = load i8, ptr %i.vs, align 1
  %i.vt = zext i8 %.val127.i.i to i32
  %i.vu = shl nuw nsw i32 %i.vt, 8
  %i.vv = zext i8 %.val128.i.i to i32
  %i.vw = or disjoint i32 %i.vu, %i.vv            ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %9, i64 56
  %.not397.i.i = icmp eq i32 %i.vw, 0
  br i1 %.not397.i.i, label %.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %stbtt__find_table.exit331.thread.i.i
  %i.vy = add i32 %.2.i333.i.i189194198208218234, 4
  %wide.trip.count.i.i = zext nneg i32 %i.vw to i64
  br label %bb.dd

bb.dd:                                            ; preds = %bb.df, %.lr.ph.i.i
  %i.vz = phi i32 [ 0, %.lr.ph.i.i ], [ %.val148, %bb.df ] ; 2 uses
  %i.wa = phi i32 [ 0, %.lr.ph.i.i ], [ %i.wu, %bb.df ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.df ] ; 2 uses
  %indvars.iv.tr.i.i = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.wb = shl nuw nsw i32 %indvars.iv.tr.i.i, 3
  %i.wc = add i32 %i.vy, %i.wb
  %i.wd = zext i32 %i.wc to i64
  %i.we = getelementptr inbounds nuw i8, ptr %0, i64 %i.wd ; 5 uses
  %.val125.i.i = load i8, ptr %i.we, align 1
  %i.wf = getelementptr i8, ptr %i.we, i64 1
  %.val126.i.i = load i8, ptr %i.wf, align 1
  %i.wg = zext i8 %.val125.i.i to i16
  %i.wh = shl nuw i16 %i.wg, 8
  %i.wi = zext i8 %.val126.i.i to i16
  %i.wj = or disjoint i16 %i.wh, %i.wi
  switch i16 %i.wj, label %bb.df [
    i16 3, label %bb.de
    i16 0, label %.sink.split.i.i
  ]

bb.de:                                            ; preds = %bb.dd
  %i.wk = getelementptr inbounds nuw i8, ptr %i.we, i64 2
  %.val123.i.i = load i8, ptr %i.wk, align 1
  %i.wl = getelementptr i8, ptr %i.we, i64 3
  %.val124.i.i = load i8, ptr %i.wl, align 1
  %i.wm = zext i8 %.val123.i.i to i16
  %i.wn = shl nuw i16 %i.wm, 8
  %i.wo = zext i8 %.val124.i.i to i16
  %i.wp = or disjoint i16 %i.wn, %i.wo
  switch i16 %i.wp, label %bb.df [
    i16 1, label %.sink.split.i.i
    i16 10, label %.sink.split.i.i
  ]

.sink.split.i.i:                                  ; preds = %bb.de, %bb.de, %bb.dd
  %i.wq = getelementptr inbounds nuw i8, ptr %i.we, i64 4
  %i.wr = load i32, ptr %i.wq, align 1
  %i.ws = tail call i32 @llvm.bswap.i32(i32 %i.wr)
  %i.wt = add i32 %i.ws, %.2.i333.i.i189194198208218234 ; 2 uses
  br label %bb.df

bb.df:                                            ; preds = %.sink.split.i.i, %bb.de, %bb.dd
  %.val148 = phi i32 [ %i.vz, %bb.de ], [ %i.vz, %bb.dd ], [ %i.wt, %.sink.split.i.i ] ; 2 uses
  %i.wu = phi i32 [ %i.wa, %bb.de ], [ %i.wa, %bb.dd ], [ %i.wt, %.sink.split.i.i ] ; 6 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.dd

._crit_edge.i.i:                                  ; preds = %bb.df
  store i32 %.val148, ptr %i.vx, align 8
  %i.wv = icmp eq i32 %i.wu, 0
  br i1 %i.wv, label %.thread, label %bb.dg

.critedge.i.i:                                    ; preds = %bb.bf, %bb.cu, %stbtt__cff_get_index.exit317.i.i, %stbtt__find_table.exit210.i.i, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  br label %.thread

bb.dg:                                            ; preds = %._crit_edge.i.i
  %i.ww = sext i32 %i.fn to i64
  %i.wx = getelementptr inbounds i8, ptr %0, i64 %i.ww ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 50
  %.val.i.i = load i8, ptr %i.wy, align 1
  %i.wz = getelementptr i8, ptr %i.wx, i64 51
  %.val122.i.i = load i8, ptr %i.wz, align 1
  %i.xa = zext i8 %.val.i.i to i32
  %i.xb = shl nuw nsw i32 %i.xa, 8
  %i.xc = zext i8 %.val122.i.i to i32
  %i.xd = or disjoint i32 %i.xb, %i.xc
  %i.xe = getelementptr inbounds nuw i8, ptr %9, i64 60
  store i32 %i.xd, ptr %i.xe, align 4
  %i.xf = sitofp i32 %2 to float
  %i.xg = sext i32 %.val144 to i64
  %i.xh = getelementptr inbounds i8, ptr %0, i64 %i.xg ; 6 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 4
  %.val6.i = load i8, ptr %i.xi, align 1
  %i.xj = getelementptr i8, ptr %i.xh, i64 5
  %.val7.i = load i8, ptr %i.xj, align 1
  %i.xk = zext i8 %.val6.i to i16
  %i.xl = shl nuw i16 %i.xk, 8
  %i.xm = zext i8 %.val7.i to i16
  %i.xn = or disjoint i16 %i.xl, %i.xm            ; 2 uses
  %i.xo = sext i16 %i.xn to i32
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xh, i64 6
  %.val.i = load i8, ptr %i.xp, align 1
  %i.xq = getelementptr i8, ptr %i.xh, i64 7
  %.val5.i = load i8, ptr %i.xq, align 1
  %i.xr = zext i8 %.val.i to i16
  %i.xs = shl nuw i16 %i.xr, 8
  %i.xt = zext i8 %.val5.i to i16
  %i.xu = or disjoint i16 %i.xs, %i.xt
  %i.xv = sext i16 %i.xu to i32
  %i.xw = sub nsw i32 %i.xo, %i.xv
  %i.xx = sitofp i32 %i.xw to float
  %i.xy = fdiv float %i.xf, %i.xx                 ; 21 uses
  %i.xz = icmp sgt i32 %4, 0
  %i.ya = select i1 %i.xz, i32 %4, i32 95         ; 4 uses
  %i.yb = icmp eq ptr %3, null                    ; 3 uses
  %i.yc = zext nneg i32 %i.ya to i64              ; 6 uses
  br i1 %i.yb, label %bb.dh, label %.loopexit250

bb.dh:                                            ; preds = %bb.dg
  %i.yd = shl nuw nsw i64 %i.yc, 2
  %i.ye = tail call noalias ptr @malloc(i64 noundef %i.yd) #42 ; 4 uses
  %min.iters.check = icmp samesign ult i32 %i.ya, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.dh
  %n.vec = and i64 %i.yc, 2147483640              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.yf = getelementptr inbounds nuw [4 x i8], ptr %i.ye, i64 %index ; 2 uses
  %i.yg = add <4 x i32> %vec.ind, splat (i32 32)
  %i.yh = add <4 x i32> %vec.ind, splat (i32 36)
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yf, i64 16
  store <4 x i32> %i.yg, ptr %i.yf, align 4
  store <4 x i32> %i.yh, ptr %i.yi, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.yj = icmp eq i64 %index.next, %n.vec
  br i1 %i.yj, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.yc
  br i1 %cmp.n, label %.loopexit250, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.dh, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %bb.dh ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.yk = getelementptr inbounds nuw [4 x i8], ptr %i.ye, i64 %indvars.iv
  %i.yl = trunc i64 %indvars.iv to i32
  %i.ym = add i32 %i.yl, 32
  store i32 %i.ym, ptr %i.yk, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.yc
  br i1 %exitcond.not, label %.loopexit250, label %scalar.ph, !llvm.loop !27

.loopexit250:                                     ; preds = %scalar.ph, %middle.block, %bb.dg
  %.0125 = phi ptr [ %3, %bb.dg ], [ %i.ye, %middle.block ], [ %i.ye, %scalar.ph ] ; 3 uses
  br label %bb.dj

bb.di:                                            ; preds = %bb.dj
  %i.yn = zext nneg i32 %spec.select to i64
  %i.yo = tail call noalias ptr @calloc(i64 noundef %i.yn, i64 noundef 40) #40 ; 4 uses
  %i.yp = fcmp une float %i.xy, 0.000000e+00      ; 2 uses
  %i.yq = fneg float %i.xy                        ; 6 uses
  %i.yr = fdiv float 3.500000e-01, %i.xy          ; 2 uses
  %i.ys = fmul float %i.yr, %i.yr                 ; 4 uses
  %10 = getelementptr inbounds nuw i8, ptr %i.xh, i64 34 ; 2 uses
  %11 = getelementptr i8, ptr %i.xh, i64 35       ; 2 uses
  %12 = sext i32 %.2.i179.i.i221231 to i64
  %13 = getelementptr inbounds i8, ptr %0, i64 %12 ; 4 uses
  %.not143 = icmp ne i32 %5, 2
  %i.yt = sitofp i16 %i.xn to float
  %i.yu = fmul float %i.xy, %i.yt
  %i.yv = fptosi float %i.yu to i32
  %i.yw = icmp eq i32 %5, 1
  %i.yx = insertelement <2 x float> poison, float %i.xy, i64 0
  %i.yy = insertelement <2 x float> %i.yx, float %i.yq, i64 1 ; 4 uses
  %i.yz = insertelement <4 x float> poison, float %i.xy, i64 0
  %i.za = insertelement <4 x float> %i.yz, float %i.yq, i64 1
  %i.zb = shufflevector <4 x float> %i.za, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  br label %bb.dl

bb.dj:                                            ; preds = %.loopexit250, %bb.dj
  %indvars.iv320 = phi i64 [ 0, %.loopexit250 ], [ %indvars.iv.next321, %bb.dj ] ; 2 uses
  %.0129281 = phi i32 [ 0, %.loopexit250 ], [ %spec.select, %bb.dj ]
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr %.0125, i64 %indvars.iv320
  %i.zd = load i32, ptr %i.zc, align 4
  %i.ze = tail call fastcc i32 @stbtt_FindGlyphIndex(ptr nonnull %0, i32 %i.wu, i32 noundef %i.zd)
  %i.zf = icmp sgt i32 %i.ze, 0
  %i.zg = zext i1 %i.zf to i32
  %spec.select = add nuw nsw i32 %.0129281, %i.zg ; 2 uses
  %indvars.iv.next321 = add nuw nsw i64 %indvars.iv320, 1 ; 2 uses
  %exitcond324.not = icmp eq i64 %indvars.iv.next321, %i.yc
  br i1 %exitcond324.not, label %bb.di, label %bb.dj

bb.dk:                                            ; preds = %bb.nx
  %i.zh = icmp slt i32 %.3, %i.ya
  br i1 %i.zh, label %.split, label %bb.ny

bb.dl:                                            ; preds = %bb.di, %bb.nx
  %indvars.iv330 = phi i64 [ 0, %bb.di ], [ %indvars.iv.next331, %bb.nx ] ; 2 uses
  %.0122285 = phi i32 [ 0, %bb.di ], [ %.1, %bb.nx ] ; 3 uses
  %.2284 = phi i32 [ 0, %bb.di ], [ %.3, %bb.nx ] ; 2 uses
  %i.zi = getelementptr inbounds nuw [4 x i8], ptr %.0125, i64 %indvars.iv330
  %.val146 = load i32, ptr %i.zi, align 4         ; 7 uses
  %i.zj = call fastcc i32 @stbtt_FindGlyphIndex(ptr %0, i32 %i.wu, i32 noundef %.val146) ; 5 uses
  %i.zk = icmp sgt i32 %i.zj, 0
  br i1 %i.zk, label %bb.dm, label %bb.nx

bb.dm:                                            ; preds = %bb.dl
  %i.zl = sext i32 %.0122285 to i64
  %i.zm = getelementptr inbounds [40 x i8], ptr %i.yo, i64 %i.zl ; 18 uses
  store i32 %.val146, ptr %i.zm, align 8
  switch i32 %5, label %bb.np [
    i32 0, label %bb.dn
    i32 1, label %bb.dn
    i32 2, label %bb.le
  ]

bb.dn:                                            ; preds = %bb.dm, %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #39
  %i.zn = call fastcc i32 @stbtt_GetGlyphShape(ptr noundef nonnull readonly %9, i32 noundef %i.zj, ptr noundef %i.m) ; 3 uses
  br i1 %i.yp, label %bb.do, label %stbtt_GetCodepointBitmap.exit

bb.do:                                            ; preds = %bb.dn
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zm, i64 8
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zm, i64 4
  call fastcc void @stbtt_GetGlyphBitmapBoxSubpixel(ptr noundef nonnull readonly %9, i32 noundef %i.zj, float noundef %i.xy, float noundef %i.xy, ptr noundef %i.i, ptr noundef %i.j, ptr noundef %i.k, ptr noundef %i.l)
  %i.zq = load i32, ptr %i.k, align 4             ; 2 uses
  %i.zr = load i32, ptr %i.i, align 4             ; 4 uses
  %i.zs = sub i32 %i.zq, %i.zr                    ; 13 uses
  %i.zt = load i32, ptr %i.l, align 4             ; 3 uses
  %i.zu = load i32, ptr %i.j, align 4             ; 5 uses
  %i.zv = sub i32 %i.zt, %i.zu                    ; 7 uses
  store i32 %i.zr, ptr %i.zp, align 4
  store i32 %i.zu, ptr %i.zo, align 8
  %i.zw = icmp ne i32 %i.zq, %i.zr
  %i.zx = icmp ne i32 %i.zt, %i.zu
  %or.cond.i.i.i = select i1 %i.zw, i1 %i.zx, i1 false
  br i1 %or.cond.i.i.i, label %bb.dp, label %stbtt_GetCodepointBitmap.exit

bb.dp:                                            ; preds = %bb.do
  %i.zy = mul nsw i32 %i.zv, %i.zs
  %i.zz = sext i32 %i.zy to i64
  %i.aaa = call noalias ptr @malloc(i64 noundef %i.zz) #42 ; 4 uses
  %.not40.i.i.i = icmp eq ptr %i.aaa, null
  br i1 %.not40.i.i.i, label %stbtt_GetCodepointBitmap.exit, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.aab = load ptr, ptr %i.m, align 8            ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #39
  %i.aac = icmp sgt i32 %i.zn, 0
  br i1 %i.aac, label %.lr.ph.preheader.i.i.i.i.i, label %stbtt_FlattenCurves.exit.thread.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.dq
  %wide.trip.count.i.i.i.i.i = zext nneg i32 %i.zn to i64 ; 5 uses
  %min.iters.check624 = icmp ult i32 %i.zn, 8
  br i1 %min.iters.check624, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph625

vector.ph625:                                     ; preds = %.lr.ph.preheader.i.i.i.i.i
  %n.vec626 = and i64 %wide.trip.count.i.i.i.i.i, 2147483640 ; 3 uses
  br label %vector.body627

vector.body627:                                   ; preds = %vector.body627, %vector.ph625
  %index628 = phi i64 [ 0, %vector.ph625 ], [ %index.next631, %vector.body627 ] ; 9 uses
  %vec.phi629 = phi <4 x i32> [ zeroinitializer, %vector.ph625 ], [ %i.abn, %vector.body627 ]
  %vec.phi630 = phi <4 x i32> [ zeroinitializer, %vector.ph625 ], [ %i.abo, %vector.body627 ]
  %i.aad = getelementptr inbounds nuw [14 x i8], ptr %i.aab, i64 %index628
  %i.aae = getelementptr inbounds nuw [14 x i8], ptr %i.aab, i64 %index628
  %i.aaf = getelementptr inbounds nuw [14 x i8], ptr %i.aab, i64 %index628
  %i.aag = getelementptr inbounds nuw [14 x i8], ptr %i.aab, i64 %index628
  %i.aah = getelementptr inbounds nuw [14 x i8], ptr %i.aab, i64 %index628
  %i.aai = getelementptr inbounds nuw [14 x i8], ptr %i.aab, i64 %index628
  %i.aaj = getelementptr inbounds nuw [14 x i8], ptr %i.aab, i64 %index628
  %i.aak = getelementptr inbounds nuw [14 x i8], ptr %i.aab, i64 %index628
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aad, i64 12
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aae, i64 26
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aaf, i64 40
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aag, i64 54
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aah, i64 68
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aai, i64 82
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaj, i64 96
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aak, i64 110
  %i.aat = load i8, ptr %i.aal, align 2
  %i.aau = load i8, ptr %i.aam, align 2
  %i.aav = load i8, ptr %i.aan, align 2
  %i.aaw = load i8, ptr %i.aao, align 2
  %i.aax = insertelement <4 x i8> poison, i8 %i.aat, i64 0
  %i.aay = insertelement <4 x i8> %i.aax, i8 %i.aau, i64 1
  %i.aaz = insertelement <4 x i8> %i.aay, i8 %i.aav, i64 2
  %i.aba = insertelement <4 x i8> %i.aaz, i8 %i.aaw, i64 3
  %i.abb = load i8, ptr %i.aap, align 2
  %i.abc = load i8, ptr %i.aaq, align 2
  %i.abd = load i8, ptr %i.aar, align 2
  %i.abe = load i8, ptr %i.aas, align 2
  %i.abf = insertelement <4 x i8> poison, i8 %i.abb, i64 0
  %i.abg = insertelement <4 x i8> %i.abf, i8 %i.abc, i64 1
  %i.abh = insertelement <4 x i8> %i.abg, i8 %i.abd, i64 2
  %i.abi = insertelement <4 x i8> %i.abh, i8 %i.abe, i64 3
  %i.abj = icmp eq <4 x i8> %i.aba, splat (i8 1)
  %i.abk = icmp eq <4 x i8> %i.abi, splat (i8 1)
  %i.abl = zext <4 x i1> %i.abj to <4 x i32>
  %i.abm = zext <4 x i1> %i.abk to <4 x i32>
  %i.abn = add <4 x i32> %vec.phi629, %i.abl      ; 2 uses
  %i.abo = add <4 x i32> %vec.phi630, %i.abm      ; 2 uses
  %index.next631 = add nuw i64 %index628, 8       ; 2 uses
  %i.abp = icmp eq i64 %index.next631, %n.vec626
  br i1 %i.abp, label %middle.block632, label %vector.body627, !llvm.loop !28

middle.block632:                                  ; preds = %vector.body627
  %bin.rdx633 = add <4 x i32> %i.abo, %i.abn
  %i.abq = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx633) ; 2 uses
  %cmp.n634 = icmp eq i64 %n.vec626, %wide.trip.count.i.i.i.i.i
  br i1 %cmp.n634, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.lr.ph.preheader.i.i.i.i.i, %middle.block632
  %indvars.iv.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i.i ], [ %n.vec626, %middle.block632 ]
  %.0948.i.i.i.i.i.ph = phi i32 [ 0, %.lr.ph.preheader.i.i.i.i.i ], [ %i.abq, %middle.block632 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0948.i.i.i.i.i = phi i32 [ %spec.select.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0948.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %i.abr = getelementptr inbounds nuw [14 x i8], ptr %i.aab, i64 %indvars.iv.i.i.i.i.i
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abr, i64 12
  %i.abt = load i8, ptr %i.abs, align 2
  %i.abu = icmp eq i8 %i.abt, 1
  %i.abv = zext i1 %i.abu to i32
  %spec.select.i.i.i.i.i = add nuw nsw i32 %.0948.i.i.i.i.i, %i.abv ; 2 uses
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, %wide.trip.count.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !29

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %middle.block632
  %spec.select.i.i.i.i.i.lcssa = phi i32 [ %i.abq, %middle.block632 ], [ %spec.select.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.abw = icmp eq i32 %spec.select.i.i.i.i.i.lcssa, 0
  br i1 %i.abw, label %stbtt_FlattenCurves.exit.thread.i.i.i.i, label %bb.dr

bb.dr:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.abx = zext nneg i32 %spec.select.i.i.i.i.i.lcssa to i64 ; 5 uses
  %i.aby = shl nuw nsw i64 %i.abx, 2
  %i.abz = call noalias ptr @malloc(i64 noundef %i.aby) #42 ; 10 uses
  %i.aca = icmp eq ptr %i.abz, null
  br i1 %i.aca, label %stbtt_FlattenCurves.exit.thread.i.i.i.i, label %.lr.ph15.us.i.i.i.i.i

.lr.ph15.us.i.i.i.i.i:                            ; preds = %bb.dr
  store i32 0, ptr %i.h, align 4
  br label %bb.ds

bb.ds:                                            ; preds = %stbtt__add_point.exit.us.i.i.i.i.i, %.lr.ph15.us.i.i.i.i.i
  %indvars.iv24.i.i.i.i.i = phi i64 [ 0, %.lr.ph15.us.i.i.i.i.i ], [ %indvars.iv.next25.i.i.i.i.i, %stbtt__add_point.exit.us.i.i.i.i.i ] ; 2 uses
  %.19311.us.i.i.i.i.i = phi i32 [ 0, %.lr.ph15.us.i.i.i.i.i ], [ %.2.us.i.i.i.i.i, %stbtt__add_point.exit.us.i.i.i.i.i ] ; 5 uses
  %.29610.us.i.i.i.i.i = phi i32 [ -1, %.lr.ph15.us.i.i.i.i.i ], [ %.397.us.i.i.i.i.i, %stbtt__add_point.exit.us.i.i.i.i.i ] ; 7 uses
  %i.acb = phi <2 x float> [ zeroinitializer, %.lr.ph15.us.i.i.i.i.i ], [ %i.adp, %stbtt__add_point.exit.us.i.i.i.i.i ] ; 5 uses
  %i.acc = getelementptr inbounds nuw [14 x i8], ptr %i.aab, i64 %indvars.iv24.i.i.i.i.i ; 7 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %i.acc, i64 12
  %i.ace = load i8, ptr %i.acd, align 2
  switch i8 %i.ace, label %stbtt__add_point.exit.us.i.i.i.i.i [
    i8 1, label %bb.dw
    i8 2, label %bb.dv
    i8 3, label %bb.du
    i8 4, label %bb.dt
  ]

bb.dt:                                            ; preds = %bb.ds
  %i.acf = getelementptr inbounds nuw i8, ptr %i.acc, i64 4
  %i.acg = load <4 x i16>, ptr %i.acf, align 2
  %i.ach = sitofp <4 x i16> %i.acg to <4 x float> ; 4 uses
  %i.aci = load <2 x i16>, ptr %i.acc, align 2
  %i.acj = sitofp <2 x i16> %i.aci to <2 x float> ; 3 uses
  %i.ack = extractelement <2 x float> %i.acj, i64 0
  %i.acl = extractelement <2 x float> %i.acj, i64 1
  %i.acm = extractelement <2 x float> %i.acb, i64 0
  %i.acn = extractelement <2 x float> %i.acb, i64 1
  %i.aco = extractelement <4 x float> %i.ach, i64 0
  %i.acp = extractelement <4 x float> %i.ach, i64 1
  %i.acq = extractelement <4 x float> %i.ach, i64 2
  %i.acr = extractelement <4 x float> %i.ach, i64 3
  call fastcc void @stbtt__tesselate_cubic(ptr noundef null, ptr noundef %i.h, float noundef %i.acm, float noundef %i.acn, float noundef %i.aco, float noundef %i.acp, float noundef %i.acq, float noundef %i.acr, float noundef %i.ack, float noundef %i.acl, float noundef %i.ys, i32 noundef 0)
  br label %stbtt__add_point.exit.us.i.i.i.i.i

bb.du:                                            ; preds = %bb.ds
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acc, i64 4
  %i.act = load <2 x i16>, ptr %i.acs, align 2
  %i.acu = sitofp <2 x i16> %i.act to <2 x float> ; 2 uses
  %i.acv = load <2 x i16>, ptr %i.acc, align 2
  %i.acw = sitofp <2 x i16> %i.acv to <2 x float> ; 3 uses
  %i.acx = extractelement <2 x float> %i.acw, i64 0
  %i.acy = extractelement <2 x float> %i.acw, i64 1
  %i.acz = extractelement <2 x float> %i.acb, i64 0
  %i.ada = extractelement <2 x float> %i.acb, i64 1
  %i.adb = extractelement <2 x float> %i.acu, i64 0
  %i.adc = extractelement <2 x float> %i.acu, i64 1
  call fastcc void @stbtt__tesselate_curve(ptr noundef null, ptr noundef %i.h, float noundef %i.acz, float noundef %i.ada, float noundef %i.adb, float noundef %i.adc, float noundef %i.acx, float noundef %i.acy, float noundef %i.ys, i32 noundef 0)
  br label %stbtt__add_point.exit.us.i.i.i.i.i

bb.dv:                                            ; preds = %bb.ds
  %i.add = load <2 x i16>, ptr %i.acc, align 2
  %i.ade = sitofp <2 x i16> %i.add to <2 x float>
  %i.adf = load i32, ptr %i.h, align 4
  %i.adg = add nsw i32 %i.adf, 1
  store i32 %i.adg, ptr %i.h, align 4
  br label %stbtt__add_point.exit.us.i.i.i.i.i

bb.dw:                                            ; preds = %bb.ds
  %i.adh = icmp sgt i32 %.29610.us.i.i.i.i.i, -1
  %.pre.i.i.i.i.i = load i32, ptr %i.h, align 4   ; 3 uses
  br i1 %i.adh, label %bb.dx, label %bb.dy

end_hunk_1
begin_hunk_2_@LoadFontData:bb.a
  %i.bmv = fsub float %i.aqc, %i.avd
  %i.bmw = fsub float %i.aqg, %i.avl
  %i.bmx = fmul float %i.bmv, %i.bmw
  %i.bmy = fsub float %i.aiu, %i.avl
  %i.bmz = fdiv float %i.bmx, %i.bmy
  %i.bna = fadd float %i.bmz, %i.avd
  br label %bb.ks

bb.ks:                                            ; preds = %bb.kr, %bb.kq
  %.055.i450.i.i.i.i.i.i.i = phi float [ %i.bna, %bb.kr ], [ %i.avd, %bb.kq ] ; 4 uses
  %.054.i451.i.i.i.i.i.i.i = phi float [ %i.aqg, %bb.kr ], [ %i.avl, %bb.kq ] ; 3 uses
  br i1 %i.aqm, label %bb.kt, label %bb.ku

bb.kt:                                            ; preds = %bb.ks
  %i.bnb = fsub float %i.aqc, %.055.i450.i.i.i.i.i.i.i
  %i.bnc = fmul float %i.auq, %i.bnb
  %i.bnd = fsub float %i.aiu, %.054.i451.i.i.i.i.i.i.i
  %i.bne = fdiv float %i.bnc, %i.bnd
  %i.bnf = fadd float %i.aqc, %i.bne
  br label %bb.ku

bb.ku:                                            ; preds = %bb.kt, %bb.ks
  %.053.i452.i.i.i.i.i.i.i = phi float [ %i.bnf, %bb.kt ], [ %i.aqc, %bb.ks ] ; 3 uses
  %.0.i453.i.i.i.i.i.i.i = phi float [ %i.aql, %bb.kt ], [ %i.aiu, %bb.ks ] ; 2 uses
  %i.bng = fcmp ugt float %.055.i450.i.i.i.i.i.i.i, %i.avb
  %i.bnh = fcmp ugt float %.053.i452.i.i.i.i.i.i.i, %i.avb
  %or.cond.i454.i.i.i.i.i.i.i = select i1 %i.bng, i1 true, i1 %i.bnh
  br i1 %or.cond.i454.i.i.i.i.i.i.i, label %bb.kw, label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  %i.bni = load float, ptr %i.auj, align 4
  %i.bnj = fsub float %.0.i453.i.i.i.i.i.i.i, %.054.i451.i.i.i.i.i.i.i
  %i.bnk = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.bnl = load float, ptr %i.bnk, align 4
  %i.bnm = call float @llvm.fmuladd.f32(float %i.bni, float %i.bnj, float %i.bnl)
  store float %i.bnm, ptr %i.bnk, align 4
  br label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

bb.kw:                                            ; preds = %bb.ku
  %i.bnn = fcmp ult float %.055.i450.i.i.i.i.i.i.i, %i.avd
  %i.bno = fcmp ult float %.053.i452.i.i.i.i.i.i.i, %i.avd
  %or.cond62.i455.i.i.i.i.i.i.i = select i1 %i.bnn, i1 true, i1 %i.bno
  br i1 %or.cond62.i455.i.i.i.i.i.i.i, label %bb.kx, label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

bb.kx:                                            ; preds = %bb.kw
  %i.bnp = load float, ptr %i.auj, align 4
  %i.bnq = fsub float %.0.i453.i.i.i.i.i.i.i, %.054.i451.i.i.i.i.i.i.i
  %i.bnr = fmul float %i.bnq, %i.bnp
  %i.bns = fsub float %.055.i450.i.i.i.i.i.i.i, %i.avb
  %i.bnt = fsub float %.053.i452.i.i.i.i.i.i.i, %i.avb
  %i.bnu = fadd float %i.bns, %i.bnt
  %i.bnv = fmul float %i.bnu, 5.000000e-01
  %i.bnw = fsub float 1.000000e+00, %i.bnv
  %i.bnx = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.bny = load float, ptr %i.bnx, align 4
  %i.bnz = call float @llvm.fmuladd.f32(float %i.bnr, float %i.bnw, float %i.bny)
  store float %i.bnz, ptr %i.bnx, align 4
  br label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

bb.ky:                                            ; preds = %bb.ki
  br i1 %or.cond36.i.i.i.i.i.i, label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  %i.boa = fcmp ugt float %.055.i457.i.i.i.i.i.i.i, %i.avb
  %i.bob = fcmp ugt float %.053.i459.i.i.i.i.i.i.i, %i.avb
  %or.cond.i461.i.i.i.i.i.i.i = select i1 %i.boa, i1 true, i1 %i.bob
  br i1 %or.cond.i461.i.i.i.i.i.i.i, label %bb.lb, label %bb.la

bb.la:                                            ; preds = %bb.kz
  %i.boc = load float, ptr %i.auj, align 4
  %i.bod = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.boe = load float, ptr %i.bod, align 4
  %i.bof = call float @llvm.fmuladd.f32(float %i.boc, float %i.auv, float %i.boe)
  store float %i.bof, ptr %i.bod, align 4
  br label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

bb.lb:                                            ; preds = %bb.kz
  %i.bog = fcmp ult float %.055.i457.i.i.i.i.i.i.i, %i.avd
  %i.boh = fcmp ult float %.053.i459.i.i.i.i.i.i.i, %i.avd
  %or.cond62.i462.i.i.i.i.i.i.i = select i1 %i.bog, i1 true, i1 %i.boh
  br i1 %or.cond62.i462.i.i.i.i.i.i.i, label %bb.lc, label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

bb.lc:                                            ; preds = %bb.lb
  %i.boi = load float, ptr %i.auj, align 4
  %i.boj = fmul float %i.auv, %i.boi
  %i.bok = fsub float %.055.i457.i.i.i.i.i.i.i, %i.avb
  %i.bol = fsub float %.053.i459.i.i.i.i.i.i.i, %i.avb
  %i.bom = fadd float %i.bok, %i.bol
  %i.bon = fmul float %i.bom, 5.000000e-01
  %i.boo = fsub float 1.000000e+00, %i.bon
  %i.bop = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.boq = load float, ptr %i.bop, align 4
  %i.bor = call float @llvm.fmuladd.f32(float %i.boj, float %i.boo, float %i.boq)
  store float %i.bor, ptr %i.bop, align 4
  br label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i: ; preds = %bb.lc, %bb.lb, %bb.la, %bb.ky, %bb.kx, %bb.kw, %bb.kv, %stbtt__handle_clipped_edge.exit449.i.i.i.i.i.i.i, %bb.kh, %bb.kg, %bb.kf, %stbtt__handle_clipped_edge.exit435.i.i.i.i.i.i.i, %bb.jr, %bb.jq, %bb.jp, %stbtt__handle_clipped_edge.exit421.i.i.i.i.i.i.i, %bb.jb, %bb.ja, %bb.iz, %stbtt__handle_clipped_edge.exit407.i.i.i.i.i.i.i, %bb.il, %bb.ik, %bb.ij, %stbtt__handle_clipped_edge.exit393.i.i.i.i.i.i.i, %bb.hn, %bb.hm, %bb.hl, %stbtt__handle_clipped_edge.exit372.i.i.i.i.i.i.i
  %exitcond.not.i.i97.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i96.i.i.i.i.i, %wide.trip.count.i.i92.i.i.i.i.i
  br i1 %exitcond.not.i.i97.i.i.i.i.i, label %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i, label %bb.gq

stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i: ; preds = %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i, %bb.gp, %._crit_edge.i.i.i.i.i.i.i, %bb.gl, %bb.gh, %bb.gg, %bb.gf, %bb.fz, %bb.fy, %bb.fx, %bb.fw, %bb.fv, %bb.fu, %bb.fg, %bb.ff, %bb.fe, %bb.fc
  %i.bos = load ptr, ptr %.0293468.i.i.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i93.i.i.i.i.i = icmp eq ptr %i.bos, null
  br i1 %.not.i.i93.i.i.i.i.i, label %stbtt__fill_active_edges_new.exit.i.i.i.i.i.i, label %bb.fb

stbtt__fill_active_edges_new.exit.i.i.i.i.i.i:    ; preds = %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i
  br i1 %i.air, label %.lr.ph52.i.i.i.preheader.i.i.i, label %.preheader.i.i.i.i.i.i

.lr.ph52.i.i.i.preheader.i.i.i:                   ; preds = %stbtt__fill_active_edges_new.exit.i.i.i.i.i.i
  %i.bot = mul nuw nsw i32 %.07660.i.i.i.i.i.i, %i.zs
  br label %.lr.ph52.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.lr.ph52.i.i.i.i.i.i, %stbtt__fill_active_edges_new.exit.i.i.i.i.i.i
  br i1 %.not91.i.i.i.i.i.i, label %._crit_edge56.i.i.i.i.i.i, label %.lr.ph55.i.i.i.i.i.i

.lr.ph52.i.i.i.i.i.i:                             ; preds = %.lr.ph52.i.i.i.i.i.i, %.lr.ph52.i.i.i.preheader.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i, %.lr.ph52.i.i.i.i.i.i ], [ 0, %.lr.ph52.i.i.i.preheader.i.i.i ] ; 4 uses
  %.07751.i.i.i.i.i.i = phi float [ %i.bow, %.lr.ph52.i.i.i.i.i.i ], [ 0.000000e+00, %.lr.ph52.i.i.i.preheader.i.i.i ]
  %i.bou = getelementptr inbounds nuw [4 x i8], ptr %i.aid, i64 %indvars.iv.i.i.i.i.i.i
  %i.bov = load float, ptr %i.bou, align 4
  %i.bow = fadd float %.07751.i.i.i.i.i.i, %i.bov ; 2 uses
  %i.box = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i.i.i.i.i
  %i.boy = load float, ptr %i.box, align 4
  %i.boz = fadd float %i.boy, %i.bow
  %i.bpa = call float @llvm.fabs.f32(float %i.boz)
  %i.bpb = call float @llvm.fmuladd.f32(float %i.bpa, float 2.550000e+02, float 5.000000e-01)
  %i.bpc = fptosi float %i.bpb to i32
  %spec.store.select.i.i.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.bpc, i32 255)
  %i.bpd = trunc nuw i32 %spec.store.select.i.i.i.i.i.i to i8
  %i.bpe = trunc nuw nsw i64 %indvars.iv.i.i.i.i.i.i to i32
  %i.bpf = add nsw i32 %i.bot, %i.bpe
  %i.bpg = sext i32 %i.bpf to i64
  %i.bph = getelementptr inbounds i8, ptr %i.aaa, i64 %i.bpg
  store i8 %i.bpd, ptr %i.bph, align 1
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i153 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %i.aic
  br i1 %exitcond.not.i.i.i153, label %.preheader.i.i.i.i.i.i, label %.lr.ph52.i.i.i.i.i.i

.lr.ph55.i.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.i, %.lr.ph55.i.i.i.i.i.i
  %i.bpi = phi ptr [ %i.bpn, %.lr.ph55.i.i.i.i.i.i ], [ %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0.82.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ]
  %.254.i.i.i.i.i.i = phi ptr [ %i.bpm, %.lr.ph55.i.i.i.i.i.i ], [ %i.f, %.preheader.i.i.i.i.i.i ]
  %i.bpj = getelementptr inbounds nuw i8, ptr %i.bpi, i64 8 ; 2 uses
  %i.bpk = load <2 x float>, ptr %i.bpj, align 8
  %i.bpl = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bpk)
  store float %i.bpl, ptr %i.bpj, align 8
  %i.bpm = load ptr, ptr %.254.i.i.i.i.i.i, align 8 ; 2 uses
  %i.bpn = load ptr, ptr %i.bpm, align 8          ; 2 uses
  %.not92.i.i.i.i.i.i = icmp eq ptr %i.bpn, null
  br i1 %.not92.i.i.i.i.i.i, label %._crit_edge56.i.i.i.i.i.i, label %.lr.ph55.i.i.i.i.i.i

._crit_edge56.i.i.i.i.i.i:                        ; preds = %.lr.ph55.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i
  %i.bpo = add nsw i32 %.07561.i.i.i.i.i.i, 1
  %i.bpp = add nuw nsw i32 %.07660.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond61.not.i.i.i = icmp eq i32 %i.bpp, %i.zv
  br i1 %exitcond61.not.i.i.i, label %._crit_edge65.i.i.i.i.i.i, label %bb.eo

._crit_edge65.i.i.i.i.i.i:                        ; preds = %._crit_edge56.i.i.i.i.i.i
  %.not1.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.1.lcssa.i.i.i.i.i.i, null
  br i1 %.not1.i.i.i.i.i.i.i, label %stbtt__hheap_cleanup.exit.i.i.i.i.i.i, label %.lr.ph.i94.i.i.i.i.i.i

.lr.ph.i94.i.i.i.i.i.i:                           ; preds = %._crit_edge65.i.i.i.i.i.i, %.lr.ph.i94.i.i.i.i.i.i
  %.02.i.i.i.i.i.i.i = phi ptr [ %i.bpq, %.lr.ph.i94.i.i.i.i.i.i ], [ %.sroa.0.1.lcssa.i.i.i.i.i.i, %._crit_edge65.i.i.i.i.i.i ] ; 2 uses
  %i.bpq = load ptr, ptr %.02.i.i.i.i.i.i.i, align 8 ; 2 uses
  call void @free(ptr noundef nonnull %.02.i.i.i.i.i.i.i) #39
  %.not.i95.i.i.i.i.i.i = icmp eq ptr %i.bpq, null
  br i1 %.not.i95.i.i.i.i.i.i, label %stbtt__hheap_cleanup.exit.i.i.i.i.i.i, label %.lr.ph.i94.i.i.i.i.i.i

stbtt__hheap_cleanup.exit.i.i.i.i.i.i:            ; preds = %.lr.ph.i94.i.i.i.i.i.i, %._crit_edge65.i.i.i.i.i.i, %bb.en
  %.not.i.i.i.i.i.i = icmp eq ptr %.080.i.i.i.i.i.i, %i.g
  br i1 %.not.i.i.i.i.i.i, label %stbtt__rasterize_sorted_edges.exit.i.i.i.i.i, label %bb.ld

bb.ld:                                            ; preds = %stbtt__hheap_cleanup.exit.i.i.i.i.i.i
  call void @free(ptr noundef %.080.i.i.i.i.i.i) #39
  br label %stbtt__rasterize_sorted_edges.exit.i.i.i.i.i

stbtt__rasterize_sorted_edges.exit.i.i.i.i.i:     ; preds = %bb.ld, %stbtt__hheap_cleanup.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @free(ptr noundef %i.agh) #39
  br label %stbtt__rasterize.exit.i.i.i.i

stbtt__rasterize.exit.i.i.i.i:                    ; preds = %stbtt__rasterize_sorted_edges.exit.i.i.i.i.i, %._crit_edge.i27.i.i.i.i
  call void @free(ptr noundef %i.abz) #39
  call void @free(ptr noundef %i.adw) #39
  br label %stbtt_GetCodepointBitmap.exit

stbtt_GetCodepointBitmap.exit:                    ; preds = %bb.do, %bb.dp, %stbtt_FlattenCurves.exit.thread.i.i.i.i, %stbtt__rasterize.exit.i.i.i.i, %bb.dn
  %.1185 = phi i32 [ 0, %bb.dn ], [ %i.zs, %stbtt__rasterize.exit.i.i.i.i ], [ %i.zs, %stbtt_FlattenCurves.exit.thread.i.i.i.i ], [ %i.zs, %bb.dp ], [ %i.zs, %bb.do ]
  %.1182 = phi i32 [ 0, %bb.dn ], [ %i.zv, %stbtt__rasterize.exit.i.i.i.i ], [ %i.zv, %stbtt_FlattenCurves.exit.thread.i.i.i.i ], [ %i.zv, %bb.dp ], [ %i.zv, %bb.do ]
  %.0.i.i.i151 = phi ptr [ null, %bb.dn ], [ %i.aaa, %stbtt__rasterize.exit.i.i.i.i ], [ %i.aaa, %stbtt_FlattenCurves.exit.thread.i.i.i.i ], [ null, %bb.dp ], [ null, %bb.do ]
  %i.bpr = load ptr, ptr %i.m, align 8
  call void @free(ptr noundef %i.bpr) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #39
  br label %.sink.split

bb.le:                                            ; preds = %bb.dm
  %.not141 = icmp eq i32 %.val146, 32
  br i1 %.not141, label %bb.np, label %bb.lf

bb.lf:                                            ; preds = %bb.le
  %i.bps = getelementptr inbounds nuw i8, ptr %i.zm, i64 4
  %i.bpt = getelementptr inbounds nuw i8, ptr %i.zm, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #39
  br i1 %i.yp, label %bb.lg, label %stbtt_GetCodepointSDF.exit

bb.lg:                                            ; preds = %bb.lf
  call fastcc void @stbtt_GetGlyphBitmapBoxSubpixel(ptr noundef nonnull readonly %9, i32 noundef %i.zj, float noundef %i.xy, float noundef %i.xy, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d)
  %i.bpu = load i32, ptr %i.a, align 4            ; 4 uses
  %i.bpv = load i32, ptr %i.c, align 4            ; 9 uses
  %i.bpw = icmp eq i32 %i.bpu, %i.bpv
  br i1 %i.bpw, label %stbtt_GetCodepointSDF.exit, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %i.bpx = load i32, ptr %i.b, align 4            ; 2 uses
  %i.bpy = load i32, ptr %i.d, align 4            ; 2 uses
  %i.bpz = icmp eq i32 %i.bpx, %i.bpy
  br i1 %i.bpz, label %stbtt_GetCodepointSDF.exit, label %bb.li

bb.li:                                            ; preds = %bb.lh
  %i.bqa = add i32 %i.bpu, -4                     ; 4 uses
  %i.bqb = add i32 %i.bpx, -4                     ; 7 uses
  %i.bqc = add i32 %i.bpv, 4                      ; 6 uses
  %i.bqd = add i32 %i.bpy, 4                      ; 4 uses
  %i.bqe = sub i32 %i.bqc, %i.bqa                 ; 4 uses
  %i.bqf = sub nsw i32 %i.bqd, %i.bqb             ; 2 uses
  store i32 %i.bqa, ptr %i.bps, align 4
  store i32 %i.bqb, ptr %i.bpt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #39
  %i.bqg = call fastcc i32 @stbtt_GetGlyphShape(ptr noundef nonnull readonly %9, i32 noundef %i.zj, ptr noundef %i.e) ; 5 uses
  %i.bqh = mul nsw i32 %i.bqf, %i.bqe
  %i.bqi = sext i32 %i.bqh to i64
  %i.bqj = call noalias ptr @malloc(i64 noundef %i.bqi) #42 ; 23 uses
  %i.bqk = sext i32 %i.bqg to i64
  %i.bql = shl nsw i64 %i.bqk, 2
  %i.bqm = call noalias ptr @malloc(i64 noundef %i.bql) #42 ; 4 uses
  %i.bqn = icmp sgt i32 %i.bqg, 0                 ; 2 uses
  %.pre.pre.i.i = load ptr, ptr %i.e, align 8     ; 6 uses
  br i1 %i.bqn, label %.lr.ph.i.i157, label %.preheader480.i.i

.lr.ph.i.i157:                                    ; preds = %bb.li
  %i.bqo = add nsw i32 %i.bqg, -1
  %wide.trip.count.i.i158 = zext nneg i32 %i.bqg to i64
  %i.bqp = zext nneg i32 %i.bqo to i64
  br label %bb.nk

.preheader480.i.i:                                ; preds = %bb.no, %bb.li
  %i.bqq = icmp slt i32 %i.bqb, %i.bqd
  br i1 %i.bqq, label %.preheader.lr.ph.i.i, label %._crit_edge490.split.i.i

.preheader.lr.ph.i.i:                             ; preds = %.preheader480.i.i
  %i.bqr = icmp slt i32 %i.bqa, %i.bqc
  %wide.trip.count.i.i.i156 = zext i32 %i.bqg to i64 ; 2 uses
  br i1 %i.bqr, label %.preheader.preheader.i.i, label %._crit_edge490.split.i.i

.preheader.preheader.i.i:                         ; preds = %.preheader.lr.ph.i.i
  %i.bqs = zext i32 %i.bqa to i64                 ; 10 uses
  %reass.sub.i.i = sub i32 4, %i.bpu              ; 2 uses
  br i1 %i.bqn, label %.preheader.i.us.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %.preheader.preheader.i.i
  %i.bqt = add i32 %i.bpv, 7
  %i.bqu = sub i32 %i.bqt, %i.bpu                 ; 8 uses
  %i.bqv = zext i32 %i.bqu to i64
  %i.bqw = add nuw nsw i64 %i.bqv, 1              ; 15 uses
  %i.bqx = add i32 %i.bpv, 3
  %i.bqy = add i32 %i.bpv, 3
  %i.bqz = add i32 %i.bpv, 3
  %min.iters.check664.a = icmp ult i32 %i.bqu, 7
  %min.iters.check692 = icmp ult i32 %i.bqu, 31
  %i.bra = and i64 %i.bqw, 24
  %n.vec694 = and i64 %i.bqw, 8589934560          ; 4 uses
  %i.brb = add nuw nsw i64 %n.vec694, %i.bqs
  %cmp.n699 = icmp eq i64 %i.bqw, %n.vec694
  %min.epilog.iters.check705 = icmp eq i64 %i.bra, 0
  %n.vec707 = and i64 %i.bqw, 8589934584          ; 3 uses
  %i.brc = add nuw nsw i64 %n.vec707, %i.bqs
  %cmp.n712 = icmp eq i64 %i.bqw, %n.vec707
  %min.iters.check666 = icmp ult i32 %i.bqu, 31
  %i.brd = and i64 %i.bqw, 24
  %n.vec668 = and i64 %i.bqw, 8589934560          ; 4 uses
  %i.bre = add nuw nsw i64 %n.vec668, %i.bqs
  %cmp.n673 = icmp eq i64 %i.bqw, %n.vec668
  %min.epilog.iters.check679 = icmp eq i64 %i.brd, 0
  %n.vec681 = and i64 %i.bqw, 8589934584          ; 3 uses
  %i.brf = add nuw nsw i64 %n.vec681, %i.bqs
  %cmp.n686 = icmp eq i64 %i.bqw, %n.vec681
  %min.iters.check638.a = icmp ult i32 %i.bqu, 7
  %min.iters.check640 = icmp ult i32 %i.bqu, 31
  %i.brg = and i64 %i.bqw, 24
  %n.vec642 = and i64 %i.bqw, 8589934560          ; 4 uses
  %i.brh = add nuw nsw i64 %n.vec642, %i.bqs
  %cmp.n647 = icmp eq i64 %i.bqw, %n.vec642
  %min.epilog.iters.check653 = icmp eq i64 %i.brg, 0
  %n.vec655 = and i64 %i.bqw, 8589934584          ; 3 uses
  %i.bri = add nuw nsw i64 %n.vec655, %i.bqs
  %cmp.n660 = icmp eq i64 %i.bqw, %n.vec655
  br label %.preheader.i.i

.preheader.i.us.i:                                ; preds = %.preheader.preheader.i.i, %._crit_edge488.i.split.us.us.i
  %.0435489.i.us.i = phi i32 [ %i.cjf, %._crit_edge488.i.split.us.us.i ], [ %i.bqb, %.preheader.preheader.i.i ] ; 3 uses
  %i.brj = sitofp i32 %.0435489.i.us.i to float
  %i.brk = fadd float %i.brj, 5.000000e-01        ; 8 uses
  %i.brl = fdiv float %i.brk, %i.yq               ; 4 uses
  %i.brm = fpext float %i.brl to double
  %i.brn = fadd float %i.brl, f0xBC23D70A
  %i.bro = fadd float %i.brl, f0x3C23D70A
  %i.brp = sub nsw i32 %.0435489.i.us.i, %i.bqb
  %i.brq = mul nuw nsw i32 %i.brp, %i.bqe
  %.reass.i.us.i = add i32 %i.brq, %reass.sub.i.i
  br label %bb.lj

bb.lj:                                            ; preds = %bb.nj, %.preheader.i.us.i
  %indvars.iv497.i.us.us.i = phi i64 [ %i.bqs, %.preheader.i.us.i ], [ %indvars.iv.next498.i.us.us.i, %bb.nj ] ; 2 uses
  %i.brr = trunc i64 %indvars.iv497.i.us.us.i to i32 ; 2 uses
  %i.brs = sitofp i32 %i.brr to float
  %i.brt = fadd float %i.brs, 5.000000e-01        ; 8 uses
  %i.bru = fdiv float %i.brt, %i.xy               ; 7 uses
  %i.brv = call double @fmod(double noundef %i.brm, double noundef 1.000000e+00) #39 ; 2 uses
  %i.brw = fcmp olt double %i.brv, f0x3F847AE130000000
  br i1 %i.brw, label %.lr.ph.i.i.us.us.i, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  %i.brx = fcmp ogt double %i.brv, f0x3FEFAE1490000000
  br i1 %i.brx, label %bb.ll, label %.lr.ph.i.i.us.us.i

bb.ll:                                            ; preds = %bb.lk
  br label %.lr.ph.i.i.us.us.i

.lr.ph.i.i.us.us.i:                               ; preds = %bb.ll, %bb.lk, %bb.lj
  %.0150.i.i.us.us.i = phi float [ %i.brl, %bb.lk ], [ %i.brn, %bb.ll ], [ %i.bro, %bb.lj ] ; 10 uses
  %i.bry = fmul float %i.bru, 0.000000e+00
  %i.brz = fmul float %.0150.i.i.us.us.i, 0.000000e+00
  %i.bsa = fadd float %i.bru, %i.brz
  %i.bsb = fsub float %i.bry, %.0150.i.i.us.us.i
  br label %bb.lm

bb.lm:                                            ; preds = %.thread.i.i.us.us.i, %.lr.ph.i.i.us.us.i
  %indvars.iv.i.i.us.us.i = phi i64 [ 0, %.lr.ph.i.i.us.us.i ], [ %indvars.iv.next.i.i.us.us.i, %.thread.i.i.us.us.i ] ; 2 uses
  %.0197.i.i.us.us.i = phi i32 [ 0, %.lr.ph.i.i.us.us.i ], [ %.9.i.fr.i.us.us.i, %.thread.i.i.us.us.i ] ; 11 uses
  %i.bsc = getelementptr inbounds nuw [14 x i8], ptr %.pre.pre.i.i, i64 %indvars.iv.i.i.us.us.i ; 11 uses
  %i.bsd = getelementptr inbounds nuw i8, ptr %i.bsc, i64 12
  %i.bse = load i8, ptr %i.bsd, align 2
  switch i8 %i.bse, label %.thread.i.i.us.us.i [
    i8 2, label %bb.mb
    i8 3, label %bb.ln
  ]

bb.ln:                                            ; preds = %bb.lm
  %i.bsf = getelementptr i8, ptr %i.bsc, i64 -14  ; 2 uses
  %i.bsg = getelementptr i8, ptr %i.bsc, i64 -12
  %i.bsh = getelementptr inbounds nuw i8, ptr %i.bsc, i64 4
  %i.bsi = load i16, ptr %i.bsh, align 2          ; 2 uses
  %i.bsj = getelementptr inbounds nuw i8, ptr %i.bsc, i64 6
  %i.bsk = load i16, ptr %i.bsj, align 2          ; 3 uses
  %i.bsl = getelementptr inbounds nuw i8, ptr %i.bsc, i64 2
  %i.bsm = load i16, ptr %i.bsg, align 2          ; 6 uses
  %i.bsn = load i16, ptr %i.bsf, align 2          ; 2 uses
  %i.bso = sext i16 %i.bsm to i32
  %i.bsp = load i16, ptr %i.bsl, align 2          ; 6 uses
  %i.bsq = load i16, ptr %i.bsc, align 2          ; 2 uses
  %i.bsr = call i16 @llvm.smin.i16(i16 %i.bsi, i16 %i.bsq)
  %..i.i.us.us.i = call i16 @llvm.smin.i16(i16 %i.bsr, i16 %i.bsn)
  %i.bss = call i16 @llvm.smin.i16(i16 %i.bsk, i16 %i.bsp)
  %i.bst = call i16 @llvm.smin.i16(i16 %i.bsm, i16 %i.bss)
  %i.bsu = call i16 @llvm.smax.i16(i16 %i.bsk, i16 %i.bsp)
  %i.bsv = call i16 @llvm.smax.i16(i16 %i.bsm, i16 %i.bsu)
  %i.bsw = sitofp i16 %i.bst to float
  %i.bsx = fcmp ogt float %.0150.i.i.us.us.i, %i.bsw
  %i.bsy = sitofp i16 %i.bsv to float
  %i.bsz = fcmp olt float %.0150.i.i.us.us.i, %i.bsy
  %or.cond162.i.i.us.us.i = and i1 %i.bsx, %i.bsz
  %i.bta = sitofp i16 %..i.i.us.us.i to float
  %i.btb = fcmp ogt float %i.bru, %i.bta
  %or.cond164.i.i.us.us.i = select i1 %or.cond162.i.i.us.us.i, i1 %i.btb, i1 false
  br i1 %or.cond164.i.i.us.us.i, label %bb.lo, label %.thread.i.i.us.us.i

bb.lo:                                            ; preds = %bb.ln
  %i.btc = load <2 x i16>, ptr %i.bsc, align 2    ; 2 uses
  %i.btd = load <2 x i16>, ptr %i.bsf, align 2    ; 2 uses
  %i.bte = shufflevector <2 x i16> %i.btc, <2 x i16> %i.btd, <2 x i32> <i32 0, i32 2>
  %i.btf = sitofp <2 x i16> %i.bte to <2 x float> ; 3 uses
  %i.btg = shufflevector <2 x i16> %i.btc, <2 x i16> %i.btd, <2 x i32> <i32 1, i32 3>
  %i.bth = sitofp <2 x i16> %i.btg to <2 x float> ; 3 uses
  %i.bti = sitofp i16 %i.bsi to float             ; 4 uses
  %i.btj = sitofp i16 %i.bsk to float             ; 4 uses
  %i.btk = extractelement <2 x float> %i.btf, i64 1 ; 3 uses
  %i.btl = fcmp une float %i.btk, %i.bti
  %i.btm = extractelement <2 x float> %i.bth, i64 1 ; 3 uses
  %i.btn = fcmp une float %i.btm, %i.btj
  %narrow.i.not.i.i.us.us.i = or i1 %i.btl, %i.btn
  br i1 %narrow.i.not.i.i.us.us.i, label %bb.lp, label %bb.lq

bb.lp:                                            ; preds = %bb.lo
  %i.bto = extractelement <2 x float> %i.btf, i64 0 ; 2 uses
end_hunk_2
begin_hunk_3_@LoadFontData:bb.a
  %i.cnk = trunc i64 %indvars.iv497.i.i.ph to i32 ; 2 uses
  %i.cnl = sub i32 %i.bpv, %i.cnk
  %i.cnm = sub i32 %i.bqx, %i.cnk
  %xtraiter805 = and i32 %i.cnl, 3                ; 2 uses
  %lcmp.mod806.not = icmp eq i32 %xtraiter805, 0
  br i1 %lcmp.mod806.not, label %._crit_edge.thread.i.i.prol.loopexit, label %._crit_edge.thread.i.i.prol

._crit_edge.thread.i.i.prol:                      ; preds = %._crit_edge.thread.i.i.preheader, %._crit_edge.thread.i.i.prol
  %indvars.iv497.i.i.prol = phi i64 [ %indvars.iv.next498.i.i.prol, %._crit_edge.thread.i.i.prol ], [ %indvars.iv497.i.i.ph, %._crit_edge.thread.i.i.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %._crit_edge.thread.i.i.prol ], [ 0, %._crit_edge.thread.i.i.preheader ]
  %i.cnn = trunc i64 %indvars.iv497.i.i.prol to i32
  %i.cno = add i32 %.reass.i.i, %i.cnn
  %i.cnp = sext i32 %i.cno to i64
  %i.cnq = getelementptr inbounds i8, ptr %i.bqj, i64 %i.cnp
  store i8 0, ptr %i.cnq, align 1
  %indvars.iv.next498.i.i.prol = add nuw nsw i64 %indvars.iv497.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter805
  br i1 %prol.iter.cmp.not, label %._crit_edge.thread.i.i.prol.loopexit, label %._crit_edge.thread.i.i.prol, !llvm.loop !38

._crit_edge.thread.i.i.prol.loopexit:             ; preds = %._crit_edge.thread.i.i.prol, %._crit_edge.thread.i.i.preheader
  %indvars.iv497.i.i.unr = phi i64 [ %indvars.iv497.i.i.ph, %._crit_edge.thread.i.i.preheader ], [ %indvars.iv.next498.i.i.prol, %._crit_edge.thread.i.i.prol ]
  %i.cnr = icmp ult i32 %i.cnm, 3
  br i1 %i.cnr, label %._crit_edge488.i.split.i, label %._crit_edge.thread.i.i.preheader.new

._crit_edge.thread.i.i.preheader.new:             ; preds = %._crit_edge.thread.i.i.prol.loopexit
  %invariant.op = add i32 1, %.reass.i.i
  %invariant.op852 = add i32 2, %.reass.i.i
  %invariant.op854 = add i32 3, %.reass.i.i
  br label %._crit_edge.thread.i.i

iter.check676:                                    ; preds = %.preheader.i.split.split.i
  br i1 %or.cond719, label %._crit_edge.thread.i.us17.i.preheader, label %vector.main.loop.iter.check665

vector.main.loop.iter.check665:                   ; preds = %iter.check676
  br i1 %min.iters.check666, label %vec.epilog.ph680, label %vector.body669

vector.body669:                                   ; preds = %vector.main.loop.iter.check665, %vector.body669
  %index670 = phi i64 [ %index.next671, %vector.body669 ], [ 0, %vector.main.loop.iter.check665 ] ; 2 uses
  %i.cns = trunc i64 %index670 to i32
  %i.cnt = add i32 %i.cll, %i.cns
  %i.cnu = sext i32 %i.cnt to i64
  %i.cnv = getelementptr inbounds i8, ptr %i.bqj, i64 %i.cnu ; 2 uses
  %i.cnw = getelementptr inbounds nuw i8, ptr %i.cnv, i64 16
  store <16 x i8> zeroinitializer, ptr %i.cnv, align 1
  store <16 x i8> zeroinitializer, ptr %i.cnw, align 1
  %index.next671 = add nuw i64 %index670, 32      ; 2 uses
  %i.cnx = icmp eq i64 %index.next671, %n.vec668
  br i1 %i.cnx, label %middle.block672, label %vector.body669, !llvm.loop !39

middle.block672:                                  ; preds = %vector.body669
  br i1 %cmp.n673, label %._crit_edge488.i.split.i, label %vec.epilog.iter.check678

vec.epilog.iter.check678:                         ; preds = %middle.block672
  br i1 %min.epilog.iters.check679, label %._crit_edge.thread.i.us17.i.preheader, label %vec.epilog.ph680, !prof !7

vec.epilog.ph680:                                 ; preds = %vector.main.loop.iter.check665, %vec.epilog.iter.check678
  %vec.epilog.resume.val674 = phi i64 [ %n.vec668, %vec.epilog.iter.check678 ], [ 0, %vector.main.loop.iter.check665 ]
  br label %vec.epilog.vector.body682

vec.epilog.vector.body682:                        ; preds = %vec.epilog.vector.body682, %vec.epilog.ph680
  %index683 = phi i64 [ %vec.epilog.resume.val674, %vec.epilog.ph680 ], [ %index.next684, %vec.epilog.vector.body682 ] ; 2 uses
  %i.cny = trunc i64 %index683 to i32
  %i.cnz = add i32 %i.cll, %i.cny
  %i.coa = sext i32 %i.cnz to i64
  %i.cob = getelementptr inbounds i8, ptr %i.bqj, i64 %i.coa
  store <8 x i8> zeroinitializer, ptr %i.cob, align 1
  %index.next684 = add nuw i64 %index683, 8       ; 2 uses
  %i.coc = icmp eq i64 %index.next684, %n.vec681
  br i1 %i.coc, label %vec.epilog.middle.block685, label %vec.epilog.vector.body682, !llvm.loop !40

vec.epilog.middle.block685:                       ; preds = %vec.epilog.vector.body682
  br i1 %cmp.n686, label %._crit_edge488.i.split.i, label %._crit_edge.thread.i.us17.i.preheader

._crit_edge.thread.i.us17.i.preheader:            ; preds = %iter.check676, %vec.epilog.iter.check678, %vec.epilog.middle.block685
  %indvars.iv497.i.us16.i.ph = phi i64 [ %i.bqs, %iter.check676 ], [ %i.bre, %vec.epilog.iter.check678 ], [ %i.brf, %vec.epilog.middle.block685 ] ; 3 uses
  %i.cod = trunc i64 %indvars.iv497.i.us16.i.ph to i32 ; 2 uses
  %i.coe = sub i32 %i.bpv, %i.cod
  %i.cof = sub i32 %i.bqy, %i.cod
  %xtraiter807 = and i32 %i.coe, 3                ; 2 uses
  %lcmp.mod808.not = icmp eq i32 %xtraiter807, 0
  br i1 %lcmp.mod808.not, label %._crit_edge.thread.i.us17.i.prol.loopexit, label %._crit_edge.thread.i.us17.i.prol

._crit_edge.thread.i.us17.i.prol:                 ; preds = %._crit_edge.thread.i.us17.i.preheader, %._crit_edge.thread.i.us17.i.prol
  %indvars.iv497.i.us16.i.prol = phi i64 [ %indvars.iv.next498.i.us18.i.prol, %._crit_edge.thread.i.us17.i.prol ], [ %indvars.iv497.i.us16.i.ph, %._crit_edge.thread.i.us17.i.preheader ] ; 2 uses
  %prol.iter809 = phi i32 [ %prol.iter809.next, %._crit_edge.thread.i.us17.i.prol ], [ 0, %._crit_edge.thread.i.us17.i.preheader ]
  %i.cog = trunc i64 %indvars.iv497.i.us16.i.prol to i32
  %i.coh = add i32 %.reass.i.i, %i.cog
  %i.coi = sext i32 %i.coh to i64
  %i.coj = getelementptr inbounds i8, ptr %i.bqj, i64 %i.coi
  store i8 0, ptr %i.coj, align 1
  %indvars.iv.next498.i.us18.i.prol = add nuw nsw i64 %indvars.iv497.i.us16.i.prol, 1 ; 2 uses
  %prol.iter809.next = add i32 %prol.iter809, 1   ; 2 uses
  %prol.iter809.cmp.not = icmp eq i32 %prol.iter809.next, %xtraiter807
  br i1 %prol.iter809.cmp.not, label %._crit_edge.thread.i.us17.i.prol.loopexit, label %._crit_edge.thread.i.us17.i.prol, !llvm.loop !41

._crit_edge.thread.i.us17.i.prol.loopexit:        ; preds = %._crit_edge.thread.i.us17.i.prol, %._crit_edge.thread.i.us17.i.preheader
  %indvars.iv497.i.us16.i.unr = phi i64 [ %indvars.iv497.i.us16.i.ph, %._crit_edge.thread.i.us17.i.preheader ], [ %indvars.iv.next498.i.us18.i.prol, %._crit_edge.thread.i.us17.i.prol ]
  %i.cok = icmp ult i32 %i.cof, 3
  br i1 %i.cok, label %._crit_edge488.i.split.i, label %._crit_edge.thread.i.us17.i.preheader.new

._crit_edge.thread.i.us17.i.preheader.new:        ; preds = %._crit_edge.thread.i.us17.i.prol.loopexit
  %invariant.op856 = add i32 1, %.reass.i.i
  %invariant.op858 = add i32 2, %.reass.i.i
  %invariant.op860 = add i32 3, %.reass.i.i
  br label %._crit_edge.thread.i.us17.i

._crit_edge.thread.i.us17.i:                      ; preds = %._crit_edge.thread.i.us17.i, %._crit_edge.thread.i.us17.i.preheader.new
  %indvars.iv497.i.us16.i = phi i64 [ %indvars.iv497.i.us16.i.unr, %._crit_edge.thread.i.us17.i.preheader.new ], [ %indvars.iv.next498.i.us18.i.3, %._crit_edge.thread.i.us17.i ] ; 5 uses
  %i.col = trunc i64 %indvars.iv497.i.us16.i to i32
  %i.com = add i32 %.reass.i.i, %i.col
  %i.con = sext i32 %i.com to i64
  %i.coo = getelementptr inbounds i8, ptr %i.bqj, i64 %i.con
  store i8 0, ptr %i.coo, align 1
  %i.cop = trunc i64 %indvars.iv497.i.us16.i to i32
  %.reass857 = add i32 %i.cop, %invariant.op856
  %i.coq = sext i32 %.reass857 to i64
  %i.cor = getelementptr inbounds i8, ptr %i.bqj, i64 %i.coq
  store i8 0, ptr %i.cor, align 1
  %i.cos = trunc i64 %indvars.iv497.i.us16.i to i32
  %.reass859 = add i32 %i.cos, %invariant.op858
  %i.cot = sext i32 %.reass859 to i64
  %i.cou = getelementptr inbounds i8, ptr %i.bqj, i64 %i.cot
  store i8 0, ptr %i.cou, align 1
  %i.cov = trunc i64 %indvars.iv497.i.us16.i to i32
  %.reass861 = add i32 %i.cov, %invariant.op860
  %i.cow = sext i32 %.reass861 to i64
  %i.cox = getelementptr inbounds i8, ptr %i.bqj, i64 %i.cow
  store i8 0, ptr %i.cox, align 1
  %indvars.iv.next498.i.us18.i.3 = add nuw nsw i64 %indvars.iv497.i.us16.i, 4 ; 2 uses
  %lftr.wideiv.i.us19.i.3 = trunc i64 %indvars.iv.next498.i.us18.i.3 to i32
  %exitcond500.not.i.us20.i.3 = icmp eq i32 %i.bqc, %lftr.wideiv.i.us19.i.3
  br i1 %exitcond500.not.i.us20.i.3, label %._crit_edge488.i.split.i, label %._crit_edge.thread.i.us17.i, !llvm.loop !42

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.thread.i.i, %._crit_edge.thread.i.i.preheader.new
  %indvars.iv497.i.i = phi i64 [ %indvars.iv497.i.i.unr, %._crit_edge.thread.i.i.preheader.new ], [ %indvars.iv.next498.i.i.3, %._crit_edge.thread.i.i ] ; 5 uses
  %i.coy = trunc i64 %indvars.iv497.i.i to i32
  %i.coz = add i32 %.reass.i.i, %i.coy
  %i.cpa = sext i32 %i.coz to i64
  %i.cpb = getelementptr inbounds i8, ptr %i.bqj, i64 %i.cpa
  store i8 0, ptr %i.cpb, align 1
  %i.cpc = trunc i64 %indvars.iv497.i.i to i32
  %.reass = add i32 %i.cpc, %invariant.op
  %i.cpd = sext i32 %.reass to i64
  %i.cpe = getelementptr inbounds i8, ptr %i.bqj, i64 %i.cpd
  store i8 0, ptr %i.cpe, align 1
  %i.cpf = trunc i64 %indvars.iv497.i.i to i32
  %.reass853 = add i32 %i.cpf, %invariant.op852
  %i.cpg = sext i32 %.reass853 to i64
  %i.cph = getelementptr inbounds i8, ptr %i.bqj, i64 %i.cpg
  store i8 0, ptr %i.cph, align 1
  %i.cpi = trunc i64 %indvars.iv497.i.i to i32
  %.reass855 = add i32 %i.cpi, %invariant.op854
  %i.cpj = sext i32 %.reass855 to i64
  %i.cpk = getelementptr inbounds i8, ptr %i.bqj, i64 %i.cpj
  store i8 0, ptr %i.cpk, align 1
  %indvars.iv.next498.i.i.3 = add nuw nsw i64 %indvars.iv497.i.i, 4 ; 2 uses
  %lftr.wideiv.i.i.3 = trunc i64 %indvars.iv.next498.i.i.3 to i32
  %exitcond500.not.i.i.3 = icmp eq i32 %i.bqc, %lftr.wideiv.i.i.3
  br i1 %exitcond500.not.i.i.3, label %._crit_edge488.i.split.i, label %._crit_edge.thread.i.i, !llvm.loop !43

._crit_edge488.i.split.i:                         ; preds = %._crit_edge.thread.i.i.prol.loopexit, %._crit_edge.thread.i.i, %._crit_edge.thread.i.us17.i.prol.loopexit, %._crit_edge.thread.i.us17.i, %._crit_edge.thread.i.us12.i.prol.loopexit, %._crit_edge.thread.i.us12.i, %middle.block698, %vec.epilog.middle.block711, %middle.block672, %vec.epilog.middle.block685, %middle.block646, %vec.epilog.middle.block659
  %i.cpl = add nsw i32 %.0435489.i.i, 1           ; 2 uses
  %exitcond501.not.i.i = icmp eq i32 %i.cpl, %i.bqd
  br i1 %exitcond501.not.i.i, label %._crit_edge490.split.i.i, label %.preheader.i.i

._crit_edge490.split.i.i:                         ; preds = %._crit_edge488.i.split.i, %._crit_edge488.i.split.us.us.i, %.preheader.lr.ph.i.i, %.preheader480.i.i
  call void @free(ptr noundef %i.bqm) #39
  call void @free(ptr noundef %.pre.pre.i.i) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #39
  br label %stbtt_GetCodepointSDF.exit

stbtt_GetCodepointSDF.exit:                       ; preds = %bb.lf, %bb.lg, %bb.lh, %._crit_edge490.split.i.i
  %.2186 = phi i32 [ 0, %bb.lf ], [ 0, %bb.lg ], [ 0, %bb.lh ], [ %i.bqe, %._crit_edge490.split.i.i ]
  %.2183 = phi i32 [ 0, %bb.lf ], [ 0, %bb.lg ], [ 0, %bb.lh ], [ %i.bqf, %._crit_edge490.split.i.i ]
  %.0.i.i = phi ptr [ null, %bb.lf ], [ null, %bb.lg ], [ null, %bb.lh ], [ %i.bqj, %._crit_edge490.split.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  br label %.sink.split

.sink.split:                                      ; preds = %stbtt_GetCodepointBitmap.exit, %stbtt_GetCodepointSDF.exit
  %.0.i.i.sink = phi ptr [ %.0.i.i, %stbtt_GetCodepointSDF.exit ], [ %.0.i.i.i151, %stbtt_GetCodepointBitmap.exit ]
  %.0184.ph = phi i32 [ %.2186, %stbtt_GetCodepointSDF.exit ], [ %.1185, %stbtt_GetCodepointBitmap.exit ]
  %.0181.ph = phi i32 [ %.2183, %stbtt_GetCodepointSDF.exit ], [ %.1182, %stbtt_GetCodepointBitmap.exit ]
  %i.cpm = getelementptr inbounds nuw i8, ptr %i.zm, i64 16
  store ptr %.0.i.i.sink, ptr %i.cpm, align 8
  br label %bb.np

bb.np:                                            ; preds = %.sink.split, %bb.dm, %bb.le
  %.0184 = phi i32 [ 0, %bb.dm ], [ 0, %bb.le ], [ %.0184.ph, %.sink.split ] ; 2 uses
  %.0181 = phi i32 [ 0, %bb.dm ], [ 0, %bb.le ], [ %.0181.ph, %.sink.split ] ; 4 uses
  %i.cpn = getelementptr inbounds nuw i8, ptr %i.zm, i64 16 ; 2 uses
  %i.cpo = load ptr, ptr %i.cpn, align 8          ; 2 uses
  %.not142 = icmp eq ptr %i.cpo, null
  br i1 %.not142, label %bb.ns, label %stbtt_GetCodepointHMetrics.exit

stbtt_GetCodepointHMetrics.exit:                  ; preds = %bb.np
  %i.cpp = getelementptr inbounds nuw i8, ptr %i.zm, i64 12
  %i.cpq = call fastcc i32 @stbtt_FindGlyphIndex(ptr %0, i32 %i.wu, i32 noundef %.val146) ; 2 uses
  %.val.i.i164 = load i8, ptr %10, align 1
  %.val31.i.i = load i8, ptr %11, align 1
  %i.cpr = zext i8 %.val.i.i164 to i32
  %i.cps = shl nuw nsw i32 %i.cpr, 8
  %i.cpt = zext i8 %.val31.i.i to i32
  %i.cpu = or disjoint i32 %i.cps, %i.cpt         ; 2 uses
  %i.cpv = icmp slt i32 %i.cpq, %i.cpu            ; 2 uses
  %i.cpw = shl nuw nsw i32 %i.cpu, 2
  %i.cpx = zext nneg i32 %i.cpw to i64
  %i.cpy = getelementptr i8, ptr %13, i64 %i.cpx  ; 2 uses
  %i.cpz = getelementptr i8, ptr %i.cpy, i64 -4
  %i.cqa = getelementptr i8, ptr %i.cpy, i64 -3
  %i.cqb = shl nsw i32 %i.cpq, 2
  %i.cqc = sext i32 %i.cqb to i64
  %i.cqd = getelementptr inbounds i8, ptr %13, i64 %i.cqc ; 2 uses
  %i.cqe = getelementptr i8, ptr %i.cqd, i64 1
  %.val32.sink.in.i.i = select i1 %i.cpv, ptr %i.cqd, ptr %i.cpz
  %.val33.sink.in.i.i = select i1 %i.cpv, ptr %i.cqe, ptr %i.cqa
  %.val33.sink.i.i = load i8, ptr %.val33.sink.in.i.i, align 1
  %.val32.sink.i.i = load i8, ptr %.val32.sink.in.i.i, align 1
  %i.cqf = zext i8 %.val32.sink.i.i to i16
  %i.cqg = shl nuw i16 %i.cqf, 8
  %i.cqh = zext i8 %.val33.sink.i.i to i16
  %i.cqi = or disjoint i16 %i.cqg, %i.cqh
  %i.cqj = sitofp i16 %i.cqi to float
  %i.cqk = fmul float %i.xy, %i.cqj
  %i.cql = fptosi float %i.cqk to i32
  store i32 %i.cql, ptr %i.cpp, align 4
  %i.cqm = icmp sgt i32 %.0181, %2
  %or.cond = select i1 %.not143, i1 %i.cqm, i1 false
  br i1 %or.cond, label %bb.nq, label %bb.nr

bb.nq:                                            ; preds = %stbtt_GetCodepointHMetrics.exit
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef %.val146, i32 noundef %.0181, i32 noundef %2) #39
  br label %bb.nr

bb.nr:                                            ; preds = %bb.nq, %stbtt_GetCodepointHMetrics.exit
  %i.cqn = getelementptr inbounds nuw i8, ptr %i.zm, i64 24
  store i32 %.0184, ptr %i.cqn, align 8
  %i.cqo = getelementptr inbounds nuw i8, ptr %i.zm, i64 28
  store i32 %.0181, ptr %i.cqo, align 4
  %i.cqp = getelementptr inbounds nuw i8, ptr %i.zm, i64 32
  store i32 1, ptr %i.cqp, align 8
  %i.cqq = getelementptr inbounds nuw i8, ptr %i.zm, i64 36
  store i32 1, ptr %i.cqq, align 4
  %i.cqr = getelementptr inbounds nuw i8, ptr %i.zm, i64 8 ; 2 uses
  %i.cqs = load i32, ptr %i.cqr, align 8
  %i.cqt = add nsw i32 %i.cqs, %i.yv
  store i32 %i.cqt, ptr %i.cqr, align 8
  br label %bb.ns

bb.ns:                                            ; preds = %bb.nr, %bb.np
  switch i32 %.val146, label %bb.nw [
    i32 12288, label %stbtt_GetCodepointHMetrics.exit175
    i32 32, label %stbtt_GetCodepointHMetrics.exit175
  ]

stbtt_GetCodepointHMetrics.exit175:               ; preds = %bb.ns, %bb.ns
  %i.cqu = getelementptr inbounds nuw i8, ptr %i.zm, i64 12 ; 2 uses
  %i.cqv = call fastcc i32 @stbtt_FindGlyphIndex(ptr %0, i32 %i.wu, i32 noundef %.val146) ; 2 uses
  %.val.i.i168 = load i8, ptr %10, align 1
  %.val31.i.i169 = load i8, ptr %11, align 1
  %i.cqw = zext i8 %.val.i.i168 to i32
  %i.cqx = shl nuw nsw i32 %i.cqw, 8
  %i.cqy = zext i8 %.val31.i.i169 to i32
  %i.cqz = or disjoint i32 %i.cqx, %i.cqy         ; 2 uses
  %i.cra = icmp slt i32 %i.cqv, %i.cqz            ; 2 uses
  %i.crb = shl nuw nsw i32 %i.cqz, 2
  %i.crc = zext nneg i32 %i.crb to i64
  %i.crd = getelementptr i8, ptr %13, i64 %i.crc  ; 2 uses
  %i.cre = getelementptr i8, ptr %i.crd, i64 -4
  %i.crf = getelementptr i8, ptr %i.crd, i64 -3
  %i.crg = shl nsw i32 %i.cqv, 2
  %i.crh = sext i32 %i.crg to i64
  %i.cri = getelementptr inbounds i8, ptr %13, i64 %i.crh ; 2 uses
  %i.crj = getelementptr i8, ptr %i.cri, i64 1
  %.val32.sink.in.i.i171 = select i1 %i.cra, ptr %i.cri, ptr %i.cre
  %.val33.sink.in.i.i172 = select i1 %i.cra, ptr %i.crj, ptr %i.crf
  %.val33.sink.i.i173 = load i8, ptr %.val33.sink.in.i.i172, align 1
  %.val32.sink.i.i174 = load i8, ptr %.val32.sink.in.i.i171, align 1
  %i.crk = zext i8 %.val32.sink.i.i174 to i16
  %i.crl = shl nuw i16 %i.crk, 8
  %i.crm = zext i8 %.val33.sink.i.i173 to i16
  %i.crn = or disjoint i16 %i.crl, %i.crm
  %i.cro = sitofp i16 %i.crn to float
  %i.crp = fmul float %i.xy, %i.cro
  %i.crq = fptosi float %i.crp to i32             ; 4 uses
  store i32 %i.crq, ptr %i.cqu, align 4
  %i.crr = icmp sgt i32 %i.crq, 0
  br i1 %i.crr, label %bb.nt, label %bb.nu

bb.nt:                                            ; preds = %stbtt_GetCodepointHMetrics.exit175
  %i.crs = mul nsw i32 %2, %i.crq
  %i.crt = sext i32 %i.crs to i64
  %i.cru = call noalias ptr @calloc(i64 noundef %i.crt, i64 noundef 1) #40
  br label %bb.nv

bb.nu:                                            ; preds = %stbtt_GetCodepointHMetrics.exit175
  store i32 0, ptr %i.cqu, align 4
  br label %bb.nv

bb.nv:                                            ; preds = %bb.nu, %bb.nt
  %.sroa.0.0 = phi ptr [ %i.cru, %bb.nt ], [ null, %bb.nu ] ; 2 uses
  store ptr %.sroa.0.0, ptr %i.cpn, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zm, i64 24
  store i32 %i.crq, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zm, i64 28
  store i32 %2, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zm, i64 32
  store i32 1, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zm, i64 36
  store i32 1, ptr %.sroa.8.0..sroa_idx, align 4
  br label %bb.nw

bb.nw:                                            ; preds = %bb.ns, %bb.nv
  %i.crv = phi ptr [ %i.cpo, %bb.ns ], [ %.sroa.0.0, %bb.nv ] ; 3 uses
  br i1 %i.yw, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.nw
  %i.crw = mul nsw i32 %.0181, %.0184             ; 4 uses
  %i.crx = icmp sgt i32 %i.crw, 0
  br i1 %i.crx, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader
  %wide.trip.count328 = zext nneg i32 %i.crw to i64 ; 6 uses
  %min.iters.check594 = icmp ult i32 %i.crw, 4
  br i1 %min.iters.check594, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check595 = icmp ult i32 %i.crw, 32
  br i1 %min.iters.check595, label %vec.epilog.ph, label %vector.ph596

vector.ph596:                                     ; preds = %vector.main.loop.iter.check
  %i.cry = and i64 %wide.trip.count328, 28
  %n.vec597 = and i64 %wide.trip.count328, 2147483616 ; 4 uses
  br label %vector.body598

vector.body598:                                   ; preds = %vector.ph596, %vector.body598
  %index599 = phi i64 [ 0, %vector.ph596 ], [ %index.next601, %vector.body598 ] ; 2 uses
  %i.crz = getelementptr inbounds nuw i8, ptr %i.crv, i64 %index599 ; 3 uses
  %i.csa = getelementptr inbounds nuw i8, ptr %i.crz, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.crz, align 1
  %wide.load600 = load <16 x i8>, ptr %i.csa, align 1
  %i.csb = icmp ugt <16 x i8> %wide.load, splat (i8 79)
  %i.csc = icmp ugt <16 x i8> %wide.load600, splat (i8 79)
  %i.csd = sext <16 x i1> %i.csb to <16 x i8>
  %i.cse = sext <16 x i1> %i.csc to <16 x i8>
  store <16 x i8> %i.csd, ptr %i.crz, align 1
  store <16 x i8> %i.cse, ptr %i.csa, align 1
  %index.next601 = add nuw i64 %index599, 32      ; 2 uses
  %i.csf = icmp eq i64 %index.next601, %n.vec597
  br i1 %i.csf, label %middle.block602, label %vector.body598, !llvm.loop !44

middle.block602:                                  ; preds = %vector.body598
  %cmp.n603 = icmp eq i64 %n.vec597, %wide.trip.count328
  br i1 %cmp.n603, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block602
  %min.epilog.iters.check = icmp eq i64 %i.cry, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !8

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec597, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec604 = and i64 %wide.trip.count328, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index605 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next607, %vec.epilog.vector.body ] ; 2 uses
  %i.csg = getelementptr inbounds nuw i8, ptr %i.crv, i64 %index605 ; 2 uses
  %wide.load606 = load <4 x i8>, ptr %i.csg, align 1
  %i.csh = icmp ugt <4 x i8> %wide.load606, splat (i8 79)
  %i.csi = sext <4 x i1> %i.csh to <4 x i8>
  store <4 x i8> %i.csi, ptr %i.csg, align 1
  %index.next607 = add nuw i64 %index605, 4       ; 2 uses
  %i.csj = icmp eq i64 %index.next607, %n.vec604
  br i1 %i.csj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !45

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n608 = icmp eq i64 %n.vec604, %wide.trip.count328
  br i1 %cmp.n608, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv325.ph = phi i64 [ 0, %iter.check ], [ %n.vec597, %vec.epilog.iter.check ], [ %n.vec604, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv325 = phi i64 [ %indvars.iv.next326, %vec.epilog.scalar.ph ], [ %indvars.iv325.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.csk = getelementptr inbounds nuw i8, ptr %i.crv, i64 %indvars.iv325 ; 2 uses
  %i.csl = load i8, ptr %i.csk, align 1
  %i.csm = icmp ugt i8 %i.csl, 79
  %. = sext i1 %i.csm to i8
  store i8 %., ptr %i.csk, align 1
  %indvars.iv.next326 = add nuw nsw i64 %indvars.iv325, 1 ; 2 uses
  %exitcond329.not = icmp eq i64 %indvars.iv.next326, %wide.trip.count328
  br i1 %exitcond329.not, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !46

.loopexit:                                        ; preds = %vec.epilog.scalar.ph, %middle.block602, %vec.epilog.middle.block, %.preheader, %bb.nw
  %i.csn = add nsw i32 %.0122285, 1
  %i.cso = add nsw i32 %.2284, 1
  br label %bb.nx

bb.nx:                                            ; preds = %bb.dl, %.loopexit
  %.3 = phi i32 [ %i.cso, %.loopexit ], [ %.2284, %bb.dl ] ; 5 uses
  %.1 = phi i32 [ %i.csn, %.loopexit ], [ %.0122285, %bb.dl ] ; 2 uses
  %indvars.iv.next331 = add nuw nsw i64 %indvars.iv330, 1 ; 2 uses
  %exitcond334.not = icmp eq i64 %indvars.iv.next331, %i.yc
  br i1 %exitcond334.not, label %bb.dk, label %bb.dl

.split:                                           ; preds = %bb.dk
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.7, i32 noundef %.1, i32 noundef %i.ya) #39
  br i1 %i.yb, label %bb.nz, label %bb.oa

.thread:                                          ; preds = %stbtt__find_table.exit331.thread.i.i, %._crit_edge.i.i, %.critedge.i.i, %stbtt__find_table.exit200.i.i, %bb.az
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.8) #39
  br label %bb.oa

bb.ny:                                            ; preds = %bb.dk
  br i1 %i.yb, label %bb.nz, label %bb.oa

bb.nz:                                            ; preds = %.split, %bb.ny
  call void @free(ptr noundef %.0125) #39
  br label %bb.oa

bb.oa:                                            ; preds = %.split, %.thread, %bb.nz, %bb.ny
  %.4243 = phi i32 [ 0, %.thread ], [ %.3, %bb.nz ], [ %.3, %bb.ny ], [ %.3, %.split ]
  %.0131242 = phi ptr [ null, %.thread ], [ %i.yo, %bb.nz ], [ %i.yo, %bb.ny ], [ %i.yo, %.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  br label %bb.ob

bb.ob:                                            ; preds = %bb.oa, %bb.a
  %.1132 = phi ptr [ %.0131242, %bb.oa ], [ null, %bb.a ]
  %.5 = phi i32 [ %.4243, %bb.oa ], [ 0, %bb.a ]
  store i32 %.5, ptr %6, align 4
  ret ptr %.1132
}

; Function Attrs: nounwind uwtable
define void @GenImageFontAtlas(ptr dead_on_unwind noalias nofree writable sret(%struct.Image) align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #9 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.9) #39
  br label %bb.w

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %2, align 8
  %i.b = icmp sgt i32 %3, 0
  %i.c = select i1 %i.b, i32 %3, i32 95           ; 10 uses
  %i.d = zext nneg i32 %i.c to i64                ; 9 uses
  %i.e = shl nuw nsw i64 %i.d, 4                  ; 2 uses
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.e) #42 ; 3 uses
  %i.g = shl nsw i32 %5, 1                        ; 6 uses
  %min.iters.check = icmp samesign ult i32 %i.c, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.c
  %n.vec = and i64 %i.d, 2147483640               ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.g, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ap, %vector.body ]
  %vec.phi365 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.aq, %vector.body ]
  %i.h = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %index
  %i.i = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %index
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %index
  %i.k = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %index
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %index
  %i.m = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %index
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %index
end_hunk_3
