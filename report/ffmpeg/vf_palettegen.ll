Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_palettegen?download=true
inline.NumInlined: 11
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@get_palette_frame:bb.a
  br label %write_palette.exit

.lr.ph108:                                        ; preds = %.critedge, %.lr.ph108
  %indvars.iv114 = phi i64 [ %indvars.iv.next115, %.lr.ph108 ], [ 0, %.critedge ] ; 2 uses
  %i.hp = getelementptr inbounds nuw [56 x i8], ptr %i.be, i64 %indvars.iv114 ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 4
  %.sroa.0.0.copyload = load i64, ptr %i.hq, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hp, i64 12
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 4
  %i.hr = call i32 @ff_oklab_int_to_srgb_u8(i64 %.sroa.0.0.copyload, i32 %.sroa.2.0.copyload) #14
  %i.hs = or i32 %i.hr, -16777216
  store i32 %i.hs, ptr %i.hp, align 8, !tbaa !67
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1 ; 2 uses
  %i.ht = load i32, ptr %i.bi, align 8, !tbaa !103
  %i.hu = sext i32 %i.ht to i64                   ; 2 uses
  %i.hv = icmp slt i64 %indvars.iv.next115, %i.hu
  br i1 %i.hv, label %.lr.ph108, label %._crit_edge109, !llvm.loop !96

