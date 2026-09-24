Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/wmavoice?download=true
inline.NumInlined: 94
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 34
begin_hunk_0_@wmavoice_flush:bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #4

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
  %i.a = alloca [9 x i16], align 16               ; 13 uses
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
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !51
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.ap, align 8, !tbaa !52
  store i32 0, ptr %i.ai, align 8, !tbaa !65
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge264, %bb.b
  %i.aq = phi i32 [ %i.an, %bb.b ], [ %.pre267, %._crit_edge264 ] ; 3 uses
  %i.ar = phi ptr [ %.014.i, %bb.b ], [ %.pre265, %._crit_edge264 ] ; 3 uses
  %i.as = phi i32 [ 0, %bb.b ], [ %.pre, %._crit_edge264 ] ; 4 uses
  %.0114 = phi ptr [ %4, %bb.b ], [ %i.q, %._crit_edge264 ] ; 17 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0114, i64 8 ; 51 uses
  %i.au = lshr i32 %i.as, 3
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !30
  %i.ay = getelementptr inbounds nuw i8, ptr %.0114, i64 16 ; 10 uses
  %i.az = icmp slt i32 %i.as, %i.aq
  %i.ba = zext i1 %i.az to i32
  %spec.select.i = add i32 %i.as, %i.ba           ; 5 uses
  %i.bb = zext i8 %i.ax to i32
  %i.bc = and i32 %i.as, 7
  store i32 %spec.select.i, ptr %i.at, align 8, !tbaa !52
  %i.bd = lshr exact i32 128, %i.bc
  %i.be = and i32 %i.bd, %i.bb
  %.not = icmp eq i32 %i.be, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef nonnull %0, ptr noundef nonnull @.str.13) #12
  br label %bb.eo

bb.e:                                             ; preds = %bb.c
  %i.bf = lshr i32 %spec.select.i, 3
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !30
  %i.bj = icmp slt i32 %spec.select.i, %i.aq
  %i.bk = zext i1 %i.bj to i32
  %spec.select.i130 = add i32 %spec.select.i, %i.bk ; 4 uses
  %i.bl = zext i8 %i.bi to i32
  %i.bm = and i32 %spec.select.i, 7
  store i32 %spec.select.i130, ptr %i.at, align 8, !tbaa !52
  %i.bn = lshr exact i32 128, %i.bm
  %i.bo = and i32 %i.bn, %i.bl
  %.not123 = icmp eq i32 %i.bo, 0
  br i1 %.not123, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bp = lshr i32 %spec.select.i130, 3
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 1, !tbaa !30
  %i.bt = tail call i32 @llvm.bswap.i32(i32 %i.bs)
  %i.bu = and i32 %spec.select.i130, 7
  %i.bv = shl i32 %i.bt, %i.bu                    ; 2 uses
  %i.bw = lshr i32 %i.bv, 20                      ; 2 uses
  %i.bx = add i32 %spec.select.i130, 12
  %i.by = tail call i32 @llvm.umin.i32(i32 %i.aq, i32 %i.bx)
  store i32 %i.by, ptr %i.at, align 8, !tbaa !52
  %i.bz = icmp ugt i32 %i.bv, 504365055
  br i1 %i.bz, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.14, i32 noundef 480, i32 noundef %i.bw) #12
  br label %bb.eo

