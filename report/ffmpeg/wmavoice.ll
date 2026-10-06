Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/wmavoice?download=true
inline.NumInlined: 94
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 34
begin_hunk_0_@pthread_once
; Function Attrs: cold nounwind optsize uwtable
define internal void @wmavoice_init_static_data() #0 {
bb.a:
  tail call void @ff_vlc_init_table_from_lengths(ptr noundef nonnull @frame_type_vlc, i32 noundef 132, i32 noundef 6, i32 noundef 22, ptr noundef nonnull @wmavoice_init_static_data.bits, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  ret void
}

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare i32 @av_tx_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @ff_sine_window_init(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -1, 1) i32 @decode_vbmtree(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 25)) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i32], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %1, i8 -1, i64 25, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %.011 = phi i32 [ 0, %bb.a ], [ %i.aa, %bb.c ]  ; 2 uses
  %i.d = load i32, ptr %i.b, align 8, !tbaa !52   ; 3 uses
  %i.e = load i32, ptr %i.c, align 8, !tbaa !51
  %i.f = load ptr, ptr %0, align 8, !tbaa !49
  %i.g = lshr i32 %i.d, 3
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.h
  %i.j = load i32, ptr %i.i, align 1, !tbaa !30
  %i.k = tail call i32 @llvm.bswap.i32(i32 %i.j)
  %i.l = and i32 %i.d, 7
  %i.m = shl i32 %i.k, %i.l
  %i.n = lshr i32 %i.m, 29                        ; 2 uses
  %i.o = add i32 %i.d, 3
  %i.p = tail call i32 @llvm.umin.i32(i32 %i.e, i32 %i.o)
  store i32 %i.p, ptr %i.b, align 8, !tbaa !52
  %i.q = zext nneg i32 %i.n to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !56   ; 3 uses
  %i.t = icmp sgt i32 %i.s, 3
  br i1 %i.t, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = trunc nuw nsw i32 %.011 to i8
  %i.v = mul nuw nsw i32 %i.n, 3
  %i.w = add nsw i32 %i.s, 1
  store i32 %i.w, ptr %i.r, align 4, !tbaa !56
  %i.x = add nsw i32 %i.v, %i.s
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds i8, ptr %1, i64 %i.y
  store i8 %i.u, ptr %i.z, align 1, !tbaa !30
  %i.aa = add nuw nsw i32 %.011, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.aa, 17
  br i1 %exitcond.not, label %bb.d, label %bb.b, !llvm.loop !88

bb.d:                                             ; preds = %bb.c, %bb.b
  %.09 = phi i32 [ -1, %bb.b ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.09
}

declare void @av_channel_layout_uninit(ptr noundef) local_unnamed_addr #4

declare void @ff_vlc_init_table_from_lengths(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define internal fastcc void @copy_bits(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %3, i64 8          ; 2 uses
  %.val = load i32, ptr %i.a, align 8, !tbaa !52  ; 4 uses
  %i.b = getelementptr i8, ptr %3, i64 12
  %.val28 = load i32, ptr %i.b, align 4, !tbaa !50
  %i.c = sub nsw i32 %.val28, %.val               ; 4 uses
  %i.d = icmp slt i32 %i.c, %4
  br i1 %i.d, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !69
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !68   ; 2 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !66   ; 6 uses
  %.tr.i = trunc i64 %i.k to i32
  %i.n = shl i32 %.tr.i, 3
  %i.o = add i32 %i.m, -32
  %i.p = add i32 %i.o, %i.n
  %i.q = icmp sgt i32 %4, %i.p
  br i1 %i.q, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = and i32 %i.c, 7
  %i.s = ashr i32 %i.c, 3
  %i.t = tail call i32 @llvm.smin.i32(i32 %i.r, i32 %4) ; 9 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.w = load i32, ptr %i.v, align 8, !tbaa !51
  %i.x = load ptr, ptr %3, align 8, !tbaa !49
  %i.y = lshr i32 %.val, 3
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 1, !tbaa !30
  %i.ac = tail call i32 @llvm.bswap.i32(i32 %i.ab)
  %i.ad = and i32 %.val, 7
  %i.ae = shl i32 %i.ac, %i.ad
  %i.af = sub nuw nsw i32 32, %i.t
  %i.ag = lshr i32 %i.ae, %i.af                   ; 3 uses
  %i.ah = add i32 %i.t, %.val
  %i.ai = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %i.ah)
  store i32 %i.ai, ptr %i.a, align 8, !tbaa !52
  %i.aj = load i32, ptr %0, align 8, !tbaa !67    ; 2 uses
  %i.ak = icmp slt i32 %i.t, %i.m
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.al = shl i32 %i.aj, %i.t
  %i.am = or disjoint i32 %i.al, %i.ag
  %i.an = sub nuw nsw i32 %i.m, %i.t
  br label %put_bits.exit

bb.f:                                             ; preds = %bb.d
  %i.ao = icmp ugt i64 %i.k, 3
  br i1 %i.ao, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ap = shl i32 %i.aj, %i.m
  %i.aq = sub nsw i32 %i.t, %i.m
  %i.ar = lshr i32 %i.ag, %i.aq
  %i.as = or i32 %i.ar, %i.ap
  %i.at = tail call i32 @llvm.bswap.i32(i32 %i.as)
  store i32 %i.at, ptr %i.h, align 1, !tbaa !30
  %i.au = load ptr, ptr %i.g, align 8, !tbaa !68
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store ptr %i.av, ptr %i.g, align 8, !tbaa !68
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.9) #12
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %reass.sub = sub i32 %i.m, %i.t
  %i.aw = add i32 %reass.sub, 32
  br label %put_bits.exit