write_palette.exit:                               ; preds = %bb.w, %._crit_edge51.i, %load_color_refs.exit, %load_color_refs.exit.thread
  %.0 = phi ptr [ null, %load_color_refs.exit ], [ null, %load_color_refs.exit.thread ], [ %i.bc, %._crit_edge51.i ], [ %i.bc, %bb.w ]
  ret ptr %.0
}

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @av_freep(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @ff_lowbias32(i32 noundef) local_unnamed_addr #3

declare ptr @av_dynarray2_add(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare { i64, i32 } @ff_srgb_u8_to_oklab_int(i32 noundef) local_unnamed_addr #3

declare ptr @ff_get_video_buffer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @compute_box_stats(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) initializes((24, 32)) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store i64 0, ptr %i.a, align 8, !tbaa !65
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load i32, ptr %i.b, align 8, !tbaa !64   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.e = load i32, ptr %i.d, align 4, !tbaa !62   ; 2 uses
  %i.f = add nsw i32 %i.e, %i.c                   ; 2 uses
  %i.g = icmp sgt i32 %i.e, 0
  br i1 %i.g, label %.lr.ph, label %sort3id.exit

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 524320
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !57
  %i.j = sext i32 %i.c to i64
  %i.k = sext i32 %i.f to i64
  br label %bb.b

.lr.ph92:                                         ; preds = %bb.b
  store i64 %i.as, ptr %i.a, align 8, !tbaa !65
  %i.l = sdiv i64 %i.ah, %i.as
  %i.m = trunc i64 %i.l to i32                    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.m, ptr %i.n, align 4, !tbaa !108
  %i.o = sdiv i64 %i.am, %i.as
  %i.p = trunc i64 %i.o to i32                    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.p, ptr %i.q, align 8, !tbaa !109
  %i.r = sdiv i64 %i.ar, %i.as
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.s, ptr %i.t, align 4, !tbaa !110
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 524320
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !57
  %i.w = sext i32 %i.c to i64
  %i.x = sext i32 %i.f to i64
  br label %bb.g

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ %i.j, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.y = phi i64 [ 0, %.lr.ph ], [ %i.as, %bb.b ]
  %.082 = phi i64 [ 0, %.lr.ph ], [ %i.ah, %bb.b ]
  %.07581 = phi i64 [ 0, %.lr.ph ], [ %i.am, %bb.b ]
  %.07779 = phi i64 [ 0, %.lr.ph ], [ %i.ar, %bb.b ]
  %i.z = getelementptr inbounds [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !58  ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !68
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !49 ; 4 uses
  %i.ag = mul nsw i64 %i.af, %i.ad
  %i.ah = add nsw i64 %i.ag, %.082                ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !69
  %i.ak = sext i32 %i.aj to i64
  %i.al = mul nsw i64 %i.af, %i.ak
  %i.am = add nsw i64 %i.al, %.07581              ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !70
  %i.ap = sext i32 %i.ao to i64
  %i.aq = mul nsw i64 %i.af, %i.ap
  %i.ar = add nsw i64 %i.aq, %.07779              ; 2 uses
  %i.as = add nsw i64 %i.y, %i.af                 ; 5 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.at = icmp slt i64 %indvars.iv.next, %i.k
  br i1 %i.at, label %bb.b, label %.lr.ph92, !llvm.loop !106

._crit_edge93:                                    ; preds = %bb.g
  %.not.i = icmp slt i64 %i.bp, %i.bs
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge93
  %.not18.i = icmp slt i64 %i.bs, %i.bv
  br i1 %.not18.i, label %bb.d, label %sort3id.exit

bb.d:                                             ; preds = %bb.c
  %.not19.i = icmp slt i64 %i.bp, %i.bv
  %..i = select i1 %.not19.i, i32 2, i32 1
  br label %sort3id.exit

bb.e:                                             ; preds = %._crit_edge93
  %.not16.i = icmp slt i64 %i.bp, %i.bv
  br i1 %.not16.i, label %bb.f, label %sort3id.exit

bb.f:                                             ; preds = %bb.e
  %.not17.i = icmp slt i64 %i.bs, %i.bv
  %.20.i = select i1 %.not17.i, i32 4, i32 5
  br label %sort3id.exit

sort3id.exit:                                     ; preds = %bb.a, %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.0.0.lcssa118 = phi i64 [ %i.bp, %bb.e ], [ %i.bp, %bb.d ], [ %i.bp, %bb.c ], [ %i.bp, %bb.f ], [ 0, %bb.a ]
  %.sroa.10.0.lcssa116 = phi i64 [ %i.bs, %bb.e ], [ %i.bs, %bb.d ], [ %i.bs, %bb.c ], [ %i.bs, %bb.f ], [ 0, %bb.a ]
  %.sroa.17.0.lcssa114 = phi i64 [ %i.bv, %bb.e ], [ %i.bv, %bb.d ], [ %i.bv, %bb.c ], [ %i.bv, %bb.f ], [ 0, %bb.a ]
  %.0.i = phi i32 [ 3, %bb.e ], [ %..i, %bb.d ], [ 0, %bb.c ], [ %.20.i, %bb.f ], [ 0, %bb.a ]
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %.0.i, ptr %i.au, align 8, !tbaa !63
  %i.av = tail call i64 @llvm.smax.i64(i64 %.sroa.0.0.lcssa118, i64 %.sroa.10.0.lcssa116)
  %..sroa.17.0 = tail call i64 @llvm.smax.i64(i64 %i.av, i64 %.sroa.17.0.lcssa114)
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %..sroa.17.0, ptr %i.aw, align 8, !tbaa !66
  ret void

bb.g:                                             ; preds = %.lr.ph92, %bb.g
  %indvars.iv104 = phi i64 [ %i.w, %.lr.ph92 ], [ %indvars.iv.next105, %bb.g ] ; 2 uses
  %.sroa.0.090 = phi i64 [ 0, %.lr.ph92 ], [ %i.bp, %bb.g ]
  %.sroa.10.089 = phi i64 [ 0, %.lr.ph92 ], [ %i.bs, %bb.g ]
  %.sroa.17.088 = phi i64 [ 0, %.lr.ph92 ], [ %i.bv, %bb.g ]
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.v, i64 %indvars.iv104
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !58 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !68
  %i.bb = sub nsw i32 %i.ba, %i.m
  %i.bc = sext i32 %i.bb to i64                   ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !69
  %i.bf = sub nsw i32 %i.be, %i.p
  %i.bg = sext i32 %i.bf to i64                   ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !70
  %i.bj = sub nsw i32 %i.bi, %i.s
  %i.bk = sext i32 %i.bj to i64                   ; 2 uses
  %i.bl = mul nsw i64 %i.bc, %i.bc
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !49 ; 3 uses
  %i.bo = mul nsw i64 %i.bl, %i.bn
  %i.bp = add nsw i64 %i.bo, %.sroa.0.090         ; 8 uses
  %i.bq = mul nsw i64 %i.bg, %i.bg
  %i.br = mul nsw i64 %i.bq, %i.bn
  %i.bs = add nsw i64 %i.br, %.sroa.10.089        ; 8 uses
  %i.bt = mul i64 %i.bn, %i.bk
  %i.bu = mul i64 %i.bt, %i.bk
  %i.bv = add nsw i64 %i.bu, %.sroa.17.088        ; 9 uses
  %indvars.iv.next105 = add nsw i64 %indvars.iv104, 1 ; 2 uses
  %i.bw = icmp slt i64 %indvars.iv.next105, %i.x
  br i1 %i.bw, label %bb.g, label %._crit_edge93, !llvm.loop !107
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #6

declare i32 @ff_oklab_int_to_srgb_u8(i64, i32) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @cmp_color(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #7 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !67
  %i.b = load i32, ptr %1, align 8, !tbaa !67
  %i.c = tail call i32 @llvm.ucmp.i32.i32(i32 %i.a, i32 %i.b)
  ret i32 %i.c
}

declare ptr @av_malloc_array(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @cmp_Lab(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !58     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !68   ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !58     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !68   ; 2 uses
  %.not = icmp eq i32 %i.c, %i.f
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @llvm.scmp.i32.i32(i32 %i.c, i32 %i.f)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.h, align 4, !tbaa !69
  %2 = load <2 x i32>, ptr %i.h, align 4, !tbaa !42
  %3 = load i32, ptr %i.i, align 4, !tbaa !69
  %4 = load <2 x i32>, ptr %i.i, align 4, !tbaa !42
  %5 = tail call <2 x i32> @llvm.scmp.v2i32.v2i32(<2 x i32> %4, <2 x i32> %2) ; 2 uses
  %.not18 = icmp eq i32 %3, %i.j
  %6 = extractelement <2 x i32> %5, i64 0
  %7 = extractelement <2 x i32> %5, i64 1
  %i.k = select i1 %.not18, i32 %7, i32 %6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = phi i32 [ %i.g, %bb.b ], [ %i.k, %bb.c ]
  ret i32 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @cmp_Lba(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !58     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !68   ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !58     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !68   ; 2 uses
  %.not = icmp eq i32 %i.c, %i.f
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @llvm.scmp.i32.i32(i32 %i.c, i32 %i.f)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %3 = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.j = load i32, ptr %3, align 4, !tbaa !70
  %4 = load <2 x i32>, ptr %i.h, align 4, !tbaa !42
  %5 = load i32, ptr %i.i, align 4, !tbaa !70
  %6 = load <2 x i32>, ptr %2, align 4, !tbaa !42
  %7 = tail call <2 x i32> @llvm.scmp.v2i32.v2i32(<2 x i32> %6, <2 x i32> %4) ; 2 uses
  %.not18 = icmp eq i32 %5, %i.j
  %8 = extractelement <2 x i32> %7, i64 0
  %9 = extractelement <2 x i32> %7, i64 1
  %i.k = select i1 %.not18, i32 %8, i32 %9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = phi i32 [ %i.g, %bb.b ], [ %i.k, %bb.c ]
  ret i32 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @cmp_bLa(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !58     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !70   ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !58     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !70   ; 2 uses
  %.not = icmp eq i32 %i.c, %i.f
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @llvm.scmp.i32.i32(i32 %i.c, i32 %i.f)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.j = load i32, ptr %i.h, align 4, !tbaa !68
  %2 = load <2 x i32>, ptr %i.h, align 4, !tbaa !42
  %3 = load i32, ptr %i.i, align 4, !tbaa !68
  %4 = load <2 x i32>, ptr %i.i, align 4, !tbaa !42
  %5 = tail call <2 x i32> @llvm.scmp.v2i32.v2i32(<2 x i32> %4, <2 x i32> %2) ; 2 uses
  %.not18 = icmp eq i32 %3, %i.j
  %6 = extractelement <2 x i32> %5, i64 0
  %7 = extractelement <2 x i32> %5, i64 1
  %i.k = select i1 %.not18, i32 %7, i32 %6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = phi i32 [ %i.g, %bb.b ], [ %i.k, %bb.c ]
  ret i32 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @cmp_aLb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !58     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !69   ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !58     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !69   ; 2 uses
  %.not = icmp eq i32 %i.c, %i.f
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @llvm.scmp.i32.i32(i32 %i.c, i32 %i.f)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !70
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !70
  %i.l = tail call i32 @llvm.scmp.i32.i32(i32 %i.k, i32 %i.i)
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.o = load i32, ptr %i.m, align 4, !tbaa !68   ; 2 uses
  %i.p = load i32, ptr %i.n, align 4, !tbaa !68   ; 2 uses
  %i.q = tail call i32 @llvm.scmp.i32.i32(i32 %i.p, i32 %i.o)
  %.not18 = icmp eq i32 %i.p, %i.o
  %i.r = select i1 %.not18, i32 %i.l, i32 %i.q
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = phi i32 [ %i.g, %bb.b ], [ %i.r, %bb.c ]
  ret i32 %i.s
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @cmp_baL(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !58     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !70   ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !58     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !70   ; 2 uses
  %.not = icmp eq i32 %i.c, %i.f
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @llvm.scmp.i32.i32(i32 %i.c, i32 %i.f)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %2 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %3 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i32, ptr %3, align 4, !tbaa !69
  %4 = load <2 x i32>, ptr %i.h, align 4, !tbaa !42
  %5 = load i32, ptr %i.i, align 4, !tbaa !69
  %6 = load <2 x i32>, ptr %2, align 4, !tbaa !42
  %7 = tail call <2 x i32> @llvm.scmp.v2i32.v2i32(<2 x i32> %6, <2 x i32> %4) ; 2 uses
  %.not18 = icmp eq i32 %5, %i.j
  %8 = extractelement <2 x i32> %7, i64 0
  %9 = extractelement <2 x i32> %7, i64 1
  %i.k = select i1 %.not18, i32 %8, i32 %9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = phi i32 [ %i.g, %bb.b ], [ %i.k, %bb.c ]
  ret i32 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @cmp_abL(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !58     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !69   ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !58     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !69   ; 2 uses
  %.not = icmp eq i32 %i.c, %i.f
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @llvm.scmp.i32.i32(i32 %i.c, i32 %i.f)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !68
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !68
  %i.l = tail call i32 @llvm.scmp.i32.i32(i32 %i.k, i32 %i.i)
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !70   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !70   ; 2 uses
  %i.q = tail call i32 @llvm.scmp.i32.i32(i32 %i.p, i32 %i.n)
  %.not18 = icmp eq i32 %i.p, %i.n
  %i.r = select i1 %.not18, i32 %i.l, i32 %i.q
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = phi i32 [ %i.g, %bb.b ], [ %i.r, %bb.c ]
  ret i32 %i.s
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #10

declare i32 @av_dict_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i32 @request_frame(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !111    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19   ; 3 uses
  %i.g = tail call i32 @ff_request_frame(ptr noundef %i.d) #14 ; 2 uses
  %i.h = icmp eq i32 %i.g, -541478725
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 538676 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !113
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 524328
  %i.l = load i32, ptr %i.k, align 8, !tbaa !51
  %.not13 = icmp eq i32 %i.l, 0
  br i1 %.not13, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !52
  %.not14 = icmp eq i32 %i.n, 2
  br i1 %.not14, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = tail call fastcc ptr @get_palette_frame(ptr noundef nonnull %i.a)
  %i.p = tail call i32 @ff_filter_frame(ptr noundef nonnull %0, ptr noundef %i.o) #14
  store i32 1, ptr %i.i, align 4, !tbaa !113
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %.0 = phi i32 [ %i.p, %bb.e ], [ -541478725, %bb.d ], [ -541478725, %bb.c ], [ -541478725, %bb.b ], [ %i.g, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @config_output(ptr nofree noundef writeonly captures(none) initializes((40, 56)) %0) #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 16, ptr %i.a, align 4, !tbaa !60
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 16, ptr %i.b, align 8, !tbaa !59
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 4294967297, ptr %i.c, align 8, !tbaa !42
  ret i32 0
}

declare i32 @ff_request_frame(ptr noundef) local_unnamed_addr #3

declare ptr @av_default_item_name(ptr noundef) #3

declare i32 @ff_formats_ref(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ff_make_pixel_format_list(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) <2 x i32> @llvm.scmp.v2i32.v2i32(<2 x i32>, <2 x i32>) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS8AVFilter", !9, i64 0}
!12 = !{!"p1 omnipotent char", !9, i64 0}
!13 = !{!"p1 _ZTS11AVFilterPad", !9, i64 0}
!14 = !{!"any p2 pointer", !9, i64 0}
!15 = !{!"p2 _ZTS12AVFilterLink", !14, i64 0}
!16 = !{!"p1 _ZTS13AVFilterGraph", !9, i64 0}
!17 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!18 = !{!"AVFilterContext", !10, i64 0, !11, i64 8, !12, i64 16, !13, i64 24, !15, i64 32, !6, i64 40, !13, i64 48, !15, i64 56, !6, i64 64, !9, i64 72, !16, i64 80, !6, i64 88, !6, i64 92, !12, i64 96, !6, i64 104, !17, i64 112, !6, i64 120}
!19 = !{!18, !9, i64 72}
!20 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!21 = !{!"p2 _ZTS9color_ref", !14, i64 0}
!22 = !{!"PaletteGenContext", !10, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !20, i64 24, !5, i64 32, !21, i64 524320, !6, i64 524328, !5, i64 524336, !6, i64 538672, !6, i64 538676, !5, i64 538680}
!23 = !{!22, !6, i64 8}
!24 = !{!22, !6, i64 12}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!"p1 _ZTS15AVFilterContext", !9, i64 0}
!27 = !{!"AVRational", !6, i64 0, !6, i64 4}
!28 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!29 = !{!"p2 _ZTS15AVFrameSideData", !14, i64 0}
!30 = !{!"p1 _ZTS15AVFilterFormats", !9, i64 0}
!31 = !{!"p1 _ZTS22AVFilterChannelLayouts", !9, i64 0}
!32 = !{!"AVFilterFormatsConfig", !30, i64 0, !30, i64 8, !31, i64 16, !30, i64 24, !30, i64 32, !30, i64 40}
!33 = !{!"AVFilterLink", !26, i64 0, !13, i64 8, !26, i64 16, !13, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !27, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !28, i64 72, !27, i64 96, !29, i64 104, !6, i64 112, !6, i64 116, !32, i64 120, !32, i64 168}
!34 = !{!"p2 omnipotent char", !14, i64 0}
!35 = !{!"long", !5, i64 0}
!36 = !{!"p2 _ZTS11AVBufferRef", !14, i64 0}
!37 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!38 = !{!"AVFrame", !5, i64 0, !5, i64 64, !34, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !27, i64 124, !35, i64 136, !35, i64 144, !27, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !36, i64 248, !6, i64 256, !29, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !35, i64 304, !37, i64 312, !6, i64 320, !17, i64 328, !17, i64 336, !35, i64 344, !35, i64 352, !35, i64 360, !35, i64 368, !9, i64 376, !28, i64 384, !35, i64 408, !6, i64 416}
!39 = !{!38, !6, i64 108}
!40 = !{!38, !6, i64 104}
!41 = !{!12, !12, i64 0}
!42 = !{!6, !6, i64 0}
!43 = !{!"p1 _ZTS9color_ref", !9, i64 0}
!44 = !{!"hist_node", !43, i64 0, !6, i64 8}
!45 = !{!44, !6, i64 8}
!46 = !{!44, !43, i64 0}
!47 = !{!"Lab", !6, i64 0, !6, i64 4, !6, i64 8}
!48 = !{!"color_ref", !6, i64 0, !47, i64 4, !35, i64 16}
!49 = !{!48, !35, i64 16}
!50 = !{!"llvm.loop.unswitch.partial.disable"}
!51 = !{!22, !6, i64 524328}
!52 = !{!22, !6, i64 16}
!53 = !{!38, !35, i64 136}
!54 = !{!18, !15, i64 56}
!55 = !{!"p1 _ZTS12AVFilterLink", !9, i64 0}
!56 = !{!55, !55, i64 0}
!57 = !{!22, !21, i64 524320}
!58 = !{!43, !43, i64 0}
!59 = !{!33, !6, i64 40}
!60 = !{!33, !6, i64 44}
!61 = !{!"range_box", !6, i64 0, !47, i64 4, !6, i64 16, !35, i64 24, !35, i64 32, !6, i64 40, !6, i64 44, !6, i64 48}
!62 = !{!61, !6, i64 44}
!63 = !{!61, !6, i64 16}
!64 = !{!61, !6, i64 40}
!65 = !{!61, !35, i64 24}
!66 = !{!61, !35, i64 32}
!67 = !{!61, !6, i64 0}
!68 = !{!48, !6, i64 4}
!69 = !{!48, !6, i64 8}
!70 = !{!48, !6, i64 12}
!71 = distinct !{!71, !25}
!72 = !{!"p1 _ZTS21AVFilterFormatsConfig", !9, i64 0}
!73 = !{!72, !72, i64 0}
!74 = distinct !{!74, !25}
!75 = distinct !{!75, !25}
!76 = distinct !{!76, !25, !50}
!77 = distinct !{!77, !25}
!78 = distinct !{!78, !25, !50}
!79 = distinct !{!79, !25}
!80 = !{!20, !20, i64 0}
!81 = !{!33, !26, i64 16}
!82 = !{!38, !6, i64 288}
!83 = !{!22, !20, i64 24}
!84 = !{!48, !6, i64 0}
!85 = distinct !{!85, i1 false, !"LVerDomain"}
!86 = distinct !{!86, !85}
!87 = distinct !{!87, !85}
!88 = distinct !{!88, !25, !99, !100}
!89 = distinct !{!89, !101}
!90 = distinct !{!90, !25}
!91 = distinct !{!91, !25, !99}
!92 = distinct !{!92, !25}
!93 = distinct !{!93, !25}
!94 = distinct !{!94, !25, !50}
!95 = distinct !{!95, !25}
!96 = distinct !{!96, !25}
!97 = !{!86}
!98 = !{!87}
!99 = !{!"llvm.loop.isvectorized", i32 1}
!100 = !{!"llvm.loop.unroll.runtime.disable"}
!101 = !{!"llvm.loop.unroll.disable"}
!102 = !{!61, !6, i64 48}
!103 = !{!22, !6, i64 538672}
!104 = !{!9, !9, i64 0}
!105 = !{!5, !5, i64 0}
!106 = distinct !{!106, !25}
!107 = distinct !{!107, !25}
!108 = !{!61, !6, i64 4}
!109 = !{!61, !6, i64 8}
!110 = !{!61, !6, i64 12}
!111 = !{!33, !26, i64 0}
!112 = !{!18, !15, i64 32}
!113 = !{!22, !6, i64 538676}
end_hunk_0
