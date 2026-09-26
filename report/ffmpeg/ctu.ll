Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ctu?download=true
inline.NumInlined: 95
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 44
begin_hunk_0_@hls_transform_tree:bb.a
bb.e:                                             ; preds = %bb.d
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = add nsw i32 %i.u, %1
  %i.ab = tail call fastcc i32 @hls_transform_tree(ptr noundef nonnull %0, i32 noundef %i.aa, i32 noundef %2, i32 noundef %i.u, i32 noundef %4, i32 noundef %5) ; 2 uses
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %.thread, label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.ad = add nsw i32 %i.w, %2
  %i.ae = tail call fastcc i32 @hls_transform_tree(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.ad, i32 noundef %3, i32 noundef %i.w, i32 noundef %5) ; 2 uses
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %.thread, label %.loopexit

bb.h:                                             ; preds = %bb.c
  %i.ag = tail call fastcc i32 @hls_transform_unit(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 0, i32 noundef %5) ; 2 uses
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %.thread, label %.loopexit

bb.i:                                             ; preds = %bb.a
  br i1 %.not, label %bb.n, label %.thread211

.thread211:                                       ; preds = %bb.b, %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 30
  %i.aj = load i8, ptr %i.ai, align 2, !tbaa !197
  %.not168 = icmp eq i8 %i.aj, 0
  %i.ak = load i32, ptr %i.g, align 4, !tbaa !199 ; 2 uses
  br i1 %.not168, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.thread211
  %i.al = mul nsw i32 %i.ak, %3
  %i.am = sdiv i32 %i.al, 4                       ; 3 uses
  %i.an = tail call fastcc i32 @hls_transform_unit(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %i.am, i32 noundef %4, i32 noundef 0, i32 noundef %5) ; 2 uses
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = add nsw i32 %i.am, %1
  %i.aq = sub nsw i32 %3, %i.am
  %i.ar = tail call fastcc i32 @hls_transform_unit(ptr noundef nonnull %0, i32 noundef %i.ap, i32 noundef %2, i32 noundef %i.aq, i32 noundef %4, i32 noundef 1, i32 noundef %5) ; 2 uses
  %i.as = icmp sgt i32 %i.ar, -1
  br i1 %i.as, label %.loopexit, label %.thread

bb.l:                                             ; preds = %.thread211
  %i.at = mul nsw i32 %i.ak, %4
  %i.au = sdiv i32 %i.at, 4                       ; 3 uses
  %i.av = tail call fastcc i32 @hls_transform_unit(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %i.au, i32 noundef 0, i32 noundef %5) ; 2 uses
  %i.aw = icmp slt i32 %i.av, 0
  br i1 %i.aw, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = add nsw i32 %i.au, %2
  %i.ay = sub nsw i32 %4, %i.au
  %i.az = tail call fastcc i32 @hls_transform_unit(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.ax, i32 noundef %3, i32 noundef %i.ay, i32 noundef 1, i32 noundef %5) ; 2 uses
  %i.ba = icmp sgt i32 %i.az, -1
  br i1 %i.ba, label %.loopexit, label %.thread