put_bits.exit:                                    ; preds = %bb.e, %bb.i
  %.026.i.i = phi i32 [ %i.am, %bb.e ], [ %i.ag, %bb.i ]
  %.0.i.i = phi i32 [ %i.an, %bb.e ], [ %i.aw, %bb.i ]
  store i32 %.026.i.i, ptr %0, align 8, !tbaa !67
  store i32 %.0.i.i, ptr %i.l, align 4, !tbaa !66
  br label %bb.j

bb.j:                                             ; preds = %put_bits.exit, %bb.c
  %i.ax = sext i32 %2 to i64
  %i.ay = getelementptr inbounds i8, ptr %1, i64 %i.ax
  %narrow = sub nsw i32 0, %i.s
  %i.az = sext i32 %narrow to i64
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 %i.az
  %i.bb = sub nsw i32 %4, %i.t
  %i.bc = and i32 %i.c, -8
  %. = tail call i32 @llvm.smin.i32(i32 %i.bb, i32 %i.bc)
  tail call void @ff_copy_bits(ptr noundef nonnull %0, ptr noundef %i.ba, i32 noundef %.) #12
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %bb.a, %bb.j
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @synth_superframe(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [9 x i16], align 16               ; 12 uses
  %i.b = alloca [80 x float], align 16            ; 6 uses
  %3 = alloca %struct.AMRFixed, align 4           ; 34 uses
  %i.c = alloca [16 x double], align 16           ; 9 uses
  %i.d = ptrtoaddr ptr %i.c to i64
  %i.e = alloca [16 x float], align 16            ; 5 uses
  %i.f = alloca [8 x i32], align 16               ; 12 uses
  %i.g = alloca [16 x double], align 16           ; 12 uses
  %i.h = ptrtoaddr ptr %i.g to i64
  %i.i = alloca [16 x float], align 16            ; 7 uses
  %4 = alloca %struct.GetBitContext, align 8      ; 7 uses
  %i.j = alloca [3 x [16 x double]], align 16     ; 51 uses
  %i.k = alloca [908 x float], align 16           ; 5 uses
  %i.l = alloca [496 x float], align 16           ; 5 uses
  %i.m = alloca [16 x double], align 16           ; 17 uses
  %i.n = alloca [32 x double], align 16           ; 31 uses
  %i.o = alloca [32 x double], align 16           ; 30 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !28   ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #12
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 76 ; 5 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !44   ; 6 uses
  %i.t = icmp eq i32 %i.s, 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 84
  %i.v = load i32, ptr %i.u, align 4, !tbaa !43
  %i.w = sext i32 %i.v to i64                     ; 2 uses
  %i.x = getelementptr inbounds [128 x i8], ptr @wmavoice_mean_lsf16, i64 %i.w
  %i.y = getelementptr inbounds [80 x i8], ptr @wmavoice_mean_lsf10, i64 %i.w
  %i.z = select i1 %i.t, ptr %i.x, ptr %i.y       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 2364 ; 2 uses
  %i.ab = sext i32 %i.s to i64
  %i.ac = shl nsw i64 %i.ab, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.l, ptr nonnull align 4 %i.aa, i64 %i.ac, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 700 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 56 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !57
  %i.ag = sext i32 %i.af to i64
  %i.ah = shl nsw i64 %i.ag, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.k, ptr nonnull align 4 %i.ad, i64 %i.ah, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 456 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !65 ; 3 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %bb.b, label %._crit_edge264

._crit_edge264:                                   ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !52
  %.pre265 = load ptr, ptr %i.q, align 8, !tbaa !49
  %.phi.trans.insert266 = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.pre267 = load i32, ptr %.phi.trans.insert266, align 8, !tbaa !51
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 136
  %or.cond.i = icmp samesign ult i32 %i.aj, 2147483135 ; 2 uses
  %.014.i = select i1 %or.cond.i, ptr %i.al, ptr null ; 2 uses
  %.013.i = select i1 %or.cond.i, i32 %i.aj, i32 0 ; 2 uses
  store ptr %.014.i, ptr %4, align 8, !tbaa !49
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %.013.i, ptr %i.am, align 4, !tbaa !50
  %i.an = add nuw nsw i32 %.013.i, 8              ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.an, ptr %5, align 8, !tbaa !51
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.ao, align 8, !tbaa !52
  store i32 0, ptr %i.ai, align 8, !tbaa !65
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge264, %bb.b
  %i.ap = phi i32 [ %i.an, %bb.b ], [ %.pre267, %._crit_edge264 ] ; 3 uses
  %i.aq = phi ptr [ %.014.i, %bb.b ], [ %.pre265, %._crit_edge264 ] ; 3 uses
  %i.ar = phi i32 [ 0, %bb.b ], [ %.pre, %._crit_edge264 ] ; 4 uses
  %.0114 = phi ptr [ %4, %bb.b ], [ %i.q, %._crit_edge264 ] ; 17 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0114, i64 8 ; 51 uses
  %i.at = lshr i32 %i.ar, 3
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !30
  %i.ax = getelementptr inbounds nuw i8, ptr %.0114, i64 16 ; 10 uses
  %i.ay = icmp slt i32 %i.ar, %i.ap
  %i.az = zext i1 %i.ay to i32
  %spec.select.i = add i32 %i.ar, %i.az           ; 5 uses
  %i.ba = zext i8 %i.aw to i32
  %i.bb = and i32 %i.ar, 7
  store i32 %spec.select.i, ptr %i.as, align 8, !tbaa !52
  %i.bc = lshr exact i32 128, %i.bb
  %i.bd = and i32 %i.bc, %i.ba
  %.not = icmp eq i32 %i.bd, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef nonnull %0, ptr noundef nonnull @.str.13) #12
  br label %bb.en

