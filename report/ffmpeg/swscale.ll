Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/swscale?download=true
inline.NumInlined: 41
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 12
begin_hunk_0_@sws_send_slice:bb.a
}

declare i32 @ff_range_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @sws_receive_slice_alignment(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !71
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.pn = phi ptr [ %i.c, %bb.b ], [ %0, %bb.a ]
  %.0.in = getelementptr inbounds nuw i8, ptr %.pn, i64 53204
  %.0 = load i32, ptr %.0.in, align 4, !tbaa !72
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @sws_receive_slice(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x ptr], align 16               ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70   ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %sws_receive_slice_alignment.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !71
  br label %sws_receive_slice_alignment.exit

sws_receive_slice_alignment.exit:                 ; preds = %bb.a, %bb.b
  %.pn.i = phi ptr [ %i.d, %bb.b ], [ %0, %bb.a ]
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 53204
  %.0.i = load i32, ptr %.0.in.i, align 4, !tbaa !72 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 53240
  %i.f = load i32, ptr %i.e, align 8, !tbaa !56
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.o, label %bb.c

bb.c:                                             ; preds = %sws_receive_slice_alignment.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.h = load i32, ptr %i.g, align 8, !tbaa !59
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.d, label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !211  ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !213
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.o

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !214  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.q = load i32, ptr %i.p, align 4, !tbaa !73
  %i.r = icmp eq i32 %i.o, %i.q
  br i1 %i.r, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %.not64 = icmp eq i32 %1, 0
  br i1 %.not64, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.t = load i32, ptr %i.s, align 4, !tbaa !74
  %i.u = icmp ult i32 %2, %i.t
  br i1 %i.u, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.v = urem i32 %1, %.0.i
  %.not65 = icmp eq i32 %i.v, 0
  br i1 %.not65, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.w = urem i32 %2, %.0.i
  %.not66 = icmp eq i32 %i.w, 0
  br i1 %.not66, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.5, i32 noundef %1, i32 noundef %2, i32 noundef %.0.i) #14
  br label %bb.o

bb.k:                                             ; preds = %bb.i, %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.y = load ptr, ptr %i.x, align 16, !tbaa !215 ; 2 uses
  %.not67 = icmp eq ptr %i.y, null
  br i1 %.not67, label %.preheader, label %bb.l

.preheader:                                       ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.aa = load ptr, ptr %i.z, align 16, !tbaa !58 ; 8 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 64 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !44
  %i.ae = lshr i32 %1, %i.ad
  %i.af = zext i32 %i.ae to i64                   ; 4 uses
  %i.ag = load i32, ptr %i.ab, align 4, !tbaa !39
  %i.ah = sext i32 %i.ag to i64
  %i.ai = mul nsw i64 %i.af, %i.ah
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !43
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 %i.ai
  store ptr %i.ak, ptr %i.a, align 16, !tbaa !43
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 68
  %i.am = load i32, ptr %i.al, align 4, !tbaa !39
  %i.an = sext i32 %i.am to i64
  %i.ao = mul nsw i64 %i.af, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !43
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 %i.ao
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !43
  %i.at = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  %i.au = load i32, ptr %i.at, align 8, !tbaa !39
  %i.av = sext i32 %i.au to i64
  %i.aw = mul nsw i64 %i.af, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !43
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 %i.aw
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.az, ptr %i.ba, align 16, !tbaa !43
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aa, i64 76
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !39
  %i.bd = sext i32 %i.bc to i64
  %i.be = mul nsw i64 %i.af, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !43
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 %i.be
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !43
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !57 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
  %i.bm = call fastcc i32 @scale_internal(ptr noundef nonnull %0, ptr noundef %i.bk, ptr noundef nonnull %i.bl, i32 noundef 0, i32 noundef %i.o, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ab, i32 noundef %1, i32 noundef %2)
  br label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !75
  %i.bp = load ptr, ptr %i.c, align 8, !tbaa !71
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 44
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !76
  %i.bs = icmp eq i32 %i.br, 3
  %spec.select = select i1 %i.bs, i32 1, i32 %i.bo
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 %1, ptr %i.bt, align 16, !tbaa !77
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i32 %2, ptr %i.bu, align 4, !tbaa !78
  tail call void @avpriv_slicethread_execute(ptr noundef nonnull %i.y, i32 noundef %spec.select, i32 noundef 0) #14
  %i.bv = load i32, ptr %i.bn, align 8, !tbaa !75 ; 3 uses
  %i.bw = icmp sgt i32 %i.bv, 0
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.by = load ptr, ptr %i.bx, align 16, !tbaa !79 ; 2 uses
  br i1 %i.bw, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.l
  %wide.trip.count = zext nneg i32 %i.bv to i64
  br label %bb.n