bb.h:                                             ; preds = %bb.f, %bb.e
  %.0112 = phi i32 [ %i.bw, %bb.f ], [ 480, %bb.e ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.q, i64 128 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 16, !tbaa !64
  %.not124 = icmp eq i32 %i.cb, 0
  br i1 %.not124, label %bb.ai, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #12
  %i.cc = icmp sgt i32 %i.s, 0
  br i1 %i.cc, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.q, i64 496 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.s to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.s, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %index ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %wide.load = load <2 x double>, ptr %i.ce, align 8, !tbaa !46
  %wide.load329 = load <2 x double>, ptr %i.cf, align 8, !tbaa !46
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %wide.load330 = load <2 x double>, ptr %i.cg, align 16, !tbaa !46
  %wide.load331 = load <2 x double>, ptr %i.ch, align 16, !tbaa !46
  %i.ci = fsub nsz <2 x double> %wide.load, %wide.load330
  %i.cj = fsub nsz <2 x double> %wide.load329, %wide.load331
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store <2 x double> %i.ci, ptr %i.ck, align 16, !tbaa !46
  store <2 x double> %i.cj, ptr %i.cl, align 16, !tbaa !46
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %middle.block, label %vector.body, !llvm.loop !89

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv
  %i.co = load double, ptr %i.cn, align 8, !tbaa !46
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !46
  %i.cr = fsub nsz double %i.co, %i.cq
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  store double %i.cr, ptr %i.cs, align 8, !tbaa !46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !90

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.ct = icmp eq i32 %i.s, 10
  br i1 %i.ct, label %dequant_lsp10r.exit, label %._crit_edge.thread

dequant_lsp10r.exit:                              ; preds = %._crit_edge
  %i.cu = getelementptr inbounds nuw i8, ptr %i.j, i64 256 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.cw = load i32, ptr %i.cv, align 16, !tbaa !42
  %.not.i = icmp eq i32 %i.cw, 0
  %i.cx = select i1 %.not.i, ptr @wmavoice_lsp10_intercoeff_a, ptr @wmavoice_lsp10_intercoeff_b
  call fastcc void @dequant_lsp10i(ptr noundef nonnull %.0114, ptr noundef nonnull %i.cu)
  %i.cy = load i32, ptr %i.at, align 8, !tbaa !52 ; 3 uses
  %i.cz = load i32, ptr %i.ay, align 8, !tbaa !51 ; 4 uses
  %i.da = load ptr, ptr %.0114, align 8, !tbaa !49 ; 4 uses
  %i.db = lshr i32 %i.cy, 3
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 1, !tbaa !30
  %i.df = tail call i32 @llvm.bswap.i32(i32 %i.de)
  %i.dg = and i32 %i.cy, 7
  %i.dh = shl i32 %i.df, %i.dg
  %i.di = lshr i32 %i.dh, 27
  %i.dj = add i32 %i.cy, 5
  %i.dk = tail call i32 @llvm.umin.i32(i32 %i.cz, i32 %i.dj) ; 4 uses
  store i32 %i.dk, ptr %i.at, align 8, !tbaa !52
  %i.dl = lshr i32 %i.dk, 3
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 1, !tbaa !30
  %i.dp = tail call i32 @llvm.bswap.i32(i32 %i.do)
  %i.dq = and i32 %i.dk, 7
  %i.dr = shl i32 %i.dp, %i.dq
  %i.ds = lshr i32 %i.dr, 25
  %i.dt = add i32 %i.dk, 7
  %i.du = tail call i32 @llvm.umin.i32(i32 %i.cz, i32 %i.dt) ; 4 uses
  store i32 %i.du, ptr %i.at, align 8, !tbaa !52
  %i.dv = lshr i32 %i.du, 3
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 1, !tbaa !30
  %i.dz = tail call i32 @llvm.bswap.i32(i32 %i.dy)
  %i.ea = and i32 %i.du, 7
  %i.eb = shl i32 %i.dz, %i.ea
  %i.ec = lshr i32 %i.eb, 26
  %i.ed = add i32 %i.du, 6
  %i.ee = tail call i32 @llvm.umin.i32(i32 %i.cz, i32 %i.ed) ; 4 uses
  store i32 %i.ee, ptr %i.at, align 8, !tbaa !52
  %i.ef = lshr i32 %i.ee, 3
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.eg
  %i.ei = load i32, ptr %i.eh, align 1, !tbaa !30
  %i.ej = tail call i32 @llvm.bswap.i32(i32 %i.ei)
  %i.ek = and i32 %i.ee, 7
  %i.el = shl i32 %i.ej, %i.ek
  %i.em = lshr i32 %i.el, 26
  %i.en = add i32 %i.ee, 6
  %i.eo = tail call i32 @llvm.umin.i32(i32 %i.cz, i32 %i.en)
  store i32 %i.eo, ptr %i.at, align 8, !tbaa !52
  %i.ep = zext nneg i32 %i.di to i64
  %i.eq = getelementptr inbounds nuw [80 x i8], ptr %i.cx, i64 %i.ep ; 10 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 40
  %i.es = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.et = load <2 x double>, ptr %i.m, align 16, !tbaa !46
  %i.eu = load <2 x double>, ptr %i.cu, align 16, !tbaa !46 ; 3 uses
  %i.ev = fsub nsz <2 x double> %i.et, %i.eu      ; 2 uses
  %i.ew = load <2 x float>, ptr %i.eq, align 16, !tbaa !37
  %i.ex = fpext <2 x float> %i.ew to <2 x double>
  %i.ey = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ex, <2 x double> %i.ev, <2 x double> %i.eu)
  store <2 x double> %i.ey, ptr %i.n, align 16, !tbaa !46
  %i.ez = load <2 x float>, ptr %i.er, align 8, !tbaa !37
  %i.fa = fpext <2 x float> %i.ez to <2 x double>
  %i.fb = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fa, <2 x double> %i.ev, <2 x double> %i.eu)
  store <2 x double> %i.fb, ptr %i.es, align 16, !tbaa !46
  %i.fc = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.fd = getelementptr inbounds nuw i8, ptr %i.j, i64 272
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.fg = getelementptr inbounds nuw i8, ptr %i.eq, i64 48
  %i.fh = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %i.fi = load <2 x double>, ptr %i.fc, align 16, !tbaa !46
  %i.fj = load <2 x double>, ptr %i.fd, align 16, !tbaa !46 ; 3 uses
  %i.fk = fsub nsz <2 x double> %i.fi, %i.fj      ; 2 uses
  %i.fl = load <2 x float>, ptr %i.fe, align 8, !tbaa !37
  %i.fm = fpext <2 x float> %i.fl to <2 x double>
  %i.fn = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fm, <2 x double> %i.fk, <2 x double> %i.fj)
  store <2 x double> %i.fn, ptr %i.ff, align 16, !tbaa !46
  %i.fo = load <2 x float>, ptr %i.fg, align 16, !tbaa !37
  %i.fp = fpext <2 x float> %i.fo to <2 x double>
  %i.fq = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fp, <2 x double> %i.fk, <2 x double> %i.fj)
  store <2 x double> %i.fq, ptr %i.fh, align 16, !tbaa !46
  %i.fr = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.fs = getelementptr inbounds nuw i8, ptr %i.j, i64 288
  %i.ft = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.fu = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.fv = getelementptr inbounds nuw i8, ptr %i.eq, i64 56
  %i.fw = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  %i.fx = load <2 x double>, ptr %i.fr, align 16, !tbaa !46
  %i.fy = load <2 x double>, ptr %i.fs, align 16, !tbaa !46 ; 3 uses
  %i.fz = fsub nsz <2 x double> %i.fx, %i.fy      ; 2 uses
  %i.ga = load <2 x float>, ptr %i.ft, align 16, !tbaa !37
  %i.gb = fpext <2 x float> %i.ga to <2 x double>
  %i.gc = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gb, <2 x double> %i.fz, <2 x double> %i.fy)
  store <2 x double> %i.gc, ptr %i.fu, align 16, !tbaa !46
  %i.gd = load <2 x float>, ptr %i.fv, align 8, !tbaa !37
  %i.ge = fpext <2 x float> %i.gd to <2 x double>
  %i.gf = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ge, <2 x double> %i.fz, <2 x double> %i.fy)
  store <2 x double> %i.gf, ptr %i.fw, align 16, !tbaa !46
  %i.gg = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.gh = getelementptr inbounds nuw i8, ptr %i.j, i64 304
  %i.gi = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.gj = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.gk = getelementptr inbounds nuw i8, ptr %i.eq, i64 64
  %i.gl = getelementptr inbounds nuw i8, ptr %i.n, i64 128
  %i.gm = load <2 x double>, ptr %i.gg, align 16, !tbaa !46
  %i.gn = load <2 x double>, ptr %i.gh, align 16, !tbaa !46 ; 3 uses
  %i.go = fsub nsz <2 x double> %i.gm, %i.gn      ; 2 uses
  %i.gp = load <2 x float>, ptr %i.gi, align 8, !tbaa !37
  %i.gq = fpext <2 x float> %i.gp to <2 x double>
  %i.gr = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gq, <2 x double> %i.go, <2 x double> %i.gn)
  store <2 x double> %i.gr, ptr %i.gj, align 16, !tbaa !46
  %i.gs = load <2 x float>, ptr %i.gk, align 16, !tbaa !37
  %i.gt = fpext <2 x float> %i.gs to <2 x double>
  %i.gu = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gt, <2 x double> %i.go, <2 x double> %i.gn)
  store <2 x double> %i.gu, ptr %i.gl, align 16, !tbaa !46
  %i.gv = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.gw = getelementptr inbounds nuw i8, ptr %i.j, i64 320
  %i.gx = getelementptr inbounds nuw i8, ptr %i.eq, i64 32
  %i.gy = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.gz = getelementptr inbounds nuw i8, ptr %i.eq, i64 72
  %i.ha = getelementptr inbounds nuw i8, ptr %i.n, i64 144
  %i.hb = load <2 x double>, ptr %i.gv, align 16, !tbaa !46
  %i.hc = load <2 x double>, ptr %i.gw, align 16, !tbaa !46 ; 3 uses
  %i.hd = fsub nsz <2 x double> %i.hb, %i.hc      ; 2 uses
  %i.he = load <2 x float>, ptr %i.gx, align 16, !tbaa !37
  %i.hf = fpext <2 x float> %i.he to <2 x double>
  %i.hg = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hf, <2 x double> %i.hd, <2 x double> %i.hc)
  store <2 x double> %i.hg, ptr %i.gy, align 16, !tbaa !46
  %i.hh = load <2 x float>, ptr %i.gz, align 8, !tbaa !37
  %i.hi = fpext <2 x float> %i.hh to <2 x double>
  %i.hj = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hi, <2 x double> %i.hd, <2 x double> %i.hc)
  store <2 x double> %i.hj, ptr %i.ha, align 16, !tbaa !46
  %i.hk = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.hl = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.hm = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.hn = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  %i.ho = getelementptr inbounds nuw i8, ptr %i.o, i64 112
  %i.hp = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  %i.hq = getelementptr inbounds nuw i8, ptr %i.o, i64 144
  %narrow = mul nuw nsw i32 %i.ds, 20
  %i.hr = zext nneg i32 %narrow to i64
  %i.hs = getelementptr inbounds nuw i8, ptr @wmavoice_dq_lsp10r, i64 %i.hr ; 10 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 2
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 4
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hs, i64 6
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hs, i64 10
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hs, i64 12
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hs, i64 14
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hs, i64 18
  %narrow304 = mul nuw nsw i32 %i.ec, 20
  %i.ic = zext nneg i32 %narrow304 to i64
  %i.id = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @wmavoice_dq_lsp10r, i64 2560), i64 %i.ic ; 10 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 2
  %i.if = getelementptr inbounds nuw i8, ptr %i.id, i64 4
  %i.ig = getelementptr inbounds nuw i8, ptr %i.id, i64 6
  %i.ih = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.id, i64 10
  %i.ij = getelementptr inbounds nuw i8, ptr %i.id, i64 12
  %i.ik = getelementptr inbounds nuw i8, ptr %i.id, i64 14
  %i.il = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  %i.im = getelementptr inbounds nuw i8, ptr %i.id, i64 18
  %narrow305 = mul nuw nsw i32 %i.em, 20
  %i.in = zext nneg i32 %narrow305 to i64
  %i.io = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @wmavoice_dq_lsp10r, i64 3840), i64 %i.in ; 10 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 2
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 4
  %i.ir = getelementptr inbounds nuw i8, ptr %i.io, i64 6
  %i.is = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.it = getelementptr inbounds nuw i8, ptr %i.io, i64 10
  %i.iu = getelementptr inbounds nuw i8, ptr %i.io, i64 12
  %i.iv = getelementptr inbounds nuw i8, ptr %i.io, i64 14
  %i.iw = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  %i.ix = getelementptr inbounds nuw i8, ptr %i.io, i64 18
  %i.iy = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.iz = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.ja = load <2 x i8>, ptr %i.hs, align 4, !tbaa !30
  %i.jb = uitofp <2 x i8> %i.ja to <2 x double>
  %i.jc = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jb, <2 x double> splat (double f0x3F65243F09B29E8E), <2 x double> splat (double f0xBFD59A8C3AD1A17F))
  %i.jd = load <2 x i8>, ptr %i.id, align 4, !tbaa !30
  %i.je = uitofp <2 x i8> %i.jd to <2 x double>
  %i.jf = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.je, <2 x double> splat (double f0x3F543DD610A464CE), <2 x double> splat (double f0xBFC531C046A094B0))
  %i.jg = fadd nsz <2 x double> %i.jc, %i.jf
  %i.jh = load <2 x i8>, ptr %i.io, align 4, !tbaa !30
  %i.ji = uitofp <2 x i8> %i.jh to <2 x double>
  %i.jj = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ji, <2 x double> splat (double f0x3F53461ABBE9E64E), <2 x double> splat (double f0xBFC4C3653A6AEAC7))
  %i.jk = fadd nsz <2 x double> %i.jg, %i.jj
  store <2 x double> %i.jk, ptr %i.o, align 16, !tbaa !46
  %i.jl = load <2 x i8>, ptr %i.ht, align 2, !tbaa !30
  %i.jm = uitofp <2 x i8> %i.jl to <2 x double>
  %i.jn = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jm, <2 x double> splat (double f0x3F65243F09B29E8E), <2 x double> splat (double f0xBFD59A8C3AD1A17F))
  %i.jo = load <2 x i8>, ptr %i.ie, align 2, !tbaa !30