bb.e:                                             ; preds = %bb.c
  %i.be = lshr i32 %spec.select.i, 3
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !30
  %i.bi = icmp slt i32 %spec.select.i, %i.ap
  %i.bj = zext i1 %i.bi to i32
  %spec.select.i130 = add i32 %spec.select.i, %i.bj ; 4 uses
  %i.bk = zext i8 %i.bh to i32
  %i.bl = and i32 %spec.select.i, 7
  store i32 %spec.select.i130, ptr %i.as, align 8, !tbaa !52
  %i.bm = lshr exact i32 128, %i.bl
  %i.bn = and i32 %i.bm, %i.bk
  %.not123 = icmp eq i32 %i.bn, 0
  br i1 %.not123, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bo = lshr i32 %spec.select.i130, 3
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 1, !tbaa !30
  %i.bs = tail call i32 @llvm.bswap.i32(i32 %i.br)
  %i.bt = and i32 %spec.select.i130, 7
  %i.bu = shl i32 %i.bs, %i.bt                    ; 2 uses
  %i.bv = lshr i32 %i.bu, 20                      ; 2 uses
  %i.bw = add i32 %spec.select.i130, 12
  %i.bx = tail call i32 @llvm.umin.i32(i32 %i.ap, i32 %i.bw)
  store i32 %i.bx, ptr %i.as, align 8, !tbaa !52
  %i.by = icmp ugt i32 %i.bu, 504365055
  br i1 %i.by, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.14, i32 noundef 480, i32 noundef %i.bv) #12
  br label %bb.en