bb.m:                                             ; preds = %bb.n
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.n, !llvm.loop !210

bb.n:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !39 ; 2 uses
  %i.cb = icmp slt i32 %i.ca, 0
  br i1 %i.cb, label %._crit_edge, label %bb.m

._crit_edge:                                      ; preds = %bb.m, %bb.n, %bb.l
  %.058 = phi i32 [ 0, %bb.l ], [ %i.ca, %bb.n ], [ 0, %bb.m ]
  %i.cc = sext i32 %i.bv to i64
  %i.cd = shl nsw i64 %i.cc, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.by, i8 0, i64 %i.cd, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.c, %bb.d, %bb.e, %sws_receive_slice_alignment.exit, %.preheader, %._crit_edge, %bb.j
  %.060 = phi i32 [ -22, %bb.j ], [ %.058, %._crit_edge ], [ %i.bm, %.preheader ], [ -22, %sws_receive_slice_alignment.exit ], [ -11, %bb.e ], [ -11, %bb.d ], [ -11, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.060
}

declare void @avpriv_slicethread_execute(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nounwind uwtable
define internal fastcc i32 @scale_internal(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, ptr nofree noundef readonly captures(address_is_null) %6, i32 noundef %7, i32 noundef %8) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x ptr], align 16               ; 21 uses
  %i.b = alloca [4 x ptr], align 16               ; 21 uses
  %i.c = alloca [4 x i32], align 16               ; 12 uses
  %i.d = alloca [4 x i32], align 16               ; 15 uses
  %i.e = icmp sgt i32 %7, 0
  br i1 %i.e, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.g = load i32, ptr %i.f, align 4, !tbaa !74
  %i.h = icmp slt i32 %8, %i.g
  br i1 %i.h, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.j = load i32, ptr %i.i, align 4, !tbaa !80
  %.not = icmp ne i32 %i.j, 0
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.c, %bb.b
  %i.k = phi i1 [ true, %bb.b ], [ false, %bb.c ], [ true, %bb.a ] ; 4 uses
  %or.cond14 = phi i1 [ true, %bb.b ], [ %.not, %bb.c ], [ true, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 8 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !218
  %i.n = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.m) #14 ; 2 uses
  %.not.i366 = icmp eq ptr %i.n, null
  br i1 %.not.i366, label %bb.d, label %isBayer.exit367

bb.d:                                             ; preds = %.thread
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 865) #14
  tail call void @abort() #15
  unreachable

isBayer.exit367:                                  ; preds = %.thread
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !42
  %i.q = and i64 %i.p, 256
  %.not319 = icmp eq i64 %i.q, 0
  br i1 %.not319, label %bb.e, label %bb.f

bb.e:                                             ; preds = %isBayer.exit367
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.s = load i32, ptr %i.r, align 4, !tbaa !34
  %notmask = shl nsw i32 -1, %i.s
  %i.t = xor i32 %notmask, -1
  br label %bb.f

bb.f:                                             ; preds = %isBayer.exit367, %bb.e
  %i.u = phi i32 [ %i.t, %bb.e ], [ 1, %isBayer.exit367 ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 7 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !62
  %i.x = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.w) #14 ; 2 uses
  %.not.i364 = icmp eq ptr %i.x, null
  br i1 %.not.i364, label %bb.g, label %isBayer.exit365

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 865) #14
  tail call void @abort() #15
  unreachable