end_hunk_0
begin_hunk_1_@synth_superframe:bb.a
  %.1.i.i.i.i = phi i32 [ %.3.i.i.i.i, %bb.dj ], [ %.0120.i.i.i.i, %bb.di ] ; 2 uses
  %i.bhq = add nsw i32 %.085118.i.i.i.i, 1
  %.not.i116.i.i.i = icmp sgt i32 %.184.i.i.i.i, %i.bgg
  br i1 %.not.i116.i.i.i, label %aw_pulse_set2.exit.thread.i.i.i, label %.preheader.i.i.i.i, !llvm.loop !110

aw_pulse_set2.exit.thread.i.i.i:                  ; preds = %bb.dk, %.loopexit107.i.i.i.i
  %.0.lcssa.i.i.i.i = phi i32 [ 0, %.loopexit107.i.i.i.i ], [ %.1.i.i.i.i, %bb.dk ] ; 2 uses
  %i.bhr = sext i32 %i.bem to i64
  %i.bhs = getelementptr inbounds [4 x i8], ptr %i.afs, i64 %i.bhr
  store i32 %.0.lcssa.i.i.i.i, ptr %i.bhs, align 4, !tbaa !56
  %i.bht = lshr i32 %i.bgi, 3
  %i.bhu = zext nneg i32 %i.bht to i64
  %i.bhv = getelementptr inbounds nuw i8, ptr %i.ayx, i64 %i.bhu
  %i.bhw = load i8, ptr %i.bhv, align 1, !tbaa !30
  %i.bhx = icmp slt i32 %i.bgi, %i.ayw
  %i.bhy = zext i1 %i.bhx to i32
  %spec.select.i101.i.i.i.i = add i32 %i.bgi, %i.bhy
  %i.bhz = zext i8 %i.bhw to i32
  %i.bia = and i32 %i.bgi, 7
  store i32 %spec.select.i101.i.i.i.i, ptr %i.at, align 8, !tbaa !52
  %i.bib = lshr exact i32 128, %i.bia
  %i.bic = and i32 %i.bib, %i.bhz
  %.not93.i.i.i.i = icmp eq i32 %i.bic, 0
  %i.bid = select i1 %.not93.i.i.i.i, float 1.000000e+00, float -1.000000e+00
  %i.bie = load i32, ptr %3, align 4, !tbaa !150  ; 2 uses
  %i.bif = sext i32 %i.bie to i64
  %i.big = getelementptr inbounds [4 x i8], ptr %i.aft, i64 %i.bif
  store float %i.bid, ptr %i.big, align 4, !tbaa !37
  %i.bih = add nsw i32 %i.bie, 1
  store i32 %i.bih, ptr %3, align 4, !tbaa !150
  %i.bii = sub nsw i32 80, %.0.lcssa.i.i.i.i
  %i.bij = load i32, ptr %i.afp, align 4, !tbaa !147 ; 2 uses
  %i.bik = srem i32 %i.bii, %i.bij                ; 2 uses
  %.not94.i.i.i.i = icmp eq i32 %i.bik, 0
  %i.bil = sub nsw i32 %i.bij, %i.bik
  %spec.select.i.i34.i.i = select i1 %.not94.i.i.i.i, i32 0, i32 %i.bil
  store i32 %spec.select.i.i34.i.i, ptr %i.asx, align 8, !tbaa !151
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.loopexit124.i.i.i

