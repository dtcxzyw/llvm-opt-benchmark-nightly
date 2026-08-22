Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dcadec?download=true
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@av_log

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @ff_dca_downmix_to_stereo_float(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %4, 6
  %i.b = icmp eq i32 %i.a, 6
  br i1 %i.b, label %.peel.begin, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 132) #7
  tail call void @abort() #8
  unreachable

.peel.begin:                                      ; preds = %bb.a
  %.not.i = icmp ult i32 %4, 65536                ; 2 uses
  %i.c = lshr i32 %4, 16
  %spec.select.i = select i1 %.not.i, i32 %4, i32 %i.c ; 3 uses
  %.not11.i = icmp samesign ult i32 %spec.select.i, 256 ; 2 uses
  %i.d = lshr i32 %spec.select.i, 8
  %.110.i = select i1 %.not11.i, i32 %spec.select.i, i32 %i.d
  %i.e = zext nneg i32 %.110.i to i64
  %i.f = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !48
  %i.h = zext i8 %i.g to i32
  %spec.select12.i = select i1 %.not.i, i32 0, i32 16 ; 2 uses
  %i.i = or disjoint i32 %spec.select12.i, 8
  %.1.i = select i1 %.not11.i, i32 %spec.select12.i, i32 %i.i
  %i.j = tail call range(i32 2, 33) i32 @llvm.ctpop.i32(i32 %4)
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.k ; 4 uses
  %i.m = and i32 %4, 1                            ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !58
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !60   ; 2 uses
  %i.r = zext nneg i32 %i.m to i64                ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !45
  %i.u = sitofp nsz i32 %i.t to float
  %i.v = fmul nnan nsz float %i.u, f0x38000000
  tail call void %i.o(ptr noundef %i.q, ptr noundef %i.q, float noundef %i.v, i32 noundef %3) #7
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !58
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !60   ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.r
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !45
  %i.ac = sitofp nsz i32 %i.ab to float
  %i.ad = fmul nnan nsz float %i.ac, f0x38000000
  tail call void %i.w(ptr noundef %i.y, ptr noundef %i.y, float noundef %i.ad, i32 noundef %3) #7
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.af = add nuw nsw i32 %.1.i, %i.h             ; 2 uses
  %i.ag = add nuw nsw i32 %i.af, 1                ; 3 uses
  %wide.trip.count = zext nneg i32 %i.ag to i64
  %.not47.peel = icmp eq i32 %i.m, 0
  br i1 %.not47.peel, label %bb.h, label %bb.c

bb.c:                                             ; preds = %.peel.begin
  %i.ah = load i32, ptr %2, align 4, !tbaa !45    ; 2 uses
  %.not = icmp eq i32 %i.ah, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !61
  %i.aj = load ptr, ptr %i.p, align 8, !tbaa !60
  %i.ak = load ptr, ptr %1, align 8, !tbaa !60
  %i.al = sitofp nsz i32 %i.ah to float
  %i.am = fmul nnan nsz float %i.al, f0x38000000
  tail call void %i.ai(ptr noundef %i.aj, ptr noundef %i.ak, float noundef %i.am, i32 noundef %3) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.an = load i32, ptr %i.l, align 4, !tbaa !45  ; 2 uses
  %.not75 = icmp eq i32 %i.an, 0
  br i1 %.not75, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = load ptr, ptr %i.ae, align 8, !tbaa !61
  %i.ap = load ptr, ptr %i.x, align 8, !tbaa !60
  %i.aq = load ptr, ptr %1, align 8, !tbaa !60
  %i.ar = sitofp nsz i32 %i.an to float
  %i.as = fmul nnan nsz float %i.ar, f0x38000000
  tail call void %i.ao(ptr noundef %i.ap, ptr noundef %i.aq, float noundef %i.as, i32 noundef %3) #7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.peel.begin
  %.144.peel = phi ptr [ %i.at, %bb.g ], [ %2, %.peel.begin ] ; 2 uses
  %.1.peel = phi ptr [ %i.au, %bb.g ], [ %i.l, %.peel.begin ] ; 2 uses
  %exitcond.peel.not = icmp eq i32 %i.af, 0
  br i1 %exitcond.peel.not, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.pre = load i32, ptr %.1.peel, align 4, !tbaa !45 ; 2 uses
  %.not76 = icmp eq i32 %.pre, 0
  br i1 %.not76, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = load ptr, ptr %i.ae, align 8, !tbaa !61
  %i.aw = load ptr, ptr %i.x, align 8, !tbaa !60
  %i.ax = load ptr, ptr %i.p, align 8, !tbaa !60
  %i.ay = sitofp nsz i32 %.pre to float
  %i.az = fmul nnan nsz float %i.ay, f0x38000000
  tail call void %i.av(ptr noundef %i.aw, ptr noundef %i.ax, float noundef %i.az, i32 noundef %3) #7
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %exitcond.peel60.not = icmp eq i32 %i.ag, 2
  br i1 %exitcond.peel60.not, label %.loopexit, label %.peel.next53

