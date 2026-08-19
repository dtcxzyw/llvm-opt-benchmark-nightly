inline.NumInlined: 94
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 34
begin_hunk_0_@wmavoice_init_static_data
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
  %i.d = load i32, ptr %i.b, align 8, !tbaa !56   ; 3 uses
  %i.e = load i32, ptr %i.c, align 8, !tbaa !55
  %i.f = load ptr, ptr %0, align 8, !tbaa !53
  %i.g = lshr i32 %i.d, 3
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.h
  %i.j = load i32, ptr %i.i, align 1, !tbaa !32
  %i.k = tail call i32 @llvm.bswap.i32(i32 %i.j)
  %i.l = and i32 %i.d, 7
  %i.m = shl i32 %i.k, %i.l
  %i.n = lshr i32 %i.m, 29                        ; 2 uses
  %i.o = add i32 %i.d, 3
  %i.p = tail call i32 @llvm.umin.i32(i32 %i.e, i32 %i.o)
  store i32 %i.p, ptr %i.b, align 8, !tbaa !56
  %i.q = zext nneg i32 %i.n to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !70   ; 3 uses
  %i.t = icmp sgt i32 %i.s, 3
  br i1 %i.t, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = trunc nuw nsw i32 %.011 to i8
  %i.v = mul nuw nsw i32 %i.n, 3
  %i.w = add nsw i32 %i.s, 1
  store i32 %i.w, ptr %i.r, align 4, !tbaa !70
  %i.x = add nsw i32 %i.v, %i.s
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds i8, ptr %1, i64 %i.y
  store i8 %i.u, ptr %i.z, align 1, !tbaa !32
  %i.aa = add nuw nsw i32 %.011, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.aa, 17
  br i1 %exitcond.not, label %bb.d, label %bb.b, !llvm.loop !91

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
  %.val = load i32, ptr %i.a, align 8, !tbaa !56  ; 4 uses
  %i.b = getelementptr i8, ptr %3, i64 12
  %.val28 = load i32, ptr %i.b, align 4, !tbaa !54
  %i.c = sub nsw i32 %.val28, %.val               ; 4 uses
  %i.d = icmp slt i32 %i.c, %4
  br i1 %i.d, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !85
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !84   ; 2 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !82   ; 6 uses
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
  %i.w = load i32, ptr %i.v, align 8, !tbaa !55
  %i.x = load ptr, ptr %3, align 8, !tbaa !53
  %i.y = lshr i32 %.val, 3
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 1, !tbaa !32
  %i.ac = tail call i32 @llvm.bswap.i32(i32 %i.ab)
  %i.ad = and i32 %.val, 7
  %i.ae = shl i32 %i.ac, %i.ad
  %i.af = sub nuw nsw i32 32, %i.t
  %i.ag = lshr i32 %i.ae, %i.af                   ; 3 uses
  %i.ah = add i32 %i.t, %.val
  %i.ai = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %i.ah)
  store i32 %i.ai, ptr %i.a, align 8, !tbaa !56
  %i.aj = load i32, ptr %0, align 8, !tbaa !83    ; 2 uses
  %i.ak = icmp slt i32 %i.t, %i.m
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.al = shl i32 %i.aj, %i.t
  %i.am = or disjoint i32 %i.al, %i.ag
  %i.an = sub nsw i32 %i.m, %i.t
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
  store i32 %i.at, ptr %i.h, align 1, !tbaa !32
  %i.au = load ptr, ptr %i.g, align 8, !tbaa !84
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store ptr %i.av, ptr %i.g, align 8, !tbaa !84
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
  store i32 %.026.i.i, ptr %0, align 8, !tbaa !83
  store i32 %.0.i.i, ptr %i.l, align 4, !tbaa !82
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
  %3 = alloca %struct.AMRFixed, align 4           ; 38 uses
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
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !9    ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #12
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 76 ; 6 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !47   ; 2 uses
  %i.t = icmp eq i32 %i.s, 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 84
  %i.v = load i32, ptr %i.u, align 4, !tbaa !46
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
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !63
  %i.ag = sext i32 %i.af to i64
  %i.ah = shl nsw i64 %i.ag, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.k, ptr nonnull align 4 %i.ad, i64 %i.ah, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 456 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !81 ; 3 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %bb.b, label %._crit_edge264

._crit_edge264:                                   ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !56
  %.pre265 = load ptr, ptr %i.q, align 8, !tbaa !53
  %.phi.trans.insert266 = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.pre267 = load i32, ptr %.phi.trans.insert266, align 8, !tbaa !55
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 136
  %or.cond.i = icmp samesign ult i32 %i.aj, 2147483135 ; 2 uses
  %.014.i = select i1 %or.cond.i, ptr %i.al, ptr null ; 2 uses
  %.013.i = select i1 %or.cond.i, i32 %i.aj, i32 0 ; 2 uses
  store ptr %.014.i, ptr %4, align 8, !tbaa !53
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %.013.i, ptr %i.am, align 4, !tbaa !54
  %i.an = add nuw nsw i32 %.013.i, 8              ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !55
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.ap, align 8, !tbaa !56
  store i32 0, ptr %i.ai, align 8, !tbaa !81
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
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !32
  %i.ay = getelementptr inbounds nuw i8, ptr %.0114, i64 16 ; 10 uses
  %i.az = icmp slt i32 %i.as, %i.aq
  %i.ba = zext i1 %i.az to i32
  %spec.select.i = add i32 %i.as, %i.ba           ; 5 uses
  %i.bb = zext i8 %i.ax to i32
  %i.bc = and i32 %i.as, 7
  store i32 %spec.select.i, ptr %i.at, align 8, !tbaa !56
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
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !32
  %i.bj = icmp slt i32 %spec.select.i, %i.aq
  %i.bk = zext i1 %i.bj to i32
  %spec.select.i130 = add i32 %spec.select.i, %i.bk ; 4 uses
  %i.bl = zext i8 %i.bi to i32
  %i.bm = and i32 %spec.select.i, 7
  store i32 %spec.select.i130, ptr %i.at, align 8, !tbaa !56
  %i.bn = lshr exact i32 128, %i.bm
  %i.bo = and i32 %i.bn, %i.bl
  %.not123 = icmp eq i32 %i.bo, 0
  br i1 %.not123, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bp = lshr i32 %spec.select.i130, 3
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 1, !tbaa !32
  %i.bt = tail call i32 @llvm.bswap.i32(i32 %i.bs)
  %i.bu = and i32 %spec.select.i130, 7
  %i.bv = shl i32 %i.bt, %i.bu                    ; 2 uses
  %i.bw = lshr i32 %i.bv, 20                      ; 2 uses
  %i.bx = add i32 %spec.select.i130, 12
  %i.by = tail call i32 @llvm.umin.i32(i32 %i.aq, i32 %i.bx)
  store i32 %i.by, ptr %i.at, align 8, !tbaa !56
  %i.bz = icmp ugt i32 %i.bv, 504365055
  br i1 %i.bz, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.14, i32 noundef 480, i32 noundef %i.bw) #12
  br label %bb.eo

