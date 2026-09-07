Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vividas?download=true
inline.NumInlined: 20
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@viv_read_packet:bb.a
  %i.fw = add nsw i32 %i.fv, 1
  store i32 %i.fw, ptr %i.bm, align 4, !tbaa !61
  br label %.thread164

.thread164:                                       ; preds = %bb.q, %bb.o, %bb.v, %bb.u, %bb.l, %bb.n, %bb.s, %bb.m, %bb.j, %bb.i, %bb.g, %bb.e, %bb.d, %bb.b, %bb.a, %bb.x
  %.6 = phi i32 [ -1094995529, %bb.a ], [ -541478725, %bb.b ], [ %i.s, %bb.d ], [ -1094995529, %bb.i ], [ 0, %bb.x ], [ -1094995529, %bb.j ], [ -1094995529, %bb.m ], [ -1094995529, %bb.g ], [ 0, %bb.e ], [ -1094995529, %bb.u ], [ -1094995529, %bb.l ], [ %i.co, %bb.n ], [ -1094995529, %bb.s ], [ %i.er, %bb.v ], [ -1094995529, %bb.o ], [ -1094995529, %bb.q ]
  ret i32 %.6
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @viv_read_close(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  tail call void @av_freep(ptr noundef nonnull %i.c) #7
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  tail call void @av_freep(ptr noundef nonnull %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @av_freep(ptr noundef nonnull %i.e) #7
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @av_freep(ptr noundef nonnull %i.f) #7
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @viv_read_seek(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i64 noundef %2, i32 %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 10 uses
  %i.c = icmp eq i32 %1, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !57   ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !59
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = sext i32 %1 to i64
  %i.i = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !59
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load i64, ptr %i.g, align 8
  %i.m = load i64, ptr %i.k, align 8
  %i.n = tail call i64 @av_rescale_q(i64 noundef %2, i64 %i.l, i64 %i.m) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.040 = phi i64 [ %i.n, %bb.b ], [ %2, %bb.a ]  ; 2 uses
  %i.o = load i32, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %.not4551 = icmp sgt i32 %i.o, 0
  br i1 %.not4551, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !45
  %wide.trip.count = zext nneg i32 %i.o to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 4 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %indvars.iv ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !49   ; 2 uses
  %.not = icmp slt i64 %.040, %i.t
  br i1 %.not, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !50
  %i.w = sext i32 %i.v to i64
  %i.x = add nsw i64 %i.t, %i.w
  %i.y = icmp slt i64 %.040, %i.x
  br i1 %i.y, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.z = trunc nuw nsw i64 %indvars.iv to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 %i.z, ptr %i.aa, align 8, !tbaa !53
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !26
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !52
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !48
  %i.ah = add nsw i64 %i.ag, %i.ae
  %i.ai = tail call i64 @avio_seek(ptr noundef %i.ac, i64 noundef %i.ah, i32 noundef 0) #7 ; 0 uses
  tail call fastcc void @load_sb_block(ptr noundef %0, ptr noundef nonnull %i.b, i32 noundef 0)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !42
  %.not44 = icmp eq i32 %i.ak, 0
  br i1 %.not44, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !57 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !59
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !39
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 0, ptr %i.ar, align 4, !tbaa !55
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 0, ptr %i.as, align 8, !tbaa !56
  %i.at = load ptr, ptr %i.p, align 8, !tbaa !45
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.at, i64 %indvars.iv
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !49
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 152
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !44 ; 2 uses
  %.sroa.0.0.insert.ext.i = zext i32 %i.ay to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.0.insert.ext.i, 4294967296
  %i.az = load ptr, ptr %i.am, align 8, !tbaa !59
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load i64, ptr %i.ba, align 8            ; 2 uses
  %.sroa.01.0.insert.insert.i = tail call i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 32)
  %i.bc = tail call i64 @av_rescale_q(i64 noundef %i.aw, i64 %.sroa.0.0.insert.insert.i, i64 %.sroa.01.0.insert.insert.i) #9
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.be = sext i32 %i.ay to i64
  %i.bf = add nsw i64 %i.bc, %i.be
  store i64 %i.bf, ptr %i.bd, align 8, !tbaa !60
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store i32 0, ptr %i.bg, align 4, !tbaa !61
  br label %.loopexit

bb.i:                                             ; preds = %bb.d, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !98

.loopexit:                                        ; preds = %bb.i, %bb.c, %bb.h
  %.not4547 = phi i32 [ 1, %bb.h ], [ 0, %bb.c ], [ 0, %bb.i ]
  ret i32 %.not4547
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i64 @avio_skip(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i64 @ffio_read_varlen(ptr noundef) local_unnamed_addr #3

declare i32 @avio_r8(ptr noundef) local_unnamed_addr #3

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i64 @avio_seek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ffio_read_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @avio_rl32(ptr noundef) local_unnamed_addr #3

declare i32 @avio_feof(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @read_vblock(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1, i32 noundef %2, ptr nofree noundef nonnull captures(none) %3, i32 noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 9 uses
  %i.b = alloca [4 x i8], align 4                 ; 9 uses
  %i.c = alloca [4 x i8], align 4                 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.d = call i32 @avio_read(ptr noundef %0, ptr noundef nonnull %i.c, i32 noundef 4) #7
  %.not = icmp eq i32 %i.d, 4
  br i1 %.not, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.e = and i32 %4, 3                            ; 3 uses
  %i.f = sub i32 0, %4
  %i.g = and i32 %i.f, 3                          ; 7 uses
  %.not43.i = icmp eq i32 %i.e, 0                 ; 2 uses
  %.pre = load i32, ptr %3, align 4, !tbaa !27    ; 5 uses
  br i1 %.not43.i, label %..thread_crit_edge, label %bb.c

..thread_crit_edge:                               ; preds = %bb.b
  %.pre55 = zext nneg i32 %i.g to i64
  br label %.thread

bb.c:                                             ; preds = %bb.b
  %i.h = sub i32 %.pre, %2
  %i.i = zext nneg i32 %i.e to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.i ; 2 uses
  %i.k = zext nneg i32 %i.g to i64                ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull readonly align 4 %i.c, i64 %i.k, i1 false)
  %i.l = load i32, ptr %i.b, align 4, !tbaa !28
  %i.m = xor i32 %i.l, %i.h
  store i32 %i.m, ptr %i.b, align 4, !tbaa !28
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.c, ptr nonnull align 1 %i.j, i64 %i.k, i1 false)
  %i.n = icmp eq i32 %i.g, 0
  br i1 %i.n, label %.thread, label %.lr.ph.i52.i

.thread:                                          ; preds = %..thread_crit_edge, %bb.c
  %.pre-phi = phi i64 [ %.pre55, %..thread_crit_edge ], [ 0, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 %.pre-phi ; 2 uses
  %i.p = load i32, ptr %i.o, align 1, !tbaa !28
  %i.q = xor i32 %i.p, %.pre
  store i32 %i.q, ptr %i.o, align 1, !tbaa !28
  %5 = add i32 %.pre, %2
  store i32 %5, ptr %3, align 4, !tbaa !27
  br label %bb.d

.lr.ph.i52.i:                                     ; preds = %bb.c
  %i.r = sub nuw nsw i32 4, %i.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.k ; 2 uses
  %i.t = zext nneg i32 %i.r to i64                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.b, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.s, i64 %i.t, i1 false)
  %i.u = load i32, ptr %i.b, align 4, !tbaa !28
  %i.v = xor i32 %i.u, %.pre
  store i32 %i.v, ptr %i.b, align 4, !tbaa !28
  %6 = add i32 %.pre, %2
  store i32 %6, ptr %3, align 4, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.s, ptr noundef nonnull align 4 dereferenceable(1) %i.b, i64 %i.t, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph.i52.i, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  %i.w = load i8, ptr %i.c, align 4, !tbaa !28    ; 2 uses
  %i.x = and i8 %i.w, 127
  %i.y = zext nneg i8 %i.x to i32                 ; 2 uses
  %.not15.i = icmp sgt i8 %i.w, -1
  br i1 %.not15.i, label %get_v.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.013.i.ptr.1 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.z = load i8, ptr %.013.i.ptr.1, align 1, !tbaa !28 ; 2 uses
  %i.aa = shl nuw nsw i32 %i.y, 7
  %i.ab = and i8 %i.z, 127
  %i.ac = zext nneg i8 %i.ab to i32
  %i.ad = or disjoint i32 %i.aa, %i.ac            ; 2 uses
  %.not15.i.1 = icmp sgt i8 %i.z, -1
  br i1 %.not15.i.1, label %get_v.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.013.i.ptr.2 = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.ae = load i8, ptr %.013.i.ptr.2, align 2, !tbaa !28 ; 2 uses
  %i.af = shl nuw nsw i32 %i.ad, 7
  %i.ag = and i8 %i.ae, 127
  %i.ah = zext nneg i8 %i.ag to i32
  %i.ai = or disjoint i32 %i.af, %i.ah            ; 2 uses
  %.not15.i.2 = icmp sgt i8 %i.ae, -1
  br i1 %.not15.i.2, label %get_v.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.013.i.ptr.3 = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.aj = load i8, ptr %.013.i.ptr.3, align 1, !tbaa !28
  %i.ak = shl nuw nsw i32 %i.ai, 7
  %i.al = and i8 %i.aj, 127
  %i.am = zext nneg i8 %i.al to i32
  %i.an = or disjoint i32 %i.ak, %i.am
  br label %get_v.exit

get_v.exit:                                       ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %.012.i = phi i32 [ %i.ai, %bb.f ], [ %i.y, %bb.d ], [ %i.an, %bb.g ], [ %i.ad, %bb.e ] ; 4 uses
  %i.ao = icmp samesign ult i32 %.012.i, 4
  br i1 %i.ao, label %bb.q, label %get_v.exit.thread

get_v.exit.thread:                                ; preds = %get_v.exit
  %i.ap = zext nneg i32 %.012.i to i64
  %i.aq = call noalias ptr @av_malloc(i64 noundef %i.ap) #7 ; 5 uses
  %.not27 = icmp eq ptr %i.aq, null
  br i1 %.not27, label %bb.q, label %bb.h

bb.h:                                             ; preds = %get_v.exit.thread
  store i32 %.012.i, ptr %1, align 4, !tbaa !27
  %i.ar = add nsw i32 %.012.i, -4                 ; 8 uses
  %i.as = load i32, ptr %i.c, align 4
  store i32 %i.as, ptr %i.aq, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 4 ; 5 uses
  %i.au = call i32 @avio_read(ptr noundef %0, ptr noundef nonnull %i.at, i32 noundef %i.ar) #7
  %i.av = icmp eq i32 %i.au, %i.ar
  br i1 %i.av, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %.not.i28 = icmp eq i32 %i.ar, 0
  br i1 %.not.i28, label %decode_block.exit43, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %.not43.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = load i32, ptr %3, align 4, !tbaa !27
  %i.ax = sub i32 %i.aw, %2
  %i.ay = icmp samesign ugt i32 %i.g, %i.ar
  br i1 %i.ay, label %bb.l, label %.lr.ph.i.i

bb.l:                                             ; preds = %bb.k
  call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef null, ptr noundef nonnull @.str.4) #7
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %bb.k
  %.0.i30 = phi i32 [ %i.ar, %bb.l ], [ %i.g, %bb.k ] ; 3 uses
  %i.az = zext nneg i32 %i.e to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.az ; 2 uses
  %i.bb = zext nneg i32 %.0.i30 to i64            ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ba, ptr nonnull readonly align 1 %i.at, i64 %i.bb, i1 false)
  %i.bc = load i32, ptr %i.a, align 4, !tbaa !28
  %i.bd = xor i32 %i.bc, %i.ax
  store i32 %i.bd, ptr %i.a, align 4, !tbaa !28
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.at, ptr nonnull align 1 %i.ba, i64 %i.bb, i1 false)
  %i.be = sub nsw i32 %i.ar, %.0.i30
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i, %bb.j
  %.038.i31 = phi i32 [ %i.be, %.lr.ph.i.i ], [ %i.ar, %bb.j ] ; 4 uses
  %.1.i32 = phi i32 [ %.0.i30, %.lr.ph.i.i ], [ %i.g, %bb.j ]
  %i.bf = icmp ugt i32 %.038.i31, 3
  br i1 %i.bf, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bg = zext nneg i32 %.1.i32 to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bg ; 3 uses
  %i.bi = lshr i32 %.038.i31, 2                   ; 3 uses
  %i.bj = load i32, ptr %3, align 4, !tbaa !27    ; 3 uses
  %i.bk = add nsw i32 %i.bi, -1                   ; 2 uses
  %i.bl = zext i32 %i.bk to i64
  %i.bm = add nuw nsw i64 %i.bl, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.bk, 7
  br i1 %min.iters.check, label %.lr.ph.i45.i36.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.n
  %n.vec = and i64 %i.bm, 8589934584              ; 4 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %2, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bn = trunc i64 %n.vec to i32                 ; 2 uses
  %i.bo = mul i32 %2, %i.bn
  %i.bp = add i32 %i.bj, %i.bo                    ; 2 uses
  %i.bq = shl nuw nsw i64 %n.vec, 2
  %i.br = getelementptr i8, ptr %i.bh, i64 %i.bq
  %i.bs = sub i32 %i.bi, %i.bn
  %i.bt = shl <4 x i32> %broadcast.splat, splat (i32 2) ; 3 uses
  %broadcast.splatinsert67 = insertelement <4 x i32> poison, i32 %i.bj, i64 0
  %broadcast.splat68 = shufflevector <4 x i32> %broadcast.splatinsert67, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bu = mul <4 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3>
  %induction = add <4 x i32> %broadcast.splat68, %i.bu
  %invariant.op = add <4 x i32> %i.bt, %i.bt
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph ], [ %vec.ind.next.reass, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, %i.bt
  %i.bv = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bh, i64 %i.bv ; 3 uses
  %i.bw = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 1, !tbaa !28
  %wide.load69 = load <4 x i32>, ptr %i.bw, align 1, !tbaa !28
  %i.bx = xor <4 x i32> %wide.load, %vec.ind
  %i.by = xor <4 x i32> %wide.load69, %step.add
  store <4 x i32> %i.bx, ptr %next.gep, align 1, !tbaa !28
  store <4 x i32> %i.by, ptr %i.bw, align 1, !tbaa !28
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next.reass = add <4 x i32> %vec.ind, %invariant.op
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !99

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bm, %n.vec
  br i1 %cmp.n, label %xor_block.exit51.i42, label %.lr.ph.i45.i36.preheader

.lr.ph.i45.i36.preheader:                         ; preds = %bb.n, %middle.block
  %.021.i46.i37.ph = phi i32 [ %i.bj, %bb.n ], [ %i.bp, %middle.block ]
  %.01420.i47.i38.ph = phi ptr [ %i.bh, %bb.n ], [ %i.br, %middle.block ]
  %.01618.i49.i40.ph = phi i32 [ %i.bi, %bb.n ], [ %i.bs, %middle.block ]
  br label %.lr.ph.i45.i36

.lr.ph.i45.i36:                                   ; preds = %.lr.ph.i45.i36.preheader, %.lr.ph.i45.i36
  %.021.i46.i37 = phi i32 [ %i.cc, %.lr.ph.i45.i36 ], [ %.021.i46.i37.ph, %.lr.ph.i45.i36.preheader ] ; 2 uses
  %.01420.i47.i38 = phi ptr [ %i.cd, %.lr.ph.i45.i36 ], [ %.01420.i47.i38.ph, %.lr.ph.i45.i36.preheader ] ; 3 uses
  %.01618.i49.i40 = phi i32 [ %i.ce, %.lr.ph.i45.i36 ], [ %.01618.i49.i40.ph, %.lr.ph.i45.i36.preheader ]
  %i.ca = load i32, ptr %.01420.i47.i38, align 1, !tbaa !28
  %i.cb = xor i32 %i.ca, %.021.i46.i37
  store i32 %i.cb, ptr %.01420.i47.i38, align 1, !tbaa !28
  %i.cc = add i32 %.021.i46.i37, %2               ; 2 uses
  %i.cd = getelementptr i8, ptr %.01420.i47.i38, i64 4
  %i.ce = add nsw i32 %.01618.i49.i40, -1         ; 2 uses
  %.not.i50.i41 = icmp eq i32 %i.ce, 0
  br i1 %.not.i50.i41, label %xor_block.exit51.i42, label %.lr.ph.i45.i36, !llvm.loop !100

xor_block.exit51.i42:                             ; preds = %.lr.ph.i45.i36, %middle.block
  %.lcssa = phi i32 [ %i.bp, %middle.block ], [ %i.cc, %.lr.ph.i45.i36 ]
  store i32 %.lcssa, ptr %3, align 4, !tbaa !27
  %i.cf = and i32 %.038.i31, 3
  br label %bb.o

bb.o:                                             ; preds = %xor_block.exit51.i42, %bb.m
  %.139.i33 = phi i32 [ %i.cf, %xor_block.exit51.i42 ], [ %.038.i31, %bb.m ] ; 3 uses
  %.not44.i34 = icmp eq i32 %.139.i33, 0
  br i1 %.not44.i34, label %decode_block.exit43, label %.lr.ph.i52.i35

.lr.ph.i52.i35:                                   ; preds = %bb.o
  %i.cg = sub nsw i32 %i.ar, %.139.i33
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ch ; 2 uses
  %i.cj = zext nneg i32 %.139.i33 to i64          ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.a, ptr nonnull readonly align 1 %i.ci, i64 %i.cj, i1 false)
  %i.ck = load i32, ptr %3, align 4, !tbaa !27    ; 2 uses
  %i.cl = load i32, ptr %i.a, align 4, !tbaa !28
  %i.cm = xor i32 %i.cl, %i.ck
  store i32 %i.cm, ptr %i.a, align 4, !tbaa !28
  %7 = add i32 %i.ck, %2
  store i32 %7, ptr %3, align 4, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ci, ptr nonnull align 4 %i.a, i64 %i.cj, i1 false)
  br label %decode_block.exit43