.peel.next53:                                     ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %.144.peel, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !45 ; 2 uses
  %.not77 = icmp eq i32 %i.bb, 0
  br i1 %.not77, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.peel.next53
  %i.bc = load ptr, ptr %i.ae, align 8, !tbaa !61
  %i.bd = load ptr, ptr %i.p, align 8, !tbaa !60
  %i.be = load ptr, ptr %i.x, align 8, !tbaa !60
  %i.bf = sitofp nsz i32 %i.bb to float
  %i.bg = fmul nnan nsz float %i.bf, f0x38000000
  tail call void %i.bc(ptr noundef %i.bd, ptr noundef %i.be, float noundef %i.bg, i32 noundef %3) #7
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.peel.next53
  %exitcond.peel68.not = icmp eq i32 %i.ag, 3
  br i1 %exitcond.peel68.not, label %.loopexit, label %.peel.next61.preheader

.peel.next61.preheader:                           ; preds = %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %.1.peel, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.144.peel, i64 8
  br label %.peel.next61

.peel.next61:                                     ; preds = %.peel.next61.preheader, %bb.s
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.s ], [ 3, %.peel.next61.preheader ] ; 4 uses
  %.051 = phi ptr [ %.1, %bb.s ], [ %i.bh, %.peel.next61.preheader ] ; 3 uses
  %.04348 = phi ptr [ %.144, %bb.s ], [ %i.bi, %.peel.next61.preheader ] ; 3 uses
  %i.bj = trunc nuw nsw i64 %indvars.iv to i32
  %i.bk = shl nuw i32 1, %i.bj
  %i.bl = and i32 %i.bk, %4
  %.not47 = icmp eq i32 %i.bl, 0
  br i1 %.not47, label %bb.s, label %bb.n

bb.n:                                             ; preds = %.peel.next61
  %i.bm = load i32, ptr %.04348, align 4, !tbaa !45 ; 2 uses
  %.not78 = icmp eq i32 %i.bm, 0
  br i1 %.not78, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bn = load ptr, ptr %i.ae, align 8, !tbaa !61
  %i.bo = load ptr, ptr %i.p, align 8, !tbaa !60
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !60
  %i.br = sitofp nsz i32 %i.bm to float
  %i.bs = fmul nnan nsz float %i.br, f0x38000000
  tail call void %i.bn(ptr noundef %i.bo, ptr noundef %i.bq, float noundef %i.bs, i32 noundef %3) #7
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bt = load i32, ptr %.051, align 4, !tbaa !45 ; 2 uses
  %.not79 = icmp eq i32 %i.bt, 0
  br i1 %.not79, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = load ptr, ptr %i.ae, align 8, !tbaa !61
  %i.bv = load ptr, ptr %i.x, align 8, !tbaa !60
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !60
  %i.by = sitofp nsz i32 %i.bt to float
  %i.bz = fmul nnan nsz float %i.by, f0x38000000
  tail call void %i.bu(ptr noundef %i.bv, ptr noundef %i.bx, float noundef %i.bz, i32 noundef %3) #7
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ca = getelementptr inbounds nuw i8, ptr %.04348, i64 4
  %i.cb = getelementptr inbounds nuw i8, ptr %.051, i64 4
  br label %bb.s

