Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/aacdec_usac?download=true
inline.NumInlined: 226
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 18
begin_hunk_0
@constinit.11 = private unnamed_addr constant [8 x i32] [i32 0, i32 10, i32 10, i32 7, i32 5, i32 3, i32 2, i32 2], align 4
@.str.12 = private unnamed_addr constant [36 x i8] c"Extension present: type %i, len %i\0A\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"AAC USAC uniDrc DRC processing\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"AAC USAC timewarping\00", align 1
@ff_vlc_scalefactors = external hidden local_unnamed_addr global [0 x %struct.VLCElem], align 2
@ff_swb_offset_96 = external local_unnamed_addr constant [13 x ptr], align 16
@ff_aac_num_swb_96 = external local_unnamed_addr constant [0 x i8], align 1
@ff_swb_offset_128 = external local_unnamed_addr constant [13 x ptr], align 16
@ff_aac_num_swb_128 = external local_unnamed_addr constant [0 x i8], align 1
@ff_tns_max_bands_usac_128 = external local_unnamed_addr constant [13 x i8], align 1
@ff_swb_offset_768 = external local_unnamed_addr constant [13 x ptr], align 16
@ff_aac_num_swb_768 = external local_unnamed_addr constant [0 x i8], align 1
@ff_swb_offset_1024 = external local_unnamed_addr constant [13 x ptr], align 16
@ff_aac_num_swb_1024 = external local_unnamed_addr constant [0 x i8], align 1
@ff_tns_max_bands_usac_1024 = external local_unnamed_addr constant [13 x i8], align 1
@.str.15 = private unnamed_addr constant [63 x i8] c"Number of scalefactor bands in group (%d) exceeds limit (%d).\0A\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"Scalefactor (%d) out of range.\0A\00", align 1
@ff_aac_ac_msb_cdfs = external constant [64 x [17 x i16]], align 16
@ff_aac_ac_lsb_cdfs = external constant [3 x [4 x i16]], align 16
@mps_fr_nb_bands = internal unnamed_addr constant [8 x i8] c"\FF\1C\14\0E\0A\07\05\04", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"Error parsing OTT CLD data!\0A\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"Error parsing OTT ICC data!\0A\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"Error parsing OTT IPD data!\0A\00", align 1
@mps_fr_stride_smg = internal unnamed_addr constant [4 x i8] c"\01\02\05\1C", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"Error parsing TSD reshape data!\0A\00", align 1
@ff_log2_tab = external local_unnamed_addr constant [256 x i8], align 16
@ff_usac_noise_fill_start_offset = external local_unnamed_addr constant [2 x [2 x i8]], align 1
@ff_aac_usac_mdst_filt_cur = external constant [4 x [4 x [7 x float]]], align 16
@.str.21 = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"libavcodec/aac/aacdec_usac.c\00", align 1

