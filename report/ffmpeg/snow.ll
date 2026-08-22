Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/snow?download=true
inline.NumInlined: 41
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 23
begin_hunk_0_@mc_block:bb.a
  %i.aix = lshr i16 %i.aiw, 3
  %i.aiy = trunc i16 %i.aix to i8
  %i.aiz = getelementptr inbounds nuw i8, ptr %.1293406, i64 %indvars.iv492.ph
  store i8 %i.aiy, ptr %i.aiz, align 1, !tbaa !12
  %indvars.iv.next493.prol = or disjoint i64 %indvars.iv492.ph, 1
  br label %vec.epilog.scalar.ph764.prol.loopexit

vec.epilog.scalar.ph764.prol.loopexit:            ; preds = %vec.epilog.scalar.ph764.prol, %vec.epilog.scalar.ph764.preheader
  %indvars.iv492.unr = phi i64 [ %indvars.iv492.ph, %vec.epilog.scalar.ph764.preheader ], [ %indvars.iv.next493.prol, %vec.epilog.scalar.ph764.prol ]
  %i.aja = icmp eq i64 %indvars.iv492.ph, %i.aho
  br i1 %i.aja, label %._crit_edge, label %vec.epilog.scalar.ph764

vec.epilog.scalar.ph764:                          ; preds = %vec.epilog.scalar.ph764.prol.loopexit, %vec.epilog.scalar.ph764
  %indvars.iv492 = phi i64 [ %indvars.iv.next493.1, %vec.epilog.scalar.ph764 ], [ %indvars.iv492.unr, %vec.epilog.scalar.ph764.prol.loopexit ] ; 5 uses
  %i.ajb = getelementptr inbounds nuw i8, ptr %.0269408, i64 %indvars.iv492
  %i.ajc = load i8, ptr %i.ajb, align 1, !tbaa !12
  %i.ajd = zext i8 %i.ajc to i16
  %i.aje = mul nuw i16 %i.ajd, %i.ago
  %i.ajf = getelementptr inbounds nuw i8, ptr %.0409, i64 %indvars.iv492
  %i.ajg = load i8, ptr %i.ajf, align 1, !tbaa !12
  %i.ajh = zext i8 %i.ajg to i16
  %i.aji = mul i16 %i.agp, %i.ajh
  %i.ajj = add nuw i16 %i.aje, 4
  %i.ajk = add i16 %i.ajj, %i.aji
  %i.ajl = lshr i16 %i.ajk, 3
  %i.ajm = trunc i16 %i.ajl to i8
  %i.ajn = getelementptr inbounds nuw i8, ptr %.1293406, i64 %indvars.iv492
  store i8 %i.ajm, ptr %i.ajn, align 1, !tbaa !12
  %indvars.iv.next493 = add nuw nsw i64 %indvars.iv492, 1 ; 3 uses
  %i.ajo = getelementptr inbounds nuw i8, ptr %.0269408, i64 %indvars.iv.next493
  %i.ajp = load i8, ptr %i.ajo, align 1, !tbaa !12
  %i.ajq = zext i8 %i.ajp to i16
  %i.ajr = mul nuw i16 %i.ajq, %i.ago
  %i.ajs = getelementptr inbounds nuw i8, ptr %.0409, i64 %indvars.iv.next493
  %i.ajt = load i8, ptr %i.ajs, align 1, !tbaa !12
  %i.aju = zext i8 %i.ajt to i16
  %i.ajv = mul i16 %i.agp, %i.aju
  %i.ajw = add nuw i16 %i.ajr, 4
  %i.ajx = add i16 %i.ajw, %i.ajv
  %i.ajy = lshr i16 %i.ajx, 3
  %i.ajz = trunc i16 %i.ajy to i8
  %i.aka = getelementptr inbounds nuw i8, ptr %.1293406, i64 %indvars.iv.next493
  store i8 %i.ajz, ptr %i.aka, align 1, !tbaa !12
  %indvars.iv.next493.1 = add nuw nsw i64 %indvars.iv492, 2 ; 2 uses
  %exitcond496.not.1 = icmp eq i64 %indvars.iv.next493.1, %wide.trip.count495
  br i1 %exitcond496.not.1, label %._crit_edge, label %vec.epilog.scalar.ph764, !llvm.loop !126

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph764.prol.loopexit, %vec.epilog.scalar.ph764, %vec.epilog.middle.block778, %middle.block760
  %i.akb = getelementptr inbounds i8, ptr %.0269408, i64 %i.agv
  %i.akc = getelementptr inbounds i8, ptr %.0409, i64 %i.agw
  %i.akd = getelementptr inbounds i8, ptr %.1293406, i64 %i.aat
  %i.ake = add nuw nsw i32 %.4407, 1              ; 2 uses
  %exitcond497.not = icmp eq i32 %i.ake, %5
  br i1 %exitcond497.not, label %.loopexit, label %iter.check763, !llvm.loop !127

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge411, %bb.k, %.preheader323.lr.ph, %bb.j, %.preheader.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: cold nounwind optsize uwtable
define range(i32 -12, 1) i32 @ff_snow_common_init(ptr noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128  ; 26 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %0, ptr %i.c, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 6148
  store i32 1, ptr %i.d, align 4, !tbaa !142
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 6136
  store i32 1, ptr %i.e, align 8, !tbaa !143
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 960
  tail call void @ff_videodsp_init(ptr noundef nonnull %i.f, i32 noundef 8) #16
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1744
  tail call void @ff_dwt_init(ptr noundef nonnull %i.g) #16
  tail call fastcc void @init_qpel(ptr noundef %i.b) #17
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 840
  store ptr @mc_block_hpel8016, ptr %i.h, align 8, !tbaa !144
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 584
  store ptr @mc_block_hpel8016, ptr %i.i, align 8, !tbaa !144
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 872
  store ptr @mc_block_hpel808, ptr %i.j, align 8, !tbaa !144
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 616
  store ptr @mc_block_hpel808, ptr %i.k, align 8, !tbaa !144
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 848
  store ptr @mc_block_hpel0816, ptr %i.l, align 8, !tbaa !144
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  store ptr @mc_block_hpel0816, ptr %i.m, align 8, !tbaa !144
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 880
  store ptr @mc_block_hpel088, ptr %i.n, align 8, !tbaa !144
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 624
  store ptr @mc_block_hpel088, ptr %i.o, align 8, !tbaa !144
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 856
  store ptr @mc_block_hpel8816, ptr %i.p, align 8, !tbaa !144
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 600
  store ptr @mc_block_hpel8816, ptr %i.q, align 8, !tbaa !144
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 888
  store ptr @mc_block_hpel888, ptr %i.r, align 8, !tbaa !144
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 632
  store ptr @mc_block_hpel888, ptr %i.s, align 8, !tbaa !144
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !20   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 112
  %i.v = load i32, ptr %i.u, align 8, !tbaa !145  ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 116
  %i.x = load i32, ptr %i.w, align 4, !tbaa !146  ; 2 uses
  %i.y = mul nsw i32 %i.x, %i.v
  %i.z = sext i32 %i.y to i64                     ; 2 uses
  %i.aa = tail call noalias ptr @av_calloc(i64 noundef %i.z, i64 noundef 2) #16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 6304
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !147
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ac = tail call noalias ptr @av_calloc(i64 noundef %i.z, i64 noundef 4) #16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 6288
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !148
  %.not46 = icmp eq ptr %i.ac, null
  br i1 %.not46, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = sext i32 %i.v to i64                    ; 2 uses
  %i.af = tail call noalias ptr @av_calloc(i64 noundef %i.ae, i64 noundef 4) #16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 6296
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !149
  %.not47 = icmp eq ptr %i.af, null
  br i1 %.not47, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = tail call noalias ptr @av_calloc(i64 noundef %i.ae, i64 noundef 2) #16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 6312
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !150
  %.not48 = icmp eq ptr %i.ah, null
  br i1 %.not48, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = add nsw i32 %i.v, 1
  %i.ak = ashr i32 %i.aj, 1
  %i.al = add nsw i32 %i.x, 1
  %i.am = ashr i32 %i.al, 1
  %i.an = mul nsw i32 %i.am, %i.ak
  %i.ao = add nsw i32 %i.an, 1
  %i.ap = sext i32 %i.ao to i64
  %i.aq = tail call noalias ptr @av_calloc(i64 noundef %i.ap, i64 noundef 4) #16 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 6320
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !151
  %.not49 = icmp eq ptr %i.aq, null
  br i1 %.not49, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 1784
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %bb.h, label %bb.g, !llvm.loop !152

bb.g:                                             ; preds = %.preheader, %bb.f
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.at = tail call ptr @av_frame_alloc() #16     ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv
  store ptr %i.at, ptr %i.au, align 8, !tbaa !46
  %.not52 = icmp eq ptr %i.at, null
  br i1 %.not52, label %.loopexit, label %bb.f

bb.h:                                             ; preds = %bb.f
  %i.av = tail call ptr @av_frame_alloc() #16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 1848 ; 2 uses
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !153
  %i.ax = tail call ptr @av_frame_alloc() #16     ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 1776
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !154
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !153
  %.not50 = icmp eq ptr %i.az, null
  %.not51 = icmp eq ptr %i.ax, null
  %or.cond = select i1 %.not50, i1 true, i1 %.not51
  br i1 %or.cond, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = tail call i32 @pthread_once(ptr noundef nonnull @ff_snow_common_init.init_static_once, ptr noundef nonnull @snow_static_init) #16 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.h, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.i
  %.045 = phi i32 [ -12, %bb.a ], [ 0, %bb.i ], [ -12, %bb.h ], [ -12, %bb.e ], [ -12, %bb.d ], [ -12, %bb.c ], [ -12, %bb.b ], [ -12, %bb.g ]
  ret i32 %.045
}