bb.s:                                             ; preds = %.peel.next61, %bb.r
  %.144 = phi ptr [ %i.ca, %bb.r ], [ %.04348, %.peel.next61 ]
  %.1 = phi ptr [ %i.cb, %bb.r ], [ %.051, %.peel.next61 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.peel.next61, !llvm.loop !62

.loopexit:                                        ; preds = %bb.s, %bb.m, %bb.k, %bb.h
  ret void
}

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -12, 1) i32 @dcadec_init(ptr noundef %0) #4 {
bb.a:
  %1 = alloca %struct.AVChannelLayout, align 8    ; 5 uses
  %2 = alloca %struct.AVChannelLayout, align 8    ; 5 uses
  %3 = alloca %struct.AVChannelLayout, align 8    ; 5 uses
  %4 = alloca %struct.AVChannelLayout, align 8    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %0, ptr %i.c, align 8, !tbaa !63
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %0, ptr %i.d, align 16, !tbaa !64
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 46288
  store ptr %0, ptr %i.e, align 16, !tbaa !65
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 46496
  store ptr %0, ptr %i.f, align 16, !tbaa !66
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 55504 ; 2 uses
  store ptr %0, ptr %i.g, align 16, !tbaa !67
  %i.h = tail call i32 @ff_dca_core_init(ptr noundef nonnull %i.d) #9
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call i32 @ff_dca_lbr_init(ptr noundef nonnull %i.g) #9
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 77760 ; 4 uses
  tail call void @ff_dcadsp_init(ptr noundef nonnull %i.l) #9
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 45760
  store ptr %i.l, ptr %i.m, align 16, !tbaa !68
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 55216
  store ptr %i.l, ptr %i.n, align 16, !tbaa !69
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 77744
  store ptr %i.l, ptr %i.o, align 16, !tbaa !70
  %i.p = tail call ptr @av_crc_get_table(i32 noundef 2) #7
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 77920
  store ptr %i.p, ptr %i.q, align 16, !tbaa !71
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 77960 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 77964
  %i.t = load i32, ptr %i.s, align 4, !tbaa !72
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %1, align 8, !tbaa !73
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 2, ptr %5, align 4, !tbaa !74
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 3, ptr %i.u, align 8, !tbaa !48
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr null, ptr %i.v, align 8, !tbaa !75
  %i.w = call i32 @av_channel_layout_compare(ptr noundef nonnull %i.r, ptr noundef nonnull %1) #7
  %.not44 = icmp eq i32 %i.w, 0
  br i1 %.not44, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr %2, align 8, !tbaa !73
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 2, ptr %6, align 4, !tbaa !74
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 1610612736, ptr %i.x, align 8, !tbaa !48
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr null, ptr %i.y, align 8, !tbaa !75
  %i.z = call i32 @av_channel_layout_compare(ptr noundef nonnull %i.r, ptr noundef nonnull %2) #7
  %.not45 = icmp eq i32 %i.z, 0
  br i1 %.not45, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 77944
  store i32 6, ptr %i.aa, align 8, !tbaa !76
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  call void @av_channel_layout_uninit(ptr noundef nonnull %i.ab) #7
  store i32 1, ptr %i.ab, align 8, !tbaa !45
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 356
  store i32 2, ptr %.sroa.26.0..sroa_idx, align 4, !tbaa !45
  %.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i64 3, ptr %.sroa.37.0..sroa_idx, align 8, !tbaa !48
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr null, ptr %.sroa.48.0..sroa_idx, align 8, !tbaa !77
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  store i32 1, ptr %3, align 8, !tbaa !73
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 5, ptr %7, align 4, !tbaa !74
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1543, ptr %i.ac, align 8, !tbaa !48
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.ad, align 8, !tbaa !75
  %i.ae = call i32 @av_channel_layout_compare(ptr noundef nonnull %i.r, ptr noundef nonnull %3) #7
  %.not46 = icmp eq i32 %i.ae, 0
  br i1 %.not46, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 77944
  store i32 31, ptr %i.af, align 8, !tbaa !76
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  call void @av_channel_layout_uninit(ptr noundef nonnull %i.ag) #7
  store i32 1, ptr %i.ag, align 8, !tbaa !45
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 356
  store i32 5, ptr %.sroa.22.0..sroa_idx, align 4, !tbaa !45
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i64 1543, ptr %.sroa.33.0..sroa_idx, align 8, !tbaa !48
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr null, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !77
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  store i32 1, ptr %4, align 8, !tbaa !73
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 6, ptr %8, align 4, !tbaa !74
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 1551, ptr %i.ah, align 8, !tbaa !48
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr null, ptr %i.ai, align 8, !tbaa !75
  %i.aj = call i32 @av_channel_layout_compare(ptr noundef nonnull %i.r, ptr noundef nonnull %4) #7
  %.not47 = icmp eq i32 %i.aj, 0
  br i1 %.not47, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 77944
  store i32 63, ptr %i.ak, align 8, !tbaa !76
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  call void @av_channel_layout_uninit(ptr noundef nonnull %i.al) #7
  store i32 1, ptr %i.al, align 8, !tbaa !45
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 356
  store i32 6, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !45
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i64 1551, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !48
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr null, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !77
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.18) #7
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.j, %bb.k, %bb.h, %bb.c
  %i.am = call i32 @pthread_once(ptr noundef nonnull @dcadec_init.init_static_once, ptr noundef nonnull @dcadec_init_static) #7 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.b, %bb.a, %bb.l
  %.0 = phi i32 [ 0, %bb.l ], [ -12, %bb.a ], [ -12, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @dcadec_decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 22 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !78   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !80   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 77940 ; 20 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !81   ; 2 uses
  %i.i = add i32 %i.f, -1064961
  %or.cond = icmp ult i32 %i.i, -1064945
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.19) #7
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.j = load i32, ptr %i.d, align 1, !tbaa !48
  %i.k = tail call i32 @llvm.bswap.i32(i32 %i.j)
  switch i32 %i.k, label %bb.d [
    i32 2147385345, label %bb.g
    i32 1683496997, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 77928 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 77936 ; 2 uses
  %i.n = zext nneg i32 %i.f to i64
  tail call void @av_fast_padded_malloc(ptr noundef nonnull %i.l, ptr noundef nonnull %i.m, i64 noundef %i.n) #7
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !82
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.p = add nsw i32 %i.f, -15
  %i.q = zext nneg i32 %i.p to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !82
  %i.t = load i32, ptr %i.m, align 16, !tbaa !83
  %i.u = trunc i64 %indvars.iv to i32
  %i.v = sub i32 %i.f, %i.u
  %i.w = tail call i32 @avpriv_dca_convert_bitstream(ptr noundef nonnull %i.r, i32 noundef %i.v, ptr noundef %i.s, i32 noundef %i.t) #7 ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.x = icmp samesign ult i64 %indvars.iv.next, %i.q
  %i.y = icmp slt i32 %i.w, 0                     ; 2 uses
  %i.z = select i1 %i.x, i1 %i.y, i1 false
  br i1 %i.z, label %.lr.ph, label %._crit_edge, !llvm.loop !84

._crit_edge:                                      ; preds = %.lr.ph
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.20) #7
  br label %.critedge