isBayer.exit365:                                  ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !42
  %i.aa = and i64 %i.z, 256
  %.not320 = icmp eq i64 %i.aa, 0
  br i1 %.not320, label %bb.h, label %bb.i

bb.h:                                             ; preds = %isBayer.exit365
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !44
  %notmask324 = shl nsw i32 -1, %i.ac
  %i.ad = xor i32 %notmask324, -1
  br label %bb.i

bb.i:                                             ; preds = %isBayer.exit365, %bb.h
  %i.ae = phi i32 [ %i.ad, %bb.h ], [ 1, %isBayer.exit365 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  %i.af = insertelement <4 x ptr> poison, ptr %2, i64 0
  %i.ag = insertelement <4 x ptr> %i.af, ptr %6, i64 1
  %i.ah = insertelement <4 x ptr> %i.ag, ptr %5, i64 2
  %i.ai = insertelement <4 x ptr> %i.ah, ptr %1, i64 3
  %i.aj = icmp eq <4 x ptr> %i.ai, splat (ptr null)
  %i.ak = bitcast <4 x i1> %i.aj to i4
  %i.al = icmp eq i4 %i.ak, 0
  br i1 %i.al, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.16) #14
  br label %.critedge360

bb.k:                                             ; preds = %bb.i
  %i.am = and i32 %i.u, %3
  %.not321 = icmp eq i32 %i.am, 0
  br i1 %.not321, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.an = and i32 %i.u, %4
  %.not322 = icmp eq i32 %i.an, 0
  br i1 %.not322, label %._crit_edge411, label %bb.m

._crit_edge411:                                   ; preds = %bb.l
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 60
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !73
  %.pre435 = add nsw i32 %4, %3                   ; 2 uses
  %i.ao = icmp sgt i32 %.pre435, %.pre
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ap = add nsw i32 %4, %3                      ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !73
  %.not323 = icmp eq i32 %i.ap, %i.ar
  br i1 %.not323, label %bb.n, label %bb.q

bb.n:                                             ; preds = %._crit_edge411, %bb.m
  %.pre-phi = phi i32 [ %.pre435, %._crit_edge411 ], [ %i.ap, %bb.m ] ; 3 uses
  %i.as = phi i1 [ %i.ao, %._crit_edge411 ], [ false, %bb.m ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 5 uses
  %i.au = or i32 %4, %3
  %i.av = icmp slt i32 %i.au, 0
  %or.cond10 = or i1 %i.av, %i.as
  br i1 %or.cond10, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = load i32, ptr %i.l, align 8, !tbaa !218
  %i.ax = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.aw) #14 ; 2 uses
  %.not.i363 = icmp eq ptr %i.ax, null
  br i1 %.not.i363, label %bb.p, label %isBayer.exit

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 865) #14
  tail call void @abort() #15
  unreachable

isBayer.exit:                                     ; preds = %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !42
  %i.ba = and i64 %i.az, 256
  %i.bb = icmp ne i64 %i.ba, 0
  %i.bc = icmp slt i32 %4, 2
  %or.cond12 = and i1 %i.bc, %i.bb
  br i1 %or.cond12, label %bb.q, label %bb.r

bb.q:                                             ; preds = %isBayer.exit, %bb.n, %bb.m, %bb.k
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.17, i32 noundef %3, i32 noundef %4) #14
  br label %.critedge360

bb.r:                                             ; preds = %isBayer.exit
  %i.bd = and i32 %i.ae, %7
  %.not325 = icmp eq i32 %i.bd, 0
  br i1 %.not325, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.be = and i32 %i.ae, %8
  %.not326 = icmp eq i32 %i.be, 0
  br i1 %.not326, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bf = add nsw i32 %8, %7
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !74
  %.not327 = icmp eq i32 %i.bf, %i.bh
  br i1 %.not327, label %.thread462, label %bb.v

bb.u:                                             ; preds = %bb.s
  %.phi.trans.insert413 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.pre414 = load i32, ptr %.phi.trans.insert413, align 4, !tbaa !74
  %.pre436.a = add nsw i32 %8, %7
  %i.bi = icmp sgt i32 %.pre436.a, %.pre414
  br i1 %i.bi, label %bb.v, label %.thread462

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.r
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.17, i32 noundef %7, i32 noundef %8) #14
  br label %.critedge360