decode_block.exit43:                              ; preds = %bb.i, %bb.o, %.lr.ph.i52.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.q

bb.p:                                             ; preds = %bb.h
  call void @av_free(ptr noundef nonnull %i.aq) #7
  br label %bb.q

bb.q:                                             ; preds = %decode_block.exit43, %bb.p, %get_v.exit.thread, %get_v.exit, %bb.a
  %.023 = phi ptr [ null, %get_v.exit ], [ null, %bb.a ], [ null, %get_v.exit.thread ], [ %i.aq, %decode_block.exit43 ], [ null, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  ret ptr %.023
}

declare void @av_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @load_sb_block(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) unnamed_addr #1 {
bb.a:
  %.sroa.084.i = alloca i32, align 4              ; 6 uses
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = alloca [8 x i8], align 4                 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !54   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @av_free(ptr noundef nonnull %i.d) #7
  store ptr null, ptr %i.c, align 8, !tbaa !54
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !104  ; 2 uses
  %.not37 = icmp eq ptr %i.f, null
  br i1 %.not37, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @av_free(ptr noundef nonnull %i.f) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !26   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.j = call i32 @avio_read(ptr noundef %i.h, ptr noundef nonnull %i.b, i32 noundef 8) #7
  %i.k = icmp slt i32 %i.j, 8
  br i1 %i.k, label %read_sb_block.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load i32, ptr %i.i, align 4, !tbaa !27   ; 3 uses
  %i.m = load i32, ptr %i.b, align 4, !tbaa !28
  %i.n = xor i32 %i.m, %i.l                       ; 5 uses
  %.sroa.0.sroa.9.0.extract.shift.i = lshr i32 %i.n, 16 ; 2 uses
  %.sroa.0.sroa.11.0.extract.shift.i = lshr i32 %i.n, 24 ; 2 uses
  %i.o = shl i32 %i.l, 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !28
  %i.r = xor i32 %i.q, %i.o                       ; 8 uses
  %.sroa.13.sroa.7.0.extract.shift.i = lshr i32 %i.r, 8 ; 2 uses
  %.sroa.13.sroa.9.0.extract.shift.i = lshr i32 %i.r, 16 ; 3 uses
  %.sroa.13.sroa.11.0.extract.shift.i = lshr i32 %i.r, 24 ; 3 uses
  %i.s = and i32 %.sroa.0.sroa.9.0.extract.shift.i, 127 ; 2 uses
  %i.t = and i32 %i.n, 8388608
  %.not15.i.i = icmp eq i32 %i.t, 0
  br i1 %.not15.i.i, label %get_v.exit.i, label %decode_block.exit.1.i