bb.f:                                             ; preds = %._crit_edge
  %i.aa = load ptr, ptr %i.l, align 8, !tbaa !82
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.f
  %.0132 = phi ptr [ %i.aa, %bb.f ], [ %i.d, %bb.c ], [ %i.d, %bb.c ] ; 4 uses
  %.0129 = phi i32 [ %i.w, %bb.f ], [ %i.f, %bb.c ], [ %i.f, %bb.c ] ; 4 uses
  store i32 0, ptr %i.g, align 4, !tbaa !81
  %i.ab = load i32, ptr %.0132, align 1, !tbaa !48
  %i.ac = icmp eq i32 %i.ab, 25230975
  br i1 %i.ac, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ae = tail call i32 @ff_dca_core_parse(ptr noundef nonnull %i.ad, ptr noundef nonnull %.0132, i32 noundef %.0129) #7 ; 2 uses
  %i.af = icmp sgt i32 %i.ae, -1
  br i1 %i.af, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.ag = load i32, ptr %i.g, align 4, !tbaa !81
  %i.ah = or i32 %i.ag, 1                         ; 2 uses
  store i32 %i.ah, ptr %i.g, align 4, !tbaa !81
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.aj = load i32, ptr %i.ai, align 16, !tbaa !85
  %i.ak = add nsw i32 %i.aj, 3
  %i.al = and i32 %i.ak, -4                       ; 2 uses
  %i.am = add nsw i32 %.0129, -4
  %i.an = icmp sgt i32 %i.am, %i.al
  %narrow = select i1 %i.an, i32 %i.al, i32 0     ; 2 uses
  %.1133.idx = sext i32 %narrow to i64
  %.1133 = getelementptr inbounds i8, ptr %.0132, i64 %.1133.idx
  %.1130 = sub nsw i32 %.0129, %narrow
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %i.ao = phi i32 [ %i.ah, %bb.i ], [ 0, %bb.g ]
  %.3135 = phi ptr [ %.1133, %bb.i ], [ %.0132, %bb.g ] ; 5 uses
  %.3 = phi i32 [ %.1130, %bb.i ], [ %.0129, %bb.g ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 77948 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !86
  %.not151 = icmp eq i32 %i.aq, 0
  br i1 %.not151, label %bb.k, label %bb.ab

bb.k:                                             ; preds = %bb.j
  %i.ar = load i32, ptr %.3135, align 1, !tbaa !48
  %i.as = icmp eq i32 %i.ar, 622876772
  br i1 %i.as, label %bb.l, label %.critedge172

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 46288
  %i.au = tail call i32 @ff_dca_exss_parse(ptr noundef nonnull %i.at, ptr noundef nonnull %.3135, i32 noundef %.3) #7 ; 2 uses
  %i.av = icmp slt i32 %i.au, 0
  br i1 %i.av, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !87
  %i.ay = and i32 %i.ax, 8
  %.not152 = icmp eq i32 %i.ay, 0
  br i1 %.not152, label %.critedge172, label %.critedge

bb.n:                                             ; preds = %bb.l
  %i.az = load i32, ptr %i.g, align 4, !tbaa !81
  %i.ba = or i32 %i.az, 2
  store i32 %i.ba, ptr %i.g, align 4, !tbaa !81
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 46368 ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 46420 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !88
  %i.be = and i32 %i.bd, 512
  %.not154 = icmp eq i32 %i.be, 0
  br i1 %.not154, label %bb.v, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 46496
  %i.bg = tail call i32 @ff_dca_xll_parse(ptr noundef nonnull %i.bf, ptr noundef nonnull %.3135, ptr noundef nonnull %i.bb) #7 ; 4 uses
  %i.bh = icmp slt i32 %i.bg, 0
  br i1 %i.bh, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  switch i32 %i.bg, label %bb.t [
    i32 -11, label %bb.q
    i32 -12, label %.critedge
  ]

bb.q:                                             ; preds = %bb.p
  %i.bi = and i32 %i.h, 4
  %.not156 = icmp eq i32 %i.bi, 0
  br i1 %.not156, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bj = load i32, ptr %i.g, align 4, !tbaa !81  ; 2 uses
  %i.bk = and i32 %i.bj, 1
  %.not157 = icmp eq i32 %i.bk, 0
  br i1 %.not157, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bl = or i32 %i.bj, 20
  br label %.sink.split

bb.t:                                             ; preds = %bb.p
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !87
  %i.bo = and i32 %i.bn, 8
  %.not155 = icmp eq i32 %i.bo, 0
  br i1 %.not155, label %bb.v, label %.critedge

bb.u:                                             ; preds = %bb.o
  %i.bp = load i32, ptr %i.g, align 4, !tbaa !81
  %i.bq = or i32 %i.bp, 4
  br label %.sink.split

.sink.split:                                      ; preds = %bb.u, %bb.s
  %.sink = phi i32 [ %i.bl, %bb.s ], [ %i.bq, %bb.u ]
  store i32 %.sink, ptr %i.g, align 4, !tbaa !81
  br label %bb.v

bb.v:                                             ; preds = %.sink.split, %bb.n, %bb.r, %bb.q, %bb.t
  %i.br = load i32, ptr %i.bc, align 4, !tbaa !88
  %i.bs = and i32 %i.br, 256
  %.not158 = icmp eq i32 %i.bs, 0
  br i1 %.not158, label %.critedge172, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 55504
  %i.bu = tail call i32 @ff_dca_lbr_parse(ptr noundef nonnull %i.bt, ptr noundef nonnull %.3135, ptr noundef nonnull %i.bb) #7 ; 3 uses
  %i.bv = icmp slt i32 %i.bu, 0
  br i1 %i.bv, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.bw = icmp eq i32 %i.bu, -12
  br i1 %i.bw, label %.critedge, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !87
  %i.bz = and i32 %i.by, 8
  %.not159 = icmp eq i32 %i.bz, 0
  br i1 %.not159, label %.critedge172, label %.critedge

bb.z:                                             ; preds = %bb.w
  %i.ca = load i32, ptr %i.g, align 4, !tbaa !81
  %i.cb = or i32 %i.ca, 8
  store i32 %i.cb, ptr %i.g, align 4, !tbaa !81
  br label %.critedge172

.critedge172:                                     ; preds = %bb.k, %bb.m, %bb.z, %bb.y, %bb.v
  %.0125176 = phi ptr [ %i.bb, %bb.y ], [ %i.bb, %bb.v ], [ %i.bb, %bb.z ], [ null, %bb.m ], [ null, %bb.k ]
  %i.cc = load i32, ptr %i.g, align 4, !tbaa !81  ; 2 uses
  %i.cd = and i32 %i.cc, 1
  %.not160 = icmp eq i32 %i.cd, 0
  br i1 %.not160, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.critedge172
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cf = tail call i32 @ff_dca_core_parse_exss(ptr noundef nonnull %i.ce, ptr noundef nonnull %.3135, ptr noundef %.0125176) #7 ; 2 uses
  %i.cg = icmp slt i32 %i.cf, 0
  br i1 %i.cg, label %.critedge, label %._crit_edge188

._crit_edge188:                                   ; preds = %bb.aa
  %.pre = load i32, ptr %i.g, align 4, !tbaa !81
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge188, %.critedge172, %bb.j
  %i.ch = phi i32 [ %.pre, %._crit_edge188 ], [ %i.cc, %.critedge172 ], [ %i.ao, %bb.j ] ; 3 uses
  %i.ci = and i32 %i.ch, 8
  %.not161 = icmp eq i32 %i.ci, 0
  br i1 %.not161, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 55504
  %i.ck = tail call i32 @ff_dca_lbr_filter_frame(ptr noundef nonnull %i.cj, ptr noundef %1) #7 ; 2 uses
  %i.cl = icmp slt i32 %i.ck, 0
  br i1 %i.cl, label %.critedge, label %bb.aw

bb.ad:                                            ; preds = %bb.ab
  %i.cm = and i32 %i.ch, 4
  %.not162 = icmp eq i32 %i.cm, 0
  %i.cn = and i32 %i.ch, 1
  %.not163 = icmp eq i32 %i.cn, 0                 ; 2 uses
  br i1 %.not162, label %bb.aq, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  br i1 %.not163, label %bb.am, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 46592
  %i.cp = load i32, ptr %i.co, align 16, !tbaa !90
  %i.cq = icmp eq i32 %i.cp, 96000
  br i1 %i.cq, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !92
  %i.ct = icmp eq i32 %i.cs, 48000
  %spec.select = select i1 %i.ct, i32 1, i32 -1
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.0 = phi i32 [ -1, %bb.af ], [ %spec.select, %bb.ag ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cv = tail call i32 @ff_dca_core_filter_fixed(ptr noundef nonnull %i.cu, i32 noundef %.0) #7 ; 2 uses
  %i.cw = icmp sgt i32 %i.cv, -1
  br i1 %i.cw, label %bb.ai, label %.critedge

bb.ai:                                            ; preds = %bb.ah
  %i.cx = and i32 %i.h, 32
  %.not167 = icmp eq i32 %i.cx, 0
  br i1 %.not167, label %bb.aj, label %.thread181

bb.aj:                                            ; preds = %bb.ai
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 55188
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !93
  %i.da = icmp sgt i32 %i.cz, 0
  br i1 %i.da, label %bb.ak, label %.thread181

bb.ak:                                            ; preds = %bb.aj
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 46532
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !94
  %i.dd = icmp sgt i32 %i.dc, 1
  br i1 %i.dd, label %bb.al, label %.thread181

bb.al:                                            ; preds = %bb.ak
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 40, ptr noundef nonnull @.str.21) #7
  %i.de = load i32, ptr %i.g, align 4, !tbaa !81
  %i.df = or i32 %i.de, 16
  store i32 %i.df, ptr %i.g, align 4, !tbaa !81
  br label %.thread181

.thread181:                                       ; preds = %bb.ai, %bb.aj, %bb.ak, %bb.al
  %i.dg = load i32, ptr %i.g, align 4, !tbaa !81
  %i.dh = or i32 %i.dg, 32
  store i32 %i.dh, ptr %i.g, align 4, !tbaa !81
  br label %bb.am

bb.am:                                            ; preds = %.thread181, %bb.ae
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 46496
  %i.dj = tail call i32 @ff_dca_xll_filter_frame(ptr noundef nonnull %i.di, ptr noundef %1) #7 ; 3 uses
  %i.dk = icmp slt i32 %i.dj, 0
  br i1 %i.dk, label %bb.an, label %bb.aw

bb.an:                                            ; preds = %bb.am
  %i.dl = load i32, ptr %i.g, align 4, !tbaa !81
  %.not168 = trunc i32 %i.dl to i1
  %.not169 = icmp eq i32 %i.dj, -1094995529
  %or.cond173 = and i1 %.not169, %.not168
  br i1 %or.cond173, label %bb.ao, label %.critedge

bb.ao:                                            ; preds = %bb.an
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !87
  %i.do = and i32 %i.dn, 8
  %.not170 = icmp eq i32 %i.do, 0
  br i1 %.not170, label %bb.ap, label %.critedge

bb.ap:                                            ; preds = %bb.ao
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.dq = tail call i32 @ff_dca_core_filter_frame(ptr noundef nonnull %i.dp, ptr noundef %1) #7 ; 2 uses
  %i.dr = icmp slt i32 %i.dq, 0
  br i1 %i.dr, label %.critedge, label %bb.aw

bb.aq:                                            ; preds = %bb.ad
  br i1 %.not163, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.dt = tail call i32 @ff_dca_core_filter_frame(ptr noundef nonnull %i.ds, ptr noundef %1) #7 ; 2 uses
  %i.du = icmp slt i32 %i.dt, 0
  br i1 %i.du, label %.critedge, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 46284
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !95
  %i.dx = and i32 %i.dw, 2
  %.not165 = icmp eq i32 %i.dx, 0
  br i1 %.not165, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dy = load i32, ptr %i.g, align 4, !tbaa !81
  %i.dz = or i32 %i.dy, 32
  store i32 %i.dz, ptr %i.g, align 4, !tbaa !81
  br label %bb.aw

bb.au:                                            ; preds = %bb.aq
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.22) #7
  %i.ea = load i32, ptr %i.ap, align 4, !tbaa !86
  %.not164 = icmp eq i32 %i.ea, 0
  br i1 %.not164, label %.critedge, label %bb.av