; Function Attrs: nounwind uwtable
define noundef i32 @ff_aac_usac_reset_state(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 5472 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !9
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph46, label %._crit_edge

.lr.ph46:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 864
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph46, %.loopexit
  %indvars.iv48 = phi i64 [ 0, %.lr.ph46 ], [ %indvars.iv.next49, %.loopexit ] ; 2 uses
  %.02844 = phi i32 [ undef, %.lr.ph46 ], [ %.2, %.loopexit ] ; 2 uses
  %.02943 = phi i32 [ undef, %.lr.ph46 ], [ %.231, %.loopexit ] ; 2 uses
  %.03242 = phi i32 [ undef, %.lr.ph46 ], [ %.234, %.loopexit ] ; 2 uses
  %.sroa.7.041 = phi i32 [ 0, %.lr.ph46 ], [ %.sroa.7.2, %.loopexit ] ; 6 uses
  %.sroa.5.040 = phi i32 [ 0, %.lr.ph46 ], [ %.sroa.5.2, %.loopexit ] ; 6 uses
  %.sroa.0.039 = phi i32 [ 0, %.lr.ph46 ], [ %.sroa.0.2, %.loopexit ] ; 6 uses
  %i.e = getelementptr inbounds nuw [72 x i8], ptr %i.d, i64 %indvars.iv48 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !13
  switch i32 %i.f, label %bb.f [
    i32 3, label %.loopexit
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = add nsw i32 %.sroa.0.039, 1
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = add nsw i32 %.sroa.5.040, 1
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = add nsw i32 %.sroa.7.041, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e, %bb.d, %bb.c
  %.sroa.0.1 = phi i32 [ %.sroa.0.039, %bb.b ], [ %i.g, %bb.c ], [ %.sroa.0.039, %bb.d ], [ %.sroa.0.039, %bb.e ] ; 3 uses
  %.sroa.5.1 = phi i32 [ %.sroa.5.040, %bb.b ], [ %.sroa.5.040, %bb.c ], [ %i.h, %bb.d ], [ %.sroa.5.040, %bb.e ] ; 3 uses
  %.sroa.7.1 = phi i32 [ %.sroa.7.041, %bb.b ], [ %.sroa.7.041, %bb.c ], [ %.sroa.7.041, %bb.d ], [ %i.i, %bb.e ] ; 3 uses
  %.133 = phi i32 [ %.03242, %bb.b ], [ 0, %bb.c ], [ 1, %bb.d ], [ 3, %bb.e ] ; 4 uses
  %.130 = phi i32 [ %.02943, %bb.b ], [ %.sroa.0.039, %bb.c ], [ %.sroa.5.040, %bb.d ], [ %.sroa.7.041, %bb.e ] ; 4 uses
  %.1 = phi i32 [ %.02844, %bb.b ], [ 1, %bb.c ], [ 2, %bb.d ], [ 1, %bb.e ] ; 5 uses
  %i.j = tail call ptr @ff_aac_get_che(ptr noundef %0, i32 noundef %.133, i32 noundef %.130) #13 ; 9 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 88640
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(34416) %i.k, i8 0, i64 34416, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !23
  %.not37 = icmp eq i32 %i.m, 0
  br i1 %.not37, label %.lr.ph, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = tail call i32 @ff_aac_sbr_config_usac(ptr noundef %0, ptr noundef nonnull %i.j, ptr noundef nonnull %i.e) #13 ; 0 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 40692 ; 5 uses
  %wide.trip.count = zext nneg i32 %.1 to i64     ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.p = add i32 %.1, -1
  %i.q = icmp ult i32 %i.p, 3
  br i1 %i.q, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.i ]
  %i.r = getelementptr inbounds nuw [40352 x i8], ptr %i.j, i64 %indvars.iv
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(824) %i.s, i8 0, i64 824, i1 false)
  store i32 67890, ptr %i.o, align 4, !tbaa !24
  %i.t = getelementptr inbounds nuw [40352 x i8], ptr %i.j, i64 %indvars.iv
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40664
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(824) %i.u, i8 0, i64 824, i1 false)
  store i32 67890, ptr %i.o, align 4, !tbaa !24
  %i.v = getelementptr inbounds nuw [40352 x i8], ptr %i.j, i64 %indvars.iv
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 81016
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(824) %i.w, i8 0, i64 824, i1 false)
  store i32 67890, ptr %i.o, align 4, !tbaa !24
  %i.x = getelementptr inbounds nuw [40352 x i8], ptr %i.j, i64 %indvars.iv
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 121368
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(824) %i.y, i8 0, i64 824, i1 false)
  store i32 67890, ptr %i.o, align 4, !tbaa !24
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.i, !llvm.loop !35

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod51 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod51)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.j ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.j ]
  %i.z = getelementptr inbounds nuw [40352 x i8], ptr %i.j, i64 %indvars.iv.epil
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(824) %i.aa, i8 0, i64 824, i1 false)
  store i32 67890, ptr %i.o, align 4, !tbaa !24
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.j, !llvm.loop !37

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.j, %bb.f, %bb.b
  %.sroa.0.2 = phi i32 [ %.sroa.0.039, %bb.b ], [ %.sroa.0.1, %bb.f ], [ %.sroa.0.1, %bb.j ], [ %.sroa.0.1, %.loopexit.loopexit.unr-lcssa ]
  %.sroa.5.2 = phi i32 [ %.sroa.5.040, %bb.b ], [ %.sroa.5.1, %bb.f ], [ %.sroa.5.1, %bb.j ], [ %.sroa.5.1, %.loopexit.loopexit.unr-lcssa ]
  %.sroa.7.2 = phi i32 [ %.sroa.7.041, %bb.b ], [ %.sroa.7.1, %bb.f ], [ %.sroa.7.1, %bb.j ], [ %.sroa.7.1, %.loopexit.loopexit.unr-lcssa ]
  %.234 = phi i32 [ %.03242, %bb.b ], [ %.133, %bb.f ], [ %.133, %bb.j ], [ %.133, %.loopexit.loopexit.unr-lcssa ]
  %.231 = phi i32 [ %.02943, %bb.b ], [ %.130, %bb.f ], [ %.130, %bb.j ], [ %.130, %.loopexit.loopexit.unr-lcssa ]
  %.2 = phi i32 [ %.02844, %bb.b ], [ %.1, %bb.f ], [ %.1, %bb.j ], [ %.1, %.loopexit.loopexit.unr-lcssa ]
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1 ; 2 uses
  %i.ab = load i32, ptr %i.a, align 8, !tbaa !9
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp slt i64 %indvars.iv.next49, %i.ac
  br i1 %i.ad, label %bb.b, label %._crit_edge, !llvm.loop !39
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare ptr @ff_aac_get_che(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare hidden i32 @ff_aac_sbr_config_usac(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define i32 @ff_aac_usac_config_decode(ptr noundef %0, ptr noundef %1, ptr nofree noundef %2, ptr noundef %3, i32 %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.AACUSACLoudnessInfo, align 2 ; 4 uses
  %6 = alloca %struct.AACUSACLoudnessInfo, align 2 ; 4 uses
  %i.a = alloca [256 x [3 x i8]], align 16        ; 17 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 856 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(768) %i.a, i8 0, i64 768, i1 false)
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.thread305, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12312) %i.c, i8 0, i64 12312, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 13160 ; 2 uses
  store i32 -1, ptr %i.d, align 8, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 111 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !41   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 20 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !43   ; 7 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !44     ; 6 uses
  %i.j = lshr i32 %i.f, 3
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.k
  %i.m = load i32, ptr %i.l, align 1, !tbaa !45
  %i.n = tail call i32 @llvm.bswap.i32(i32 %i.m)
  %i.o = and i32 %i.f, 7
  %i.p = shl i32 %i.n, %i.o
  %i.q = lshr i32 %i.p, 27                        ; 2 uses
  %i.r = add i32 %i.f, 5
  %i.s = tail call i32 @llvm.umin.i32(i32 %i.h, i32 %i.r) ; 5 uses
  store i32 %i.s, ptr %i.e, align 8, !tbaa !41
  %i.t = icmp eq i32 %i.q, 31
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = lshr i32 %i.s, 3
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.v
  %i.x = load i32, ptr %i.w, align 1, !tbaa !45
  %i.y = tail call i32 @llvm.bswap.i32(i32 %i.x)
  %i.z = and i32 %i.s, 7
  %i.aa = shl i32 %i.y, %i.z
  %i.ab = lshr i32 %i.aa, 8                       ; 2 uses
  %i.ac = add i32 %i.s, 24
  %i.ad = tail call i32 @llvm.umin.i32(i32 %i.h, i32 %i.ac) ; 2 uses
  store i32 %i.ad, ptr %i.e, align 8, !tbaa !41
  %i.ae = icmp eq i32 %i.ab, 0
  br i1 %i.ae, label %.thread305, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.af = zext nneg i32 %i.q to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr @ff_aac_usac_samplerate, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !46 ; 2 uses
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %.thread305, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aj = phi i32 [ %i.ad, %bb.c ], [ %i.s, %bb.d ] ; 3 uses
  %.0198 = phi i32 [ %i.ab, %bb.c ], [ %i.ah, %bb.d ] ; 5 uses
  %i.ak = lshr i32 %i.aj, 3
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.al
  %i.an = load i32, ptr %i.am, align 1, !tbaa !45
  %i.ao = tail call i32 @llvm.bswap.i32(i32 %i.an)
  %i.ap = and i32 %i.aj, 7
  %i.aq = shl i32 %i.ao, %i.ap                    ; 2 uses
  %i.ar = lshr i32 %i.aq, 29                      ; 2 uses
  %i.as = add i32 %i.aj, 3
  %i.at = tail call i32 @llvm.umin.i32(i32 %i.h, i32 %i.as) ; 4 uses
  store i32 %i.at, ptr %i.e, align 8, !tbaa !41
  %i.au = trunc nuw nsw i32 %i.ar to i8           ; 2 uses
  store i8 %i.au, ptr %i.c, align 8, !tbaa !47
  %i.av = and i32 %i.aq, -1610612736
  %narrow = icmp eq i32 %i.av, 0                  ; 2 uses
  %i.aw = zext i1 %narrow to i32
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !48
  %i.ay = select i1 %narrow, i16 768, i16 1024
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 858
  store i16 %i.ay, ptr %i.az, align 2, !tbaa !50
  switch i8 %i.au, label %bb.f [
    i8 2, label %.thread
    i8 3, label %.thread262
  ]

bb.f:                                             ; preds = %bb.e
  %i.ba = icmp eq i32 %i.ar, 4
  %i.bb = zext i1 %i.ba to i32
  br label %.thread262

.thread:                                          ; preds = %bb.e
  %i.bc = mul nuw nsw i32 %.0198, 3
  br label %.thread262

.thread262:                                       ; preds = %bb.e, %bb.f, %.thread
  %i.bd = phi i32 [ 2, %.thread ], [ %i.bb, %bb.f ], [ 3, %bb.e ] ; 4 uses
  %.0200 = phi i32 [ 3, %.thread ], [ 0, %bb.f ], [ 1, %bb.e ]
  %.0199 = phi i32 [ %i.bc, %.thread ], [ %.0198, %bb.f ], [ %.0198, %bb.e ]
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 344
  store i32 %.0198, ptr %i.be, align 8, !tbaa !51
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 %.0198, ptr %i.bf, align 4, !tbaa !68
  %i.bg = lshr i32 %.0199, %.0200                 ; 12 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.bg, ptr %i.bh, align 8, !tbaa !69
  %i.bi = icmp samesign ugt i32 %i.bg, 92016
  br i1 %i.bi, label %ff_aac_sample_rate_idx.exit, label %bb.g

bb.g:                                             ; preds = %.thread262
  %i.bj = icmp samesign ugt i32 %i.bg, 75131
  br i1 %i.bj, label %ff_aac_sample_rate_idx.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bk = icmp samesign ugt i32 %i.bg, 55425
  br i1 %i.bk, label %ff_aac_sample_rate_idx.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bl = icmp samesign ugt i32 %i.bg, 46008
  br i1 %i.bl, label %ff_aac_sample_rate_idx.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bm = icmp samesign ugt i32 %i.bg, 37565
  br i1 %i.bm, label %ff_aac_sample_rate_idx.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bn = icmp samesign ugt i32 %i.bg, 27712
  br i1 %i.bn, label %ff_aac_sample_rate_idx.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bo = icmp samesign ugt i32 %i.bg, 23003
  br i1 %i.bo, label %ff_aac_sample_rate_idx.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = icmp samesign ugt i32 %i.bg, 18782
  br i1 %i.bp, label %ff_aac_sample_rate_idx.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = icmp samesign ugt i32 %i.bg, 13855
  br i1 %i.bq, label %ff_aac_sample_rate_idx.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.br = icmp samesign ugt i32 %i.bg, 11501
  br i1 %i.br, label %ff_aac_sample_rate_idx.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = icmp samesign ugt i32 %i.bg, 9390
  %..i = select i1 %i.bs, i32 10, i32 11
  br label %ff_aac_sample_rate_idx.exit

ff_aac_sample_rate_idx.exit:                      ; preds = %.thread262, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p
  %.0.i = phi i32 [ 9, %bb.o ], [ 0, %.thread262 ], [ 1, %bb.g ], [ 2, %bb.h ], [ 3, %bb.i ], [ 4, %bb.j ], [ 5, %bb.k ], [ 6, %bb.l ], [ 7, %bb.m ], [ 8, %bb.n ], [ %..i, %bb.p ]
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.0.i, ptr %i.bt, align 4, !tbaa !70
  %i.bu = icmp ne i32 %i.bd, 0
  %i.bv = zext i1 %i.bu to i32
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.bv, ptr %i.bw, align 8, !tbaa !71
  %i.bx = lshr i32 %i.at, 3
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 1, !tbaa !45
  %i.cb = tail call i32 @llvm.bswap.i32(i32 %i.ca)
  %i.cc = and i32 %i.at, 7
  %i.cd = shl i32 %i.cb, %i.cc
  %i.ce = lshr i32 %i.cd, 27                      ; 2 uses
  %i.cf = add i32 %i.at, 5
  %i.cg = tail call i32 @llvm.umin.i32(i32 %i.h, i32 %i.cf) ; 4 uses
  store i32 %i.cg, ptr %i.e, align 8, !tbaa !41
  %.not224 = icmp eq i32 %i.ce, 0                 ; 4 uses
  br i1 %.not224, label %bb.q, label %bb.u

bb.q:                                             ; preds = %ff_aac_sample_rate_idx.exit
  %i.ch = lshr i32 %i.cg, 3
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 1, !tbaa !45
  %i.cl = tail call i32 @llvm.bswap.i32(i32 %i.ck)
  %i.cm = and i32 %i.cg, 7
  %i.cn = shl i32 %i.cl, %i.cm
  %i.co = lshr i32 %i.cn, 27                      ; 2 uses
  %i.cp = add i32 %i.cg, 5
  %i.cq = tail call i32 @llvm.umin.i32(i32 %i.h, i32 %i.cp) ; 4 uses
  store i32 %i.cq, ptr %i.e, align 8, !tbaa !41
  %.not318 = icmp eq i32 %i.co, 31
  br i1 %.not318, label %bb.r, label %get_escaped_value.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.cr = lshr i32 %i.cq, 3
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 1, !tbaa !45
  %i.cv = tail call i32 @llvm.bswap.i32(i32 %i.cu)
  %i.cw = and i32 %i.cq, 7
  %i.cx = shl i32 %i.cv, %i.cw                    ; 2 uses
  %i.cy = lshr i32 %i.cx, 24                      ; 2 uses
  %i.cz = add i32 %i.cq, 8
  %i.da = tail call i32 @llvm.umin.i32(i32 %i.h, i32 %i.cz) ; 2 uses
  store i32 %i.da, ptr %i.e, align 8, !tbaa !41
  %i.db = icmp eq i32 %i.cy, 255
  br i1 %i.db, label %get_escaped_value.exit.thread427, label %get_escaped_value.exit

get_escaped_value.exit.thread427:                 ; preds = %bb.r
  %i.dc = add i32 %i.da, 16
  %i.dd = tail call i32 @llvm.umin.i32(i32 %i.h, i32 %i.dc)
  store i32 %i.dd, ptr %i.e, align 8, !tbaa !41
  br label %.thread305

get_escaped_value.exit:                           ; preds = %bb.r
  %i.de = add nuw nsw i32 %i.cy, 31
  %i.df = icmp ugt i32 %i.cx, 570425343
  br i1 %i.df, label %.thread305, label %get_escaped_value.exit.thread

get_escaped_value.exit.thread:                    ; preds = %bb.q, %get_escaped_value.exit
  %.015.i264 = phi i32 [ %i.de, %get_escaped_value.exit ], [ %i.co, %bb.q ] ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 24080 ; 4 uses
end_hunk_0
begin_hunk_1_@ff_aac_usac_decode_frame:bb.a
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !45
  %i.dh = icmp slt i32 %i.cz, %i.bj
  %i.di = zext i1 %i.dh to i32
  %spec.select.i168 = add i32 %i.cz, %i.di        ; 5 uses
  %i.dj = zext i8 %i.dg to i32
  %i.dk = and i32 %i.cz, 7
  store i32 %spec.select.i168, ptr %.0.i.sroa.gep, align 8, !tbaa !41
  %i.dl = lshr i32 %spec.select.i168, 3
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !45
  %i.dp = icmp slt i32 %spec.select.i168, %i.bj
  %i.dq = zext i1 %i.dp to i32
  %spec.select.i167 = add i32 %spec.select.i168, %i.dq
  %i.dr = zext i8 %i.do to i32
  %i.ds = and i32 %spec.select.i168, 7
  store i32 %spec.select.i167, ptr %.0.i.sroa.gep, align 8, !tbaa !41
  %i.dt = lshr exact i32 128, %i.ds
  %i.du = and i32 %i.dt, %i.dr
  %i.dv = icmp ne i32 %i.du, 0                    ; 2 uses
  %i.dw = lshr exact i32 128, %i.dk
  %i.dx = and i32 %i.dw, %i.dj
  %.not80.i.not = icmp eq i32 %i.dx, 0            ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.am, i64 52 ; 2 uses
  br i1 %.not80.i.not, label %..thread239_crit_edge, label %.thread231

..thread239_crit_edge:                            ; preds = %bb.s
  %.pre = load i32, ptr %i.dy, align 4, !tbaa !142
  br label %.thread239

.thread231:                                       ; preds = %bb.s
  store i32 0, ptr %i.dy, align 4, !tbaa !142
  br i1 %i.dv, label %.thread405, label %.thread239

.thread239:                                       ; preds = %..thread239_crit_edge, %.thread231
  %i.dz = phi i32 [ 0, %.thread231 ], [ %.pre, %..thread239_crit_edge ]
  %.067.i238243 = phi i1 [ false, %.thread231 ], [ %i.dv, %..thread239_crit_edge ]
  %i.ea = getelementptr inbounds nuw i8, ptr %i.am, i64 52 ; 3 uses
  %i.eb = add i32 %i.dz, %.066.i230
  %i.ec = zext i32 %i.eb to i64
  %i.ed = call ptr @av_refstruct_alloc_ext_c(i64 noundef range(i64 0, 4294967296) %i.ec, i32 noundef 1, ptr null, ptr noundef null) #13 ; 3 uses
  %.not81.not.i = icmp eq ptr %i.ed, null
  br i1 %.not81.not.i, label %.critedge, label %bb.t

bb.t:                                             ; preds = %.thread239
  %i.ee = getelementptr inbounds nuw i8, ptr %i.am, i64 56 ; 4 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !143 ; 2 uses
  %.not82.i = icmp eq ptr %i.ef, null
  br i1 %.not82.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eg = load i32, ptr %i.ea, align 4, !tbaa !142
  %i.eh = zext i32 %i.eg to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ed, ptr nonnull align 1 %i.ef, i64 %i.eh, i1 false)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  call void @av_refstruct_unref(ptr noundef nonnull %i.ee) #13, !inline_history !144
  store ptr %i.ed, ptr %i.ee, align 8, !tbaa !143
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.w
  %.063.i347 = phi i32 [ 0, %bb.v ], [ %i.fb, %bb.w ] ; 2 uses
  %i.ei = load i32, ptr %.0.i.sroa.gep, align 8, !tbaa !41 ; 3 uses
  %i.ej = load i32, ptr %.0.i.sroa.gep173, align 8, !tbaa !43
  %i.ek = load ptr, ptr %2, align 8, !tbaa !44
  %i.el = lshr i32 %i.ei, 3
  %i.em = zext nneg i32 %i.el to i64
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 1, !tbaa !45
  %i.ep = call i32 @llvm.bswap.i32(i32 %i.eo)
  %i.eq = and i32 %i.ei, 7
  %i.er = shl i32 %i.ep, %i.eq
  %i.es = lshr i32 %i.er, 24
  %i.et = add i32 %i.ei, 8
  %i.eu = call i32 @llvm.umin.i32(i32 %i.ej, i32 %i.et)
  store i32 %i.eu, ptr %.0.i.sroa.gep, align 8, !tbaa !41
  %i.ev = trunc nuw i32 %i.es to i8
  %i.ew = load ptr, ptr %i.ee, align 8, !tbaa !143
  %i.ex = load i32, ptr %i.ea, align 4, !tbaa !142
  %i.ey = add i32 %i.ex, %.063.i347
  %i.ez = zext i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.ez
  store i8 %i.ev, ptr %i.fa, align 1, !tbaa !45
  %i.fb = add nuw nsw i32 %.063.i347, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.fb, %.066.i230
  br i1 %exitcond.not, label %.loopexit318, label %bb.w, !llvm.loop !145

.thread405:                                       ; preds = %bb.r, %.thread231
  %i.fc = getelementptr inbounds nuw i8, ptr %i.am, i64 52
  store i32 %.066.i230, ptr %i.fc, align 4, !tbaa !142
  %.val83.i406 = load i32, ptr %.0.i.sroa.gep, align 8, !tbaa !41 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  br label %bb.z

.loopexit318:                                     ; preds = %bb.w
  %.pre391 = load i32, ptr %i.ea, align 4, !tbaa !142
  %i.fd = getelementptr inbounds nuw i8, ptr %i.am, i64 52
  %i.fe = add i32 %.pre391, %.066.i230            ; 5 uses
  store i32 %i.fe, ptr %i.fd, align 4, !tbaa !142
  br i1 %.067.i238243, label %bb.x, label %.thread267