.lr.ph.i35.i.i:                                   ; preds = %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.bim = load i32, ptr %i.asy, align 4, !tbaa !145
  %i.bin = mul i32 %indvars216.i, 1877
  %i.bio = add nsw i32 %i.bim, %i.bin             ; 3 uses
  %i.bip = icmp ugt i32 %i.bio, 65534
  %i.biq = add i32 %i.bio, -65535
  %spec.select.i119.i.i.i = select i1 %i.bip, i32 %i.biq, i32 %i.bio ; 4 uses
  %i.bir = sext i32 %spec.select.i119.i.i.i to i64
  %i.bis = mul nsw i64 %i.bir, 477218589
  %i.bit = lshr i64 %i.bis, 32
  %i.biu = trunc nuw i64 %i.bit to i32
  %.neg.i120.i.i.i = mul i32 %i.biu, -9
  %i.biv = add i32 %.neg.i120.i.i.i, %spec.select.i119.i.i.i
  %i.biw = zext i32 %i.biv to i64
  %i.bix = getelementptr inbounds nuw [8 x i8], ptr @pRNG.div_tbl, i64 %i.biw ; 2 uses
  %i.biy = load i32, ptr %i.bix, align 8, !tbaa !56
  %i.biz = mul i32 %spec.select.i119.i.i.i, %i.biy
  %i.bja = zext i32 %spec.select.i119.i.i.i to i64
  %i.bjb = getelementptr inbounds nuw i8, ptr %i.bix, i64 4
  %i.bjc = load i32, ptr %i.bjb, align 4, !tbaa !56
  %i.bjd = zext i32 %i.bjc to i64
  %i.bje = mul nuw i64 %i.bja, %i.bjd
  %i.bjf = lshr i64 %i.bje, 32
  %i.bjg = trunc nuw i64 %i.bjf to i32
  %i.bjh = add i32 %i.biz, %i.bjg
  %.lhs.trunc.i.i36.i.i = trunc i32 %i.bjh to i16
  %i.bji = urem i16 %.lhs.trunc.i.i36.i.i, %.rhs.trunc.i.i37.i.i
  %i.bjj = zext nneg i16 %i.bji to i64
  %invariant.gep.i39.i.i = getelementptr inbounds nuw [4 x i8], ptr @wmavoice_std_codebook, i64 %i.bjj ; 6 uses
  %scevgep = getelementptr i8, ptr %i.ayq, i64 %i.atg
  %bound0 = icmp ult ptr %i.ayq, %i.ast
  %bound1 = icmp ult ptr %i.ata, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph414.preheader, label %vector.ph416

vector.ph416:                                     ; preds = %.lr.ph.i35.i.i
  %i.bjk = load float, ptr %i.ata, align 4, !tbaa !141, !alias.scope !152
  %broadcast.splatinsert422 = insertelement <4 x float> poison, float %i.bjk, i64 0
  %broadcast.splat423 = shufflevector <4 x float> %broadcast.splatinsert422, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body418

vector.body418:                                   ; preds = %vector.body418, %vector.ph416
  %index419 = phi i64 [ 0, %vector.ph416 ], [ %index.next424, %vector.body418 ] ; 3 uses
  %i.bjl = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i39.i.i, i64 %index419 ; 2 uses
  %i.bjm = getelementptr inbounds nuw i8, ptr %i.bjl, i64 16
  %wide.load420 = load <4 x float>, ptr %i.bjl, align 4, !tbaa !37
  %wide.load421 = load <4 x float>, ptr %i.bjm, align 4, !tbaa !37
  %i.bjn = fmul nsz <4 x float> %wide.load420, %broadcast.splat423
  %i.bjo = fmul nsz <4 x float> %wide.load421, %broadcast.splat423
  %i.bjp = getelementptr inbounds nuw [4 x i8], ptr %i.ayq, i64 %index419 ; 2 uses
  %i.bjq = getelementptr inbounds nuw i8, ptr %i.bjp, i64 16
  store <4 x float> %i.bjn, ptr %i.bjp, align 4, !tbaa !37, !alias.scope !153, !noalias !152
  store <4 x float> %i.bjo, ptr %i.bjq, align 4, !tbaa !37, !alias.scope !153, !noalias !152
  %index.next424 = add nuw i64 %index419, 8       ; 2 uses
  %i.bjr = icmp eq i64 %index.next424, %n.vec417
  br i1 %i.bjr, label %middle.block425, label %vector.body418, !llvm.loop !114

middle.block425:                                  ; preds = %vector.body418
  br i1 %cmp.n426, label %._crit_edge.i.i.i, label %scalar.ph414.preheader

scalar.ph414.preheader:                           ; preds = %.lr.ph.i35.i.i, %middle.block425
  %indvars.iv.i40.i.i.ph = phi i64 [ 0, %.lr.ph.i35.i.i ], [ %n.vec417, %middle.block425 ] ; 3 uses
  br i1 %lcmp.mod528.not, label %scalar.ph414.prol.loopexit, label %scalar.ph414.prol

scalar.ph414.prol:                                ; preds = %scalar.ph414.preheader, %scalar.ph414.prol
  %indvars.iv.i40.i.i.prol = phi i64 [ %indvars.iv.next.i42.i.i.prol, %scalar.ph414.prol ], [ %indvars.iv.i40.i.i.ph, %scalar.ph414.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph414.prol ], [ 0, %scalar.ph414.preheader ]
  %gep.i41.i.i.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i39.i.i, i64 %indvars.iv.i40.i.i.prol
  %i.bjs = load float, ptr %gep.i41.i.i.prol, align 4, !tbaa !37
  %i.bjt = load float, ptr %i.ata, align 4, !tbaa !141
  %i.bju = fmul nsz float %i.bjs, %i.bjt
  %i.bjv = getelementptr inbounds nuw [4 x i8], ptr %i.ayq, i64 %indvars.iv.i40.i.i.prol
  store float %i.bju, ptr %i.bjv, align 4, !tbaa !37
  %indvars.iv.next.i42.i.i.prol = add nuw nsw i64 %indvars.iv.i40.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter527
  br i1 %prol.iter.cmp.not, label %scalar.ph414.prol.loopexit, label %scalar.ph414.prol, !llvm.loop !115

scalar.ph414.prol.loopexit:                       ; preds = %scalar.ph414.prol, %scalar.ph414.preheader
  %indvars.iv.i40.i.i.unr = phi i64 [ %indvars.iv.i40.i.i.ph, %scalar.ph414.preheader ], [ %indvars.iv.next.i42.i.i.prol, %scalar.ph414.prol ]
  %i.bjw = sub nsw i64 %indvars.iv.i40.i.i.ph, %wide.trip.count.i38.i.i
  %i.bjx = icmp ugt i64 %i.bjw, -4
  br i1 %i.bjx, label %._crit_edge.i.i.i, label %scalar.ph414

