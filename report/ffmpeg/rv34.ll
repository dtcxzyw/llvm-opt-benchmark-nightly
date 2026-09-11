Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/rv34?download=true
inline.NumInlined: 98
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 32
begin_hunk_0_@rv34_init_tables:bb.a
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %i.aq = getelementptr inbounds nuw [64 x i8], ptr @rv34_inter_cbp, i64 %indvars.iv90
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  br label %bb.h

.preheader:                                       ; preds = %bb.h
  %i.as = getelementptr inbounds nuw [1728 x i8], ptr @rv34_table_inter_firstpat, i64 %indvars.iv90
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 208
  %i.au = getelementptr inbounds nuw [216 x i8], ptr @rv34_table_inter_secondpat, i64 %indvars.iv90
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 240
  %i.aw = getelementptr inbounds nuw [216 x i8], ptr @rv34_table_inter_thirdpat, i64 %indvars.iv90
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 256
  br label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.h
  %indvars.iv83 = phi i64 [ 0, %bb.g ], [ %indvars.iv.next84, %bb.h ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %indvars.iv83
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.ar, i64 %indvars.iv83
  call fastcc void @rv34_gen_vlc_ext(ptr noundef nonnull %i.ay, i32 noundef 16, ptr noundef nonnull %i.az, ptr noundef nonnull @rv34_cbp_code, i32 noundef -1, ptr noundef %i.a) #16
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %exitcond86.not = icmp eq i64 %indvars.iv.next84, 4
  br i1 %exitcond86.not, label %.preheader, label %bb.h, !llvm.loop !131

bb.i:                                             ; preds = %.preheader, %bb.i
  %i.ba = phi i1 [ true, %.preheader ], [ false, %bb.i ]
  %indvars.iv87 = phi i64 [ 0, %.preheader ], [ 1, %bb.i ] ; 6 uses
  %i.bb = getelementptr inbounds nuw [864 x i8], ptr %i.as, i64 %indvars.iv87
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv87
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call fastcc void @rv34_gen_vlc_ext(ptr noundef nonnull %i.bb, i32 noundef 864, ptr noundef nonnull %3, ptr noundef null, i32 noundef 3, ptr noundef nonnull %i.a) #16
  %i.bd = load ptr, ptr %i.p, align 8, !tbaa !71
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.be = getelementptr inbounds nuw [108 x i8], ptr %i.au, i64 %indvars.iv87
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv87
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call fastcc void @rv34_gen_vlc_ext(ptr noundef nonnull %i.be, i32 noundef 108, ptr noundef nonnull %2, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.a) #16
  %i.bg = load ptr, ptr %i.q, align 8, !tbaa !71
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  %i.bh = getelementptr inbounds nuw [108 x i8], ptr %i.aw, i64 %indvars.iv87
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv87
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  call fastcc void @rv34_gen_vlc_ext(ptr noundef nonnull %i.bh, i32 noundef 108, ptr noundef nonnull %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.a) #16
  %i.bj = load ptr, ptr %i.r, align 8, !tbaa !71
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  br i1 %i.ba, label %bb.i, label %bb.j, !llvm.loop !132

bb.j:                                             ; preds = %bb.i
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr @rv34_inter_coeff, i64 %indvars.iv90
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ao, i64 272
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call fastcc void @rv34_gen_vlc_ext(ptr noundef nonnull %i.bk, i32 noundef 32, ptr noundef nonnull %0, ptr noundef null, i32 noundef -1, ptr noundef nonnull %i.a) #16
  %i.bm = load ptr, ptr %i.s, align 8, !tbaa !71
  store ptr %i.bm, ptr %i.bl, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #15
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1 ; 2 uses
  %exitcond93.not = icmp eq i64 %indvars.iv.next91, 7
  br i1 %exitcond93.not, label %bb.k, label %bb.g, !llvm.loop !133

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 -2147483648, 1) i32 @ff_rv34_decode_update_thread_context(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34   ; 3 uses
  %i.e = icmp eq ptr %0, %1
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 384
  %i.g = load i32, ptr %i.f, align 16, !tbaa !134
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @ff_mpeg_update_thread_context(ptr noundef nonnull %0, ptr noundef nonnull %1) #15 ; 3 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not25 = icmp eq i32 %i.h, 0
  br i1 %.not25, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 5064
  tail call void @av_freep(ptr noundef nonnull %i.j) #15
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 5072
  store ptr null, ptr %i.k, align 16, !tbaa !67
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 5888
  tail call void @av_freep(ptr noundef nonnull %i.l) #15
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 5624
  tail call void @av_freep(ptr noundef nonnull %i.m) #15
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 5728
  tail call void @av_freep(ptr noundef nonnull %i.n) #15
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 5736
  tail call void @av_freep(ptr noundef nonnull %i.o) #15
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 5744
  tail call void @av_freep(ptr noundef nonnull %i.p) #15
  %i.q = tail call fastcc range(i32 -12, 1) i32 @rv34_decoder_alloc(ptr noundef %i.b) ; 2 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 5688
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 5688
  %i.u = load <2 x i32>, ptr %i.s, align 8, !tbaa !68
  store <2 x i32> %i.u, ptr %i.t, align 8, !tbaa !68
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 5696
  %i.w = load i32, ptr %i.v, align 16, !tbaa !74
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 5696
  store i32 %i.w, ptr %i.x, align 16, !tbaa !74
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 5584
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.y, i8 0, i64 32, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.c, %bb.a, %bb.b, %bb.f
  %.0 = phi i32 [ 0, %bb.f ], [ 0, %bb.a ], [ %i.h, %bb.c ], [ 0, %bb.b ], [ %i.q, %bb.e ]
  ret i32 %.0
}