bb.x:                                             ; preds = %.loopexit318
  %.val83.i = load i32, ptr %.0.i.sroa.gep, align 8, !tbaa !41 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  br i1 %.not80.i.not, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ff = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !143 ; 2 uses
  %or.cond.i164 = icmp ugt i32 %i.fe, 268435455
  %i.fh = shl nuw nsw i32 %i.fe, 3
  %i.fi = select i1 %or.cond.i164, i32 -8, i32 %i.fh ; 2 uses
  %or.cond.i.i165 = icmp ult i32 %i.fi, 2147483135 ; 2 uses
  %i.fj = icmp ne ptr %i.fg, null
  %or.cond3.i.i = and i1 %or.cond.i.i165, %i.fj   ; 2 uses
  %.014.i.i = select i1 %or.cond.i.i165, ptr %i.fg, ptr null
  %.013.i.i = select i1 %or.cond3.i.i, i32 %i.fi, i32 0 ; 2 uses
  store ptr %.014.i.i, ptr %6, align 8, !tbaa !44
  store i32 %.013.i.i, ptr %i.ag, align 4, !tbaa !146
  %i.fk = add nuw nsw i32 %.013.i.i, 8
  store i32 %i.fk, ptr %.0.i.sroa.gep174, align 8, !tbaa !43
  store i32 0, ptr %.0.i.sroa.gep171, align 8, !tbaa !41
  br i1 %or.cond3.i.i, label %bb.z, label %.loopexit319

bb.z:                                             ; preds = %.thread405, %bb.y, %bb.x
  %.val83.i407 = phi i32 [ %.val83.i, %bb.x ], [ %.val83.i, %bb.y ], [ %.val83.i406, %.thread405 ]
  %i.fl = phi i32 [ %i.fe, %bb.x ], [ %i.fe, %bb.y ], [ %.066.i230, %.thread405 ]
  %i.fm = phi i32 [ %.val83.i, %bb.x ], [ 0, %bb.y ], [ %.val83.i406, %.thread405 ] ; 3 uses
  %.0.i.sroa.phi = phi ptr [ %.0.i.sroa.gep, %bb.x ], [ %.0.i.sroa.gep171, %bb.y ], [ %.0.i.sroa.gep, %.thread405 ] ; 12 uses
  %.0.i.sroa.phi172 = phi ptr [ %.0.i.sroa.gep173, %bb.x ], [ %.0.i.sroa.gep174, %bb.y ], [ %.0.i.sroa.gep173, %.thread405 ] ; 4 uses
  %.0.i = phi ptr [ %2, %bb.x ], [ %6, %bb.y ], [ %2, %.thread405 ] ; 5 uses
  %i.fn = load i32, ptr %i.da, align 8, !tbaa !96
  switch i32 %i.fn, label %bb.aj [
    i32 0, label %.thread257
    i32 3, label %bb.aa
    i32 4, label %.thread257
  ]

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %5, ptr noundef nonnull align 8 dereferenceable(52) %i.ah, i64 52, i1 false), !tbaa.struct !147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.fo = load i32, ptr %.0.i.sroa.phi172, align 8, !tbaa !43 ; 3 uses
  %i.fp = load ptr, ptr %.0.i, align 8, !tbaa !44 ; 3 uses
  %i.fq = lshr i32 %i.fm, 3
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.fr
  %i.ft = load i32, ptr %i.fs, align 1, !tbaa !45
  %i.fu = call i32 @llvm.bswap.i32(i32 %i.ft)
  %i.fv = and i32 %i.fm, 7
  %i.fw = shl i32 %i.fu, %i.fv
  %i.fx = lshr i32 %i.fw, 28                      ; 2 uses
  %i.fy = add i32 %i.fm, 4
  %i.fz = call i32 @llvm.umin.i32(i32 %i.fo, i32 %i.fy) ; 4 uses
  store i32 %i.fz, ptr %.0.i.sroa.phi, align 8, !tbaa !41
  %.not310 = icmp eq i32 %i.fx, 15
  br i1 %.not310, label %bb.ab, label %get_escaped_value.exit.i

bb.ab:                                            ; preds = %bb.aa
  %i.ga = lshr i32 %i.fz, 3
  %i.gb = zext nneg i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.gb
  %i.gd = load i32, ptr %i.gc, align 1, !tbaa !45
  %i.ge = call i32 @llvm.bswap.i32(i32 %i.gd)
  %i.gf = and i32 %i.fz, 7
  %i.gg = shl i32 %i.ge, %i.gf
  %i.gh = lshr i32 %i.gg, 28                      ; 2 uses
  %i.gi = add i32 %i.fz, 4
  %i.gj = call i32 @llvm.umin.i32(i32 %i.fo, i32 %i.gi) ; 4 uses
  store i32 %i.gj, ptr %.0.i.sroa.phi, align 8, !tbaa !41
  %i.gk = add nuw nsw i32 %i.gh, 15               ; 2 uses
  %i.gl = icmp eq i32 %i.gh, 15
  br i1 %i.gl, label %bb.ac, label %get_escaped_value.exit.i

bb.ac:                                            ; preds = %bb.ab
  %i.gm = lshr i32 %i.gj, 3
  %i.gn = zext nneg i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.gn
  %i.gp = load i32, ptr %i.go, align 1, !tbaa !45
  %i.gq = call i32 @llvm.bswap.i32(i32 %i.gp)
  %i.gr = and i32 %i.gj, 7
  %i.gs = shl i32 %i.gq, %i.gr
  %i.gt = lshr i32 %i.gs, 24
  %i.gu = add i32 %i.gj, 8
  %i.gv = call i32 @llvm.umin.i32(i32 %i.fo, i32 %i.gu)
  store i32 %i.gv, ptr %.0.i.sroa.phi, align 8, !tbaa !41
  %i.gw = add nuw nsw i32 %i.gt, %i.gk
  br label %get_escaped_value.exit.i

get_escaped_value.exit.i:                         ; preds = %bb.ac, %bb.ab, %bb.aa
  %.015.i.i = phi i32 [ %i.fx, %bb.aa ], [ %i.gw, %bb.ac ], [ %i.gk, %bb.ab ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %.0.i, i64 24, i1 false), !tbaa.struct !148
  %i.gx = load ptr, ptr %i.m, align 8, !tbaa !79
  %i.gy = call i32 @ff_aac_usac_config_decode(ptr noundef nonnull %1, ptr noundef %i.gx, ptr noundef nonnull %4, ptr noundef nonnull %i.ah, i32 poison), !inline_history !150 ; 2 uses
  %i.gz = icmp slt i32 %i.gy, 0
  br i1 %i.gz, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %get_escaped_value.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.ah, ptr noundef nonnull align 4 dereferenceable(52) %5, i64 52, i1 false), !tbaa.struct !147
  br label %.loopexit320

bb.ae:                                            ; preds = %get_escaped_value.exit.i
  store i32 0, ptr %i.ai, align 4, !tbaa !151
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(52) %i.ah, ptr noundef nonnull dereferenceable(52) %5, i64 52), !inline_history !150
  %.not.i158 = icmp eq i32 %bcmp.i, 0
  br i1 %.not.i158, label %.thread260, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ha = shl nuw nsw i32 %.015.i.i, 3            ; 2 uses
  %i.hb = load i32, ptr %.0.i.sroa.phi, align 8, !tbaa !41 ; 3 uses
  %i.hc = sub nsw i32 0, %i.hb                    ; 2 uses
  %i.hd = load i32, ptr %.0.i.sroa.phi172, align 8, !tbaa !43 ; 5 uses
  %i.he = sub nsw i32 %i.hd, %i.hb
  %i.hf = icmp slt i32 %i.ha, %i.hc
  %..i.i.i = call i32 @llvm.smin.i32(i32 %i.ha, i32 %i.he)
  %.0.i.i.i = select i1 %i.hf, i32 %i.hc, i32 %..i.i.i
  %i.hg = add nsw i32 %.0.i.i.i, %i.hb            ; 2 uses
  %i.hh = load ptr, ptr %.0.i, align 8, !tbaa !44 ; 2 uses
  %i.hi = icmp slt i32 %i.hg, %i.hd
  %i.hj = zext i1 %i.hi to i32
  %spec.select.i.i = add i32 %i.hg, 1
  %i.hk = add i32 %spec.select.i.i, %i.hj
  %i.hl = call i32 @llvm.umin.i32(i32 %i.hd, i32 %i.hk) ; 4 uses
  store i32 %i.hl, ptr %.0.i.sroa.phi, align 8, !tbaa !41
  %i.hm = lshr i32 %i.hl, 3
  %i.hn = zext nneg i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hn
  %i.hp = load i32, ptr %i.ho, align 1, !tbaa !45
  %i.hq = call i32 @llvm.bswap.i32(i32 %i.hp)
  %i.hr = and i32 %i.hl, 7
  %i.hs = shl i32 %i.hq, %i.hr
  %i.ht = lshr i32 %i.hs, 30                      ; 2 uses
  %i.hu = add i32 %i.hl, 2
  %i.hv = call i32 @llvm.umin.i32(i32 %i.hd, i32 %i.hu) ; 4 uses
  store i32 %i.hv, ptr %.0.i.sroa.phi, align 8, !tbaa !41
  switch i32 %i.ht, label %.lr.ph352.preheader [
    i32 3, label %get_escaped_value.exit71.i.thread
    i32 0, label %.thread260
  ]

get_escaped_value.exit71.i.thread:                ; preds = %bb.af
  %i.hw = lshr i32 %i.hv, 3
  %i.hx = zext nneg i32 %i.hw to i64
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hx
  %i.hz = load i32, ptr %i.hy, align 1, !tbaa !45
  %i.ia = call i32 @llvm.bswap.i32(i32 %i.hz)
  %i.ib = and i32 %i.hv, 7
  %i.ic = shl i32 %i.ia, %i.ib
  %i.id = lshr i32 %i.ic, 28
  %i.ie = add i32 %i.hv, 4
  %i.if = call i32 @llvm.umin.i32(i32 %i.hd, i32 %i.ie)
  store i32 %i.if, ptr %.0.i.sroa.phi, align 8, !tbaa !41
  %i.ig = add nuw nsw i32 %i.id, 3
  br label %.lr.ph352.preheader

.lr.ph352.preheader:                              ; preds = %bb.af, %get_escaped_value.exit71.i.thread
  %.015.i70.i409 = phi i32 [ %i.ig, %get_escaped_value.exit71.i.thread ], [ %i.ht, %bb.af ]
  br label %.lr.ph352