scalar.ph414:                                     ; preds = %scalar.ph414.prol.loopexit, %scalar.ph414
  %indvars.iv.i40.i.i = phi i64 [ %indvars.iv.next.i42.i.i.3, %scalar.ph414 ], [ %indvars.iv.i40.i.i.unr, %scalar.ph414.prol.loopexit ] ; 6 uses
  %gep.i41.i.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i39.i.i, i64 %indvars.iv.i40.i.i
  %i.bjy = load float, ptr %gep.i41.i.i, align 4, !tbaa !37
  %i.bjz = load float, ptr %i.ata, align 4, !tbaa !141
  %i.bka = fmul nsz float %i.bjy, %i.bjz
  %i.bkb = getelementptr inbounds nuw [4 x i8], ptr %i.ayq, i64 %indvars.iv.i40.i.i
  store float %i.bka, ptr %i.bkb, align 4, !tbaa !37
  %indvars.iv.next.i42.i.i = add nuw nsw i64 %indvars.iv.i40.i.i, 1 ; 2 uses
  %gep.i41.i.i.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i39.i.i, i64 %indvars.iv.next.i42.i.i
  %i.bkc = load float, ptr %gep.i41.i.i.1, align 4, !tbaa !37
  %i.bkd = load float, ptr %i.ata, align 4, !tbaa !141
  %i.bke = fmul nsz float %i.bkc, %i.bkd
  %i.bkf = getelementptr inbounds nuw [4 x i8], ptr %i.ayq, i64 %indvars.iv.next.i42.i.i
  store float %i.bke, ptr %i.bkf, align 4, !tbaa !37
  %indvars.iv.next.i42.i.i.1 = add nuw nsw i64 %indvars.iv.i40.i.i, 2 ; 2 uses
  %gep.i41.i.i.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i39.i.i, i64 %indvars.iv.next.i42.i.i.1
  %i.bkg = load float, ptr %gep.i41.i.i.2, align 4, !tbaa !37
  %i.bkh = load float, ptr %i.ata, align 4, !tbaa !141
  %i.bki = fmul nsz float %i.bkg, %i.bkh
  %i.bkj = getelementptr inbounds nuw [4 x i8], ptr %i.ayq, i64 %indvars.iv.next.i42.i.i.1
  store float %i.bki, ptr %i.bkj, align 4, !tbaa !37
  %indvars.iv.next.i42.i.i.2 = add nuw nsw i64 %indvars.iv.i40.i.i, 3 ; 2 uses
  %gep.i41.i.i.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i39.i.i, i64 %indvars.iv.next.i42.i.i.2
  %i.bkk = load float, ptr %gep.i41.i.i.3, align 4, !tbaa !37
  %i.bkl = load float, ptr %i.ata, align 4, !tbaa !141
  %i.bkm = fmul nsz float %i.bkk, %i.bkl
  %i.bkn = getelementptr inbounds nuw [4 x i8], ptr %i.ayq, i64 %indvars.iv.next.i42.i.i.2
  store float %i.bkm, ptr %i.bkn, align 4, !tbaa !37
  %indvars.iv.next.i42.i.i.3 = add nuw nsw i64 %indvars.iv.i40.i.i, 4 ; 2 uses
  %exitcond.not.i43.i.i.3 = icmp eq i64 %indvars.iv.next.i42.i.i.3, %wide.trip.count.i38.i.i
  br i1 %exitcond.not.i43.i.i.3, label %._crit_edge.i.i.i, label %scalar.ph414, !llvm.loop !116

._crit_edge.i.i.i:                                ; preds = %scalar.ph414.prol.loopexit, %scalar.ph414, %middle.block425
  %i.bko = add i32 %i.bgi, 8
  %i.bkp = call i32 @llvm.umin.i32(i32 %i.ayw, i32 %i.bko)
  store i32 %i.bkp, ptr %i.at, align 8, !tbaa !52
  br label %synth_block_fcb_acb.exit.i.i