.thread462:                                       ; preds = %bb.t, %bb.u
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 4 uses
  %i.bk = load i32, ptr %i.l, align 8, !tbaa !218
  %i.bl = tail call fastcc i32 @check_image_pointers(ptr noundef %1, i32 noundef %i.bk, ptr noundef %2)
  %.not328 = icmp eq i32 %i.bl, 0
  br i1 %.not328, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.thread462
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.18) #14
  br label %.critedge360

bb.x:                                             ; preds = %.thread462
  %i.bm = load i32, ptr %i.v, align 4, !tbaa !62
  %i.bn = tail call fastcc i32 @check_image_pointers(ptr noundef %5, i32 noundef %i.bm, ptr noundef %6)
  %.not329 = icmp eq i32 %i.bn, 0
  br i1 %.not329, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.19) #14
  br label %.critedge360

bb.z:                                             ; preds = %bb.x
  %i.bo = icmp eq i32 %4, 0
  br i1 %i.bo, label %.critedge360, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !219
  %.not330 = icmp eq i32 %i.bq, 0
  %.phi.trans.insert416 = getelementptr inbounds nuw i8, ptr %0, i64 296
  %.pre417 = load ptr, ptr %.phi.trans.insert416, align 8, !tbaa !71
  %i.br = icmp eq ptr %.pre417, null              ; 2 uses
  br i1 %.not330, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.br, label %.thread464, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bs = tail call fastcc i32 @scale_gamma(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8)
  br label %.critedge360

bb.ad:                                            ; preds = %bb.aa
  br i1 %i.br, label %.thread464, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bt = tail call fastcc i32 @scale_cascaded(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8)
  br label %.critedge360

.thread464:                                       ; preds = %bb.ab, %bb.ad
  %.not333 = icmp eq i32 %3, 0                    ; 2 uses
  br i1 %.not333, label %bb.af, label %.loopexit

bb.af:                                            ; preds = %.thread464
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !81
  %i.bw = and i32 %i.bv, 524288
  %.not334 = icmp eq i32 %i.bw, 0
  br i1 %.not334, label %.loopexit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !76
  %i.bz = icmp eq i32 %i.by, 3
  br i1 %i.bz, label %bb.ah, label %.loopexit

bb.ah:                                            ; preds = %bb.ag
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 40256
  %i.cb = load ptr, ptr %i.ca, align 16, !tbaa !220 ; 2 uses
  %.not335 = icmp eq ptr %i.cb, null
  br i1 %.not335, label %.loopexit, label %.preheader393

.preheader393:                                    ; preds = %bb.ah
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.cd = load i32, ptr %i.cc, align 16, !tbaa !221
  %i.ce = add nsw i32 %i.cd, 2
  %i.cf = sext i32 %i.ce to i64
  %i.cg = shl nsw i64 %i.cf, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cb, i8 0, i64 %i.cg, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 40264
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !220
  %i.cj = load i32, ptr %i.cc, align 16, !tbaa !221
  %i.ck = add nsw i32 %i.cj, 2
  %i.cl = sext i32 %i.ck to i64
  %i.cm = shl nsw i64 %i.cl, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ci, i8 0, i64 %i.cm, i1 false)
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 40272
  %i.co = load ptr, ptr %i.cn, align 16, !tbaa !220
  %i.cp = load i32, ptr %i.cc, align 16, !tbaa !221
  %i.cq = add nsw i32 %i.cp, 2
  %i.cr = sext i32 %i.cq to i64
  %i.cs = shl nsw i64 %i.cr, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.co, i8 0, i64 %i.cs, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 40280
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !220
  %i.cv = load i32, ptr %i.cc, align 16, !tbaa !221
  %i.cw = add nsw i32 %i.cv, 2
  %i.cx = sext i32 %i.cw to i64
  %i.cy = shl nsw i64 %i.cx, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cu, i8 0, i64 %i.cy, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader393, %bb.ah, %bb.ag, %bb.af, %.thread464
  %i.cz = load i32, ptr %i.l, align 8, !tbaa !218
  switch i32 %i.cz, label %usePal.exit374.thread [
    i32 11, label %usePal.exit374
    i32 19, label %usePal.exit374
    i32 17, label %usePal.exit374
    i32 8, label %usePal.exit374
    i32 22, label %usePal.exit374
    i32 20, label %usePal.exit374
  ]