.lr.ph352:                                        ; preds = %.loopexit426, %.lr.ph352.preheader
  %.052.i351 = phi i32 [ %i.ki, %.loopexit426 ], [ 0, %.lr.ph352.preheader ]
  %.054.i350 = phi ptr [ %.256.i418, %.loopexit426 ], [ %i.a, %.lr.ph352.preheader ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 0, ptr %i.b, align 4, !tbaa !46
  %i.ih = load i32, ptr %.0.i.sroa.phi, align 8, !tbaa !41 ; 3 uses
  %i.ii = load i32, ptr %.0.i.sroa.phi172, align 8, !tbaa !43 ; 2 uses
  %i.ij = load ptr, ptr %.0.i, align 8, !tbaa !44 ; 2 uses
  %i.ik = lshr i32 %i.ih, 3
  %i.il = zext nneg i32 %i.ik to i64
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.il
  %i.in = load i32, ptr %i.im, align 1, !tbaa !45
  %i.io = call i32 @llvm.bswap.i32(i32 %i.in)
  %i.ip = and i32 %i.ih, 7
  %i.iq = shl i32 %i.io, %i.ip                    ; 2 uses
  %i.ir = lshr i32 %i.iq, 16                      ; 5 uses
  %i.is = add i32 %i.ih, 16
  %i.it = call i32 @llvm.umin.i32(i32 %i.ii, i32 %i.is) ; 4 uses
  store i32 %i.it, ptr %.0.i.sroa.phi, align 8, !tbaa !41
  %.not312 = icmp eq i32 %i.ir, 65535
  br i1 %.not312, label %get_escaped_value.exit73.i.thread, label %get_escaped_value.exit73.i

get_escaped_value.exit73.i.thread:                ; preds = %.lr.ph352
  %i.iu = lshr i32 %i.it, 3
  %i.iv = zext nneg i32 %i.iu to i64
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.iv
  %i.ix = load i32, ptr %i.iw, align 1, !tbaa !45
  %i.iy = call i32 @llvm.bswap.i32(i32 %i.ix)
  %i.iz = and i32 %i.it, 7
  %i.ja = shl i32 %i.iy, %i.iz
  %i.jb = lshr i32 %i.ja, 16
  %i.jc = add i32 %i.it, 16
  %i.jd = call i32 @llvm.umin.i32(i32 %i.ii, i32 %i.jc)
  store i32 %i.jd, ptr %.0.i.sroa.phi, align 8, !tbaa !41
  %i.je = add nuw nsw i32 %i.jb, 65535            ; 2 uses
  %i.jf = shl nuw nsw i32 %i.je, 3
  br label %bb.ag

get_escaped_value.exit73.i:                       ; preds = %.lr.ph352
  %i.jg = shl nuw nsw i32 %i.ir, 3                ; 3 uses
  %i.jh = icmp ugt i32 %i.iq, 4259839
  br i1 %i.jh, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %get_escaped_value.exit73.i.thread, %get_escaped_value.exit73.i
  %i.ji = phi i32 [ %i.jf, %get_escaped_value.exit73.i.thread ], [ %i.jg, %get_escaped_value.exit73.i ]
  %.015.i72.i412 = phi i32 [ %i.je, %get_escaped_value.exit73.i.thread ], [ %i.ir, %get_escaped_value.exit73.i ] ; 2 uses
  %i.jj = icmp eq ptr %.054.i350, %i.a
  %i.jk = select i1 %i.jj, ptr null, ptr %.054.i350 ; 2 uses
  %i.jl = zext nneg i32 %.015.i72.i412 to i64
  %i.jm = call ptr @av_realloc_array(ptr noundef %i.jk, i64 noundef %i.jl, i64 noundef 8) #13, !inline_history !150 ; 2 uses
  %.not66.not.i = icmp eq ptr %i.jm, null
  br i1 %.not66.not.i, label %.loopexit320.loopexit, label %.lr.ph.preheader

bb.ah:                                            ; preds = %get_escaped_value.exit73.i
  %.not443 = icmp eq i32 %i.ir, 0
  br i1 %.not443, label %.loopexit426, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.ag, %bb.ah
  %.256.i417 = phi ptr [ %.054.i350, %bb.ah ], [ %i.jm, %bb.ag ] ; 2 uses
  %.015.i72.i411416 = phi i32 [ %i.ir, %bb.ah ], [ %.015.i72.i412, %bb.ag ]
  %i.jn = phi i32 [ %i.jg, %bb.ah ], [ %i.ji, %bb.ag ]
  %wide.trip.count = zext nneg i32 %.015.i72.i411416 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.jo = load i32, ptr %.0.i.sroa.phi, align 8, !tbaa !41 ; 3 uses
  %i.jp = load i32, ptr %.0.i.sroa.phi172, align 8, !tbaa !43
  %i.jq = load ptr, ptr %.0.i, align 8, !tbaa !44
  %i.jr = lshr i32 %i.jo, 3
  %i.js = zext nneg i32 %i.jr to i64
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jq, i64 %i.js
  %i.ju = load i32, ptr %i.jt, align 1, !tbaa !45
  %i.jv = call i32 @llvm.bswap.i32(i32 %i.ju)
  %i.jw = and i32 %i.jo, 7
  %i.jx = shl i32 %i.jv, %i.jw
  %i.jy = lshr i32 %i.jx, 24
  %i.jz = add i32 %i.jo, 8
  %i.ka = call i32 @llvm.umin.i32(i32 %i.jp, i32 %i.jz)
  store i32 %i.ka, ptr %.0.i.sroa.phi, align 8, !tbaa !41
  %i.kb = trunc nuw i32 %i.jy to i8
  %i.kc = getelementptr inbounds nuw i8, ptr %.256.i417, i64 %indvars.iv
  store i8 %i.kb, ptr %i.kc, align 1, !tbaa !45
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond382.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond382.not, label %.loopexit426, label %.lr.ph, !llvm.loop !152

.loopexit426:                                     ; preds = %.lr.ph, %bb.ah
  %.256.i418 = phi ptr [ %.054.i350, %bb.ah ], [ %.256.i417, %.lr.ph ] ; 4 uses
  %i.kd = phi i32 [ %i.jg, %bb.ah ], [ %i.jn, %.lr.ph ] ; 2 uses
  store ptr %.256.i418, ptr %4, align 8, !tbaa !44
  store i32 %i.kd, ptr %i.aj, align 4, !tbaa !146
  %i.ke = add nuw nsw i32 %i.kd, 8
  store i32 %i.ke, ptr %i.ak, align 8, !tbaa !43
  store i32 0, ptr %i.al, align 8, !tbaa !41
  %i.kf = load ptr, ptr %i.m, align 8, !tbaa !79
  %i.kg = call i32 @ff_aac_usac_decode_frame(ptr noundef %i.kf, ptr noundef nonnull %1, ptr noundef nonnull %4, ptr noundef nonnull %i.b), !inline_history !150
  %i.kh = icmp slt i32 %i.kg, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %i.ki = add nuw nsw i32 %.052.i351, 1           ; 2 uses
  %exitcond383.not = icmp eq i32 %i.ki, %.015.i70.i409
  %or.cond441 = select i1 %i.kh, i1 true, i1 %exitcond383.not
  br i1 %or.cond441, label %.thread251, label %.lr.ph352, !llvm.loop !153

.thread251:                                       ; preds = %.loopexit426
  %.not68.i = icmp eq ptr %.256.i418, %i.a
  br i1 %.not68.i, label %.thread260, label %bb.ai

bb.ai:                                            ; preds = %.thread251
  call void @av_free(ptr noundef %.256.i418) #13, !inline_history !150
  br label %.thread260

bb.aj:                                            ; preds = %bb.z
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 2042) #13, !inline_history !144
  call void @abort() #14, !inline_history !144
  unreachable

.thread260:                                       ; preds = %bb.af, %bb.ae, %bb.ai, %.thread251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %.thread257

.loopexit320.loopexit:                            ; preds = %bb.ag
  call void @av_free(ptr noundef %i.jk) #13, !inline_history !150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %.loopexit320

.loopexit320:                                     ; preds = %.loopexit320.loopexit, %bb.ad
  %.5.i = phi i32 [ %i.gy, %bb.ad ], [ -12, %.loopexit320.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.kj = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  call void @av_refstruct_unref(ptr noundef nonnull %i.kj) #13, !inline_history !144
  br label %.loopexit319

.thread257:                                       ; preds = %bb.z, %bb.z, %.thread260
  %i.kk = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  call void @av_refstruct_unref(ptr noundef nonnull %i.kk) #13
end_hunk_1
begin_hunk_2_@decode_usac_core_coder:bb.a
  %i.qv = icmp slt i32 %i.qo, %i.qu
  %i.qw = zext i1 %i.qv to i32
  %spec.select.i207 = add i32 %i.qo, %i.qw
  %i.qx = zext i8 %i.qt to i32
  %i.qy = and i32 %i.qo, 7
  store i32 %spec.select.i207, ptr %i.d, align 8, !tbaa !41
  %i.qz = lshr exact i32 128, %i.qy
  %i.ra = and i32 %i.qz, %i.qx
  %.not197 = icmp eq i32 %i.ra, 0
  br i1 %.not197, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !79
  call void (ptr, ptr, ...) @avpriv_report_missing_feature(ptr noundef %i.rc, ptr noundef nonnull @.str.14) #13
  br label %decode_usac_stereo_info.exit

bb.as:                                            ; preds = %bb.aq, %bb.ap, %bb.ao
  %i.rd = getelementptr inbounds nuw i8, ptr %i.la, i64 16
  %i.re = load i32, ptr %i.rd, align 8, !tbaa !185 ; 2 uses
  %.not3238.i = icmp sgt i32 %i.re, 0
  br i1 %.not3238.i, label %.preheader.lr.ph.i, label %.loopexit283

.preheader.lr.ph.i:                               ; preds = %bb.as
  %i.rf = load i8, ptr %i.la, align 8, !tbaa !181 ; 2 uses
  %.not35.not.i = icmp eq i8 %i.rf, 0
  %i.rg = getelementptr inbounds nuw i8, ptr %i.la, i64 4484
  br i1 %.not35.not.i, label %.loopexit283, label %.preheader.preheader.i210

.preheader.preheader.i210:                        ; preds = %.preheader.lr.ph.i
  %i.rh = zext i8 %i.rf to i64                    ; 2 uses
  %wide.trip.count46.i = zext nneg i32 %i.re to i64
  br label %.preheader.i211

.preheader.i211:                                  ; preds = %._crit_edge.i215, %.preheader.preheader.i210
  %indvars.iv43.i = phi i64 [ 0, %.preheader.preheader.i210 ], [ %indvars.iv.next44.i, %._crit_edge.i215 ] ; 3 uses
  %.02639.i = phi i32 [ %i.mg, %.preheader.preheader.i210 ], [ %.250.i, %._crit_edge.i215 ]
  %i.ri = mul nuw nsw i64 %indvars.iv43.i, %i.rh
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %i.rg, i64 %i.ri
  br label %bb.at

bb.at:                                            ; preds = %.thread48.i, %.preheader.i211
  %indvars.iv.i212 = phi i64 [ 0, %.preheader.i211 ], [ %indvars.iv.next.i213, %.thread48.i ] ; 3 uses
  %.12736.i = phi i32 [ %.02639.i, %.preheader.i211 ], [ %.250.i, %.thread48.i ] ; 2 uses
  %i.rk = or i64 %indvars.iv.i212, %indvars.iv43.i
  %i.rl = and i64 %i.rk, 4294967295
  %or.cond.not.i = icmp eq i64 %i.rl, 0
  br i1 %or.cond.not.i, label %.thread48.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.rm = load i32, ptr %i.d, align 8, !tbaa !41  ; 4 uses
  %i.rn = load i32, ptr %i.f, align 8, !tbaa !43  ; 3 uses
  %i.ro = load ptr, ptr %4, align 8, !tbaa !44    ; 3 uses
  %i.rp = lshr i32 %i.rm, 3
  %i.rq = zext nneg i32 %i.rp to i64
  %i.rr = getelementptr inbounds nuw i8, ptr %i.ro, i64 %i.rq
  %i.rs = load i32, ptr %i.rr, align 1, !tbaa !45
  %i.rt = call i32 @llvm.bswap.i32(i32 %i.rs)
  %i.ru = and i32 %i.rm, 7
  %i.rv = shl i32 %i.rt, %i.ru
  %i.rw = lshr i32 %i.rv, 25
  %i.rx = zext nneg i32 %i.rw to i64
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr @ff_vlc_scalefactors, i64 %i.rx ; 2 uses
  %i.rz = load i16, ptr %i.ry, align 2, !tbaa !45
  %i.sa = sext i16 %i.rz to i32                   ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.ry, i64 2
  %i.sc = load i16, ptr %i.sb, align 2, !tbaa !45 ; 2 uses
  %i.sd = sext i16 %i.sc to i32                   ; 3 uses
  %i.se = icmp slt i16 %i.sc, 0
  br i1 %i.se, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.sf = add i32 %i.rm, 7
  %i.sg = call i32 @llvm.umin.i32(i32 %i.rn, i32 %i.sf) ; 4 uses
  %i.sh = lshr i32 %i.sg, 3
  %i.si = zext nneg i32 %i.sh to i64
  %i.sj = getelementptr inbounds nuw i8, ptr %i.ro, i64 %i.si
  %i.sk = load i32, ptr %i.sj, align 1, !tbaa !45
  %i.sl = call i32 @llvm.bswap.i32(i32 %i.sk)
  %i.sm = and i32 %i.sg, 7
  %i.sn = shl i32 %i.sl, %i.sm
  %i.so = add nsw i32 %i.sd, 32
  %i.sp = lshr i32 %i.sn, %i.so
  %i.sq = add i32 %i.sp, %i.sa
  %i.sr = zext i32 %i.sq to i64
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr @ff_vlc_scalefactors, i64 %i.sr ; 2 uses
  %i.st = load i16, ptr %i.ss, align 2, !tbaa !45
  %i.su = sext i16 %i.st to i32                   ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.ss, i64 2
  %i.sw = load i16, ptr %i.sv, align 2, !tbaa !45 ; 2 uses
  %i.sx = sext i16 %i.sw to i32                   ; 2 uses
  %i.sy = icmp slt i16 %i.sw, 0
  br i1 %i.sy, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.sz = sub i32 %i.sg, %i.sd
  %i.ta = call i32 @llvm.umin.i32(i32 %i.rn, i32 %i.sz) ; 3 uses
  %i.tb = lshr i32 %i.ta, 3
  %i.tc = zext nneg i32 %i.tb to i64
  %i.td = getelementptr inbounds nuw i8, ptr %i.ro, i64 %i.tc
  %i.te = load i32, ptr %i.td, align 1, !tbaa !45
  %i.tf = call i32 @llvm.bswap.i32(i32 %i.te)
  %i.tg = and i32 %i.ta, 7
  %i.th = shl i32 %i.tf, %i.tg
  %i.ti = add nsw i32 %i.sx, 32
  %i.tj = lshr i32 %i.th, %i.ti
  %i.tk = add i32 %i.tj, %i.su
  %i.tl = zext i32 %i.tk to i64
  %i.tm = getelementptr inbounds nuw [4 x i8], ptr @ff_vlc_scalefactors, i64 %i.tl ; 2 uses
  %i.tn = load i16, ptr %i.tm, align 2, !tbaa !45
  %i.to = sext i16 %i.tn to i32
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tm, i64 2
  %i.tq = load i16, ptr %i.tp, align 2, !tbaa !45
  %i.tr = sext i16 %i.tq to i32
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au
  %.167.i.i = phi i32 [ %i.sa, %bb.au ], [ %i.to, %bb.aw ], [ %i.su, %bb.av ]
  %.165.i.i = phi i32 [ %i.rm, %bb.au ], [ %i.ta, %bb.aw ], [ %i.sg, %bb.av ]
  %.1.i.i = phi i32 [ %i.sd, %bb.au ], [ %i.tr, %bb.aw ], [ %i.sx, %bb.av ]
  %i.ts = add i32 %.1.i.i, %.165.i.i
  %i.tt = call i32 @llvm.umin.i32(i32 %i.rn, i32 %i.ts)
  store i32 %i.tt, ptr %i.d, align 8, !tbaa !41
  %i.tu = add nsw i32 %.12736.i, -60
  %i.tv = add nsw i32 %i.tu, %.167.i.i            ; 3 uses
  %i.tw = icmp ugt i32 %i.tv, 255
  br i1 %i.tw, label %decode_usac_scale_factors.exit, label %.thread48.i

.thread48.i:                                      ; preds = %bb.ax, %bb.at
  %.250.i = phi i32 [ %i.tv, %bb.ax ], [ %.12736.i, %bb.at ] ; 3 uses
  %i.tx = add nsw i32 %.250.i, -100
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.rj, i64 %indvars.iv.i212
  store i32 %i.tx, ptr %i.ty, align 4, !tbaa !46
  %indvars.iv.next.i213 = add nuw nsw i64 %indvars.iv.i212, 1 ; 2 uses
  %exitcond.not.i214 = icmp eq i64 %indvars.iv.next.i213, %i.rh
  br i1 %exitcond.not.i214, label %._crit_edge.i215, label %bb.at, !llvm.loop !191

._crit_edge.i215:                                 ; preds = %.thread48.i
  %indvars.iv.next44.i = add nuw nsw i64 %indvars.iv43.i, 1 ; 2 uses
  %exitcond47.not.i = icmp eq i64 %indvars.iv.next44.i, %wide.trip.count46.i
  br i1 %exitcond47.not.i, label %.loopexit283, label %.preheader.i211, !llvm.loop !192

decode_usac_scale_factors.exit:                   ; preds = %bb.ax
  %i.tz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ua = load ptr, ptr %i.tz, align 8, !tbaa !79
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ua, i32 noundef 16, ptr noundef nonnull @.str.16, i32 noundef %i.tv) #13
  br label %decode_usac_stereo_info.exit

