inline.NumInlined: 21
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@speedhq_decode_frame:bb.a
  %i.f = load i32, ptr %i.e, align 8, !tbaa !41   ; 6 uses
  %i.g = icmp slt i32 %i.f, 4
  br i1 %i.g, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !42   ; 3 uses
  %i.j = icmp sgt i32 %i.i, 7
  %i.k = and i32 %i.i, 7
  %.not = icmp eq i32 %i.k, 0
  %or.cond = and i1 %i.j, %.not
  br i1 %or.cond, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.m = load i32, ptr %i.l, align 4, !tbaa !43
  %i.n = mul nsw i32 %i.m, %i.i
  %i.o = sdiv i32 %i.n, 256
  %i.p = icmp slt i32 %i.f, %i.o
  br i1 %i.p, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load i8, ptr %i.d, align 1, !tbaa !44    ; 2 uses
  %i.r = zext nneg i8 %i.q to i32
  %i.s = icmp ugt i8 %i.q, 99
  br i1 %i.s, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.u = load i32, ptr %i.t, align 8, !tbaa !45
  %i.v = icmp sgt i32 %i.u, 47
  br i1 %i.v, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 216 ; 2 uses
  %i.x = sub nuw nsw i32 100, %i.r                ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %indvars.iv.i = phi i64 [ 0, %bb.f ], [ %indvars.iv.next.i.1, %bb.g ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr @ff_zigzag_direct, i64 %indvars.iv.i
  %i.z = load i8, ptr %i.y, align 2, !tbaa !44
  %i.aa = zext i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr @unscaled_quant_matrix, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !44
  %i.ad = zext i8 %i.ac to i32
  %i.ae = mul nuw nsw i32 %i.x, %i.ad
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !46
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr @ff_zigzag_direct, i64 %indvars.iv.next.i
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !44
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @unscaled_quant_matrix, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !44
  %i.al = zext i8 %i.ak to i32
  %i.am = mul nuw nsw i32 %i.x, %i.al
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next.i
  store i32 %i.am, ptr %i.an, align 4, !tbaa !46
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 64
  br i1 %exitcond.not.i.1, label %compute_quant_matrix.exit, label %bb.g, !llvm.loop !47

compute_quant_matrix.exit:                        ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.ap = getelementptr i8, ptr %i.d, i64 2
  %i.aq = load i16, ptr %i.ap, align 1
  %i.ar = zext i16 %i.aq to i32
  %i.as = shl nuw nsw i32 %i.ar, 8
  %i.at = load i8, ptr %i.ao, align 1, !tbaa !44
  %i.au = zext i8 %i.at to i32
  %i.av = or disjoint i32 %i.as, %i.au            ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 488 ; 2 uses
  store i32 %i.av, ptr %i.aw, align 8, !tbaa !49
  %i.ax = add nsw i32 %i.f, -3
  %.not50 = icmp samesign ult i32 %i.av, %i.ax
  br i1 %.not50, label %bb.h, label %bb.m

bb.h:                                             ; preds = %compute_quant_matrix.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.az = load <2 x i32>, ptr %i.h, align 8, !tbaa !46
  %i.ba = add nsw <2 x i32> %i.az, splat (i32 15)
  %i.bb = and <2 x i32> %i.ba, splat (i32 -16)
  store <2 x i32> %i.bb, ptr %i.ay, align 8, !tbaa !46
  %i.bc = tail call i32 @ff_thread_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #9 ; 2 uses
  %i.bd = icmp slt i32 %i.bc, 0
  br i1 %i.bd, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 480
  store ptr %3, ptr %i.be, align 8, !tbaa !50
  %i.bf = load i32, ptr %i.aw, align 8, !tbaa !49 ; 2 uses
  %i.bg = icmp eq i32 %i.bf, 4
  %i.bh = add nsw i32 %i.f, -4
  %i.bi = icmp eq i32 %i.bf, %i.bh
  %or.cond52 = select i1 %i.bg, i1 true, i1 %i.bi
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !51 ; 2 uses
  br i1 %or.cond52, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bl = tail call i32 %i.bk(ptr noundef nonnull %0, ptr noundef nonnull @decode_slice_progressive, ptr noundef %1, ptr noundef null, i32 noundef 4) #9 ; 2 uses
  %i.bm = icmp slt i32 %i.bl, 0
  br i1 %i.bm, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bn = tail call i32 %i.bk(ptr noundef nonnull %0, ptr noundef nonnull @decode_slice_interlaced, ptr noundef %1, ptr noundef null, i32 noundef 8) #9 ; 2 uses
  %i.bo = icmp slt i32 %i.bn, 0
  br i1 %i.bo, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store i32 1, ptr %2, align 4, !tbaa !46
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.h, %compute_quant_matrix.exit, %bb.e, %bb.d, %bb.c, %bb.a, %bb.b, %bb.l
  %.0 = phi i32 [ %i.bl, %bb.j ], [ -1094995529, %bb.a ], [ -1094995529, %bb.c ], [ -1094995529, %bb.d ], [ %i.f, %bb.e ], [ -1094995529, %compute_quant_matrix.exit ], [ %i.bc, %bb.h ], [ %i.f, %bb.l ], [ -1094995529, %bb.b ], [ %i.bn, %bb.k ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind optsize uwtable
define internal void @speedhq_static_init() #0 {
bb.a:
  tail call void @ff_vlc_init_table_sparse(ptr noundef nonnull @dc_lum_vlc_le, i32 noundef 512, i32 noundef 9, i32 noundef 12, ptr noundef nonnull @ff_mpeg12_vlc_dc_lum_bits, i32 noundef 1, i32 noundef 1, ptr noundef nonnull @ff_mpeg12_vlc_dc_lum_code, i32 noundef 2, i32 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 8) #9
  tail call void @ff_vlc_init_table_sparse(ptr noundef nonnull @dc_chroma_vlc_le, i32 noundef 514, i32 noundef 9, i32 noundef 12, ptr noundef nonnull @ff_mpeg12_vlc_dc_chroma_bits, i32 noundef 1, i32 noundef 1, ptr noundef nonnull @ff_mpeg12_vlc_dc_chroma_code, i32 noundef 2, i32 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 8) #9
  tail call void @ff_init_2d_vlc_rl(ptr noundef nonnull @ff_speedhq_vlc_table, ptr noundef nonnull @speedhq_rl_vlc, ptr noundef nonnull @ff_speedhq_run, ptr noundef nonnull @ff_speedhq_level, i32 noundef 121, i32 noundef 674, i32 noundef 12) #9
  tail call fastcc void @compute_alpha_vlcs() #10
  ret void
}

declare void @ff_blockdsp_init(ptr noundef) local_unnamed_addr #3

declare void @ff_idctdsp_init(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ff_permute_scantable(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @ff_vlc_init_table_sparse(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @ff_init_2d_vlc_rl(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind optsize uwtable
define internal fastcc void @compute_alpha_vlcs() unnamed_addr #0 {
vector.ph:
  %i.a = alloca [134 x i16], align 16             ; 7 uses
  %i.b = alloca [266 x i16], align 16             ; 6 uses
  %i.c = alloca [134 x i8], align 16              ; 7 uses
  %i.d = alloca [266 x i8], align 16              ; 6 uses
  %i.e = alloca [134 x i16], align 16             ; 7 uses
  %i.f = alloca [266 x i16], align 16             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  store i16 0, ptr %i.a, align 16, !tbaa !52
  store i8 1, ptr %i.c, align 16, !tbaa !44
  store i16 0, ptr %i.e, align 16, !tbaa !52
  %scevgep = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i32 67372036, ptr %scevgep, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store <4 x i16> <i16 1, i16 5, i16 9, i16 13>, ptr %i.g, align 2, !tbaa !52
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  store <4 x i16> <i16 1, i16 2, i16 3, i16 4>, ptr %i.h, align 2, !tbaa !52
  %scevgep73 = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(128) %scevgep73, i8 10, i64 128, i1 false), !tbaa !44
  br label %vector.body91

vector.body91:                                    ; preds = %vector.body91, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body91 ] ; 2 uses
  %vec.ind = phi <8 x i16> [ <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, %vector.ph ], [ %vec.ind.next, %vector.body91 ] ; 3 uses
  %i.i = or disjoint i64 %index, 5                ; 2 uses
  %i.j = shl nuw nsw <8 x i16> %vec.ind, splat (i16 3)
  %i.k = or disjoint <8 x i16> %i.j, splat (i16 7)
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.i
  store <8 x i16> %i.k, ptr %i.l, align 2, !tbaa !52
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.i
  store <8 x i16> %vec.ind, ptr %i.m, align 2, !tbaa !52
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i16> %vec.ind, splat (i16 8)
  %i.n = icmp eq i64 %index.next, 128
  br i1 %i.n, label %middle.block92, label %vector.body91, !llvm.loop !54

middle.block92:                                   ; preds = %vector.body91
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 266
  store i16 3, ptr %i.o, align 2, !tbaa !52
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 133
  store i8 3, ptr %i.p, align 1, !tbaa !44
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 266
  store i16 -1, ptr %i.q, align 2, !tbaa !52
  call void @ff_vlc_init_table_sparse(ptr noundef nonnull @dc_alpha_run_vlc_le, i32 noundef 160, i32 noundef 5, i32 noundef 134, ptr noundef nonnull %i.c, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %i.a, i32 noundef 2, i32 noundef 2, ptr noundef nonnull %i.e, i32 noundef 2, i32 noundef 2, i32 noundef 12) #9
  %scevgep78 = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  br label %vector.ph93

vector.ph93:                                      ; preds = %middle.block92, %vector.ph93
  %.not = phi i1 [ true, %middle.block92 ], [ false, %vector.ph93 ] ; 3 uses
  %.067 = phi i16 [ 0, %middle.block92 ], [ 1, %vector.ph93 ] ; 2 uses
  %.25666 = phi i32 [ 0, %middle.block92 ], [ %i.ag, %vector.ph93 ] ; 2 uses
  %i.r = shl nuw nsw i16 %.067, 1
  %i.s = or disjoint i16 %i.r, 1
  %i.t = sext i32 %.25666 to i64                  ; 6 uses
  %i.u = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.t
  store i16 %i.s, ptr %i.u, align 2, !tbaa !52
  %i.v = getelementptr inbounds i8, ptr %i.d, i64 %i.t
  store i8 2, ptr %i.v, align 1, !tbaa !44
  %i.w = select i1 %.not, i16 1, i16 -1
  %i.x = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.t
  store i16 %i.w, ptr %i.x, align 2, !tbaa !52
  %scevgep79 = getelementptr i8, ptr %scevgep78, i64 %i.t
  store i32 84215045, ptr %scevgep79, align 1
  %0 = add nsw i64 %i.t, 1                        ; 2 uses
  %i.y = add nsw i64 %i.t, 5                      ; 2 uses
  %i.z = shl nuw nsw i16 %.067, 2
  %i.aa = insertelement <4 x i16> poison, i16 %i.z, i64 0
  %i.ab = shufflevector <4 x i16> %i.aa, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.ac = or disjoint <4 x i16> %i.ab, <i16 2, i16 10, i16 18, i16 26>
  %i.ad = getelementptr inbounds [2 x i8], ptr %i.b, i64 %0
  store <4 x i16> %i.ac, ptr %i.ad, align 2, !tbaa !52
  %i.ae = select i1 %.not, <4 x i16> <i16 2, i16 3, i16 4, i16 5>, <4 x i16> <i16 -2, i16 -3, i16 -4, i16 -5>
  %i.af = getelementptr inbounds [2 x i8], ptr %i.f, i64 %0
  store <4 x i16> %i.ae, ptr %i.af, align 2, !tbaa !52
  %i.ag = trunc i64 %i.y to i32
  br i1 %.not, label %vector.ph93, label %.preheader.preheader, !llvm.loop !57

.preheader.preheader:                             ; preds = %vector.ph93
  %ind.escape = add i32 %.25666, 5                ; 2 uses
  %sext = shl i64 %i.y, 32
  %i.ah = ashr exact i64 %sext, 32
  %scevgep83 = getelementptr i8, ptr %i.d, i64 %i.ah
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %scevgep83, i8 10, i64 256, i1 false), !tbaa !44
  %i.ai = sext i32 %ind.escape to i64
  br label %vector.body97

vector.body97:                                    ; preds = %vector.body97, %.preheader.preheader
  %index98 = phi i64 [ 0, %.preheader.preheader ], [ %index.next100, %vector.body97 ] ; 2 uses
  %vec.ind99 = phi <8 x i16> [ <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, %.preheader.preheader ], [ %vec.ind.next101, %vector.body97 ] ; 3 uses
  %i.aj = add i64 %index98, %i.ai                 ; 2 uses
  %i.ak = shl nuw nsw <8 x i16> %vec.ind99, splat (i16 2)
  %i.al = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.aj
  store <8 x i16> %i.ak, ptr %i.al, align 2, !tbaa !52
  %i.am = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.aj
  store <8 x i16> %vec.ind99, ptr %i.am, align 2, !tbaa !52
  %index.next100 = add nuw i64 %index98, 8        ; 2 uses
  %vec.ind.next101 = add <8 x i16> %vec.ind99, splat (i16 8)
  %i.an = icmp eq i64 %index.next100, 256
  br i1 %i.an, label %middle.block102, label %vector.body97, !llvm.loop !58

middle.block102:                                  ; preds = %vector.body97
  %i.ao = icmp eq i32 %ind.escape, 10
  br i1 %i.ao, label %bb.b, label %bb.a

bb.a:                                             ; preds = %middle.block102
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, i32 noundef 568) #9
  call void @abort() #11
  unreachable

bb.b:                                             ; preds = %middle.block102
  call void @ff_vlc_init_table_sparse(ptr noundef nonnull @dc_alpha_level_vlc_le, i32 noundef 288, i32 noundef 5, i32 noundef 266, ptr noundef nonnull %i.d, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %i.b, i32 noundef 2, i32 noundef 2, ptr noundef nonnull %i.f, i32 noundef 2, i32 noundef 2, i32 noundef 12) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

declare i32 @ff_thread_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal range(i32 -1094995529, 1) i32 @decode_slice_progressive(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 480
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !39
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !41   ; 2 uses
  %i.i = tail call fastcc i32 @decode_speedhq_field(ptr noundef %i.b, ptr noundef %i.f, i32 noundef %i.h, ptr noundef %1, i32 noundef 0, i32 noundef 4, i32 noundef %i.h, i32 noundef 1, i32 noundef %2)
  ret i32 %i.i
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1094995529, 1) i32 @decode_slice_interlaced(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 4 uses
  %i.c = srem i32 %2, 4                           ; 2 uses
  %.off = add i32 %2, 3
  %i.d = icmp ult i32 %.off, 7
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 480
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !50   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !41   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 488
  %i.l = load i32, ptr %i.k, align 8, !tbaa !49   ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = tail call fastcc i32 @decode_speedhq_field(ptr noundef %i.b, ptr noundef %i.h, i32 noundef %i.j, ptr noundef %1, i32 noundef 0, i32 noundef 4, i32 noundef %i.l, i32 noundef 2, i32 noundef %i.c)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = tail call fastcc i32 @decode_speedhq_field(ptr noundef %i.b, ptr noundef %i.h, i32 noundef %i.j, ptr noundef %1, i32 noundef 1, i32 noundef %i.l, i32 noundef %i.j, i32 noundef 2, i32 noundef %i.c)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.m, %bb.b ], [ %i.n, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @decode_speedhq_field(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef range(i32 0, 2) %4, i32 noundef %5, i32 noundef %6, i32 noundef range(i32 1, 3) %7, i32 noundef %8) unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 16 uses
  %i.b = alloca [16 x i8], align 16               ; 6 uses
  %i.c = alloca [5 x i32], align 16               ; 8 uses
  %9 = alloca %struct.GetBitContext, align 8      ; 38 uses
  %i.d = alloca [4 x i32], align 16               ; 20 uses
  %i.e = alloca [16 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !46
  %i.h = mul nsw i32 %i.g, %7                     ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !46
  %i.k = mul nsw i32 %i.j, %7                     ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 4 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !46
  %i.n = mul nsw i32 %i.m, %7                     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 476 ; 6 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !35
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 76
  %i.r = load i32, ptr %i.q, align 4, !tbaa !46
  %i.s = mul nsw i32 %i.r, %7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0187 = phi i32 [ %i.s, %bb.b ], [ undef, %bb.a ] ; 7 uses
  %i.t = icmp slt i32 %6, %5
  %i.u = sub nsw i32 %6, %5
  %i.v = icmp slt i32 %i.u, 3
  %or.cond222 = select i1 %i.t, i1 true, i1 %i.v
  %i.w = icmp sgt i32 %6, %2
  %or.cond223 = or i1 %i.w, %or.cond222
  br i1 %or.cond223, label %decode_speedhq_border.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %5, ptr %i.c, align 16, !tbaa !46
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 %6, ptr %i.x, align 16, !tbaa !46
  %i.y = add nsw i32 %6, -3                       ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.aa = zext i32 %5 to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %i.aa ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 1
  %i.ad = load i16, ptr %i.ac, align 1
  %i.ae = zext i16 %i.ad to i32
  %i.af = shl nuw nsw i32 %i.ae, 8
  %i.ag = load i8, ptr %i.ab, align 1, !tbaa !44
  %i.ah = zext i8 %i.ag to i32
  %i.ai = or disjoint i32 %i.af, %i.ah            ; 2 uses
  %i.aj = add i32 %i.ai, %5                       ; 4 uses
  store i32 %i.aj, ptr %i.z, align 4, !tbaa !46
  %i.ak = icmp samesign ugt i32 %i.ai, 2
  %i.al = icmp sle i32 %i.aj, %i.y
  %or.cond225.not = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %or.cond225.not, label %bb.e, label %decode_speedhq_border.exit

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.an = zext i32 %i.aj to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 %i.an ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 1
  %i.aq = load i16, ptr %i.ap, align 1
  %i.ar = zext i16 %i.aq to i32
  %i.as = shl nuw nsw i32 %i.ar, 8
  %i.at = load i8, ptr %i.ao, align 1, !tbaa !44
  %i.au = zext i8 %i.at to i32
  %i.av = or disjoint i32 %i.as, %i.au            ; 2 uses
  %i.aw = add i32 %i.av, %i.aj                    ; 4 uses
  store i32 %i.aw, ptr %i.am, align 8, !tbaa !46
  %i.ax = icmp samesign ugt i32 %i.av, 2
  %i.ay = icmp sle i32 %i.aw, %i.y
  %or.cond225.not.1 = select i1 %i.ax, i1 %i.ay, i1 false
  br i1 %or.cond225.not.1, label %bb.f, label %decode_speedhq_border.exit

bb.f:                                             ; preds = %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.ba = zext i32 %i.aw to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 %i.ba ; 2 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 1
  %i.bd = load i16, ptr %i.bc, align 1
  %i.be = zext i16 %i.bd to i32
  %i.bf = shl nuw nsw i32 %i.be, 8
  %i.bg = load i8, ptr %i.bb, align 1, !tbaa !44
  %i.bh = zext i8 %i.bg to i32
  %i.bi = or disjoint i32 %i.bf, %i.bh            ; 2 uses
  %i.bj = add i32 %i.bi, %i.aw                    ; 2 uses
  store i32 %i.bj, ptr %i.az, align 4, !tbaa !46
end_hunk_0