declare i32 @ff_mpeg_update_thread_context(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -12, 1) i32 @rv34_decoder_realloc(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5064
  tail call void @av_freep(ptr noundef nonnull %i.a) #15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 5072
  store ptr null, ptr %i.b, align 16, !tbaa !67
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 5888
  tail call void @av_freep(ptr noundef nonnull %i.c) #15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5624
  tail call void @av_freep(ptr noundef nonnull %i.d) #15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 5728
  tail call void @av_freep(ptr noundef nonnull %i.e) #15
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 5736
  tail call void @av_freep(ptr noundef nonnull %i.f) #15
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5744
  tail call void @av_freep(ptr noundef nonnull %i.g) #15
  %i.h = tail call fastcc i32 @rv34_decoder_alloc(ptr noundef %0)
  ret i32 %i.h
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define i32 @ff_rv34_decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %4 = alloca %struct.SliceInfo, align 4          ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !137  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !34   ; 66 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.g = icmp eq i32 %i.d, 0
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 888
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 936
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !75   ; 2 uses
  %.not300 = icmp eq ptr %i.j, null
  br i1 %.not300, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !78
  %i.l = tail call i32 @av_frame_ref(ptr noundef %1, ptr noundef %i.k) #15 ; 2 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @ff_mpv_unref_picture(ptr noundef nonnull %i.h) #15
  store i32 1, ptr %2, align 4, !tbaa !68
  br label %.thread

bb.e:                                             ; preds = %bb.a
  %i.n = load i8, ptr %i.b, align 1, !tbaa !10    ; 2 uses
  %i.o = zext i8 %i.n to i32                      ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 5 ; 4 uses
  %i.q = shl nuw nsw i32 %i.o, 3                  ; 2 uses
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 9 ; 3 uses
  %reass.sub = sub i32 %i.d, %i.q
  %i.u = add i32 %reass.sub, -9                   ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.w = load i32, ptr %i.v, align 1, !tbaa !10
  %i.x = icmp eq i32 %i.w, 1
  %i.y = load i32, ptr %i.p, align 1, !tbaa !10   ; 2 uses
  %i.z = tail call i32 @llvm.bswap.i32(i32 %i.y)
  %spec.select.i = select i1 %i.x, i32 %i.y, i32 %i.z ; 4 uses
  %i.aa = icmp slt i32 %spec.select.i, 0
  %i.ab = icmp sgt i32 %spec.select.i, %i.u
  %or.cond301 = or i1 %i.aa, %i.ab
  br i1 %or.cond301, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str) #15
  br label %.thread

bb.g:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 4384 ; 4 uses
  %i.ad = zext nneg i32 %spec.select.i to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ad
  %i.af = sub nuw nsw i32 %i.u, %spec.select.i    ; 2 uses
  %or.cond.i = icmp ugt i32 %i.af, 268435455
  %i.ag = shl nuw nsw i32 %i.af, 3
  %i.ah = select i1 %or.cond.i, i32 -8, i32 %i.ag ; 2 uses
  %or.cond.i.i = icmp ugt i32 %i.ah, 2147483134   ; 3 uses
  %.014.i.i = select i1 %or.cond.i.i, ptr null, ptr %i.ae
  %.013.i.i = select i1 %or.cond.i.i, i32 0, i32 %i.ah ; 2 uses
  store ptr %.014.i.i, ptr %i.ac, align 8, !tbaa !16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 4396 ; 2 uses
  store i32 %.013.i.i, ptr %i.ai, align 4, !tbaa !79
  %i.aj = add nuw nsw i32 %.013.i.i, 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 4400 ; 2 uses
  store i32 %i.aj, ptr %i.ak, align 8, !tbaa !15
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 4392 ; 2 uses
  store i32 0, ptr %i.al, align 8, !tbaa !14
  br i1 %or.cond.i.i, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 5896 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !80
  %i.ao = call i32 %i.an(ptr noundef nonnull %i.f, ptr noundef nonnull %i.ac, ptr noundef nonnull %4) #15
  %i.ap = icmp slt i32 %i.ao, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = icmp ne i32 %i.ar, 0
  %or.cond = select i1 %i.ap, i1 true, i1 %i.as
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.1) #15
  br label %.thread

