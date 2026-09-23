Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_gpu_vulkan?download=true
inline.NumInlined: 321
inline.NumDeleted: 97
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 36
begin_hunk_0_@VULKAN_INTERNAL_FetchDescriptorSetLayout:bb.a
bb.i:                                             ; preds = %bb.e
  br label %VkErrorMessages.exit

bb.j:                                             ; preds = %bb.e
  br label %VkErrorMessages.exit

bb.k:                                             ; preds = %bb.e
  br label %VkErrorMessages.exit

bb.l:                                             ; preds = %bb.e
  br label %VkErrorMessages.exit

bb.m:                                             ; preds = %bb.e
  br label %VkErrorMessages.exit

bb.n:                                             ; preds = %bb.e
  br label %VkErrorMessages.exit

bb.o:                                             ; preds = %bb.e
  br label %VkErrorMessages.exit

bb.p:                                             ; preds = %bb.e
  br label %VkErrorMessages.exit

bb.q:                                             ; preds = %bb.e
  br label %VkErrorMessages.exit

bb.r:                                             ; preds = %bb.e
  br label %VkErrorMessages.exit

bb.s:                                             ; preds = %bb.e
  br label %VkErrorMessages.exit

bb.t:                                             ; preds = %bb.e
  br label %VkErrorMessages.exit

bb.u:                                             ; preds = %bb.e
  br label %VkErrorMessages.exit

bb.v:                                             ; preds = %bb.e
  br label %VkErrorMessages.exit

VkErrorMessages.exit:                             ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v
  %.0.i = phi ptr [ @.str.74, %bb.v ], [ @.str.73, %bb.u ], [ @.str.58, %bb.f ], [ @.str.59, %bb.g ], [ @.str.60, %bb.h ], [ @.str.61, %bb.i ], [ @.str.62, %bb.j ], [ @.str.63, %bb.k ], [ @.str.64, %bb.l ], [ @.str.65, %bb.m ], [ @.str.66, %bb.n ], [ @.str.67, %bb.o ], [ @.str.68, %bb.p ], [ @.str.69, %bb.q ], [ @.str.70, %bb.r ], [ @.str.71, %bb.s ], [ @.str.72, %bb.t ], [ @.str.57, %bb.e ]
  call void (i32, ptr, ...) @SDL_LogError_REAL(i32 noundef 9, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.266, ptr noundef nonnull %.0.i) #13
  br label %bb.w

bb.w:                                             ; preds = %VkErrorMessages.exit, %bb.d
  switch i32 %i.ek, label %bb.an [
    i32 -1, label %VkErrorMessages.exit116
    i32 -2, label %bb.x
    i32 -12, label %bb.y
    i32 -1000069000, label %bb.z
    i32 -3, label %bb.aa
    i32 -6, label %bb.ab
    i32 -7, label %bb.ac
    i32 -8, label %bb.ad
    i32 -10, label %bb.ae
    i32 -4, label %bb.af
    i32 -9, label %bb.ag
    i32 -1000001004, label %bb.ah
    i32 -1000000000, label %bb.ai
    i32 -1000255000, label %bb.aj
    i32 1000001003, label %bb.ak
    i32 -1000000001, label %bb.al
    i32 -1000012000, label %bb.am
  ]

bb.x:                                             ; preds = %bb.w
  br label %VkErrorMessages.exit116

bb.y:                                             ; preds = %bb.w
  br label %VkErrorMessages.exit116

bb.z:                                             ; preds = %bb.w
  br label %VkErrorMessages.exit116

bb.aa:                                            ; preds = %bb.w
  br label %VkErrorMessages.exit116

bb.ab:                                            ; preds = %bb.w
  br label %VkErrorMessages.exit116

bb.ac:                                            ; preds = %bb.w
  br label %VkErrorMessages.exit116

bb.ad:                                            ; preds = %bb.w
  br label %VkErrorMessages.exit116

bb.ae:                                            ; preds = %bb.w
  br label %VkErrorMessages.exit116

bb.af:                                            ; preds = %bb.w
  br label %VkErrorMessages.exit116

bb.ag:                                            ; preds = %bb.w
  br label %VkErrorMessages.exit116

bb.ah:                                            ; preds = %bb.w
  br label %VkErrorMessages.exit116

bb.ai:                                            ; preds = %bb.w
  br label %VkErrorMessages.exit116

bb.aj:                                            ; preds = %bb.w
  br label %VkErrorMessages.exit116

bb.ak:                                            ; preds = %bb.w
  br label %VkErrorMessages.exit116

bb.al:                                            ; preds = %bb.w
  br label %VkErrorMessages.exit116

bb.am:                                            ; preds = %bb.w
  br label %VkErrorMessages.exit116

bb.an:                                            ; preds = %bb.w
  br label %VkErrorMessages.exit116

VkErrorMessages.exit116:                          ; preds = %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an
  %.0.i115 = phi ptr [ @.str.74, %bb.an ], [ @.str.73, %bb.am ], [ @.str.58, %bb.x ], [ @.str.59, %bb.y ], [ @.str.60, %bb.z ], [ @.str.61, %bb.aa ], [ @.str.62, %bb.ab ], [ @.str.63, %bb.ac ], [ @.str.64, %bb.ad ], [ @.str.65, %bb.ae ], [ @.str.66, %bb.af ], [ @.str.67, %bb.ag ], [ @.str.68, %bb.ah ], [ @.str.69, %bb.ai ], [ @.str.70, %bb.aj ], [ @.str.71, %bb.ak ], [ @.str.72, %bb.al ], [ @.str.57, %bb.w ]
  %i.fb = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.266, ptr noundef nonnull %.0.i115) #13 ; 0 uses
  br label %bb.ap