declare void @ff_videodsp_init(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @ff_dwt_init(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind optsize uwtable
define internal fastcc void @init_qpel(ptr noundef %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 976
  tail call void @ff_h264qpel_init(ptr noundef nonnull %i.a, i32 noundef 8) #16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1360
  store <4 x ptr> <ptr @put_snow_qpel2_mc00_8_c, ptr @put_snow_qpel2_mc10_8_c, ptr @put_snow_qpel2_mc20_8_c, ptr @put_snow_qpel2_mc30_8_c>, ptr %i.b, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1392
  store <4 x ptr> <ptr @put_snow_qpel2_mc01_8_c, ptr @put_snow_qpel2_mc11_8_c, ptr @put_snow_qpel2_mc21_8_c, ptr @put_snow_qpel2_mc31_8_c>, ptr %i.c, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1424
  store <4 x ptr> <ptr @put_snow_qpel2_mc02_8_c, ptr @put_snow_qpel2_mc12_8_c, ptr @put_snow_qpel2_mc22_8_c, ptr @put_snow_qpel2_mc32_8_c>, ptr %i.d, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1456
  store <4 x ptr> <ptr @put_snow_qpel2_mc03_8_c, ptr @put_snow_qpel2_mc13_8_c, ptr @put_snow_qpel2_mc23_8_c, ptr @put_snow_qpel2_mc33_8_c>, ptr %i.e, align 8, !tbaa !12
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @mc_block_hpel8016(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, i64 noundef %2, i32 %3) #8 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -3
  %.neg = mul i64 %2, -3
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 %.neg
  %i.c = trunc i64 %2 to i32
  tail call fastcc void @mc_block(ptr noundef null, ptr noundef %0, ptr noundef nonnull %i.b, i32 noundef %i.c, i32 noundef 16, i32 noundef 16, i32 noundef 8, i32 noundef 0)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @mc_block_hpel808(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, i64 noundef %2, i32 %3) #8 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -3
  %.neg = mul i64 %2, -3
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 %.neg
  %i.c = trunc i64 %2 to i32
  tail call fastcc void @mc_block(ptr noundef null, ptr noundef %0, ptr noundef nonnull %i.b, i32 noundef %i.c, i32 noundef 8, i32 noundef 8, i32 noundef 8, i32 noundef 0)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @mc_block_hpel0816(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, i64 noundef %2, i32 %3) #8 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -3
  %.neg = mul i64 %2, -3
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 %.neg
  %i.c = trunc i64 %2 to i32
  tail call fastcc void @mc_block(ptr noundef null, ptr noundef %0, ptr noundef nonnull %i.b, i32 noundef %i.c, i32 noundef 16, i32 noundef 16, i32 noundef 0, i32 noundef 8)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @mc_block_hpel088(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, i64 noundef %2, i32 %3) #8 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -3
  %.neg = mul i64 %2, -3
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 %.neg
  %i.c = trunc i64 %2 to i32
  tail call fastcc void @mc_block(ptr noundef null, ptr noundef %0, ptr noundef nonnull %i.b, i32 noundef %i.c, i32 noundef 8, i32 noundef 8, i32 noundef 0, i32 noundef 8)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @mc_block_hpel8816(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, i64 noundef %2, i32 %3) #8 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -3
  %.neg = mul i64 %2, -3
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 %.neg
  %i.c = trunc i64 %2 to i32
  tail call fastcc void @mc_block(ptr noundef null, ptr noundef %0, ptr noundef nonnull %i.b, i32 noundef %i.c, i32 noundef 16, i32 noundef 16, i32 noundef 8, i32 noundef 8)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @mc_block_hpel888(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, i64 noundef %2, i32 %3) #8 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -3
  %.neg = mul i64 %2, -3
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 %.neg
  %i.c = trunc i64 %2 to i32
  tail call fastcc void @mc_block(ptr noundef null, ptr noundef %0, ptr noundef nonnull %i.b, i32 noundef %i.c, i32 noundef 8, i32 noundef 8, i32 noundef 8, i32 noundef 8)
  ret void
}

declare ptr @av_frame_alloc() local_unnamed_addr #5

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @snow_static_init() #9 {
bb.a:
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.c
  %indvars.iv12 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next13, %bb.c ] ; 3 uses
  %i.a = getelementptr inbounds nuw [32 x i8], ptr @ff_scale_mv_ref, i64 %indvars.iv12
  %indvars.iv12.tr = trunc i64 %indvars.iv12 to i32
  %i.b = shl i32 %indvars.iv12.tr, 8
  %i.c = add i32 %i.b, 256
  br label %bb.d

bb.b:                                             ; preds = %bb.c
  ret void

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1 ; 2 uses
  %exitcond15.not = icmp eq i64 %indvars.iv.next13, 8
  br i1 %exitcond15.not, label %bb.b, label %.preheader, !llvm.loop !155

bb.d:                                             ; preds = %.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.d = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.e = udiv i32 %i.c, %i.d
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %i.e, ptr %i.f, align 4, !tbaa !35
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %bb.c, label %bb.d, !llvm.loop !156
}