bb.j:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 816
  %i.au = load ptr, ptr %i.at, align 16, !tbaa !81
  %i.av = icmp eq ptr %i.au, null
  %i.aw = load i32, ptr %4, align 4               ; 2 uses
  %i.ax = icmp eq i32 %i.aw, 3
  %or.cond7.not.not348 = select i1 %i.av, i1 %i.ax, i1 false ; 3 uses
  br i1 %or.cond7.not.not348, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.2) #15
  %.pre = load i32, ptr %4, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ay = phi i32 [ %.pre, %bb.k ], [ %i.aw, %bb.j ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !138 ; 3 uses
  %i.bb = icmp sgt i32 %i.ba, 7
  %i.bc = icmp eq i32 %i.ay, 3
  %or.cond10 = select i1 %i.bb, i1 %i.bc, i1 false
  br i1 %or.cond10, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = icmp sgt i32 %i.ba, 31
  %i.be = icmp ne i32 %i.ay, 1
  %or.cond13 = select i1 %i.bd, i1 %i.be, i1 false
  %i.bf = icmp sgt i32 %i.ba, 47
  %or.cond302 = or i1 %i.bf, %or.cond13
  br i1 %or.cond302, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bg = load i32, ptr %i.c, align 8, !tbaa !137
  br label %.thread

bb.o:                                             ; preds = %bb.m
  %i.bh = load i32, ptr %i.aq, align 4, !tbaa !139 ; 3 uses
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.p, label %bb.ao

bb.p:                                             ; preds = %bb.o
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 5616
  %i.bk = load i32, ptr %i.bj, align 16, !tbaa !82 ; 2 uses
  %i.bl = icmp sgt i32 %i.bk, 0
  br i1 %i.bl, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 1056
  %i.bn = load ptr, ptr %i.bm, align 16, !tbaa !83
  %.not278 = icmp eq ptr %i.bn, null
  br i1 %.not278, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.3, i32 noundef %i.bk) #15
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 3904
  %i.bp = load i32, ptr %i.bo, align 16, !tbaa !140
  %.not279 = icmp eq i32 %i.bp, 0
  br i1 %.not279, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 3912
  call void @ff_er_frame_end(ptr noundef nonnull %i.bq, ptr noundef null) #15
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @ff_mpv_frame_end(ptr noundef nonnull %i.f) #15
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q, %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 352 ; 3 uses
  %i.bs = load i32, ptr %i.br, align 16, !tbaa !84
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 3 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !141 ; 2 uses
  %.not280 = icmp eq i32 %i.bs, %i.bu
  br i1 %.not280, label %bb.v, label %._crit_edge

._crit_edge:                                      ; preds = %bb.u
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.pre352 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !142
  br label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bv = getelementptr inbounds nuw i8, ptr %i.f, i64 356
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !85 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !142 ; 2 uses
  %.not281 = icmp eq i32 %i.bw, %i.by
  br i1 %.not281, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bz = getelementptr inbounds nuw i8, ptr %i.f, i64 3904
  %i.ca = load i32, ptr %i.bz, align 16, !tbaa !140
  %.not282 = icmp eq i32 %i.ca, 0
  br i1 %.not282, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %._crit_edge, %bb.w, %bb.v
  %i.cb = phi i32 [ %.pre352, %._crit_edge ], [ %i.bw, %bb.w ], [ %i.by, %bb.v ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.f, i64 344 ; 4 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !86
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.cd, i32 noundef 24, ptr noundef nonnull @.str.4, i32 noundef %i.bu, i32 noundef %i.cb) #15
  %i.cf = load i32, ptr %i.bt, align 4, !tbaa !141
  %i.cg = load i32, ptr %i.ce, align 4, !tbaa !142
  %i.ch = load ptr, ptr %i.cc, align 8, !tbaa !86
  %i.ci = call i32 @av_image_check_size(i32 noundef %i.cf, i32 noundef %i.cg, i32 noundef 0, ptr noundef %i.ch) #15
  %.not283 = icmp eq i32 %i.ci, 0
  br i1 %.not283, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x
  %i.cj = load ptr, ptr %i.cc, align 8, !tbaa !86
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 128 ; 2 uses
  %i.cl = load i32, ptr %i.br, align 16, !tbaa !84
  %i.cm = getelementptr inbounds nuw i8, ptr %i.f, i64 356 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !85
  %i.co = load i32, ptr %i.bt, align 4, !tbaa !141 ; 3 uses
  %i.cp = load i32, ptr %i.ce, align 4, !tbaa !142 ; 3 uses
  %i.cq = load i64, ptr %i.ck, align 8
  %i.cr = call fastcc i64 @update_sar(i32 noundef %i.cl, i32 noundef %i.cn, i64 %i.cq, i32 noundef %i.co, i32 noundef %i.cp)
  store i64 %i.cr, ptr %i.ck, align 8
  store i32 %i.co, ptr %i.br, align 16, !tbaa !84
  store i32 %i.cp, ptr %i.cm, align 4, !tbaa !85
  %i.cs = load ptr, ptr %i.cc, align 8, !tbaa !86
  %i.ct = call i32 @ff_set_dimensions(ptr noundef %i.cs, i32 noundef %i.co, i32 noundef %i.cp) #15 ; 2 uses
  %i.cu = icmp slt i32 %i.ct, 0
  br i1 %i.cu, label %.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cv = call i32 @ff_mpv_common_frame_size_change(ptr noundef nonnull %i.f) #15 ; 2 uses
  %i.cw = icmp slt i32 %i.cv, 0
  br i1 %i.cw, label %.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cx = call fastcc i32 @rv34_decoder_realloc(ptr noundef nonnull %i.f) ; 2 uses
  %i.cy = icmp slt i32 %i.cx, 0                   ; 2 uses
  %brmerge = or i1 %or.cond7.not.not348, %i.cy
  %.mux = select i1 %i.cy, i32 %i.cx, i32 -1094995529
  br i1 %brmerge, label %.thread, label %bb.ac