bb.av:                                            ; preds = %bb.au
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.23) #7
  br label %.critedge

bb.aw:                                            ; preds = %bb.ap, %bb.am, %bb.as, %bb.at, %bb.ac
  store i32 1, ptr %2, align 4, !tbaa !45
  %i.eb = load i32, ptr %i.e, align 8, !tbaa !80
  br label %.critedge

.critedge:                                        ; preds = %bb.aa, %bb.y, %bb.p, %bb.x, %bb.t, %bb.m, %bb.ah, %bb.h, %bb.au, %bb.av, %bb.ar, %bb.ap, %bb.ao, %bb.an, %bb.ac, %bb.d, %bb.aw, %bb.e, %bb.b
  %.5 = phi i32 [ -1094995529, %bb.b ], [ %i.w, %bb.e ], [ -1094995529, %bb.au ], [ %i.eb, %bb.aw ], [ %i.dj, %bb.an ], [ %i.ae, %bb.h ], [ %i.ck, %bb.ac ], [ -1094995529, %bb.ao ], [ %i.dq, %bb.ap ], [ %i.dt, %bb.ar ], [ %i.cv, %bb.ah ], [ -1094995529, %bb.av ], [ -12, %bb.d ], [ %i.cf, %bb.aa ], [ %i.bu, %bb.y ], [ %i.bg, %bb.p ], [ -12, %bb.x ], [ %i.bg, %bb.t ], [ %i.au, %bb.m ]
  ret i32 %.5
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @dcadec_close(ptr nofree noundef readonly captures(none) %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @ff_dca_core_close(ptr noundef nonnull %i.c) #9
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 46496
  tail call void @ff_dca_xll_close(ptr noundef nonnull %i.d) #9
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 55504
  tail call void @ff_dca_lbr_close(ptr noundef nonnull %i.e) #9
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 77928
  tail call void @av_freep(ptr noundef nonnull %i.f) #7
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 77936
  store i32 0, ptr %i.g, align 16, !tbaa !83
  ret i32 0
}