; Function Attrs: nounwind uwtable
define range(i32 -12, 1) i32 @ff_snow_common_init_after_header(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128  ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 155080 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !157
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1776
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !154
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.h = load i32, ptr %i.g, align 8, !tbaa !35
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = load i32, ptr %i.i, align 8, !tbaa !145
  %i.k = shl nsw i32 %i.j, 1
  %i.l = add nsw i32 %i.k, 256
  %. = tail call i32 @llvm.smax.i32(i32 %i.h, i32 %i.l)
  %i.m = mul nsw i32 %., 112
  %i.n = sext i32 %i.m to i64
  %i.o = tail call noalias ptr @av_calloc(i64 noundef %i.n, i64 noundef 1) #16 ; 2 uses
  store ptr %i.o, ptr %i.c, align 8, !tbaa !157
  %.not102 = icmp eq ptr %i.o, null
  br i1 %.not102, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 6384 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !158  ; 2 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph115, label %.loopexit

.lr.ph115:                                        ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 6332
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 6336
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 6392
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 6136 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 6288
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 6304
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph115, %.critedge
  %i.z = phi i32 [ %i.q, %.lr.ph115 ], [ %i.cz, %.critedge ]
  %indvars.iv121 = phi i64 [ 0, %.lr.ph115 ], [ %indvars.iv.next122, %.critedge ] ; 3 uses
  %i.aa = load ptr, ptr %i.s, align 8, !tbaa !20  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 112
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !145 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 116
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !146 ; 2 uses
  %.not103 = icmp eq i64 %indvars.iv121, 0
  br i1 %.not103, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = load i32, ptr %i.t, align 4, !tbaa !48
  %i.ag = sub nsw i32 0, %i.ac
  %i.ah = ashr i32 %i.ag, %i.af
  %i.ai = sub nsw i32 0, %i.ah
  %i.aj = load i32, ptr %i.u, align 8, !tbaa !159
  %i.ak = sub nsw i32 0, %i.ae
  %i.al = ashr i32 %i.ak, %i.aj
  %i.am = sub nsw i32 0, %i.al
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.091 = phi i32 [ %i.ac, %bb.d ], [ %i.ai, %bb.e ] ; 2 uses
  %.0 = phi i32 [ %i.ae, %bb.d ], [ %i.am, %bb.e ] ; 2 uses
  %i.an = getelementptr inbounds nuw [37160 x i8], ptr %i.v, i64 %indvars.iv121 ; 4 uses
  store i32 %.091, ptr %i.an, align 8, !tbaa !160
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i32 %.0, ptr %i.ao, align 4, !tbaa !161
  %i.ap = load i32, ptr %i.w, align 8, !tbaa !143 ; 2 uses
  %i.aq = icmp slt i32 %i.ap, 1
  br i1 %i.aq, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.as = zext nneg i32 %i.ap to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.p
  %indvars.iv118 = phi i64 [ %i.as, %.lr.ph ], [ %indvars.iv.next119, %bb.p ] ; 3 uses
  %.1112 = phi i32 [ %.0, %.lr.ph ], [ %i.cx, %bb.p ] ; 2 uses
  %.192111 = phi i32 [ %.091, %.lr.ph ], [ %i.av, %bb.p ] ; 2 uses
  %indvars.iv.next119 = add nsw i64 %indvars.iv118, -1 ; 4 uses
  %.not104 = icmp ne i64 %indvars.iv.next119, 0   ; 2 uses
  %i.at = getelementptr inbounds nuw [4640 x i8], ptr %i.ar, i64 %indvars.iv.next119
  %i.au = add nsw i32 %.192111, 1
  %i.av = ashr i32 %i.au, 1                       ; 3 uses
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr [4640 x i8], ptr %i.ar, i64 %indvars.iv118
  %i.ay = getelementptr i8, ptr %i.ax, i64 -9280
  %i.az = zext i1 %.not104 to i64
  %i.ba = trunc nuw nsw i64 %indvars.iv.next119 to i32 ; 2 uses
end_hunk_0