bb.ab:                                            ; preds = %bb.w
  br i1 %or.cond7.not.not348, label %.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %i.cz = load i32, ptr %4, align 4, !tbaa !143
  %i.da = call i32 @llvm.umax.i32(i32 %i.cz, i32 1)
  %i.db = getelementptr inbounds nuw i8, ptr %i.f, i64 1280 ; 2 uses
  store i32 %i.da, ptr %i.db, align 16, !tbaa !87
  %i.dc = getelementptr inbounds nuw i8, ptr %i.f, i64 344 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !86
  %i.de = call i32 @ff_mpv_frame_start(ptr noundef nonnull %i.f, ptr noundef %i.dd) #15
  %i.df = icmp slt i32 %i.de, 0
  br i1 %i.df, label %.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @ff_mpeg_er_frame_start(ptr noundef nonnull %i.f) #15
  %i.dg = getelementptr inbounds nuw i8, ptr %i.f, i64 5888 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 16, !tbaa !144
  %.not288 = icmp eq ptr %i.dh, null
  br i1 %.not288, label %bb.ae, label %.loopexit

bb.ae:                                            ; preds = %bb.ad
  %i.di = getelementptr inbounds nuw i8, ptr %i.f, i64 416 ; 2 uses
  %i.dj = load i64, ptr %i.di, align 16, !tbaa !88
  %i.dk = mul nsw i64 %i.dj, 48
  %i.dl = call noalias ptr @av_malloc(i64 noundef %i.dk) #15 ; 5 uses
  store ptr %i.dl, ptr %i.dg, align 16, !tbaa !144
  %.not289.not = icmp eq ptr %i.dl, null
  br i1 %.not289.not, label %.thread, label %.preheader343

.preheader343:                                    ; preds = %bb.ae
  %i.dm = load i64, ptr %i.di, align 16, !tbaa !88 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.f, i64 5840
  store ptr %i.dl, ptr %i.dn, align 16, !tbaa !89
  %i.do = shl nsw i64 %i.dm, 4
  %i.dp = getelementptr inbounds i8, ptr %i.dl, i64 %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %i.f, i64 5848
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !89
  %i.dr = shl nsw i64 %i.dm, 5
  %i.ds = getelementptr inbounds nuw i8, ptr %i.f, i64 424
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !90
  %i.du = getelementptr inbounds nuw i8, ptr %i.f, i64 5856
  %i.dv = getelementptr inbounds i8, ptr %i.dl, i64 %i.dr ; 3 uses
  store ptr %i.dv, ptr %i.du, align 16, !tbaa !89
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = getelementptr inbounds nuw i8, ptr %i.f, i64 5864
  store ptr %i.dw, ptr %i.dx, align 8, !tbaa !89
  %i.dy = shl nsw i64 %i.dt, 3
  %i.dz = getelementptr inbounds i8, ptr %i.dv, i64 %i.dy ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.f, i64 5872
  store ptr %i.dz, ptr %i.ea, align 16, !tbaa !89
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.ec = getelementptr inbounds nuw i8, ptr %i.f, i64 5880
  store ptr %i.eb, ptr %i.ec, align 8, !tbaa !89
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader343, %bb.ad
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !145 ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.f, i64 5688
  store i32 %i.ee, ptr %i.ef, align 8, !tbaa !146
  %i.eg = load i32, ptr %i.db, align 16, !tbaa !87
  %.not290 = icmp eq i32 %i.eg, 3
  %i.eh = getelementptr inbounds nuw i8, ptr %i.f, i64 5696 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 16, !tbaa !74 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.f, i64 5692 ; 2 uses
  br i1 %.not290, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.loopexit
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !147
  store i32 %i.ee, ptr %i.eh, align 16, !tbaa !74
  br label %bb.an

bb.ag:                                            ; preds = %.loopexit
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !147 ; 2 uses
  %i.el = sub nsw i32 %i.ei, %i.ek
  %i.em = and i32 %i.el, 8191                     ; 4 uses
  %i.en = sub nsw i32 %i.ee, %i.ek
  %i.eo = and i32 %i.en, 8191                     ; 2 uses
  %i.ep = sub nsw i32 %i.ei, %i.ee
  %i.eq = and i32 %i.ep, 8191                     ; 2 uses
  %.not291 = icmp eq i32 %i.em, 0
  br i1 %.not291, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.er = getelementptr inbounds nuw i8, ptr %i.f, i64 5716
  store i32 8192, ptr %i.er, align 4, !tbaa !91
  %i.es = getelementptr inbounds nuw i8, ptr %i.f, i64 5700
  store <4 x i32> <i32 0, i32 8192, i32 8192, i32 8192>, ptr %i.es, align 4, !tbaa !68
  br label %bb.an