.loopexit283:                                     ; preds = %._crit_edge.i215, %.preheader.lr.ph.i, %bb.as
  %i.ub = getelementptr inbounds nuw i8, ptr %i.la, i64 170
  %i.uc = load i8, ptr %i.ub, align 2, !tbaa !178
  %.not198 = icmp eq i8 %i.uc, 0
  br i1 %.not198, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %.loopexit283
  %i.ud = getelementptr inbounds nuw i8, ptr %i.la, i64 992 ; 2 uses
  store i32 1, ptr %i.ud, align 16, !tbaa !177
  %i.ue = call i32 @ff_aac_decode_tns(ptr noundef %0, ptr noundef nonnull %i.ud, ptr noundef %4, ptr noundef nonnull %i.la) #13 ; 2 uses
  %i.uf = icmp slt i32 %i.ue, 0
  br i1 %i.uf, label %decode_usac_stereo_info.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay, %.loopexit283
  br i1 %.not199, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ug = load i32, ptr %i.d, align 8, !tbaa !41  ; 4 uses
  %i.uh = load ptr, ptr %4, align 8, !tbaa !44
  %i.ui = lshr i32 %i.ug, 3
  %i.uj = zext nneg i32 %i.ui to i64
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uh, i64 %i.uj
  %i.ul = load i8, ptr %i.uk, align 1, !tbaa !45
  %i.um = load i32, ptr %i.f, align 8, !tbaa !43
  %i.un = icmp slt i32 %i.ug, %i.um
  %i.uo = zext i1 %i.un to i32
  %spec.select.i217 = add i32 %i.ug, %i.uo
  %i.up = zext i8 %i.ul to i32
  %i.uq = and i32 %i.ug, 7
  store i32 %spec.select.i217, ptr %i.d, align 8, !tbaa !41
  %i.ur = lshr exact i32 128, %i.uq
  %i.us = and i32 %i.ur, %i.up
  %i.ut = icmp ne i32 %i.us, 0
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.0178 = phi i1 [ true, %bb.az ], [ %i.ut, %bb.ba ]
  %i.uu = getelementptr inbounds nuw i8, ptr %i.la, i64 5520 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.uu, i8 0, i64 4096, i1 false)
  %i.uv = getelementptr inbounds nuw i8, ptr %i.la, i64 92 ; 2 uses
  %i.uw = load i32, ptr %i.uv, align 4, !tbaa !193
  %.not200295 = icmp sgt i32 %i.uw, 0
  br i1 %.not200295, label %.lr.ph, label %.thread263

.lr.ph:                                           ; preds = %bb.bb
  %i.ux = getelementptr inbounds nuw i8, ptr %i.la, i64 80
  %i.uy = getelementptr inbounds nuw i8, ptr %i.la, i64 4
  %i.uz = getelementptr inbounds nuw i8, ptr %i.la, i64 464 ; 5 uses
  br label %bb.bc

bb.bc:                                            ; preds = %.lr.ph, %.loopexit
  %indvars.iv317 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next318, %.loopexit ] ; 3 uses
  %i.va = load ptr, ptr %i.ux, align 16, !tbaa !194
  %i.vb = load i8, ptr %i.la, align 16, !tbaa !181
  %i.vc = zext i8 %i.vb to i64
  %i.vd = getelementptr inbounds nuw [2 x i8], ptr %i.va, i64 %i.vc
  %i.ve = load i16, ptr %i.vd, align 2, !tbaa !195 ; 4 uses
  %i.vf = load i32, ptr %i.uy, align 4, !tbaa !46
  %i.vg = icmp eq i32 %i.vf, 2
  %i.vh = load i16, ptr %i.ky, align 2, !tbaa !50 ; 2 uses
  %i.vi = lshr i16 %i.vh, 3
  %.0166.in = select i1 %i.vg, i16 %i.vi, i16 %i.vh
  %.idx = shl nuw nsw i64 %indvars.iv317, 9
  %i.vj = getelementptr inbounds nuw i8, ptr %i.uu, i64 %.idx ; 3 uses
  %i.vk = icmp eq i64 %indvars.iv317, 0
  %i.vl = and i1 %.0178, %i.vk
  %i.vm = zext i1 %i.vl to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.vn = zext i16 %.0166.in to i32               ; 5 uses
  %i.vo = call i32 @ff_aac_ac_map_process(ptr noundef nonnull %i.uz, i32 noundef range(i32 0, 2) %i.vm, i32 noundef %i.vn) #13
  %.not.i218 = icmp eq i16 %i.ve, 0
  br i1 %.not.i218, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  call void @ff_aac_ac_finish(ptr noundef nonnull %i.uz, i32 noundef 0, i32 noundef %i.vn) #13
  br label %.loopexit

bb.be:                                            ; preds = %bb.bc
  call void @ff_aac_ac_init(ptr noundef nonnull %7, ptr noundef %4) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !148
  %.val98.i = load i32, ptr %i.kz, align 8, !tbaa !41
  %i.vp = lshr i16 %i.ve, 1                       ; 3 uses
  %i.vq = zext nneg i16 %i.vp to i32
  %.not46.i = icmp eq i16 %i.vp, 0
  br i1 %.not46.i, label %._crit_edge36.i, label %.lr.ph35.preheader.i

.lr.ph35.preheader.i:                             ; preds = %bb.be
  %wide.trip.count.i = zext nneg i16 %i.vp to i64
  br label %.lr.ph35.i

.lr.ph35.i:                                       ; preds = %._crit_edge29.i, %.lr.ph35.preheader.i
  %indvars.iv.i219 = phi i64 [ 0, %.lr.ph35.preheader.i ], [ %indvars.iv.next.i221, %._crit_edge29.i ] ; 3 uses
  %.08632.i = phi i32 [ %i.vo, %.lr.ph35.preheader.i ], [ %i.vs, %._crit_edge29.i ]
  %i.vr = trunc nuw nsw i64 %indvars.iv.i219 to i32 ; 3 uses
  %i.vs = call i32 @ff_aac_ac_get_context(ptr noundef nonnull %i.uz, i32 noundef %.08632.i, i32 noundef %i.vr, i32 noundef %i.vn) #13 ; 9 uses
  %i.vt = call i32 @ff_aac_ac_get_pk(i32 noundef %i.vs) #13
  %i.vu = zext i32 %i.vt to i64
  %i.vv = getelementptr inbounds nuw [34 x i8], ptr @ff_aac_ac_msb_cdfs, i64 %i.vu
  %i.vw = call zeroext i16 @ff_aac_ac_decode(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %i.vv, i16 noundef zeroext 17) #13 ; 2 uses
  %i.vx = icmp ult i16 %i.vw, 16
  br i1 %i.vx, label %._crit_edge.thread.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph35.i
  %i.vy = add i32 %i.vs, 131072
  %i.vz = call i32 @ff_aac_ac_get_pk(i32 noundef %i.vy) #13
  %i.wa = zext i32 %i.vz to i64
  %i.wb = getelementptr inbounds nuw [34 x i8], ptr @ff_aac_ac_msb_cdfs, i64 %i.wa
  %i.wc = call zeroext i16 @ff_aac_ac_decode(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %i.wb, i16 noundef zeroext 17) #13 ; 2 uses
  %i.wd = icmp ult i16 %i.wc, 16
  br i1 %i.wd, label %._crit_edge.i220, label %.lr.ph.peel.next.i

.lr.ph.peel.next.i:                               ; preds = %.lr.ph.preheader.i
  %i.we = add i32 %i.vs, 262144
  %i.wf = call i32 @ff_aac_ac_get_pk(i32 noundef %i.we) #13
  %i.wg = zext i32 %i.wf to i64
  %i.wh = getelementptr inbounds nuw [34 x i8], ptr @ff_aac_ac_msb_cdfs, i64 %i.wg
  %i.wi = call zeroext i16 @ff_aac_ac_decode(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %i.wh, i16 noundef zeroext 17) #13 ; 2 uses
  %i.wj = icmp ult i16 %i.wi, 16
  br i1 %i.wj, label %._crit_edge.i220, label %.lr.ph.peel.next52.i

.lr.ph.peel.next52.i:                             ; preds = %.lr.ph.peel.next.i
  %i.wk = add i32 %i.vs, 393216
  %i.wl = call i32 @ff_aac_ac_get_pk(i32 noundef %i.wk) #13
  %i.wm = zext i32 %i.wl to i64
  %i.wn = getelementptr inbounds nuw [34 x i8], ptr @ff_aac_ac_msb_cdfs, i64 %i.wm
  %i.wo = call zeroext i16 @ff_aac_ac_decode(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %i.wn, i16 noundef zeroext 17) #13 ; 2 uses
  %i.wp = icmp ult i16 %i.wo, 16
  br i1 %i.wp, label %._crit_edge.i220, label %.lr.ph.peel.next56.i

.lr.ph.peel.next56.i:                             ; preds = %.lr.ph.peel.next52.i
  %i.wq = add i32 %i.vs, 524288
  %i.wr = call i32 @ff_aac_ac_get_pk(i32 noundef %i.wq) #13
  %i.ws = zext i32 %i.wr to i64
  %i.wt = getelementptr inbounds nuw [34 x i8], ptr @ff_aac_ac_msb_cdfs, i64 %i.ws
  %i.wu = call zeroext i16 @ff_aac_ac_decode(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %i.wt, i16 noundef zeroext 17) #13 ; 2 uses
  %i.wv = icmp ult i16 %i.wu, 16
  br i1 %i.wv, label %._crit_edge.i220, label %.lr.ph.peel.next60.i