bb.n:                                             ; preds = %bb.i
  switch i32 %i.j, label %.loopexit [
    i32 1, label %bb.o
    i32 2, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !178 ; 2 uses
  %i.bd = sdiv i32 %4, %i.bc                      ; 2 uses
  %.not167189 = icmp sgt i32 %i.bc, 0
  br i1 %.not167189, label %.lr.ph191, label %.loopexit

bb.p:                                             ; preds = %.lr.ph191
  %i.be = add nuw nsw i32 %.0142190, 1            ; 2 uses
  %i.bf = load i32, ptr %i.bb, align 8, !tbaa !178
  %.not167 = icmp slt i32 %i.be, %i.bf
  br i1 %.not167, label %.lr.ph191, label %.loopexit, !llvm.loop !375

.lr.ph191:                                        ; preds = %bb.o, %bb.p
  %.0142190 = phi i32 [ %i.be, %bb.p ], [ 0, %bb.o ] ; 3 uses
  %i.bg = mul nsw i32 %.0142190, %i.bd
  %i.bh = add nsw i32 %i.bg, %2
  %i.bi = tail call fastcc i32 @hls_transform_unit(ptr noundef %0, i32 noundef %1, i32 noundef %i.bh, i32 noundef %3, i32 noundef %i.bd, i32 noundef %.0142190, i32 noundef 0) ; 2 uses
  %i.bj = icmp slt i32 %i.bi, 0
  br i1 %i.bj, label %.thread, label %bb.p

bb.q:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !178 ; 2 uses
  %i.bm = sdiv i32 %3, %i.bl                      ; 2 uses
  %.not166187 = icmp sgt i32 %i.bl, 0
  br i1 %.not166187, label %.lr.ph, label %.loopexit

bb.r:                                             ; preds = %.lr.ph
  %i.bn = add nuw nsw i32 %.0188, 1               ; 2 uses
  %i.bo = load i32, ptr %i.bk, align 8, !tbaa !178
  %.not166 = icmp slt i32 %i.bn, %i.bo
  br i1 %.not166, label %.lr.ph, label %.loopexit, !llvm.loop !376

.lr.ph:                                           ; preds = %bb.q, %bb.r
  %.0188 = phi i32 [ %i.bn, %bb.r ], [ 0, %bb.q ] ; 3 uses
  %i.bp = mul nsw i32 %.0188, %i.bm
  %i.bq = add nsw i32 %i.bp, %1
  %i.br = tail call fastcc i32 @hls_transform_unit(ptr noundef %0, i32 noundef %i.bq, i32 noundef %2, i32 noundef %i.bm, i32 noundef %4, i32 noundef %.0188, i32 noundef 0) ; 2 uses
  %i.bs = icmp slt i32 %i.br, 0
  br i1 %i.bs, label %.thread, label %bb.r

.loopexit:                                        ; preds = %bb.r, %bb.p, %bb.q, %bb.o, %bb.g, %bb.f, %bb.n, %bb.m, %bb.k, %bb.h
  br label %.thread

.thread:                                          ; preds = %.lr.ph, %.lr.ph191, %bb.l, %bb.j, %bb.g, %bb.d, %bb.f, %bb.h, %bb.m, %bb.k, %.loopexit
  %.5 = phi i32 [ 0, %.loopexit ], [ %i.az, %bb.m ], [ %i.ar, %bb.k ], [ %i.av, %bb.l ], [ %i.bi, %.lr.ph191 ], [ %i.an, %bb.j ], [ %i.ag, %bb.h ], [ %i.ab, %bb.f ], [ %i.ae, %bb.g ], [ %i.y, %bb.d ], [ %i.br, %.lr.ph ]
  ret i32 %.5
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @set_qp_c(ptr nofree noundef readonly captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = alloca [3 x i32], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2064
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !75   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 2072
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !76   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !91
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !99   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !90  ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !133
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.q = load ptr, ptr %i.p, align 16, !tbaa !84
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 34
  %i.u = load i8, ptr %i.t, align 2, !tbaa !161
  %i.v = zext i8 %i.u to i32
  %i.w = load <2 x i32>, ptr %i.r, align 4, !tbaa !109
  %i.x = load <2 x i32>, ptr %i.s, align 4, !tbaa !109
  %i.y = sdiv <2 x i32> %i.x, splat (i32 2)
  %i.z = add nsw <2 x i32> %i.y, %i.w
  %i.aa = insertelement <2 x i32> poison, i32 %i.v, i64 0
  %i.ab = shufflevector <2 x i32> %i.aa, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ac = ashr <2 x i32> %i.z, %i.ab              ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 21912
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !162
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 4034
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !163
  %i.ah = zext i16 %i.ag to i32
  %i.ai = extractelement <2 x i32> %i.ac, i64 1
  %i.aj = mul nsw i32 %i.ai, %i.ah
  %i.ak = extractelement <2 x i32> %i.ac, i64 0
  %i.al = add nsw i32 %i.aj, %i.ak
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds i8, ptr %i.ae, i64 %i.am
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.in.in = phi ptr [ %i.q, %bb.b ], [ %i.an, %bb.c ]
  %.in = load i8, ptr %.in.in, align 1, !tbaa !108
  %i.ao = sext i8 %.in to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 29 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !212
  %i.ar = zext i8 %i.aq to i32                    ; 2 uses
  %i.as = add nsw i32 %i.ar, %i.ao                ; 2 uses
  %i.at = add nuw nsw i32 %i.ar, 63
  %i.au = icmp slt i32 %i.as, 0
  %..i38 = tail call i32 @llvm.smin.i32(i32 %i.as, i32 %i.at)
  %.0.i39 = select i1 %i.au, i32 0, i32 %..i38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.av = getelementptr inbounds nuw i8, ptr %i.k, i64 2327
  %i.aw = load <2 x i8>, ptr %i.av, align 1, !tbaa !108
  %i.ax = sext <2 x i8> %i.aw to <2 x i32>
  store <2 x i32> %i.ax, ptr %i.a, align 8, !tbaa !109
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.k, i64 2329
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !378
  %i.bb = sext i8 %i.ba to i32
  store i32 %i.bb, ptr %i.ay, align 8, !tbaa !109
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 66
  %i.bd = sext i32 %.0.i39 to i64
  %invariant.gep = getelementptr i8, ptr %i.bc, i64 %i.bd
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void

bb.f:                                             ; preds = %bb.d, %bb.f
  %indvars.iv = phi i64 [ 0, %bb.d ], [ %indvars.iv.next, %bb.f ] ; 5 uses
  %gep = getelementptr [111 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.bh = load i8, ptr %gep, align 1, !tbaa !108
  %i.bi = sext i8 %i.bh to i32
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 %indvars.iv
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !108
  %i.bl = sext i8 %i.bk to i32
  %i.bm = add nsw i32 %i.bl, %i.bi
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !109
  %i.bp = add nsw i32 %i.bm, %i.bo
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !109
  %i.bs = add nsw i32 %i.bp, %i.br                ; 2 uses
  %i.bt = load i8, ptr %i.ap, align 1, !tbaa !212 ; 2 uses
  %i.bu = zext i8 %i.bt to i32
  %i.bv = sub nsw i32 0, %i.bu                    ; 2 uses
  %i.bw = icmp slt i32 %i.bs, %i.bv
  %..i = tail call i32 @llvm.smin.i32(i32 %i.bs, i32 63)
  %.0.i = select i1 %i.bw, i32 %i.bv, i32 %..i
  %i.bx = trunc i32 %.0.i to i8
  %i.by = add i8 %i.bt, %i.bx
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv.next
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !108
  %i.ca = load ptr, ptr %i.e, align 8, !tbaa !111
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 15501
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !213
  %i.cd = zext i8 %i.cc to i64
  %1 = add nuw nsw i64 %i.cd, 2
  %2 = icmp samesign ult i64 %indvars.iv.next, %1
  br i1 %2, label %bb.f, label %bb.e, !llvm.loop !377
}

declare ptr @av_refstruct_pool_get(ptr noundef) local_unnamed_addr #2

declare i32 @ff_vvc_cu_skip_flag(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_vvc_pred_mode_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_vvc_pred_mode_ibc_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_vvc_pred_mode_plt_flag(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @hls_palette_coding(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 7 uses
  %i.b = alloca [63 x i8], align 16               ; 8 uses
  %i.c = alloca [4096 x i8], align 16             ; 5 uses
  %i.d = alloca [4096 x i8], align 16             ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2064
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !75   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 6 uses
  %i.j = load ptr, ptr %i.i, align 16, !tbaa !90  ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 8 uses
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !84
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 2324
  %i.n = icmp eq i32 %1, 0                        ; 2 uses
  %i.o = select i1 %i.n, i32 31, i32 15           ; 4 uses
  br i1 %i.n, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !111
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.q = load ptr, ptr %i.p, align 16, !tbaa !91
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !99
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1345
  %i.u = load i8, ptr %i.t, align 1, !tbaa !123
  %i.v = icmp eq i8 %i.u, 2
  %.pre152 = load ptr, ptr %i.h, align 8, !tbaa !111 ; 3 uses
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %.pre152, i64 15484
  %i.x = load i8, ptr %i.w, align 4, !tbaa !124
  %.not62 = icmp eq i8 %i.x, 0
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.b, %bb.c
  %i.y = phi ptr [ %.pre, %._crit_edge ], [ %.pre152, %bb.b ], [ %.pre152, %bb.c ]
  %i.z = phi i1 [ false, %._crit_edge ], [ true, %bb.b ], [ %.not62, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 7
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !121
  %i.ac = icmp eq i8 %i.ab, 0                     ; 2 uses
  %i.ad = icmp eq i32 %1, 1                       ; 2 uses
  %.not121 = or i1 %i.ad, %i.ac
  %.not.i = icmp eq i32 %1, 2                     ; 4 uses
  %i.ae = select i1 %.not121, i32 1, i32 3        ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.ag = load <4 x i32>, ptr %i.af, align 4, !tbaa !109
  %i.ah = getelementptr i8, ptr %i.f, i64 21792
  %.val.i = load ptr, ptr %i.ah, align 8, !tbaa !214
  %i.ai = tail call ptr @av_refstruct_pool_get(ptr noundef %.val.i) #14 ; 15 uses
  %.not.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i, label %palette_signaled.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 240
  store ptr null, ptr %i.aj, align 8, !tbaa !159
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 104 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !160 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not14.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 240
  store ptr %i.ai, ptr %i.am, align 8, !tbaa !159
  br label %add_tu.exit.i

bb.g:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  store ptr %i.ai, ptr %i.an, align 8, !tbaa !200
  br label %add_tu.exit.i

add_tu.exit.i:                                    ; preds = %bb.g, %bb.f
  store ptr %i.ai, ptr %i.ak, align 8, !tbaa !160
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  store <4 x i32> %i.ag, ptr %i.ai, align 8, !tbaa !109
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.ar, i8 0, i64 7, i1 false)
  %.not = and i1 %.not.i, %i.ac                   ; 2 uses
  br i1 %.not, label %.loopexit133, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %add_tu.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 11
  %i.au = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 22 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ax = zext i1 %.not.i to i64                  ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.ae to i64
  br label %bb.h

bb.h:                                             ; preds = %set_tb_size.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.ax, %.lr.ph.i ], [ %indvars.iv.next.i, %set_tb_size.exit.i ] ; 7 uses
  %i.ay = load i32, ptr %i.ap, align 8, !tbaa !215
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 %indvars.iv.i
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !108
  %i.bb = zext nneg i8 %i.ba to i32
  %i.bc = ashr i32 %i.ay, %i.bb                   ; 6 uses
  %i.bd = load i32, ptr %i.aq, align 4, !tbaa !216
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 %indvars.iv.i
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !108
  %i.bg = zext nneg i8 %i.bf to i32
  %i.bh = ashr i32 %i.bd, %i.bg                   ; 6 uses
  %i.bi = load i32, ptr %i.ai, align 8, !tbaa !217 ; 2 uses
  %i.bj = load i32, ptr %i.ao, align 4, !tbaa !218 ; 2 uses
  %i.bk = load i8, ptr %i.av, align 2, !tbaa !201 ; 2 uses
  %i.bl = add i8 %i.bk, 1
  store i8 %i.bl, ptr %i.av, align 2, !tbaa !201
  %i.bm = zext i8 %i.bk to i64
  %i.bn = getelementptr inbounds nuw [72 x i8], ptr %i.au, i64 %i.bm ; 11 uses
  store i8 0, ptr %i.bn, align 8, !tbaa !219
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  store i32 %i.bi, ptr %i.bo, align 4, !tbaa !210
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i32 %i.bj, ptr %i.bp, align 8, !tbaa !208
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 12 ; 4 uses
  store i32 %i.bc, ptr %i.bq, align 4, !tbaa !207
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 4 uses
  store i32 %i.bh, ptr %i.br, align 8, !tbaa !206
  %.not.i29.i.i = icmp ult i32 %i.bc, 65536       ; 2 uses
  %i.bs = lshr i32 %i.bc, 16
  %spec.select.i30.i.i = select i1 %.not.i29.i.i, i32 %i.bc, i32 %i.bs ; 3 uses
  %spec.select12.i31.i.i = select i1 %.not.i29.i.i, i32 0, i32 16 ; 2 uses
  %.not11.i32.i.i = icmp samesign ult i32 %spec.select.i30.i.i, 256 ; 2 uses
  %i.bt = lshr i32 %spec.select.i30.i.i, 8
  %i.bu = or disjoint i32 %spec.select12.i31.i.i, 8
  %.110.i33.i.i = select i1 %.not11.i32.i.i, i32 %spec.select.i30.i.i, i32 %i.bt
  %.1.i34.i.i = select i1 %.not11.i32.i.i, i32 %spec.select12.i31.i.i, i32 %i.bu
  %i.bv = zext nneg i32 %.110.i33.i.i to i64
  %i.bw = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !108
  %i.by = zext i8 %i.bx to i32
  %i.bz = add nuw nsw i32 %.1.i34.i.i, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bn, i64 20
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !220
  %.not.i.i39.i = icmp ult i32 %i.bh, 65536       ; 2 uses
  %i.cb = lshr i32 %i.bh, 16
  %spec.select.i.i.i = select i1 %.not.i.i39.i, i32 %i.bh, i32 %i.cb ; 3 uses
  %spec.select12.i.i.i = select i1 %.not.i.i39.i, i32 0, i32 16 ; 2 uses
  %.not11.i.i.i = icmp samesign ult i32 %spec.select.i.i.i, 256 ; 2 uses
  %i.cc = lshr i32 %spec.select.i.i.i, 8
  %i.cd = or disjoint i32 %spec.select12.i.i.i, 8
  %.110.i.i.i = select i1 %.not11.i.i.i, i32 %spec.select.i.i.i, i32 %i.cc
  %.1.i.i.i = select i1 %.not11.i.i.i, i32 %spec.select12.i.i.i, i32 %i.cd
  %i.ce = zext nneg i32 %.110.i.i.i to i64
  %i.cf = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !108
  %i.ch = zext i8 %i.cg to i32
  %i.ci = add nuw nsw i32 %.1.i.i.i, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  store i32 %i.ci, ptr %i.cj, align 8, !tbaa !221
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bn, i64 28
  %i.cl = trunc i64 %indvars.iv.i to i8           ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ck, i8 0, i64 16, i1 false)
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !203
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bn, i64 2
  store i8 0, ptr %i.cn, align 2, !tbaa !204
  %i.co = load ptr, ptr %i.aw, align 8, !tbaa !89 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !222
  %i.cq = mul nsw i32 %i.bh, %i.bc
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.co, i64 %i.cr
  store ptr %i.cs, ptr %i.aw, align 8, !tbaa !89
  %i.ct = icmp ne i64 %indvars.iv.i, 0
  %i.cu = zext i1 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.cu
  store i8 1, ptr %i.cv, align 1, !tbaa !224
  %i.cw = icmp eq i64 %indvars.iv.i, 2
  br i1 %i.cw, label %set_tb_size.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cx = load ptr, ptr %i.e, align 8, !tbaa !22  ; 4 uses
  %i.cy = ashr i32 %i.bi, 2                       ; 3 uses
  %i.cz = ashr i32 %i.bj, 2                       ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 2064
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !75 ; 2 uses
end_hunk_0