bb.ai:                                            ; preds = %bb.ag
  %i.et = call i32 @llvm.umax.i32(i32 %i.eo, i32 %i.eq)
  %i.eu = icmp samesign ugt i32 %i.et, %i.em
  br i1 %i.eu, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 56, ptr noundef nonnull @.str.5) #15
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.ev = shl nuw nsw i32 %i.eo, 14
  %i.ew = udiv i32 %i.ev, %i.em                   ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.f, i64 5712
  store i32 %i.ew, ptr %i.ex, align 16, !tbaa !92
  %i.ey = shl nuw nsw i32 %i.eq, 14
  %i.ez = udiv i32 %i.ey, %i.em                   ; 4 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.f, i64 5716
  store i32 %i.ez, ptr %i.fa, align 4, !tbaa !91
  %i.fb = or i32 %i.ez, %i.ew
  %i.fc = and i32 %i.fb, 511
  %.not292 = icmp eq i32 %i.fc, 0
  br i1 %.not292, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fd = getelementptr inbounds nuw i8, ptr %i.f, i64 5704
  store i32 %i.ew, ptr %i.fd, align 8, !tbaa !93
  %i.fe = getelementptr inbounds nuw i8, ptr %i.f, i64 5708
  store i32 %i.ez, ptr %i.fe, align 4, !tbaa !94
  %i.ff = getelementptr inbounds nuw i8, ptr %i.f, i64 5700
  store i32 0, ptr %i.ff, align 4, !tbaa !95
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.fg = lshr i32 %i.ew, 9
  %i.fh = getelementptr inbounds nuw i8, ptr %i.f, i64 5704
  store i32 %i.fg, ptr %i.fh, align 8, !tbaa !93
  %i.fi = lshr i32 %i.ez, 9
  %i.fj = getelementptr inbounds nuw i8, ptr %i.f, i64 5708
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !94
  %i.fk = getelementptr inbounds nuw i8, ptr %i.f, i64 5700
  store i32 1, ptr %i.fk, align 4, !tbaa !95
  br label %bb.an

bb.an:                                            ; preds = %bb.ah, %bb.am, %bb.al, %bb.af
  %i.fl = getelementptr inbounds nuw i8, ptr %i.f, i64 3112
  store i32 0, ptr %i.fl, align 8, !tbaa !96
  %i.fm = getelementptr inbounds nuw i8, ptr %i.f, i64 3108
  store i32 0, ptr %i.fm, align 4, !tbaa !97
  %i.fn = load ptr, ptr %i.dc, align 8, !tbaa !86
  call void @ff_thread_finish_setup(ptr noundef %i.fn) #15
  br label %bb.as

bb.ao:                                            ; preds = %bb.o
  %i.fo = getelementptr inbounds nuw i8, ptr %i.f, i64 3904
  %i.fp = load i32, ptr %i.fo, align 16, !tbaa !140
  %.not = icmp eq i32 %i.fp, 0
  %i.fq = getelementptr inbounds nuw i8, ptr %i.f, i64 344
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !86 ; 3 uses
  br i1 %.not, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.fr, i32 noundef 16, ptr noundef nonnull @.str.6, i32 noundef %i.bh) #15
  br label %.thread

bb.aq:                                            ; preds = %bb.ao
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 664
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !98
  %i.fu = and i32 %i.ft, 1
  %.not277 = icmp eq i32 %i.fu, 0
  br i1 %.not277, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.fr, i32 noundef 16, ptr noundef nonnull @.str.7, i32 noundef %i.bh) #15
  br label %.thread

bb.as:                                            ; preds = %bb.aq, %bb.an
  %i.fv = getelementptr inbounds nuw i8, ptr %i.f, i64 388
  %i.fw = getelementptr inbounds nuw i8, ptr %i.f, i64 392 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.f, i64 5600 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.f, i64 3108
  %i.fz = getelementptr inbounds nuw i8, ptr %i.f, i64 3112
  %i.ga = getelementptr inbounds nuw i8, ptr %i.f, i64 5596
  %i.gb = getelementptr inbounds nuw i8, ptr %i.f, i64 5616 ; 2 uses
  %i.gc = zext i8 %i.n to i64                     ; 2 uses
  %i.gd = add nuw nsw i32 %i.o, 1
  %wide.trip.count = zext nneg i32 %i.gd to i64
  br label %get_slice_offset.exit

get_slice_offset.exit:                            ; preds = %bb.ba, %bb.as
  %indvars.iv368 = phi i64 [ 0, %bb.as ], [ %indvars.iv.next, %bb.ba ] ; 4 uses
  %i.ge = shl nuw nsw i64 %indvars.iv368, 3
  %i.gf = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ge ; 2 uses
  %i.gg = getelementptr inbounds i8, ptr %i.gf, i64 -4
  %i.gh = load i32, ptr %i.gg, align 1, !tbaa !10
  %i.gi = icmp eq i32 %i.gh, 1
  %i.gj = load i32, ptr %i.gf, align 1, !tbaa !10 ; 2 uses
  %i.gk = call i32 @llvm.bswap.i32(i32 %i.gj)
  %spec.select.i310 = select i1 %i.gi, i32 %i.gj, i32 %i.gk ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv368, 1 ; 3 uses
  %5 = shl nuw nsw i64 %indvars.iv.next, 3
  %6 = getelementptr inbounds nuw i8, ptr %i.p, i64 %5 ; 2 uses
  %7 = getelementptr inbounds i8, ptr %6, i64 -4
  %8 = load i32, ptr %7, align 1, !tbaa !10
  %9 = icmp eq i32 %8, 1
  %10 = load i32, ptr %6, align 1, !tbaa !10      ; 2 uses
  %11 = call i32 @llvm.bswap.i32(i32 %10)
  %spec.select.i312 = select i1 %9, i32 %10, i32 %11 ; 7 uses
  %12 = icmp slt i32 %spec.select.i310, 0
  %13 = icmp sgt i32 %spec.select.i310, %spec.select.i312
  %14 = icmp sgt i32 %spec.select.i312, %i.u
  %15 = or i1 %13, %14
  %or.cond305 = select i1 %12, i1 true, i1 %15
  br i1 %or.cond305, label %.thread333.sink.split, label %bb.at