decode_block.exit.1.i:                            ; preds = %bb.f
  %i.u = shl nuw nsw i32 %i.s, 7
  %i.v = and i32 %.sroa.0.sroa.11.0.extract.shift.i, 127
  %i.w = or disjoint i32 %i.u, %i.v               ; 2 uses
  %.not15.i.1.i = icmp sgt i32 %i.n, -1
  br i1 %.not15.i.1.i, label %get_v.exit.i, label %decode_block.exit.2.i

decode_block.exit.2.i:                            ; preds = %decode_block.exit.1.i
  %i.x = shl nuw nsw i32 %i.w, 7
  %i.y = and i32 %i.r, 127
  %i.z = or disjoint i32 %i.x, %i.y               ; 2 uses
  %i.aa = and i32 %i.r, 128
  %.not15.i.2.i = icmp eq i32 %i.aa, 0
  br i1 %.not15.i.2.i, label %get_v.exit.i, label %decode_block.exit.3.i

decode_block.exit.3.i:                            ; preds = %decode_block.exit.2.i
  %i.ab = shl nuw nsw i32 %i.z, 7
  %i.ac = and i32 %.sroa.13.sroa.7.0.extract.shift.i, 127
  %i.ad = or disjoint i32 %i.ab, %i.ac            ; 4 uses
  %i.ae = and i32 %i.r, 32768
  %.not15.i.3.i = icmp eq i32 %i.ae, 0
  br i1 %.not15.i.3.i, label %get_v.exit.i, label %decode_block.exit.4.i