usePal.exit374:                                   ; preds = %.loopexit, %.loopexit, %.loopexit, %.loopexit, %.loopexit, %.loopexit
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !43
  tail call void @ff_update_palette(ptr noundef nonnull %0, ptr noundef %i.db)
  br label %usePal.exit374.thread

usePal.exit374.thread:                            ; preds = %.loopexit, %usePal.exit374
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %6, i64 16, i1 false)
  br i1 %or.cond14, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %usePal.exit374.thread
  br i1 %.not333, label %.sink.split, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dc = load i32, ptr %i.at, align 4, !tbaa !73
  %.not337 = icmp eq i32 %.pre-phi, %i.dc
  br i1 %.not337, label %.sink.split, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.20) #14
  br label %.critedge360

bb.al:                                            ; preds = %usePal.exit374.thread
  br i1 %i.k, label %.sink.split, label %bb.am

.sink.split:                                      ; preds = %bb.al, %bb.ai, %bb.aj
  %.sink = phi i32 [ 1, %bb.ai ], [ -1, %bb.aj ], [ 1, %bb.al ]
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 260
  store i32 %.sink, ptr %i.dd, align 4, !tbaa !80
  br label %bb.am

bb.am:                                            ; preds = %.sink.split, %bb.al
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 40332 ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !222
  %.not338 = icmp eq i32 %i.df, 0
  br i1 %.not338, label %bb.at, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 40336
  %i.dh = load i32, ptr %i.dg, align 16, !tbaa !223
  %.not339 = icmp eq i32 %i.dh, 0
  br i1 %.not339, label %bb.ao, label %bb.at

bb.ao:                                            ; preds = %bb.an
  %i.di = load i32, ptr %i.v, align 4, !tbaa !62  ; 2 uses
  %i.dj = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.di) #14 ; 2 uses
  %.not.i = icmp eq ptr %i.dj, null
  br i1 %.not.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 901) #14
  tail call void @abort() #15
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.dk = icmp eq i32 %i.di, 11
  br i1 %i.dk, label %isALPHA.exit.thread, label %isALPHA.exit

isALPHA.exit:                                     ; preds = %bb.aq
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !42
  %i.dn = and i64 %i.dm, 128
  %.not340 = icmp eq i64 %i.dn, 0
  br i1 %.not340, label %bb.at, label %isALPHA.exit.thread

isALPHA.exit.thread:                              ; preds = %bb.aq, %isALPHA.exit
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 53176 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 53184
  %i.dq = load i32, ptr %2, align 4, !tbaa !39
  %i.dr = tail call i32 @llvm.abs.i32(i32 %i.dq, i1 true)
  %i.ds = mul nsw i32 %i.dr, %4
  %i.dt = add nuw nsw i32 %i.ds, 32
  %i.du = zext nneg i32 %i.dt to i64
  tail call void @av_fast_malloc(ptr noundef nonnull %i.do, ptr noundef nonnull %i.dp, i64 noundef %i.du) #14
  %i.dv = load ptr, ptr %i.do, align 8, !tbaa !224 ; 2 uses
  %.not341.not = icmp eq ptr %i.dv, null
  br i1 %.not341.not, label %.critedge360, label %bb.ar

bb.ar:                                            ; preds = %isALPHA.exit.thread
  %i.dw = load i32, ptr %2, align 4, !tbaa !39    ; 2 uses
  %i.dx = icmp slt i32 %i.dw, 0
  %i.dy = add nsw i32 %4, -1
  %i.dz = mul nsw i32 %i.dw, %i.dy
  %i.ea = sext i32 %i.dz to i64
  %i.eb = sub nsw i64 0, %i.ea
  %.idx = select i1 %i.dx, i64 %i.eb, i64 0
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx ; 3 uses
  %i.ed = icmp sgt i32 %4, 0
  br i1 %i.ed, label %.lr.ph398, label %._crit_edge399