bb.at:                                            ; preds = %get_slice_offset.exit
  %i.gl = load i32, ptr %i.fv, align 4, !tbaa !99 ; 2 uses
  %i.gm = load i32, ptr %i.fw, align 8, !tbaa !100
  %i.gn = mul nsw i32 %i.gm, %i.gl
  store i32 %i.gn, ptr %i.fx, align 16, !tbaa !101
  %i.go = load i32, ptr %i.fy, align 4, !tbaa !148
  %i.gp = load i32, ptr %i.fz, align 8, !tbaa !149
  %i.gq = mul nsw i32 %i.gp, %i.gl
  %i.gr = add nsw i32 %i.gq, %i.go
  %i.gs = load i32, ptr %i.ga, align 4, !tbaa !102
  %i.gt = sub i32 %i.gr, %i.gs
  store i32 %i.gt, ptr %i.gb, align 16, !tbaa !82
  %16 = icmp samesign ult i64 %indvars.iv368, %i.gc
  br i1 %16, label %bb.au, label %.thread327

bb.au:                                            ; preds = %bb.at
  %i.gu = add nuw nsw i64 %indvars.iv368, 2       ; 2 uses
  %.not341 = icmp samesign ugt i64 %i.gu, %i.gc
  br i1 %.not341, label %get_slice_offset.exit316, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gv = shl nuw nsw i64 %i.gu, 3
  %i.gw = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.gv ; 2 uses
  %i.gx = getelementptr inbounds i8, ptr %i.gw, i64 -4
  %i.gy = load i32, ptr %i.gx, align 1, !tbaa !10
  %i.gz = icmp eq i32 %i.gy, 1
  %i.ha = load i32, ptr %i.gw, align 1, !tbaa !10 ; 2 uses
  %i.hb = call i32 @llvm.bswap.i32(i32 %i.ha)
  %spec.select.i315 = select i1 %i.gz, i32 %i.ha, i32 %i.hb
  br label %get_slice_offset.exit316

get_slice_offset.exit316:                         ; preds = %bb.au, %bb.av
  %.0.i314 = phi i32 [ %spec.select.i315, %bb.av ], [ %i.u, %bb.au ] ; 3 uses
  %i.hc = icmp slt i32 %.0.i314, %spec.select.i312
  %i.hd = icmp sgt i32 %.0.i314, %i.u
  %or.cond306 = or i1 %i.hc, %i.hd
  br i1 %or.cond306, label %.thread333.sink.split, label %bb.aw

bb.aw:                                            ; preds = %get_slice_offset.exit316
  %i.he = zext nneg i32 %spec.select.i312 to i64
  %i.hf = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.he
  %i.hg = sub nuw nsw i32 %i.u, %spec.select.i312 ; 2 uses
  %or.cond.i317 = icmp ugt i32 %i.hg, 268435455
  %i.hh = shl nuw nsw i32 %i.hg, 3
  %i.hi = select i1 %or.cond.i317, i32 -8, i32 %i.hh ; 2 uses
  %or.cond.i.i318 = icmp ugt i32 %i.hi, 2147483134 ; 3 uses
  %.014.i.i319 = select i1 %or.cond.i.i318, ptr null, ptr %i.hf
  %.013.i.i320 = select i1 %or.cond.i.i318, i32 0, i32 %i.hi ; 2 uses
  store ptr %.014.i.i319, ptr %i.ac, align 16, !tbaa !16
  store i32 %.013.i.i320, ptr %i.ai, align 4, !tbaa !79
  %i.hj = add nuw nsw i32 %.013.i.i320, 8
  store i32 %i.hj, ptr %i.ak, align 16, !tbaa !15
  store i32 0, ptr %i.al, align 8, !tbaa !14
  br i1 %or.cond.i.i318, label %.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hk = load ptr, ptr %i.am, align 8, !tbaa !80
  %i.hl = call i32 %i.hk(ptr noundef nonnull %i.f, ptr noundef nonnull %i.ac, ptr noundef nonnull %4) #15
  %i.hm = icmp slt i32 %i.hl, 0
  br i1 %i.hm, label %.thread327, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hn = load i32, ptr %i.aq, align 4, !tbaa !139
  store i32 %i.hn, ptr %i.fx, align 16, !tbaa !101
  br label %.thread327