decode_block.exit.4.i:                            ; preds = %decode_block.exit.3.i
  %i.af = and i32 %.sroa.13.sroa.9.0.extract.shift.i, 255
  %i.ag = xor i32 %i.af, 33554431
  %.not14.i.4.i = icmp samesign ult i32 %i.ad, %i.ag
  br i1 %.not14.i.4.i, label %bb.g, label %get_v.exit.i

bb.g:                                             ; preds = %decode_block.exit.4.i
  %i.ah = shl nuw i32 %i.ad, 7
  %i.ai = and i32 %.sroa.13.sroa.9.0.extract.shift.i, 127
  %i.aj = or disjoint i32 %i.ah, %i.ai            ; 3 uses
  %i.ak = and i32 %i.r, 8388608
  %.not15.i.4.i = icmp ne i32 %i.ak, 0
  %i.al = xor i32 %.sroa.13.sroa.11.0.extract.shift.i, 33554431
  %.not14.i.5.i = icmp ult i32 %i.aj, %i.al
  %or.cond.i = select i1 %.not15.i.4.i, i1 %.not14.i.5.i, i1 false
  br i1 %or.cond.i, label %bb.h, label %get_v.exit.i

bb.h:                                             ; preds = %bb.g
  %i.am = shl nuw i32 %i.aj, 7
  %i.an = and i32 %.sroa.13.sroa.11.0.extract.shift.i, 127
  %i.ao = or disjoint i32 %i.am, %i.an
  br label %get_v.exit.i