.lr.ph398:                                        ; preds = %bb.ar
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %.pre418.a = load i32, ptr %i.ee, align 8, !tbaa !225
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph398, %._crit_edge
  %i.ef = phi i32 [ %.pre418.a, %.lr.ph398 ], [ %i.fa, %._crit_edge ]
  %.0291396 = phi i32 [ 0, %.lr.ph398 ], [ %i.fb, %._crit_edge ] ; 3 uses
  %i.eg = load i32, ptr %2, align 4, !tbaa !39
  %i.eh = mul nsw i32 %i.eg, %.0291396
  %i.ei = sext i32 %i.eh to i64                   ; 2 uses
  %i.ej = getelementptr inbounds i8, ptr %i.ec, i64 %i.ei
  %9 = load ptr, ptr %i.a, align 16, !tbaa !43
  %i.ek = getelementptr inbounds i8, ptr %9, i64 %i.ei
  %i.el = shl nsw i32 %i.ef, 2
  %i.em = sext i32 %i.el to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ej, ptr align 1 %i.ek, i64 %i.em, i1 false)
  %i.en = load i32, ptr %i.de, align 4, !tbaa !222 ; 2 uses
  %i.eo = load i32, ptr %i.ee, align 8, !tbaa !225 ; 2 uses
  %i.ep = shl nsw i32 %i.eo, 2
  %.not403 = icmp sgt i32 %i.en, %i.ep
  br i1 %.not403, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.as
  %i.eq = add nsw i32 %i.en, -1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0292395 = phi i32 [ %i.ew, %.lr.ph ], [ %i.eq, %.lr.ph.preheader ] ; 2 uses
  %i.er = load i32, ptr %2, align 4, !tbaa !39
  %i.es = mul nsw i32 %i.er, %.0291396
  %i.et = add nsw i32 %i.es, %.0292395
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr inbounds i8, ptr %i.ec, i64 %i.eu
  store i8 -1, ptr %i.ev, align 1, !tbaa !48
  %i.ew = add nsw i32 %.0292395, 4                ; 2 uses
  %i.ex = load i32, ptr %i.ee, align 8, !tbaa !225 ; 2 uses
  %i.ey = shl nsw i32 %i.ex, 2
  %i.ez = icmp slt i32 %i.ew, %i.ey
  br i1 %i.ez, label %.lr.ph, label %._crit_edge, !llvm.loop !216

._crit_edge:                                      ; preds = %.lr.ph, %bb.as
  %i.fa = phi i32 [ %i.eo, %bb.as ], [ %i.ex, %.lr.ph ]
  %i.fb = add nuw nsw i32 %.0291396, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.fb, %4
  br i1 %exitcond.not, label %._crit_edge399, label %bb.as, !llvm.loop !217

._crit_edge399:                                   ; preds = %._crit_edge, %bb.ar
  store ptr %i.ec, ptr %i.a, align 16, !tbaa !43
  br label %bb.at