.thread327:                                       ; preds = %bb.ax, %bb.ay, %bb.at
  %.0.i311.pn = phi i32 [ %spec.select.i312, %bb.at ], [ %spec.select.i312, %bb.ay ], [ %.0.i314, %bb.ax ] ; 2 uses
  %.2 = sub nsw i32 %.0.i311.pn, %spec.select.i310 ; 2 uses
  %i.ho = icmp slt i32 %.2, 0
  %.not294 = icmp sgt i32 %.0.i311.pn, %i.u
  %or.cond307 = or i1 %.not294, %i.ho
  br i1 %or.cond307, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %.thread327
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 1805) #15
  call void @abort() #17
  unreachable

bb.ba:                                            ; preds = %.thread327
  %i.hp = load i32, ptr %i.fx, align 16, !tbaa !101
  %i.hq = zext nneg i32 %spec.select.i310 to i64
  %i.hr = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.hq
  %i.hs = call fastcc i32 @rv34_decode_slice(ptr noundef nonnull %i.f, i32 noundef %i.hp, ptr noundef nonnull %i.hr, i32 noundef %.2)
  %.not295 = icmp eq i32 %i.hs, 0                 ; 2 uses
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count
  %or.cond369.not = select i1 %.not295, i1 %exitcond, i1 false
  br i1 %or.cond369.not, label %get_slice_offset.exit, label %.thread333

.thread333.sink.split:                            ; preds = %get_slice_offset.exit316, %get_slice_offset.exit
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str) #15
  br label %.thread333

.thread333:                                       ; preds = %bb.ba, %.thread333.sink.split
  %.2253 = phi i1 [ true, %.thread333.sink.split ], [ %.not295, %bb.ba ]
  %i.ht = getelementptr inbounds nuw i8, ptr %i.f, i64 1056
  %i.hu = load ptr, ptr %i.ht, align 16, !tbaa !83
  %.not296 = icmp eq ptr %i.hu, null
  br i1 %.not296, label %bb.bi, label %bb.bb

bb.bb:                                            ; preds = %.thread333
  br i1 %.2253, label %bb.bg, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hv = getelementptr inbounds nuw i8, ptr %i.f, i64 5920
  %i.hw = load ptr, ptr %i.hv, align 16, !tbaa !103 ; 2 uses
  %.not299 = icmp eq ptr %i.hw, null
  br i1 %.not299, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hx = load i32, ptr %i.fw, align 8, !tbaa !100
  %i.hy = add nsw i32 %i.hx, -1
  call void %i.hw(ptr noundef nonnull %i.f, i32 noundef %i.hy) #15
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.val = load ptr, ptr %i.e, align 8, !tbaa !34
  %i.hz = call fastcc i32 @finish_frame(ptr %.val, ptr noundef %1) ; 3 uses
  %i.ia = icmp slt i32 %i.hz, 0
  br i1 %i.ia, label %.thread, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  store i32 %i.hz, ptr %2, align 4, !tbaa !68
  br label %bb.bi

bb.bg:                                            ; preds = %bb.bb
  %i.ib = getelementptr inbounds nuw i8, ptr %i.f, i64 344
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !86
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 664
  %i.ie = load i32, ptr %i.id, align 8, !tbaa !98
  %i.if = and i32 %i.ie, 1
  %.not298 = icmp eq i32 %i.if, 0
  br i1 %.not298, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.11) #15
  %i.ig = getelementptr inbounds nuw i8, ptr %i.f, i64 3912
  call void @ff_er_frame_end(ptr noundef nonnull %i.ig, ptr noundef null) #15
  call void @ff_mpv_frame_end(ptr noundef nonnull %i.f) #15
  store i32 0, ptr %i.gb, align 16, !tbaa !82
  br label %.thread

bb.bi:                                            ; preds = %bb.bf, %bb.bg, %.thread333
  %i.ih = load i32, ptr %i.c, align 8, !tbaa !137
  br label %.thread

.thread:                                          ; preds = %bb.aw, %bb.aa, %bb.ae, %bb.y, %bb.x, %bb.z, %bb.be, %bb.ac, %bb.ab, %bb.g, %bb.b, %bb.d, %bb.c, %bb.bi, %bb.bh, %bb.ar, %bb.ap, %bb.n, %bb.i, %bb.f
  %.9 = phi i32 [ -1094995529, %bb.ar ], [ %i.l, %bb.c ], [ -1094995529, %bb.f ], [ 0, %bb.b ], [ -1094995529, %bb.i ], [ %i.bg, %bb.n ], [ -1094995529, %bb.g ], [ -1094995529, %bb.ab ], [ -12, %bb.ae ], [ -1, %bb.ac ], [ %i.ih, %bb.bi ], [ -1094995529, %bb.bh ], [ -1094995529, %bb.x ], [ %.mux, %bb.aa ], [ -1094995529, %bb.ap ], [ 0, %bb.d ], [ %i.hz, %bb.be ], [ %i.cv, %bb.z ], [ %i.ct, %bb.y ], [ -1094995529, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret i32 %.9
}