.lr.ph.peel.next60.i:                             ; preds = %.lr.ph.peel.next56.i
  %i.ww = add i32 %i.vs, 655360
  %i.wx = call i32 @ff_aac_ac_get_pk(i32 noundef %i.ww) #13
  %i.wy = zext i32 %i.wx to i64
  %i.wz = getelementptr inbounds nuw [34 x i8], ptr @ff_aac_ac_msb_cdfs, i64 %i.wy
  %i.xa = call zeroext i16 @ff_aac_ac_decode(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %i.wz, i16 noundef zeroext 17) #13 ; 2 uses
  %i.xb = icmp ult i16 %i.xa, 16
  br i1 %i.xb, label %._crit_edge.i220, label %.lr.ph.peel.next64.i

.lr.ph.peel.next64.i:                             ; preds = %.lr.ph.peel.next60.i
  %i.xc = add i32 %i.vs, 786432
  %i.xd = call i32 @ff_aac_ac_get_pk(i32 noundef %i.xc) #13
  %i.xe = zext i32 %i.xd to i64
  %i.xf = getelementptr inbounds nuw [34 x i8], ptr @ff_aac_ac_msb_cdfs, i64 %i.xe
  %i.xg = call zeroext i16 @ff_aac_ac_decode(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %i.xf, i16 noundef zeroext 17) #13 ; 2 uses
  %i.xh = icmp ult i16 %i.xg, 16
  br i1 %i.xh, label %._crit_edge.i220, label %.lr.ph.peel.next68.i

.lr.ph.peel.next68.i:                             ; preds = %.lr.ph.peel.next64.i
  %i.xi = add i32 %i.vs, 917504                   ; 17 uses
  %i.xj = call i32 @ff_aac_ac_get_pk(i32 noundef %i.xi) #13
  %i.xk = zext i32 %i.xj to i64
  %i.xl = getelementptr inbounds nuw [34 x i8], ptr @ff_aac_ac_msb_cdfs, i64 %i.xk
  %i.xm = call zeroext i16 @ff_aac_ac_decode(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %i.xl, i16 noundef zeroext 17) #13 ; 2 uses
  %i.xn = icmp ult i16 %i.xm, 16
  br i1 %i.xn, label %._crit_edge.i220, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.peel.next68.i
  %i.xo = call i32 @ff_aac_ac_get_pk(i32 noundef %i.xi) #13
  %i.xp = zext i32 %i.xo to i64
  %i.xq = getelementptr inbounds nuw [34 x i8], ptr @ff_aac_ac_msb_cdfs, i64 %i.xp
  %i.xr = call zeroext i16 @ff_aac_ac_decode(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %i.xq, i16 noundef zeroext 17) #13 ; 2 uses
  %i.xs = icmp ult i16 %i.xr, 16
  br i1 %i.xs, label %._crit_edge.i220, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.xt = call i32 @ff_aac_ac_get_pk(i32 noundef %i.xi) #13
  %i.xu = zext i32 %i.xt to i64
  %i.xv = getelementptr inbounds nuw [34 x i8], ptr @ff_aac_ac_msb_cdfs, i64 %i.xu
  %i.xw = call zeroext i16 @ff_aac_ac_decode(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %i.xv, i16 noundef zeroext 17) #13 ; 2 uses
  %i.xx = icmp ult i16 %i.xw, 16
  br i1 %i.xx, label %._crit_edge.i220, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.xy = call i32 @ff_aac_ac_get_pk(i32 noundef %i.xi) #13
  %i.xz = zext i32 %i.xy to i64
  %i.ya = getelementptr inbounds nuw [34 x i8], ptr @ff_aac_ac_msb_cdfs, i64 %i.xz
  %i.yb = call zeroext i16 @ff_aac_ac_decode(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %i.ya, i16 noundef zeroext 17) #13 ; 2 uses
  %i.yc = icmp ult i16 %i.yb, 16
  br i1 %i.yc, label %._crit_edge.i220, label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %.lr.ph.i.3
  %i.yd = call i32 @ff_aac_ac_get_pk(i32 noundef %i.xi) #13
  %i.ye = zext i32 %i.yd to i64
  %i.yf = getelementptr inbounds nuw [34 x i8], ptr @ff_aac_ac_msb_cdfs, i64 %i.ye
  %i.yg = call zeroext i16 @ff_aac_ac_decode(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %i.yf, i16 noundef zeroext 17) #13 ; 2 uses
  %i.yh = icmp ult i16 %i.yg, 16
  br i1 %i.yh, label %._crit_edge.i220, label %.lr.ph.i.5

.lr.ph.i.5:                                       ; preds = %.lr.ph.i.4
  %i.yi = call i32 @ff_aac_ac_get_pk(i32 noundef %i.xi) #13
  %i.yj = zext i32 %i.yi to i64
  %i.yk = getelementptr inbounds nuw [34 x i8], ptr @ff_aac_ac_msb_cdfs, i64 %i.yj
  %i.yl = call zeroext i16 @ff_aac_ac_decode(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %i.yk, i16 noundef zeroext 17) #13 ; 2 uses
  %i.ym = icmp ult i16 %i.yl, 16
  br i1 %i.ym, label %._crit_edge.i220, label %.lr.ph.i.6

.lr.ph.i.6:                                       ; preds = %.lr.ph.i.5
  %i.yn = call i32 @ff_aac_ac_get_pk(i32 noundef %i.xi) #13
  %i.yo = zext i32 %i.yn to i64
  %i.yp = getelementptr inbounds nuw [34 x i8], ptr @ff_aac_ac_msb_cdfs, i64 %i.yo
  %i.yq = call zeroext i16 @ff_aac_ac_decode(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %i.yp, i16 noundef zeroext 17) #13 ; 2 uses
  %i.yr = icmp ult i16 %i.yq, 16
  br i1 %i.yr, label %._crit_edge.i220, label %.lr.ph.i.7

.lr.ph.i.7:                                       ; preds = %.lr.ph.i.6
  %i.ys = call i32 @ff_aac_ac_get_pk(i32 noundef %i.xi) #13
  %i.yt = zext i32 %i.ys to i64
  %i.yu = getelementptr inbounds nuw [34 x i8], ptr @ff_aac_ac_msb_cdfs, i64 %i.yt
  %i.yv = call zeroext i16 @ff_aac_ac_decode(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %i.yu, i16 noundef zeroext 17) #13 ; 2 uses
  %i.yw = icmp ult i16 %i.yv, 16
  br i1 %i.yw, label %._crit_edge.i220, label %.lr.ph.i.8

.lr.ph.i.8:                                       ; preds = %.lr.ph.i.7
  %i.yx = call i32 @ff_aac_ac_get_pk(i32 noundef %i.xi) #13
  %i.yy = zext i32 %i.yx to i64
  %i.yz = getelementptr inbounds nuw [34 x i8], ptr @ff_aac_ac_msb_cdfs, i64 %i.yy
  %i.za = call zeroext i16 @ff_aac_ac_decode(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %i.yz, i16 noundef zeroext 17) #13 ; 2 uses
  %i.zb = icmp ult i16 %i.za, 16
  br i1 %i.zb, label %._crit_edge.i220, label %.lr.ph.i.9

.lr.ph.i.9:                                       ; preds = %.lr.ph.i.8
  %i.zc = call i32 @ff_aac_ac_get_pk(i32 noundef %i.xi) #13
  %i.zd = zext i32 %i.zc to i64
  %i.ze = getelementptr inbounds nuw [34 x i8], ptr @ff_aac_ac_msb_cdfs, i64 %i.zd
  %i.zf = call zeroext i16 @ff_aac_ac_decode(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %i.ze, i16 noundef zeroext 17) #13 ; 2 uses
  %i.zg = icmp ult i16 %i.zf, 16
  br i1 %i.zg, label %._crit_edge.i220, label %.lr.ph.i.10

.lr.ph.i.10:                                      ; preds = %.lr.ph.i.9
  %i.zh = call i32 @ff_aac_ac_get_pk(i32 noundef %i.xi) #13
  %i.zi = zext i32 %i.zh to i64
  %i.zj = getelementptr inbounds nuw [34 x i8], ptr @ff_aac_ac_msb_cdfs, i64 %i.zi
  %i.zk = call zeroext i16 @ff_aac_ac_decode(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %i.zj, i16 noundef zeroext 17) #13 ; 2 uses
  %i.zl = icmp ult i16 %i.zk, 16
  br i1 %i.zl, label %._crit_edge.i220, label %.lr.ph.i.11

.lr.ph.i.11:                                      ; preds = %.lr.ph.i.10
  %i.zm = call i32 @ff_aac_ac_get_pk(i32 noundef %i.xi) #13
  %i.zn = zext i32 %i.zm to i64
  %i.zo = getelementptr inbounds nuw [34 x i8], ptr @ff_aac_ac_msb_cdfs, i64 %i.zn
  %i.zp = call zeroext i16 @ff_aac_ac_decode(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %i.zo, i16 noundef zeroext 17) #13 ; 2 uses
  %i.zq = icmp ult i16 %i.zp, 16
  br i1 %i.zq, label %._crit_edge.i220, label %.lr.ph.i.12

end_hunk_2
begin_hunk_3_@decode_usac_core_coder:bb.a
  %i.aic = load i32, ptr %i.d, align 8, !tbaa !41 ; 3 uses
  %i.aid = load i32, ptr %i.f, align 8, !tbaa !43
  %i.aie = lshr i32 %i.aic, 3
  %i.aif = zext nneg i32 %i.aie to i64
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aey, i64 %i.aif
  %i.aih = load i32, ptr %i.aig, align 1, !tbaa !45
  %i.aii = call i32 @llvm.bswap.i32(i32 %i.aih)
  %i.aij = and i32 %i.aic, 7
  %i.aik = shl i32 %i.aii, %i.aij
  %i.ail = lshr i32 %i.aik, %i.agb
  %i.aim = add i32 %i.aic, %i.afz
  %i.ain = call i32 @llvm.umin.i32(i32 %i.aid, i32 %i.aim)
  store i32 %i.ain, ptr %i.d, align 8, !tbaa !41
  %i.aio = getelementptr inbounds nuw i8, ptr %3, i64 88800
  store i32 %i.ail, ptr %i.aio, align 16, !tbaa !46
  %exitcond.not.i231.4 = icmp eq i32 %i.afv, 5
  br i1 %exitcond.not.i231.4, label %.loopexit166.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.aip = load i32, ptr %i.d, align 8, !tbaa !41 ; 3 uses
  %i.aiq = load i32, ptr %i.f, align 8, !tbaa !43
  %i.air = lshr i32 %i.aip, 3
  %i.ais = zext nneg i32 %i.air to i64
  %i.ait = getelementptr inbounds nuw i8, ptr %i.aey, i64 %i.ais
  %i.aiu = load i32, ptr %i.ait, align 1, !tbaa !45
  %i.aiv = call i32 @llvm.bswap.i32(i32 %i.aiu)
  %i.aiw = and i32 %i.aip, 7
  %i.aix = shl i32 %i.aiv, %i.aiw
  %i.aiy = lshr i32 %i.aix, %i.agb
  %i.aiz = add i32 %i.aip, %i.afz
  %i.aja = call i32 @llvm.umin.i32(i32 %i.aiq, i32 %i.aiz)
  store i32 %i.aja, ptr %i.d, align 8, !tbaa !41
  %i.ajb = getelementptr inbounds nuw i8, ptr %3, i64 88804
  store i32 %i.aiy, ptr %i.ajb, align 4, !tbaa !46
  %exitcond.not.i231.5 = icmp eq i32 %i.afv, 6
  br i1 %exitcond.not.i231.5, label %.loopexit166.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ajc = load i32, ptr %i.d, align 8, !tbaa !41 ; 3 uses
  %i.ajd = load i32, ptr %i.f, align 8, !tbaa !43
  %i.aje = lshr i32 %i.ajc, 3
  %i.ajf = zext nneg i32 %i.aje to i64
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.aey, i64 %i.ajf
  %i.ajh = load i32, ptr %i.ajg, align 1, !tbaa !45
  %i.aji = call i32 @llvm.bswap.i32(i32 %i.ajh)
  %i.ajj = and i32 %i.ajc, 7
  %i.ajk = shl i32 %i.aji, %i.ajj
  %i.ajl = lshr i32 %i.ajk, %i.agb
  %i.ajm = add i32 %i.ajc, %i.afz
  %i.ajn = call i32 @llvm.umin.i32(i32 %i.ajd, i32 %i.ajm)
  store i32 %i.ajn, ptr %i.d, align 8, !tbaa !41
  %i.ajo = getelementptr inbounds nuw i8, ptr %3, i64 88808
  store i32 %i.ajl, ptr %i.ajo, align 8, !tbaa !46
  %exitcond.not.i231.6 = icmp eq i32 %i.afv, 7
  br i1 %exitcond.not.i231.6, label %.loopexit166.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ajp = load i32, ptr %i.d, align 8, !tbaa !41 ; 3 uses
  %i.ajq = load i32, ptr %i.f, align 8, !tbaa !43
  %i.ajr = lshr i32 %i.ajp, 3
  %i.ajs = zext nneg i32 %i.ajr to i64
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.aey, i64 %i.ajs
  %i.aju = load i32, ptr %i.ajt, align 1, !tbaa !45
  %i.ajv = call i32 @llvm.bswap.i32(i32 %i.aju)
  %i.ajw = and i32 %i.ajp, 7
  %i.ajx = shl i32 %i.ajv, %i.ajw
  %i.ajy = lshr i32 %i.ajx, %i.agb
  %i.ajz = add i32 %i.ajp, %i.afz
  %i.aka = call i32 @llvm.umin.i32(i32 %i.ajq, i32 %i.ajz)
  store i32 %i.aka, ptr %i.d, align 8, !tbaa !41
  %i.akb = getelementptr inbounds nuw i8, ptr %3, i64 88812
  store i32 %i.ajy, ptr %i.akb, align 4, !tbaa !46
  br label %.loopexit166.i