bb.at:                                            ; preds = %._crit_edge399, %isALPHA.exit, %bb.an, %bb.am
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 40340 ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !226
  %.not342 = icmp eq i32 %i.fd, 0
  br i1 %.not342, label %bb.az, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 40344
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !227
  %.not343 = icmp eq i32 %i.ff, 0
  br i1 %.not343, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !225
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !221
  %i.fk = icmp eq i32 %i.fh, %i.fj
  br i1 %i.fk, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.fl = load i32, ptr %i.at, align 4, !tbaa !73
  %i.fm = load i32, ptr %i.bj, align 4, !tbaa !74
  %i.fn = icmp eq i32 %i.fl, %i.fm
  br i1 %i.fn, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 53192 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 53200
  %i.fq = load i32, ptr %2, align 4, !tbaa !39
  %i.fr = tail call i32 @llvm.abs.i32(i32 %i.fq, i1 true)
  %i.fs = mul nsw i32 %i.fr, %4
  %i.ft = add nuw nsw i32 %i.fs, 32
  %i.fu = zext nneg i32 %i.ft to i64
  tail call void @av_fast_malloc(ptr noundef nonnull %i.fo, ptr noundef nonnull %i.fp, i64 noundef %i.fu) #14
  %i.fv = load ptr, ptr %i.fo, align 8, !tbaa !228 ; 2 uses
  %.not344.not = icmp eq ptr %i.fv, null
  br i1 %.not344.not, label %.critedge360, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fw = load i32, ptr %2, align 4, !tbaa !39    ; 4 uses
  %i.fx = icmp slt i32 %i.fw, 0
  %i.fy = add nsw i32 %4, -1
  %i.fz = mul nsw i32 %i.fw, %i.fy
  %i.ga = sext i32 %i.fz to i64
  %i.gb = sub nsw i64 0, %i.ga
  %.idx391 = select i1 %i.fx, i64 %i.gb, i64 0
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fv, i64 %.idx391 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 52888
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !54
  %i.gf = load ptr, ptr %i.a, align 16, !tbaa !43
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !225
  tail call void %i.ge(ptr noundef nonnull %0, ptr noundef nonnull %i.gc, i32 noundef %i.fw, ptr noundef %i.gf, i32 noundef %i.fw, i32 noundef %i.gh, i32 noundef %4) #14
  store ptr %i.gc, ptr %i.a, align 16, !tbaa !43
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.aw, %bb.at
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 260 ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !80
  %.not345 = icmp eq i32 %i.gj, 1
  %.pre419.a = load i32, ptr %i.l, align 8, !tbaa !218 ; 2 uses
  br i1 %.not345, label %bb.bb, label %.preheader392.preheader

.preheader392.preheader:                          ; preds = %bb.az
  %i.gk = load <4 x i32>, ptr %i.c, align 16, !tbaa !39
  %i.gl = sub nsw <4 x i32> zeroinitializer, %i.gk
  store <4 x i32> %i.gl, ptr %i.c, align 16, !tbaa !39
  %i.gm = load <4 x i32>, ptr %i.d, align 16, !tbaa !39
  %i.gn = sub nsw <4 x i32> zeroinitializer, %i.gm
  store <4 x i32> %i.gn, ptr %i.d, align 16, !tbaa !39
  %i.go = add nsw i32 %4, -1                      ; 2 uses
  %i.gp = load i32, ptr %2, align 4, !tbaa !39
  %i.gq = mul nsw i32 %i.gp, %i.go
  %i.gr = load ptr, ptr %i.a, align 16, !tbaa !43
  %i.gs = sext i32 %i.gq to i64
  %i.gt = getelementptr inbounds i8, ptr %i.gr, i64 %i.gs
  store ptr %i.gt, ptr %i.a, align 16, !tbaa !43
  switch i32 %.pre419.a, label %bb.ba [
    i32 11, label %usePal.exit372
    i32 19, label %usePal.exit372
    i32 17, label %usePal.exit372
    i32 8, label %usePal.exit372
    i32 22, label %usePal.exit372
    i32 20, label %usePal.exit372
  ]

bb.ba:                                            ; preds = %.preheader392.preheader
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !34
  %i.gw = lshr i32 %4, %i.gv
  %i.gx = add nsw i32 %i.gw, -1
  %i.gy = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !39
  %i.ha = mul nsw i32 %i.gx, %i.gz
  %i.hb = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !43
  %i.hd = sext i32 %i.ha to i64
  %i.he = getelementptr inbounds i8, ptr %i.hc, i64 %i.hd
  store ptr %i.he, ptr %i.hb, align 8, !tbaa !43
  br label %usePal.exit372