bb.ao:                                            ; preds = %._crit_edge
  %i.fc = call noalias ptr @SDL_malloc_REAL(i64 noundef 40) #13 ; 8 uses
  store ptr %i.fc, ptr %i.a, align 8
  %i.fd = load ptr, ptr %i.b, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store ptr %i.fd, ptr %i.fe, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store i32 %2, ptr %i.ff, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 20
  store i32 %4, ptr %i.fg, align 4
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  store i32 %3, ptr %i.fh, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fc, i64 28
  store i32 %6, ptr %i.fi, align 4
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fc, i64 32
  store i32 %5, ptr %i.fj, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fc, i64 36
  store i32 %7, ptr %i.fk, align 4
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 2120
  %i.fm = call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull %i.fl, i32 noundef 1) #13
  %i.fn = load ptr, ptr %i.a, align 8
  store i32 %i.fm, ptr %i.fn, align 8
  %i.fo = call noalias ptr @SDL_malloc_REAL(i64 noundef 28) #13 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.fo, ptr noundef nonnull align 4 dereferenceable(28) %8, i64 28, i1 false)
  %i.fp = load ptr, ptr %i.k, align 8
  %i.fq = load ptr, ptr %i.a, align 8
  %i.fr = call zeroext i1 @SDL_InsertIntoHashTable(ptr noundef %i.fp, ptr noundef nonnull %i.fo, ptr noundef %i.fq, i1 noundef zeroext true) #13 ; 0 uses
  %i.fs = load ptr, ptr %i.i, align 8
  call void @SDL_UnlockMutex_REAL(ptr noundef %i.fs) #13
  %i.ft = load ptr, ptr %i.a, align 8
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %VkErrorMessages.exit116
  %.0 = phi ptr [ null, %VkErrorMessages.exit116 ], [ %i.ft, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.b
  %.1 = phi ptr [ %i.o, %bb.b ], [ %.0, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  ret ptr %.1
}

declare zeroext i1 @SDL_InsertIntoHashTable(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare i32 @SDL_AddAtomicInt_REAL(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @SDL_ReportAssertion_REAL(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.debugtrap() #13

declare noalias ptr @SDL_strdup_REAL(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @VULKAN_INTERNAL_CreateTexture(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %2 = alloca %struct.VkMemoryRequirements, align 8 ; 7 uses
  %3 = alloca %struct.VkImageCreateInfo, align 8  ; 19 uses
  %4 = alloca %struct.VkImageViewCreateInfo, align 8 ; 15 uses
  %5 = alloca %struct.VkDebugUtilsObjectNameInfoEXT, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.b = load i32, ptr %1, align 4
  %i.c = icmp eq i32 %i.b, 2                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %. = select i1 %i.c, i32 1, i32 %i.e            ; 5 uses
  %.269 = select i1 %i.c, i32 %i.e, i32 1         ; 4 uses
  %i.f = tail call noalias dereferenceable_or_null(104) ptr @SDL_calloc_REAL(i64 noundef 1, i64 noundef 104) #16 ; 26 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 7 uses
  %6 = load i32, ptr %i.h, align 4                ; 2 uses
  %switch.selectcmp = icmp eq i32 %6, 11
  %switch.select = select i1 %switch.selectcmp, <2 x i64> <i64 12884901892, i64 21474836486>, <2 x i64> zeroinitializer
  %switch.selectcmp279 = icmp eq i32 %6, 1
  %switch.select280 = select i1 %switch.selectcmp279, <2 x i64> <i64 4294967297, i64 12884901889>, <2 x i64> %switch.select
  store <2 x i64> %switch.select280, ptr %i.g, align 8
  %7 = getelementptr inbounds nuw i8, ptr %i.f, i64 60
  store i32 %.269, ptr %7, align 4
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds nuw i8, ptr %i.f, i64 76
  store i32 %9, ptr %10, align 4
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i32 %12, ptr %13, align 8
  %i.i = load i32, ptr %1, align 4                ; 2 uses
  %14 = icmp eq i32 %i.i, 2
  br i1 %14, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load i32, ptr %i.j, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.l = phi i32 [ %i.k, %bb.b ], [ 1, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 68
  store i32 %i.l, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  store i32 %i.i, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 100
  %i.p = tail call i32 @SDL_SetAtomicInt_REAL(ptr noundef nonnull %i.o, i32 noundef 0) #13 ; 0 uses
  %i.q = load i32, ptr %i.h, align 4              ; 3 uses
  %.off.i = add i32 %i.q, -58
  %switch.i = icmp ult i32 %.off.i, 5
  %.off.i228 = add nsw i32 %i.q, -61
  %switch.i229 = icmp ult i32 %.off.i228, 2
  %spec.store.select = select i1 %switch.i229, i32 6, i32 2
  %.sink = select i1 %switch.i, i32 %spec.store.select, i32 1
  %i.r = getelementptr i8, ptr %i.f, i64 56       ; 6 uses
  store i32 %.sink, ptr %i.r, align 8
  %i.s = load i32, ptr %1, align 4                ; 2 uses
  %switch.tableidx = add i32 %i.s, -2             ; 2 uses
  %i.t = icmp ult i32 %switch.tableidx, 3
  br i1 %i.t, label %switch.lookup, label %.fold.split

switch.lookup:                                    ; preds = %bb.c
  %i.u = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.VULKAN_INTERNAL_CreateTexture, i64 %i.u
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %.fold.split

.fold.split:                                      ; preds = %bb.c, %switch.lookup
  %.0190 = phi i32 [ %switch.ext, %switch.lookup ], [ 0, %bb.c ]
  %i.v = load i32, ptr %8, align 4                ; 3 uses
  %i.w = and i32 %i.v, 25
  %.not = icmp eq i32 %i.w, 0
  %spec.select = select i1 %.not, i32 3, i32 7
  %i.x = shl i32 %i.v, 3
  %.1187 = and i32 %i.x, 48
  %.2188 = or disjoint i32 %.1187, %spec.select   ; 2 uses
  %i.y = and i32 %i.v, 96
  %.not199 = icmp eq i32 %i.y, 0
  %i.z = or disjoint i32 %.2188, 8
  %.3189 = select i1 %.not199, i32 %.2188, i32 %i.z
  store i32 14, ptr %3, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %.0190, ptr %i.ab, align 8
  %i.ac = icmp eq i32 %i.s, 2
  %i.ad = select i1 %i.ac, i32 2, i32 1
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 %i.ad, ptr %i.ae, align 4
  %i.af = zext i32 %i.q to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_TextureFormat, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %i.ah, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.al = load <2 x i32>, ptr %i.aj, align 4
  store <2 x i32> %i.al, ptr %i.ak, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i32 %.269, ptr %i.am, align 4
  %i.an = load i32, ptr %11, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 %i.an, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 %., ptr %i.ap, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_SampleCount, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 %i.au, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 52
  store i32 0, ptr %i.aw, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 %.3189, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 60
  store i32 0, ptr %i.ay, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i32 0, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 72
  store ptr null, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i32 0, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 2864
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1392 ; 5 uses
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 9 uses
  %i.bh = call i32 %i.bd(ptr noundef %i.bf, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull %i.bg) #13 ; 3 uses
  %.not200 = icmp eq i32 %i.bh, 0
  br i1 %.not200, label %bb.ao, label %bb.d

bb.d:                                             ; preds = %.fold.split
  call fastcc void @VULKAN_INTERNAL_DestroyTexture(ptr noundef nonnull %0, ptr noundef nonnull %i.f)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1404
  %i.bj = load i8, ptr %i.bi, align 4, !range !23, !noundef !24
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.e, label %bb.w

bb.e:                                             ; preds = %bb.d
  switch i32 %i.bh, label %bb.v [
    i32 -1, label %VkErrorMessages.exit
    i32 -2, label %bb.f
    i32 -12, label %bb.g
    i32 -1000069000, label %bb.h
    i32 -3, label %bb.i
    i32 -6, label %bb.j
    i32 -7, label %bb.k
    i32 -8, label %bb.l
    i32 -10, label %bb.m
    i32 -4, label %bb.n
    i32 -9, label %bb.o
    i32 -1000001004, label %bb.p
    i32 -1000000000, label %bb.q
    i32 -1000255000, label %bb.r
    i32 1000001003, label %bb.s
    i32 -1000000001, label %bb.t
    i32 -1000012000, label %bb.u
  ]

bb.f:                                             ; preds = %bb.e
  br label %VkErrorMessages.exit

bb.g:                                             ; preds = %bb.e
  br label %VkErrorMessages.exit

bb.h:                                             ; preds = %bb.e
  br label %VkErrorMessages.exit

bb.i:                                             ; preds = %bb.e
  br label %VkErrorMessages.exit

bb.j:                                             ; preds = %bb.e
  br label %VkErrorMessages.exit

bb.k:                                             ; preds = %bb.e
  br label %VkErrorMessages.exit

bb.l:                                             ; preds = %bb.e
  br label %VkErrorMessages.exit

bb.m:                                             ; preds = %bb.e
  br label %VkErrorMessages.exit

bb.n:                                             ; preds = %bb.e
  br label %VkErrorMessages.exit

bb.o:                                             ; preds = %bb.e
  br label %VkErrorMessages.exit

bb.p:                                             ; preds = %bb.e
  br label %VkErrorMessages.exit

bb.q:                                             ; preds = %bb.e
  br label %VkErrorMessages.exit

bb.r:                                             ; preds = %bb.e
  br label %VkErrorMessages.exit

bb.s:                                             ; preds = %bb.e
  br label %VkErrorMessages.exit

bb.t:                                             ; preds = %bb.e
  br label %VkErrorMessages.exit

bb.u:                                             ; preds = %bb.e
  br label %VkErrorMessages.exit

bb.v:                                             ; preds = %bb.e
  br label %VkErrorMessages.exit

VkErrorMessages.exit:                             ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v
  %.0.i = phi ptr [ @.str.74, %bb.v ], [ @.str.73, %bb.u ], [ @.str.58, %bb.f ], [ @.str.59, %bb.g ], [ @.str.60, %bb.h ], [ @.str.61, %bb.i ], [ @.str.62, %bb.j ], [ @.str.63, %bb.k ], [ @.str.64, %bb.l ], [ @.str.65, %bb.m ], [ @.str.66, %bb.n ], [ @.str.67, %bb.o ], [ @.str.68, %bb.p ], [ @.str.69, %bb.q ], [ @.str.70, %bb.r ], [ @.str.71, %bb.s ], [ @.str.72, %bb.t ], [ @.str.57, %bb.e ]
  call void (i32, ptr, ...) @SDL_LogError_REAL(i32 noundef 9, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.271, ptr noundef nonnull %.0.i) #13
  br label %bb.w

bb.w:                                             ; preds = %VkErrorMessages.exit, %bb.d
  switch i32 %i.bh, label %bb.an [
    i32 -1, label %VkErrorMessages.exit231
    i32 -2, label %bb.x
    i32 -12, label %bb.y
    i32 -1000069000, label %bb.z
    i32 -3, label %bb.aa
    i32 -6, label %bb.ab
    i32 -7, label %bb.ac
    i32 -8, label %bb.ad
    i32 -10, label %bb.ae
    i32 -4, label %bb.af
    i32 -9, label %bb.ag
    i32 -1000001004, label %bb.ah
    i32 -1000000000, label %bb.ai
    i32 -1000255000, label %bb.aj
    i32 1000001003, label %bb.ak
    i32 -1000000001, label %bb.al
    i32 -1000012000, label %bb.am
  ]

bb.x:                                             ; preds = %bb.w
  br label %VkErrorMessages.exit231

bb.y:                                             ; preds = %bb.w
  br label %VkErrorMessages.exit231

bb.z:                                             ; preds = %bb.w
  br label %VkErrorMessages.exit231

bb.aa:                                            ; preds = %bb.w
  br label %VkErrorMessages.exit231

bb.ab:                                            ; preds = %bb.w
  br label %VkErrorMessages.exit231

bb.ac:                                            ; preds = %bb.w
  br label %VkErrorMessages.exit231

bb.ad:                                            ; preds = %bb.w
  br label %VkErrorMessages.exit231

bb.ae:                                            ; preds = %bb.w
  br label %VkErrorMessages.exit231

bb.af:                                            ; preds = %bb.w
  br label %VkErrorMessages.exit231

bb.ag:                                            ; preds = %bb.w
  br label %VkErrorMessages.exit231

bb.ah:                                            ; preds = %bb.w
  br label %VkErrorMessages.exit231

bb.ai:                                            ; preds = %bb.w
  br label %VkErrorMessages.exit231

bb.aj:                                            ; preds = %bb.w
  br label %VkErrorMessages.exit231

bb.ak:                                            ; preds = %bb.w
  br label %VkErrorMessages.exit231

bb.al:                                            ; preds = %bb.w
  br label %VkErrorMessages.exit231

bb.am:                                            ; preds = %bb.w
  br label %VkErrorMessages.exit231

bb.an:                                            ; preds = %bb.w
  br label %VkErrorMessages.exit231

VkErrorMessages.exit231:                          ; preds = %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an
  %.0.i230 = phi ptr [ @.str.74, %bb.an ], [ @.str.73, %bb.am ], [ @.str.58, %bb.x ], [ @.str.59, %bb.y ], [ @.str.60, %bb.z ], [ @.str.61, %bb.aa ], [ @.str.62, %bb.ab ], [ @.str.63, %bb.ac ], [ @.str.64, %bb.ad ], [ @.str.65, %bb.ae ], [ @.str.66, %bb.af ], [ @.str.67, %bb.ag ], [ @.str.68, %bb.ah ], [ @.str.69, %bb.ai ], [ @.str.70, %bb.aj ], [ @.str.71, %bb.ak ], [ @.str.72, %bb.al ], [ @.str.57, %bb.w ]
  %i.bl = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.271, ptr noundef nonnull %.0.i230) #13 ; 0 uses
  br label %bb.cw

bb.ao:                                            ; preds = %.fold.split
  %i.bm = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 3120
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = load ptr, ptr %i.be, align 8
  call void %i.bp(ptr noundef %i.bq, ptr noundef %i.bm, ptr noundef nonnull %2) #13, !inline_history !165
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bs = load i32, ptr %i.br, align 8
  %i.bt = call fastcc noalias ptr @VULKAN_INTERNAL_FindBestMemoryTypes(ptr noundef nonnull readonly %0, i32 noundef %i.bs, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.a) ; 4 uses
  %i.bu = load i32, ptr %i.a, align 4             ; 2 uses
  %.not29.i = icmp eq i32 %i.bu, 0
  br i1 %.not29.i, label %VULKAN_INTERNAL_BindMemoryForImage.exit.thread238, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.ao
  %wide.trip.count.i = zext i32 %i.bu to i64
  br label %.lr.ph.i

bb.ap:                                            ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %VULKAN_INTERNAL_BindMemoryForImage.exit.thread238, label %.lr.ph.i, !llvm.loop !166

.lr.ph.i:                                         ; preds = %bb.ap, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.ap ] ; 3 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv.i
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = load i64, ptr %2, align 8
  %i.by = call fastcc zeroext i8 @VULKAN_INTERNAL_BindResourceMemory(ptr noundef nonnull %0, i32 noundef %i.bw, ptr noundef %2, i64 noundef %i.bx, i1 noundef zeroext false, ptr noundef null, ptr noundef %i.bm, ptr noundef nonnull %i.bn)
  %i.bz = icmp eq i8 %i.by, 1
  br i1 %i.bz, label %bb.aq, label %bb.ap

bb.aq:                                            ; preds = %.lr.ph.i
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv.i
  %i.cb = load i32, ptr %i.ca, align 4
  call void @SDL_free_REAL(ptr noundef nonnull %i.bt) #13
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1401 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1
  %.not.i = icmp eq i8 %i.cd, 0
  br i1 %.not.i, label %bb.ar, label %VULKAN_INTERNAL_BindMemoryForImage.exit.thread

bb.ar:                                            ; preds = %bb.aq
  %i.ce = zext i32 %i.cb to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1444
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.ce
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = and i32 %i.ch, 1
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.as, label %VULKAN_INTERNAL_BindMemoryForImage.exit.thread

bb.as:                                            ; preds = %bb.ar
  call void (i32, ptr, ...) @SDL_LogWarn_REAL(i32 noundef 9, ptr noundef nonnull @.str.338) #13
  store i8 1, ptr %i.cc, align 1
  br label %VULKAN_INTERNAL_BindMemoryForImage.exit.thread

VULKAN_INTERNAL_BindMemoryForImage.exit.thread:   ; preds = %bb.aq, %bb.as, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.ck = load ptr, ptr %i.bn, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  store ptr %i.f, ptr %i.cl, align 8
  %i.cm = load i32, ptr %8, align 4
  %i.cn = and i32 %i.cm, 25
  %.not202 = icmp eq i32 %i.cn, 0
  br i1 %.not202, label %bb.ci, label %bb.av

VULKAN_INTERNAL_BindMemoryForImage.exit.thread238: ; preds = %bb.ap, %bb.ao
  call void @SDL_free_REAL(ptr noundef %i.bt) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 2984
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = load ptr, ptr %i.be, align 8
  %i.cr = load ptr, ptr %i.bg, align 8
  call void %i.cp(ptr noundef %i.cq, ptr noundef %i.cr, ptr noundef null) #13
  call fastcc void @VULKAN_INTERNAL_DestroyTexture(ptr noundef nonnull %0, ptr noundef nonnull %i.f)
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 1404
  %i.ct = load i8, ptr %i.cs, align 4, !range !23, !noundef !24
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %bb.at, label %bb.au

bb.at:                                            ; preds = %VULKAN_INTERNAL_BindMemoryForImage.exit.thread238
  call void (i32, ptr, ...) @SDL_LogError_REAL(i32 noundef 9, ptr noundef nonnull @.str.215, ptr noundef nonnull @.str.336) #13
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %VULKAN_INTERNAL_BindMemoryForImage.exit.thread238
  %i.cv = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.215, ptr noundef nonnull @.str.336) #13 ; 0 uses
  br label %bb.cw

bb.av:                                            ; preds = %VULKAN_INTERNAL_BindMemoryForImage.exit.thread
  store i32 15, ptr %4, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.cx, align 8
  %i.cy = load ptr, ptr %i.bg, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.cy, ptr %i.cz, align 8
  %i.da = load i32, ptr %i.h, align 4
  %i.db = zext i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_TextureFormat, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 36
  store i32 %i.dd, ptr %i.de, align 4
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.df, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  %i.dg = load i32, ptr %i.r, align 8
  %i.dh = and i32 %i.dg, -5
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i32 %i.dh, ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 60
  store i32 0, ptr %i.dj, align 4
  %i.dk = load i32, ptr %11, align 4
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i32 %i.dk, ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 68
  store i32 0, ptr %i.dm, align 4
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i32 %., ptr %i.dn, align 8
  %i.do = load i32, ptr %1, align 4
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 32
  %switch.tableidx272 = add i32 %i.do, -1         ; 2 uses
  %i.dq = icmp ult i32 %switch.tableidx272, 4
  br i1 %i.dq, label %switch.lookup273, label %bb.aw

switch.lookup273:                                 ; preds = %bb.av
  %i.dr = zext nneg i32 %switch.tableidx272 to i64
  %switch.gep274 = getelementptr inbounds nuw i8, ptr @switch.table.VULKAN_INTERNAL_CreateTexture.24, i64 %i.dr
  %switch.load275 = load i8, ptr %switch.gep274, align 1
  %switch.ext276 = zext i8 %switch.load275 to i32
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %switch.lookup273
  %.sink270 = phi i32 [ %switch.ext276, %switch.lookup273 ], [ 1, %bb.av ]
  store i32 %.sink270, ptr %i.dp, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 2872
  %i.dt = load ptr, ptr %i.ds, align 8
  %i.du = load ptr, ptr %i.be, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.dw = call i32 %i.dt(ptr noundef %i.du, ptr noundef nonnull %4, ptr noundef null, ptr noundef nonnull %i.dv) #13 ; 3 uses
  %.not203 = icmp eq i32 %i.dw, 0
  br i1 %.not203, label %bb.ci, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call fastcc void @VULKAN_INTERNAL_DestroyTexture(ptr noundef nonnull %0, ptr noundef nonnull %i.f)
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 1404
  %i.dy = load i8, ptr %i.dx, align 4, !range !23, !noundef !24
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.ay, label %bb.bq

bb.ay:                                            ; preds = %bb.ax
  switch i32 %i.dw, label %bb.bp [
    i32 -1, label %VkErrorMessages.exit233
    i32 -2, label %bb.az
    i32 -12, label %bb.ba
    i32 -1000069000, label %bb.bb
    i32 -3, label %bb.bc
    i32 -6, label %bb.bd
    i32 -7, label %bb.be
    i32 -8, label %bb.bf
    i32 -10, label %bb.bg
    i32 -4, label %bb.bh
    i32 -9, label %bb.bi
    i32 -1000001004, label %bb.bj
    i32 -1000000000, label %bb.bk
    i32 -1000255000, label %bb.bl
    i32 1000001003, label %bb.bm
    i32 -1000000001, label %bb.bn
    i32 -1000012000, label %bb.bo
  ]

bb.az:                                            ; preds = %bb.ay
  br label %VkErrorMessages.exit233

bb.ba:                                            ; preds = %bb.ay
  br label %VkErrorMessages.exit233

bb.bb:                                            ; preds = %bb.ay
  br label %VkErrorMessages.exit233

bb.bc:                                            ; preds = %bb.ay
  br label %VkErrorMessages.exit233

bb.bd:                                            ; preds = %bb.ay
  br label %VkErrorMessages.exit233

bb.be:                                            ; preds = %bb.ay
  br label %VkErrorMessages.exit233

bb.bf:                                            ; preds = %bb.ay
  br label %VkErrorMessages.exit233

bb.bg:                                            ; preds = %bb.ay
  br label %VkErrorMessages.exit233

bb.bh:                                            ; preds = %bb.ay
  br label %VkErrorMessages.exit233

bb.bi:                                            ; preds = %bb.ay
  br label %VkErrorMessages.exit233

bb.bj:                                            ; preds = %bb.ay
  br label %VkErrorMessages.exit233

bb.bk:                                            ; preds = %bb.ay
  br label %VkErrorMessages.exit233

bb.bl:                                            ; preds = %bb.ay
  br label %VkErrorMessages.exit233

bb.bm:                                            ; preds = %bb.ay
  br label %VkErrorMessages.exit233

bb.bn:                                            ; preds = %bb.ay
  br label %VkErrorMessages.exit233

bb.bo:                                            ; preds = %bb.ay
  br label %VkErrorMessages.exit233

bb.bp:                                            ; preds = %bb.ay
  br label %VkErrorMessages.exit233

VkErrorMessages.exit233:                          ; preds = %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %bb.bn, %bb.bo, %bb.bp
  %.0.i232 = phi ptr [ @.str.74, %bb.bp ], [ @.str.73, %bb.bo ], [ @.str.58, %bb.az ], [ @.str.59, %bb.ba ], [ @.str.60, %bb.bb ], [ @.str.61, %bb.bc ], [ @.str.62, %bb.bd ], [ @.str.63, %bb.be ], [ @.str.64, %bb.bf ], [ @.str.65, %bb.bg ], [ @.str.66, %bb.bh ], [ @.str.67, %bb.bi ], [ @.str.68, %bb.bj ], [ @.str.69, %bb.bk ], [ @.str.70, %bb.bl ], [ @.str.71, %bb.bm ], [ @.str.72, %bb.bn ], [ @.str.57, %bb.ay ]
  call void (i32, ptr, ...) @SDL_LogError_REAL(i32 noundef 9, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.337, ptr noundef nonnull %.0.i232) #13
  br label %bb.bq

bb.bq:                                            ; preds = %VkErrorMessages.exit233, %bb.ax
  switch i32 %i.dw, label %bb.ch [
    i32 -1, label %VkErrorMessages.exit235
    i32 -2, label %bb.br
    i32 -12, label %bb.bs
    i32 -1000069000, label %bb.bt
    i32 -3, label %bb.bu
    i32 -6, label %bb.bv
    i32 -7, label %bb.bw
    i32 -8, label %bb.bx
    i32 -10, label %bb.by
    i32 -4, label %bb.bz
    i32 -9, label %bb.ca
    i32 -1000001004, label %bb.cb
    i32 -1000000000, label %bb.cc
    i32 -1000255000, label %bb.cd
    i32 1000001003, label %bb.ce
    i32 -1000000001, label %bb.cf
    i32 -1000012000, label %bb.cg
  ]

bb.br:                                            ; preds = %bb.bq
  br label %VkErrorMessages.exit235

bb.bs:                                            ; preds = %bb.bq
  br label %VkErrorMessages.exit235

bb.bt:                                            ; preds = %bb.bq
  br label %VkErrorMessages.exit235

bb.bu:                                            ; preds = %bb.bq
  br label %VkErrorMessages.exit235

bb.bv:                                            ; preds = %bb.bq
  br label %VkErrorMessages.exit235

bb.bw:                                            ; preds = %bb.bq
  br label %VkErrorMessages.exit235

bb.bx:                                            ; preds = %bb.bq
  br label %VkErrorMessages.exit235

bb.by:                                            ; preds = %bb.bq
  br label %VkErrorMessages.exit235

bb.bz:                                            ; preds = %bb.bq
  br label %VkErrorMessages.exit235

bb.ca:                                            ; preds = %bb.bq
  br label %VkErrorMessages.exit235

bb.cb:                                            ; preds = %bb.bq
  br label %VkErrorMessages.exit235

bb.cc:                                            ; preds = %bb.bq
  br label %VkErrorMessages.exit235

bb.cd:                                            ; preds = %bb.bq
  br label %VkErrorMessages.exit235

bb.ce:                                            ; preds = %bb.bq
  br label %VkErrorMessages.exit235

bb.cf:                                            ; preds = %bb.bq
  br label %VkErrorMessages.exit235

bb.cg:                                            ; preds = %bb.bq
  br label %VkErrorMessages.exit235

bb.ch:                                            ; preds = %bb.bq
  br label %VkErrorMessages.exit235

VkErrorMessages.exit235:                          ; preds = %bb.bq, %bb.br, %bb.bs, %bb.bt, %bb.bu, %bb.bv, %bb.bw, %bb.bx, %bb.by, %bb.bz, %bb.ca, %bb.cb, %bb.cc, %bb.cd, %bb.ce, %bb.cf, %bb.cg, %bb.ch
  %.0.i234 = phi ptr [ @.str.74, %bb.ch ], [ @.str.73, %bb.cg ], [ @.str.58, %bb.br ], [ @.str.59, %bb.bs ], [ @.str.60, %bb.bt ], [ @.str.61, %bb.bu ], [ @.str.62, %bb.bv ], [ @.str.63, %bb.bw ], [ @.str.64, %bb.bx ], [ @.str.65, %bb.by ], [ @.str.66, %bb.bz ], [ @.str.67, %bb.ca ], [ @.str.68, %bb.cb ], [ @.str.69, %bb.cc ], [ @.str.70, %bb.cd ], [ @.str.71, %bb.ce ], [ @.str.72, %bb.cf ], [ @.str.57, %bb.bq ]
  %i.ea = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.337, ptr noundef nonnull %.0.i234) #13 ; 0 uses
  br label %bb.cw

bb.ci:                                            ; preds = %bb.aw, %VULKAN_INTERNAL_BindMemoryForImage.exit.thread
  %i.eb = load i32, ptr %11, align 4
  %i.ec = mul i32 %i.eb, %.                       ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  store i32 %i.ec, ptr %i.ed, align 8
  %i.ee = zext i32 %i.ec to i64
  %i.ef = call noalias ptr @SDL_calloc_REAL(i64 noundef %i.ee, i64 noundef 40) #16
  %i.eg = getelementptr inbounds nuw i8, ptr %i.f, i64 88 ; 9 uses
  store ptr %i.ef, ptr %i.eg, align 8
  %.not209246.not = icmp eq i32 %., 0
  br i1 %.not209246.not, label %.critedge216, label %.preheader241.lr.ph

.preheader241.lr.ph:                              ; preds = %bb.ci
  %i.eh = zext i32 %.269 to i64                   ; 2 uses
  %i.ei = shl nuw nsw i64 %i.eh, 3
  %i.ej = icmp ugt i32 %.269, 1
  %i.ek = load i32, ptr %11, align 4              ; 2 uses
  %.not248 = icmp eq i32 %i.ek, 0
  br i1 %.not248, label %.critedge216, label %.preheader241

.preheader241:                                    ; preds = %.preheader241.lr.ph, %.critedge214
  %i.el = phi i32 [ %i.gl, %.critedge214 ], [ %i.ek, %.preheader241.lr.ph ] ; 2 uses
  %.0180247 = phi i32 [ %i.gm, %.critedge214 ], [ 0, %.preheader241.lr.ph ] ; 6 uses
  %.not210244.not = icmp eq i32 %i.el, 0
  br i1 %.not210244.not, label %.critedge214, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader241, %.critedge212
  %i.em = phi i32 [ %i.gk, %.critedge212 ], [ %i.el, %.preheader241 ]
  %.0179245 = phi i32 [ %i.gj, %.critedge212 ], [ 0, %.preheader241 ] ; 7 uses
  %i.en = mul i32 %i.em, %.0180247
  %i.eo = add i32 %i.en, %.0179245                ; 3 uses
  %i.ep = load i32, ptr %8, align 4
  %i.eq = and i32 %i.ep, 2
  %.not204 = icmp eq i32 %i.eq, 0
  br i1 %.not204, label %.critedge, label %bb.cj

bb.cj:                                            ; preds = %.lr.ph
  %i.er = call noalias ptr @SDL_malloc_REAL(i64 noundef %i.ei) #13
  %i.es = load ptr, ptr %i.eg, align 8
  %i.et = zext i32 %i.eo to i64                   ; 3 uses
  %i.eu = getelementptr inbounds nuw [40 x i8], ptr %i.es, i64 %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store ptr %i.er, ptr %i.ev, align 8
  br i1 %i.ej, label %.preheader, label %bb.cm

bb.ck:                                            ; preds = %.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.eh
  br i1 %exitcond.not, label %.critedge, label %.preheader, !llvm.loop !167

.preheader:                                       ; preds = %bb.cj, %bb.ck
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ck ], [ 0, %bb.cj ] ; 3 uses
  %i.ew = load i32, ptr %i.h, align 4
  %i.ex = zext i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_TextureFormat, i64 %i.ex
  %i.ez = load i32, ptr %i.ey, align 4
  %i.fa = load ptr, ptr %i.eg, align 8
  %i.fb = getelementptr inbounds nuw [40 x i8], ptr %i.fa, i64 %i.et
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fd = load ptr, ptr %i.fc, align 8
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %indvars.iv
  %.val218 = load ptr, ptr %i.bg, align 8
  %.val219 = load i32, ptr %i.r, align 8
  %i.ff = trunc nuw i64 %indvars.iv to i32
  %i.fg = call fastcc zeroext i1 @VULKAN_INTERNAL_CreateRenderTargetView(ptr noundef nonnull %0, ptr %.val218, i32 %.val219, i32 noundef %i.ff, i32 noundef %.0179245, i32 noundef %i.ez, ptr noundef nonnull byval(%struct.VkComponentMapping) align 8 %i.g, ptr noundef %i.fe)
  br i1 %i.fg, label %bb.ck, label %bb.cl

bb.cl:                                            ; preds = %.preheader
  call fastcc void @VULKAN_INTERNAL_DestroyTexture(ptr noundef nonnull %0, ptr noundef nonnull %i.f)
  br label %bb.cw

bb.cm:                                            ; preds = %bb.cj
  %i.fh = load i32, ptr %i.h, align 4
  %i.fi = zext i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_TextureFormat, i64 %i.fi
  %i.fk = load i32, ptr %i.fj, align 4
  %i.fl = load ptr, ptr %i.eg, align 8
  %i.fm = getelementptr inbounds nuw [40 x i8], ptr %i.fl, i64 %i.et
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8
  %.val = load ptr, ptr %i.bg, align 8
  %.val217 = load i32, ptr %i.r, align 8
  %i.fp = call fastcc zeroext i1 @VULKAN_INTERNAL_CreateRenderTargetView(ptr noundef nonnull %0, ptr %.val, i32 %.val217, i32 noundef %.0180247, i32 noundef %.0179245, i32 noundef %i.fk, ptr noundef nonnull byval(%struct.VkComponentMapping) align 8 %i.g, ptr noundef %i.fo)
  br i1 %i.fp, label %.critedge, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call fastcc void @VULKAN_INTERNAL_DestroyTexture(ptr noundef nonnull %0, ptr noundef nonnull %i.f)
  br label %bb.cw

.critedge:                                        ; preds = %bb.ck, %bb.cm, %.lr.ph
  %i.fq = load i32, ptr %8, align 4               ; 2 uses
  %i.fr = and i32 %i.fq, 96
  %or.cond = icmp eq i32 %i.fr, 0
  %.pre254.pre255 = load ptr, ptr %i.eg, align 8  ; 2 uses
  br i1 %or.cond, label %bb.cq, label %bb.co

bb.co:                                            ; preds = %.critedge
  %i.fs = zext i32 %i.eo to i64
  %i.ft = getelementptr inbounds nuw [40 x i8], ptr %.pre254.pre255, i64 %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  %.val224 = load i32, ptr %1, align 4
  %.val225 = load i32, ptr %i.h, align 4
  %.val226 = load ptr, ptr %i.bg, align 8
  %.val227 = load i32, ptr %i.r, align 8
  %i.fv = call fastcc zeroext i1 @VULKAN_INTERNAL_CreateSubresourceView(ptr noundef nonnull %0, i32 %.val224, i32 %.val225, ptr %.val226, i32 %.val227, i32 noundef %.0180247, i32 noundef %.0179245, ptr noundef nonnull byval(%struct.VkComponentMapping) align 8 %i.g, ptr noundef nonnull %i.fu)
  br i1 %i.fv, label %._crit_edge, label %bb.cp

._crit_edge:                                      ; preds = %bb.co
  %.pre = load i32, ptr %8, align 4
  %.pre254.pre = load ptr, ptr %i.eg, align 8
  br label %bb.cq

bb.cp:                                            ; preds = %bb.co
  call fastcc void @VULKAN_INTERNAL_DestroyTexture(ptr noundef nonnull %0, ptr noundef nonnull %i.f)
  br label %bb.cw

bb.cq:                                            ; preds = %._crit_edge, %.critedge
  %.pre254 = phi ptr [ %.pre254.pre, %._crit_edge ], [ %.pre254.pre255, %.critedge ] ; 2 uses
  %i.fw = phi i32 [ %.pre, %._crit_edge ], [ %i.fq, %.critedge ]
  %i.fx = and i32 %i.fw, 4
  %.not208 = icmp eq i32 %i.fx, 0
  %.pre258 = zext i32 %i.eo to i64                ; 4 uses
  br i1 %.not208, label %.critedge212, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.fy = getelementptr inbounds nuw [40 x i8], ptr %.pre254, i64 %.pre258
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 32
  %.val220 = load i32, ptr %1, align 4
  %.val221 = load i32, ptr %i.h, align 4
  %.val222 = load ptr, ptr %i.bg, align 8
  %.val223 = load i32, ptr %i.r, align 8
  %i.ga = call fastcc zeroext i1 @VULKAN_INTERNAL_CreateSubresourceView(ptr noundef nonnull %0, i32 %.val220, i32 %.val221, ptr %.val222, i32 %.val223, i32 noundef %.0180247, i32 noundef %.0179245, ptr noundef nonnull byval(%struct.VkComponentMapping) align 8 %i.g, ptr noundef nonnull %i.fz)
  br i1 %i.ga, label %..critedge212_crit_edge, label %bb.cs

..critedge212_crit_edge:                          ; preds = %bb.cr
  %.pre253 = load ptr, ptr %i.eg, align 8
  br label %.critedge212

bb.cs:                                            ; preds = %bb.cr
  call fastcc void @VULKAN_INTERNAL_DestroyTexture(ptr noundef nonnull %0, ptr noundef nonnull %i.f)
  br label %bb.cw

.critedge212:                                     ; preds = %bb.cq, %..critedge212_crit_edge
  %i.gb = phi ptr [ %.pre253, %..critedge212_crit_edge ], [ %.pre254, %bb.cq ]
  %i.gc = getelementptr inbounds nuw [40 x i8], ptr %i.gb, i64 %.pre258
  store ptr %i.f, ptr %i.gc, align 8
  %i.gd = load ptr, ptr %i.eg, align 8
  %i.ge = getelementptr inbounds nuw [40 x i8], ptr %i.gd, i64 %.pre258
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  store i32 %.0180247, ptr %i.gf, align 8
  %i.gg = load ptr, ptr %i.eg, align 8
  %i.gh = getelementptr inbounds nuw [40 x i8], ptr %i.gg, i64 %.pre258
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 12
  store i32 %.0179245, ptr %i.gi, align 4
  %i.gj = add nuw i32 %.0179245, 1                ; 2 uses
  %i.gk = load i32, ptr %11, align 4              ; 3 uses
  %.not210 = icmp ult i32 %i.gj, %i.gk
  br i1 %.not210, label %.lr.ph, label %.critedge214, !llvm.loop !168

.critedge214:                                     ; preds = %.critedge212, %.preheader241
  %i.gl = phi i32 [ 0, %.preheader241 ], [ %i.gk, %.critedge212 ]
  %i.gm = add nuw i32 %.0180247, 1                ; 2 uses
  %exitcond252.not = icmp eq i32 %i.gm, %.
  br i1 %exitcond252.not, label %.critedge216, label %.preheader241, !llvm.loop !169

.critedge216:                                     ; preds = %.critedge214, %.preheader241.lr.ph, %bb.ci
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 1404
  %i.go = load i8, ptr %i.gn, align 4, !range !23, !noundef !24
  %i.gp = trunc nuw i8 %i.go to i1
  br i1 %i.gp, label %bb.ct, label %bb.cw

bb.ct:                                            ; preds = %.critedge216
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 1422
  %i.gr = load i8, ptr %i.gq, align 2, !range !23, !noundef !24
  %i.gs = trunc nuw i8 %i.gr to i1
  br i1 %i.gs, label %bb.cu, label %bb.cw

bb.cu:                                            ; preds = %bb.ct
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.gu = load i32, ptr %i.gt, align 4
  %i.gv = call zeroext i1 @SDL_HasProperty_REAL(i32 noundef %i.gu, ptr noundef nonnull @.str.335) #13
  br i1 %i.gv, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  store i32 1000128000, ptr %5, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.gw, align 8
  %i.gx = load i32, ptr %i.gt, align 4
  %i.gy = call ptr @SDL_GetStringProperty_REAL(i32 noundef %i.gx, ptr noundef nonnull @.str.335, ptr noundef null) #13
  %i.gz = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.gy, ptr %i.gz, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 10, ptr %i.ha, align 8
  %i.hb = load ptr, ptr %i.bg, align 8
  %i.hc = ptrtoint ptr %i.hb to i64
  %i.hd = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.hc, ptr %i.hd, align 8
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 2512
  %i.hf = load ptr, ptr %i.he, align 8
  %i.hg = load ptr, ptr %i.be, align 8
  %i.hh = call i32 %i.hf(ptr noundef %i.hg, ptr noundef nonnull %5) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cl, %bb.cn, %bb.cp, %bb.cs, %.critedge216, %bb.ct, %bb.cu, %bb.cv, %VkErrorMessages.exit235, %bb.au, %VkErrorMessages.exit231
  %.7 = phi ptr [ null, %VkErrorMessages.exit231 ], [ null, %bb.au ], [ null, %VkErrorMessages.exit235 ], [ %i.f, %.critedge216 ], [ %i.f, %bb.cv ], [ %i.f, %bb.cu ], [ %i.f, %bb.ct ], [ null, %bb.cs ], [ null, %bb.cp ], [ null, %bb.cn ], [ null, %bb.cl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret ptr %.7
}

declare zeroext i1 @SDL_CopyProperties_REAL(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @VULKAN_INTERNAL_TextureTransitionToDefaultUsage(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 0, 6) %2, ptr nofree noundef nonnull readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.VkImageMemoryBarrier, align 8 ; 17 uses
  %i.a = getelementptr i8, ptr %3, i64 76
  %.val = load i32, ptr %i.a, align 4             ; 6 uses
  %i.b = and i32 %.val, 1
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.b, label %VULKAN_INTERNAL_DefaultTextureUsageMode.exit

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %.val, 8
  %.not7.i = icmp eq i32 %i.c, 0
  br i1 %.not7.i, label %bb.c, label %VULKAN_INTERNAL_DefaultTextureUsageMode.exit

bb.c:                                             ; preds = %bb.b
  %i.d = and i32 %.val, 2
  %.not8.i = icmp eq i32 %i.d, 0
  br i1 %.not8.i, label %bb.d, label %VULKAN_INTERNAL_DefaultTextureUsageMode.exit

bb.d:                                             ; preds = %bb.c
  %i.e = and i32 %.val, 4
  %.not9.i = icmp eq i32 %i.e, 0
  br i1 %.not9.i, label %bb.e, label %VULKAN_INTERNAL_DefaultTextureUsageMode.exit

bb.e:                                             ; preds = %bb.d
  %i.f = and i32 %.val, 16
  %.not10.i = icmp eq i32 %i.f, 0
  br i1 %.not10.i, label %bb.f, label %VULKAN_INTERNAL_DefaultTextureUsageMode.exit

bb.f:                                             ; preds = %bb.e
  %i.g = and i32 %.val, 96
  %or.cond.i = icmp eq i32 %i.g, 0
  br i1 %or.cond.i, label %bb.g, label %VULKAN_INTERNAL_DefaultTextureUsageMode.exit

bb.g:                                             ; preds = %bb.f
  tail call void (i32, ptr, ...) @SDL_LogError_REAL(i32 noundef 9, ptr noundef nonnull @.str.342) #13
  br label %VULKAN_INTERNAL_DefaultTextureUsageMode.exit

VULKAN_INTERNAL_DefaultTextureUsageMode.exit:     ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi i64 [ 0, %bb.g ], [ 0, %bb.a ], [ 1, %bb.b ], [ 4, %bb.c ], [ 5, %bb.d ], [ 2, %bb.e ], [ 3, %bb.f ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.i = load i32, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.k = load i32, ptr %i.j, align 4
  %i.l = getelementptr i8, ptr %3, i64 24
  %.val.i = load ptr, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %3, i64 56
  %.val6.i = load i32, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store i32 45, ptr %4, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 16, i1 false)
  store i32 -1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 36
  store i32 -1, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %.val.i, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i32 %.val6.i, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 52
  store i32 0, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i32 %i.i, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 60
  store i32 0, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i32 %i.k, ptr %i.w, align 8
  switch i32 %2, label %default.unreachable4 [
    i32 0, label %switch.lookup
    i32 1, label %.sink.split.i.i
    i32 2, label %bb.h
    i32 3, label %bb.i
    i32 4, label %bb.j
    i32 5, label %bb.k
  ]

bb.h:                                             ; preds = %VULKAN_INTERNAL_DefaultTextureUsageMode.exit
  br label %.sink.split.i.i

bb.i:                                             ; preds = %VULKAN_INTERNAL_DefaultTextureUsageMode.exit
  br label %.sink.split.i.i

bb.j:                                             ; preds = %VULKAN_INTERNAL_DefaultTextureUsageMode.exit
  br label %.sink.split.i.i

bb.k:                                             ; preds = %VULKAN_INTERNAL_DefaultTextureUsageMode.exit
  br label %.sink.split.i.i

default.unreachable4:                             ; preds = %VULKAN_INTERNAL_DefaultTextureUsageMode.exit
  unreachable

.sink.split.i.i:                                  ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %VULKAN_INTERNAL_DefaultTextureUsageMode.exit
  %.sink4.i.i = phi i32 [ 4096, %bb.h ], [ 32, %bb.i ], [ 32, %bb.k ], [ 32, %bb.j ], [ 2048, %VULKAN_INTERNAL_DefaultTextureUsageMode.exit ]
  %.sink.ph.i.i = phi i32 [ 7, %bb.h ], [ 5, %bb.i ], [ 1, %bb.k ], [ 1, %bb.j ], [ 6, %VULKAN_INTERNAL_DefaultTextureUsageMode.exit ]
  %.027.ph.i.i = phi i32 [ 4096, %bb.h ], [ 136, %bb.i ], [ 2048, %bb.k ], [ 136, %bb.j ], [ 4096, %VULKAN_INTERNAL_DefaultTextureUsageMode.exit ]
  store i32 %.sink4.i.i, ptr %i.o, align 8
  br label %switch.lookup

switch.lookup:                                    ; preds = %.sink.split.i.i, %VULKAN_INTERNAL_DefaultTextureUsageMode.exit
  %.sink.i.i = phi i32 [ %2, %VULKAN_INTERNAL_DefaultTextureUsageMode.exit ], [ %.sink.ph.i.i, %.sink.split.i.i ]
  %.027.i.i = phi i32 [ 1, %VULKAN_INTERNAL_DefaultTextureUsageMode.exit ], [ %.027.ph.i.i, %.sink.split.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %.sink.i.i, ptr %i.x, align 8
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.VULKAN_INTERNAL_TextureSubresourceTransitionToDefaultUsage.34, i64 %.0.i
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i32
  %switch.gep5 = getelementptr inbounds nuw i8, ptr @switch.table.VULKAN_INTERNAL_TextureSubresourceTransitionToDefaultUsage.35, i64 %.0.i
  %switch.load6 = load i8, ptr %switch.gep5, align 1
  %switch.ext7 = zext i8 %switch.load6 to i32
  %switch.gep8 = getelementptr inbounds nuw [2 x i8], ptr @switch.table.VULKAN_INTERNAL_TextureSubresourceTransitionToDefaultUsage.36, i64 %.0.i
  %switch.load9 = load i16, ptr %switch.gep8, align 2
  %switch.ext10 = zext i16 %switch.load9 to i32
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 %switch.ext, ptr %i.z, align 4
  store i32 %switch.ext7, ptr %i.y, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2744
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ab(ptr noundef %i.ad, i32 noundef %.027.i.i, i32 noundef %switch.ext10, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 1, ptr noundef nonnull %4) #13, !inline_history !17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @VULKAN_INTERNAL_DestroyTexture(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.CheckOneFramebufferForRemovalData, align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %.not69 = icmp eq i32 %i.b, 0
  br i1 %.not69, label %._crit_edge68, label %.lr.ph67

.lr.ph67:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
end_hunk_0