.loopexit166.i:                                   ; preds = %.lr.ph.i227, %bb.bt, %bb.bu, %bb.bv, %bb.bw, %bb.bx, %bb.by, %bb.bz, %bb.bs, %.thread210.i
  %i.akc = phi i32 [ %i.aew, %.thread210.i ], [ %i.aga, %bb.bs ], [ %i.aga, %bb.bz ], [ %i.aga, %bb.by ], [ %i.aga, %bb.bx ], [ %i.aga, %bb.bw ], [ %i.aga, %bb.bv ], [ %i.aga, %bb.bu ], [ %i.aga, %bb.bt ], [ %i.aga, %.lr.ph.i227 ] ; 4 uses
  %i.akd = phi i32 [ %i.aev, %.thread210.i ], [ %i.afz, %bb.bs ], [ %i.afz, %bb.bz ], [ %i.afz, %bb.by ], [ %i.afz, %bb.bx ], [ %i.afz, %bb.bw ], [ %i.afz, %bb.bv ], [ %i.afz, %bb.bu ], [ %i.afz, %bb.bt ], [ %i.afz, %.lr.ph.i227 ] ; 2 uses
  %i.ake = phi i32 [ 2, %.thread210.i ], [ %i.afv, %bb.bs ], [ %i.afv, %bb.bz ], [ %i.afv, %bb.by ], [ %i.afv, %bb.bx ], [ %i.afv, %bb.bw ], [ %i.afv, %bb.bv ], [ %i.afv, %bb.bu ], [ %i.afv, %bb.bt ], [ %i.afv, %.lr.ph.i227 ] ; 2 uses
  br i1 %.not199, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %.loopexit166.i
  %i.akf = load i32, ptr %i.d, align 8, !tbaa !41 ; 4 uses
  %i.akg = load ptr, ptr %4, align 8, !tbaa !44
  %i.akh = lshr i32 %i.akf, 3
  %i.aki = zext nneg i32 %i.akh to i64
  %i.akj = getelementptr inbounds nuw i8, ptr %i.akg, i64 %i.aki
  %i.akk = load i8, ptr %i.akj, align 1, !tbaa !45
  %i.akl = load i32, ptr %i.f, align 8, !tbaa !43
  %i.akm = icmp slt i32 %i.akf, %i.akl
  %i.akn = zext i1 %i.akm to i32
  %spec.select.i156.i = add i32 %i.akf, %i.akn
  %i.ako = zext i8 %i.akk to i32
  %i.akp = and i32 %i.akf, 7
  %i.akq = shl nuw nsw i32 %i.ako, %i.akp
  %i.akr = lshr i32 %i.akq, 7
  store i32 %spec.select.i156.i, ptr %i.d, align 8, !tbaa !41
  %i.aks = and i32 %i.akr, 1
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %.loopexit166.i
  %.0140.i = phi i32 [ 1, %.loopexit166.i ], [ %i.aks, %bb.ca ] ; 6 uses
  %i.akt = getelementptr inbounds nuw i8, ptr %3, i64 88784 ; 4 uses
  %i.aku = zext nneg i32 %i.ake to i64
  %i.akv = getelementptr [4 x i8], ptr %i.akt, i64 %i.aku
  %i.akw = getelementptr i8, ptr %i.akv, i64 -4
  %i.akx = load i32, ptr %i.akw, align 4, !tbaa !46
  %i.aky = add nsw i32 %i.akc, -1
  %i.akz = icmp ne i32 %i.akx, %i.aky
  %i.ala = zext i1 %i.akz to i32                  ; 3 uses
  %i.alb = getelementptr inbounds nuw i8, ptr %3, i64 88820 ; 2 uses
  %i.alc = call i32 @ff_aac_ec_data_dec(ptr noundef %4, ptr noundef nonnull %i.alb, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %i.aeo, i32 noundef %.0140.i, i32 noundef %.0140.i, i32 noundef %i.ake) #13 ; 2 uses
  %i.ald = icmp slt i32 %i.alc, 0
  br i1 %i.ald, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.ale = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.alf = load ptr, ptr %i.ale, align 8, !tbaa !79
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.alf, i32 noundef 16, ptr noundef nonnull @.str.17) #13
  br label %decode_usac_stereo_info.exit

bb.cd:                                            ; preds = %bb.cb
  %i.alg = getelementptr inbounds nuw i8, ptr %3, i64 90700
  %i.alh = load i32, ptr %i.aep, align 4, !tbaa !203
  %i.ali = call i32 @ff_aac_map_index_data(ptr noundef nonnull %i.alb, i32 noundef 0, ptr noundef nonnull %i.alg, i32 noundef 0, i32 noundef 0, i32 noundef %i.aeo, i32 noundef %i.alh, ptr noundef nonnull %i.akt, i32 noundef %i.ala) #13 ; 0 uses
  %i.alj = getelementptr inbounds nuw i8, ptr %3, i64 89446 ; 2 uses
  %i.alk = load i32, ptr %i.aep, align 4, !tbaa !203
  %i.all = call i32 @ff_aac_ec_data_dec(ptr noundef %4, ptr noundef nonnull %i.alj, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef %i.aeo, i32 noundef %.0140.i, i32 noundef %.0140.i, i32 noundef %i.alk) #13 ; 2 uses
  %i.alm = icmp slt i32 %i.all, 0
  br i1 %i.alm, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.aln = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.alo = load ptr, ptr %i.aln, align 8, !tbaa !79
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.alo, i32 noundef 16, ptr noundef nonnull @.str.18) #13
  br label %decode_usac_stereo_info.exit

bb.cf:                                            ; preds = %bb.cd
  %i.alp = getelementptr inbounds nuw i8, ptr %3, i64 91708
  %i.alq = load i32, ptr %i.aep, align 4, !tbaa !203
  %i.alr = call i32 @ff_aac_map_index_data(ptr noundef nonnull %i.alj, i32 noundef 1, ptr noundef nonnull %i.alp, i32 noundef 0, i32 noundef 0, i32 noundef %i.aeo, i32 noundef %i.alq, ptr noundef nonnull %i.akt, i32 noundef %i.ala) #13 ; 0 uses
  %i.als = load i8, ptr %i.aeq, align 4
  %i.alt = and i8 %i.als, 2
  %.not150.i232 = icmp eq i8 %i.alt, 0
  br i1 %.not150.i232, label %bb.cj, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.alu = load i32, ptr %i.d, align 8, !tbaa !41 ; 4 uses
  %i.alv = load ptr, ptr %4, align 8, !tbaa !44   ; 2 uses
  %i.alw = lshr i32 %i.alu, 3
  %i.alx = zext nneg i32 %i.alw to i64
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alv, i64 %i.alx
  %i.alz = load i8, ptr %i.aly, align 1, !tbaa !45
  %i.ama = load i32, ptr %i.f, align 8, !tbaa !43 ; 2 uses
  %i.amb = icmp slt i32 %i.alu, %i.ama
  %i.amc = zext i1 %i.amb to i32
  %spec.select.i157.i = add i32 %i.alu, %i.amc    ; 5 uses
  %i.amd = zext i8 %i.alz to i32
  %i.ame = and i32 %i.alu, 7
  store i32 %spec.select.i157.i, ptr %i.d, align 8, !tbaa !41
  %i.amf = lshr exact i32 128, %i.ame
  %i.amg = and i32 %i.amf, %i.amd
  %.not151.i = icmp eq i32 %i.amg, 0
  br i1 %.not151.i, label %bb.cj, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.amh = lshr i32 %spec.select.i157.i, 3
  %i.ami = zext nneg i32 %i.amh to i64
  %i.amj = getelementptr inbounds nuw i8, ptr %i.alv, i64 %i.ami
  %i.amk = load i8, ptr %i.amj, align 1, !tbaa !45
  %i.aml = icmp slt i32 %spec.select.i157.i, %i.ama
  %i.amm = zext i1 %i.aml to i32
  %spec.select.i158.i = add i32 %spec.select.i157.i, %i.amm
  %i.amn = zext i8 %i.amk to i32
  %i.amo = and i32 %spec.select.i157.i, 7
  %i.amp = shl nuw nsw i32 %i.amn, %i.amo
  store i32 %spec.select.i158.i, ptr %i.d, align 8, !tbaa !41
  %i.amq = getelementptr inbounds nuw i8, ptr %3, i64 93724
  %i.amr = trunc i32 %i.amp to i8
  %i.ams = lshr i8 %i.amr, 7
  store i8 %i.ams, ptr %i.amq, align 4, !tbaa !204
  %i.amt = getelementptr inbounds nuw i8, ptr %3, i64 90072 ; 2 uses
  %i.amu = getelementptr inbounds nuw i8, ptr %2, i64 30
  %i.amv = load i8, ptr %i.amu, align 2, !tbaa !93
  %i.amw = zext i8 %i.amv to i32
  %i.amx = load i32, ptr %i.aep, align 4, !tbaa !203
  %i.amy = call i32 @ff_aac_ec_data_dec(ptr noundef nonnull %4, ptr noundef nonnull %i.amt, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef %i.amw, i32 noundef %.0140.i, i32 noundef %.0140.i, i32 noundef %i.amx) #13 ; 2 uses
  %i.amz = getelementptr inbounds nuw i8, ptr %3, i64 92716
  %i.ana = load i32, ptr %i.aep, align 4, !tbaa !203
  %i.anb = call i32 @ff_aac_map_index_data(ptr noundef nonnull %i.amt, i32 noundef 2, ptr noundef nonnull %i.amz, i32 noundef 0, i32 noundef 0, i32 noundef %i.aeo, i32 noundef %i.ana, ptr noundef nonnull %i.akt, i32 noundef %i.ala) #13 ; 0 uses
  %i.anc = icmp slt i32 %i.amy, 0
  br i1 %i.anc, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.and = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ane = load ptr, ptr %i.and, align 8, !tbaa !79
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ane, i32 noundef 16, ptr noundef nonnull @.str.19) #13
  br label %decode_usac_stereo_info.exit

bb.cj:                                            ; preds = %bb.ch, %bb.cg, %bb.cf
  %i.anf = getelementptr inbounds nuw i8, ptr %3, i64 93728 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %i.anf, i8 0, i64 36, i1 false)
  %i.ang = load i8, ptr %i.aeq, align 4
  %i.anh = and i8 %i.ang, 1
  %.not152.i233 = icmp eq i8 %i.anh, 0
  br i1 %.not152.i233, label %.loopexit.i234, label %.preheader164.i

.preheader164.i:                                  ; preds = %bb.cj
  %i.ani = load i32, ptr %i.aep, align 4, !tbaa !203 ; 2 uses
  %i.anj = icmp sgt i32 %i.ani, 0
  br i1 %i.anj, label %.lr.ph173.i, label %.loopexit.i234

.lr.ph173.i:                                      ; preds = %.preheader164.i
  %i.ank = load ptr, ptr %4, align 8, !tbaa !44   ; 6 uses
  %i.anl = getelementptr inbounds nuw i8, ptr %3, i64 93764
  %i.anm = getelementptr inbounds nuw i8, ptr %3, i64 93800
  %i.ann = add nsw i32 %i.aeo, -1
  %i.ano = getelementptr inbounds nuw i8, ptr %3, i64 93836
  %wide.trip.count189.i = zext nneg i32 %i.ani to i64
  br label %bb.ck