; Function Attrs: cold nounwind optsize uwtable
define internal void @dcadec_flush(ptr nofree noundef readonly captures(none) %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @ff_dca_core_flush(ptr noundef nonnull %i.c) #9
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 46496
  tail call void @ff_dca_xll_flush(ptr noundef nonnull %i.d) #9
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 55504
  tail call void @ff_dca_lbr_flush(ptr noundef nonnull %i.e) #9
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 77940 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !81
  %i.h = and i32 %i.g, 15
  store i32 %i.h, ptr %i.f, align 4, !tbaa !81
  ret void
}

declare ptr @av_default_item_name(ptr noundef) #2

; Function Attrs: cold
declare i32 @ff_dca_core_init(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold
declare i32 @ff_dca_lbr_init(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold
declare void @ff_dcadsp_init(ptr noundef) local_unnamed_addr #5

declare ptr @av_crc_get_table(i32 noundef) local_unnamed_addr #2

declare i32 @av_channel_layout_compare(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind optsize uwtable
define internal void @dcadec_init_static() #4 {
bb.a:
  tail call void @ff_dca_lbr_init_tables() #9
  tail call void @ff_dca_init_vlcs() #9
  ret void
}

; Function Attrs: cold
declare void @ff_dca_lbr_init_tables() local_unnamed_addr #5

; Function Attrs: cold
declare void @ff_dca_init_vlcs() local_unnamed_addr #5

declare void @av_fast_padded_malloc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @avpriv_dca_convert_bitstream(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_dca_core_parse(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_dca_exss_parse(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_dca_xll_parse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_dca_lbr_parse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_dca_core_parse_exss(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_dca_lbr_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_dca_core_filter_fixed(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_dca_xll_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_dca_core_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold
declare void @ff_dca_core_close(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold
declare void @ff_dca_xll_close(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold
declare void @ff_dca_lbr_close(ptr noundef) local_unnamed_addr #5

declare void @av_freep(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold
declare void @ff_dca_core_flush(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold
declare void @ff_dca_xll_flush(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold
declare void @ff_dca_lbr_flush(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !12, i64 32}
!10 = !{!"AVCodecContext", !11, i64 0, !6, i64 8, !6, i64 12, !13, i64 16, !6, i64 24, !6, i64 28, !12, i64 32, !14, i64 40, !12, i64 48, !15, i64 56, !6, i64 64, !6, i64 68, !16, i64 72, !6, i64 80, !17, i64 84, !17, i64 92, !17, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !17, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !12, i64 184, !12, i64 192, !6, i64 200, !18, i64 204, !18, i64 208, !18, i64 212, !18, i64 216, !18, i64 220, !18, i64 224, !18, i64 228, !18, i64 232, !18, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !19, i64 288, !19, i64 296, !19, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !20, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !12, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !18, i64 428, !18, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !21, i64 456, !15, i64 464, !15, i64 472, !18, i64 480, !18, i64 484, !6, i64 488, !6, i64 492, !16, i64 496, !16, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !22, i64 536, !12, i64 544, !23, i64 552, !23, i64 560, !6, i64 568, !6, i64 572, !7, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !12, i64 672, !12, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !24, i64 728, !16, i64 736, !6, i64 744, !6, i64 748, !16, i64 752, !16, i64 760, !16, i64 768, !25, i64 776, !6, i64 784, !6, i64 788, !15, i64 792, !6, i64 800, !6, i64 804, !15, i64 808, !12, i64 816, !15, i64 824, !26, i64 832, !6, i64 840, !27, i64 848, !6, i64 856, !6, i64 860}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!14 = !{!"p1 _ZTS15AVCodecInternal", !12, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 omnipotent char", !12, i64 0}
!17 = !{!"AVRational", !6, i64 0, !6, i64 4}
!18 = !{!"float", !7, i64 0}
!19 = !{!"p1 short", !12, i64 0}
!20 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!21 = !{!"p1 _ZTS10RcOverride", !12, i64 0}
!22 = !{!"p1 _ZTS9AVHWAccel", !12, i64 0}
!23 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!24 = !{!"p1 _ZTS17AVCodecDescriptor", !12, i64 0}
!25 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!26 = !{!"p1 int", !12, i64 0}
!27 = !{!"p2 _ZTS15AVFrameSideData", !28, i64 0}
!28 = !{!"any p2 pointer", !12, i64 0}
!29 = !{!30, !6, i64 77952}
!30 = !{!"DCAContext", !11, i64 0, !31, i64 8, !32, i64 16, !39, i64 46288, !40, i64 46496, !41, i64 55504, !44, i64 77760, !26, i64 77920, !16, i64 77928, !6, i64 77936, !6, i64 77940, !6, i64 77944, !6, i64 77948, !6, i64 77952, !20, i64 77960}
!31 = !{!"p1 _ZTS14AVCodecContext", !12, i64 0}
!32 = !{!"DCACoreDecoder", !31, i64 0, !33, i64 8, !33, i64 32, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !6, i64 128, !6, i64 132, !6, i64 136, !6, i64 140, !7, i64 144, !7, i64 151, !7, i64 158, !7, i64 165, !7, i64 172, !7, i64 179, !7, i64 186, !7, i64 256, !7, i64 536, !7, i64 552, !7, i64 1000, !7, i64 1896, !7, i64 2344, !7, i64 5928, !7, i64 7720, !7, i64 7728, !6, i64 9520, !6, i64 9524, !7, i64 9528, !6, i64 9624, !6, i64 9628, !6, i64 9632, !6, i64 9636, !6, i64 9640, !6, i64 9644, !6, i64 9648, !6, i64 9652, !7, i64 9656, !7, i64 9664, !6, i64 9712, !6, i64 9716, !6, i64 9720, !6, i64 9724, !6, i64 9728, !6, i64 9732, !6, i64 9736, !6, i64 9740, !6, i64 9744, !26, i64 9752, !7, i64 9760, !6, i64 13344, !26, i64 13352, !7, i64 13360, !26, i64 15152, !7, i64 15168, !34, i64 45744, !35, i64 45752, !7, i64 45768, !7, i64 45784, !36, i64 45800, !37, i64 45832, !38, i64 45840, !6, i64 45848, !12, i64 45856, !7, i64 45864, !6, i64 46120, !18, i64 46124, !7, i64 46128, !6, i64 46256, !6, i64 46260, !6, i64 46264, !6, i64 46268}
!33 = !{!"GetBitContext", !16, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!34 = !{!"p1 _ZTS13DCADSPContext", !12, i64 0}
!35 = !{!"DCADCTContext", !7, i64 0}
!36 = !{!"SynthFilterContext", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!37 = !{!"p1 _ZTS17AVFloatDSPContext", !12, i64 0}
!38 = !{!"p1 _ZTS17AVFixedDSPContext", !12, i64 0}
!39 = !{!"DCAExssParser", !31, i64 0, !33, i64 8, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !7, i64 64, !7, i64 80}
!40 = !{!"DCAXllDecoder", !31, i64 0, !33, i64 8, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !7, i64 80, !26, i64 8672, !6, i64 8680, !6, i64 8684, !6, i64 8688, !6, i64 8692, !6, i64 8696, !6, i64 8700, !16, i64 8704, !6, i64 8712, !6, i64 8716, !34, i64 8720, !6, i64 8728, !6, i64 8732, !6, i64 8736, !7, i64 8744}
!41 = !{!"DCALbrDecoder", !31, i64 0, !33, i64 8, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !7, i64 108, !7, i64 204, !7, i64 236, !7, i64 332, !7, i64 428, !7, i64 452, !7, i64 1028, !7, i64 2180, !7, i64 2348, !7, i64 3692, !7, i64 3716, !7, i64 5252, !7, i64 5492, !7, i64 5496, !7, i64 7800, !7, i64 7928, !42, i64 9464, !6, i64 9472, !7, i64 9488, !7, i64 12560, !7, i64 13072, !7, i64 13328, !18, i64 13368, !7, i64 13372, !7, i64 13378, !7, i64 14018, !6, i64 22212, !43, i64 22216, !12, i64 22224, !37, i64 22232, !34, i64 22240}
!42 = !{!"p1 float", !12, i64 0}
!43 = !{!"p1 _ZTS11AVTXContext", !12, i64 0}
!44 = !{!"DCADSPContext", !12, i64 0, !12, i64 8, !7, i64 16, !12, i64 32, !7, i64 40, !12, i64 56, !12, i64 64, !7, i64 72, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144, !12, i64 152}
!45 = !{!6, !6, i64 0}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!7, !7, i64 0}
!49 = !{!50, !6, i64 0}
!50 = !{!"AVChannelCustom", !6, i64 0, !7, i64 4, !12, i64 24}
!51 = distinct !{!51, !47}
!52 = distinct !{!52, !47}
!53 = !{!44, !12, i64 120}
!54 = !{!26, !26, i64 0}
!55 = !{!44, !12, i64 112}
!56 = distinct !{!56, !47, !57}
!57 = !{!"llvm.loop.peeled.count", i32 3}
!58 = !{!59, !12, i64 24}
!59 = !{!"AVFloatDSPContext", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88}
!60 = !{!42, !42, i64 0}
!61 = !{!59, !12, i64 8}
!62 = distinct !{!62, !47, !57}
!63 = !{!30, !31, i64 8}
!64 = !{!30, !31, i64 16}
!65 = !{!30, !31, i64 46288}
!66 = !{!30, !31, i64 46496}
!67 = !{!30, !31, i64 55504}
!68 = !{!30, !34, i64 45760}
!69 = !{!30, !34, i64 55216}
!70 = !{!30, !34, i64 77744}
!71 = !{!30, !26, i64 77920}
!72 = !{!30, !6, i64 77964}
!73 = !{!20, !6, i64 0}
!74 = !{!20, !6, i64 4}
!75 = !{!20, !12, i64 16}
!76 = !{!30, !6, i64 77944}
!77 = !{!12, !12, i64 0}
!78 = !{!79, !16, i64 24}
!79 = !{!"AVPacket", !23, i64 0, !15, i64 8, !15, i64 16, !16, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !25, i64 48, !6, i64 56, !15, i64 64, !15, i64 72, !12, i64 80, !23, i64 88, !17, i64 96}
!80 = !{!79, !6, i64 32}
!81 = !{!30, !6, i64 77940}
!82 = !{!30, !16, i64 77928}
!83 = !{!30, !6, i64 77936}
!84 = distinct !{!84, !47}
!85 = !{!30, !6, i64 80}
!86 = !{!30, !6, i64 77948}
!87 = !{!10, !6, i64 528}
!88 = !{!89, !6, i64 52}
!89 = !{!"DCAExssAsset", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116}
!90 = !{!91, !6, i64 16}
!91 = !{!"DCAXllChSet", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !7, i64 44, !7, i64 556, !7, i64 620, !6, i64 684, !7, i64 688, !6, i64 720, !6, i64 724, !7, i64 728, !6, i64 2392, !7, i64 2396, !7, i64 2428, !7, i64 2460, !7, i64 2492, !7, i64 2524, !7, i64 2560, !7, i64 2816, !7, i64 2832}
!92 = !{!30, !6, i64 88}
!93 = !{!30, !6, i64 55188}
!94 = !{!30, !6, i64 46532}
!95 = !{!30, !6, i64 46284}
end_hunk_0