bb.h:                                             ; preds = %bb.f, %bb.e
  %.0112 = phi i32 [ %i.bw, %bb.f ], [ 480, %bb.e ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.q, i64 128 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 16, !tbaa !77
  %.not124 = icmp eq i32 %i.cb, 0
  br i1 %.not124, label %bb.ai, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #12
  %i.cc = load i32, ptr %i.r, align 4, !tbaa !47  ; 4 uses
  %i.cd = icmp sgt i32 %i.cc, 0
  br i1 %i.cd, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.q, i64 496 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.cc to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.cc, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %index ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %wide.load = load <2 x double>, ptr %i.cf, align 8, !tbaa !48
  %wide.load329 = load <2 x double>, ptr %i.cg, align 8, !tbaa !48
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %wide.load330 = load <2 x double>, ptr %i.ch, align 16, !tbaa !48
  %wide.load331 = load <2 x double>, ptr %i.ci, align 16, !tbaa !48
  %i.cj = fsub nsz <2 x double> %wide.load, %wide.load330
  %i.ck = fsub nsz <2 x double> %wide.load329, %wide.load331
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store <2 x double> %i.cj, ptr %i.cl, align 16, !tbaa !48
  store <2 x double> %i.ck, ptr %i.cm, align 16, !tbaa !48
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !92

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv
  %i.cp = load double, ptr %i.co, align 8, !tbaa !48
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !48
  %i.cs = fsub nsz double %i.cp, %i.cr
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  store double %i.cs, ptr %i.ct, align 8, !tbaa !48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !93

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.cu = icmp eq i32 %i.cc, 10
  br i1 %i.cu, label %dequant_lsp10r.exit, label %._crit_edge.thread

dequant_lsp10r.exit:                              ; preds = %._crit_edge
  %i.cv = getelementptr inbounds nuw i8, ptr %i.j, i64 256 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.cx = load i32, ptr %i.cw, align 16, !tbaa !45
  %.not.i = icmp eq i32 %i.cx, 0
  %i.cy = select i1 %.not.i, ptr @wmavoice_lsp10_intercoeff_a, ptr @wmavoice_lsp10_intercoeff_b
  call fastcc void @dequant_lsp10i(ptr noundef nonnull %.0114, ptr noundef nonnull %i.cv)
  %i.cz = load i32, ptr %i.at, align 8, !tbaa !56 ; 3 uses
  %i.da = load i32, ptr %i.ay, align 8, !tbaa !55 ; 4 uses
  %i.db = load ptr, ptr %.0114, align 8, !tbaa !53 ; 4 uses
end_hunk_0
begin_hunk_1_@synth_superframe:bb.a
  br i1 %niter512.ncmp.1, label %.lr.ph58.preheader.i.us.2.unr-lcssa, label %.lr.ph.i.us.2, !llvm.loop !95

.lr.ph58.preheader.i.us.2.unr-lcssa:              ; preds = %.lr.ph.i.us.2
  %lcmp.mod509.not = icmp eq i64 %xtraiter508, 0
  br i1 %lcmp.mod509.not, label %.lr.ph58.preheader.i.us.2, label %.lr.ph.i.us.2.epil.preheader

.lr.ph.i.us.2.epil.preheader:                     ; preds = %.lr.ph58.preheader.i.us.2.unr-lcssa, %stabilize_lsps.exit.us.1
  %store_forwarded464.epil.init = phi double [ %i.acu, %stabilize_lsps.exit.us.1 ], [ %..i.us.2.1, %.lr.ph58.preheader.i.us.2.unr-lcssa ]
  %indvars.iv.i.us.2.epil.init = phi i64 [ 1, %stabilize_lsps.exit.us.1 ], [ %indvars.iv.next.i.us.2.1, %.lr.ph58.preheader.i.us.2.unr-lcssa ]
  %lcmp.mod510 = trunc i64 %i.yr to i1
  call void @llvm.assume(i1 %lcmp.mod510)
  %i.adf = getelementptr inbounds nuw [8 x i8], ptr %i.acr, i64 %indvars.iv.i.us.2.epil.init ; 2 uses
  %i.adg = load double, ptr %i.adf, align 8, !tbaa !48 ; 2 uses
  %i.adh = fadd nsz double %store_forwarded464.epil.init, f0x3FA41B2F769CF0E0 ; 2 uses
  %i.adi = fcmp nsz ogt double %i.adg, %i.adh
  %..i.us.2.epil = select nsz i1 %i.adi, double %i.adg, double %i.adh
  store double %..i.us.2.epil, ptr %i.adf, align 8, !tbaa !48
  br label %.lr.ph58.preheader.i.us.2

.lr.ph58.preheader.i.us.2:                        ; preds = %.lr.ph58.preheader.i.us.2.unr-lcssa, %.lr.ph.i.us.2.epil.preheader
  %i.adj = getelementptr [8 x i8], ptr %i.acr, i64 %i.wy
  %i.adk = getelementptr i8, ptr %i.adj, i64 -8   ; 2 uses
  %i.adl = load double, ptr %i.adk, align 8, !tbaa !48 ; 2 uses
  %i.adm = fcmp nsz ogt double %i.adl, f0x40091854AE1FB8CE
  %i.adn = select nsz i1 %i.adm, double f0x40091854AE1FB8CE, double %i.adl
  store double %i.adn, ptr %i.adk, align 8, !tbaa !48
  br label %.lr.ph58.i.us.2

.lr.ph58.i.us.2:                                  ; preds = %bb.aa, %.lr.ph58.preheader.i.us.2
  %indvars.iv66.i.us.2 = phi i64 [ 1, %.lr.ph58.preheader.i.us.2 ], [ %indvars.iv.next67.i.us.2, %bb.aa ] ; 2 uses
  %i.ado = getelementptr inbounds nuw [8 x i8], ptr %i.acr, i64 %indvars.iv66.i.us.2 ; 2 uses
  %i.adp = load double, ptr %i.ado, align 8, !tbaa !48
  %i.adq = getelementptr i8, ptr %i.ado, i64 -8
  %i.adr = load double, ptr %i.adq, align 8, !tbaa !48
  %i.ads = fcmp nsz olt double %i.adp, %i.adr
  br i1 %i.ads, label %.lr.ph63.i.us.2.preheader, label %bb.aa

.lr.ph63.i.us.2.preheader:                        ; preds = %.lr.ph58.i.us.2
  %xtraiter513 = and i64 %i.yr, 1
  %i.adt = icmp eq i64 %i.ys, 0
  br i1 %i.adt, label %.lr.ph63.i.us.2.epil.preheader, label %.lr.ph63.i.us.2.preheader.new

.lr.ph63.i.us.2.preheader.new:                    ; preds = %.lr.ph63.i.us.2.preheader
  %unroll_iter516 = and i64 %i.yr, -2
  br label %.lr.ph63.i.us.2

bb.aa:                                            ; preds = %.lr.ph58.i.us.2
  %indvars.iv.next67.i.us.2 = add nuw nsw i64 %indvars.iv66.i.us.2, 1 ; 2 uses
  %exitcond70.not.i.us.2 = icmp eq i64 %indvars.iv.next67.i.us.2, %i.wy
  br i1 %exitcond70.not.i.us.2, label %.split.us, label %.lr.ph58.i.us.2, !llvm.loop !96

.lr.ph63.i.us.2:                                  ; preds = %bb.af, %.lr.ph63.i.us.2.preheader.new
  %indvars.iv71.i.us.2 = phi i64 [ 1, %.lr.ph63.i.us.2.preheader.new ], [ %indvars.iv.next72.i.us.2.1, %bb.af ] ; 4 uses
  %niter517 = phi i64 [ 0, %.lr.ph63.i.us.2.preheader.new ], [ %niter517.next.1, %bb.af ]
  %i.adu = getelementptr inbounds nuw [8 x i8], ptr %i.acr, i64 %indvars.iv71.i.us.2
  %i.adv = load double, ptr %i.adu, align 8, !tbaa !48 ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ac, %.lr.ph63.i.us.2
  %indvars.iv73.i.us.2 = phi i64 [ %indvars.iv71.i.us.2, %.lr.ph63.i.us.2 ], [ %indvars.iv.next74.i.us.2, %bb.ac ] ; 4 uses
  %indvars.iv.next74.i.us.2 = add nsw i64 %indvars.iv73.i.us.2, -1 ; 2 uses
  %i.adw = getelementptr inbounds nuw [8 x i8], ptr %i.acr, i64 %indvars.iv.next74.i.us.2
  %i.adx = load double, ptr %i.adw, align 8, !tbaa !48 ; 2 uses
  %i.ady = fcmp nsz ugt double %i.adx, %i.adv
  br i1 %i.ady, label %bb.ac, label %.lr.ph63.i.us.2.1

bb.ac:                                            ; preds = %bb.ab
  %i.adz = getelementptr inbounds nuw [8 x i8], ptr %i.acr, i64 %indvars.iv73.i.us.2
  store double %i.adx, ptr %i.adz, align 8, !tbaa !48
  %i.aea = icmp sgt i64 %indvars.iv73.i.us.2, 1
  br i1 %i.aea, label %bb.ab, label %.lr.ph63.i.us.2.1, !llvm.loop !97

.lr.ph63.i.us.2.1:                                ; preds = %bb.ac, %bb.ab
  %.0.in.lcssa.i.us.2 = phi i64 [ %indvars.iv73.i.us.2, %bb.ab ], [ 0, %bb.ac ]
  %i.aeb = getelementptr inbounds [8 x i8], ptr %i.acr, i64 %.0.in.lcssa.i.us.2
  store double %i.adv, ptr %i.aeb, align 8, !tbaa !48
  %indvars.iv.next72.i.us.2 = add nuw nsw i64 %indvars.iv71.i.us.2, 1 ; 2 uses
  %i.aec = getelementptr inbounds nuw [8 x i8], ptr %i.acr, i64 %indvars.iv.next72.i.us.2
  %i.aed = load double, ptr %i.aec, align 8, !tbaa !48 ; 2 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ae, %.lr.ph63.i.us.2.1
  %indvars.iv73.i.us.2.1 = phi i64 [ %indvars.iv.next72.i.us.2, %.lr.ph63.i.us.2.1 ], [ %indvars.iv.next74.i.us.2.1, %bb.ae ] ; 4 uses
  %indvars.iv.next74.i.us.2.1 = add nsw i64 %indvars.iv73.i.us.2.1, -1 ; 2 uses
  %i.aee = getelementptr inbounds nuw [8 x i8], ptr %i.acr, i64 %indvars.iv.next74.i.us.2.1
  %i.aef = load double, ptr %i.aee, align 8, !tbaa !48 ; 2 uses
  %i.aeg = fcmp nsz ugt double %i.aef, %i.aed
  br i1 %i.aeg, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.aeh = getelementptr inbounds nuw [8 x i8], ptr %i.acr, i64 %indvars.iv73.i.us.2.1
  store double %i.aef, ptr %i.aeh, align 8, !tbaa !48
  %i.aei = icmp sgt i64 %indvars.iv73.i.us.2.1, 1
  br i1 %i.aei, label %bb.ad, label %bb.af, !llvm.loop !97

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.0.in.lcssa.i.us.2.1 = phi i64 [ %indvars.iv73.i.us.2.1, %bb.ad ], [ 0, %bb.ae ]
  %i.aej = getelementptr inbounds [8 x i8], ptr %i.acr, i64 %.0.in.lcssa.i.us.2.1
  store double %i.aed, ptr %i.aej, align 8, !tbaa !48
  %indvars.iv.next72.i.us.2.1 = add nuw nsw i64 %indvars.iv71.i.us.2, 2 ; 2 uses
  %niter517.next.1 = add i64 %niter517, 2         ; 2 uses
  %niter517.ncmp.1 = icmp eq i64 %niter517.next.1, %unroll_iter516
  br i1 %niter517.ncmp.1, label %.split.us.loopexit.unr-lcssa, label %.lr.ph63.i.us.2, !llvm.loop !98

scalar.ph332:                                     ; preds = %scalar.ph332.preheader, %scalar.ph332
  %indvars.iv242 = phi i64 [ %indvars.iv.next243, %scalar.ph332 ], [ %indvars.iv242.ph, %scalar.ph332.preheader ] ; 8 uses
  %i.aek = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv242
  %i.ael = load double, ptr %i.aek, align 8, !tbaa !48 ; 3 uses
  %i.aem = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv242
  %i.aen = load double, ptr %i.aem, align 8, !tbaa !48
  %.idx = shl nuw nsw i64 %indvars.iv242, 4
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx ; 2 uses
  %i.aep = load double, ptr %i.aeo, align 16, !tbaa !48
  %i.aeq = fsub nsz double %i.aen, %i.aep
  %i.aer = fadd nsz double %i.ael, %i.aeq
  %i.aes = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv242
  store double %i.aer, ptr %i.aes, align 8, !tbaa !48
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv242
  %i.aet = load double, ptr %gep, align 8, !tbaa !48
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aeo, i64 8
  %i.aev = load double, ptr %i.aeu, align 8, !tbaa !48
  %i.aew = fsub nsz double %i.aet, %i.aev
  %i.aex = fadd nsz double %i.ael, %i.aew
  %i.aey = getelementptr inbounds nuw [8 x i8], ptr %i.ww, i64 %indvars.iv242
  store double %i.aex, ptr %i.aey, align 8, !tbaa !48
  %i.aez = getelementptr inbounds nuw [8 x i8], ptr %i.wx, i64 %indvars.iv242 ; 2 uses
  %i.afa = load double, ptr %i.aez, align 8, !tbaa !48
  %i.afb = fadd nsz double %i.ael, %i.afa
  store double %i.afb, ptr %i.aez, align 8, !tbaa !48
  %indvars.iv.next243 = add nuw nsw i64 %indvars.iv242, 1 ; 2 uses
  %exitcond246.not = icmp eq i64 %indvars.iv.next243, %i.wy
  br i1 %exitcond246.not, label %.preheader, label %scalar.ph332, !llvm.loop !99

.split.us.loopexit.unr-lcssa:                     ; preds = %bb.af
  %lcmp.mod514.not = icmp eq i64 %xtraiter513, 0
  br i1 %lcmp.mod514.not, label %.split.us, label %.lr.ph63.i.us.2.epil.preheader

.lr.ph63.i.us.2.epil.preheader:                   ; preds = %.split.us.loopexit.unr-lcssa, %.lr.ph63.i.us.2.preheader
  %indvars.iv71.i.us.2.epil.init = phi i64 [ 1, %.lr.ph63.i.us.2.preheader ], [ %indvars.iv.next72.i.us.2.1, %.split.us.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod515 = trunc i64 %i.yr to i1
  call void @llvm.assume(i1 %lcmp.mod515)
  %i.afc = getelementptr inbounds nuw [8 x i8], ptr %i.acr, i64 %indvars.iv71.i.us.2.epil.init
  %i.afd = load double, ptr %i.afc, align 8, !tbaa !48 ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ah, %.lr.ph63.i.us.2.epil.preheader
  %indvars.iv73.i.us.2.epil = phi i64 [ %indvars.iv71.i.us.2.epil.init, %.lr.ph63.i.us.2.epil.preheader ], [ %indvars.iv.next74.i.us.2.epil, %bb.ah ] ; 4 uses
  %indvars.iv.next74.i.us.2.epil = add nsw i64 %indvars.iv73.i.us.2.epil, -1 ; 2 uses
  %i.afe = getelementptr inbounds nuw [8 x i8], ptr %i.acr, i64 %indvars.iv.next74.i.us.2.epil
  %i.aff = load double, ptr %i.afe, align 8, !tbaa !48 ; 2 uses
  %i.afg = fcmp nsz ugt double %i.aff, %i.afd
  br i1 %i.afg, label %bb.ah, label %.split.us.loopexit.epilog-lcssa

bb.ah:                                            ; preds = %bb.ag
  %i.afh = getelementptr inbounds nuw [8 x i8], ptr %i.acr, i64 %indvars.iv73.i.us.2.epil
  store double %i.aff, ptr %i.afh, align 8, !tbaa !48
  %i.afi = icmp sgt i64 %indvars.iv73.i.us.2.epil, 1
  br i1 %i.afi, label %bb.ag, label %.split.us.loopexit.epilog-lcssa, !llvm.loop !97

.split.us.loopexit.epilog-lcssa:                  ; preds = %bb.ah, %bb.ag
  %.0.in.lcssa.i.us.2.epil = phi i64 [ %indvars.iv73.i.us.2.epil, %bb.ag ], [ 0, %bb.ah ]
  %i.afj = getelementptr inbounds [8 x i8], ptr %i.acr, i64 %.0.in.lcssa.i.us.2.epil
  store double %i.afd, ptr %i.afj, align 8, !tbaa !48
  br label %.split.us

.split.us:                                        ; preds = %bb.aa, %.split.us.loopexit.epilog-lcssa, %.split.us.loopexit.unr-lcssa, %._crit_edge.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #12
  br label %bb.ai

bb.ai:                                            ; preds = %.split.us, %bb.h
  tail call void @av_frame_unref(ptr noundef %1) #12
  %i.afk = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  store i32 480, ptr %i.afk, align 8, !tbaa !100
  %i.afl = tail call i32 @ff_get_buffer(ptr noundef %0, ptr noundef %1, i32 noundef 0) #12 ; 2 uses
  %i.afm = icmp slt i32 %i.afl, 0
  br i1 %i.afm, label %bb.eo, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store i32 %.0112, ptr %i.afk, align 8, !tbaa !100
  %i.afn = load ptr, ptr %1, align 8, !tbaa !105
  %i.afo = getelementptr inbounds nuw i8, ptr %i.q, i64 496 ; 2 uses
  %i.afp = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.afq = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 9 uses
  %i.afr = getelementptr inbounds nuw i8, ptr %3, i64 92
  %i.afs = getelementptr inbounds nuw i8, ptr %3, i64 84 ; 3 uses
  %i.aft = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 23 uses
  %i.afu = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 15 uses
  %i.afv = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.afw = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.afx = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 7 uses
  %i.afy = getelementptr inbounds nuw i8, ptr %i.a, i64 14 ; 3 uses
  %i.afz = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.aga = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.agb = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.agc = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.eh
  %indvars.iv260 = phi i64 [ 0, %bb.aj ], [ %indvars.iv.next261, %bb.eh ] ; 8 uses
  %i.agd = load i32, ptr %i.ca, align 16, !tbaa !77
  %.not127 = icmp eq i32 %i.agd, 0
  %.pre268 = load i32, ptr %i.r, align 4, !tbaa !47 ; 2 uses
  br i1 %.not127, label %bb.al, label %stabilize_lsps.exit153

bb.al:                                            ; preds = %bb.ak
  %i.age = icmp eq i32 %.pre268, 10
  %i.agf = getelementptr inbounds nuw [128 x i8], ptr %i.j, i64 %indvars.iv260 ; 2 uses
  br i1 %i.age, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  call fastcc void @dequant_lsp10i(ptr noundef nonnull %.0114, ptr noundef %i.agf)
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  call fastcc void @dequant_lsp16i(ptr noundef nonnull %.0114, ptr noundef %i.agf)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.agg = load i32, ptr %i.r, align 4, !tbaa !47 ; 10 uses
  %i.agh = icmp sgt i32 %i.agg, 0
  %i.agi = getelementptr inbounds nuw [128 x i8], ptr %i.j, i64 %indvars.iv260 ; 4 uses
  br i1 %i.agh, label %.lr.ph208, label %._crit_edge209.thread

._crit_edge209.thread:                            ; preds = %bb.ao
  %i.agj = load double, ptr %i.agi, align 16, !tbaa !48 ; 2 uses
  %i.agk = fcmp nsz ogt double %i.agj, f0x3F734D4C48E89552
  %i.agl = select nsz i1 %i.agk, double %i.agj, double f0x3F734D4C48E89552
  store double %i.agl, ptr %i.agi, align 16, !tbaa !48
  br label %._crit_edge.i132

.lr.ph208:                                        ; preds = %bb.ao
  %wide.trip.count258 = zext nneg i32 %i.agg to i64 ; 5 uses
  %min.iters.check449 = icmp ult i32 %i.agg, 4
  br i1 %min.iters.check449, label %scalar.ph448.preheader, label %vector.ph450

vector.ph450:                                     ; preds = %.lr.ph208
  %n.vec451 = and i64 %wide.trip.count258, 2147483644 ; 3 uses
  br label %vector.body452

vector.body452:                                   ; preds = %vector.body452, %vector.ph450
  %index453 = phi i64 [ 0, %vector.ph450 ], [ %index.next458, %vector.body452 ] ; 3 uses
  %i.agm = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index453 ; 2 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agm, i64 16
  %wide.load454 = load <2 x double>, ptr %i.agm, align 16, !tbaa !48
  %wide.load455 = load <2 x double>, ptr %i.agn, align 16, !tbaa !48
  %i.ago = getelementptr inbounds nuw [8 x i8], ptr %i.agi, i64 %index453 ; 3 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %i.ago, i64 16 ; 2 uses
  %wide.load456 = load <2 x double>, ptr %i.ago, align 16, !tbaa !48
  %wide.load457 = load <2 x double>, ptr %i.agp, align 16, !tbaa !48
  %i.agq = fadd nsz <2 x double> %wide.load454, %wide.load456
  %i.agr = fadd nsz <2 x double> %wide.load455, %wide.load457
  store <2 x double> %i.agq, ptr %i.ago, align 16, !tbaa !48
  store <2 x double> %i.agr, ptr %i.agp, align 16, !tbaa !48
  %index.next458 = add nuw i64 %index453, 4       ; 2 uses
  %i.ags = icmp eq i64 %index.next458, %n.vec451
  br i1 %i.ags, label %middle.block459, label %vector.body452, !llvm.loop !106

middle.block459:                                  ; preds = %vector.body452
  %cmp.n460 = icmp eq i64 %n.vec451, %wide.trip.count258
  br i1 %cmp.n460, label %._crit_edge209, label %scalar.ph448.preheader

scalar.ph448.preheader:                           ; preds = %.lr.ph208, %middle.block459
  %indvars.iv255.ph = phi i64 [ 0, %.lr.ph208 ], [ %n.vec451, %middle.block459 ]
  br label %scalar.ph448

scalar.ph448:                                     ; preds = %scalar.ph448.preheader, %scalar.ph448
  %indvars.iv255 = phi i64 [ %indvars.iv.next256, %scalar.ph448 ], [ %indvars.iv255.ph, %scalar.ph448.preheader ] ; 3 uses
  %i.agt = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv255
  %i.agu = load double, ptr %i.agt, align 8, !tbaa !48
  %i.agv = getelementptr inbounds nuw [8 x i8], ptr %i.agi, i64 %indvars.iv255 ; 2 uses
  %i.agw = load double, ptr %i.agv, align 8, !tbaa !48
  %i.agx = fadd nsz double %i.agu, %i.agw
  store double %i.agx, ptr %i.agv, align 8, !tbaa !48
  %indvars.iv.next256 = add nuw nsw i64 %indvars.iv255, 1 ; 2 uses
  %exitcond259.not = icmp eq i64 %indvars.iv.next256, %wide.trip.count258
  br i1 %exitcond259.not, label %._crit_edge209, label %scalar.ph448, !llvm.loop !107

._crit_edge209:                                   ; preds = %scalar.ph448, %middle.block459
  %i.agy = getelementptr inbounds nuw [128 x i8], ptr %i.j, i64 %indvars.iv260 ; 20 uses
  %i.agz = load double, ptr %i.agy, align 16, !tbaa !48 ; 2 uses
  %i.aha = fcmp nsz ogt double %i.agz, f0x3F734D4C48E89552
  %i.ahb = select nsz i1 %i.aha, double %i.agz, double f0x3F734D4C48E89552
  store double %i.ahb, ptr %i.agy, align 16, !tbaa !48
  %.not318 = icmp eq i32 %i.agg, 1
  br i1 %.not318, label %._crit_edge.i132, label %.lr.ph.preheader.i133

.lr.ph.preheader.i133:                            ; preds = %._crit_edge209
  %wide.trip.count.i134 = zext nneg i32 %i.agg to i64 ; 2 uses
  %load_initial = load double, ptr %i.agy, align 16 ; 2 uses
  %i.ahc = add nsw i64 %wide.trip.count258, -1    ; 6 uses
  %i.ahd = add nsw i64 %wide.trip.count258, -2    ; 2 uses
  %xtraiter518 = and i64 %i.ahc, 1
  %i.ahe = icmp eq i64 %i.ahd, 0
  br i1 %i.ahe, label %.lr.ph.i135.epil.preheader, label %.lr.ph.preheader.i133.new

.lr.ph.preheader.i133.new:                        ; preds = %.lr.ph.preheader.i133
  %unroll_iter521 = and i64 %i.ahc, -2
  br label %.lr.ph.i135

.lr.ph.i135:                                      ; preds = %.lr.ph.i135, %.lr.ph.preheader.i133.new
  %store_forwarded = phi double [ %load_initial, %.lr.ph.preheader.i133.new ], [ %..i137.1, %.lr.ph.i135 ]
  %indvars.iv.i136 = phi i64 [ 1, %.lr.ph.preheader.i133.new ], [ %indvars.iv.next.i138.1, %.lr.ph.i135 ] ; 3 uses
  %niter522 = phi i64 [ 0, %.lr.ph.preheader.i133.new ], [ %niter522.next.1, %.lr.ph.i135 ]
  %i.ahf = getelementptr inbounds nuw [8 x i8], ptr %i.agy, i64 %indvars.iv.i136 ; 2 uses
  %i.ahg = load double, ptr %i.ahf, align 8, !tbaa !48 ; 2 uses
  %i.ahh = fadd nsz double %store_forwarded, f0x3FA41B2F769CF0E0 ; 2 uses
  %i.ahi = fcmp nsz ogt double %i.ahg, %i.ahh
  %..i137 = select nsz i1 %i.ahi, double %i.ahg, double %i.ahh ; 2 uses
  store double %..i137, ptr %i.ahf, align 8, !tbaa !48
  %i.ahj = getelementptr inbounds nuw [8 x i8], ptr %i.agy, i64 %indvars.iv.i136
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahj, i64 8 ; 2 uses
  %i.ahl = load double, ptr %i.ahk, align 8, !tbaa !48 ; 2 uses
  %i.ahm = fadd nsz double %..i137, f0x3FA41B2F769CF0E0 ; 2 uses
  %i.ahn = fcmp nsz ogt double %i.ahl, %i.ahm
  %..i137.1 = select nsz i1 %i.ahn, double %i.ahl, double %i.ahm ; 3 uses
  store double %..i137.1, ptr %i.ahk, align 8, !tbaa !48
  %indvars.iv.next.i138.1 = add nuw nsw i64 %indvars.iv.i136, 2 ; 2 uses
  %niter522.next.1 = add nuw i64 %niter522, 2     ; 2 uses
  %niter522.ncmp.1 = icmp eq i64 %niter522.next.1, %unroll_iter521
  br i1 %niter522.ncmp.1, label %.lr.ph58.preheader.i140.unr-lcssa, label %.lr.ph.i135, !llvm.loop !95

._crit_edge.i132:                                 ; preds = %._crit_edge209.thread, %._crit_edge209
  %i.aho = getelementptr inbounds nuw [128 x i8], ptr %i.j, i64 %indvars.iv260
  %i.ahp = sext i32 %i.agg to i64
  %i.ahq = getelementptr [8 x i8], ptr %i.aho, i64 %i.ahp
  %i.ahr = getelementptr i8, ptr %i.ahq, i64 -8   ; 2 uses
  %i.ahs = load double, ptr %i.ahr, align 8, !tbaa !48 ; 2 uses
  %i.aht = fcmp nsz ogt double %i.ahs, f0x40091854AE1FB8CE
  %i.ahu = select nsz i1 %i.aht, double f0x40091854AE1FB8CE, double %i.ahs
  store double %i.ahu, ptr %i.ahr, align 8, !tbaa !48
  br label %stabilize_lsps.exit153

.lr.ph58.preheader.i140.unr-lcssa:                ; preds = %.lr.ph.i135
  %lcmp.mod519.not = icmp eq i64 %xtraiter518, 0
  br i1 %lcmp.mod519.not, label %.lr.ph58.preheader.i140, label %.lr.ph.i135.epil.preheader

.lr.ph.i135.epil.preheader:                       ; preds = %.lr.ph58.preheader.i140.unr-lcssa, %.lr.ph.preheader.i133
  %store_forwarded.epil.init = phi double [ %load_initial, %.lr.ph.preheader.i133 ], [ %..i137.1, %.lr.ph58.preheader.i140.unr-lcssa ]
  %indvars.iv.i136.epil.init = phi i64 [ 1, %.lr.ph.preheader.i133 ], [ %indvars.iv.next.i138.1, %.lr.ph58.preheader.i140.unr-lcssa ]
  %lcmp.mod520 = trunc i64 %i.ahc to i1
  call void @llvm.assume(i1 %lcmp.mod520)
  %i.ahv = getelementptr inbounds nuw [8 x i8], ptr %i.agy, i64 %indvars.iv.i136.epil.init ; 2 uses
  %i.ahw = load double, ptr %i.ahv, align 8, !tbaa !48 ; 2 uses
  %i.ahx = fadd nsz double %store_forwarded.epil.init, f0x3FA41B2F769CF0E0 ; 2 uses
  %i.ahy = fcmp nsz ogt double %i.ahw, %i.ahx
  %..i137.epil = select nsz i1 %i.ahy, double %i.ahw, double %i.ahx
  store double %..i137.epil, ptr %i.ahv, align 8, !tbaa !48
  br label %.lr.ph58.preheader.i140

.lr.ph58.preheader.i140:                          ; preds = %.lr.ph58.preheader.i140.unr-lcssa, %.lr.ph.i135.epil.preheader
  %i.ahz = getelementptr [8 x i8], ptr %i.agy, i64 %wide.trip.count.i134
  %i.aia = getelementptr i8, ptr %i.ahz, i64 -8   ; 2 uses
  %i.aib = load double, ptr %i.aia, align 8, !tbaa !48 ; 2 uses
  %i.aic = fcmp nsz ogt double %i.aib, f0x40091854AE1FB8CE
  %i.aid = select nsz i1 %i.aic, double f0x40091854AE1FB8CE, double %i.aib
  store double %i.aid, ptr %i.aia, align 8, !tbaa !48
  br label %.lr.ph58.i142

bb.ap:                                            ; preds = %.lr.ph58.i142
  %indvars.iv.next67.i144 = add nuw nsw i64 %indvars.iv66.i143, 1 ; 2 uses
  %exitcond70.not.i145 = icmp eq i64 %indvars.iv.next67.i144, %wide.trip.count.i134
  br i1 %exitcond70.not.i145, label %stabilize_lsps.exit153, label %.lr.ph58.i142, !llvm.loop !96

.lr.ph58.i142:                                    ; preds = %bb.ap, %.lr.ph58.preheader.i140
  %indvars.iv66.i143 = phi i64 [ 1, %.lr.ph58.preheader.i140 ], [ %indvars.iv.next67.i144, %bb.ap ] ; 2 uses
  %i.aie = getelementptr inbounds nuw [8 x i8], ptr %i.agy, i64 %indvars.iv66.i143 ; 2 uses
  %i.aif = load double, ptr %i.aie, align 8, !tbaa !48
  %i.aig = getelementptr i8, ptr %i.aie, i64 -8
  %i.aih = load double, ptr %i.aig, align 8, !tbaa !48
  %i.aii = fcmp nsz olt double %i.aif, %i.aih
  br i1 %i.aii, label %.lr.ph63.i146.preheader, label %bb.ap

.lr.ph63.i146.preheader:                          ; preds = %.lr.ph58.i142
  %xtraiter523 = and i64 %i.ahc, 1
  %i.aij = icmp eq i64 %i.ahd, 0
  br i1 %i.aij, label %.lr.ph63.i146.epil.preheader, label %.lr.ph63.i146.preheader.new

.lr.ph63.i146.preheader.new:                      ; preds = %.lr.ph63.i146.preheader
  %unroll_iter526 = and i64 %i.ahc, -2
  br label %.lr.ph63.i146

.lr.ph63.i146:                                    ; preds = %bb.au, %.lr.ph63.i146.preheader.new
  %indvars.iv71.i147 = phi i64 [ 1, %.lr.ph63.i146.preheader.new ], [ %indvars.iv.next72.i151.1, %bb.au ] ; 4 uses
  %niter527 = phi i64 [ 0, %.lr.ph63.i146.preheader.new ], [ %niter527.next.1, %bb.au ]
  %i.aik = getelementptr inbounds nuw [8 x i8], ptr %i.agy, i64 %indvars.iv71.i147
  %i.ail = load double, ptr %i.aik, align 8, !tbaa !48 ; 2 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ar, %.lr.ph63.i146
  %indvars.iv73.i148 = phi i64 [ %indvars.iv71.i147, %.lr.ph63.i146 ], [ %indvars.iv.next74.i149, %bb.ar ] ; 4 uses
  %indvars.iv.next74.i149 = add nsw i64 %indvars.iv73.i148, -1 ; 2 uses
  %i.aim = getelementptr inbounds nuw [8 x i8], ptr %i.agy, i64 %indvars.iv.next74.i149
  %i.ain = load double, ptr %i.aim, align 8, !tbaa !48 ; 2 uses
  %i.aio = fcmp nsz ugt double %i.ain, %i.ail
  br i1 %i.aio, label %bb.ar, label %.lr.ph63.i146.1

bb.ar:                                            ; preds = %bb.aq
  %i.aip = getelementptr inbounds nuw [8 x i8], ptr %i.agy, i64 %indvars.iv73.i148
  store double %i.ain, ptr %i.aip, align 8, !tbaa !48
  %i.aiq = icmp sgt i64 %indvars.iv73.i148, 1
  br i1 %i.aiq, label %bb.aq, label %.lr.ph63.i146.1, !llvm.loop !97

.lr.ph63.i146.1:                                  ; preds = %bb.ar, %bb.aq
  %.0.in.lcssa.i150 = phi i64 [ %indvars.iv73.i148, %bb.aq ], [ 0, %bb.ar ]
  %i.air = getelementptr inbounds [8 x i8], ptr %i.agy, i64 %.0.in.lcssa.i150
  store double %i.ail, ptr %i.air, align 8, !tbaa !48
  %indvars.iv.next72.i151 = add nuw nsw i64 %indvars.iv71.i147, 1 ; 2 uses
  %i.ais = getelementptr inbounds nuw [8 x i8], ptr %i.agy, i64 %indvars.iv.next72.i151
  %i.ait = load double, ptr %i.ais, align 8, !tbaa !48 ; 2 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.at, %.lr.ph63.i146.1
  %indvars.iv73.i148.1 = phi i64 [ %indvars.iv.next72.i151, %.lr.ph63.i146.1 ], [ %indvars.iv.next74.i149.1, %bb.at ] ; 4 uses
  %indvars.iv.next74.i149.1 = add nsw i64 %indvars.iv73.i148.1, -1 ; 2 uses
  %i.aiu = getelementptr inbounds nuw [8 x i8], ptr %i.agy, i64 %indvars.iv.next74.i149.1
  %i.aiv = load double, ptr %i.aiu, align 8, !tbaa !48 ; 2 uses
  %i.aiw = fcmp nsz ugt double %i.aiv, %i.ait
  br i1 %i.aiw, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.aix = getelementptr inbounds nuw [8 x i8], ptr %i.agy, i64 %indvars.iv73.i148.1
  store double %i.aiv, ptr %i.aix, align 8, !tbaa !48
  %i.aiy = icmp sgt i64 %indvars.iv73.i148.1, 1
  br i1 %i.aiy, label %bb.as, label %bb.au, !llvm.loop !97

bb.au:                                            ; preds = %bb.at, %bb.as
  %.0.in.lcssa.i150.1 = phi i64 [ %indvars.iv73.i148.1, %bb.as ], [ 0, %bb.at ]
  %i.aiz = getelementptr inbounds [8 x i8], ptr %i.agy, i64 %.0.in.lcssa.i150.1
  store double %i.ait, ptr %i.aiz, align 8, !tbaa !48
  %indvars.iv.next72.i151.1 = add nuw nsw i64 %indvars.iv71.i147, 2 ; 2 uses
  %niter527.next.1 = add i64 %niter527, 2         ; 2 uses
  %niter527.ncmp.1 = icmp eq i64 %niter527.next.1, %unroll_iter526
  br i1 %niter527.ncmp.1, label %stabilize_lsps.exit153.loopexit.unr-lcssa, label %.lr.ph63.i146, !llvm.loop !98

stabilize_lsps.exit153.loopexit.unr-lcssa:        ; preds = %bb.au
  %lcmp.mod524.not = icmp eq i64 %xtraiter523, 0
  br i1 %lcmp.mod524.not, label %stabilize_lsps.exit153, label %.lr.ph63.i146.epil.preheader

.lr.ph63.i146.epil.preheader:                     ; preds = %stabilize_lsps.exit153.loopexit.unr-lcssa, %.lr.ph63.i146.preheader
  %indvars.iv71.i147.epil.init = phi i64 [ 1, %.lr.ph63.i146.preheader ], [ %indvars.iv.next72.i151.1, %stabilize_lsps.exit153.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod525 = trunc i64 %i.ahc to i1
  call void @llvm.assume(i1 %lcmp.mod525)
  %i.aja = getelementptr inbounds nuw [8 x i8], ptr %i.agy, i64 %indvars.iv71.i147.epil.init
  %i.ajb = load double, ptr %i.aja, align 8, !tbaa !48 ; 2 uses
  br label %bb.av

bb.av:                                            ; preds = %bb.aw, %.lr.ph63.i146.epil.preheader
  %indvars.iv73.i148.epil = phi i64 [ %indvars.iv71.i147.epil.init, %.lr.ph63.i146.epil.preheader ], [ %indvars.iv.next74.i149.epil, %bb.aw ] ; 4 uses
  %indvars.iv.next74.i149.epil = add nsw i64 %indvars.iv73.i148.epil, -1 ; 2 uses
  %i.ajc = getelementptr inbounds nuw [8 x i8], ptr %i.agy, i64 %indvars.iv.next74.i149.epil
  %i.ajd = load double, ptr %i.ajc, align 8, !tbaa !48 ; 2 uses
  %i.aje = fcmp nsz ugt double %i.ajd, %i.ajb
  br i1 %i.aje, label %bb.aw, label %stabilize_lsps.exit153.loopexit.epilog-lcssa

bb.aw:                                            ; preds = %bb.av
  %i.ajf = getelementptr inbounds nuw [8 x i8], ptr %i.agy, i64 %indvars.iv73.i148.epil
  store double %i.ajd, ptr %i.ajf, align 8, !tbaa !48
  %i.ajg = icmp sgt i64 %indvars.iv73.i148.epil, 1
  br i1 %i.ajg, label %bb.av, label %stabilize_lsps.exit153.loopexit.epilog-lcssa, !llvm.loop !97

stabilize_lsps.exit153.loopexit.epilog-lcssa:     ; preds = %bb.aw, %bb.av
  %.0.in.lcssa.i150.epil = phi i64 [ %indvars.iv73.i148.epil, %bb.av ], [ 0, %bb.aw ]
  %i.ajh = getelementptr inbounds [8 x i8], ptr %i.agy, i64 %.0.in.lcssa.i150.epil
  store double %i.ajb, ptr %i.ajh, align 8, !tbaa !48
  br label %stabilize_lsps.exit153

stabilize_lsps.exit153:                           ; preds = %bb.ap, %stabilize_lsps.exit153.loopexit.epilog-lcssa, %stabilize_lsps.exit153.loopexit.unr-lcssa, %._crit_edge.i132, %bb.ak
  %i.aji = phi i32 [ %i.agg, %stabilize_lsps.exit153.loopexit.epilog-lcssa ], [ %.pre268, %bb.ak ], [ %i.agg, %._crit_edge.i132 ], [ %i.agg, %stabilize_lsps.exit153.loopexit.unr-lcssa ], [ %i.agg, %bb.ap ]
  %i.ajj = mul nuw nsw i64 %indvars.iv260, 160    ; 2 uses
  %i.ajk = getelementptr inbounds nuw [4 x i8], ptr %i.afn, i64 %i.ajj ; 3 uses
  %i.ajl = getelementptr [128 x i8], ptr %i.j, i64 %indvars.iv260 ; 11 uses
  %i.ajm = icmp eq i64 %indvars.iv260, 0
  %i.ajn = getelementptr i8, ptr %i.ajl, i64 -128
  %i.ajo = select i1 %i.ajm, ptr %i.afo, ptr %i.ajn ; 9 uses
  %i.ajp = ptrtoaddr ptr %i.ajo to i64            ; 2 uses
  %i.ajq = load i32, ptr %i.ae, align 8, !tbaa !63
  %i.ajr = trunc nuw nsw i64 %i.ajj to i32        ; 4 uses
  %i.ajs = add nsw i32 %i.ajq, %i.ajr
  %i.ajt = sext i32 %i.ajs to i64
  %i.aju = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.ajt ; 2 uses
  %i.ajv = add nsw i32 %i.aji, %i.ajr
  %i.ajw = sext i32 %i.ajv to i64
  %i.ajx = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.ajw ; 5 uses
  %i.ajy = load ptr, ptr %i.p, align 8, !tbaa !9  ; 40 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajy, i64 24
  %i.aka = load i32, ptr %i.at, align 8, !tbaa !56 ; 4 uses
  %i.akb = load i32, ptr %i.ay, align 8, !tbaa !55 ; 7 uses
  %i.akc = load ptr, ptr %.0114, align 8, !tbaa !53 ; 7 uses
end_hunk_1