bb.h:                                             ; preds = %bb.f, %bb.e
  %.0112 = phi i32 [ %i.bv, %bb.f ], [ 480, %bb.e ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.q, i64 128 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 16, !tbaa !64
  %.not124 = icmp eq i32 %i.ca, 0
  br i1 %.not124, label %bb.ai, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #12
  %i.cb = icmp sgt i32 %i.s, 0
  br i1 %i.cb, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.q, i64 496 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.s to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.s, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %index ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %wide.load = load <2 x double>, ptr %i.cd, align 8, !tbaa !46
  %wide.load329 = load <2 x double>, ptr %i.ce, align 8, !tbaa !46
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %wide.load330 = load <2 x double>, ptr %i.cf, align 16, !tbaa !46
  %wide.load331 = load <2 x double>, ptr %i.cg, align 16, !tbaa !46
  %i.ch = fsub nsz <2 x double> %wide.load, %wide.load330
  %i.ci = fsub nsz <2 x double> %wide.load329, %wide.load331
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store <2 x double> %i.ch, ptr %i.cj, align 16, !tbaa !46
  store <2 x double> %i.ci, ptr %i.ck, align 16, !tbaa !46
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !89

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !46
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv
  %i.cp = load double, ptr %i.co, align 8, !tbaa !46
  %i.cq = fsub nsz double %i.cn, %i.cp
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  store double %i.cq, ptr %i.cr, align 8, !tbaa !46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !90

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.cs = icmp eq i32 %i.s, 10
  br i1 %i.cs, label %dequant_lsp10r.exit, label %._crit_edge.thread

dequant_lsp10r.exit:                              ; preds = %._crit_edge
  %i.ct = getelementptr inbounds nuw i8, ptr %i.j, i64 256 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.cv = load i32, ptr %i.cu, align 16, !tbaa !42
  %.not.i = icmp eq i32 %i.cv, 0
  %i.cw = select i1 %.not.i, ptr @wmavoice_lsp10_intercoeff_a, ptr @wmavoice_lsp10_intercoeff_b
  call fastcc void @dequant_lsp10i(ptr noundef nonnull %.0114, ptr noundef nonnull %i.ct)
  %i.cx = load i32, ptr %i.as, align 8, !tbaa !52 ; 3 uses
  %i.cy = load i32, ptr %i.ax, align 8, !tbaa !51 ; 4 uses
  %i.cz = load ptr, ptr %.0114, align 8, !tbaa !49 ; 4 uses
  %i.da = lshr i32 %i.cx, 3
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 1, !tbaa !30
  %i.de = tail call i32 @llvm.bswap.i32(i32 %i.dd)
  %i.df = and i32 %i.cx, 7
  %i.dg = shl i32 %i.de, %i.df
  %i.dh = lshr i32 %i.dg, 27
  %i.di = add i32 %i.cx, 5
  %i.dj = tail call i32 @llvm.umin.i32(i32 %i.cy, i32 %i.di) ; 4 uses
  store i32 %i.dj, ptr %i.as, align 8, !tbaa !52
  %i.dk = lshr i32 %i.dj, 3
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 1, !tbaa !30
  %i.do = tail call i32 @llvm.bswap.i32(i32 %i.dn)
  %i.dp = and i32 %i.dj, 7
  %i.dq = shl i32 %i.do, %i.dp
  %i.dr = lshr i32 %i.dq, 25
  %i.ds = add i32 %i.dj, 7
  %i.dt = tail call i32 @llvm.umin.i32(i32 %i.cy, i32 %i.ds) ; 4 uses
  store i32 %i.dt, ptr %i.as, align 8, !tbaa !52
  %i.du = lshr i32 %i.dt, 3
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 1, !tbaa !30
  %i.dy = tail call i32 @llvm.bswap.i32(i32 %i.dx)
  %i.dz = and i32 %i.dt, 7
  %i.ea = shl i32 %i.dy, %i.dz
  %i.eb = lshr i32 %i.ea, 26
  %i.ec = add i32 %i.dt, 6
  %i.ed = tail call i32 @llvm.umin.i32(i32 %i.cy, i32 %i.ec) ; 4 uses
  store i32 %i.ed, ptr %i.as, align 8, !tbaa !52
  %i.ee = lshr i32 %i.ed, 3
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 1, !tbaa !30
  %i.ei = tail call i32 @llvm.bswap.i32(i32 %i.eh)
  %i.ej = and i32 %i.ed, 7
  %i.ek = shl i32 %i.ei, %i.ej
  %i.el = lshr i32 %i.ek, 26
  %i.em = add i32 %i.ed, 6
  %i.en = tail call i32 @llvm.umin.i32(i32 %i.cy, i32 %i.em)
  store i32 %i.en, ptr %i.as, align 8, !tbaa !52
  %i.eo = zext nneg i32 %i.dh to i64
  %i.ep = getelementptr inbounds nuw [80 x i8], ptr %i.cw, i64 %i.eo ; 10 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 40
  %i.er = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.es = load <2 x double>, ptr %i.m, align 16, !tbaa !46
  %i.et = load <2 x double>, ptr %i.ct, align 16, !tbaa !46 ; 3 uses
  %i.eu = fsub nsz <2 x double> %i.es, %i.et      ; 2 uses
  %i.ev = load <2 x float>, ptr %i.ep, align 16, !tbaa !37
  %i.ew = fpext <2 x float> %i.ev to <2 x double>
  %i.ex = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ew, <2 x double> %i.eu, <2 x double> %i.et)
  store <2 x double> %i.ex, ptr %i.n, align 16, !tbaa !46
  %i.ey = load <2 x float>, ptr %i.eq, align 8, !tbaa !37
  %i.ez = fpext <2 x float> %i.ey to <2 x double>
end_hunk_0