get_v.exit.i:                                     ; preds = %bb.h, %bb.g, %decode_block.exit.4.i, %decode_block.exit.3.i, %decode_block.exit.2.i, %decode_block.exit.1.i, %bb.f
  %.012.i.i = phi i32 [ %i.ao, %bb.h ], [ %i.aj, %bb.g ], [ %i.s, %bb.f ], [ %i.ad, %decode_block.exit.4.i ], [ %i.ad, %decode_block.exit.3.i ], [ %i.w, %decode_block.exit.1.i ], [ %i.z, %decode_block.exit.2.i ] ; 2 uses
  %i.ap = and i32 %i.n, 65535
  %or.cond.not.i = icmp eq i32 %i.ap, 16979
  br i1 %or.cond.not.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %get_v.exit.i
  %.not.i = icmp eq i32 %2, 0
  %.not44.i = icmp eq i32 %.012.i.i, %2
  %or.cond48.i = select i1 %.not.i, i1 true, i1 %.not44.i
  br i1 %or.cond48.i, label %bb.u, label %bb.j

bb.j:                                             ; preds = %bb.i, %get_v.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i64 16979, ptr %i.a, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  %i.ar = lshr i32 %2, 28                         ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = trunc nuw nsw i32 %i.ar to i8
  %i.at = or disjoint i8 %i.as, -128
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.at, ptr %i.aq, align 2, !tbaa !28
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0.i.i.i = phi ptr [ %i.au, %bb.k ], [ %i.aq, %bb.j ] ; 3 uses
  %i.av = lshr i32 %2, 21                         ; 2 uses
  %.not15.i.i.i = icmp eq i32 %i.av, 0
  br i1 %.not15.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = trunc i32 %i.av to i8
  %i.ax = or i8 %i.aw, -128
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1
  store i8 %i.ax, ptr %.0.i.i.i, align 1, !tbaa !28
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.1.i.i.i = phi ptr [ %i.ay, %bb.m ], [ %.0.i.i.i, %bb.l ] ; 3 uses
  %i.az = lshr i32 %2, 14                         ; 2 uses
  %.not16.i.i.i = icmp eq i32 %i.az, 0
  br i1 %.not16.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = trunc i32 %i.az to i8
  %i.bb = or i8 %i.ba, -128
  %i.bc = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 1
  store i8 %i.bb, ptr %.1.i.i.i, align 1, !tbaa !28
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.2.i.i.i = phi ptr [ %i.bc, %bb.o ], [ %.1.i.i.i, %bb.n ]
  %i.bd = lshr i32 %2, 7                          ; 2 uses
  %.not17.i.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not17.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.be = trunc i32 %i.bd to i8
  %i.bf = or i8 %i.be, -128
  store i8 %i.bf, ptr %.2.i.i.i, align 1, !tbaa !28
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bg = load i32, ptr %i.b, align 4, !tbaa !28
  %i.bh = load i32, ptr %i.a, align 8, !tbaa !28  ; 6 uses
  %i.bi = xor i32 %i.bh, %i.bg                    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %.sroa.0.sroa.9.0.extract.shift119.i = lshr i32 %i.bh, 16 ; 2 uses
  %.sroa.0.sroa.11.0.extract.shift121.i = lshr i32 %i.bh, 24 ; 2 uses
  %i.bj = shl i32 %i.bi, 1
  %i.bk = load i32, ptr %i.p, align 4, !tbaa !28
  %i.bl = xor i32 %i.bk, %i.bj                    ; 8 uses
  %.sroa.13.sroa.7.0.extract.shift110.i = lshr i32 %i.bl, 8 ; 2 uses
  %.sroa.13.sroa.9.0.extract.shift112.i = lshr i32 %i.bl, 16 ; 3 uses
  %.sroa.13.sroa.11.0.extract.shift114.i = lshr i32 %i.bl, 24 ; 3 uses
  %i.bm = and i32 %.sroa.0.sroa.9.0.extract.shift119.i, 127 ; 2 uses
  %i.bn = and i32 %i.bh, 8388608
  %.not15.i65.i = icmp eq i32 %i.bn, 0
end_hunk_0
