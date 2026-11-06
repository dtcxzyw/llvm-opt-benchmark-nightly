Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/raudio?download=true
inline.NumInlined: 3136
inline.NumDeleted: 390
loop-unroll.NumCompletelyUnrolled: 97
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 300
begin_hunk_0_@drmp3__full_read_and_close_s16:bb.a
  %.not66 = icmp eq ptr %2, null
  br i1 %.not66, label %bb.t, label %bb.s

bb.s:                                             ; preds = %drmp3_uninit.exit
  store i64 %.357.ph, ptr %2, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %drmp3_uninit.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  ret ptr %.3.ph
}

; Function Attrs: nounwind uwtable
define hidden ptr @drmp3_open_memory_and_read_pcm_frames_f32(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #8 {
bb.a:
  %5 = alloca %struct.drmp3, align 8              ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32376) %5, i8 0, i64 32376, i1 false)
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq i64 %1, 0
  %or.cond.i.i = or i1 %i.a, %i.b
  br i1 %or.cond.i.i, label %drmp3_init_memory.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 32352
  store ptr %0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32360 ; 2 uses
  store i64 %1, ptr %i.d, align 8
  %i.e = call fastcc i32 @drmp3_init_internal(ptr noundef nonnull %5, ptr noundef nonnull @drmp3__on_read_memory, ptr noundef nonnull @drmp3__on_seek_memory, ptr noundef nonnull @drmp3__on_tell_memory, ptr noundef null, ptr noundef nonnull %5, ptr noundef null, ptr noundef readonly %4)
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %drmp3_init_memory.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 32256
  %i.h = load i64, ptr %i.g, align 8
  store i64 %i.h, ptr %i.d, align 8
  %i.i = call fastcc ptr @drmp3__full_read_and_close_f32(ptr noundef %5, ptr noundef %2, ptr noundef %3)
  br label %drmp3_init_memory.exit.thread

drmp3_init_memory.exit.thread:                    ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ %i.i, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #61
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden ptr @drmp3_open_memory_and_read_pcm_frames_s16(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #8 {
bb.a:
  %5 = alloca %struct.drmp3, align 8              ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32376) %5, i8 0, i64 32376, i1 false)
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq i64 %1, 0
  %or.cond.i.i = or i1 %i.a, %i.b
  br i1 %or.cond.i.i, label %drmp3_init_memory.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 32352
  store ptr %0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32360 ; 2 uses
  store i64 %1, ptr %i.d, align 8
  %i.e = call fastcc i32 @drmp3_init_internal(ptr noundef nonnull %5, ptr noundef nonnull @drmp3__on_read_memory, ptr noundef nonnull @drmp3__on_seek_memory, ptr noundef nonnull @drmp3__on_tell_memory, ptr noundef null, ptr noundef nonnull %5, ptr noundef null, ptr noundef readonly %4)
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %drmp3_init_memory.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 32256
  %i.h = load i64, ptr %i.g, align 8
  store i64 %i.h, ptr %i.d, align 8
  %i.i = call fastcc ptr @drmp3__full_read_and_close_s16(ptr noundef %5, ptr noundef %2, ptr noundef %3)
  br label %drmp3_init_memory.exit.thread