bb.dl:                                            ; preds = %bb.cg
  %i.bkq = load i8, ptr %i.aso, align 1, !tbaa !136
  %i.bkr = zext i8 %i.bkq to i32                  ; 2 uses
  %i.bks = sub nsw i32 5, %i.bkr                  ; 10 uses
  store i32 -1, ptr %i.afr, align 4, !tbaa !149
  %i.bkt = load ptr, ptr %.0114, align 8, !tbaa !49 ; 15 uses
  %i.bku = load i32, ptr %i.ay, align 8, !tbaa !51 ; 15 uses
  %i.bkv = add nuw nsw i32 %i.bkr, 27             ; 10 uses
  %.promoted.i.i.i = load i32, ptr %i.at, align 8, !tbaa !52 ; 4 uses
  %i.bkw = lshr i32 %.promoted.i.i.i, 3
  %i.bkx = zext nneg i32 %i.bkw to i64
  %i.bky = getelementptr inbounds nuw i8, ptr %i.bkt, i64 %i.bkx
  %i.bkz = load i8, ptr %i.bky, align 1, !tbaa !30
  %i.bla = icmp slt i32 %.promoted.i.i.i, %i.bku
  %i.blb = zext i1 %i.bla to i32
  %spec.select.i121.i.i.i = add i32 %.promoted.i.i.i, %i.blb ; 4 uses
  %i.blc = zext i8 %i.bkz to i32
  %i.bld = and i32 %.promoted.i.i.i, 7
  store i32 %spec.select.i121.i.i.i, ptr %i.at, align 8, !tbaa !52
  %i.ble = lshr exact i32 128, %i.bld
  %i.blf = and i32 %i.ble, %i.blc
  %.not.i32.i.i = icmp eq i32 %i.blf, 0
  %i.blg = select i1 %.not.i32.i.i, float -1.000000e+00, float 1.000000e+00 ; 3 uses
  %i.blh = lshr i32 %spec.select.i121.i.i.i, 3
  %i.bli = zext nneg i32 %i.blh to i64
  %i.blj = getelementptr inbounds nuw i8, ptr %i.bkt, i64 %i.bli
  %i.blk = load i32, ptr %i.blj, align 1, !tbaa !30
  %i.bll = call i32 @llvm.bswap.i32(i32 %i.blk)
  %i.blm = and i32 %spec.select.i121.i.i.i, 7
  %i.bln = shl i32 %i.bll, %i.blm
  %i.blo = lshr i32 %i.bln, %i.bkv                ; 2 uses
  %i.blp = add i32 %spec.select.i121.i.i.i, %i.bks
  %i.blq = call i32 @llvm.umin.i32(i32 %i.bku, i32 %i.blp) ; 5 uses
  store i32 %i.blq, ptr %i.at, align 8, !tbaa !52
  %i.blr = mul nuw nsw i32 %i.blo, 5
  store i32 %i.blr, ptr %i.afs, align 4, !tbaa !56
  store float %i.blg, ptr %i.aft, align 4, !tbaa !37
  br i1 %.not160.i.i.not.i, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.bls = lshr i32 %i.blq, 3
  %i.blt = zext nneg i32 %i.bls to i64
  %i.blu = getelementptr inbounds nuw i8, ptr %i.bkt, i64 %i.blt
  %i.blv = load i32, ptr %i.blu, align 1, !tbaa !30
  %i.blw = call i32 @llvm.bswap.i32(i32 %i.blv)
  %i.blx = and i32 %i.blq, 7
  %i.bly = shl i32 %i.blw, %i.blx
  %i.blz = lshr i32 %i.bly, %i.bkv                ; 2 uses
  %i.bma = add i32 %i.blq, %i.bks
  %i.bmb = call i32 @llvm.umin.i32(i32 %i.bku, i32 %i.bma) ; 2 uses
  store i32 %i.bmb, ptr %i.at, align 8, !tbaa !52
  %i.bmc = mul nuw nsw i32 %i.blz, 5
  store i32 %i.bmc, ptr %i.afu, align 4, !tbaa !56
  %i.bmd = icmp samesign ult i32 %i.blo, %i.blz
  %i.bme = fneg nsz float %i.blg
  %i.bmf = select nsz i1 %i.bmd, float %i.bme, float %i.blg
  store float %i.bmf, ptr %i.afv, align 4, !tbaa !37
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %i.bmg = phi i32 [ 2, %bb.dm ], [ 1, %bb.dl ]   ; 3 uses
  %i.bmh = phi i32 [ %i.bmb, %bb.dm ], [ %i.blq, %bb.dl ] ; 4 uses
  %i.bmi = lshr i32 %i.bmh, 3
  %i.bmj = zext nneg i32 %i.bmi to i64
  %i.bmk = getelementptr inbounds nuw i8, ptr %i.bkt, i64 %i.bmj
  %i.bml = load i8, ptr %i.bmk, align 1, !tbaa !30
  %i.bmm = icmp slt i32 %i.bmh, %i.bku
  %i.bmn = zext i1 %i.bmm to i32
  %spec.select.i121.1.i.i.i = add i32 %i.bmh, %i.bmn ; 4 uses
  %i.bmo = zext i8 %i.bml to i32
  %i.bmp = and i32 %i.bmh, 7
  store i32 %spec.select.i121.1.i.i.i, ptr %i.at, align 8, !tbaa !52
  %i.bmq = lshr exact i32 128, %i.bmp
  %i.bmr = and i32 %i.bmq, %i.bmo
  %.not.1.i.i.i = icmp eq i32 %i.bmr, 0
  %i.bms = select i1 %.not.1.i.i.i, float -1.000000e+00, float 1.000000e+00 ; 3 uses
  %i.bmt = lshr i32 %spec.select.i121.1.i.i.i, 3
  %i.bmu = zext nneg i32 %i.bmt to i64
  %i.bmv = getelementptr inbounds nuw i8, ptr %i.bkt, i64 %i.bmu
  %i.bmw = load i32, ptr %i.bmv, align 1, !tbaa !30
  %i.bmx = call i32 @llvm.bswap.i32(i32 %i.bmw)
  %i.bmy = and i32 %spec.select.i121.1.i.i.i, 7
  %i.bmz = shl i32 %i.bmx, %i.bmy
  %i.bna = lshr i32 %i.bmz, %i.bkv                ; 2 uses
  %i.bnb = add i32 %spec.select.i121.1.i.i.i, %i.bks
  %i.bnc = call i32 @llvm.umin.i32(i32 %i.bku, i32 %i.bnb) ; 5 uses
  store i32 %i.bnc, ptr %i.at, align 8, !tbaa !52
  %i.bnd = mul nuw nsw i32 %i.bna, 5
  %i.bne = add nuw nsw i32 %i.bnd, 1
  %i.bnf = zext nneg i32 %i.bmg to i64            ; 2 uses
  %i.bng = getelementptr inbounds nuw [4 x i8], ptr %i.afs, i64 %i.bnf
  store i32 %i.bne, ptr %i.bng, align 4, !tbaa !56
  %i.bnh = add nuw nsw i32 %i.bmg, 1              ; 2 uses
  %i.bni = getelementptr inbounds nuw [4 x i8], ptr %i.aft, i64 %i.bnf
  store float %i.bms, ptr %i.bni, align 4, !tbaa !37
  br i1 %.not183.i, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.bnj = lshr i32 %i.bnc, 3
  %i.bnk = zext nneg i32 %i.bnj to i64
  %i.bnl = getelementptr inbounds nuw i8, ptr %i.bkt, i64 %i.bnk
  %i.bnm = load i32, ptr %i.bnl, align 1, !tbaa !30
  %i.bnn = call i32 @llvm.bswap.i32(i32 %i.bnm)
  %i.bno = and i32 %i.bnc, 7
  %i.bnp = shl i32 %i.bnn, %i.bno
  %i.bnq = lshr i32 %i.bnp, %i.bkv                ; 2 uses
  %i.bnr = add i32 %i.bnc, %i.bks
  %i.bns = call i32 @llvm.umin.i32(i32 %i.bku, i32 %i.bnr) ; 2 uses
  store i32 %i.bns, ptr %i.at, align 8, !tbaa !52
  %i.bnt = mul nuw nsw i32 %i.bnq, 5
  %i.bnu = add nuw nsw i32 %i.bnt, 1
  %i.bnv = zext nneg i32 %i.bnh to i64            ; 2 uses
  %i.bnw = getelementptr inbounds nuw [4 x i8], ptr %i.afs, i64 %i.bnv
  store i32 %i.bnu, ptr %i.bnw, align 4, !tbaa !56
  %i.bnx = icmp samesign ult i32 %i.bna, %i.bnq
  %i.bny = fneg nsz float %i.bms
  %i.bnz = select nsz i1 %i.bnx, float %i.bny, float %i.bms
  %i.boa = add nuw nsw i32 %i.bmg, 2
  %i.bob = getelementptr inbounds nuw [4 x i8], ptr %i.aft, i64 %i.bnv
  store float %i.bnz, ptr %i.bob, align 4, !tbaa !37
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %i.boc = phi i32 [ %i.boa, %bb.do ], [ %i.bnh, %bb.dn ] ; 3 uses
  %i.bod = phi i32 [ %i.bns, %bb.do ], [ %i.bnc, %bb.dn ] ; 4 uses
  %i.boe = lshr i32 %i.bod, 3
  %i.bof = zext nneg i32 %i.boe to i64
  %i.bog = getelementptr inbounds nuw i8, ptr %i.bkt, i64 %i.bof
  %i.boh = load i8, ptr %i.bog, align 1, !tbaa !30
  %i.boi = icmp slt i32 %i.bod, %i.bku
  %i.boj = zext i1 %i.boi to i32
  %spec.select.i121.2.i.i.i = add i32 %i.bod, %i.boj ; 4 uses
  %i.bok = zext i8 %i.boh to i32
  %i.bol = and i32 %i.bod, 7
  store i32 %spec.select.i121.2.i.i.i, ptr %i.at, align 8, !tbaa !52
  %i.bom = lshr exact i32 128, %i.bol
  %i.bon = and i32 %i.bom, %i.bok
  %.not.2.i.i.i = icmp eq i32 %i.bon, 0
  %i.boo = select i1 %.not.2.i.i.i, float -1.000000e+00, float 1.000000e+00 ; 3 uses
  %i.bop = lshr i32 %spec.select.i121.2.i.i.i, 3
  %i.boq = zext nneg i32 %i.bop to i64
  %i.bor = getelementptr inbounds nuw i8, ptr %i.bkt, i64 %i.boq
  %i.bos = load i32, ptr %i.bor, align 1, !tbaa !30
  %i.bot = call i32 @llvm.bswap.i32(i32 %i.bos)
  %i.bou = and i32 %spec.select.i121.2.i.i.i, 7
  %i.bov = shl i32 %i.bot, %i.bou
  %i.bow = lshr i32 %i.bov, %i.bkv                ; 2 uses
  %i.box = add i32 %spec.select.i121.2.i.i.i, %i.bks
  %i.boy = call i32 @llvm.umin.i32(i32 %i.bku, i32 %i.box) ; 5 uses
  store i32 %i.boy, ptr %i.at, align 8, !tbaa !52
  %i.boz = mul nuw nsw i32 %i.bow, 5
  %i.bpa = add nuw nsw i32 %i.boz, 2
  %i.bpb = zext nneg i32 %i.boc to i64            ; 2 uses
  %i.bpc = getelementptr inbounds nuw [4 x i8], ptr %i.afs, i64 %i.bpb
  store i32 %i.bpa, ptr %i.bpc, align 4, !tbaa !56
  %i.bpd = add nuw nsw i32 %i.boc, 1              ; 3 uses
  store i32 %i.bpd, ptr %3, align 4, !tbaa !150
  %i.bpe = getelementptr inbounds nuw [4 x i8], ptr %i.aft, i64 %i.bpb
  store float %i.boo, ptr %i.bpe, align 4, !tbaa !37
  br i1 %.not184.i, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.bpf = lshr i32 %i.boy, 3
  %i.bpg = zext nneg i32 %i.bpf to i64
  %i.bph = getelementptr inbounds nuw i8, ptr %i.bkt, i64 %i.bpg
  %i.bpi = load i32, ptr %i.bph, align 1, !tbaa !30
  %i.bpj = call i32 @llvm.bswap.i32(i32 %i.bpi)
  %i.bpk = and i32 %i.boy, 7
  %i.bpl = shl i32 %i.bpj, %i.bpk
  %i.bpm = lshr i32 %i.bpl, %i.bkv                ; 2 uses
  %i.bpn = add i32 %i.boy, %i.bks
  %i.bpo = call i32 @llvm.umin.i32(i32 %i.bku, i32 %i.bpn) ; 2 uses
  store i32 %i.bpo, ptr %i.at, align 8, !tbaa !52
  %i.bpp = mul nuw nsw i32 %i.bpm, 5
  %i.bpq = add nuw nsw i32 %i.bpp, 2
  %i.bpr = zext nneg i32 %i.bpd to i64            ; 2 uses
  %i.bps = getelementptr inbounds nuw [4 x i8], ptr %i.afs, i64 %i.bpr
  store i32 %i.bpq, ptr %i.bps, align 4, !tbaa !56
  %i.bpt = icmp samesign ult i32 %i.bow, %i.bpm
  %i.bpu = fneg nsz float %i.boo
  %i.bpv = select nsz i1 %i.bpt, float %i.bpu, float %i.boo
  %i.bpw = add nuw nsw i32 %i.boc, 2              ; 2 uses
  store i32 %i.bpw, ptr %3, align 4, !tbaa !150
  %i.bpx = getelementptr inbounds nuw [4 x i8], ptr %i.aft, i64 %i.bpr
  store float %i.bpv, ptr %i.bpx, align 4, !tbaa !37
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %i.bpy = phi i32 [ %i.bpw, %bb.dq ], [ %i.bpd, %bb.dp ] ; 3 uses
  %i.bpz = phi i32 [ %i.bpo, %bb.dq ], [ %i.boy, %bb.dp ] ; 4 uses
  %i.bqa = lshr i32 %i.bpz, 3
  %i.bqb = zext nneg i32 %i.bqa to i64
  %i.bqc = getelementptr inbounds nuw i8, ptr %i.bkt, i64 %i.bqb
  %i.bqd = load i8, ptr %i.bqc, align 1, !tbaa !30
  %i.bqe = icmp slt i32 %i.bpz, %i.bku
  %i.bqf = zext i1 %i.bqe to i32
  %spec.select.i121.3.i.i.i = add i32 %i.bpz, %i.bqf ; 4 uses
  %i.bqg = zext i8 %i.bqd to i32
  %i.bqh = and i32 %i.bpz, 7
  store i32 %spec.select.i121.3.i.i.i, ptr %i.at, align 8, !tbaa !52
  %i.bqi = lshr exact i32 128, %i.bqh
  %i.bqj = and i32 %i.bqi, %i.bqg
  %.not.3.i.i.i = icmp eq i32 %i.bqj, 0
  %i.bqk = select i1 %.not.3.i.i.i, float -1.000000e+00, float 1.000000e+00 ; 3 uses
  %i.bql = lshr i32 %spec.select.i121.3.i.i.i, 3
  %i.bqm = zext nneg i32 %i.bql to i64
  %i.bqn = getelementptr inbounds nuw i8, ptr %i.bkt, i64 %i.bqm
  %i.bqo = load i32, ptr %i.bqn, align 1, !tbaa !30
  %i.bqp = call i32 @llvm.bswap.i32(i32 %i.bqo)
  %i.bqq = and i32 %spec.select.i121.3.i.i.i, 7
  %i.bqr = shl i32 %i.bqp, %i.bqq
  %i.bqs = lshr i32 %i.bqr, %i.bkv                ; 2 uses
  %i.bqt = add i32 %spec.select.i121.3.i.i.i, %i.bks
  %i.bqu = call i32 @llvm.umin.i32(i32 %i.bku, i32 %i.bqt) ; 5 uses
  store i32 %i.bqu, ptr %i.at, align 8, !tbaa !52
  %i.bqv = mul nuw nsw i32 %i.bqs, 5
  %i.bqw = add nuw nsw i32 %i.bqv, 3
  %i.bqx = zext nneg i32 %i.bpy to i64            ; 2 uses
  %i.bqy = getelementptr inbounds nuw [4 x i8], ptr %i.afs, i64 %i.bqx
  store i32 %i.bqw, ptr %i.bqy, align 4, !tbaa !56
  %i.bqz = add nuw nsw i32 %i.bpy, 1              ; 3 uses
  store i32 %i.bqz, ptr %3, align 4, !tbaa !150
  %i.bra = getelementptr inbounds nuw [4 x i8], ptr %i.aft, i64 %i.bqx
  store float %i.bqk, ptr %i.bra, align 4, !tbaa !37
  br i1 %.not184.i, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.brb = lshr i32 %i.bqu, 3
  %i.brc = zext nneg i32 %i.brb to i64
  %i.brd = getelementptr inbounds nuw i8, ptr %i.bkt, i64 %i.brc
  %i.bre = load i32, ptr %i.brd, align 1, !tbaa !30
  %i.brf = call i32 @llvm.bswap.i32(i32 %i.bre)
  %i.brg = and i32 %i.bqu, 7
  %i.brh = shl i32 %i.brf, %i.brg
  %i.bri = lshr i32 %i.brh, %i.bkv                ; 2 uses
  %i.brj = add i32 %i.bqu, %i.bks
  %i.brk = call i32 @llvm.umin.i32(i32 %i.bku, i32 %i.brj) ; 2 uses
  store i32 %i.brk, ptr %i.at, align 8, !tbaa !52
  %i.brl = mul nuw nsw i32 %i.bri, 5
  %i.brm = add nuw nsw i32 %i.brl, 3
  %i.brn = zext nneg i32 %i.bqz to i64            ; 2 uses
  %i.bro = getelementptr inbounds nuw [4 x i8], ptr %i.afs, i64 %i.brn
  store i32 %i.brm, ptr %i.bro, align 4, !tbaa !56
  %i.brp = icmp samesign ult i32 %i.bqs, %i.bri
  %i.brq = fneg nsz float %i.bqk
  %i.brr = select nsz i1 %i.brp, float %i.brq, float %i.bqk
  %i.brs = add nuw nsw i32 %i.bpy, 2              ; 2 uses
  store i32 %i.brs, ptr %3, align 4, !tbaa !150
  %i.brt = getelementptr inbounds nuw [4 x i8], ptr %i.aft, i64 %i.brn
  store float %i.brr, ptr %i.brt, align 4, !tbaa !37
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %i.bru = phi i32 [ %i.brs, %bb.ds ], [ %i.bqz, %bb.dr ] ; 3 uses
  %i.brv = phi i32 [ %i.brk, %bb.ds ], [ %i.bqu, %bb.dr ] ; 4 uses
  %i.brw = lshr i32 %i.brv, 3
  %i.brx = zext nneg i32 %i.brw to i64
  %i.bry = getelementptr inbounds nuw i8, ptr %i.bkt, i64 %i.brx
  %i.brz = load i8, ptr %i.bry, align 1, !tbaa !30
  %i.bsa = icmp slt i32 %i.brv, %i.bku
  %i.bsb = zext i1 %i.bsa to i32
  %spec.select.i121.4.i.i.i = add i32 %i.brv, %i.bsb ; 4 uses
  %i.bsc = zext i8 %i.brz to i32
  %i.bsd = and i32 %i.brv, 7
  store i32 %spec.select.i121.4.i.i.i, ptr %i.at, align 8, !tbaa !52
  %i.bse = lshr exact i32 128, %i.bsd
  %i.bsf = and i32 %i.bse, %i.bsc
  %.not.4.i.i.i = icmp eq i32 %i.bsf, 0
  %i.bsg = select i1 %.not.4.i.i.i, float -1.000000e+00, float 1.000000e+00 ; 3 uses
  %i.bsh = lshr i32 %spec.select.i121.4.i.i.i, 3
  %i.bsi = zext nneg i32 %i.bsh to i64
  %i.bsj = getelementptr inbounds nuw i8, ptr %i.bkt, i64 %i.bsi
  %i.bsk = load i32, ptr %i.bsj, align 1, !tbaa !30
  %i.bsl = call i32 @llvm.bswap.i32(i32 %i.bsk)
  %i.bsm = and i32 %spec.select.i121.4.i.i.i, 7
  %i.bsn = shl i32 %i.bsl, %i.bsm
  %i.bso = lshr i32 %i.bsn, %i.bkv                ; 2 uses
  %i.bsp = add i32 %spec.select.i121.4.i.i.i, %i.bks
  %i.bsq = call i32 @llvm.umin.i32(i32 %i.bku, i32 %i.bsp) ; 4 uses
  store i32 %i.bsq, ptr %i.at, align 8, !tbaa !52
  %i.bsr = mul nuw nsw i32 %i.bso, 5
  %i.bss = add nuw nsw i32 %i.bsr, 4
  %i.bst = zext nneg i32 %i.bru to i64
  %i.bsu = getelementptr inbounds nuw [4 x i8], ptr %i.afs, i64 %i.bst
  store i32 %i.bss, ptr %i.bsu, align 4, !tbaa !56
  %i.bsv = add nuw nsw i32 %i.bru, 1              ; 2 uses
  store i32 %i.bsv, ptr %3, align 4, !tbaa !150
  %i.bsw = zext nneg i32 %i.bru to i64
  %i.bsx = getelementptr inbounds nuw [4 x i8], ptr %i.aft, i64 %i.bsw
  store float %i.bsg, ptr %i.bsx, align 4, !tbaa !37
  br i1 %.not184.i, label %.loopexit124.i.i.i, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.bsy = lshr i32 %i.bsq, 3
  %i.bsz = zext nneg i32 %i.bsy to i64
  %i.bta = getelementptr inbounds nuw i8, ptr %i.bkt, i64 %i.bsz
  %i.btb = load i32, ptr %i.bta, align 1, !tbaa !30
  %i.btc = call i32 @llvm.bswap.i32(i32 %i.btb)
  %i.btd = and i32 %i.bsq, 7
  %i.bte = shl i32 %i.btc, %i.btd
  %i.btf = lshr i32 %i.bte, %i.bkv                ; 2 uses
  %i.btg = add i32 %i.bsq, %i.bks
  %i.bth = call i32 @llvm.umin.i32(i32 %i.bku, i32 %i.btg)
  store i32 %i.bth, ptr %i.at, align 8, !tbaa !52
  %i.bti = mul nuw nsw i32 %i.btf, 5
  %i.btj = add nuw nsw i32 %i.bti, 4
  %i.btk = zext nneg i32 %i.bsv to i64
  %i.btl = getelementptr inbounds nuw [4 x i8], ptr %i.afs, i64 %i.btk
  store i32 %i.btj, ptr %i.btl, align 4, !tbaa !56
  %i.btm = icmp samesign ult i32 %i.bso, %i.btf
  %i.btn = fneg nsz float %i.bsg
  %i.bto = select nsz i1 %i.btm, float %i.btn, float %i.bsg
  %i.btp = load i32, ptr %3, align 4, !tbaa !150  ; 2 uses
  %i.btq = add nsw i32 %i.btp, 1
  store i32 %i.btq, ptr %3, align 4, !tbaa !150
  %i.btr = sext i32 %i.btp to i64
  %i.bts = getelementptr inbounds [4 x i8], ptr %i.aft, i64 %i.btr
  store float %i.bto, ptr %i.bts, align 4, !tbaa !37
end_hunk_1