usePal.exit372:                                   ; preds = %.preheader392.preheader, %.preheader392.preheader, %.preheader392.preheader, %.preheader392.preheader, %.preheader392.preheader, %.preheader392.preheader, %bb.ba
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !34
  %i.hh = lshr i32 %4, %i.hg
  %i.hi = add nsw i32 %i.hh, -1
  %i.hj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !39
  %i.hl = mul nsw i32 %i.hi, %i.hk
  %i.hm = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.hn = load ptr, ptr %i.hm, align 16, !tbaa !43
  %i.ho = sext i32 %i.hl to i64
  %i.hp = getelementptr inbounds i8, ptr %i.hn, i64 %i.ho
  store ptr %i.hp, ptr %i.hm, align 16, !tbaa !43
  %i.hq = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !39
  %i.hs = mul nsw i32 %i.hr, %i.go
  %i.ht = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !43
  %i.hv = sext i32 %i.hs to i64
  %i.hw = getelementptr inbounds i8, ptr %i.hu, i64 %i.hv
  store ptr %i.hw, ptr %i.ht, align 8, !tbaa !43
  %i.hx = load i32, ptr %i.bj, align 4, !tbaa !74 ; 2 uses
  %i.hy = add nsw i32 %i.hx, -1                   ; 2 uses
  %i.hz = load i32, ptr %6, align 4, !tbaa !39
  %i.ia = mul nsw i32 %i.hy, %i.hz
  %i.ib = load ptr, ptr %i.b, align 16, !tbaa !43
  %i.ic = sext i32 %i.ia to i64
  %i.id = getelementptr inbounds i8, ptr %i.ib, i64 %i.ic
  store ptr %i.id, ptr %i.b, align 16, !tbaa !43
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !44
  %i.ig = ashr i32 %i.hx, %i.if
  %i.ih = add nsw i32 %i.ig, -1                   ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !39
  %i.ik = mul nsw i32 %i.ih, %i.ij
  %i.il = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !43
  %i.in = sext i32 %i.ik to i64
  %i.io = getelementptr inbounds i8, ptr %i.im, i64 %i.in
  store ptr %i.io, ptr %i.il, align 8, !tbaa !43
  %i.ip = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !39
  %i.ir = mul nsw i32 %i.iq, %i.ih
  %i.is = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.it = load ptr, ptr %i.is, align 16, !tbaa !43
  %i.iu = sext i32 %i.ir to i64
  %i.iv = getelementptr inbounds i8, ptr %i.it, i64 %i.iu
  store ptr %i.iv, ptr %i.is, align 16, !tbaa !43
  %i.iw = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !39
  %i.iy = mul nsw i32 %i.ix, %i.hy
  %i.iz = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !43
  %i.jb = sext i32 %i.iy to i64
  %i.jc = getelementptr inbounds i8, ptr %i.ja, i64 %i.jb
  store ptr %i.jc, ptr %i.iz, align 8, !tbaa !43
  %i.jd = load i32, ptr %i.at, align 4, !tbaa !73
  %i.je = sub i32 %i.jd, %.pre-phi
  br label %bb.bb

bb.bb:                                            ; preds = %usePal.exit372, %bb.az
  %.0294 = phi i32 [ %i.je, %usePal.exit372 ], [ %3, %bb.az ] ; 4 uses
  call fastcc void @reset_ptr(ptr noundef %i.a, i32 noundef %.pre419.a)
  %i.jf = load i32, ptr %i.v, align 4, !tbaa !62
  call fastcc void @reset_ptr(ptr noundef %i.b, i32 noundef %i.jf)
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !229 ; 3 uses
  %.not347 = icmp eq ptr %i.jh, null
  br i1 %.not347, label %bb.bl, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  br i1 %i.k, label %bb.bd, label %.critedge18.thread

.critedge18.thread:                               ; preds = %bb.bc
  %i.ji = call i32 %i.jh(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, i32 noundef %.0294, i32 noundef %4, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d) #14
  br label %bb.bm

bb.bd:                                            ; preds = %bb.bc
  %i.jj = icmp eq i32 %.0294, 0
  br i1 %i.jj, label %.preheader, label %bb.be

.preheader:                                       ; preds = %bb.bd
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 2 uses
  %i.jl = load ptr, ptr %i.a, align 16, !tbaa !43 ; 2 uses
  %.not348 = icmp eq ptr %i.jl, null
  br i1 %.not348, label %.critedge, label %.thread383

bb.be:                                            ; preds = %bb.bd
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.3, i32 noundef 1169) #14
end_hunk_0