bb.ck:                                            ; preds = %.thread.i239, %.lr.ph173.i
  %indvars.iv186.i = phi i64 [ 0, %.lr.ph173.i ], [ %indvars.iv.next187.i, %.thread.i239 ] ; 5 uses
  %i.anp = load i32, ptr %i.d, align 8, !tbaa !41 ; 3 uses
  %i.anq = load i32, ptr %i.f, align 8, !tbaa !43
  %i.anr = lshr i32 %i.anp, 3
  %i.ans = zext nneg i32 %i.anr to i64
  %i.ant = getelementptr inbounds nuw i8, ptr %i.ank, i64 %i.ans
  %i.anu = load i32, ptr %i.ant, align 1, !tbaa !45
  %i.anv = call i32 @llvm.bswap.i32(i32 %i.anu)
  %i.anw = and i32 %i.anp, 7
  %i.anx = shl i32 %i.anv, %i.anw                 ; 2 uses
  %i.any = lshr i32 %i.anx, 30
  %i.anz = add i32 %i.anp, 2
  %i.aoa = call i32 @llvm.umin.i32(i32 %i.anq, i32 %i.anz)
  store i32 %i.aoa, ptr %i.d, align 8, !tbaa !41
  %i.aob = getelementptr inbounds nuw [4 x i8], ptr %i.anf, i64 %indvars.iv186.i ; 2 uses
  store i32 %i.any, ptr %i.aob, align 4, !tbaa !46
  %i.aoc = icmp slt i32 %i.anx, 0
  br i1 %i.aoc, label %bb.cl, label %.thread.i239

bb.cl:                                            ; preds = %bb.ck
  %i.aod = load i32, ptr %i.d, align 8, !tbaa !41 ; 3 uses
  %i.aoe = load i32, ptr %i.f, align 8, !tbaa !43
  %i.aof = lshr i32 %i.aod, 3
  %i.aog = zext nneg i32 %i.aof to i64
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.ank, i64 %i.aog
  %i.aoi = load i32, ptr %i.aoh, align 1, !tbaa !45
  %i.aoj = call i32 @llvm.bswap.i32(i32 %i.aoi)
  %i.aok = and i32 %i.aod, 7
  %i.aol = shl i32 %i.aoj, %i.aok
  %i.aom = lshr i32 %i.aol, 30
  %i.aon = add i32 %i.aod, 2
  %i.aoo = call i32 @llvm.umin.i32(i32 %i.aoe, i32 %i.aon)
  store i32 %i.aoo, ptr %i.d, align 8, !tbaa !41
  %i.aop = getelementptr inbounds nuw [4 x i8], ptr %i.anl, i64 %indvars.iv186.i
  store i32 %i.aom, ptr %i.aop, align 4, !tbaa !46
  %.pr.i = load i32, ptr %i.aob, align 4, !tbaa !46
  %i.aoq = icmp sgt i32 %.pr.i, 2
  br i1 %i.aoq, label %bb.cm, label %.thread.i239

bb.cm:                                            ; preds = %bb.cl
  %i.aor = load i32, ptr %i.d, align 8, !tbaa !41 ; 3 uses
  %i.aos = load i32, ptr %i.f, align 8, !tbaa !43
  %i.aot = lshr i32 %i.aor, 3
  %i.aou = zext nneg i32 %i.aot to i64
  %i.aov = getelementptr inbounds nuw i8, ptr %i.ank, i64 %i.aou
  %i.aow = load i32, ptr %i.aov, align 1, !tbaa !45
  %i.aox = call i32 @llvm.bswap.i32(i32 %i.aow)
  %i.aoy = and i32 %i.aor, 7
  %i.aoz = shl i32 %i.aox, %i.aoy
  %i.apa = lshr i32 %i.aoz, 30                    ; 2 uses
  %i.apb = add i32 %i.aor, 2
  %i.apc = call i32 @llvm.umin.i32(i32 %i.aos, i32 %i.apb)
  store i32 %i.apc, ptr %i.d, align 8, !tbaa !41
  %i.apd = getelementptr inbounds nuw [4 x i8], ptr %i.anm, i64 %indvars.iv186.i
  store i32 %i.apa, ptr %i.apd, align 4, !tbaa !46
  %i.ape = zext nneg i32 %i.apa to i64
  %i.apf = getelementptr inbounds nuw i8, ptr @mps_fr_stride_smg, i64 %i.ape
  %i.apg = load i8, ptr %i.apf, align 1, !tbaa !45
  %i.aph = zext i8 %i.apg to i32
  %i.api = add nuw nsw i32 %i.aph, 1
  %i.apj = sdiv i32 %i.ann, %i.api                ; 4 uses
  %i.apk = icmp sgt i32 %i.apj, 0
  br i1 %i.apk, label %.lr.ph171.i, label %.thread.i239

.lr.ph171.i:                                      ; preds = %bb.cm
  %i.apl = load i32, ptr %i.f, align 8, !tbaa !43 ; 3 uses
  %i.apm = getelementptr inbounds nuw [28 x i8], ptr %i.ano, i64 %indvars.iv186.i ; 3 uses
  %.promoted.i = load i32, ptr %i.d, align 8, !tbaa !41 ; 2 uses
  %wide.trip.count184.i = zext nneg i32 %i.apj to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count184.i, 1
  %i.apn = icmp eq i32 %i.apj, 1
  br i1 %i.apn, label %.epil.preheader, label %.lr.ph171.i.new

.lr.ph171.i.new:                                  ; preds = %.lr.ph171.i
  %unroll_iter = and i64 %wide.trip.count184.i, 2147483646
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cn, %.lr.ph171.i.new
  %indvars.iv181.i = phi i64 [ 0, %.lr.ph171.i.new ], [ %indvars.iv.next182.i.1, %bb.cn ] ; 3 uses
  %i.apo = phi i32 [ %.promoted.i, %.lr.ph171.i.new ], [ %spec.select.i159.i.1, %bb.cn ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph171.i.new ], [ %niter.next.1, %bb.cn ]
  %i.app = lshr i32 %i.apo, 3
  %i.apq = zext nneg i32 %i.app to i64
  %i.apr = getelementptr inbounds nuw i8, ptr %i.ank, i64 %i.apq
  %i.aps = load i8, ptr %i.apr, align 1, !tbaa !45
  %i.apt = icmp slt i32 %i.apo, %i.apl
  %i.apu = zext i1 %i.apt to i32
  %spec.select.i159.i = add i32 %i.apo, %i.apu    ; 5 uses
  %i.apv = zext i8 %i.aps to i32
  %i.apw = and i32 %i.apo, 7
  %i.apx = shl nuw nsw i32 %i.apv, %i.apw
  store i32 %spec.select.i159.i, ptr %i.d, align 8, !tbaa !41
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apm, i64 %indvars.iv181.i
  %i.apz = trunc i32 %i.apx to i8
  %i.aqa = lshr i8 %i.apz, 7
  store i8 %i.aqa, ptr %i.apy, align 1, !tbaa !205
  %i.aqb = lshr i32 %spec.select.i159.i, 3
  %i.aqc = zext nneg i32 %i.aqb to i64
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.ank, i64 %i.aqc
  %i.aqe = load i8, ptr %i.aqd, align 1, !tbaa !45
  %i.aqf = icmp slt i32 %spec.select.i159.i, %i.apl
  %i.aqg = zext i1 %i.aqf to i32
  %spec.select.i159.i.1 = add i32 %spec.select.i159.i, %i.aqg ; 3 uses
  %i.aqh = zext i8 %i.aqe to i32
  %i.aqi = and i32 %spec.select.i159.i, 7
  %i.aqj = shl nuw nsw i32 %i.aqh, %i.aqi
  store i32 %spec.select.i159.i.1, ptr %i.d, align 8, !tbaa !41
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.apm, i64 %indvars.iv181.i
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aqk, i64 1
  %i.aqm = trunc i32 %i.aqj to i8
  %i.aqn = lshr i8 %i.aqm, 7
  store i8 %i.aqn, ptr %i.aql, align 1, !tbaa !205
  %indvars.iv.next182.i.1 = add nuw nsw i64 %indvars.iv181.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.thread.i239.loopexit.unr-lcssa, label %bb.cn, !llvm.loop !206

.thread.i239.loopexit.unr-lcssa:                  ; preds = %bb.cn
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.thread.i239, label %.epil.preheader

.epil.preheader:                                  ; preds = %.thread.i239.loopexit.unr-lcssa, %.lr.ph171.i
  %indvars.iv181.i.epil.init = phi i64 [ 0, %.lr.ph171.i ], [ %indvars.iv.next182.i.1, %.thread.i239.loopexit.unr-lcssa ]
  %.epil.init = phi i32 [ %.promoted.i, %.lr.ph171.i ], [ %spec.select.i159.i.1, %.thread.i239.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod555 = trunc i32 %i.apj to i1
  call void @llvm.assume(i1 %lcmp.mod555)
  %i.aqo = lshr i32 %.epil.init, 3
  %i.aqp = zext nneg i32 %i.aqo to i64
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.ank, i64 %i.aqp
  %i.aqr = load i8, ptr %i.aqq, align 1, !tbaa !45
  %i.aqs = icmp slt i32 %.epil.init, %i.apl
  %i.aqt = zext i1 %i.aqs to i32
  %spec.select.i159.i.epil = add i32 %.epil.init, %i.aqt
  %i.aqu = zext i8 %i.aqr to i32
  %i.aqv = and i32 %.epil.init, 7
  %i.aqw = shl nuw nsw i32 %i.aqu, %i.aqv
  store i32 %spec.select.i159.i.epil, ptr %i.d, align 8, !tbaa !41
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.apm, i64 %indvars.iv181.i.epil.init
  %i.aqy = trunc i32 %i.aqw to i8
  %i.aqz = lshr i8 %i.aqy, 7
  store i8 %i.aqz, ptr %i.aqx, align 1, !tbaa !205
  br label %.thread.i239

.thread.i239:                                     ; preds = %.epil.preheader, %.thread.i239.loopexit.unr-lcssa, %bb.cm, %bb.cl, %bb.ck
  %indvars.iv.next187.i = add nuw nsw i64 %indvars.iv186.i, 1 ; 2 uses
  %exitcond190.not.i = icmp eq i64 %indvars.iv.next187.i, %wide.trip.count189.i
  br i1 %exitcond190.not.i, label %.loopexit.i234, label %bb.ck, !llvm.loop !207

.loopexit.i234:                                   ; preds = %.thread.i239, %.preheader164.i, %bb.cj
  %i.ara = getelementptr inbounds nuw i8, ptr %3, i64 94088 ; 3 uses
  store i8 0, ptr %i.ara, align 8, !tbaa !208
  %i.arb = getelementptr inbounds nuw i8, ptr %2, i64 26
  %i.arc = load i8, ptr %i.arb, align 2, !tbaa !90 ; 2 uses
  switch i8 %i.arc, label %bb.cp [
    i8 3, label %bb.co
    i8 0, label %parse_mps212.exit.thread
  ]

bb.co:                                            ; preds = %.loopexit.i234
  %i.ard = load i32, ptr %i.d, align 8, !tbaa !41 ; 4 uses
  %i.are = load ptr, ptr %4, align 8, !tbaa !44
  %i.arf = lshr i32 %i.ard, 3
  %i.arg = zext nneg i32 %i.arf to i64
  %i.arh = getelementptr inbounds nuw i8, ptr %i.are, i64 %i.arg
  %i.ari = load i8, ptr %i.arh, align 1, !tbaa !45
  %i.arj = load i32, ptr %i.f, align 8, !tbaa !43
  %i.ark = icmp slt i32 %i.ard, %i.arj
  %i.arl = zext i1 %i.ark to i32
  %spec.select.i160.i = add i32 %i.ard, %i.arl
  %i.arm = zext i8 %i.ari to i32
  %i.arn = and i32 %i.ard, 7
  %i.aro = shl nuw nsw i32 %i.arm, %i.arn
  store i32 %spec.select.i160.i, ptr %i.d, align 8, !tbaa !41
  %i.arp = trunc i32 %i.aro to i8
  %i.arq = lshr i8 %i.arp, 7                      ; 2 uses
  store i8 %i.arq, ptr %i.ara, align 8, !tbaa !208
  br label %bb.cs

bb.cp:                                            ; preds = %.loopexit.i234
  %i.arr = load i32, ptr %i.d, align 8, !tbaa !41 ; 4 uses
end_hunk_3