declare i32 @av_frame_ref(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ff_mpv_unref_picture(ptr noundef) local_unnamed_addr #3

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @ff_er_frame_end(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ff_mpv_frame_end(ptr noundef) local_unnamed_addr #3

declare i32 @av_image_check_size(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define internal fastcc i64 @update_sar(i32 noundef %0, i32 noundef %1, i64 %2, i32 noundef %3, i32 noundef %4) unnamed_addr #6 {
bb.a:
  %i.a = and i64 %2, 4294967295
  %.not = icmp eq i64 %i.a, 0
  %.sroa.22.0.insert.ext = zext i32 %3 to i64
  %.sroa.22.0.insert.shift = shl nuw i64 %.sroa.22.0.insert.ext, 32
  %.sroa.01.0.insert.ext = zext i32 %4 to i64
  %.sroa.01.0.insert.insert = or disjoint i64 %.sroa.22.0.insert.shift, %.sroa.01.0.insert.ext
  %.sroa.2.0.insert.ext = zext i32 %1 to i64
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %0 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  %i.b = tail call i64 @av_mul_q(i64 %.sroa.01.0.insert.insert, i64 %.sroa.0.0.insert.insert) #18
  %.sroa.010.0.insert.insert = select i1 %.not, i64 4294967297, i64 %2
  %i.c = tail call i64 @av_mul_q(i64 %.sroa.010.0.insert.insert, i64 %i.b) #18
  ret i64 %i.c
}

declare i32 @ff_set_dimensions(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ff_mpv_common_frame_size_change(ptr noundef) local_unnamed_addr #3

declare i32 @ff_mpv_frame_start(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ff_mpeg_er_frame_start(ptr noundef) local_unnamed_addr #3

declare noalias ptr @av_malloc(i64 noundef) local_unnamed_addr #3

declare void @ff_thread_finish_setup(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1094995529, 2) i32 @rv34_decode_slice(ptr noundef initializes((4384, 4404)) %0, i32 noundef %1, ptr noundef %2, i32 noundef range(i32 0, 2147483639) %3) unnamed_addr #4 {
bb.a:
  %i.a = alloca [16 x i16], align 16              ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4384 ; 27 uses
  %or.cond.i = icmp samesign ugt i32 %3, 268435455
  %i.c = shl nuw nsw i32 %3, 3
  %i.d = select i1 %or.cond.i, i32 -8, i32 %i.c   ; 2 uses
  %or.cond.i.i = icmp ult i32 %i.d, 2147483135    ; 2 uses
  %i.e = icmp ne ptr %2, null
  %or.cond3.i.i = and i1 %i.e, %or.cond.i.i       ; 2 uses
  %.014.i.i = select i1 %or.cond.i.i, ptr %2, ptr null
  %.013.i.i = select i1 %or.cond3.i.i, i32 %i.d, i32 0 ; 2 uses
  store ptr %.014.i.i, ptr %i.b, align 8, !tbaa !16
  %i.f = getelementptr i8, ptr %0, i64 4396       ; 2 uses
  store i32 %.013.i.i, ptr %i.f, align 4, !tbaa !79
  %i.g = add nuw nsw i32 %.013.i.i, 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 5 uses
  store i32 %i.g, ptr %i.h, align 8, !tbaa !15
  %i.i = getelementptr i8, ptr %0, i64 4392       ; 14 uses
  store i32 0, ptr %i.i, align 8, !tbaa !14
  br i1 %or.cond3.i.i, label %bb.b, label %bb.fp

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 5896
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !80
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 5584 ; 3 uses
  %i.m = tail call i32 %i.k(ptr noundef nonnull %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.l) #15
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !86
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.p, i32 noundef 16, ptr noundef nonnull @.str.12) #15
  br label %bb.fp

bb.d:                                             ; preds = %bb.b
  %i.q = load i32, ptr %i.l, align 16, !tbaa !160
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.q, i32 1)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1280 ; 4 uses
  %i.s = load i32, ptr %i.r, align 16, !tbaa !87
  %.not107 = icmp eq i32 %spec.select, %i.s
  br i1 %.not107, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !86
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.u, i32 noundef 16, ptr noundef nonnull @.str.13) #15
  br label %bb.fp

bb.f:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.w = load i32, ptr %i.v, align 16, !tbaa !84
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 5604
  %i.y = load i32, ptr %i.x, align 4, !tbaa !161
  %.not108 = icmp eq i32 %i.w, %i.y
  br i1 %.not108, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !85
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 5608
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !162
  %.not109 = icmp eq i32 %i.aa, %i.ac
  br i1 %.not109, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !86
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ae, i32 noundef 16, ptr noundef nonnull @.str.14) #15
  br label %bb.fp

bb.i:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 5600
  store i32 %1, ptr %i.af, align 16, !tbaa !101
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 5588 ; 7 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !163
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1272 ; 9 uses
  store i32 %i.ah, ptr %i.ai, align 8, !tbaa !104
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 5596 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !102 ; 3 uses
  %i.al = sub nsw i32 %1, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 5616 ; 4 uses
  store i32 %i.al, ptr %i.am, align 16, !tbaa !82
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 5620 ; 2 uses
  store i32 0, ptr %i.an, align 4, !tbaa !164
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 3108 ; 15 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !97
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 3112 ; 15 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !96
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 388 ; 4 uses
end_hunk_0