drmp3_init_memory.exit.thread:                    ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ %i.i, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #61
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden ptr @drmp3_open_file_and_read_pcm_frames_f32(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #8 {
bb.a:
  %4 = alloca %struct.drmp3, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #61
  %i.a = call i32 @drmp3_init_file(ptr noundef nonnull %4, ptr noundef %0, ptr noundef %3)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = call fastcc ptr @drmp3__full_read_and_close_f32(ptr noundef %4, ptr noundef %1, ptr noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #61
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden ptr @drmp3_open_file_and_read_pcm_frames_s16(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #8 {
bb.a:
  %4 = alloca %struct.drmp3, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #61
  %i.a = call i32 @drmp3_init_file(ptr noundef nonnull %4, ptr noundef %0, ptr noundef %3)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = call fastcc ptr @drmp3__full_read_and_close_s16(ptr noundef %4, ptr noundef %1, ptr noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #61
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden ptr @drmp3_malloc(i64 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #8 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %1, align 8
  %i.d = tail call ptr %i.b(i64 noundef %0, ptr noundef %i.c) #61, !inline_history !1115
  br label %drmp3__malloc_from_callbacks.exit

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not12.i = icmp eq ptr %i.f, null
  br i1 %.not12.i, label %drmp3__malloc_from_callbacks.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr %1, align 8
  %i.h = tail call ptr %i.f(ptr noundef null, i64 noundef %0, ptr noundef %i.g) #61, !inline_history !1115
  br label %drmp3__malloc_from_callbacks.exit

bb.f:                                             ; preds = %bb.a
  %i.i = tail call noalias noundef ptr @malloc(i64 noundef %0) #74
  br label %drmp3__malloc_from_callbacks.exit

drmp3__malloc_from_callbacks.exit:                ; preds = %bb.e, %bb.d, %bb.c, %bb.f
  %.0 = phi ptr [ %i.i, %bb.f ], [ null, %bb.d ], [ %i.d, %bb.c ], [ %i.h, %bb.e ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define internal noalias noundef ptr @drmp3__malloc_default(i64 noundef %0, ptr nofree readnone captures(none) %1) #41 {
bb.a:
  %i.a = tail call noalias ptr @malloc(i64 noundef %0) #74
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define hidden void @drmp3_free(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #8 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %drmp3__free_from_callbacks.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %drmp3__free_from_callbacks.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr %1, align 8
  tail call void %i.c(ptr noundef nonnull %0, ptr noundef %i.d) #61, !inline_history !13
  br label %drmp3__free_from_callbacks.exit

bb.e:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %0) #61
  br label %drmp3__free_from_callbacks.exit

drmp3__free_from_callbacks.exit:                  ; preds = %bb.d, %bb.c, %bb.b, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @drmp3__free_default(ptr noundef captures(none) %0, ptr nofree readnone captures(none) %1) #43 {
bb.a:
  tail call void @free(ptr noundef %0) #61
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef i32 @qoa_encode_header(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 4              ; 4 uses
  store <4 x i8> <i8 113, i8 111, i8 97, i8 102>, ptr %1, align 1
  %2 = lshr i32 %i.b, 24
  %3 = trunc nuw i32 %2 to i8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %3, ptr %i.c, align 1
  %4 = lshr i32 %i.b, 16
  %5 = trunc i32 %4 to i8
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %5, ptr %6, align 1
  %7 = lshr i32 %i.b, 8
  %8 = trunc i32 %7 to i8
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 %8, ptr %9, align 1
  %10 = trunc i32 %i.b to i8
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 %10, ptr %11, align 1
  ret i32 8
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden i32 @qoa_encode_frame(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3) local_unnamed_addr #20 {
bb.a:
  %i.a = alloca [8 x i32], align 16               ; 4 uses
  %.sroa.0148 = alloca [4 x i32], align 4         ; 5 uses
  %.sroa.0 = alloca [4 x i32], align 4            ; 13 uses
  %i.b = load i32, ptr %1, align 4                ; 7 uses
  %i.c = add i32 %2, 19
  %i.d = udiv i32 %i.c, 20
  %i.e = shl i32 %i.b, 4
  %i.f = or disjoint i32 %i.e, 8
  %i.g = shl nuw nsw i32 %i.d, 3
  %i.h = mul i32 %i.g, %i.b
  %i.i = add i32 %i.f, %i.h                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.j = zext i32 %i.b to i64                     ; 3 uses
  %i.k = shl i64 %i.j, 56
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %i.n = zext i32 %i.m to i64
  %i.o = shl nuw i64 %i.n, 32
  %i.p = or i64 %i.o, %i.k                        ; 2 uses
  %i.q = zext i32 %2 to i64
  %i.r = shl nuw nsw i64 %i.q, 16
  %i.s = zext i32 %i.i to i64
  %i.t = or i64 %i.r, %i.s                        ; 3 uses
  %i.u = or i64 %i.p, %i.t                        ; 2 uses
  %i.v = lshr i64 %i.p, 56
  %i.w = trunc nuw i64 %i.v to i8
  store i8 %i.w, ptr %3, align 1
  %i.x = lshr i32 %i.m, 16
  %i.y = trunc i32 %i.x to i8
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 %i.y, ptr %i.z, align 1
  %i.aa = lshr i64 %i.u, 40
  %i.ab = trunc i64 %i.aa to i8
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 %i.ab, ptr %i.ac, align 1
  %i.ad = lshr i64 %i.u, 32
  %i.ae = trunc i64 %i.ad to i8
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 3
  store i8 %i.ae, ptr %i.af, align 1
  %i.ag = lshr i64 %i.t, 24
  %i.ah = trunc i64 %i.ag to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 %i.ah, ptr %i.ai, align 1
  %i.aj = lshr i64 %i.t, 16
  %i.ak = trunc i64 %i.aj to i8
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 5
  store i8 %i.ak, ptr %i.al, align 1
  %i.am = lshr i32 %i.i, 8
  %i.an = trunc i32 %i.am to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 6
  store i8 %i.an, ptr %i.ao, align 1
  %i.ap = trunc i32 %i.i to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 7
  store i8 %i.ap, ptr %i.aq, align 1
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.preheader166, label %.preheader167.lr.ph

.preheader167.lr.ph:                              ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 12
  br label %.preheader167

.preheader167:                                    ; preds = %.preheader167.lr.ph, %.preheader167
  %indvars.iv = phi i64 [ 0, %.preheader167.lr.ph ], [ %indvars.iv.next, %.preheader167 ] ; 2 uses
  %.0158171 = phi i32 [ 8, %.preheader167.lr.ph ], [ %i.cp, %.preheader167 ] ; 3 uses
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.ar, i64 %indvars.iv ; 8 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load i32, ptr %i.as, align 4
  %i.av = load i32, ptr %i.at, align 4
  %i.aw = shl i32 %i.au, 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.ay = load i32, ptr %i.ax, align 4            ; 2 uses
  %i.az = and i32 %i.ay, 65535
  %i.ba = or disjoint i32 %i.aw, %i.az
  %i.bb = zext i32 %i.ba to i64                   ; 3 uses
  %i.bc = shl i32 %i.av, 16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.as, i64 20
  %i.be = load i32, ptr %i.bd, align 4            ; 2 uses
  %i.bf = and i32 %i.be, 65535
  %i.bg = or disjoint i32 %i.bc, %i.bf
  %i.bh = zext i32 %i.bg to i64                   ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.bj = load i32, ptr %i.bi, align 4            ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.bl = load i32, ptr %i.bk, align 4            ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  %i.bn = load i32, ptr %i.bm, align 4            ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.as, i64 28
  %i.bp = load i32, ptr %i.bo, align 4            ; 2 uses
  %i.bq = zext i32 %.0158171 to i64
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 %i.bq ; 8 uses
  %i.bs = add i32 %.0158171, 8
  %i.bt = lshr i64 %i.bb, 24
  %i.bu = trunc nuw i64 %i.bt to i8
  store i8 %i.bu, ptr %i.br, align 1
  %i.bv = lshr i64 %i.bb, 16
  %i.bw = trunc i64 %i.bv to i8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  store i8 %i.bw, ptr %i.bx, align 1
  %i.by = lshr i64 %i.bb, 8
  %i.bz = trunc i64 %i.by to i8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  store i8 %i.bz, ptr %i.ca, align 1
  %i.cb = trunc i32 %i.ay to i8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.br, i64 3
  store i8 %i.cb, ptr %i.cc, align 1
  %i.cd = lshr i32 %i.bj, 8
  %i.ce = trunc i32 %i.cd to i8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store i8 %i.ce, ptr %i.cf, align 1
  %i.cg = trunc i32 %i.bj to i8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.br, i64 5
  store i8 %i.cg, ptr %i.ch, align 1
  %i.ci = lshr i32 %i.bn, 8
  %i.cj = trunc i32 %i.ci to i8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.br, i64 6
  store i8 %i.cj, ptr %i.ck, align 1
  %i.cl = trunc i32 %i.bn to i8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.br, i64 7
  store i8 %i.cl, ptr %i.cm, align 1
  %i.cn = zext i32 %i.bs to i64
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 %i.cn ; 8 uses
  %i.cp = add i32 %.0158171, 16                   ; 3 uses
  %i.cq = lshr i64 %i.bh, 24
  %i.cr = trunc nuw i64 %i.cq to i8
  store i8 %i.cr, ptr %i.co, align 1
  %i.cs = lshr i64 %i.bh, 16
  %i.ct = trunc i64 %i.cs to i8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  store i8 %i.ct, ptr %i.cu, align 1
  %i.cv = lshr i64 %i.bh, 8
  %i.cw = trunc i64 %i.cv to i8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.co, i64 2
  store i8 %i.cw, ptr %i.cx, align 1
  %i.cy = trunc i32 %i.be to i8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.co, i64 3
  store i8 %i.cy, ptr %i.cz, align 1
  %i.da = lshr i32 %i.bl, 8
  %i.db = trunc i32 %i.da to i8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  store i8 %i.db, ptr %i.dc, align 1
  %i.dd = trunc i32 %i.bl to i8
  %i.de = getelementptr inbounds nuw i8, ptr %i.co, i64 5
  store i8 %i.dd, ptr %i.de, align 1
  %i.df = lshr i32 %i.bp, 8
  %i.dg = trunc i32 %i.df to i8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.co, i64 6
  store i8 %i.dg, ptr %i.dh, align 1
  %i.di = trunc i32 %i.bp to i8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.co, i64 7
  store i8 %i.di, ptr %i.dj, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.j
  br i1 %exitcond.not, label %.preheader166.thread, label %.preheader167

.preheader166:                                    ; preds = %bb.a
  %.not242 = icmp eq i32 %2, 0
  br i1 %.not242, label %._crit_edge214, label %.preheader

.preheader166.thread:                             ; preds = %.preheader167
  %.not242276 = icmp eq i32 %2, 0
  br i1 %.not242276, label %._crit_edge214, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader166.thread
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.12..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 12
  %.sroa.0.4..sroa_idx289 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  %.sroa.0.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 8
  %.sroa.0.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  %.sroa.0.12..sroa_idx290 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 12
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %.0105213.us = phi i32 [ %i.gy, %._crit_edge.us ], [ 0, %.preheader.us.preheader ] ; 4 uses
  %.1159212.us = phi i32 [ %i.gx, %._crit_edge.us ], [ %i.cp, %.preheader.us.preheader ]
  %i.dl = sub nuw i32 %2, %.0105213.us
  %..i.us = tail call i32 @llvm.smin.i32(i32 %i.dl, i32 20) ; 2 uses
  %i.dm = mul i32 %.0105213.us, %i.b
  %i.dn = add i32 %..i.us, %.0105213.us
  %i.do = mul i32 %i.dn, %i.b
  %i.dp = sub nsw i32 20, %..i.us
  %i.dq = mul nuw nsw i32 %i.dp, 3
  %i.dr = zext nneg i32 %i.dq to i64
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %.split203.us233
  %indvars.iv259 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next260, %.split203.us233 ] ; 4 uses
  %.2160209.us = phi i32 [ %.1159212.us, %.preheader.us ], [ %i.gx, %.split203.us233 ] ; 2 uses
  %i.ds = trunc nuw i64 %indvars.iv259 to i32     ; 2 uses
  %i.dt = add i32 %i.dm, %i.ds                    ; 2 uses
  %i.du = add i32 %i.do, %i.ds                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0148)
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv259 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4            ; 2 uses
  %i.dx = getelementptr inbounds nuw [32 x i8], ptr %i.dk, i64 %indvars.iv259 ; 7 uses
  %.sroa.15.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.dx, i64 16 ; 2 uses
  %.sroa.15.0.copyload.us = load i32, ptr %.sroa.15.0..sroa_idx.us, align 4 ; 2 uses
  %.sroa.19.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.dx, i64 20 ; 2 uses
  %.sroa.19.0.copyload.us = load i32, ptr %.sroa.19.0..sroa_idx.us, align 4 ; 2 uses
  %.sroa.23.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.dx, i64 24 ; 2 uses
  %.sroa.23.0.copyload.us = load i32, ptr %.sroa.23.0..sroa_idx.us, align 4 ; 2 uses
  %.sroa.27.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.dx, i64 28 ; 2 uses
  %.sroa.27.0.copyload.us = load i32, ptr %.sroa.27.0..sroa_idx.us, align 4 ; 2 uses
  %i.dy = icmp slt i32 %i.dt, %i.du
  br i1 %i.dy, label %.lr.ph.us.us, label %.split203.us233.loopexit245

.split203.us233.loopexit245:                      ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.dz = and i32 %i.dw, 15                       ; 2 uses
  %i.ea = zext nneg i32 %i.dz to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0148, ptr noundef nonnull align 4 dereferenceable(16) %i.dx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %.split203.us233

.lr.ph.us.us:                                     ; preds = %bb.b, %bb.f
  %.097201.us.us = phi i32 [ %i.gt, %bb.f ], [ 0, %bb.b ] ; 2 uses
  %.098200.us.us = phi i32 [ %.199.us.us, %bb.f ], [ 0, %bb.b ]
  %.0100199.us.us = phi i64 [ %.1101.us.us, %bb.f ], [ 0, %bb.b ]
  %.0102198.us.us = phi i64 [ %.1103.us.us, %bb.f ], [ -1, %bb.b ] ; 3 uses
  %.sroa.4.0197.us.us = phi i32 [ %.sroa.4.1.us.us, %bb.f ], [ undef, %bb.b ]
  %.sroa.5.0196.us.us = phi i32 [ %.sroa.5.1.us.us, %bb.f ], [ undef, %bb.b ]
  %.sroa.6.0195.us.us = phi i32 [ %.sroa.6.1.us.us, %bb.f ], [ undef, %bb.b ]
  %.sroa.7.0194.us.us = phi i32 [ %.sroa.7.1.us.us, %bb.f ], [ undef, %bb.b ]
  %i.eb = add nsw i32 %i.dw, %.097201.us.us
  %i.ec = and i32 %i.eb, 15                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 4 dereferenceable(16) %i.dx, i64 16, i1 false)
  %i.ed = zext nneg i32 %i.ec to i64              ; 3 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr @qoa_reciprocal_tab, i64 %i.ed
  %i.ef = load i32, ptr %i.ee, align 4
  %i.eg = getelementptr inbounds nuw [32 x i8], ptr @qoa_dequant_tab, i64 %i.ed
  %.sroa.0.12..sroa.0.12..sroa.0.12..sroa_idx.promoted.us.us = load i32, ptr %.sroa.0.12..sroa_idx, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.us.us
  %.0.i114193.us.us = phi i32 [ %.sroa.0.12..sroa.0.12..sroa.0.12..sroa_idx.promoted.us.us, %.lr.ph.us.us ], [ %.0.i114.us.us, %bb.d ] ; 2 uses
  %.0179.us.us = phi i32 [ %i.dt, %.lr.ph.us.us ], [ %i.gq, %bb.d ] ; 2 uses
  %.094178.us.us = phi i64 [ 0, %.lr.ph.us.us ], [ %i.fz, %bb.d ]
  %.095177.us.us = phi i64 [ %i.ed, %.lr.ph.us.us ], [ %i.gp, %bb.d ] ; 2 uses
  %.sroa.15.0176.us.us = phi i32 [ %.sroa.15.0.copyload.us, %.lr.ph.us.us ], [ %i.ge, %bb.d ] ; 5 uses
  %.sroa.19.0175.us.us = phi i32 [ %.sroa.19.0.copyload.us, %.lr.ph.us.us ], [ %i.gh, %bb.d ] ; 5 uses
  %.sroa.23.0174.us.us = phi i32 [ %.sroa.23.0.copyload.us, %.lr.ph.us.us ], [ %i.gk, %bb.d ] ; 5 uses
  %.sroa.27.0173.us.us = phi i32 [ %.sroa.27.0.copyload.us, %.lr.ph.us.us ], [ %i.gn, %bb.d ] ; 5 uses
  %i.eh = sext i32 %.0179.us.us to i64
  %i.ei = getelementptr inbounds [2 x i8], ptr %0, i64 %i.eh
  %i.ej = load i16, ptr %i.ei, align 2
  %i.ek = sext i16 %i.ej to i32                   ; 3 uses
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..us.us = load i32, ptr %.sroa.0, align 4 ; 2 uses
  %i.el = mul nsw i32 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..us.us, %.sroa.15.0176.us.us
  %.sroa.0.4..sroa.0.4..sroa.0.4..sroa.0.4..sroa.0.4..us.us = load i32, ptr %.sroa.0.4..sroa_idx289, align 4 ; 2 uses
  %i.em = mul nsw i32 %.sroa.0.4..sroa.0.4..sroa.0.4..sroa.0.4..sroa.0.4..us.us, %.sroa.19.0175.us.us
  %i.en = add nsw i32 %i.em, %i.el
  %.sroa.0.8..sroa.0.8..sroa.0.8..sroa.0.8..sroa.0.8..us.us = load i32, ptr %.sroa.0.8..sroa_idx, align 4 ; 2 uses
  %i.eo = mul nsw i32 %.sroa.0.8..sroa.0.8..sroa.0.8..sroa.0.8..sroa.0.8..us.us, %.sroa.23.0174.us.us
  %i.ep = add nsw i32 %i.en, %i.eo
  %i.eq = mul nsw i32 %.0.i114193.us.us, %.sroa.27.0173.us.us
  %i.er = add nsw i32 %i.ep, %i.eq
  %i.es = ashr i32 %i.er, 13                      ; 3 uses
  %i.et = sub nsw i32 %i.ek, %i.es
  %i.eu = mul nsw i32 %i.et, %i.ef
  %i.ev = add nsw i32 %i.eu, 32768
  %i.ew = ashr i32 %i.ev, 16                      ; 2 uses
  %i.ex = tail call i32 @llvm.scmp.i32.i32(i32 %i.ek, i32 %i.es)
  %i.ey = add nsw i32 %i.ew, %i.ex
  %i.ez = tail call i32 @llvm.scmp.i32.i32(i32 0, i32 %i.ew)
  %i.fa = add nsw i32 %i.ey, %i.ez
  %i.fb = tail call i32 @llvm.smax.i32(i32 %i.fa, i32 -8)
  %.0.i.us.us = tail call i32 @llvm.smin.i32(i32 %i.fb, i32 8)
  %i.fc = sext i32 %.0.i.us.us to i64
  %i.fd = getelementptr [4 x i8], ptr @qoa_quant_tab, i64 %i.fc
  %i.fe = getelementptr i8, ptr %i.fd, i64 32
  %i.ff = load i32, ptr %i.fe, align 4
  %i.fg = sext i32 %i.ff to i64                   ; 2 uses
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.fg
  %i.fi = load i32, ptr %i.fh, align 4            ; 2 uses
  %i.fj = add nsw i32 %i.es, %i.fi
  %i.fk = tail call i32 @llvm.smax.i32(i32 %i.fj, i32 -32768)
  %.0.i114.us.us = tail call range(i32 -32768, 32768) i32 @llvm.smin.i32(i32 %i.fk, i32 32767) ; 3 uses
  %i.fl = mul nsw i32 %.sroa.15.0176.us.us, %.sroa.15.0176.us.us
  %i.fm = mul nsw i32 %.sroa.19.0175.us.us, %.sroa.19.0175.us.us
  %i.fn = mul nsw i32 %.sroa.23.0174.us.us, %.sroa.23.0174.us.us
  %i.fo = mul nsw i32 %.sroa.27.0173.us.us, %.sroa.27.0173.us.us
  %i.fp = add nuw nsw i32 %i.fn, %i.fo
  %i.fq = add nuw nsw i32 %i.fp, %i.fm
  %i.fr = add nuw nsw i32 %i.fq, %i.fl
  %i.fs = lshr i32 %i.fr, 18
  %spec.store.select.us.us = tail call i32 @llvm.usub.sat.i32(i32 %i.fs, i32 2303) ; 2 uses
  %i.ft = sub nsw i32 %i.ek, %.0.i114.us.us
  %i.fu = sext i32 %i.ft to i64                   ; 2 uses
  %i.fv = mul nsw i64 %i.fu, %i.fu
  %i.fw = mul nuw nsw i32 %spec.store.select.us.us, %spec.store.select.us.us
  %i.fx = zext nneg i32 %i.fw to i64
  %i.fy = add i64 %.094178.us.us, %i.fx
  %i.fz = add i64 %i.fy, %i.fv                    ; 4 uses
  %.not.us.us = icmp ugt i64 %i.fz, %.0102198.us.us
  br i1 %.not.us.us, label %.thread.us.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ga = ashr i32 %i.fi, 4                       ; 5 uses
  %i.gb = sub nsw i32 0, %i.ga                    ; 4 uses
  %i.gc = icmp slt i32 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..us.us, 0
  %i.gd = select i1 %i.gc, i32 %i.gb, i32 %i.ga
  %i.ge = add nsw i32 %i.gd, %.sroa.15.0176.us.us ; 2 uses
  %i.gf = icmp slt i32 %.sroa.0.4..sroa.0.4..sroa.0.4..sroa.0.4..sroa.0.4..us.us, 0
  %i.gg = select i1 %i.gf, i32 %i.gb, i32 %i.ga
  %i.gh = add nsw i32 %i.gg, %.sroa.19.0175.us.us ; 2 uses
  %i.gi = icmp slt i32 %.sroa.0.8..sroa.0.8..sroa.0.8..sroa.0.8..sroa.0.8..us.us, 0
  %i.gj = select i1 %i.gi, i32 %i.gb, i32 %i.ga
  %i.gk = add nsw i32 %i.gj, %.sroa.23.0174.us.us ; 2 uses
  %i.gl = icmp slt i32 %.0.i114193.us.us, 0
  %i.gm = select i1 %i.gl, i32 %i.gb, i32 %i.ga
  %i.gn = add nsw i32 %i.gm, %.sroa.27.0173.us.us ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.4..sroa_idx, i64 12, i1 false)
  store i32 %.0.i114.us.us, ptr %.sroa.0.12..sroa_idx290, align 4
  %i.go = shl i64 %.095177.us.us, 3
  %i.gp = or i64 %i.go, %i.fg                     ; 2 uses
  %i.gq = add i32 %.0179.us.us, %i.b              ; 2 uses
  %i.gr = icmp slt i32 %i.gq, %i.du
  br i1 %i.gr, label %bb.c, label %.thread.us.us

.thread.us.us:                                    ; preds = %bb.c, %bb.d
  %.sroa.27.0.lcssa.us.us = phi i32 [ %i.gn, %bb.d ], [ %.sroa.27.0173.us.us, %bb.c ]
  %.sroa.23.0.lcssa.us.us = phi i32 [ %i.gk, %bb.d ], [ %.sroa.23.0174.us.us, %bb.c ]
  %.sroa.19.0.lcssa.us.us = phi i32 [ %i.gh, %bb.d ], [ %.sroa.19.0175.us.us, %bb.c ]
  %.sroa.15.0.lcssa.us.us = phi i32 [ %i.ge, %bb.d ], [ %.sroa.15.0176.us.us, %bb.c ]
  %.095.lcssa.us.us = phi i64 [ %i.gp, %bb.d ], [ %.095177.us.us, %bb.c ]
  %i.gs = icmp ult i64 %i.fz, %.0102198.us.us
  br i1 %i.gs, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.thread.us.us
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0148, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0, i64 16, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread.us.us
  %.sroa.7.1.us.us = phi i32 [ %.sroa.27.0.lcssa.us.us, %bb.e ], [ %.sroa.7.0194.us.us, %.thread.us.us ] ; 2 uses
  %.sroa.6.1.us.us = phi i32 [ %.sroa.23.0.lcssa.us.us, %bb.e ], [ %.sroa.6.0195.us.us, %.thread.us.us ] ; 2 uses
  %.sroa.5.1.us.us = phi i32 [ %.sroa.19.0.lcssa.us.us, %bb.e ], [ %.sroa.5.0196.us.us, %.thread.us.us ] ; 2 uses
  %.sroa.4.1.us.us = phi i32 [ %.sroa.15.0.lcssa.us.us, %bb.e ], [ %.sroa.4.0197.us.us, %.thread.us.us ] ; 2 uses
  %.1103.us.us = phi i64 [ %i.fz, %bb.e ], [ %.0102198.us.us, %.thread.us.us ]
  %.1101.us.us = phi i64 [ %.095.lcssa.us.us, %bb.e ], [ %.0100199.us.us, %.thread.us.us ] ; 2 uses
  %.199.us.us = phi i32 [ %i.ec, %bb.e ], [ %.098200.us.us, %.thread.us.us ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %i.gt = add nuw nsw i32 %.097201.us.us, 1       ; 2 uses
  %exitcond258.not = icmp eq i32 %i.gt, 16
  br i1 %exitcond258.not, label %.split203.us233, label %.lr.ph.us.us

.split203.us233:                                  ; preds = %bb.f, %.split203.us233.loopexit245
  %.us-phi.us = phi i32 [ %.sroa.27.0.copyload.us, %.split203.us233.loopexit245 ], [ %.sroa.7.1.us.us, %bb.f ]
  %.us-phi204.us = phi i32 [ %.sroa.23.0.copyload.us, %.split203.us233.loopexit245 ], [ %.sroa.6.1.us.us, %bb.f ]
  %.us-phi205.us = phi i32 [ %.sroa.19.0.copyload.us, %.split203.us233.loopexit245 ], [ %.sroa.5.1.us.us, %bb.f ]
  %.us-phi206.us = phi i32 [ %.sroa.15.0.copyload.us, %.split203.us233.loopexit245 ], [ %.sroa.4.1.us.us, %bb.f ]
  %.us-phi207.us = phi i64 [ %i.ea, %.split203.us233.loopexit245 ], [ %.1101.us.us, %bb.f ]
  %.us-phi208.us = phi i32 [ %i.dz, %.split203.us233.loopexit245 ], [ %.199.us.us, %bb.f ]
  store i32 %.us-phi208.us, ptr %i.dv, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0148, i64 16, i1 false)
  store i32 %.us-phi206.us, ptr %.sroa.15.0..sroa_idx.us, align 4
  store i32 %.us-phi205.us, ptr %.sroa.19.0..sroa_idx.us, align 4
  store i32 %.us-phi204.us, ptr %.sroa.23.0..sroa_idx.us, align 4
  store i32 %.us-phi.us, ptr %.sroa.27.0..sroa_idx.us, align 4
  %i.gu = shl i64 %.us-phi207.us, %i.dr
  %i.gv = zext i32 %.2160209.us to i64
  %i.gw = getelementptr inbounds nuw i8, ptr %3, i64 %i.gv
  %i.gx = add i32 %.2160209.us, 8                 ; 3 uses
  %4 = bitcast i64 %i.gu to <8 x i8>
  %5 = shufflevector <8 x i8> %4, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %5, ptr %i.gw, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0148)
  %indvars.iv.next260 = add nuw nsw i64 %indvars.iv259, 1 ; 2 uses
  %exitcond263.not = icmp eq i64 %indvars.iv.next260, %i.j
  br i1 %exitcond263.not, label %._crit_edge.us, label %bb.b

._crit_edge.us:                                   ; preds = %.split203.us233
  %i.gy = add i32 %.0105213.us, 20                ; 2 uses
  %i.gz = icmp ult i32 %i.gy, %2
  br i1 %i.gz, label %.preheader.us, label %._crit_edge214

.preheader:                                       ; preds = %.preheader166, %.preheader
  %.0105213 = phi i32 [ %i.ha, %.preheader ], [ 0, %.preheader166 ]
  %i.ha = add i32 %.0105213, 20                   ; 2 uses
  %i.hb = icmp ult i32 %i.ha, %2
  br i1 %i.hb, label %.preheader, label %._crit_edge214

._crit_edge214:                                   ; preds = %._crit_edge.us, %.preheader, %.preheader166.thread, %.preheader166
  %.1159.lcssa = phi i32 [ 8, %.preheader166 ], [ %i.cp, %.preheader166.thread ], [ 8, %.preheader ], [ %i.gx, %._crit_edge.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  ret i32 %.1159.lcssa
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define hidden noalias noundef ptr @qoa_encode(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #49 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4              ; 3 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = add i32 %i.e, -16777216
  %or.cond = icmp ult i32 %i.f, -16777215
  br i1 %or.cond, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %1, align 4                ; 2 uses
  %i.h = add i32 %i.g, -9
  %or.cond58 = icmp ult i32 %i.h, -8
  br i1 %or.cond58, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = add i32 %i.b, 5119
  %i.j = udiv i32 %i.i, 5120                      ; 2 uses
  %i.k = add i32 %i.b, 19
  %i.l = udiv i32 %i.k, 20
  %i.m = shl nuw nsw i32 %i.j, 3
  %i.n = shl nuw nsw i32 %i.j, 4
  %i.o = shl nuw nsw i32 %i.l, 3
  %reass.add = add nuw nsw i32 %i.o, %i.n
  %reass.mul = mul i32 %reass.add, %i.g
  %i.p = add nuw nsw i32 %i.m, 8
  %i.q = add i32 %i.p, %reass.mul
  %i.r = zext i32 %i.q to i64
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.r) #74 ; 7 uses
  %i.t = load i32, ptr %1, align 4                ; 3 uses
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 5 uses
  %wide.trip.count = zext i32 %i.t to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.v = icmp ult i32 %i.t, 4
  br i1 %i.v, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %bb.f

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod72 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod72)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.e ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %indvars.iv.epil ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <4 x i32> <i32 0, i32 0, i32 -8192, i32 16384>, ptr %i.x, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.e, !llvm.loop !1116

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.e, %bb.d
  %i.y = load i32, ptr %i.a, align 4              ; 6 uses
  store <4 x i8> <i8 113, i8 111, i8 97, i8 102>, ptr %i.s, align 1
  %3 = lshr i32 %i.y, 24
  %4 = trunc nuw i32 %3 to i8
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i8 %4, ptr %i.z, align 1
  %5 = lshr i32 %i.y, 16
  %6 = trunc i32 %5 to i8
  %7 = getelementptr inbounds nuw i8, ptr %i.s, i64 5
  store i8 %6, ptr %7, align 1
  %8 = lshr i32 %i.y, 8
  %9 = trunc i32 %8 to i8
  %10 = getelementptr inbounds nuw i8, ptr %i.s, i64 6
  store i8 %9, ptr %10, align 1
  %11 = trunc i32 %i.y to i8
  %12 = getelementptr inbounds nuw i8, ptr %i.s, i64 7
  store i8 %11, ptr %12, align 1
  %.not66 = icmp eq i32 %i.y, 0
  br i1 %.not66, label %._crit_edge65, label %.lr.ph64

bb.f:                                             ; preds = %bb.f, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.f ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.f ]
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %indvars.iv ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store <4 x i32> <i32 0, i32 0, i32 -8192, i32 16384>, ptr %i.ab, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %indvars.iv ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  store <4 x i32> <i32 0, i32 0, i32 -8192, i32 16384>, ptr %i.ae, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %indvars.iv ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  store <4 x i32> <i32 0, i32 0, i32 -8192, i32 16384>, ptr %i.ah, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %indvars.iv ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 96
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 112
  store <4 x i32> <i32 0, i32 0, i32 -8192, i32 16384>, ptr %i.ak, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.f

._crit_edge65:                                    ; preds = %.lr.ph64, %._crit_edge
  %.051.lcssa = phi i32 [ 8, %._crit_edge ], [ %i.au, %.lr.ph64 ]
  store i32 %.051.lcssa, ptr %2, align 4
  br label %bb.g

.lr.ph64:                                         ; preds = %._crit_edge, %.lr.ph64
  %i.al = phi i32 [ %i.aw, %.lr.ph64 ], [ %i.y, %._crit_edge ]
  %.05062 = phi i32 [ %i.av, %.lr.ph64 ], [ 0, %._crit_edge ] ; 3 uses
  %.05161 = phi i32 [ %i.au, %.lr.ph64 ], [ 8, %._crit_edge ] ; 2 uses
  %i.am = sub nuw i32 %i.al, %.05062
  %..i = tail call i32 @llvm.smin.i32(i32 %i.am, i32 5120) ; 2 uses
  %i.an = load i32, ptr %1, align 4
  %i.ao = mul i32 %i.an, %.05062
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ap
  %i.ar = zext i32 %.05161 to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ar
  %i.at = tail call i32 @qoa_encode_frame(ptr noundef %i.aq, ptr noundef nonnull %1, i32 noundef %..i, ptr noundef nonnull %i.as)
  %i.au = add i32 %i.at, %.05161                  ; 2 uses
  %i.av = add i32 %..i, %.05062                   ; 2 uses
  %i.aw = load i32, ptr %i.a, align 4             ; 2 uses
  %i.ax = icmp ult i32 %i.av, %i.aw
  br i1 %i.ax, label %.lr.ph64, label %._crit_edge65

bb.g:                                             ; preds = %bb.a, %bb.b, %bb.c, %._crit_edge65
  %.0 = phi ptr [ %i.s, %._crit_edge65 ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i32 @qoa_max_frame_size(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #16 {
bb.a:
  %i.a = load i32, ptr %0, align 4                ; 2 uses
  %i.b = shl i32 %i.a, 4
  %i.c = or disjoint i32 %i.b, 8
  %i.d = shl i32 %i.a, 11
  %i.e = add i32 %i.c, %i.d
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden range(i32 0, 9) i32 @qoa_decode_header(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp slt i32 %1, 16
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1
  %i.c = zext i8 %i.b to i64
  %i.d = shl nuw i64 %i.c, 56
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.f = load i8, ptr %i.e, align 1
  %i.g = zext i8 %i.f to i64
  %i.h = shl nuw nsw i64 %i.g, 48
  %i.i = or disjoint i64 %i.h, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.k = load i8, ptr %i.j, align 1
  %i.l = zext i8 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 40
  %i.n = or disjoint i64 %i.i, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.p = load i8, ptr %i.o, align 1
  %i.q = zext i8 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 32
  %i.s = or disjoint i64 %i.n, %i.r
  %.not = icmp eq i64 %i.s, 8173858939415298048
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.u = load i32, ptr %i.t, align 1              ; 2 uses
  %i.v = tail call i32 @llvm.bswap.i32(i32 %i.u)
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.v, ptr %i.w, align 4
  %.not14 = icmp eq i32 %i.u, 0
  br i1 %.not14, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i8, ptr %i.x, align 1               ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = zext i8 %i.aa to i32
  %i.ac = shl nuw nsw i32 %i.ab, 16
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = zext i8 %i.ae to i32
  %i.ag = shl nuw nsw i32 %i.af, 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = zext i8 %i.ai to i32
  %i.ak = or disjoint i32 %i.ac, %i.aj
  %i.al = or disjoint i32 %i.ak, %i.ag            ; 2 uses
  %i.am = zext i8 %i.y to i32
  store i32 %i.am, ptr %2, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.al, ptr %i.an, align 4
  %i.ao = icmp eq i8 %i.y, 0
  br i1 %i.ao, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = icmp eq i32 %i.al, 0
  %spec.select = select i1 %i.ap, i32 0, i32 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b, %bb.c, %bb.d, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ %spec.select, %bb.e ]
  ret i32 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden i32 @qoa_decode_frame(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4) local_unnamed_addr #20 {
bb.a:
  store i32 0, ptr %4, align 4
  %i.a = load i32, ptr %2, align 4                ; 7 uses
  %i.b = shl i32 %i.a, 4                          ; 2 uses
  %i.c = or disjoint i32 %i.b, 8
  %i.d = icmp ult i32 %1, %i.c
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %0, align 1                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i8, ptr %i.f, align 1
  %i.h = zext i8 %i.g to i32
  %i.i = shl nuw nsw i32 %i.h, 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.k = load i8, ptr %i.j, align 1
  %i.l = zext i8 %i.k to i32
  %i.m = or disjoint i32 %i.i, %i.l               ; 5 uses
  %i.n = zext i8 %i.e to i32
  %.not = icmp eq i32 %i.a, %i.n
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.p = load i8, ptr %i.o, align 1
  %i.q = zext i8 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.s = load i8, ptr %i.r, align 1
  %i.t = zext i8 %i.s to i32
  %i.u = shl nuw nsw i32 %i.t, 8
  %i.v = or disjoint i32 %i.u, %i.q               ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.x = load i8, ptr %i.w, align 1
  %i.y = zext i8 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = zext i8 %i.ab to i32
  %i.ad = or disjoint i32 %i.z, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = zext i8 %i.af to i32
  %i.ah = shl nuw nsw i32 %i.ag, 16
  %i.ai = or disjoint i32 %i.ad, %i.ah
  %reass.sub = sub nsw i32 %i.v, %i.b
  %i.aj = add nsw i32 %reass.sub, -8
  %i.ak = lshr i32 %i.aj, 3
  %i.al = mul i32 %i.ak, 20
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.an = load i32, ptr %i.am, align 4
  %.not88 = icmp ne i32 %i.ai, %i.an
  %i.ao = icmp ugt i32 %i.v, %1
  %or.cond = or i1 %i.ao, %.not88
  %i.ap = mul nuw nsw i32 %i.m, %i.a
  %i.aq = icmp ugt i32 %i.ap, %i.al
  %or.cond90 = select i1 %or.cond, i1 true, i1 %i.aq
  br i1 %or.cond90, label %bb.g, label %.preheader97

end_hunk_0
